require 'httparty'

class HearthstoneJSON
    include HTTParty

    API_URL_BASE = 'https://api.hearthstonejson.com'.freeze
    API_VER = 'v1'.freeze

    def initialize(data_ver = 'latest', locale = 'enUS')
        self.class.base_uri "#{API_URL_BASE}/#{API_VER}/#{data_ver}/#{locale}"
    end

    def enums
        []
    end

    private

    attr_accessor :locale
end
