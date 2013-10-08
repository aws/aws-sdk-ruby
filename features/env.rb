$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'
require 'multi_json'

config_file = './integration-test-config.json'

Aws.config = MultiJson.load(File.read(config_file), symbolize_keys: true)

def call_request(service, operation_name, params = {})
  service = instance_variable_get("@#{service}")
  begin
    @response = service.build_request(operation_name, params).send_request
  rescue => error
    @error = error
  end
end

def eventually(seconds = 15, &block)

  # generate a list of times-to-sleep that add up to less than `seconds'
  sleeps = [1]
  while sleeps.inject(0) { |sum, i| sum + i } < seconds
    sleeps << sleeps.last * 1.2
  end

  begin
    yield
  rescue => error
    unless sleeps.empty?
      sleep(sleeps.shift)
      retry
    end
    raise error # terminal case
  end

end
