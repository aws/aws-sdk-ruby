module Aws

  # @api private
  GEM_ROOT = File.dirname(File.dirname(__FILE__))

  # @api private
  SRC = GEM_ROOT + '/lib/aws'

  @config = {}

  autoload :Credentials, "#{SRC}/credentials"
  autoload :Errors, "#{SRC}/errors"
  autoload :ErrorHandler, "#{SRC}/error_handler"
  autoload :InstanceProfileCredentials, "#{SRC}/instance_profile_credentials"
  autoload :RequestHandler, "#{SRC}/request_handler"
  autoload :ResponseHandler, "#{SRC}/response_handler"
  autoload :ResponsePager, "#{SRC}/response_pager"
  autoload :Service, "#{SRC}/service"
  autoload :Structure, "#{SRC}/structure"
  autoload :TimestampFormatter, "#{SRC}/timestamp_formatter"
  autoload :Util, "#{SRC}/util"
  autoload :VERSION, "#{SRC}/version"

  # @api private
  module Api
    autoload :BaseTranslator, "#{SRC}/api/base_translator"
    autoload :Documentor, "#{SRC}/api/documentor"
    autoload :DocExample, "#{SRC}/api/doc_example"
    autoload :InputShapeTranslator, "#{SRC}/api/shape_translator"
    autoload :OperationTranslator, "#{SRC}/api/operation_translator"
    autoload :OutputShapeTranslator, "#{SRC}/api/shape_translator"
    autoload :PaginationTranslator, "#{SRC}/api/pagination_translator"
    autoload :ServiceNamer, "#{SRC}/api/service_namer"
    autoload :ShapeTranslator, "#{SRC}/api/shape_translator"
    autoload :Translator, "#{SRC}/api/translator"
    autoload :Visitor, "#{SRC}/api/visitor"

    module ServiceTranslators
      autoload :CloudFront, "#{SRC}/api/service_translators/cloud_front"
      autoload :DynamoDB, "#{SRC}/api/service_translators/dynamo_db"
      autoload :Glacier, "#{SRC}/api/service_translators/glacier"
      autoload :ImportExport, "#{SRC}/api/service_translators/import_export"
      autoload :Route53, "#{SRC}/api/service_translators/route53"
      autoload :S3, "#{SRC}/api/service_translators/s3"
      autoload :SQS, "#{SRC}/api/service_translators/sqs"
      autoload :SWF, "#{SRC}/api/service_translators/swf"
    end

  end

  # @api private
  module Json
    autoload :Builder, "#{SRC}/json/builder"
    autoload :ErrorParser, "#{SRC}/json/error_parser"
    autoload :Parser, "#{SRC}/json/parser"
    autoload :Serializer, "#{SRC}/json/serializer"
  end

  module Plugins
    autoload :Credentials, "#{SRC}/plugins/credentials"
    autoload :DynamoDBExtendedRetries, "#{SRC}/plugins/dynamodb_extended_retries"
    autoload :GlacierAccountId, "#{SRC}/plugins/glacier_account_id"
    autoload :GlacierApiVersion, "#{SRC}/plugins/glacier_api_version"
    autoload :GlacierChecksums, "#{SRC}/plugins/glacier_checksums"
    autoload :GlobalConfiguration, "#{SRC}/plugins/global_configuration"
    autoload :InstanceProfileCredentials, "#{SRC}/plugins/instance_profile_credentials"
    autoload :JsonProtocol, "#{SRC}/plugins/json_protocol"
    autoload :JsonRpcHeaders, "#{SRC}/plugins/json_rpc_headers"
    autoload :QueryProtocol, "#{SRC}/plugins/query_protocol"
    autoload :RegionalEndpoint, "#{SRC}/plugins/regional_endpoint"
    autoload :RetryErrors, "#{SRC}/plugins/retry_errors"
    autoload :S3BucketDns, "#{SRC}/plugins/s3_bucket_dns"
    autoload :S3CompleteMultipartUploadFix, "#{SRC}/plugins/s3_complete_multipart_upload_fix"
    autoload :S3GetBucketLocationFix, "#{SRC}/plugins/s3_get_bucket_location_fix"
    autoload :S3Md5s, "#{SRC}/plugins/s3_md5s"
    autoload :S3Redirects, "#{SRC}/plugins/s3_redirects"
    autoload :S3Signer, "#{SRC}/plugins/s3_signer"
    autoload :SignatureV2, "#{SRC}/plugins/signature_v2"
    autoload :SignatureV3, "#{SRC}/plugins/signature_v3"
    autoload :SignatureV4, "#{SRC}/plugins/signature_v4"
    autoload :SQSQueueUrls, "#{SRC}/plugins/sqs_queue_urls"
    autoload :SWFReadTimeouts, "#{SRC}/plugins/swf_read_timeouts"
    autoload :UserAgent, "#{SRC}/plugins/user_agent"
    autoload :XmlProtocol, "#{SRC}/plugins/xml_protocol"
  end

  # @api private
  module Query
    autoload :Builder, "#{SRC}/query/builder"
    autoload :Param, "#{SRC}/query/param"
    autoload :ParamList, "#{SRC}/query/param_list"
    autoload :Serializer, "#{SRC}/query/serializer"
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
    autoload :ErrorParser,  "#{SRC}/xml/error_parser"
    autoload :Parser, "#{SRC}/xml/parser"
    autoload :Serializer, "#{SRC}/xml/serializer"
  end

  class << self

    # @return [Hash] Returns a hash of default configuration options shared
    #   by all constructed clients.
    attr_accessor :config

    # Adds a plugin to every AWS client class.  This registers the plugin
    # with each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def add_plugin(plugin)
      service_classes.values.each do |svc_class|
        svc_class.add_plugin(plugin)
      end
    end

    # Removes a plugin to from AWS client class.  This removes the plugin
    # from each versioned client for each service.
    # @param [Plugin] plugin
    # @return [void]
    def remove_plugin(plugin)
      service_classes.values.each do |svc_class|
        svc_class.remove_plugin(plugin)
      end
    end

    # @return [Array<Class>]
    # @api private
    def service_classes
      @service_classes ||= {}
    end

    # Registers a new service interface.  This method accepts a constant
    # (class name) for the new service class and a list of client API
    # versions.
    #
    #     Aws.add_servcie(:S3, ['apis/S3-2006-03-01.json'])
    #
    # This method is called for each service defined in the apis directory of
    # this project.
    #
    # @note You should normally not need to call this method directly.
    #
    # @param [Symbol] name The name of the new service class.
    # @param [Array<String, Seahorse::Model::Api>] apis
    # @return [Class<Service>]
    def add_service(name, apis = [])
      svc_class = const_set(name, Service.define(name.downcase.to_sym, apis))
      service_classes[svc_class.identifier] = svc_class
      self.class.send(:define_method, svc_class.identifier) do |options = {}|
        svc_class.new(options)
      end
      svc_class
    end

    private

    # @return Returns a hash of API paths grouped by their service class names.
    def bundled_apis
      Dir.glob(File.join(GEM_ROOT, 'apis', '*.json')).group_by do |path|
        File.basename(path).split('-').first
      end
    end

  end

  bundled_apis.each do |svc_class_name, api_versions|
    add_service(svc_class_name, api_versions)
  end

end
