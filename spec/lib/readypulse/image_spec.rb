module Readypulse
  RSpec.describe Image do
    subject(:image) {Image.new(raw_image: from_client)}

    # String Attribute
    its(:id)                  {is_expected.to eq(from_client[:id])}
    its(:uniq_id)             {is_expected.to eq(from_client[:uniq_id])}
    its(:external_network_id) {is_expected.to eq(from_client[:external_network_id])}
    its(:content_source)      {is_expected.to eq(from_client[:content_source])}
    its(:content_index)       {is_expected.to eq(from_client[:content_index])}
    its(:type)                {is_expected.to eq(from_client[:type])}
    its(:story_url)           {is_expected.to eq(from_client[:story_url])}
    its(:user_text)           {is_expected.to eq(from_client[:user_text])}
    its(:timestamp)           {is_expected.to eq(from_client[:timestamp])}
    its(:social_timestamp)    {is_expected.to eq(from_client[:social_timestamp])}
    its(:sentiment)           {is_expected.to eq(from_client[:sentiment])}

    # Boolean Attributes
    its(:sentiment)       {is_expected.to eq(from_client[:sentiment])}
    its(:is_consented)    {is_expected.to eq(from_client[:is_consented])}
    its(:is_incentivized) {is_expected.to eq(from_client[:is_incentivized])}
    its(:is_compliant)    {is_expected.to eq(from_client[:is_compliant])}
    its(:is_approved)     {is_expected.to eq(from_client[:is_approved])}

    # Fixnum Attributes
    its(:readypulse_content_score) {is_expected.to eq(from_client[:readypulse_content_score])}

    # Collection Attributes
    its(:social_attributes) {is_expected.to eq(from_client[:social_attributes])}
    its(:products) {is_expected.to eq(from_client[:products])}
    its(:actor) {is_expected.to eq(from_client[:actor])}

    its(:types) {is_expected.to eq(["email", "tile", "square-tile", "mobile-tile", "large", "original"])}

    it 'has image_type objects' do
      expect(image["email"]).to       be_an(ImageType)
      expect(image["tile"]).to        be_an(ImageType)
      expect(image["square-tile"]).to be_an(ImageType)
      expect(image["mobile-tile"]).to be_an(ImageType)
      expect(image["large"]).to       be_an(ImageType)
      expect(image["original"]).to    be_an(ImageType)
    end

    def from_client
      {:id=>"3542844_630741923525326235_3542844::instagram::instagram_012014", :uniq_id=>"3542844_630741923525326235_3542844", :external_network_id=>"630741923525326235_3542844", :content_source=>"instagram", :content_index=>"instagram_012014", :type=>"photo", :has_media=>true, :story_url=>"http://instagram.com/p/jA2HAIrHWb/", :external_conversation_link=>"http://instagram.com/p/jA2HAIrHWb/", :user_text=>"Smoke em if you got em #kr3wkills", :timestamp=>"2014-01-11T03:18:38Z", :social_timestamp=>"January 11, 2014", :social_attributes=>{:Likes=>1220, :Comments=>7}, :readypulse_content_score=>44.13, :sentiment=>"neutral", :is_consented=>false, :is_incentivized=>false, :is_compliant=>nil, :is_approved=>nil, :cta=>nil, :media=>{:images=>[{:type=>"email", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>220, :height=>150}, {:type=>"tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>250}, {:type=>"square-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>300}, {:type=>"mobile-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>250}, {:type=>"large", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>550, :height=>550}, {:type=>"original", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>640, :height=>640}]}, :actor=>{:social_id=>"3542844", :handle_name=>"kr3wdenim", :name=>"KR3W Denim", :bio=>"#rightsrefused #no11 #rehabdenim #kr3wkills", :image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_3542844.jpg", :url=>"http://www.instagram.com/kr3wdenim"}, :products=>[{:id=>"4850_google_store_k5131408", :catalog_id=>"k5131408", :name=>"SKELETON KR3W", :description=>nil, :price=>"28.0", :url=>"http://kr3wdenim.com/products/k5131408", :image=>"https://s7d9.scene7.com/is/image/onedist/SKELETONKR3W_K5131408_BLK_Back?$ecomm_detail_main$", :thumbnail_image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_200,w_200/wn2eye3ztervwcuhqbzr.jpg", :tiny_image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_50,w_50/wn2eye3ztervwcuhqbzr.jpg"}]}
    end
  end
end
