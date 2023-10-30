require "test_helper"

class ClientTest < Minitest::Test
  def test_user_access_token
    client = Discord::Client.new user_access_token: "abc123"
    assert_equal "abc123", client.user_access_token
  end

  def test_bot_access_token
    client = Discord::Client.new bot_access_token: "123abc"
    assert_equal "123abc", client.bot_access_token
  end

  def test_no_token
    client = Discord::Client.new user_access_token: nil, bot_access_token: nil
    assert_raises(Discord::Error) { client.connection }
  end
end
