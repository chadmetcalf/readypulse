module Readypulse
  RSpec.describe Client do
    subject(:client) {Client.instance}
    let(:album_id) {1}

    before(:each) do
      allow(Net::HTTP).to receive(:get).
        with(URI("http://widgets.readypulse.com/api/v1/widgets/#{album_id}.json")).
        and_return(readypulse_response)
    end

    it '.instance is a singleton' do
      additional_client = Client.instance

      expect(additional_client).to be(client)
    end

    it 'when album_id changes, a new request is made' do
      skip("This feature is low priority, come back around if you get a chance")
      expect(client).to receive(:response!).twice
      client.to_album(album_id: album_id)
      client.to_album(album_id: album_id)
    end

    it '#to_album' do
      expect(client.to_album(album_id: album_id)).to eq(from_client_to_album)
    end

    it '#to_images' do
      expect(client.to_images(album_id: album_id)).to eq(from_client_to_image)
    end

    # rubocop:disable all
    def from_client_to_album
      {:id=>1, :name=>"My Very First Curation", :description=>"This is my first curation on the ReadyPulse production site.", :type=>"static", :created_at=>"2012-04-09T09:35:07Z", :updated_at=>"2015-01-21T17:10:57Z", :brand=>{:id=>162, :name=>"Metal Mulisha"}, :readypulse_user=>{:id=>1, :name=>"Mihir Vaidya"}, :item_count=>3}
    end

    def from_client_to_image
      [{:id=>"3542844_630741923525326235_3542844::instagram::instagram_012014", :uniq_id=>"3542844_630741923525326235_3542844", :external_network_id=>"630741923525326235_3542844", :content_source=>"instagram", :content_index=>"instagram_012014", :type=>"photo", :has_media=>true, :story_url=>"http://instagram.com/p/jA2HAIrHWb/", :external_conversation_link=>"http://instagram.com/p/jA2HAIrHWb/", :user_text=>"Smoke em if you got em #kr3wkills", :timestamp=>"2014-01-11T03:18:38Z", :social_timestamp=>"January 11, 2014", :social_attributes=>{:Likes=>1220, :Comments=>7}, :readypulse_content_score=>44.13, :sentiment=>"neutral", :is_consented=>false, :is_incentivized=>false, :is_compliant=>nil, :is_approved=>nil, :cta=>nil, :media=>{:images=>[{:type=>"email", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>220, :height=>150}, {:type=>"tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>250}, {:type=>"square-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>300}, {:type=>"mobile-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>300, :height=>250}, {:type=>"large", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>550, :height=>550}, {:type=>"original", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1418764365/ig_3542844_630741923525326235_3542844.jpg", :width=>640, :height=>640}]}, :actor=>{:social_id=>"3542844", :handle_name=>"kr3wdenim", :name=>"KR3W Denim", :bio=>"#rightsrefused #no11 #rehabdenim #kr3wkills", :image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_3542844.jpg", :url=>"http://www.instagram.com/kr3wdenim"}, :products=>[{:id=>"4850_google_store_k5131408", :catalog_id=>"k5131408", :name=>"SKELETON KR3W", :description=>nil, :price=>"28.0", :url=>"http://kr3wdenim.com/products/k5131408", :image=>"https://s7d9.scene7.com/is/image/onedist/SKELETONKR3W_K5131408_BLK_Back?$ecomm_detail_main$", :thumbnail_image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_200,w_200/wn2eye3ztervwcuhqbzr.jpg", :tiny_image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_50,w_50/wn2eye3ztervwcuhqbzr.jpg"}]}, {:id=>"reebokoneseries_636365886051018888_840944057::instagram::instagram_012014", :uniq_id=>"reebokoneseries_636365886051018888_840944057", :external_network_id=>"636365886051018888_840944057", :content_source=>"instagram", :content_index=>"instagram_012014", :type=>"photo", :has_media=>true, :story_url=>"https://instagram.com/p/jU02bZP2iI/", :external_conversation_link=>"https://instagram.com/p/jU02bZP2iI/", :user_text=>"We did shine! \n#ReebokOneSeries #lightedlaces #Vondelpark #running", :timestamp=>"2014-01-18T21:32:26Z", :social_timestamp=>"January 18, 2014", :social_attributes=>{:Likes=>7}, :readypulse_content_score=>53.23, :sentiment=>"positive", :is_consented=>false, :is_incentivized=>false, :is_compliant=>nil, :is_approved=>true, :cta=>nil, :media=>{:images=>[{:type=>"email", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>220, :height=>150}, {:type=>"tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>300, :height=>250}, {:type=>"square-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>300, :height=>300}, {:type=>"mobile-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>300, :height=>250}, {:type=>"large", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>550, :height=>550}, {:type=>"original", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg", :width=>640, :height=>640}]}, :actor=>{:social_id=>"840944057", :handle_name=>"jessyhoutman", :name=>"Jessy", :bio=>"Marketing Manager adidas Group Benelux Amsterdam", :image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_840944057.jpg", :url=>"http://www.instagram.com/jessyhoutman"}}, {:id=>"bestfootforward13_605863231064875273_4806511::instagram::instagram_122013", :uniq_id=>"bestfootforward13_605863231064875273_4806511", :external_network_id=>"605863231064875273_4806511", :content_source=>"instagram", :content_index=>"instagram_122013", :type=>"photo", :has_media=>true, :story_url=>"http://instagram.com/p/hodWYOF6EJ/", :external_conversation_link=>"http://instagram.com/p/hodWYOF6EJ/", :user_text=>"#bestfootforward13 Houston winner Ryan Thompson today at #tampaam @spottampa", :timestamp=>"2013-12-07T19:30:06Z", :social_timestamp=>"December 07, 2013", :social_attributes=>{:Likes=>4307, :Comments=>9}, :readypulse_content_score=>37.98, :sentiment=>"neutral", :is_consented=>false, :is_incentivized=>false, :is_compliant=>nil, :is_approved=>true, :cta=>nil, :media=>{:images=>[{:type=>"email", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>220, :height=>150}, {:type=>"tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>300, :height=>250}, {:type=>"square-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>300, :height=>300}, {:type=>"mobile-tile", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>300, :height=>250}, {:type=>"large", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>550, :height=>550}, {:type=>"original", :url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg", :width=>640, :height=>640}]}, :actor=>{:social_id=>"4806511", :handle_name=>"zumiez", :name=>"zumiez", :bio=>"Since 1978 Zumiez has been a leading retailer of action sports clothing, and accessories providing a unique selection of brands in each of our stores", :image_url=>"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_4806511.jpg", :url=>"http://www.instagram.com/zumiez"}}]
    end

    def readypulse_response
      "{\"id\":1,\"name\":\"My Very First Curation\",\"description\":\"This is my first curation on the ReadyPulse production site.\",\"type\":\"static\",\"created_at\":\"2012-04-09T09:35:07Z\",\"updated_at\":\"2015-01-21T17:10:57Z\",\"brand\":{\"id\":162,\"name\":\"Metal Mulisha\"},\"readypulse_user\":{\"id\":1,\"name\":\"Mihir Vaidya\"},\"item_count\":3,\"content\":[{\"id\":\"3542844_630741923525326235_3542844::instagram::instagram_012014\",\"uniq_id\":\"3542844_630741923525326235_3542844\",\"external_network_id\":\"630741923525326235_3542844\",\"content_source\":\"instagram\",\"content_index\":\"instagram_012014\",\"type\":\"photo\",\"has_media\":true,\"story_url\":\"http://instagram.com/p/jA2HAIrHWb/\",\"external_conversation_link\":\"http://instagram.com/p/jA2HAIrHWb/\",\"user_text\":\"Smoke em if you got em #kr3wkills\",\"timestamp\":\"2014-01-11T03:18:38Z\",\"social_timestamp\":\"January 11, 2014\",\"social_attributes\":{\"Likes\":1220,\"Comments\":7},\"readypulse_content_score\":44.13,\"sentiment\":\"neutral\",\"is_consented\":false,\"is_incentivized\":false,\"is_compliant\":null,\"is_approved\":null,\"cta\":null,\"media\":{\"images\":[{\"type\":\"email\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":220,\"height\":150},{\"type\":\"tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":300,\"height\":250},{\"type\":\"square-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":300,\"height\":300},{\"type\":\"mobile-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":300,\"height\":250},{\"type\":\"large\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":550,\"height\":550},{\"type\":\"original\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1418764365/ig_3542844_630741923525326235_3542844.jpg\",\"width\":640,\"height\":640}]},\"actor\":{\"social_id\":\"3542844\",\"handle_name\":\"kr3wdenim\",\"name\":\"KR3W Denim\",\"bio\":\"#rightsrefused #no11 #rehabdenim #kr3wkills\",\"image_url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_3542844.jpg\",\"url\":\"http://www.instagram.com/kr3wdenim\"},\"products\":[{\"id\":\"4850_google_store_k5131408\",\"catalog_id\":\"k5131408\",\"name\":\"SKELETON KR3W\",\"description\":null,\"price\":\"28.0\",\"url\":\"http://kr3wdenim.com/products/k5131408\",\"image\":\"https://s7d9.scene7.com/is/image/onedist/SKELETONKR3W_K5131408_BLK_Back?$ecomm_detail_main$\",\"thumbnail_image_url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_200,w_200/wn2eye3ztervwcuhqbzr.jpg\",\"tiny_image_url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_pad,h_50,w_50/wn2eye3ztervwcuhqbzr.jpg\"}]},{\"id\":\"reebokoneseries_636365886051018888_840944057::instagram::instagram_012014\",\"uniq_id\":\"reebokoneseries_636365886051018888_840944057\",\"external_network_id\":\"636365886051018888_840944057\",\"content_source\":\"instagram\",\"content_index\":\"instagram_012014\",\"type\":\"photo\",\"has_media\":true,\"story_url\":\"https://instagram.com/p/jU02bZP2iI/\",\"external_conversation_link\":\"https://instagram.com/p/jU02bZP2iI/\",\"user_text\":\"We did shine! \\n#ReebokOneSeries #lightedlaces #Vondelpark #running\",\"timestamp\":\"2014-01-18T21:32:26Z\",\"social_timestamp\":\"January 18, 2014\",\"social_attributes\":{\"Likes\":7},\"readypulse_content_score\":53.23,\"sentiment\":\"positive\",\"is_consented\":false,\"is_incentivized\":false,\"is_compliant\":null,\"is_approved\":true,\"cta\":null,\"media\":{\"images\":[{\"type\":\"email\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":220,\"height\":150},{\"type\":\"tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":300,\"height\":250},{\"type\":\"square-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":300,\"height\":300},{\"type\":\"mobile-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":300,\"height\":250},{\"type\":\"large\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":550,\"height\":550},{\"type\":\"original\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1401839306/ig_reebokoneseries_636365886051018888_840944057.jpg\",\"width\":640,\"height\":640}]},\"actor\":{\"social_id\":\"840944057\",\"handle_name\":\"jessyhoutman\",\"name\":\"Jessy\",\"bio\":\"Marketing Manager adidas Group Benelux Amsterdam\",\"image_url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_840944057.jpg\",\"url\":\"http://www.instagram.com/jessyhoutman\"}},{\"id\":\"bestfootforward13_605863231064875273_4806511::instagram::instagram_122013\",\"uniq_id\":\"bestfootforward13_605863231064875273_4806511\",\"external_network_id\":\"605863231064875273_4806511\",\"content_source\":\"instagram\",\"content_index\":\"instagram_122013\",\"type\":\"photo\",\"has_media\":true,\"story_url\":\"http://instagram.com/p/hodWYOF6EJ/\",\"external_conversation_link\":\"http://instagram.com/p/hodWYOF6EJ/\",\"user_text\":\"#bestfootforward13 Houston winner Ryan Thompson today at #tampaam @spottampa\",\"timestamp\":\"2013-12-07T19:30:06Z\",\"social_timestamp\":\"December 07, 2013\",\"social_attributes\":{\"Likes\":4307,\"Comments\":9},\"readypulse_content_score\":37.98,\"sentiment\":\"neutral\",\"is_consented\":false,\"is_incentivized\":false,\"is_compliant\":null,\"is_approved\":true,\"cta\":null,\"media\":{\"images\":[{\"type\":\"email\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_150,q_75,w_220/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":220,\"height\":150},{\"type\":\"tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":300,\"height\":250},{\"type\":\"square-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_300,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":300,\"height\":300},{\"type\":\"mobile-tile\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":300,\"height\":250},{\"type\":\"large\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,h_550,q_90,w_550/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":550,\"height\":550},{\"type\":\"original\",\"url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/b_white,c_pad,fl_progressive,g_center,q_90/v1390954685/ig_bestfootforward13_605863231064875273_4806511.jpg\",\"width\":640,\"height\":640}]},\"actor\":{\"social_id\":\"4806511\",\"handle_name\":\"zumiez\",\"name\":\"zumiez\",\"bio\":\"Since 1978 Zumiez has been a leading retailer of action sports clothing, and accessories providing a unique selection of brands in each of our stores\",\"image_url\":\"https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_50,q_75,w_50/ig_4806511.jpg\",\"url\":\"http://www.instagram.com/zumiez\"}}]}"
    end
  end
end
