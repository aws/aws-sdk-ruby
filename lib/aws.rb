require 'multi_json'

module Aws

  # @api private
  GEM_ROOT = File.dirname(File.dirname(__FILE__))

  # @api private
  SRC = File.join(GEM_ROOT, 'lib', 'aws')

  @config = {}

  @services = {}

  @service_added_callbacks = []

  autoload :Client, "#{SRC}/client"
  autoload :CredentialProviderChain, "#{SRC}/credential_provider_chain"
  autoload :Credentials, "#{SRC}/credentials"
  autoload :EmptyStructure, "#{SRC}/empty_structure"
  autoload :EndpointProvider, "#{SRC}/endpoint_provider"
  autoload :Errors, "#{SRC}/errors"
  autoload :InstanceProfileCredentials, "#{SRC}/instance_profile_credentials"
  autoload :PageableResponse, "#{SRC}/pageable_response"
  autoload :RestBodyHandler, "#{SRC}/rest_body_handler"
  autoload :Service, "#{SRC}/service"
  autoload :SharedCredentials, "#{SRC}/shared_credentials"
  autoload :Structure, "#{SRC}/structure"
  autoload :TreeHash, "#{SRC}/tree_hash"
  autoload :VERSION, "#{SRC}/version"

  # @api private
  module Api
    autoload :Customizer, "#{SRC}/api/customizer"
    autoload :Documenter, "#{SRC}/api/documenter"
    autoload :Manifest, "#{SRC}/api/manifest"
    autoload :ManifestBuilder, "#{SRC}/api/manifest_builder"
    autoload :OperationDocumenter, "#{SRC}/api/operation_documenter"
    autoload :OperationExample, "#{SRC}/api/operation_example"
    autoload :ServiceCustomizations, "#{SRC}/api/service_customizations"
  end

  # @api private
  module Json
    autoload :Builder, "#{SRC}/json/builder"
    autoload :ErrorHandler, "#{SRC}/json/error_handler"
    autoload :Parser, "#{SRC}/json/parser"
    autoload :RestHandler, "#{SRC}/json/rest_handler"
    autoload :RpcBodyHandler, "#{SRC}/json/rpc_body_handler"
    autoload :RpcHeadersHandler, "#{SRC}/json/rpc_headers_handler"
    autoload :SimpleBodyHandler, "#{SRC}/json/simple_body_handler"
  end

  # @api private
  module Paging
    autoload :NullPager, "#{SRC}/paging/null_pager"
    autoload :NullProvider, "#{SRC}/paging/null_provider"
    autoload :Pager, "#{SRC}/paging/pager"
    autoload :Provider, "#{SRC}/paging/provider"
  end

  module Plugins
    autoload :DynamoDBExtendedRetries, "#{SRC}/plugins/dynamodb_extended_retries"
    autoload :DynamoDBSimpleAttributes, "#{SRC}/plugins/dynamodb_simple_attributes"
    autoload :EC2CopyEncryptedSnapshot, "#{SRC}/plugins/ec2_copy_encrypted_snapshot"
    autoload :GlacierAccountId, "#{SRC}/plugins/glacier_account_id"
    autoload :GlacierApiVersion, "#{SRC}/plugins/glacier_api_version"
    autoload :GlacierChecksums, "#{SRC}/plugins/glacier_checksums"
    autoload :GlobalConfiguration, "#{SRC}/plugins/global_configuration"
    autoload :RegionalEndpoint, "#{SRC}/plugins/regional_endpoint"
    autoload :ResponsePaging, "#{SRC}/plugins/response_paging"
    autoload :RequestSigner, "#{SRC}/plugins/request_signer"
    autoload :RetryErrors, "#{SRC}/plugins/retry_errors"
    autoload :Route53IdFix, "#{SRC}/plugins/route_53_id_fix"
    autoload :S3BucketDns, "#{SRC}/plugins/s3_bucket_dns"
    autoload :S3CompleteMultipartUploadFix, "#{SRC}/plugins/s3_complete_multipart_upload_fix"
    autoload :S3Expect100Continue, "#{SRC}/plugins/s3_expect_100_continue"
    autoload :S3GetBucketLocationFix, "#{SRC}/plugins/s3_get_bucket_location_fix"
    autoload :S3LocationConstraint, "#{SRC}/plugins/s3_location_constraint"
    autoload :S3Md5s, "#{SRC}/plugins/s3_md5s"
    autoload :S3Redirects, "#{SRC}/plugins/s3_redirects"
    autoload :S3SseCpk, "#{SRC}/plugins/s3_sse_cpk"
    autoload :SQSQueueUrls, "#{SRC}/plugins/sqs_queue_urls"
    autoload :SWFReadTimeouts, "#{SRC}/plugins/swf_read_timeouts"
    autoload :UserAgent, "#{SRC}/plugins/user_agent"

    module Protocols
      autoload :EC2, "#{SRC}/plugins/protocols/ec2"
      autoload :JsonRpc, "#{SRC}/plugins/protocols/json_rpc"
      autoload :Query, "#{SRC}/plugins/protocols/query"
      autoload :RestJson, "#{SRC}/plugins/protocols/rest_json"
      autoload :RestXml, "#{SRC}/plugins/protocols/rest_xml"
    end

  end

  # @api private
  module Query
    autoload :EC2ParamBuilder, "#{SRC}/query/ec2_param_builder"
    autoload :Handler, "#{SRC}/query/handler"
    autoload :Param, "#{SRC}/query/param"
    autoload :ParamBuilder, "#{SRC}/query/param_builder"
    autoload :ParamList, "#{SRC}/query/param_list"
  end

  # @api private
  module Signers
    autoload :Base, "#{SRC}/signers/base"
    autoload :Handler, "#{SRC}/signers/handler"
    autoload :S3, "#{SRC}/signers/s3"
    autoload :V2, "#{SRC}/signers/v2"
    autoload :V3, "#{SRC}/signers/v3"
    autoload :V4, "#{SRC}/signers/v4"
  end

  # @api private
  module Xml
    autoload :Builder, "#{SRC}/xml/builder"
    autoload :ErrorHandler,  "#{SRC}/xml/error_handler"
    autoload :Parser, "#{SRC}/xml/parser"
    autoload :RestHandler, "#{SRC}/xml/rest_handler"
  end

  class << self

    # @return [Hash] Returns a hash of default configuration options shared
    #   by all constructed clients.
    attr_reader :config

    # @param [Hash] config
    def config=(config)
      if Hash === config
        @config = config
      else
        raise ArgumentError, 'configuration object must be a hash'
      end
    end

    # Applies the plugin to every AWS client class.
    # @param [Seahorse::Client::Plugin] plugin
    # @return [void]
    def add_plugin(plugin)
      client_classes.each do |client_class|
        client_class.add_plugin(plugin)
      end
    end

    # Removes the plugin from every AWS client class.
    # @param [Seahorse::Client::Plugin] plugin
    # @return [void]
    def remove_plugin(plugin)
      client_classes.each do |client_class|
        client_class.remove_plugin(plugin)
      end
    end

    # Yields to the given block for each service that has already been
    # defined via {add_service}. Also yields to the given block for
    # each new service added after the callback is registered.
    # @api private
    def service_added(&block)
      callback = Proc.new
      services.each(&callback)
      @service_added_callbacks << callback
    end

    # @api private
    def services(&block)
      return enum_for(:services) unless block_given?
      @services.each do |svc_name, (svc_module, options)|
        yield(svc_name, svc_module, options)
      end
    end

    # @api private
    def load_json(path)
      path = File.join(GEM_ROOT, path) unless path.match(/^#{File::SEPARATOR}/)
      MultiJson.load(File.open(path, 'r', encoding: 'UTF-8') { |f| f.read })
    end

    # Registers a new service.
    #
    #     Aws.add_service('SvcName',
    #       api: '/path/to/svc.api.json',
    #       paginators: '/path/to/svc.paginators.json',
    #       resources: '/path/to/svc.resources.json')
    #
    #     Aws::SvcName::Client.new
    #     #=> #<Aws::SvcName::Client>
    #
    # @param [String] svc_name The name of the service. This will also be
    #   the namespace under {Aws}.
    # @option options[required,String,Hash,Seahorse::Model::Api] :api
    # @option options[String,Hash,Paging::Provider] :paginators
    # @option options[String] :resources
    # @return [Module<Service>]
    def add_service(svc_name, options = {})
      svc_module = Module.new { extend Service }
      const_set(svc_name, svc_module)
      @services[svc_name] = [svc_module, options]
      @service_added_callbacks.each do |callback|
        callback.call(svc_name, *@services[svc_name])
      end
      svc_module
    end

    private

    def client_classes
      @services.values.map { |svc_module, options| svc_module.const_get(:Client) }
    end

    def api_files
      files = Dir.glob(File.join(GEM_ROOT, 'apis', '*.json'))
      files.each.with_object({}) do |path, services|
        svc_name, type = File.basename(path).split('.')
        services[svc_name] ||= {}
        services[svc_name][type.to_sym] = path
      end
    end

  end

  api_files.each do |service_name, files|
    add_service(service_name, files)
  end

  # build service client classes
  service_added do |name, svc_module, options|
    svc_module.const_set(:Client, Client.define(name, options))
    svc_module.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
  end

  # build service paginators
  service_added do |name, svc_module, options|
    paginators = options[:paginators]
    paginators = case paginators
      when Paging::Provider then paginators
      when Hash then Paging::Provider.new(paginators)
      when String then Paging::Provider.new(Aws.load_json(paginators))
      when nil then Paging::NullProvider.new
      else raise ArgumentError, 'invalid :paginators option'
    end
    svc_module.const_get(:Client).paginators = paginators
  end

  # deprecated = define helper method for client class, this will be
  # replaced eventually with a helper that returns a resource object
  # for the service.
  service_added do |name, svc_module, _|
    method_name = name.downcase.to_sym
    define_singleton_method(method_name) do |options={}|
      unless instance_variable_get("@#{method_name}_warned")
        instance_variable_set("@#{method_name}_warned", true)
        msg = "Aws.#{method_name} is deprecated as of v2.0.0.rc14 and will be "
        msg << "removed as of v2.0.0.0 final; use Aws::#{name}::Client.new{}"
        msg << "instead"
        warn(msg)
      end
      svc_module.const_get(:Client).new(options)
    end
  end

  module DynamoDB
    autoload :AttributeValue, "#{SRC}/dynamodb/attribute_value"
  end

end
