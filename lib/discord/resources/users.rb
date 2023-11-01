module Discord
  class UsersResource < Resource

    def me
      User.new get_request("users/@me").body
    end

    def guilds
      response = get_request("users/@me/guilds")
      Collection.from_response(response, type: Guild)
    end

  end
end
