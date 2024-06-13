module Discord
  class GuildsResource < Resource
    def retrieve(id:)
      Guild.new get_request("guilds/#{id}").body
    end

    def update(id:, **params)
      response = patch_request("guilds/#{id}", body: params)
      Guild.new response.body
    end

    def channels(guild:)
      response = get_request("guilds/#{guild}/channels")
      Collection.from_response(response, type: Channel)
    end

    def create_channel(guild:, **params)
      response = post_request("guilds/#{guild}/channels", body: params)
      Channel.new response.body
    end
  end
end
