module Readypulse
  class Album
    def initialize(id:)
    end

    def images
      @images ||= ImageCollection.new
    end

    private

    def from_client
      Client.instance.from_client
    end
  end
end
