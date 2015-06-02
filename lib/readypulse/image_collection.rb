module Readypulse
  class ImageCollection < Array

    attr_accessor :images, :album_id

    def initialize(album_id:)
      @album_id = album_id

      get_images
    end

    private

    def get_images
      from_client.map do |raw_image|
        self << Image.new(raw_image: raw_image)
      end
    end

    def from_client
      Client.instance.to_images(album_id: album_id)
    end
  end
end
