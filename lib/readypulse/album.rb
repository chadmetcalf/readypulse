module Readypulse
  class Album

    ATTR_FIELDS = %w(created_at description item_count name readypulse_user type
                updated_at)

    attr_accessor :id, :brand, :content, :description, :item_count, :name,
                  :readypulse_user, :type, :created_at, :updated_at

    def initialize(id:)
      @id = id
      ATTR_FIELDS.each do |attr_field|
        instance_variable_set( "@" + attr_field, retrieve_album[attr_field.to_sym])
      end
    end

    def images
      @images ||= ImageCollection.new(album_id: id)
    end

  private
    def retrieve_album
      from_client
    end

    def from_client
      Client.instance.to_album(album_id: id)
    end
  end
end
