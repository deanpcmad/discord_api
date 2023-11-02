# Discord API

This is a Ruby library for the Discord HTTP API. **Currently in development**

## Installation

Add this line to your application's Gemfile:

```ruby
gem "discord_api"
```

## Usage

### Authentication

Firstly you'll need to set either a user token or bot token. Some endpoints are only accssible with a bot token.

```ruby
# Set a user token
@client = Discord::Client.new(user_access_token: "")

# Or set a bot token
@client = Discord::Client.new(bot_access_token: "")
```

### Users

```ruby
# Get the current user
# Required scope: identify
# Required scopes if you want the user's email: identify email
@client.users.me

# Get the user's guilds
# Required scope: guilds
@client.users.guilds
```

### Channels

These endpoints are only accessible using a bot token.

```ruby
# Retrieve a Channel
@client.channels.retrieve(id: 123123)

# Update a Channel's details
# https://discord.com/developers/docs/resources/channel#modify-channel
@client.channels.update(id: 123123, name: "new-channel-name")
```

### Messages

These endpoints are only accessible using a bot token.

```ruby
# List messages for a channel
@client.messages.list(channel_id: 123123)

# Get a message
@client.messages.retrieve(channel_id: 123123, message_id: 123123)

# Create a message
# https://discord.com/developers/docs/resources/channel#create-message
@client.messages.create(channel_id: 123123, content: "Hello World")

# Update a message
# https://discord.com/developers/docs/resources/channel#edit-message
@client.messages.update(channel_id: 123123, message_id: 123123, content: "Hello World")

# Delete a message
@client.messages.delete(channel_id: 123123, message_id: 123123)

# Bulk delete messages
@client.messages.bulk_delete(channel_id: 123123, ids: [123123, 321321])
```

### Guilds/Servers

These endpoints are only accessible using a bot token.

```ruby
# Retrieve a Guild's details
@client.guilds.retrieve(id: 123123)

# Update a Guild's details
# https://discord.com/developers/docs/resources/guild#modify-guild
@client.guilds.update(id: 123123, name: "new-guild-name")

# Retrieve a list of a Guild's channels
@client.guilds.channels(guild: 123123)

# Create a Guild channel
# https://discord.com/developers/docs/resources/guild#create-guild-channel
@client.guilds.create_channel(guild: 123123, name: "new-channel-name")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deanpcmad/discord_api.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

