module Discord
  class MessagesResource < Resource

    def list(channel:, **params)
      response = get_request("channels/#{channel}/messages", params: params)
      Collection.from_response(response, type: Message)
    end

    def retrieve(channel:, message:)
      Message.new get_request("channels/#{channel}/messages/#{message}").body
    end

    def create(channel:, **params)
      response = post_request("channels/#{channel}/messages", body: params)
      Message.new response.body
    end

    def update(channel:, id:, **params)
      response = patch_request("channels/#{channel}/messages/#{id}", body: params)
      Message.new response.body
    end

    def delete(channel:, id:)
      delete_request("channels/#{channel}/messages/#{id}")
    end

    def bulk_delete(channel:, messages:)
      post_request("channels/#{channel}/messages/bulk-delete", body: {messages: messages})
    end

  end
end
