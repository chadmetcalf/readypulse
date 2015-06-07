module Readypulse
  require 'json'

  class Client
    def self.instance
      @@client ||= Client.new
    end

    attr_accessor :album_id

    def initialize
    end

    def to_album(album_id: @album_id)
      validate_album_id(album_id)
      parsed_album_response
    end

    def to_images(album_id: @album_id)
      validate_album_id(album_id)
      parsed_response_content
      # parsed_response_content.first
    end

  private

    def validate_album_id(album_id)
      unless album_id.is_a?(Fixnum)
        fail ArgumentError, "Incorrect album_id value: #{album_id.inspect}"
      end

      reset_response! if album_id_changed?(album_id)
    end

    def album_id_changed?(album_id)
      changed = (@album_id == album_id)
      @album_id = album_id
      return changed
    end

    def reset_response!
      @response = nil
    end

    def parsed_album_response
      parsed_response.tap{|hash| hash.delete(:content)}
    end

    def parsed_response_content
      parsed_response[:content]
    end

    def parsed_response
      JSON.parse(response, symbolize_names: true)
    end

    def response
      @response || response!
    end

    def response!
      @response = Net::HTTP.get(uri)
      # TODO: What is the right error message here?
      fail TimeoutError, "Readypulse API Error" if @response.empty? || @response.nil?
      @response
    end

    def uri
      URI("http://widgets.readypulse.com/api/v1/widgets/#{album_id}.json")
    end
  end
end
