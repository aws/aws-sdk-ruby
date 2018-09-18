# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:databasemigrationservice)

module Aws::DatabaseMigrationService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :databasemigrationservice

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds metadata tags to an AWS DMS resource, including replication
    # instance, endpoint, security group, and migration task. These tags can
    # also be used with cost allocation reporting to track cost associated
    # with DMS resources, or used in a Condition statement in an IAM policy
    # for DMS.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to
    #   be added to. AWS DMS resources include a replication instance,
    #   endpoint, and a replication task.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag to be assigned to the DMS resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Add tags to resource
    #
    #   # Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task.
    #   # These tags can also be used with cost allocation reporting to track cost associated with AWS DMS resources, or used in a
    #   # Condition statement in an IAM policy for AWS DMS.
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", # Required. Use the ARN of the resource you want to tag.
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "1633456", 
    #       }, 
    #     ], # Required. Use the Key/Value pair format.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Creates an endpoint using the provided settings.
    #
    # @option params [required, String] :endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and must
    #   not end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :endpoint_type
    #   The type of endpoint.
    #
    # @option params [required, String] :engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb,
    #   mongodb, and sqlserver.
    #
    # @option params [String] :username
    #   The user name to be used to login to the endpoint database.
    #
    # @option params [String] :password
    #   The password to be used to login to the endpoint database.
    #
    # @option params [String] :server_name
    #   The name of the server where the endpoint database resides.
    #
    # @option params [Integer] :port
    #   The port used by the endpoint database.
    #
    # @option params [String] :database_name
    #   The name of the endpoint database.
    #
    # @option params [String] :extra_connection_attributes
    #   Additional attributes associated with the connection.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier that will be used to encrypt the connection
    #   parameters. If you do not specify a value for the KmsKeyId parameter,
    #   then AWS DMS will use your default encryption key. AWS KMS creates the
    #   default encryption key for your AWS account. Your AWS account has a
    #   different default encryption key for each AWS region.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be added to the endpoint.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #
    # @option params [String] :ssl_mode
    #   The SSL mode to use for the SSL connection.
    #
    #   SSL mode can be one of four values: none, require, verify-ca,
    #   verify-full.
    #
    #   The default value is none.
    #
    # @option params [String] :service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role you want to
    #   use to create the endpoint.
    #
    # @option params [String] :external_table_definition
    #   The external table definition.
    #
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   more information about the available settings, see the **Using Object
    #   Mapping to Migrate Data to DynamoDB** section at [ Using an Amazon
    #   DynamoDB Database as a Target for AWS Database Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #
    # @option params [Types::S3Settings] :s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see the **Extra Connection
    #   Attributes** section at [ Using Amazon S3 as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
    #
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   The settings in JSON format for the DMS Transfer type source endpoint.
    #
    #   Attributes include:
    #
    #   * serviceAccessRoleArn - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * bucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress the
    #     target files. Set to NONE (the default) or do not use to leave the
    #     files uncompressed.
    #
    #   Shorthand syntax: ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string
    #
    #   JSON syntax:
    #
    #   \\\{ "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"\|"gzip" \\}
    #
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the **Configuration
    #   Properties When Using MongoDB as a Source for AWS Database Migration
    #   Service** section at [ Using MongoDB as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #
    # @return [Types::CreateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Create endpoint
    #
    #   # Creates an endpoint using the provided settings.
    #
    #   resp = client.create_endpoint({
    #     certificate_arn: "", 
    #     database_name: "testdb", 
    #     endpoint_identifier: "test-endpoint-1", 
    #     endpoint_type: "source", 
    #     engine_name: "mysql", 
    #     extra_connection_attributes: "", 
    #     kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #     password: "pasword", 
    #     port: 3306, 
    #     server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #     ssl_mode: "require", 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "143327655", 
    #       }, 
    #     ], 
    #     username: "username", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #       endpoint_identifier: "test-endpoint-1", 
    #       endpoint_type: "source", 
    #       engine_name: "mysql", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       port: 3306, 
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #       status: "active", 
    #       username: "username", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     endpoint_identifier: "String", # required
    #     endpoint_type: "source", # required, accepts source, target
    #     engine_name: "String", # required
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     certificate_arn: "String",
    #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none", # accepts none, gzip
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String",
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no", # accepts no, password
    #       auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #       nesting_level: "none", # accepts none, one
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Creates an AWS DMS event notification subscription.
    #
    # You can specify the type of source (`SourceType`) you want to be
    # notified of, provide a list of AWS DMS source IDs (`SourceIds`) that
    # triggers the events, and provide a list of event categories
    # (`EventCategories`) for events you want to be notified of. If you
    # specify both the `SourceType` and `SourceIds`, such as `SourceType =
    # replication-instance` and `SourceIdentifier = my-replinstance`, you
    # will be notified of all the replication instance events for the
    # specified source. If you specify a `SourceType` but don't specify a
    # `SourceIdentifier`, you receive notice of the events for that source
    # type for all your AWS DMS sources. If you don't specify either
    # `SourceType` nor `SourceIdentifier`, you will be notified of events
    # generated from all AWS DMS sources belonging to your customer account.
    #
    # For more information about AWS DMS events, see [ Working with Events
    # and Notifications ][1] in the AWS Database MIgration Service User
    # Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [required, String] :subscription_name
    #   The name of the AWS DMS event notification subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates the events. For example,
    #   if you want to be notified of events generated by a replication
    #   instance, you set this parameter to `replication-instance`. If this
    #   value is not specified, all events are returned.
    #
    #   Valid values: replication-instance \| migration-task
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. You can see a list of the categories for a given source
    #   type by calling the **DescribeEventCategories** action or in the topic
    #   [ Working with Events and Notifications][1] in the AWS Database
    #   Migration Service User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events will be
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens; it cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription, or set
    #   to **false** to create the subscription but not activate it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A tag to be attached to the event subscription.
    #
    # @return [Types::CreateEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # Creates the replication instance using the specified parameters.
    #
    # @option params [required, String] :replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `myrepinstance`
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage (in gigabytes) to be initially allocated for the
    #   replication instance.
    #
    # @option params [required, String] :replication_instance_class
    #   The compute and memory capacity of the replication instance as
    #   specified by the replication instance class.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing the
    #   replication instance.
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone that the replication instance will be
    #   created in.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   region.
    #
    #   Example: `us-east-1d`
    #
    # @option params [String] :replication_subnet_group_identifier
    #   A subnet group to associate with the replication instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region, occurring on a random day of the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter
    #   is set to `true`.
    #
    # @option params [String] :engine_version
    #   The engine version number of the replication instance.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades will be applied automatically to
    #   the replication instance during the maintenance window.
    #
    #   Default: `true`
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be associated with the replication instance.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier that will be used to encrypt the content on the
    #   replication instance. If you do not specify a value for the KmsKeyId
    #   parameter, then AWS DMS will use your default encryption key. AWS KMS
    #   creates the default encryption key for your AWS account. Your AWS
    #   account has a different default encryption key for each AWS region.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the replication instance. A
    #   value of `true` represents an instance with a public IP address. A
    #   value of `false` represents an instance with a private IP address. The
    #   default value is `true`.
    #
    # @return [Types::CreateReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Create replication instance
    #
    #   # Creates the replication instance using the specified parameters.
    #
    #   resp = client.create_replication_instance({
    #     allocated_storage: 123, 
    #     auto_minor_version_upgrade: true, 
    #     availability_zone: "", 
    #     engine_version: "", 
    #     kms_key_id: "", 
    #     multi_az: true, 
    #     preferred_maintenance_window: "", 
    #     publicly_accessible: true, 
    #     replication_instance_class: "", 
    #     replication_instance_identifier: "", 
    #     replication_subnet_group_identifier: "", 
    #     tags: [
    #       {
    #         key: "string", 
    #         value: "string", 
    #       }, 
    #     ], 
    #     vpc_security_group_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "creating", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_instance({
    #     replication_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     replication_instance_class: "String", # required
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     replication_subnet_group_identifier: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     publicly_accessible: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationInstance AWS API Documentation
    #
    # @overload create_replication_instance(params = {})
    # @param [Hash] params ({})
    def create_replication_instance(params = {}, options = {})
      req = build_request(:create_replication_instance, params)
      req.send_request(options)
    end

    # Creates a replication subnet group given a list of the subnet IDs in a
    # VPC.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The name for the replication subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, spaces, underscores, or hyphens. Must not be "default".
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :replication_subnet_group_description
    #   The description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The EC2 subnet IDs for the subnet group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag to be assigned to the subnet group.
    #
    # @return [Types::CreateReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationSubnetGroupResponse#replication_subnet_group #replication_subnet_group} => Types::ReplicationSubnetGroup
    #
    #
    # @example Example: Create replication subnet group
    #
    #   # Creates a replication subnet group given a list of the subnet IDs in a VPC.
    #
    #   resp = client.create_replication_subnet_group({
    #     replication_subnet_group_description: "US West subnet group", 
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366", 
    #     subnet_ids: [
    #       "subnet-e145356n", 
    #       "subnet-58f79200", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "145235", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_subnet_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_subnet_group.vpc_id #=> String
    #   resp.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_subnet_group.subnets #=> Array
    #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroup AWS API Documentation
    #
    # @overload create_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_replication_subnet_group(params = {}, options = {})
      req = build_request(:create_replication_subnet_group, params)
      req.send_request(options)
    end

    # Creates a replication task using the specified parameters.
    #
    # @option params [required, String] :replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :source_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [required, String] :target_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [required, String] :migration_type
    #   The migration type.
    #
    # @option params [required, String] :table_mappings
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with "file://".
    #   When working with the DMS API, provide the JSON as the parameter
    #   value.
    #
    #   For example, --table-mappings file://mappingfile.json
    #
    # @option params [String] :replication_task_settings
    #   Settings for the task, such as target metadata settings. For a
    #   complete list of task settings, see [Task Settings for AWS Database
    #   Migration Service Tasks][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be added to the replication instance.
    #
    # @return [Types::CreateReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Create replication task
    #
    #   # Creates a replication task using the specified parameters.
    #
    #   resp = client.create_replication_task({
    #     cdc_start_time: Time.parse("2016-12-14T18:25:43Z"), 
    #     migration_type: "full-load", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     replication_task_identifier: "task1", 
    #     replication_task_settings: "", 
    #     source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #     table_mappings: "file://mappingfile.json", 
    #     tags: [
    #       {
    #         key: "Acount", 
    #         value: "24352226", 
    #       }, 
    #     ], 
    #     target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_task({
    #     replication_task_identifier: "String", # required
    #     source_endpoint_arn: "String", # required
    #     target_endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #     migration_type: "full-load", # required, accepts full-load, cdc, full-load-and-cdc
    #     table_mappings: "String", # required
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationTask AWS API Documentation
    #
    # @overload create_replication_task(params = {})
    # @param [Hash] params ({})
    def create_replication_task(params = {}, options = {})
      req = build_request(:create_replication_task, params)
      req.send_request(options)
    end

    # Deletes the specified certificate.
    #
    # @option params [required, String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the deleted certificate.
    #
    # @return [Types::DeleteCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCertificateResponse#certificate #certificate} => Types::Certificate
    #
    #
    # @example Example: Delete Certificate
    #
    #   # Deletes the specified certificate.
    #
    #   resp = client.delete_certificate({
    #     certificate_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_identifier #=> String
    #   resp.certificate.certificate_creation_date #=> Time
    #   resp.certificate.certificate_pem #=> String
    #   resp.certificate.certificate_wallet #=> String
    #   resp.certificate.certificate_arn #=> String
    #   resp.certificate.certificate_owner #=> String
    #   resp.certificate.valid_from_date #=> Time
    #   resp.certificate.valid_to_date #=> Time
    #   resp.certificate.signing_algorithm #=> String
    #   resp.certificate.key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificate AWS API Documentation
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified endpoint.
    #
    # <note markdown="1"> All tasks associated with the endpoint must be deleted before you can
    # delete the endpoint.
    #
    #  </note>
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::DeleteEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Delete Endpoint
    #
    #   # Deletes the specified endpoint. All tasks associated with the endpoint must be deleted before you can delete the
    #   # endpoint.
    #
    #   resp = client.delete_endpoint({
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #       endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #       endpoint_identifier: "test-endpoint-1", 
    #       endpoint_type: "source", 
    #       engine_name: "mysql", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       port: 3306, 
    #       server_name: "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com", 
    #       status: "active", 
    #       username: "username", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes an AWS DMS event subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the DMS event notification subscription to be deleted.
    #
    # @return [Types::DeleteEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified replication instance.
    #
    # <note markdown="1"> You must delete any migration tasks that are associated with the
    # replication instance before you can delete it.
    #
    #  </note>
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance to be
    #   deleted.
    #
    # @return [Types::DeleteReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Delete Replication Instance
    #
    #   # Deletes the specified replication instance. You must delete any migration tasks that are associated with the replication
    #   # instance before you can delete it.
    #
    #   resp = client.delete_replication_instance({
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "creating", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_instance({
    #     replication_instance_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstance AWS API Documentation
    #
    # @overload delete_replication_instance(params = {})
    # @param [Hash] params ({})
    def delete_replication_instance(params = {}, options = {})
      req = build_request(:delete_replication_instance, params)
      req.send_request(options)
    end

    # Deletes a subnet group.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The subnet group name of the replication instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete Replication Subnet Group
    #
    #   # Deletes a replication subnet group.
    #
    #   resp = client.delete_replication_subnet_group({
    #     replication_subnet_group_identifier: "us-west-2ab-vpc-215ds366", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroup AWS API Documentation
    #
    # @overload delete_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_replication_subnet_group(params = {}, options = {})
      req = build_request(:delete_replication_subnet_group, params)
      req.send_request(options)
    end

    # Deletes the specified replication task.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be deleted.
    #
    # @return [Types::DeleteReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Delete Replication Task
    #
    #   # Deletes the specified replication task.
    #
    #   resp = client.delete_replication_task({
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_task({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTask AWS API Documentation
    #
    # @overload delete_replication_task(params = {})
    # @param [Hash] params ({})
    def delete_replication_task(params = {}, options = {})
      req = build_request(:delete_replication_task, params)
      req.send_request(options)
    end

    # Lists all of the AWS DMS attributes for a customer account. The
    # attributes include AWS DMS quotas for the account, such as the number
    # of replication instances allowed. The description for a quota includes
    # the quota name, current usage toward that quota, and the quota's
    # maximum value.
    #
    # This command does not take any parameters.
    #
    # @return [Types::DescribeAccountAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResponse#account_quotas #account_quotas} => Array&lt;Types::AccountQuota&gt;
    #
    #
    # @example Example: Describe acount attributes
    #
    #   # Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such
    #   # as the number of replication instances allowed. The description for a quota includes the quota name, current usage
    #   # toward that quota, and the quota's maximum value. This operation does not take any parameters.
    #
    #   resp = client.describe_account_attributes({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_quotas: [
    #       {
    #         account_quota_name: "ReplicationInstances", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #       {
    #         account_quota_name: "AllocatedStorage", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #       {
    #         account_quota_name: "Endpoints", 
    #         max: 20, 
    #         used: 0, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_quotas #=> Array
    #   resp.account_quotas[0].account_quota_name #=> String
    #   resp.account_quotas[0].used #=> Integer
    #   resp.account_quotas[0].max #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Provides a description of the certificate.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the certificate described in the form of key-value
    #   pairs.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 10
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificatesResponse#marker #marker} => String
    #   * {Types::DescribeCertificatesResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #
    #
    # @example Example: Describe certificates
    #
    #   # Provides a description of the certificate.
    #
    #   resp = client.describe_certificates({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificates: [
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_identifier #=> String
    #   resp.certificates[0].certificate_creation_date #=> Time
    #   resp.certificates[0].certificate_pem #=> String
    #   resp.certificates[0].certificate_wallet #=> String
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_owner #=> String
    #   resp.certificates[0].valid_from_date #=> Time
    #   resp.certificates[0].valid_to_date #=> Time
    #   resp.certificates[0].signing_algorithm #=> String
    #   resp.certificates[0].key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeCertificates AWS API Documentation
    #
    # @overload describe_certificates(params = {})
    # @param [Hash] params ({})
    def describe_certificates(params = {}, options = {})
      req = build_request(:describe_certificates, params)
      req.send_request(options)
    end

    # Describes the status of the connections that have been made between
    # the replication instance and an endpoint. Connections are created when
    # you test an endpoint.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters applied to the connection.
    #
    #   Valid filter names: endpoint-arn \| replication-instance-arn
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionsResponse#marker #marker} => String
    #   * {Types::DescribeConnectionsResponse#connections #connections} => Array&lt;Types::Connection&gt;
    #
    #
    # @example Example: Describe connections
    #
    #   # Describes the status of the connections that have been made between the replication instance and an endpoint.
    #   # Connections are created when you test an endpoint.
    #
    #   resp = client.describe_connections({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connections: [
    #       {
    #         endpoint_arn: "arn:aws:dms:us-east-arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #         endpoint_identifier: "testsrc1", 
    #         replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #         replication_instance_identifier: "test", 
    #         status: "successful", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].replication_instance_arn #=> String
    #   resp.connections[0].endpoint_arn #=> String
    #   resp.connections[0].status #=> String
    #   resp.connections[0].last_failure_message #=> String
    #   resp.connections[0].endpoint_identifier #=> String
    #   resp.connections[0].replication_instance_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConnections AWS API Documentation
    #
    # @overload describe_connections(params = {})
    # @param [Hash] params ({})
    def describe_connections(params = {}, options = {})
      req = build_request(:describe_connections, params)
      req.send_request(options)
    end

    # Returns information about the type of endpoints available.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: engine-name \| endpoint-type
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEndpointTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointTypesResponse#marker #marker} => String
    #   * {Types::DescribeEndpointTypesResponse#supported_endpoint_types #supported_endpoint_types} => Array&lt;Types::SupportedEndpointType&gt;
    #
    #
    # @example Example: Describe endpoint types
    #
    #   # Returns information about the type of endpoints available.
    #
    #   resp = client.describe_endpoint_types({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     supported_endpoint_types: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_types({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.supported_endpoint_types #=> Array
    #   resp.supported_endpoint_types[0].engine_name #=> String
    #   resp.supported_endpoint_types[0].supports_cdc #=> Boolean
    #   resp.supported_endpoint_types[0].endpoint_type #=> String, one of "source", "target"
    #   resp.supported_endpoint_types[0].engine_display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypes AWS API Documentation
    #
    # @overload describe_endpoint_types(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_types(params = {}, options = {})
      req = build_request(:describe_endpoint_types, params)
      req.send_request(options)
    end

    # Returns information about the endpoints for your account in the
    # current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \|
    #   engine-name
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#marker #marker} => String
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    #
    # @example Example: Describe endpoints
    #
    #   # Returns information about the endpoints for your account in the current region.
    #
    #   resp = client.describe_endpoints({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoints: [
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_identifier #=> String
    #   resp.endpoints[0].endpoint_type #=> String, one of "source", "target"
    #   resp.endpoints[0].engine_name #=> String
    #   resp.endpoints[0].engine_display_name #=> String
    #   resp.endpoints[0].username #=> String
    #   resp.endpoints[0].server_name #=> String
    #   resp.endpoints[0].port #=> Integer
    #   resp.endpoints[0].database_name #=> String
    #   resp.endpoints[0].extra_connection_attributes #=> String
    #   resp.endpoints[0].status #=> String
    #   resp.endpoints[0].kms_key_id #=> String
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].certificate_arn #=> String
    #   resp.endpoints[0].ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoints[0].service_access_role_arn #=> String
    #   resp.endpoints[0].external_table_definition #=> String
    #   resp.endpoints[0].external_id #=> String
    #   resp.endpoints[0].dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].s3_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].s3_settings.external_table_definition #=> String
    #   resp.endpoints[0].s3_settings.csv_row_delimiter #=> String
    #   resp.endpoints[0].s3_settings.csv_delimiter #=> String
    #   resp.endpoints[0].s3_settings.bucket_folder #=> String
    #   resp.endpoints[0].s3_settings.bucket_name #=> String
    #   resp.endpoints[0].s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoints[0].dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoints[0].dms_transfer_settings.bucket_name #=> String
    #   resp.endpoints[0].mongo_db_settings.username #=> String
    #   resp.endpoints[0].mongo_db_settings.password #=> String
    #   resp.endpoints[0].mongo_db_settings.server_name #=> String
    #   resp.endpoints[0].mongo_db_settings.port #=> Integer
    #   resp.endpoints[0].mongo_db_settings.database_name #=> String
    #   resp.endpoints[0].mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoints[0].mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoints[0].mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoints[0].mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoints[0].mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoints[0].mongo_db_settings.auth_source #=> String
    #   resp.endpoints[0].mongo_db_settings.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Lists categories for all event source types, or, if specified, for a
    # specified source type. You can see a list of the event categories and
    # source types in [ Working with Events and Notifications ][1] in the
    # AWS Database Migration Service User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| migration-task
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the action.
    #
    # @return [Types::DescribeEventCategoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventCategoriesResponse#event_category_group_list #event_category_group_list} => Array&lt;Types::EventCategoryGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories({
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_category_group_list #=> Array
    #   resp.event_category_group_list[0].source_type #=> String
    #   resp.event_category_group_list[0].event_categories #=> Array
    #   resp.event_category_group_list[0].event_categories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategories AWS API Documentation
    #
    # @overload describe_event_categories(params = {})
    # @param [Hash] params ({})
    def describe_event_categories(params = {}, options = {})
      req = build_request(:describe_event_categories, params)
      req.send_request(options)
    end

    # Lists all the event subscriptions for a customer account. The
    # description of a subscription includes `SubscriptionName`,
    # `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`,
    # and `Status`.
    #
    # If you specify `SubscriptionName`, this action lists the description
    # for that subscription.
    #
    # @option params [String] :subscription_name
    #   The name of the AWS DMS event subscription to be described.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the action.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEventSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventSubscriptionsResponse#marker #marker} => String
    #   * {Types::DescribeEventSubscriptionsResponse#event_subscriptions_list #event_subscriptions_list} => Array&lt;Types::EventSubscription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.event_subscriptions_list #=> Array
    #   resp.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.event_subscriptions_list[0].status #=> String
    #   resp.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.event_subscriptions_list[0].source_type #=> String
    #   resp.event_subscriptions_list[0].source_ids_list #=> Array
    #   resp.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.event_subscriptions_list[0].event_categories_list #=> Array
    #   resp.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.event_subscriptions_list[0].enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventSubscriptions AWS API Documentation
    #
    # @overload describe_event_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_event_subscriptions(params = {}, options = {})
      req = build_request(:describe_event_subscriptions, params)
      req.send_request(options)
    end

    # Lists events for a given source identifier and source type. You can
    # also specify a start and end time. For more information on AWS DMS
    # events, see [ Working with Events and Notifications ][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #
    # @option params [String] :source_identifier
    #   The identifier of the event source. An identifier must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens. It
    #   cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| migration-task
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time for the events to be listed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time for the events to be listed.
    #
    # @option params [Integer] :duration
    #   The duration of the events to be listed.
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the action.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#marker #marker} => String
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "replication-instance", # accepts replication-instance
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "replication-instance"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_categories #=> Array
    #   resp.events[0].event_categories[0] #=> String
    #   resp.events[0].date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about the replication instance types that can be
    # created in the specified region.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeOrderableReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrderableReplicationInstancesResponse#orderable_replication_instances #orderable_replication_instances} => Array&lt;Types::OrderableReplicationInstance&gt;
    #   * {Types::DescribeOrderableReplicationInstancesResponse#marker #marker} => String
    #
    #
    # @example Example: Describe orderable replication instances
    #
    #   # Returns information about the replication instance types that can be created in the specified region.
    #
    #   resp = client.describe_orderable_replication_instances({
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     orderable_replication_instances: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_replication_instances({
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.orderable_replication_instances #=> Array
    #   resp.orderable_replication_instances[0].engine_version #=> String
    #   resp.orderable_replication_instances[0].replication_instance_class #=> String
    #   resp.orderable_replication_instances[0].storage_type #=> String
    #   resp.orderable_replication_instances[0].min_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].max_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].default_allocated_storage #=> Integer
    #   resp.orderable_replication_instances[0].included_allocated_storage #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeOrderableReplicationInstances AWS API Documentation
    #
    # @overload describe_orderable_replication_instances(params = {})
    # @param [Hash] params ({})
    def describe_orderable_replication_instances(params = {}, options = {})
      req = build_request(:describe_orderable_replication_instances, params)
      req.send_request(options)
    end

    # Returns the status of the RefreshSchemas operation.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::DescribeRefreshSchemasStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRefreshSchemasStatusResponse#refresh_schemas_status #refresh_schemas_status} => Types::RefreshSchemasStatus
    #
    #
    # @example Example: Describe refresh schema status
    #
    #   # Returns the status of the refresh-schemas operation.
    #
    #   resp = client.describe_refresh_schemas_status({
    #     endpoint_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     refresh_schemas_status: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_refresh_schemas_status({
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schemas_status.endpoint_arn #=> String
    #   resp.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
    #   resp.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.refresh_schemas_status.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatus AWS API Documentation
    #
    # @overload describe_refresh_schemas_status(params = {})
    # @param [Hash] params ({})
    def describe_refresh_schemas_status(params = {}, options = {})
      req = build_request(:describe_refresh_schemas_status, params)
      req.send_request(options)
    end

    # Returns information about the task logs for the specified task.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationInstanceTaskLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#replication_instance_arn #replication_instance_arn} => String
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#replication_instance_task_logs #replication_instance_task_logs} => Array&lt;Types::ReplicationInstanceTaskLog&gt;
    #   * {Types::DescribeReplicationInstanceTaskLogsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instance_task_logs({
    #     replication_instance_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance_arn #=> String
    #   resp.replication_instance_task_logs #=> Array
    #   resp.replication_instance_task_logs[0].replication_task_name #=> String
    #   resp.replication_instance_task_logs[0].replication_task_arn #=> String
    #   resp.replication_instance_task_logs[0].replication_instance_task_log_size #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstanceTaskLogs AWS API Documentation
    #
    # @overload describe_replication_instance_task_logs(params = {})
    # @param [Hash] params ({})
    def describe_replication_instance_task_logs(params = {}, options = {})
      req = build_request(:describe_replication_instance_task_logs, params)
      req.send_request(options)
    end

    # Returns information about replication instances for your account in
    # the current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: replication-instance-arn \|
    #   replication-instance-id \| replication-instance-class \|
    #   engine-version
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationInstancesResponse#marker #marker} => String
    #   * {Types::DescribeReplicationInstancesResponse#replication_instances #replication_instances} => Array&lt;Types::ReplicationInstance&gt;
    #
    #
    # @example Example: Describe replication instances
    #
    #   # Returns the status of the refresh-schemas operation.
    #
    #   resp = client.describe_replication_instances({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_instances: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instances({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_instances #=> Array
    #   resp.replication_instances[0].replication_instance_identifier #=> String
    #   resp.replication_instances[0].replication_instance_class #=> String
    #   resp.replication_instances[0].replication_instance_status #=> String
    #   resp.replication_instances[0].allocated_storage #=> Integer
    #   resp.replication_instances[0].instance_create_time #=> Time
    #   resp.replication_instances[0].vpc_security_groups #=> Array
    #   resp.replication_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instances[0].vpc_security_groups[0].status #=> String
    #   resp.replication_instances[0].availability_zone #=> String
    #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instances[0].replication_subnet_group.vpc_id #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets #=> Array
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instances[0].preferred_maintenance_window #=> String
    #   resp.replication_instances[0].pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instances[0].pending_modified_values.engine_version #=> String
    #   resp.replication_instances[0].multi_az #=> Boolean
    #   resp.replication_instances[0].engine_version #=> String
    #   resp.replication_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instances[0].kms_key_id #=> String
    #   resp.replication_instances[0].replication_instance_arn #=> String
    #   resp.replication_instances[0].replication_instance_public_ip_address #=> String
    #   resp.replication_instances[0].replication_instance_private_ip_address #=> String
    #   resp.replication_instances[0].replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instances[0].replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instances[0].replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instances[0].replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instances[0].publicly_accessible #=> Boolean
    #   resp.replication_instances[0].secondary_availability_zone #=> String
    #   resp.replication_instances[0].free_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstances AWS API Documentation
    #
    # @overload describe_replication_instances(params = {})
    # @param [Hash] params ({})
    def describe_replication_instances(params = {}, options = {})
      req = build_request(:describe_replication_instances, params)
      req.send_request(options)
    end

    # Returns information about the replication subnet groups.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe action.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationSubnetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationSubnetGroupsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationSubnetGroupsResponse#replication_subnet_groups #replication_subnet_groups} => Array&lt;Types::ReplicationSubnetGroup&gt;
    #
    #
    # @example Example: Describe replication subnet groups
    #
    #   # Returns information about the replication subnet groups.
    #
    #   resp = client.describe_replication_subnet_groups({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_subnet_groups: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_subnet_groups({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_subnet_groups #=> Array
    #   resp.replication_subnet_groups[0].replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_groups[0].replication_subnet_group_description #=> String
    #   resp.replication_subnet_groups[0].vpc_id #=> String
    #   resp.replication_subnet_groups[0].subnet_group_status #=> String
    #   resp.replication_subnet_groups[0].subnets #=> Array
    #   resp.replication_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_groups[0].subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationSubnetGroups AWS API Documentation
    #
    # @overload describe_replication_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_replication_subnet_groups(params = {}, options = {})
      req = build_request(:describe_replication_subnet_groups, params)
      req.send_request(options)
    end

    # Returns the task assessment results from Amazon S3. This action always
    # returns the latest results.
    #
    # @option params [String] :replication_task_arn
    #   \- The Amazon Resource Name (ARN) string that uniquely identifies the
    #   task. When this input parameter is specified the API will return only
    #   one result and ignore the values of the max-records and marker
    #   parameters.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationTaskAssessmentResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#bucket_name #bucket_name} => String
    #   * {Types::DescribeReplicationTaskAssessmentResultsResponse#replication_task_assessment_results #replication_task_assessment_results} => Array&lt;Types::ReplicationTaskAssessmentResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_assessment_results({
    #     replication_task_arn: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.bucket_name #=> String
    #   resp.replication_task_assessment_results #=> Array
    #   resp.replication_task_assessment_results[0].replication_task_identifier #=> String
    #   resp.replication_task_assessment_results[0].replication_task_arn #=> String
    #   resp.replication_task_assessment_results[0].replication_task_last_assessment_date #=> Time
    #   resp.replication_task_assessment_results[0].assessment_status #=> String
    #   resp.replication_task_assessment_results[0].assessment_results_file #=> String
    #   resp.replication_task_assessment_results[0].assessment_results #=> String
    #   resp.replication_task_assessment_results[0].s3_object_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentResults AWS API Documentation
    #
    # @overload describe_replication_task_assessment_results(params = {})
    # @param [Hash] params ({})
    def describe_replication_task_assessment_results(params = {}, options = {})
      req = build_request(:describe_replication_task_assessment_results, params)
      req.send_request(options)
    end

    # Returns information about replication tasks for your account in the
    # current region.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: replication-task-arn \| replication-task-id \|
    #   migration-type \| endpoint-arn \| replication-instance-arn
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeReplicationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationTasksResponse#marker #marker} => String
    #   * {Types::DescribeReplicationTasksResponse#replication_tasks #replication_tasks} => Array&lt;Types::ReplicationTask&gt;
    #
    #
    # @example Example: Describe replication tasks
    #
    #   # Returns information about replication tasks for your account in the current region.
    #
    #   resp = client.describe_replication_tasks({
    #     filters: [
    #       {
    #         name: "string", 
    #         values: [
    #           "string", 
    #           "string", 
    #         ], 
    #       }, 
    #     ], 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_tasks: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_tasks({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_tasks #=> Array
    #   resp.replication_tasks[0].replication_task_identifier #=> String
    #   resp.replication_tasks[0].source_endpoint_arn #=> String
    #   resp.replication_tasks[0].target_endpoint_arn #=> String
    #   resp.replication_tasks[0].replication_instance_arn #=> String
    #   resp.replication_tasks[0].migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_tasks[0].table_mappings #=> String
    #   resp.replication_tasks[0].replication_task_settings #=> String
    #   resp.replication_tasks[0].status #=> String
    #   resp.replication_tasks[0].last_failure_message #=> String
    #   resp.replication_tasks[0].stop_reason #=> String
    #   resp.replication_tasks[0].replication_task_creation_date #=> Time
    #   resp.replication_tasks[0].replication_task_start_date #=> Time
    #   resp.replication_tasks[0].cdc_start_position #=> String
    #   resp.replication_tasks[0].cdc_stop_position #=> String
    #   resp.replication_tasks[0].recovery_checkpoint #=> String
    #   resp.replication_tasks[0].replication_task_arn #=> String
    #   resp.replication_tasks[0].replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_loading #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_queued #=> Integer
    #   resp.replication_tasks[0].replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasks AWS API Documentation
    #
    # @overload describe_replication_tasks(params = {})
    # @param [Hash] params ({})
    def describe_replication_tasks(params = {}, options = {})
      req = build_request(:describe_replication_tasks, params)
      req.send_request(options)
    end

    # Returns information about the schema for the specified endpoint.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSchemasResponse#marker #marker} => String
    #   * {Types::DescribeSchemasResponse#schemas #schemas} => Array&lt;String&gt;
    #
    #
    # @example Example: Describe schemas
    #
    #   # Returns information about the schema for the specified endpoint.
    #
    #   resp = client.describe_schemas({
    #     endpoint_arn: "", 
    #     marker: "", 
    #     max_records: 123, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     schemas: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schemas({
    #     endpoint_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeSchemas AWS API Documentation
    #
    # @overload describe_schemas(params = {})
    # @param [Hash] params ({})
    def describe_schemas(params = {}, options = {})
      req = build_request(:describe_schemas, params)
      req.send_request(options)
    end

    # Returns table statistics on the database migration task, including
    # table name, rows inserted, rows updated, and rows deleted.
    #
    # Note that the "last updated" column the DMS console only indicates
    # the time that AWS DMS last updated the table statistics record for a
    # table. It does not indicate the time of the last update to the table.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 500.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters applied to the describe table statistics action.
    #
    #   Valid filter names: schema-name \| table-name \| table-state
    #
    #   A combination of filters creates an AND condition where each record
    #   matches all specified filters.
    #
    # @return [Types::DescribeTableStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableStatisticsResponse#replication_task_arn #replication_task_arn} => String
    #   * {Types::DescribeTableStatisticsResponse#table_statistics #table_statistics} => Array&lt;Types::TableStatistics&gt;
    #   * {Types::DescribeTableStatisticsResponse#marker #marker} => String
    #
    #
    # @example Example: Describe table statistics
    #
    #   # Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows
    #   # deleted.
    #
    #   resp = client.describe_table_statistics({
    #     marker: "", 
    #     max_records: 123, 
    #     replication_task_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_task_arn: "", 
    #     table_statistics: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_statistics({
    #     replication_task_arn: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_arn #=> String
    #   resp.table_statistics #=> Array
    #   resp.table_statistics[0].schema_name #=> String
    #   resp.table_statistics[0].table_name #=> String
    #   resp.table_statistics[0].inserts #=> Integer
    #   resp.table_statistics[0].deletes #=> Integer
    #   resp.table_statistics[0].updates #=> Integer
    #   resp.table_statistics[0].ddls #=> Integer
    #   resp.table_statistics[0].full_load_rows #=> Integer
    #   resp.table_statistics[0].full_load_condtnl_chk_failed_rows #=> Integer
    #   resp.table_statistics[0].full_load_error_rows #=> Integer
    #   resp.table_statistics[0].last_update_time #=> Time
    #   resp.table_statistics[0].table_state #=> String
    #   resp.table_statistics[0].validation_pending_records #=> Integer
    #   resp.table_statistics[0].validation_failed_records #=> Integer
    #   resp.table_statistics[0].validation_suspended_records #=> Integer
    #   resp.table_statistics[0].validation_state #=> String
    #   resp.table_statistics[0].validation_state_details #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeTableStatistics AWS API Documentation
    #
    # @overload describe_table_statistics(params = {})
    # @param [Hash] params ({})
    def describe_table_statistics(params = {}, options = {})
      req = build_request(:describe_table_statistics, params)
      req.send_request(options)
    end

    # Uploads the specified certificate.
    #
    # @option params [required, String] :certificate_identifier
    #   The customer-assigned name of the certificate. Valid characters are
    #   A-z and 0-9.
    #
    # @option params [String] :certificate_pem
    #   The contents of the .pem X.509 certificate file for the certificate.
    #
    # @option params [String, IO] :certificate_wallet
    #   The location of the imported Oracle Wallet certificate for use with
    #   SSL.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the certificate.
    #
    # @return [Types::ImportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportCertificateResponse#certificate #certificate} => Types::Certificate
    #
    #
    # @example Example: Import certificate
    #
    #   # Uploads the specified certificate.
    #
    #   resp = client.import_certificate({
    #     certificate_identifier: "", 
    #     certificate_pem: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     certificate: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate({
    #     certificate_identifier: "String", # required
    #     certificate_pem: "String",
    #     certificate_wallet: "data",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate.certificate_identifier #=> String
    #   resp.certificate.certificate_creation_date #=> Time
    #   resp.certificate.certificate_pem #=> String
    #   resp.certificate.certificate_wallet #=> String
    #   resp.certificate.certificate_arn #=> String
    #   resp.certificate.certificate_owner #=> String
    #   resp.certificate.valid_from_date #=> Time
    #   resp.certificate.valid_to_date #=> Time
    #   resp.certificate.signing_algorithm #=> String
    #   resp.certificate.key_length #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificate AWS API Documentation
    #
    # @overload import_certificate(params = {})
    # @param [Hash] params ({})
    def import_certificate(params = {}, options = {})
      req = build_request(:import_certificate, params)
      req.send_request(options)
    end

    # Lists all tags for an AWS DMS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the AWS
    #   DMS resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: List tags for resource
    #
    #   # Lists all tags for an AWS DMS resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_list: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies the specified endpoint.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [String] :endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and must
    #   not end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :endpoint_type
    #   The type of endpoint.
    #
    # @option params [String] :engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase,
    #   dynamodb, mongodb, and sqlserver.
    #
    # @option params [String] :username
    #   The user name to be used to login to the endpoint database.
    #
    # @option params [String] :password
    #   The password to be used to login to the endpoint database.
    #
    # @option params [String] :server_name
    #   The name of the server where the endpoint database resides.
    #
    # @option params [Integer] :port
    #   The port used by the endpoint database.
    #
    # @option params [String] :database_name
    #   The name of the endpoint database.
    #
    # @option params [String] :extra_connection_attributes
    #   Additional attributes associated with the connection. To reset this
    #   parameter, pass the empty string ("") as an argument.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #
    # @option params [String] :ssl_mode
    #   The SSL mode to be used.
    #
    #   SSL mode can be one of four values: none, require, verify-ca,
    #   verify-full.
    #
    #   The default value is none.
    #
    # @option params [String] :service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role you want to
    #   use to modify the endpoint.
    #
    # @option params [String] :external_table_definition
    #   The external table definition.
    #
    # @option params [Types::DynamoDbSettings] :dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   more information about the available settings, see the **Using Object
    #   Mapping to Migrate Data to DynamoDB** section at [ Using an Amazon
    #   DynamoDB Database as a Target for AWS Database Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #
    # @option params [Types::S3Settings] :s3_settings
    #   Settings in JSON format for the target S3 endpoint. For more
    #   information about the available settings, see the **Extra Connection
    #   Attributes** section at [ Using Amazon S3 as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
    #
    # @option params [Types::DmsTransferSettings] :dms_transfer_settings
    #   The settings in JSON format for the DMS Transfer type source endpoint.
    #
    #   Attributes include:
    #
    #   * serviceAccessRoleArn - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * BucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress the
    #     target files. Set to NONE (the default) or do not use to leave the
    #     files uncompressed.
    #
    #   Shorthand syntax: ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string
    #
    #   JSON syntax:
    #
    #   \\\{ "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"\|"gzip" \\}
    #
    # @option params [Types::MongoDbSettings] :mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the **Configuration
    #   Properties When Using MongoDB as a Source for AWS Database Migration
    #   Service** section at [ Using Amazon S3 as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #
    # @return [Types::ModifyEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEndpointResponse#endpoint #endpoint} => Types::Endpoint
    #
    #
    # @example Example: Modify endpoint
    #
    #   # Modifies the specified endpoint.
    #
    #   resp = client.modify_endpoint({
    #     certificate_arn: "", 
    #     database_name: "", 
    #     endpoint_arn: "", 
    #     endpoint_identifier: "", 
    #     endpoint_type: "source", 
    #     engine_name: "", 
    #     extra_connection_attributes: "", 
    #     password: "", 
    #     port: 123, 
    #     server_name: "", 
    #     ssl_mode: "require", 
    #     username: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     endpoint: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_endpoint({
    #     endpoint_arn: "String", # required
    #     endpoint_identifier: "String",
    #     endpoint_type: "source", # accepts source, target
    #     engine_name: "String",
    #     username: "String",
    #     password: "SecretString",
    #     server_name: "String",
    #     port: 1,
    #     database_name: "String",
    #     extra_connection_attributes: "String",
    #     certificate_arn: "String",
    #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #     service_access_role_arn: "String",
    #     external_table_definition: "String",
    #     dynamo_db_settings: {
    #       service_access_role_arn: "String", # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: "String",
    #       external_table_definition: "String",
    #       csv_row_delimiter: "String",
    #       csv_delimiter: "String",
    #       bucket_folder: "String",
    #       bucket_name: "String",
    #       compression_type: "none", # accepts none, gzip
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: "String",
    #       bucket_name: "String",
    #     },
    #     mongo_db_settings: {
    #       username: "String",
    #       password: "SecretString",
    #       server_name: "String",
    #       port: 1,
    #       database_name: "String",
    #       auth_type: "no", # accepts no, password
    #       auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #       nesting_level: "none", # accepts none, one
    #       extract_doc_id: "String",
    #       docs_to_investigate: "String",
    #       auth_source: "String",
    #       kms_key_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.endpoint_identifier #=> String
    #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
    #   resp.endpoint.engine_name #=> String
    #   resp.endpoint.engine_display_name #=> String
    #   resp.endpoint.username #=> String
    #   resp.endpoint.server_name #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.database_name #=> String
    #   resp.endpoint.extra_connection_attributes #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.kms_key_id #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.certificate_arn #=> String
    #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
    #   resp.endpoint.service_access_role_arn #=> String
    #   resp.endpoint.external_table_definition #=> String
    #   resp.endpoint.external_id #=> String
    #   resp.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.endpoint.s3_settings.external_table_definition #=> String
    #   resp.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.endpoint.s3_settings.bucket_folder #=> String
    #   resp.endpoint.s3_settings.bucket_name #=> String
    #   resp.endpoint.s3_settings.compression_type #=> String, one of "none", "gzip"
    #   resp.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.endpoint.mongo_db_settings.username #=> String
    #   resp.endpoint.mongo_db_settings.password #=> String
    #   resp.endpoint.mongo_db_settings.server_name #=> String
    #   resp.endpoint.mongo_db_settings.port #=> Integer
    #   resp.endpoint.mongo_db_settings.database_name #=> String
    #   resp.endpoint.mongo_db_settings.auth_type #=> String, one of "no", "password"
    #   resp.endpoint.mongo_db_settings.auth_mechanism #=> String, one of "default", "mongodb_cr", "scram_sha_1"
    #   resp.endpoint.mongo_db_settings.nesting_level #=> String, one of "none", "one"
    #   resp.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.endpoint.mongo_db_settings.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEndpoint AWS API Documentation
    #
    # @overload modify_endpoint(params = {})
    # @param [Hash] params ({})
    def modify_endpoint(params = {}, options = {})
      req = build_request(:modify_endpoint, params)
      req.send_request(options)
    end

    # Modifies an existing AWS DMS event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the AWS DMS event notification subscription to be
    #   modified.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of AWS DMS resource that generates the events you want to
    #   subscribe to.
    #
    #   Valid values: replication-instance \| migration-task
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. Use the `DescribeEventCategories` action to see a list
    #   of event categories.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #
    # @return [Types::ModifyEventSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEventSubscriptionResponse#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Modifies the replication instance to apply new settings. You can
    # change one or more parameters by specifying these parameters and the
    # new values in the request.
    #
    # Some settings are applied during the maintenance window.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage (in gigabytes) to be allocated for the
    #   replication instance.
    #
    # @option params [Boolean] :apply_immediately
    #   Indicates whether the changes should be applied immediately or during
    #   the next maintenance window.
    #
    # @option params [String] :replication_instance_class
    #   The compute and memory capacity of the replication instance.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing the
    #   replication instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter does
    #   not result in an outage, except in the following situation, and the
    #   change is asynchronously applied as soon as possible. If moving this
    #   window to the current time, there must be at least 30 minutes between
    #   the current time and end of the window to ensure pending changes are
    #   applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter
    #   is set to `true`.
    #
    # @option params [String] :engine_version
    #   The engine version number of the replication instance.
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter does not result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints: This parameter must be set to true when specifying a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the replication instance's current version.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades will be applied automatically to
    #   the replication instance during the maintenance window. Changing this
    #   parameter does not result in an outage except in the following case
    #   and the change is asynchronously applied as soon as possible. An
    #   outage will result if this parameter is set to `true` during the
    #   maintenance window, and a newer minor version is available, and AWS
    #   DMS has enabled auto patching for that engine version.
    #
    # @option params [String] :replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    # @return [Types::ModifyReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    #
    # @example Example: Modify replication instance
    #
    #   # Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these
    #   # parameters and the new values in the request. Some settings are applied during the maintenance window.
    #
    #   resp = client.modify_replication_instance({
    #     allocated_storage: 123, 
    #     allow_major_version_upgrade: true, 
    #     apply_immediately: true, 
    #     auto_minor_version_upgrade: true, 
    #     engine_version: "1.5.0", 
    #     multi_az: true, 
    #     preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     replication_instance_class: "dms.t2.micro", 
    #     replication_instance_identifier: "test-rep-1", 
    #     vpc_security_group_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_instance: {
    #       allocated_storage: 5, 
    #       auto_minor_version_upgrade: true, 
    #       engine_version: "1.5.0", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd", 
    #       pending_modified_values: {
    #       }, 
    #       preferred_maintenance_window: "sun:06:00-sun:14:00", 
    #       publicly_accessible: true, 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_instance_class: "dms.t2.micro", 
    #       replication_instance_identifier: "test-rep-1", 
    #       replication_instance_status: "available", 
    #       replication_subnet_group: {
    #         replication_subnet_group_description: "default", 
    #         replication_subnet_group_identifier: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1d", 
    #             }, 
    #             subnet_identifier: "subnet-f6dd91af", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-3605751d", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-c2daefb5", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-85e90cb8", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-6741a603", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_instance({
    #     replication_instance_arn: "String", # required
    #     allocated_storage: 1,
    #     apply_immediately: false,
    #     replication_instance_class: "String",
    #     vpc_security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     replication_instance_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationInstance AWS API Documentation
    #
    # @overload modify_replication_instance(params = {})
    # @param [Hash] params ({})
    def modify_replication_instance(params = {}, options = {})
      req = build_request(:modify_replication_instance, params)
      req.send_request(options)
    end

    # Modifies the settings for the specified replication subnet group.
    #
    # @option params [required, String] :replication_subnet_group_identifier
    #   The name of the replication instance subnet group.
    #
    # @option params [String] :replication_subnet_group_description
    #   The description of the replication instance subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs.
    #
    # @return [Types::ModifyReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationSubnetGroupResponse#replication_subnet_group #replication_subnet_group} => Types::ReplicationSubnetGroup
    #
    #
    # @example Example: Modify replication subnet group
    #
    #   # Modifies the settings for the specified replication subnet group.
    #
    #   resp = client.modify_replication_subnet_group({
    #     replication_subnet_group_description: "", 
    #     replication_subnet_group_identifier: "", 
    #     subnet_ids: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_subnet_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_subnet_group({
    #     replication_subnet_group_identifier: "String", # required
    #     replication_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_subnet_group.vpc_id #=> String
    #   resp.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_subnet_group.subnets #=> Array
    #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationSubnetGroup AWS API Documentation
    #
    # @overload modify_replication_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_replication_subnet_group(params = {}, options = {})
      req = build_request(:modify_replication_subnet_group, params)
      req.send_request(options)
    end

    # Modifies the specified replication task.
    #
    # You can't modify the task endpoints. The task must be stopped before
    # you can modify it.
    #
    # For more information about AWS DMS tasks, see the AWS DMS user guide
    # at [ Working with Migration Tasks ][1]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [String] :replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :migration_type
    #   The migration type.
    #
    #   Valid values: full-load \| cdc \| full-load-and-cdc
    #
    # @option params [String] :table_mappings
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with "file://".
    #   When working with the DMS API, provide the JSON as the parameter
    #   value.
    #
    #   For example, --table-mappings file://mappingfile.json
    #
    # @option params [String] :replication_task_settings
    #   JSON file that contains settings for the task, such as target metadata
    #   settings.
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #
    # @return [Types::ModifyReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_task({
    #     replication_task_arn: "String", # required
    #     replication_task_identifier: "String",
    #     migration_type: "full-load", # accepts full-load, cdc, full-load-and-cdc
    #     table_mappings: "String",
    #     replication_task_settings: "String",
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationTask AWS API Documentation
    #
    # @overload modify_replication_task(params = {})
    # @param [Hash] params ({})
    def modify_replication_task(params = {}, options = {})
      req = build_request(:modify_replication_task, params)
      req.send_request(options)
    end

    # Reboots a replication instance. Rebooting results in a momentary
    # outage, until the replication instance becomes available again.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [Boolean] :force_failover
    #   If this parameter is `true`, the reboot is conducted through a
    #   Multi-AZ failover. (If the instance isn't configured for Multi-AZ,
    #   then you can't specify `true`.)
    #
    # @return [Types::RebootReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootReplicationInstanceResponse#replication_instance #replication_instance} => Types::ReplicationInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_replication_instance({
    #     replication_instance_arn: "String", # required
    #     force_failover: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_instance.replication_instance_identifier #=> String
    #   resp.replication_instance.replication_instance_class #=> String
    #   resp.replication_instance.replication_instance_status #=> String
    #   resp.replication_instance.allocated_storage #=> Integer
    #   resp.replication_instance.instance_create_time #=> Time
    #   resp.replication_instance.vpc_security_groups #=> Array
    #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.replication_instance.availability_zone #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.replication_instance.replication_subnet_group.subnets #=> Array
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.replication_instance.preferred_maintenance_window #=> String
    #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.replication_instance.multi_az #=> Boolean
    #   resp.replication_instance.engine_version #=> String
    #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.replication_instance.kms_key_id #=> String
    #   resp.replication_instance.replication_instance_arn #=> String
    #   resp.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
    #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.replication_instance.publicly_accessible #=> Boolean
    #   resp.replication_instance.secondary_availability_zone #=> String
    #   resp.replication_instance.free_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstance AWS API Documentation
    #
    # @overload reboot_replication_instance(params = {})
    # @param [Hash] params ({})
    def reboot_replication_instance(params = {}, options = {})
      req = build_request(:reboot_replication_instance, params)
      req.send_request(options)
    end

    # Populates the schema for the specified endpoint. This is an
    # asynchronous operation and can take several minutes. You can check the
    # status of this operation by calling the DescribeRefreshSchemasStatus
    # operation.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @return [Types::RefreshSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RefreshSchemasResponse#refresh_schemas_status #refresh_schemas_status} => Types::RefreshSchemasStatus
    #
    #
    # @example Example: Refresh schema
    #
    #   # Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can
    #   # check the status of this operation by calling the describe-refresh-schemas-status operation.
    #
    #   resp = client.refresh_schemas({
    #     endpoint_arn: "", 
    #     replication_instance_arn: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     refresh_schemas_status: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_schemas({
    #     endpoint_arn: "String", # required
    #     replication_instance_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schemas_status.endpoint_arn #=> String
    #   resp.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
    #   resp.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.refresh_schemas_status.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemas AWS API Documentation
    #
    # @overload refresh_schemas(params = {})
    # @param [Hash] params ({})
    def refresh_schemas(params = {}, options = {})
      req = build_request(:refresh_schemas, params)
      req.send_request(options)
    end

    # Reloads the target database table with the source data.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @option params [required, Array<Types::TableToReload>] :tables_to_reload
    #   The name and schema of the table to be reloaded.
    #
    # @option params [String] :reload_option
    #   Options for reload. Specify `data-reload` to reload the data and
    #   re-validate it if validation is enabled. Specify `validate-only` to
    #   re-validate the table. This option applies only when validation is
    #   enabled for the task.
    #
    #   Valid values: data-reload, validate-only
    #
    #   Default value is data-reload.
    #
    # @return [Types::ReloadTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReloadTablesResponse#replication_task_arn #replication_task_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reload_tables({
    #     replication_task_arn: "String", # required
    #     tables_to_reload: [ # required
    #       {
    #         schema_name: "String",
    #         table_name: "String",
    #       },
    #     ],
    #     reload_option: "data-reload", # accepts data-reload, validate-only
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadTables AWS API Documentation
    #
    # @overload reload_tables(params = {})
    # @param [Hash] params ({})
    def reload_tables(params = {}, options = {})
      req = build_request(:reload_tables, params)
      req.send_request(options)
    end

    # Removes metadata tags from a DMS resource.
    #
    # @option params [required, String] :resource_arn
    #   &gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is
    #   to be removed from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from resource
    #
    #   # Removes metadata tags from an AWS DMS resource.
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     tag_keys: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Starts the replication task.
    #
    # For more information about AWS DMS tasks, see the AWS DMS user guide
    # at [ Working with Migration Tasks ][1]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be started.
    #
    # @option params [required, String] :start_replication_task_type
    #   The type of replication task.
    #
    # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want a
    #   CDC operation to start. Specifying both values results in an error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #
    # @option params [String] :cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #
    # @option params [String] :cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to stop.
    #   The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #
    # @return [Types::StartReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Start replication task
    #
    #   # Starts the replication task.
    #
    #   resp = client.start_replication_task({
    #     cdc_start_time: Time.parse("2016-12-14T13:33:20Z"), 
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #     start_replication_task_type: "start-replication", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task({
    #     replication_task_arn: "String", # required
    #     start_replication_task_type: "start-replication", # required, accepts start-replication, resume-processing, reload-target
    #     cdc_start_time: Time.now,
    #     cdc_start_position: "String",
    #     cdc_stop_position: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTask AWS API Documentation
    #
    # @overload start_replication_task(params = {})
    # @param [Hash] params ({})
    def start_replication_task(params = {}, options = {})
      req = build_request(:start_replication_task, params)
      req.send_request(options)
    end

    # Starts the replication task assessment for unsupported data types in
    # the source database.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #
    # @return [Types::StartReplicationTaskAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationTaskAssessmentResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task_assessment({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessment AWS API Documentation
    #
    # @overload start_replication_task_assessment(params = {})
    # @param [Hash] params ({})
    def start_replication_task_assessment(params = {}, options = {})
      req = build_request(:start_replication_task_assessment, params)
      req.send_request(options)
    end

    # Stops the replication task.
    #
    # @option params [required, String] :replication_task_arn
    #   The Amazon Resource Name(ARN) of the replication task to be stopped.
    #
    # @return [Types::StopReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopReplicationTaskResponse#replication_task #replication_task} => Types::ReplicationTask
    #
    #
    # @example Example: Stop replication task
    #
    #   # Stops the replication task.
    #
    #   resp = client.stop_replication_task({
    #     replication_task_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_task: {
    #       migration_type: "full-load", 
    #       replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #       replication_task_arn: "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM", 
    #       replication_task_creation_date: Time.parse("2016-12-14T18:25:43Z"), 
    #       replication_task_identifier: "task1", 
    #       replication_task_settings: "{\"TargetMetadata\":{\"TargetSchema\":\"\",\"SupportLobs\":true,\"FullLobMode\":true,\"LobChunkSize\":64,\"LimitedSizeLobMode\":false,\"LobMaxSize\":0},\"FullLoadSettings\":{\"FullLoadEnabled\":true,\"ApplyChangesEnabled\":false,\"TargetTablePrepMode\":\"DROP_AND_CREATE\",\"CreatePkAfterFullLoad\":false,\"StopTaskCachedChangesApplied\":false,\"StopTaskCachedChangesNotApplied\":false,\"ResumeEnabled\":false,\"ResumeMinTableSize\":100000,\"ResumeOnlyClusteredPKTables\":true,\"MaxFullLoadSubTasks\":8,\"TransactionConsistencyTimeout\":600,\"CommitRate\":10000},\"Logging\":{\"EnableLogging\":false}}", 
    #       source_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE", 
    #       status: "creating", 
    #       table_mappings: "file://mappingfile.json", 
    #       target_endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication_task({
    #     replication_task_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_task.replication_task_identifier #=> String
    #   resp.replication_task.source_endpoint_arn #=> String
    #   resp.replication_task.target_endpoint_arn #=> String
    #   resp.replication_task.replication_instance_arn #=> String
    #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
    #   resp.replication_task.table_mappings #=> String
    #   resp.replication_task.replication_task_settings #=> String
    #   resp.replication_task.status #=> String
    #   resp.replication_task.last_failure_message #=> String
    #   resp.replication_task.stop_reason #=> String
    #   resp.replication_task.replication_task_creation_date #=> Time
    #   resp.replication_task.replication_task_start_date #=> Time
    #   resp.replication_task.cdc_start_position #=> String
    #   resp.replication_task.cdc_stop_position #=> String
    #   resp.replication_task.recovery_checkpoint #=> String
    #   resp.replication_task.replication_task_arn #=> String
    #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTask AWS API Documentation
    #
    # @overload stop_replication_task(params = {})
    # @param [Hash] params ({})
    def stop_replication_task(params = {}, options = {})
      req = build_request(:stop_replication_task, params)
      req.send_request(options)
    end

    # Tests the connection between the replication instance and the
    # endpoint.
    #
    # @option params [required, String] :replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #
    # @return [Types::TestConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestConnectionResponse#connection #connection} => Types::Connection
    #
    #
    # @example Example: Test conection
    #
    #   # Tests the connection between the replication instance and the endpoint.
    #
    #   resp = client.test_connection({
    #     endpoint_arn: "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM", 
    #     replication_instance_arn: "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     connection: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_connection({
    #     replication_instance_arn: "String", # required
    #     endpoint_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.replication_instance_arn #=> String
    #   resp.connection.endpoint_arn #=> String
    #   resp.connection.status #=> String
    #   resp.connection.last_failure_message #=> String
    #   resp.connection.endpoint_identifier #=> String
    #   resp.connection.replication_instance_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnection AWS API Documentation
    #
    # @overload test_connection(params = {})
    # @param [Hash] params ({})
    def test_connection(params = {}, options = {})
      req = build_request(:test_connection, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-databasemigrationservice'
      context[:gem_version] = '1.9.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
