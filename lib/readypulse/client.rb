module Readypulse
  require 'json'

  class Client
    def self.instance(album_id: nil)
      @@client ||= Client.new
    end

    attr_accessor :album_id

    def to_album
      parsed_response
    end

    def to_images
      parsed_response['content']
    end

  private
    def parsed_response
      @parsed_response || parsed_response!
    end

    def parsed_response!
      @parsed_response = JSON.parse(response)
    end

    def response
      @response || response!
    end

    def response!
      @response = Net::HTTP.get(uri)
      fail TimeoutError.new if @response.empty? || @response.nil?
      # TODO: What is the right error message here?
      @response
    end

    def uri
      URI("http://widgets.readypulse.com/api/v1/widgets/#{album_id}.json")
    end
  end
end
