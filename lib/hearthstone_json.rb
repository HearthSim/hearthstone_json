require 'httparty'

class HearthstoneJSON
    include HTTParty

    API_URL_BASE = 'https://api.hearthstonejson.com'.freeze
    API_VER = 'v1'.freeze

    base_uri "#{API_URL_BASE}/#{API_VER}"

    def initialize(locale = 'enUS', data_ver = 'latest')
        @full_uri = "#{base_uri}/#{data_ver}/#{locale}"
    end

    private

    attr_accessor :locale
end
