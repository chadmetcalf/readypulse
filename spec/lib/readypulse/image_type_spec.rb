module Readypulse
  RSpec.describe ImageType do
    subject(:image_type) {ImageType.new(raw_type: from_client)}

    its(:type)   { is_expected.to eq(from_client[:type]) }
    its(:url)    { is_expected.to eq(from_client[:url]) }
    its(:width)  { is_expected.to eq(from_client[:width]) }
    its(:height) { is_expected.to eq(from_client[:height]) }

    # rubocop:disable all
    def from_client
      {:type=>"email", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>220, :height=>150}
    end
  end
end
