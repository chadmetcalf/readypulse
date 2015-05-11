module Readypulse
  class ImageCollection

    include Enumerable
    attr_accessor :images

    def initialize(images: [])
    end

    def each(&block)
      images.each(&block)
    end
  end
end
