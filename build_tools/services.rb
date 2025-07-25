# frozen_string_literal: true

require 'json'

module BuildTools
  class ServiceEnumerator
    include Enumerable

    MANIFEST_PATH = File.expand_path('../../services.json', __FILE__)

    # Minimum `aws-sdk-core` version for new gem builds
    MINIMUM_CORE_VERSION = "3.228.0"

    # Minimum `aws-sdk-core` version for new S3 gem builds
    MINIMUM_CORE_VERSION_S3 = "3.228.0"

    EVENTSTREAM_PLUGIN = "Aws::Plugins::EventStreamConfiguration"

    # @option options [String] :manifest_path (MANIFEST_PATH)
    def initialize(options = {})
      @manifest_path = options.fetch(:manifest_path, MANIFEST_PATH)
    end

    # @param [String] identifier
    def [](identifier)
      if services.key?(identifier)
        services[identifier]
      else
        raise ArgumentError, "unknown service #{identifier.inspect}"
      end
    end
    alias service []

    def for_service_id(service_id)
      services.values.find do |service|
        service.service_id == service_id
      end
    end

    def each(&block)
      services.values.each(&block)
    end

    def reset
      @services = nil
    end

    private

    def services
      # WARNING: not thread-safe
      @services ||= begin
        manifest.inject({}) do |hash, (name, config)|
          service = build_service(name, config)
          hash[service.identifier] = service
          hash
        end
      end
    end

    def manifest
      JSON.load_file(@manifest_path)
    end

    def build_service(svc_name, config)
      api = load_api(svc_name, config['models'])
      AwsSdkCodeGenerator::Service.new(
        name: svc_name,
        gem_version: gem_version(config['gemName'] || "aws-sdk-#{svc_name.downcase}"),
        gem_name: config['gemName'],
        endpoints_key: config.fetch('partitionsKey', api['metadata']['endpointPrefix']),
        api: api,
        docs: load_docs(svc_name, config['models']),
        paginators: model_path('paginators-1.json', config['models']),
        waiters: model_path('waiters-2.json', config['models']),
        resources: model_path('resources-1.json', config['models']),
        examples: load_examples(svc_name, config['models']),
        smoke_tests: load_smoke(svc_name, config['models']),
        legacy_endpoints: config.fetch('legacyEndpoints', false),
        endpoint_rules: model_path('endpoint-rule-set-1.json', config['models']),
        endpoint_tests: model_path('endpoint-tests-1.json', config['models']),
        gem_dependencies: gem_dependencies(api, config['dependencies'] || {}),
        add_plugins: add_plugins(api, config['addPlugins'] || []),
        remove_plugins: config['removePlugins'] || [],
        deprecated: config['deprecated'],
      )
    end

    def load_api(svc_name, models_dir)
      api = JSON.load_file(model_path('api-2.json', models_dir))
      BuildTools::Customizations.apply_api_customizations(svc_name, api)
      api
    end

    def load_docs(svc_name, models_dir)
      docs = JSON.load_file(model_path('docs-2.json', models_dir))
      BuildTools::Customizations.apply_doc_customizations(svc_name, docs)
      docs
    end

    def load_examples(svc_name, models_dir)
      path = model_path('examples-1.json', models_dir)
      if path
        examples = JSON.load_file(path)
        BuildTools::Customizations.apply_example_customizations(svc_name, examples)
        examples
      else
        nil
      end
    end

    def load_smoke(svc_name, models_dir)
      path = model_path('smoke-2.json', models_dir)
      if path
        smoke = JSON.load_file(path)
        BuildTools::Customizations.apply_smoke_customizations(svc_name, smoke)
        smoke
      else
        nil
      end
    end

    def add_plugins(api, plugins)
      plugins << EVENTSTREAM_PLUGIN if eventstream?(api)
      plugins.inject({}) do |hash, plugin|
        hash[plugin] = plugin_path(plugin)
        hash
      end
    end

    def plugin_path(plugin_name)
      parts = plugin_name.split('::')
      parts = parts.map { |part| AwsSdkCodeGenerator::Underscore.underscore(part) }
      parts.shift
      if parts[0] == 'plugins'
        gem = 'core'
      else
        gem = parts.shift.gsub('_', '')
      end

      gems_dir = File.expand_path('../../gems', __FILE__)
      prefix = %w[sts sso ssooidc].include?(gem) ? ["#{gems_dir}/aws-sdk-core/lib/aws-sdk-#{gem}"] :
        ["#{gems_dir}/aws-sdk-#{gem}/lib/aws-sdk-#{gem}"]
      (prefix + parts).join('/') + '.rb'
    end

    def gem_version(gem_name)
      path = "#{$GEMS_DIR}/#{gem_name}/VERSION"
      if File.exist?(path)
        File.read(path).rstrip
      else
        "1.0.0"
      end
    end

    def gem_dependencies(api, dependencies)
      version_file = File.read("#{$GEMS_DIR}/aws-sdk-core/VERSION").rstrip
      min_core = api['metadata']['serviceId'] == 'S3' ?
                   MINIMUM_CORE_VERSION_S3 :
                   MINIMUM_CORE_VERSION
      core_version_string = "', '>= #{min_core}"
      dependencies['aws-sdk-core'] = "~> #{version_file.split('.')[0]}#{core_version_string}"

      api['metadata'].fetch('auth', []).each do |auth|
        if %w[aws.auth#sigv4 aws.auth#sigv4a].include?(auth)
          dependencies['aws-sigv4'] = '~> 1.5'
        end
      end

      # deprecated auth but a reasonable fallback
      case api['metadata']['signatureVersion']
      when 'v4' then dependencies['aws-sigv4'] ||= '~> 1.1'
      when 'v2' then dependencies['aws-sigv2'] ||= '~> 1.0'
      end
      dependencies
    end

    def model_path(model_name, models_dir)
      path = File.expand_path("../../apis/#{models_dir}/#{model_name}", __FILE__)
      File.exist?(path) ? path : nil
    end

    def eventstream?(api)
      api['shapes'].each do |_, ref|
        return true if ref['eventstream'] || ref['event']
      end
      false
    end
  end

  Services = ServiceEnumerator.new
end
