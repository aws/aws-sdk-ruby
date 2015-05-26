require 'jmespath'
require 'multi_json'
require 'seahorse'

Seahorse::Util.irregular_inflections({
  'ARNs' => 'arns',
  'CNAMEs' => 'cnames',
  'Ec2' => 'ec2',
  'ElastiCache' => 'elasticache',
  'iSCSI' => 'iscsi',
})

module Aws

  # @api private
  API_DIR = File.join(File.dirname(File.dirname(__FILE__)), 'apis')

  # @api private
  # services
  SERVICE_MODULE_NAMES = %w(
    AutoScaling
    CloudFormation
    CloudFront
    CloudHSM
    CloudSearch
    CloudSearchDomain
    CloudTrail
    CloudWatch
    CloudWatchLogs
    CodeDeploy
    CognitoIdentity
    CognitoSync
    ConfigService
    DataPipeline
    DirectConnect
    DirectoryService
    DynamoDB
    EC2
    ECS
    EFS
    ElastiCache
    ElasticBeanstalk
    ElasticLoadBalancing
    ElasticTranscoder
    EMR
    Glacier
    IAM
    ImportExport
    Kinesis
    KMS
    Lambda
    LambdaPreview
    MachineLearning
    OpsWorks
    RDS
    Redshift
    Route53
    Route53Domains
    S3
    SES
    SimpleDB
    SNS
    SQS
    SSM
    StorageGateway
    STS
    Support
    SWF
    WorkSpaces
  )

  @config = {}
  @services = {}
  @service_added_callbacks = []

  SERVICE_MODULE_NAMES.each do |const_name|
    autoload const_name, "aws-sdk-core/#{const_name.downcase}"
  end

  autoload :AssumeRoleCredentials, 'aws-sdk-core/assume_role_credentials'
  autoload :Client, 'aws-sdk-core/client'
  autoload :ClientPaging, 'aws-sdk-core/client_paging'
  autoload :ClientStubs, 'aws-sdk-core/client_stubs'
  autoload :ClientWaiters, 'aws-sdk-core/client_waiters'
  autoload :CredentialProviderChain, 'aws-sdk-core/credential_provider_chain'
  autoload :Credentials, 'aws-sdk-core/credentials'
  autoload :EmptyStructure, 'aws-sdk-core/empty_structure'
  autoload :EndpointProvider, 'aws-sdk-core/endpoint_provider'
  autoload :Errors, 'aws-sdk-core/errors'
  autoload :InstanceProfileCredentials, 'aws-sdk-core/instance_profile_credentials'
  autoload :PageableResponse, 'aws-sdk-core/pageable_response'
  autoload :RestBodyHandler, 'aws-sdk-core/rest_body_handler'
  autoload :RefreshingCredentials, 'aws-sdk-core/refreshing_credentials'
  autoload :Service, 'aws-sdk-core/service'
  autoload :SharedCredentials, 'aws-sdk-core/shared_credentials'
  autoload :Structure, 'aws-sdk-core/structure'
  autoload :TreeHash, 'aws-sdk-core/tree_hash'
  autoload :VERSION, 'aws-sdk-core/version'

  # @api private
  module Api
    autoload :Customizer, 'aws-sdk-core/api/customizer'
    autoload :Documenter, 'aws-sdk-core/api/documenter'
    autoload :Docstrings, 'aws-sdk-core/api/docstrings'
    autoload :Manifest, 'aws-sdk-core/api/manifest'
    autoload :ManifestBuilder, 'aws-sdk-core/api/manifest_builder'
    autoload :OperationDocumenter, 'aws-sdk-core/api/operation_documenter'
    autoload :OperationExample, 'aws-sdk-core/api/operation_example'
    autoload :ServiceCustomizations, 'aws-sdk-core/api/service_customizations'
  end

  # @api private
  module Json
    autoload :Builder, 'aws-sdk-core/json/builder'
    autoload :ErrorHandler, 'aws-sdk-core/json/error_handler'
    autoload :Parser, 'aws-sdk-core/json/parser'
    autoload :RestHandler, 'aws-sdk-core/json/rest_handler'
    autoload :RpcBodyHandler, 'aws-sdk-core/json/rpc_body_handler'
    autoload :RpcHeadersHandler, 'aws-sdk-core/json/rpc_headers_handler'
    autoload :SimpleBodyHandler, 'aws-sdk-core/json/simple_body_handler'
  end

  # @api private
  module Paging
    autoload :NullPager, 'aws-sdk-core/paging/null_pager'
    autoload :NullProvider, 'aws-sdk-core/paging/null_provider'
    autoload :Pager, 'aws-sdk-core/paging/pager'
    autoload :Provider, 'aws-sdk-core/paging/provider'
  end

  module Plugins
    autoload :CSDConditionalSigning, 'aws-sdk-core/plugins/csd_conditional_signing'
    autoload :DynamoDBExtendedRetries, 'aws-sdk-core/plugins/dynamodb_extended_retries'
    autoload :DynamoDBSimpleAttributes, 'aws-sdk-core/plugins/dynamodb_simple_attributes'
    autoload :DynamoDBCRC32Validation, 'aws-sdk-core/plugins/dynamodb_crc32_validation'
    autoload :EC2CopyEncryptedSnapshot, 'aws-sdk-core/plugins/ec2_copy_encrypted_snapshot'
    autoload :GlacierAccountId, 'aws-sdk-core/plugins/glacier_account_id'
    autoload :GlacierApiVersion, 'aws-sdk-core/plugins/glacier_api_version'
    autoload :GlacierChecksums, 'aws-sdk-core/plugins/glacier_checksums'
    autoload :GlobalConfiguration, 'aws-sdk-core/plugins/global_configuration'
    autoload :MachineLearningPredictEndpoint, 'aws-sdk-core/plugins/machine_learning_predict_endpoint'
    autoload :RegionalEndpoint, 'aws-sdk-core/plugins/regional_endpoint'
    autoload :ResponsePaging, 'aws-sdk-core/plugins/response_paging'
    autoload :RequestSigner, 'aws-sdk-core/plugins/request_signer'
    autoload :RetryErrors, 'aws-sdk-core/plugins/retry_errors'
    autoload :Route53IdFix, 'aws-sdk-core/plugins/route_53_id_fix'
    autoload :S3BucketDns, 'aws-sdk-core/plugins/s3_bucket_dns'
    autoload :S3CompleteMultipartUploadFix, 'aws-sdk-core/plugins/s3_complete_multipart_upload_fix'
    autoload :S3Expect100Continue, 'aws-sdk-core/plugins/s3_expect_100_continue'
    autoload :S3GetBucketLocationFix, 'aws-sdk-core/plugins/s3_get_bucket_location_fix'
    autoload :S3LocationConstraint, 'aws-sdk-core/plugins/s3_location_constraint'
    autoload :S3Md5s, 'aws-sdk-core/plugins/s3_md5s'
    autoload :S3Redirects, 'aws-sdk-core/plugins/s3_redirects'
    autoload :S3RequestSigner, 'aws-sdk-core/plugins/s3_request_signer'
    autoload :S3SseCpk, 'aws-sdk-core/plugins/s3_sse_cpk'
    autoload :S3UrlEncodedKeys, 'aws-sdk-core/plugins/s3_url_encoded_keys'
    autoload :SQSQueueUrls, 'aws-sdk-core/plugins/sqs_queue_urls'
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
  module Signers
    autoload :Base, 'aws-sdk-core/signers/base'
    autoload :Handler, 'aws-sdk-core/signers/handler'
    autoload :S3, 'aws-sdk-core/signers/s3'
    autoload :V2, 'aws-sdk-core/signers/v2'
    autoload :V3, 'aws-sdk-core/signers/v3'
    autoload :V4, 'aws-sdk-core/signers/v4'
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
    autoload :ErrorHandler,  'aws-sdk-core/xml/error_handler'
    autoload :Parser, 'aws-sdk-core/xml/parser'
    autoload :RestHandler, 'aws-sdk-core/xml/rest_handler'
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

    # @api private
    def load_json(path)
      Seahorse::Util.load_json(path)
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
    # @option options[String,Pathname,Hash,Paging::Provider,nil] :paginators
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

    # @api private
    def load_all_services
      SERVICE_MODULE_NAMES.each do |const_name|
        const_get(const_name)
      end
    end

  end

  # build service client classes
  service_added do |name, svc_module, options|
    svc_module.const_set(:Client, Client.define(name, options))
    svc_module.const_set(:Errors, Module.new { extend Errors::DynamicErrors })
  end

end
