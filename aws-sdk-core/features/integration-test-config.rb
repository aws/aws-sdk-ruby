class IntegrationTestConfig

  def initialize(path)
    @path = path
    @cfg = File.exists?(path) ? Aws::Json.load_file(path) : {}
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
      if ENV['AWS_INTEGRATION']
        @cfg = new(path)
      else
        skip_integration_tests
      end
    end

    def path
      File.expand_path(File.join([
        File.dirname(__FILE__),
        '..',
        '..',
        'integration-test-config.json',
      ]))
    end

    private

    def skip_integration_tests
      msg = <<-MSG

*** skipping aws-sdk-resource integration tests ***
  Export AWS_INTEGRATION=1 to enable integration tests

      MSG
      puts msg
      exit(0)
    end

  end
end

def cfg_value(*path)
  value = IntegrationTestConfig.value_at(*path)
  if value.nil?
    pending("set cfg#{path.map {|p| "[#{p.inspect}]" }.join} in #{IntegrationTestConfig.path}")
  else
    value
  end
end

