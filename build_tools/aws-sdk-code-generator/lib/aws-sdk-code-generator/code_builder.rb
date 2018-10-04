module AwsSdkCodeGenerator
  class CodeBuilder

    # @option options [required, Service] :service
    #
    # @option options [required, String] :aws_sdk_core_lib_path
    #   Path to the lib directory for the source code of the
    #   AWS SDK for Ruby. This is needed so that documentation
    #   can be generated for default plugins and their options.
    #
    # @option options [Hash<String, Array<Hash>] :client_examples ({})
    #   A hash of client examples. Hash keys should be API operation method
    #   names (snake_cased). Hash values should be arrays of hashes.
    #   Each hash should contain the following keys:
    #
    #   * `:name` - The name of the example
    #   * `:code` - The Ruby example code
    #
    def initialize(options)
      @service = options.fetch(:service)
      @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
      @client_examples = options.fetch(:client_examples, {})
      @add_plugins = @service.add_plugins
      @remove_plugins = @service.remove_plugins
      @gem_dependencies = @service.gem_dependencies
      @module_names = @service.module_name.split('::')
      @api = @service.api
      @paginators = @service.paginators
      @waiters = @service.waiters
      @resources = @service.resources
      @examples = @service.examples
    end

    # Generates the source for a library as a single string.
    # @return [String<code>]
    # @api private
    def source
      code = @gem_dependencies.map { |gem_name, _| "require '#{gem_name}'" }
      source_files.each.with_index do |(file_name, src_code), n|
        # skip the service module and customizations
        next if file_name.include? '/customizations.rb'
        next unless file_name.include? '/'
        # skip markdown files
        next if file_name.include? 'README.md'
        code << src_code
      end
      code.join("\n")
    end

    # @return [Enumerable<String<path>, String<code>>]
    def source_files(options = {})
      prefix = options.fetch(:prefix, @service.gem_name)
      Enumerator.new do |y|
        if @service.protocol == 'api-gateway'
          y.yield("#{prefix}/../../README.md", apig_readme)
          y.yield("#{prefix}/plugins/authorizer.rb", authorizer_class)
          y.yield("#{prefix}/plugins/apig_endpoint.rb", apig_endpoint_class)
        end
        y.yield("#{prefix}.rb", service_module(prefix))
        y.yield("#{prefix}/customizations.rb", '')
        y.yield("#{prefix}/types.rb", types_module)
        if (@api['metadata']['protocolSettings'].nil? || @api['metadata']['protocolSettings']['h2'].nil?) && has_eventstream
          y.yield("#{prefix}/event_streams.rb", event_streams_module)
        end
        y.yield("#{prefix}/client_api.rb", client_api_module)
        y.yield("#{prefix}/client.rb", client_class)
        y.yield("#{prefix}/errors.rb", errors_module)
        y.yield("#{prefix}/waiters.rb", waiters_module) if @waiters
        y.yield("#{prefix}/resource.rb", root_resource_class)
        if @resources
          @resources['resources'].keys.sort.each do |name|
            path = "#{prefix}/#{Underscore.underscore(name)}.rb"
            code = resource_class(name, @resources['resources'][name])
            y.yield(path, code)
          end
        end
      end
    end

    private

    def service_module(prefix)
      Views::ServiceModule.new(service: @service, prefix: prefix).render
    end

    def types_module
      Views::TypesModule.new(service: @service).render
    end

    def event_streams_module
      Views::EventStreamsModule.new(service: @service).render
    end

    def client_api_module
      Views::ClientApiModule.new(service: @service).render
    end

    def client_class
      Views::ClientClass.new(
        service_identifier: @service.identifier,
        service_name: @service.name,
        module_name: @service.module_name,
        gem_name: @service.gem_name,
        gem_version: @service.gem_version,
        aws_sdk_core_lib_path: @aws_sdk_core_lib_path,
        client_examples: @client_examples,
        protocol: @service.protocol,
        signature_version: @service.signature_version,
        add_plugins: @service.add_plugins,
        remove_plugins: @service.remove_plugins,
        api: @service.api,
        waiters: @service.waiters,
        examples: @service.examples,
        custom: @service.protocol == 'api-gateway'
      ).render
    end

    def errors_module
      Views::ErrorsModule.new(service: @service).render
    end

    def waiters_module
      Views::WaitersModule.new(
        module_name: @service.module_name,
        waiters: @waiters,
        custom: @service.protocol == 'api-gateway'
      ).render
    end

    def authorizer_class
      Views::AuthorizerClass.new(
        module_name: @service.module_name
      ).render
    end

    def apig_endpoint_class
      Views::APIGEndpointClass.new(
        module_name: @service.module_name,
        default_endpoint: @service.default_endpoint
      ).render
    end

    def root_resource_class
      Views::RootResourceClass.new(
        module_name: @service.module_name,
        resources: @service.resources,
        paginators: @paginators,
        api: @api,
        custom: @service.protocol == 'api-gateway'
      ).render
    end

    def resource_class(resource_name, resource_definition)
      Views::ResourceClass.new(
        module_name: @service.module_name,
        class_name: resource_name,
        api: @api,
        paginators: @paginators,
        waiters: @waiters,
        resource: resource_definition,
        custom: @service.protocol == 'api-gateway'
      ).render
    end

    def apig_readme
      Views::APIGReadme.new(
        service_name: @service.name,
        gem_major_version: @service.gem_version.split('.').first,
        gem_name: @service.gem_name,
        module_name: @service.module_name
      ).render
    end

    private

    def has_eventstream
      @service.api['shapes'].each do |_, ref|
        return true if ref['eventstream']
      end
      false
    end

  end

end
