require "hipnote/version"
require "hipchat"

module Hipnote
  @token = ENV['HIPCHAT_API_TOKEN']
  @client = HipChat::Client.new(@token)

  def self.post(room, msg, options = {})
    user = options[:user] || 'Note'
    format = options[:format] || 'text'
    color = options[:color] || 'yellow'

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
