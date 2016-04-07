module AwsSdkCodeGenerator
  class Generator

    include Helper

    def initialize(gem_name:, modules:, api:, docs:nil, paginators:nil, waiters:nil, resources:nil, examples:nil)
      @gem_name = gem_name
      @modules = modules
      apply_docs(api, docs) if docs
      @api = api
      @paginators = paginators
      @waiters = waiters
      @resources = resources
      @examples = examples
    end

    def generate_src
      root_mod, svc_mod = build_modules
      root_mod.require('aws-sdk-core')
      svc_mod.docstring(service_docstring)
      each_module do |mod|
        svc_mod.add(mod)
      end
      root_mod.to_s
    end

    def generate_src_files
      Enumerator.new do |y|
        y.yield("#{@gem_name}.rb", service_module)
        each_module do |mod|
          y.yield(module_path(mod), wrap(mod))
        end
      end
    end

    private

    def each_module(&block)
      yield(types_module)
      yield(client_api_module)
      yield(client_class)
      yield(errors_module)
      yield(waiters_module)
      yield(root_resource_class)
      if @resources
        @resources['resources'].keys.sort.each do |name|
          yield(resource_class(name, @resources['resources'][name]))
        end
      end
    end

    def build_modules
      root_mod = Dsl::Main.new
      root_mod.comments("WARNING ABOUT GENERATED CODE")
      svc_mod = @modules.inject(root_mod) do |mod, module_name|
        mod.module(module_name)
      end
      [root_mod, svc_mod]
    end

    def wrap(mod)
      root_mod, svc_mod = build_modules
      svc_mod.add(mod)
      root_mod.to_s
    end

    def module_path(mod)
      File.join(@gem_name, underscore(mod.name) + '.rb')
    end

    def service_module
      autoloads = Generators::ServiceAutoloads.new(
        gem_name: @gem_name,
        resources: @resources
      )
      root_mod, svc_mod = build_modules
      root_mod.require('aws-sdk-core')
      svc_mod.docstring(service_docstring)
      autoloads.apply(svc_mod)
      root_mod.to_s
    end

    def types_module
      Generators::TypesModule.new(api: @api)
    end

    def client_api_module
      Generators::ClientApiModule.new(api: @api, paginators:@paginators)
    end

    def client_class
      Generators::ClientClass.new(
        identifier: @modules.last.downcase,
        api: @api,
        waiters: @waiters,
        gem_name: @gem_name,
      )
    end

    def errors_module
      Generators::ErrorsModule.new(api: @api)
    end

    def waiters_module
      Generators::WaitersModule.new(waiters: @waiters)
    end

    def root_resource_class
      Generators::RootResourceClass.new({
        api: @api,
        resources: @resources,
        paginators: @paginators
      })
    end

    def resource_class(resource_name, resource_definition)
      Generators::ResourceClass.new(
        api: @api,
        name: resource_name,
        resource: resource_definition,
        paginators: @paginators,
        waiters: @waiters
      )
    end

    def service_docstring
      metadata = @api['metadata'] || {}
      Generators::ServiceDocumentation.new(
        product_name: metadata['serviceFullName'] || @modules.last,
        namespace: @modules.join('::'),
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
