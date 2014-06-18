require "hipnote/version"
require "hipchat"

module Hipnote
  @token = ENV['HIPCHAT_API_TOKEN']
  @client = HipChat::Client.new(@api_token)

  def self.post(options = {})
    puts options
  end
end
