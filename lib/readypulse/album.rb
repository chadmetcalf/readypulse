module Readypulse
  class Album
    def initialize(id:)
    end

    def images
      response_content
    end

    private

    def response_content
      @response_content ||= response_content!
    end

    def response_content!
      ContentCollection.new(response['content'])
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
