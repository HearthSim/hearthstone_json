require 'httparty'

# HearthstoneJSON Class
class HearthstoneJSON
  include HTTParty

  API_URL_BASE = 'https://api.hearthstonejson.com'.freeze
  API_VER = 'v1'.freeze

  def initialize(data_ver = 'latest', locale = 'enUS')
    self.class.base_uri "#{API_URL_BASE}/#{API_VER}/#{data_ver}/#{locale}"
  end

  def enums(options = {})
    JSON.parse(
      HTTParty.get(
        URI.escape("#{API_URL_BASE}/#{API_VER}/enums.json"),
        options
      ).body
    )
  end

  def cardbacks(options = {})
    get_json('/cardbacks.json', options)
  end

  def cards(include_uncollectible = false, options = {})
    return get_json('/cards.json', options) if include_uncollectible
    get_json('/cards.collectible.json', options)
  end

  private

  attr_accessor :locale

  def get_json(path, options = {})
    response = self.class.get(URI.escape(path), options)
    JSON.parse(response.body)
  end
end
