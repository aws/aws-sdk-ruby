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
    def initialize(options)
      @service = options.fetch(:service)
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
        y.yield("#{prefix}.rb", Views::ServiceModule.new(service: @service, prefix: prefix).render)
        y.yield("#{prefix}/customizations.rb", '')
        y.yield("#{prefix}/types.rb", types_module)
        y.yield("#{prefix}/client_api.rb", GENERATED_SRC_WARNING + wrap(client_api_module))
        y.yield("#{prefix}/client.rb", GENERATED_SRC_WARNING + client_class.root.to_s)
        y.yield("#{prefix}/errors.rb", GENERATED_SRC_WARNING + wrap(errors_module))
        y.yield("#{prefix}/waiters.rb", GENERATED_SRC_WARNING + waiters_module.root.to_s)
        y.yield("#{prefix}/resource.rb", GENERATED_SRC_WARNING + wrap(root_resource_class))
        if @resources
          @resources['resources'].keys.sort.each do |name|
            y.yield("#{prefix}/#{underscore(name)}.rb", GENERATED_SRC_WARNING + wrap(resource_class(name, @resources['resources'][name])))
          end
        end
      end
    end

    private

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

    def service_module(autoload_prefix)
      autoloads = Generators::ServiceAutoloads.new(
        prefix: autoload_prefix,
        resources: @resources,
        waiters: !!@waiters
      )
      svc_mod = new_svc_module
      @gem_dependencies.each { |gem_name, _| svc_mod.require(gem_name) }
      svc_mod.docstring(service_docstring)
      svc_mod.code("GEM_VERSION = '#{@service.gem_version}'")
      autoloads.apply(svc_mod)
      svc_mod.root.to_s
    end

    def types_module
      Views::TypesModule.new(service: @service).render
    end

    def client_api_module
      Generators::ClientApiModule.new(api: @api, paginators:@paginators)
    end

    def client_class(svc_mod = new_svc_module)
      klass = Generators::ClientClass.new(
        parent: svc_mod,
        identifier: @module_names.last.downcase,
        api: @api,
        waiters: @waiters,
        examples: @examples,
        add_plugins: @add_plugins,
        remove_plugins: @remove_plugins,
        gem_name: @service.gem_name,
        gem_version: @service.gem_version,
      )
      svc_mod.add(klass)
      klass
    end

    def errors_module
      Generators::ErrorsModule.new(api: @api)
    end

    def waiters_module(svc_mod = new_svc_module)
      klass = Generators::WaitersModule.new(
        parent: svc_mod,
        waiters: @waiters
      )
      svc_mod.add(klass)
      klass
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
      Generators::ResourceClass.new(
        api: @api,
        name: resource_name,
        resource: resource_definition,
        paginators: @paginators,
        waiters: @waiters,
      )
    end

    def service_docstring
      metadata = @api['metadata'] || {}
      Generators::ServiceDocumentation.new(
        product_name: metadata['serviceFullName'] || @module_names.last,
        namespace: @module_names.join('::'),
        api: @api
      ).docstring
    end

    # @api private
    # This method can be removed if move to used the combined API and
    # docs JSON document.
    def apply_docs(api, docs)
      api['documentation'] = docs['service']
      docs['operations'].each do |name, docstring|
        api['operations'][name]['documentation'] = docstring
      end
      docs['shapes'].each do |shape_name, shape_docs|
        api['shapes'][shape_name]['documentation'] = shape_docs['base']
        shape_docs['refs'].each do |ref, ref_docs|
          ref_shape, ref_member = ref.split('$')
          case api['shapes'][ref_shape]['type']
          when 'structure'
            api['shapes'][ref_shape]['members'][ref_member]['documentation'] = ref_docs
          when 'list', 'map'
            api['shapes'][ref_shape][ref_member]['documentation'] = ref_docs
          end

        end
      end
    end

  end
end
