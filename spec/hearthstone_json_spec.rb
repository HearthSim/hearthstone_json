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

  describe '#cardbacks' do
    context 'with no parameters' do
      let(:cardbacks) { hearthstone_json.cardbacks }

      it 'should return something' do
        expect(cardbacks).to_not be_nil
      end
    end
  end
end
