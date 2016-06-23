class ApiCallTracker < Seahorse::Client::Plugin

  @api_calls = []

  class << self

    attr_reader :api_calls

    def called_operations
      api_calls.map { |resp| resp.context.operation_name }
    end

  end

  handle do |context|
    response = @handler.call(context)
    ApiCallTracker.api_calls << response
    response
  end

end

Before do |scenario|
  ApiCallTracker.api_calls.clear
end

class IntegrationTestConfig

  def initialize(values)
    @cfg = values
  end

  def value_at(*path)
    path.inject(@cfg) do |value, key|
      if Hash === value && value.key?(key)
        value[key]
      else
        nil
      end
    end
  end

  class << self

    def value_at(*path)
      @cfg.value_at(*path)
    end

    def load!
      @cfg = new(File.exists?(path) ? Aws::Json.load_file(path) : {})
    end

    private

    def path
      File.expand_path(File.join([
        File.dirname(__FILE__),
        '..',
        '..',
        'integration-test-config.json',
      ]))
    end

  end
end

def cfg_value(*path)
  value = IntegrationTestConfig.value_at(*path)
  if value.nil?
    pending("set cfg#{path.map {|p| "[#{p.inspect}]" }.join} in #{IntegrationTestConfig.send(:path)}")
  else
    value
  end
end

IntegrationTestConfig.load!
