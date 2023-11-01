module Discord
  class GuildsResource < Resource

    def channels(guild:)
      response = get_request("guilds/#{guild}/channels")
      Collection.from_response(response, type: Channel)
    end

  end
end
