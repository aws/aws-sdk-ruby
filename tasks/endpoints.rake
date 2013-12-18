namespace :endpoints do

  desc 'Downloads a fresh copy of the endpoints.json'
  task :download do
    require 'net/http'
    require 'uri'
    host = 'aws-sdk-configurations.amazonwebservices.com'
    uri = URI.parse("http://#{host}/endpoints.json")
    response = Net::HTTP.get_response(uri)
    root = File.dirname(File.dirname(__FILE__))
    target = File.join(root, 'apis', 'configuration', 'endpoints.json')
    File.open(target, 'w') { |file| file.write(response.body) }
  end

end
