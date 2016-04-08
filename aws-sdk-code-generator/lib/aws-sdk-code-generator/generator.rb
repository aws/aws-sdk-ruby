module AwsSdkCodeGenerator
  class Generator

    include Helper

    # @param [required, Array<String>] module_names
    # @param [required, Hash] api
    # @param [Hash] docs
    # @param [Hash] paginators
    # @param [Hash] waiters
    # @param [Hash] resources
    # @param [Hash] examples
    def initialize(
      module_names:,
      api:,
      docs: nil,
      paginators: nil,
      waiters: nil,
      resources: nil,
      examples: nil
    )
      @module_names = module_names
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
      name = underscore(@module_names.last)
      Enumerator.new do |y|
        y.yield("#{name}.rb", service_module)
        each_module do |mod|
          y.yield(File.join(name, underscore(mod.name) + '.rb'), wrap(mod))
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
      svc_mod = @module_names.inject(root_mod) do |mod, module_name|
        mod.module(module_name)
      end
      [root_mod, svc_mod]
    end

    def wrap(mod)
      root_mod, svc_mod = build_modules
      svc_mod.add(mod)
      root_mod.to_s
    end

    def service_module
      autoloads = Generators::ServiceAutoloads.new(
        module_names: @module_names,
        resources: @resources
      )
      root_mod, svc_mod = build_modules
      #root_mod.require('aws-sdk-core')
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
        identifier: @module_names.last.downcase,
        api: @api,
        waiters: @waiters,
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
