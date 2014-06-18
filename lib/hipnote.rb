require "hipnote/version"
require "hipchat"

module Hipnote
  @token = ENV['HIPCHAT_API_TOKEN']
  @client = HipChat::Client.new(@api_token)

  def self.post(options = {})
    user = options[:user] || 'Message'
    msg = options[:msg]
    format = options[:format] || 'text'
    color = options[:color] || 'blue'
    room = options[:room]

    if msg && room
      @client[room].send(
        user,
        msg,
        message_format: format,
        color: color
      )
    end
  end
end
