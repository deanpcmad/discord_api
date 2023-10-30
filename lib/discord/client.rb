module Discord
  class Client
    BASE_URL = "https://discord.com/api/v10"

    attr_reader :user_access_token, :bot_access_token, :adapter

    def initialize(user_access_token: nil, bot_access_token: nil, adapter: Faraday.default_adapter)
      @user_access_token = user_access_token
      @bot_access_token = bot_access_token
      @adapter = adapter
    end

    def users
      UsersResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        if user_access_token
          conn.request :authorization, :Bearer, user_access_token
        elsif bot_access_token
          conn.request :authorization, :Bot, bot_access_token
        else
          raise Error, "You must provide a user or bot access token."
        end

        conn.headers = {
          "User-Agent" => "discord-api/v#{VERSION} (github.com/deanpcmad/discord-api)"
        }

        conn.request :json

        conn.response :json, content_type: "application/json"

        conn.adapter adapter, @stubs
      end
    end

  end
end
