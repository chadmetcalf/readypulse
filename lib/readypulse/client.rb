module Readypulse
  class Client

    def self.instance(id: nil)
      @@client ||= Client.new(id: id)
    end

    def to_album
    end

    def to_images
    end

  private

    def response_content
      @response_content ||= response_content!
    end

    def response_content!
      ImageCollection.new(content: response['content'])
    end

    def response
      @response ||= response!
    end

    def response!
      JSON.parse(Net::HTTP.get(uri))
    end

    def uri
      URI("http://widgets.readypulse.com/api/v1/widgets/#{id}.json")
    end
  end
end
