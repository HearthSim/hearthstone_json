require 'hearthstone_json'

RSpec.describe HearthstoneJSON, '#enums' do
    context 'with no parameters' do
        it 'should return something' do
            hearthstone_json = HearthstoneJSON.new
            expect(hearthstone_json.enums).to_not be_nil
        end
    end
end
