# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'hearthstone_json'
  s.version = '0.1.1'
  s.date = '2016-09-06'
  s.add_runtime_dependency 'httparty', ['>= 0.13.7']
  s.add_development_dependency 'rspec', ['>= 3.5.0']
  s.summary = 'Ruby gem for hearthstonejson.com'
  s.description =
    'Ruby gem for easily getting up to date info from hearthstonejson.com'
  s.authors = ['Alex Hanna']
  s.email = 'tinnvec@gmail.com'
  s.files = ['lib/hearthstone_json.rb']
  s.homepage = 'https://github.com/tinnvec/hearthstone_json'
  s.license = 'MIT'
end
