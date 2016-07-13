require 'jmespath'
require 'seahorse'

Seahorse::Util.irregular_inflections({
  'ARNs' => 'arns',
  'CNAMEs' => 'cnames',
  'Ec2' => 'ec2',
  'ElastiCache' => 'elasticache',
  'iSCSI' => 'iscsi',
  'ACLs' => 'acls',
  #'SSEKMS' => 'sse_kms',
})

module Aws

  # @api private
  API_DIR = File.join(File.dirname(File.dirname(__FILE__)), 'apis')

  # @api private
  # services
  SERVICE_MODULE_NAMES = %w(
    ACM
    APIGateway
    ApplicationAutoScaling
    ApplicationDiscoveryService
    AutoScaling
    CloudFormation
    CloudFront
    CloudHSM
    CloudSearch
    CloudSearchDomain
    CloudTrail
    CloudWatch
    CloudWatchEvents
    CloudWatchLogs
    CodeCommit
    CodeDeploy
    CodePipeline
    CognitoIdentity
    CognitoIdentityProvider
    CognitoSync
    ConfigService
    DatabaseMigrationService
    DataPipeline
    DeviceFarm
    DirectConnect
    DirectoryService
    DynamoDB
    DynamoDBStreams
    EC2
    ECR
    ECS
    EFS
    ElastiCache
    ElasticBeanstalk
    ElasticLoadBalancing
    ElasticsearchService
    ElasticTranscoder
    EMR
    Firehose
    GameLift
    Glacier
    IAM
    ImportExport
    Inspector
    IoT
    IoTDataPlane
    Kinesis
    KMS
    Lambda
    LambdaPreview
    MachineLearning
    MarketplaceCommerceAnalytics
    MarketplaceMetering
    OpsWorks
    RDS
    Redshift
    Route53
    Route53Domains
    S3
    ServiceCatalog
    SES
    SimpleDB
    SNS
    SQS
    SSM
    StorageGateway
    STS
    Support
    SWF
    WAF
    WorkSpaces
  )

  @config = {}
  @services = {}
  @service_added_callbacks = []

  SERVICE_MODULE_NAMES.each do |const_name|
    autoload const_name, "aws-sdk-core/#{const_name.downcase}"
  end

  autoload :AssumeRoleCredentials, 'aws-sdk-core/assume_role_credentials'
  autoload :Checksums, 'aws-sdk-core/checksums'
  autoload :Client, 'aws-sdk-core/client'
  autoload :ClientStubs, 'aws-sdk-core/client_stubs'
  autoload :ClientWaiters, 'aws-sdk-core/client_waiters'
  autoload :CredentialProvider, 'aws-sdk-core/credential_provider'
  autoload :CredentialProviderChain, 'aws-sdk-core/credential_provider_chain'
  autoload :Credentials, 'aws-sdk-core/credentials'
  autoload :Deprecations, 'aws-sdk-core/deprecations'
  autoload :EagerLoader, 'aws-sdk-core/eager_loader'
  autoload :ECSCredentials, 'aws-sdk-core/ecs_credentials'
  autoload :EmptyStructure, 'aws-sdk-core/empty_structure'
  autoload :EndpointProvider, 'aws-sdk-core/endpoint_provider'
  autoload :Errors, 'aws-sdk-core/errors'
  autoload :InstanceProfileCredentials, 'aws-sdk-core/instance_profile_credentials'
  autoload :Json, 'aws-sdk-core/json'
  autoload :PageableResponse, 'aws-sdk-core/pageable_response'
  autoload :Pager, 'aws-sdk-core/pager'
  autoload :ParamConverter, 'aws-sdk-core/param_converter'
  autoload :ParamValidator, 'aws-sdk-core/param_validator'
  autoload :Partitions, 'aws-sdk-core/partitions'
  autoload :RefreshingCredentials, 'aws-sdk-core/refreshing_credentials'
  autoload :Service, 'aws-sdk-core/service'
  autoload :SharedCredentials, 'aws-sdk-core/shared_credentials'
  autoload :Structure, 'aws-sdk-core/structure'
  autoload :TreeHash, 'aws-sdk-core/tree_hash'
  autoload :TypeBuilder, 'aws-sdk-core/type_builder'
  autoload :VERSION, 'aws-sdk-core/version'

  # @api private
  module Api
    autoload :Builder, 'aws-sdk-core/api/builder'
    autoload :Customizations, 'aws-sdk-core/api/customizations'
    autoload :ShapeMap, 'aws-sdk-core/api/shape_map'
    module Docs
      autoload :Builder, 'aws-sdk-core/api/docs/builder'
      autoload :ClientTypeDocumenter, 'aws-sdk-core/api/docs/client_type_documenter'
      autoload :DocstringProvider, 'aws-sdk-core/api/docs/docstring_provider'
      autoload :NullDocstringProvider, 'aws-sdk-core/api/docs/docstring_provider'
      autoload :OperationDocumenter, 'aws-sdk-core/api/docs/operation_documenter'
      autoload :ParamFormatter, 'aws-sdk-core/api/docs/param_formatter'
      autoload :RequestSyntaxExample, 'aws-sdk-core/api/docs/request_syntax_example'
      autoload :ResponseStructureExample, 'aws-sdk-core/api/docs/response_structure_example'
      autoload :SharedExample, 'aws-sdk-core/api/docs/shared_example'
      autoload :Utils, 'aws-sdk-core/api/docs/utils'
    end
  end

  module Log
    autoload :Formatter, 'aws-sdk-core/log/formatter'
    autoload :ParamFilter, 'aws-sdk-core/log/param_filter'
    autoload :ParamFormatter, 'aws-sdk-core/log/param_formatter'
  end

  module Plugins
    autoload :APIGatewayHeader, 'aws-sdk-core/plugins/api_gateway_header'
    autoload :CSDConditionalSigning, 'aws-sdk-core/plugins/csd_conditional_signing'
    autoload :DynamoDBExtendedRetries, 'aws-sdk-core/plugins/dynamodb_extended_retries'
    autoload :DynamoDBSimpleAttributes, 'aws-sdk-core/plugins/dynamodb_simple_attributes'
    autoload :DynamoDBCRC32Validation, 'aws-sdk-core/plugins/dynamodb_crc32_validation'
    autoload :EC2CopyEncryptedSnapshot, 'aws-sdk-core/plugins/ec2_copy_encrypted_snapshot'
    autoload :EC2RegionValidation, 'aws-sdk-core/plugins/ec2_region_validation'
    autoload :GlacierAccountId, 'aws-sdk-core/plugins/glacier_account_id'
    autoload :GlacierApiVersion, 'aws-sdk-core/plugins/glacier_api_version'
    autoload :GlacierChecksums, 'aws-sdk-core/plugins/glacier_checksums'
    autoload :GlobalConfiguration, 'aws-sdk-core/plugins/global_configuration'
    autoload :Logging, 'aws-sdk-core/plugins/logging'
    autoload :MachineLearningPredictEndpoint, 'aws-sdk-core/plugins/machine_learning_predict_endpoint'
    autoload :ParamConverter, 'aws-sdk-core/plugins/param_converter'
    autoload :ParamValidator, 'aws-sdk-core/plugins/param_validator'
    autoload :RegionalEndpoint, 'aws-sdk-core/plugins/regional_endpoint'
    autoload :ResponsePaging, 'aws-sdk-core/plugins/response_paging'
    autoload :RequestSigner, 'aws-sdk-core/plugins/request_signer'
    autoload :RetryErrors, 'aws-sdk-core/plugins/retry_errors'
    autoload :Route53IdFix, 'aws-sdk-core/plugins/route_53_id_fix'
    autoload :S3Accelerate, 'aws-sdk-core/plugins/s3_accelerate'
    autoload :S3BucketDns, 'aws-sdk-core/plugins/s3_bucket_dns'
    autoload :S3BucketNameRestrictions, 'aws-sdk-core/plugins/s3_bucket_name_restrictions'
    autoload :S3Expect100Continue, 'aws-sdk-core/plugins/s3_expect_100_continue'
    autoload :S3GetBucketLocationFix, 'aws-sdk-core/plugins/s3_get_bucket_location_fix'
    autoload :S3Http200Errors, 'aws-sdk-core/plugins/s3_http_200_errors'
    autoload :S3LocationConstraint, 'aws-sdk-core/plugins/s3_location_constraint'
    autoload :S3Md5s, 'aws-sdk-core/plugins/s3_md5s'
    autoload :S3Redirects, 'aws-sdk-core/plugins/s3_redirects'
    autoload :S3RequestSigner, 'aws-sdk-core/plugins/s3_request_signer'
    autoload :S3SseCpk, 'aws-sdk-core/plugins/s3_sse_cpk'
    autoload :S3UrlEncodedKeys, 'aws-sdk-core/plugins/s3_url_encoded_keys'
    autoload :SQSQueueUrls, 'aws-sdk-core/plugins/sqs_queue_urls'
    autoload :SQSMd5s, 'aws-sdk-core/plugins/sqs_md5s'
    autoload :StubResponses, 'aws-sdk-core/plugins/stub_responses'
    autoload :SWFReadTimeouts, 'aws-sdk-core/plugins/swf_read_timeouts'
    autoload :UserAgent, 'aws-sdk-core/plugins/user_agent'

    module Protocols
      autoload :EC2, 'aws-sdk-core/plugins/protocols/ec2'
      autoload :JsonRpc, 'aws-sdk-core/plugins/protocols/json_rpc'
      autoload :Query, 'aws-sdk-core/plugins/protocols/query'
      autoload :RestJson, 'aws-sdk-core/plugins/protocols/rest_json'
      autoload :RestXml, 'aws-sdk-core/plugins/protocols/rest_xml'
    end

  end

  # @api private
  module Query
    autoload :EC2ParamBuilder, 'aws-sdk-core/query/ec2_param_builder'
    autoload :Handler, 'aws-sdk-core/query/handler'
    autoload :Param, 'aws-sdk-core/query/param'
    autoload :ParamBuilder, 'aws-sdk-core/query/param_builder'
    autoload :ParamList, 'aws-sdk-core/query/param_list'
  end

  # @api private
  module Rest
    autoload :Handler, 'aws-sdk-core/rest/handler'
    module Request
      autoload :Body, 'aws-sdk-core/rest/request/body'
      autoload :Builder, 'aws-sdk-core/rest/request/builder'
      autoload :Endpoint, 'aws-sdk-core/rest/request/endpoint'
      autoload :Headers, 'aws-sdk-core/rest/request/headers'
    end
    module Response
      autoload :Body, 'aws-sdk-core/rest/response/body'
      autoload :Headers, 'aws-sdk-core/rest/response/headers'
      autoload :Parser, 'aws-sdk-core/rest/response/parser'
      autoload :StatusCode, 'aws-sdk-core/rest/response/status_code'
    end
  end

  # @api private
  module Signers
    autoload :Base, 'aws-sdk-core/signers/base'
    autoload :S3, 'aws-sdk-core/signers/s3'
    autoload :V2, 'aws-sdk-core/signers/v2'
    autoload :V3, 'aws-sdk-core/signers/v3'
    autoload :V4, 'aws-sdk-core/signers/v4'
  end

  # @api private
  module Stubbing
    autoload :EmptyStub, 'aws-sdk-core/stubbing/empty_stub'
    autoload :DataApplicator, 'aws-sdk-core/stubbing/data_applicator'
    autoload :StubData, 'aws-sdk-core/stubbing/stub_data'
    autoload :XmlError, 'aws-sdk-core/stubbing/xml_error'
    module Protocols
      autoload :EC2, 'aws-sdk-core/stubbing/protocols/ec2'
      autoload :Json, 'aws-sdk-core/stubbing/protocols/json'
      autoload :Query, 'aws-sdk-core/stubbing/protocols/query'
      autoload :Rest, 'aws-sdk-core/stubbing/protocols/rest'
      autoload :RestJson, 'aws-sdk-core/stubbing/protocols/rest_json'
      autoload :RestXml, 'aws-sdk-core/stubbing/protocols/rest_xml'
    end
  end

  module Waiters
    autoload :Poller, 'aws-sdk-core/waiters/poller'
    autoload :Errors, 'aws-sdk-core/waiters/errors'
    autoload :NullProvider, 'aws-sdk-core/waiters/null_provider'
    autoload :Provider, 'aws-sdk-core/waiters/provider'
    autoload :Waiter, 'aws-sdk-core/waiters/waiter'
  end

  # @api private
  module Xml
    autoload :Builder, 'aws-sdk-core/xml/builder'
    autoload :DefaultList,  'aws-sdk-core/xml/default_list'
    autoload :DefaultMap,  'aws-sdk-core/xml/default_map'
    autoload :DocBuilder, 'aws-sdk-core/xml/doc_builder'
    autoload :ErrorHandler,  'aws-sdk-core/xml/error_handler'
    autoload :Parser, 'aws-sdk-core/xml/parser'
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

    # Return the partition with the given name. A partition describes
    # the services and regions available in that partition.
    #
    #     aws = Aws.partition('aws')
    #
    #     puts "Regions available in the aws partition:\n"
    #     aws.regions.each do |region|
    #       puts region.name
    #     end
    #
    #     puts "Services available in the aws partition:\n"
    #     aws.services.each do |services|
    #       puts services.name
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @param [String] partition_name The name of the partition to return.
    #   Valid names include "aws", "aws-cn", and "aws-us-gov".
    #
    # @return [Partitions::Partition]
    #
    # @raise [ArgumentError] Raises an `ArgumentError` if a partition is
    #   not found with the given name. The error message contains a list
    #   of valid partition names.
    def partition(partition_name)
      Partitions.default_list.partition(partition_name)
    end

    # Return an array of partitions. A partition describes
    # the services and regions available in that partition.
    #
    #     Aws.partitions.each do |partition|
    #
    #       puts "Regions available in #{partition.name}:\n"
    #       partition.regions.each do |region|
    #         puts region.name
    #       end
    #
    #       puts "Services available in #{partition.name}:\n"
    #       partition.services.each do |service|
    #         puts service.name
    #       end
    #     end
    #
    # See {Partitions} for more information and examples.
    #
    # @return [Array<Partitions::Partition>] Returns an array of all
    #   known partitions.
    def partitions
      Partitions.default_list.partitions
    end

    # The SDK ships with a ca certificate bundle to use when verifying SSL
    # peer certificates. By default, this cert bundle is *NOT* used. The
    # SDK will rely on the default cert available to OpenSSL. This ensures
    # the cert provided by your OS is used.
    #
    # For cases where the default cert is unavailable, e.g. Windows, you
    # can call this method.
    #
    #     Aws.use_bundled_cert!
    #
    # @return [String] Returns the path to the bundled cert.
    def use_bundled_cert!
      config.delete(:ssl_ca_directory)
      config.delete(:ssl_ca_store)
      config[:ssl_ca_bundle] = File.expand_path(File.join(
        File.dirname(__FILE__),
        '..',
        'ca-bundle.crt'
      ))
    end

    # Loads modules that are normally loaded with Ruby's `autoload`.
    # This can avoid thread-safety issues that some Ruby versions have
    # with `autoload`.
    #
    #     # loads ALL services
    #     Aws.eager_autoload!
    #
    # Loading all services can be slow. You can specify what services you
    # want to load with the `:services` option. All services not named
    # will continue to autoload as normal.
    #
    #     Aws.eager_autoload!(services: %w(S3 EC2))
    #
    # @return [void]
    def eager_autoload!(options = {})
      eager_loader = EagerLoader.new
      eager_loader.load(JMESPath)
      eager_loader.load(Seahorse)
      sub_modules(options).each do |module_or_class|
        eager_loader.load(module_or_class)
      end
      eager_loader
    end

    def sub_modules(options = {})
      constants = Aws.constants.map(&:to_s)
      if options[:services]
        constants -= SERVICE_MODULE_NAMES
        constants += options[:services] || SERVICE_MODULE_NAMES
      end
      constants.inject([]) do |modules, const_name|
        constant = Aws.const_get(const_name)
        modules << constant if Module === constant
        modules
      end
    end

    # Yields to the given block for each service that has already been
    # defined via {add_service}. Also yields to the given block for
    # each new service added after the callback is registered.
    # @api private
    def service_added(&block)
      callback = Proc.new
      @services.each do |svc_name, (svc_module, options)|
        yield(svc_name, svc_module, options)
      end
      @service_added_callbacks << callback
    end

    # Registers a new service.
    #
    #     Aws.add_service('SvcName',
    #       api: '/path/to/svc.api.json',
    #       paginators: '/path/to/svc.paginators.json',
    #       waiters: '/path/to/svc.waiters.json',
    #       resources: '/path/to/svc.resources.json')
    #
    #     Aws::SvcName::Client.new
    #     #=> #<Aws::SvcName::Client>
    #
    # @param [String] svc_name The name of the service. This will also be
    #   the namespace under {Aws}. This must be a valid constant name.
    # @option options[String,Pathname,Hash,Seahorse::Model::Api,nil] :api
    # @option options[String,Pathname,Hash,nil] :paginators
    # @option options[String,Pathname,Hash,Waiters::Provider,nil] :waiters
    # @option options[String,Pathname,Hash,Resources::Definition,nil] :resources
    # @return [Module<Service>] Returns the new service module.
    def add_service(svc_name, options = {})
      svc_module = Module.new { extend Service }
      const_set(svc_name, svc_module)
      @services[svc_name] = [svc_module, options]
      @service_added_callbacks.each do |callback|
        callback.call(svc_name.to_s, *@services[svc_name])
      end
      svc_module
    end

  end

  # build service client classes
  service_added do |name, svc_module, options|
    options[:type_builder] ||= TypeBuilder.new(svc_module)
    svc_module.const_set(:Client, Client.define(name, options))
    svc_module.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
  end

  # enable response paging
  service_added do |name, svc_module, options|
    if paginators = options[:paginators]
      paginators = Json.load_file(paginators) unless Hash === paginators
      svc_module::Client.api.operations.each do |_, operation|
        if rules = paginators['pagination'][operation.name]
          operation[:pager] = Pager.new(rules)
        end
      end
    end
  end

  # add shared client examples
  service_added do |name, svc_module, options|
    if ENV['DOCSTRINGS'] && options[:examples]
      json = Json.load_file(options[:examples])
      json['examples'].each_pair do |operation_name, examples|
        operation_name = Seahorse::Util.underscore(operation_name)
        operation = svc_module::Client.api.operation(operation_name)
        operation['examples'] = examples
      end
    end
  end

end
