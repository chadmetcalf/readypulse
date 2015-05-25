module Readypulse
  RSpec.describe Album do
    let(:album) {Album.new(id: 1)}

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

    it '#images' do
      expect(album.images).to be_an(ImageCollection)
    end

    def from_client
      {}
    end
  end
end
