module Discord
  class ChannelsResource < Resource
    def retrieve(id:)
      Channel.new get_request("channels/#{id}").body
    end

    def update(id:, **params)
      Channel.new patch_request("channels/#{id}", body: params).body
    end
  end
end
