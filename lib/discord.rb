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

  autoload :User, "discord/objects/user"
  autoload :Guild, "discord/objects/guild"

end
