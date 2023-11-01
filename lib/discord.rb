require "faraday"
require "json"
require "discord/version"

module Discord

  autoload :Client, "discord/client"
  autoload :Collection, "discord/collection"
  autoload :Error, "discord/error"
  autoload :Resource, "discord/resource"
  autoload :Object, "discord/object"

  autoload :UsersResource, "discord/resources/users"
  autoload :ChannelsResource, "discord/resources/channels"
  autoload :MessagesResource, "discord/resources/messages"
  autoload :GuildsResource, "discord/resources/guilds"

  autoload :User, "discord/objects/user"
  autoload :Guild, "discord/objects/guild"
  autoload :Channel, "discord/objects/channel"
  autoload :Message, "discord/objects/message"

end
