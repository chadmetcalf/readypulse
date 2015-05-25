module Readypulse
  require 'json'

  class Client
    def self.instance(album_id: nil)
      @@client ||= Client.new
    end

    attr_accessor :album_id

    def self.instance
      @@client ||= Client.new
    end

    def album_id=(album_id)
      reset_response! if @album_id != album_id
      @album_id = album_id
    end

    def to_album(album_id:)
    end

    def to_images
      response_content
    end

  private

    def reset_response!
      @response = nil
    end

    def response_content
      response['content']
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
