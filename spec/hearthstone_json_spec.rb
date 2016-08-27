require 'hearthstone_json'

describe HearthstoneJSON do
  let(:hearthstone_json) { HearthstoneJSON.new }

  describe '#enums' do
    context 'with no parameters' do
      let(:enums) { hearthstone_json.enums }

      it 'should return something' do
        expect(enums).to_not be_nil
      end
    end
  end
end
