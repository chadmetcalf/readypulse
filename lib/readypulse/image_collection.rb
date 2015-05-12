module Readypulse
  class ImageCollection

    include Enumerable
    attr_accessor :images

    def initialize(images: [])
    end

    def each(&block)
      images.each(&block)
    end

    def images
      @images ||= get_images
    end

    private

    def get_images
      from_client
    end

    def from_client
      Client.instance.to_images
    end
  end
end
