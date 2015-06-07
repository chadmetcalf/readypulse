module Readypulse
  class ImageType

    attr_accessor :type, :url, :width, :height
    def initialize(raw_type:)
      %w(type url width height).each do |attribute|
        instance_variable_set( "@" + attribute, raw_type.fetch(attribute.to_sym))
      end
    end
  end
end
