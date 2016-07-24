require 'hearthstone_json'

RSpec.describe HearthstoneJSON, '#enums' do
    context 'with no parameters' do
        it 'should be an array' do
            hearthstone_json = HearthstoneJSON.new
            expect(hearthstone_json.enums).to be_a(Array)
        end
    end
end
