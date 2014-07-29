module Aws

  # @api private
  GEM_ROOT = File.dirname(File.dirname(__FILE__))

  # @api private
  SRC = File.join(GEM_ROOT, 'lib', 'aws')

  @config = {}

  autoload :ClientFactory, "#{SRC}/client_factory"
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
    autoload :DocExample, "#{SRC}/api/doc_example"
    autoload :Documentor, "#{SRC}/api/documentor"
    autoload :Manifest, "#{SRC}/api/manifest"
    autoload :ManifestBuilder, "#{SRC}/api/manifest_builder"
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

    # Adds a plugin to every AWS client class.  This registers the plugin
    # with each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def add_plugin(plugin)
      service_clients.each do |client|
        client.add_plugin(plugin)
      end
    end

    # Removes a plugin to from AWS client class.  This removes the plugin
    # from each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def remove_plugin(plugin)
      service_clients.each do |client|
        client.remove_plugin(plugin)
      end
    end

    # @return [Hash<Symbol,Module>]
    # @api private
    def service_modules
      @service_modules ||= {}
    end

    # @return [Array<Class>]
    # @api private
    def service_clients
      service_modules.map { |_,svc_mod| svc_mod.const_get(:Client) }
    end

    # Registers a new service interface.  This method accepts a constant
    # (class name) for the new service class and map of API
    # versions.
    #
    #     # register a new service & API version
    #     Aws.add_service('S3', {
    #       '2006-03-01' => {
    #          'api' => '/path/to/api.json',
    #          'paginators' => '/path/to/paginators.json',
    #        }
    #     }
    #
    #     # create a versioned client
    #     Aws::S3.new
    #     #=> #<Aws::S3::V20060301>
    #
    # You can register multiple API versions for a service, and
    #
    # @param [String] name The name of the new service class.
    # @param [Hash<YYYY-MM-DD,Hash>] versions A hash of API versions.  Hash
    #   keys are API version dates, and values are hashes of:
    #   * 'api' - path to API defintion
    #   * 'paginators' - path to paginator defintion
    # @return [class<Service>]
    def add_service(name, versions = {})
      identifier = name.to_s.downcase.to_sym
      svc = const_set(name, Service.define(identifier, versions))
      add_helper(identifier, svc)
      svc
    end

    private

    def add_helper(method_name, svc_mod)
      service_modules[method_name] = svc_mod
      define_method(method_name) do |options = {}|
        svc_mod.const_get(:Client).new(options)
      end
      module_function(method_name)
    end

  end

  Api::Manifest.default_manifest.services.each do |service|
    add_service(service.name, service.versions)
  end

end
