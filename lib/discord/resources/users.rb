module Discord
  class UsersResource < Resource

    # Get the currently authenticated user
    def me
      User.new get_request("users/@me").body
    end

  end
end
