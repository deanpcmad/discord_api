# Discord API

This is a Ruby wrapper for the Discord HTTP API. **Currently in development**

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
