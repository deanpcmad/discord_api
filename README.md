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
