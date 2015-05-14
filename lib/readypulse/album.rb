module Readypulse
  class Album
    attr_accessor :id

    def initialize(id:)
      from_client
    end

    def images
      @images ||= ImageCollection.new
    end

  private
    def from_client
      Client.instance(album_id: id).to_album
    end
  end
end
