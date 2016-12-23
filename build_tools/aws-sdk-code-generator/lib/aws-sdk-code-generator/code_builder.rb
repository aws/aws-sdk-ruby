module AwsSdkCodeGenerator
  class CodeBuilder

    # @api private
    GENERATED_SRC_WARNING = <<-WARNING
# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

    WARNING

    include Helper

    # @option options [required, Service] :service
    #
    # @option options [required, String] :aws_sdk_core_lib_path
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

      # TODO : remove these
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
      source_files.each.with_index do |(_, src_code), n|
        next if n < 2 # skip the service module and customizations
        code << src_code
      end
      code.join("\n")
    end

    # @option options [String] :prefix
    # @return [Enumerable<String<path>, String<code>>]
    def source_files(options = {})
      prefix = options.fetch(:prefix, nil)
      prefix ||= @module_names.map { |n| underscore(n) }.join('/')
      # prefix should always be the gemname. The service-module (the first
      # item yielded below) should be moved from here into the gem builder
      # The source code builder should simply yield the empty module
      Enumerator.new do |y|
        #y.yield("#{prefix}.rb", service_module(prefix: prefix))
        #y.yield("#{prefix}/customizations.rb", '')
        #y.yield("#{prefix}/types.rb", types_module)
        #y.yield("#{prefix}/client_api.rb", client_api_module)
        #y.yield("#{prefix}/client.rb", client_class)
        #y.yield("#{prefix}/errors.rb", errors_module)
        #y.yield("#{prefix}/waiters.rb", waiters_module) if @waiters
        #y.yield("#{prefix}/resource.rb", GENERATED_SRC_WARNING + wrap(root_resource_class))
        if @resources
          @resources['resources'].keys.sort.each do |name|
            next unless name == 'BucketVersioning'
            y.yield("#{prefix}/#{underscore(name)}.rb", resource_class(name, @resources['resources'][name]))
          end
        end
      end
    end

    private

    def service_module(prefix:)
      Views::ServiceModule.new(service: @service, prefix: prefix).render
    end

    def types_module
      Views::TypesModule.new(service: @service).render
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
      ).render
    end

    def errors_module
      Views::ErrorsModule.new(service: @service).render
    end

    def new_svc_module
      @module_names.inject(Dsl::Main.new) do |mod, module_name|
        mod.module(module_name)
      end
    end

    def wrap(mod)
      svc_mod = new_svc_module
      svc_mod.add(mod)
      svc_mod.root.to_s
    end

    def waiters_module(svc_mod = new_svc_module)
      Views::WaitersModule.new(
        module_name: @service.module_name,
        waiters: @waiters,
      ).render
    end

    def root_resource_class
      Generators::RootResourceClass.new({
        api: @api,
        resources: @resources,
        paginators: @paginators,
        var_name: underscore(@module_names.last),
      })
    end

    def resource_class(resource_name, resource_definition)
      Views::ResourceClass.new(
        module_name: @service.module_name,
        class_name: resource_name,
        api: @api,
        paginators: @paginators,
        waiters: @waiters,
        resource: resource_definition,
      ).render
    end

  end
end
