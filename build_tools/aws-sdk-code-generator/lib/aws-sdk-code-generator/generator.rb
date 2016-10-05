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
      api:nil,
      docs: nil,
      paginators: nil,
      waiters: nil,
      resources: nil,
      examples: nil,
      gem_requires:[],
      add_plugins:{},
      remove_plugins:[],
      &block
    )
      @module_names = module_names
      apply_docs(api, docs) if docs
      @api = api || {}
      @paginators = paginators
      @waiters = waiters
      @resources = resources
      @examples = examples
      @gem_requires = gem_requires
      @add_plugins = add_plugins
      @remove_plugins = remove_plugins
      @callback = block
    end

    def generate_src
      svc_mod = new_svc_module
      @gem_requires.each { |gem_name| svc_mod.require(gem_name) }
      svc_mod.docstring(service_docstring)
      each_module do |mod|
        svc_mod.add(mod)
      end
      @callback.call(svc_mod) if @callback
      svc_mod.root.to_s
    end

    def generate_src_files(prefix: nil)
      prefix ||= @module_names.map { |n| underscore(n) }.join('/')
      Enumerator.new do |y|
        y.yield("#{prefix}.rb", service_module(prefix))
        each_module do |mod, is_client|
          filename = File.join(prefix, underscore(mod.name) + '.rb')
          if is_client
            y.yield(filename, mod.root.to_s)
          else
            y.yield(filename, wrap(mod))
          end
        end
      end
    end

    private

    def each_module(&block)
      yield(types_module)
      yield(client_api_module)
      yield(client_class, true)
      yield(errors_module)
      yield(waiters_module)
      yield(root_resource_class)
      if @resources
        @resources['resources'].keys.sort.each do |name|
          yield(resource_class(name, @resources['resources'][name]))
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
        resources: @resources
      )
      svc_mod = new_svc_module
      @gem_requires.each { |gem_name| svc_mod.require(gem_name) }
      svc_mod.docstring(service_docstring)
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

    def waiters_module
      Generators::WaitersModule.new(waiters: @waiters)
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
