# Discord API

This is a Ruby wrapper for the Discord API. It is currently in development and is not ready for use.

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
@client.users.me
```
