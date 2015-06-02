module Readypulse
  RSpec.describe Album do
    let(:album_id) {1}
    subject(:album) {Album.new(id: album_id)}

    before(:each) do
      client = double(Client)
      allow(Client).to receive(:instance).and_return(client)
      allow(client).to receive(:to_album).and_return(from_client)
    end

    context '.new' do
      it 'requires an id value' do
        no_id_album = ->{Album.new}

        expect{no_id_album.call}.to raise_error
      end

      it 'is successful' do
        expect(album).to be_an(Album)
      end
    end

    its(:id)              { is_expected.to eq(from_client[:id]) }
    its(:description)     { is_expected.to eq(from_client[:description]) }
    its(:item_count)      { is_expected.to eq(from_client[:item_count]) }
    its(:name)            { is_expected.to eq(from_client[:name]) }
    its(:type)            { is_expected.to eq(from_client[:type]) }
    its(:readypulse_user) { is_expected.to eq(from_client[:readypulse_user]) }
    its(:created_at)      { is_expected.to eq(from_client[:created_at]) }
    its(:updated_at)      { is_expected.to eq(from_client[:updated_at]) }

    it '#images' do
      allow(ImageCollection).to receive(:new).with(album_id: album_id)
      album.images
      expect(ImageCollection).to have_received(:new)
    end

    def from_client
      {:id=>1, :name=>"My Very First Curation", :description=>"This is my first curation on the ReadyPulse production site.", :type=>"static", :created_at=>"2012-04-09T09:35:07Z", :updated_at=>"2015-01-21T17:10:57Z", :brand=>{:id=>162, :name=>"Metal Mulisha"}, :readypulse_user=>{:id=>1, :name=>"Mihir Vaidya"}, :item_count=>3}
    end
  end
end
