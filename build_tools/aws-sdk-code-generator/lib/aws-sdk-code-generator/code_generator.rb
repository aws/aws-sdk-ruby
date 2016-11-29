module AwsSdkCodeGenerator
  class CodeGenerator

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

    def generate_src
      svc_mod = new_svc_module
      @gem_dependencies.each { |gem_name, _| svc_mod.require(gem_name) }
      svc_mod.docstring(service_docstring)
      each_module do |mod, _|
        svc_mod.add(mod)
      end
      @callback.call(svc_mod) if @callback
      svc_mod.root.to_s
    end

    # @option options [String] :prefix
    def src_files(options = {})
      prefix = options.fetch(:prefix, nil)
      prefix ||= @module_names.map { |n| underscore(n) }.join('/')
      Enumerator.new do |y|
        y.yield("#{prefix}.rb", GENERATED_SRC_WARNING + service_module(prefix))
        y.yield("#{prefix}/customizations.rb", '')
        each_module do |mod, type, code|
          case type
          when :unwrapped
            filename = File.join(prefix, underscore(mod.name) + '.rb')
            y.yield(filename, GENERATED_SRC_WARNING + wrap(mod))
          when :wrapped # dsl module
            filename = File.join(prefix, underscore(mod.name) + '.rb')
            y.yield(filename, GENERATED_SRC_WARNING + mod.root.to_s)
          else
            raise "expected :wrapped or :unwrapped"
          end
        end
      end
    end
    alias generate_src_files src_files

    private

    def each_module(&block)
      yield(types_module, :unwrapped)
      yield(client_api_module, :unwrapped)
      yield(client_class, :wrapped)
      yield(errors_module, :unwrapped)
      yield(waiters_module, :wrapped) if @waiters
      yield(root_resource_class, :unwrapped)
      if @resources
        @resources['resources'].keys.sort.each do |name|
          yield(resource_class(name, @resources['resources'][name]), :unwrapped)
        end
      end
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
      @callback.call(svc_mod) if @callback
      svc_mod.root.to_s
    end

    def types_module
      Generators::TypesModule.new(api: @api)
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
