# frozen_string_literal: true

module BuildTools
  # @api private
  class ServiceEnumerator
    include Enumerable

    # TODO: potentially add services.json like in V3 to track service name independently from service id
    def initialize(options = {})
      @models_dir = options.fetch(:models_dir, File.expand_path('../../models', __dir__))
    end

    # @param [String] identifier
    def [](identifier)
      raise ArgumentError, "unknown service #{identifier.inspect}" unless services.key?(identifier)

      services[identifier]
    end
    alias service []

    def each(&)
      services.values.each(&)
    end

    private

    def services
      # WARNING: not thread-safe
      @services ||=
        Dir["#{@models_dir}/*.json"].each_with_object({}) do |file, services|
          model = JSON.load_file(file)
          sdk_id = sdk_id(model)
          identifier = sdk_id.downcase.gsub(' ', '')
          service_name = convert_to_module_name(sdk_id)
          gem_name = "aws-sdk-#{identifier}"
          plan_options = {
            service_name: service_name,
            module_name: "Aws::#{service_name}",
            gem_name: gem_name,
            gem_version: '2.0.0.pre0',
            destination_root: "gems/#{gem_name}",
            quiet: true
          }
          plan = Smithy::Plan.new(model, :client, plan_options)
          services[identifier] = plan
        end
    end

    def sdk_id(model)
      _, service = model['shapes'].find { |_, shape| shape['type'] == 'service' }
      raise "Service shape not found in #{model}" unless service

      sdk_id = service.dig('traits', 'aws.api#service', 'sdkId')
      raise "SDK ID not found in #{model}" unless sdk_id

      sdk_id
    end

    # Convert sdkId to a module name.
    def convert_to_module_name(name)
      name = name.gsub(/\bv(\d)\b/, 'V\1') # convert suffixes like v2 to V2
      name = name.gsub(/\W+/, '').gsub('_', '') # make it constant safe
      name = name.sub(/^AWS/, '').sub(/^Amazon/, '') # remove AWS/Amazon prefix
      name[0] = name.upcase[0]
      name
    end
  end

  Services = ServiceEnumerator.new
end
