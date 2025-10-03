# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::MachineLearning
  # An API client for Aws::MachineLearning.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonML20141212

    add_plugin(::Aws::MachineLearning::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MachineLearning::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key 
    # 		    and an optional value. If you add a tag using a key that is already associated with the ML object, 
    # 			<code>AddTags</code> updates the tag's value.</p>
    # @param [Hash, Types::AddTagsInput] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
    # @option params [String] :resource_type
    #   <p>The type of the ML object to tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"], # required
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "EntityId",
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   }
    # @return [Types::AddTagsOutput]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced 
    #             by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data 
    #             files referenced by the <code>DataSource</code> as information sources. 
    #         </p>
    #    
    #         <p>
    #             <code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>, 
    #         Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>. 
    #         After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>. 
    #         </p>
    #         <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears, 
    #             the results are available in the location specified by the <code>OutputUri</code> parameter.</p>
    # @param [Hash, Types::CreateBatchPredictionInput] params
    # @option params [String] :batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the
    #                   <code>BatchPrediction</code>.</p>
    # @option params [String] :batch_prediction_name
    #   <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
    # @option params [String] :ml_model_id
    #   <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
    # @option params [String] :batch_prediction_data_source_id
    #   <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
    # @option params [String] :output_uri
    #   <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> 
    #           <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_prediction_id: "EntityId", # required
    #     batch_prediction_name: "EntityName",
    #     ml_model_id: "EntityId", # required
    #     batch_prediction_data_source_id: "EntityId", # required
    #     output_uri: "S3Url", # required
    #   }
    #   options = {}
    #   response = client.create_batch_prediction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_prediction_id: "EntityId"
    #   }
    # @return [Types::CreateBatchPredictionOutput]
    def create_batch_prediction(params = {}, options = {})
      request = build_request(:create_batch_prediction, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p>
    #        
    #         <p>
    #             <code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>, 
    #          Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. 
    #             After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. 
    #             <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can
    #           be used only to perform <code>>CreateMLModel</code>>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.
    #         </p> 
    #         <p>
    #           If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response.
    #         </p>
    # @param [Hash, Types::CreateDataSourceFromRDSInput] params
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) 
    #               becomes the ID for a <code>DataSource</code>.</p>
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>.</p>
    # @option params [Types::RDSDataSpec] :rds_data
    #   <p>The data specification of an Amazon RDS <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p>
    #                   <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon RDS database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon 
    #   			Simple Storage Service (Amazon S3). For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS
    #   			to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>The role that Amazon ML assumes on behalf of the user to create and activate a data
    #             pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p>
    #           <p></p>
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.
    #               </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     rds_data: { # required
    #       database_information: { # required
    #         instance_identifier: "RDSInstanceIdentifier", # required
    #         database_name: "RDSDatabaseName", # required
    #       },
    #       select_sql_query: "RDSSelectSqlQuery", # required
    #       database_credentials: { # required
    #         username: "RDSDatabaseUsername", # required
    #         password: "RDSDatabasePassword", # required
    #       },
    #       s3_staging_location: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_uri: "S3Url",
    #       resource_role: "EDPResourceRole", # required
    #       service_role: "EDPServiceRole", # required
    #       subnet_id: "EDPSubnetId", # required
    #       security_group_ids: ["EDPSecurityGroupId"], # required
    #     },
    #     role_arn: "RoleARN", # required
    #     compute_statistics: false
    #   }
    #   options = {}
    #   response = client.create_data_source_from_rds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId"
    #   }
    # @return [Types::CreateDataSourceFromRDSOutput]
    def create_data_source_from_rds(params = {}, options = {})
      request = build_request(:create_data_source_from_rds, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A 
    # 		<code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> 
    # 		operations.</p>
    #        
    #         <p>
    #             <code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. 
    #             After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. 
    #           <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be
    #           used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.
    #         </p> 
    # 
    #         <p>
    #           If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> 
    # 		  attribute of the <code>GetDataSource</code> operation response.
    #         </p>
    # 
    #         <p>The observations should be contained in the database hosted on an Amazon Redshift cluster
    #             and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an
    #                 <code>Unload</code> command in Amazon Redshift to transfer the result set of
    #                 the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p>
    # 
    #         <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and
    #             batch predictions. If you plan to use the <code>DataSource</code> to train an
    #                 <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe
    #             describes how each input variable will be used in training an <code>MLModel</code>. Will
    #             the variable be included or excluded from training? Will the variable be manipulated;
    #             for example, will it be combined with another variable or will it be split apart into
    #             word combinations? The recipe provides answers to these questions.</p>
    #          <p>You can't change an existing datasource, but you can copy and modify the settings from an
    #             existing Amazon Redshift datasource to create a new datasource. To do so, call
    #                 <code>GetDataSource</code> for an existing datasource and copy the values to a
    #                 <code>CreateDataSource</code> call. Change the settings that you want to change and
    #             make sure that all required fields have the appropriate values.</p>
    # @param [Hash, Types::CreateDataSourceFromRedshiftInput] params
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    # @option params [Types::RedshiftDataSpec] :data_spec
    #   <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p> 
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon Redshift database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - The query that is used to retrieve the observation data for the 
    #   			<code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon
    #                       Redshift data. The data retrieved from Amazon Redshift using
    #                           the <code>SelectSqlQuery</code> query is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:</p>
    #           
    #              <ul>
    #               <li>
    #                  <p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #              This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to
    #             be used for <code>MLModel</code> training.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     data_spec: { # required
    #       database_information: { # required
    #         database_name: "RedshiftDatabaseName", # required
    #         cluster_identifier: "RedshiftClusterIdentifier", # required
    #       },
    #       select_sql_query: "RedshiftSelectSqlQuery", # required
    #       database_credentials: { # required
    #         username: "RedshiftDatabaseUsername", # required
    #         password: "RedshiftDatabasePassword", # required
    #       },
    #       s3_staging_location: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_uri: "S3Url"
    #     },
    #     role_arn: "RoleARN", # required
    #     compute_statistics: false
    #   }
    #   options = {}
    #   response = client.create_data_source_from_redshift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId"
    #   }
    # @return [Types::CreateDataSourceFromRedshiftOutput]
    def create_data_source_from_redshift(params = {}, options = {})
      request = build_request(:create_data_source_from_redshift, params)
      request.send_request(options)
    end

    # <p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that
    #           can be used to perform  <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or
    #           <code>CreateBatchPrediction</code> operations.</p>
    #         
    #         <p>
    #             <code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to
    #                 <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately
    #             returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the
    #                 <code>DataSource</code> has been created and is ready for use, Amazon ML sets the
    #                 <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in
    #             the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only
    #                 <code>CreateMLModel</code>, <code>CreateEvaluation</code> or
    #                 <code>CreateBatchPrediction</code> operations. </p> 
    #        
    #         <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to
    #                 <code>FAILED</code> and includes an error message in the <code>Message</code>
    #             attribute of the <code>GetDataSource</code> operation response. </p>
    # 
    #         <p>The observation data used in a <code>DataSource</code> should be ready to use; that is,
    #             it should have a consistent structure, and missing data values should be kept to a
    #             minimum. The observation data must reside in one or more .csv files in an Amazon Simple
    #             Storage Service (Amazon S3) location, along with a schema that describes the data items
    #             by name and type. The same schema must be used for all of the data files referenced by
    #             the <code>DataSource</code>. </p>
    #         <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and
    #             batch predictions. If you plan to use the <code>DataSource</code> to train an
    #                 <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe
    #             describes how each input variable will be used in training an <code>MLModel</code>. Will
    #             the variable be included or excluded from training? Will the variable be manipulated;
    #             for example, will it be combined with another variable or will it be split apart into
    #             word combinations? The recipe provides answers to these questions.</p>
    # @param [Hash, Types::CreateDataSourceFromS3Input] params
    # @option params [String] :data_source_id
    #   <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    # @option params [Types::S3DataSpec] :data_spec
    #   <p>The data specification of a <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DataLocationS3 - The Amazon S3 location of the observation data.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample - 
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName",
    #     data_spec: { # required
    #       data_location_s3: "S3Url", # required
    #       data_rearrangement: "DataRearrangement",
    #       data_schema: "DataSchema",
    #       data_schema_location_s3: "S3Url"
    #     },
    #     compute_statistics: false
    #   }
    #   options = {}
    #   response = client.create_data_source_from_s3(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId"
    #   }
    # @return [Types::CreateDataSourceFromS3Output]
    def create_data_source_from_s3(params = {}, options = {})
      request = build_request(:create_data_source_from_s3, params)
      request.send_request(options)
    end

    # <p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code> 
    #           for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a 
    #             summary so that you know how effective the <code>MLModel</code> functions on the test
    #           data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>.
    # 
    #         </p>
    #         <p>
    #             <code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately 
    #             returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use, 
    #             Amazon ML sets the status to <code>COMPLETED</code>. 
    #         </p>
    #         <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>
    # @param [Hash, Types::CreateEvaluationInput] params
    # @option params [String] :evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
    # @option params [String] :evaluation_name
    #   <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
    # @option params [String] :ml_model_id
    #   <p>The ID of the <code>MLModel</code> to evaluate.</p> 
    #           <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
    # @option params [String] :evaluation_data_source_id
    #   <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> 
    #               must match the schema used to create the <code>MLModel</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluation_id: "EntityId", # required
    #     evaluation_name: "EntityName",
    #     ml_model_id: "EntityId", # required
    #     evaluation_data_source_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.create_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "EntityId"
    #   }
    # @return [Types::CreateEvaluationOutput]
    def create_evaluation(params = {}, options = {})
      request = build_request(:create_evaluation, params)
      request.send_request(options)
    end

    # <p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as
    #             information sources. </p>
    #         <p>An <code>MLModel</code> is nearly immutable. Users can update only the
    #                 <code>MLModelName</code> and the <code>ScoreThreshold</code> in an
    #                 <code>MLModel</code> without creating a new <code>MLModel</code>. </p>
    #         <p>
    #             <code>CreateMLModel</code> is an asynchronous operation. In response to
    #                 <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns
    #             and sets the <code>MLModel</code> status to <code>PENDING</code>. After the
    #                 <code>MLModel</code> has been created and ready is for use, Amazon ML sets the
    #             status to <code>COMPLETED</code>. </p>
    #         <p>You can use the <code>GetMLModel</code> operation to check the progress of the
    #                 <code>MLModel</code> during the creation operation.</p>
    # 
    #         <p>
    #            <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics,
    #           which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in
    #           <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or
    #           <code>CreateDataSourceFromRedshift</code> operations.
    #         </p>
    # @param [Hash, Types::CreateMLModelInput] params
    # @option params [String] :ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    # @option params [String] :ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    # @option params [String] :ml_model_type
    #   <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values.</p> 
    #               </li>
    #            </ul>
    #           <p> For more information, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    #               a map of key-value pairs.</p>
    #           <p>The following is the current set of training parameters:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    #                       input data, the size of the model might affect its performance.</p> 
    #                   <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    #                       observations to build the <code>MLModel</code>. The value is an integer that
    #                       ranges from <code>1</code> to <code>10000</code>. The default value is
    #                           <code>10</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling
    #                       the data improves a model's ability to find the optimal solution for a variety
    #                       of data types. The valid values are <code>auto</code> and <code>none</code>. The
    #                       default value is <code>none</code>. We strongly recommend that you shuffle your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to zero, resulting in a sparse feature set. If you use this
    #                       parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L1 normalization. This parameter can't be used when
    #                           <code>L2</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to small, nonzero values. If you use this parameter, start by
    #                       specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L2 normalization. This parameter can't be used when
    #                           <code>L1</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #            </ul>
    # @option params [String] :training_data_source_id
    #   <p>The <code>DataSource</code> that points to the training data.</p>
    # @option params [String] :recipe
    #   <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe
    #               or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    # @option params [String] :recipe_uri
    #   <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #     ml_model_name: "EntityName",
    #     ml_model_type: "REGRESSION" # One of: ["REGRESSION", "BINARY", "MULTICLASS"], # required
    #     parameters: {
    #       "StringType" => "StringType"
    #     },
    #     training_data_source_id: "EntityId", # required
    #     recipe: "Recipe",
    #     recipe_uri: "S3Url"
    #   }
    #   options = {}
    #   response = client.create_ml_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId"
    #   }
    # @return [Types::CreateMLModelOutput]
    def create_ml_model(params = {}, options = {})
      request = build_request(:create_ml_model, params)
      request.send_request(options)
    end

    # <p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>
    # @param [Hash, Types::CreateRealtimeEndpointInput] params
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.create_realtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId",
    #     realtime_endpoint_info: {
    #       peak_requests_per_second: 1,
    #       created_at: Time.now,
    #       endpoint_url: "VipURL",
    #       endpoint_status: "NONE" # One of: ["NONE", "READY", "UPDATING", "FAILED"]
    #     }
    #   }
    # @return [Types::CreateRealtimeEndpointOutput]
    def create_realtime_endpoint(params = {}, options = {})
      request = build_request(:create_realtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a> 
    #             operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p>
    #         
    #         <p>
    #             <b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>
    # @param [Hash, Types::DeleteBatchPredictionInput] params
    # @option params [String] :batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_prediction_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_batch_prediction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_prediction_id: "EntityId"
    #   }
    # @return [Types::DeleteBatchPredictionOutput]
    def delete_batch_prediction(params = {}, options = {})
      request = build_request(:delete_batch_prediction, params)
      request.send_request(options)
    end

    # <p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p>
    #         <p>
    #             <b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>
    # @param [Hash, Types::DeleteDataSourceInput] params
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId"
    #   }
    # @return [Types::DeleteDataSourceOutput]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p>
    # 
    #         <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the
    #           <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p>
    #         <p>
    #             <b>Caution:</b> The results of the <code>DeleteEvaluation</code> operation are irreversible.</p>
    # @param [Hash, Types::DeleteEvaluationInput] params
    # @option params [String] :evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluation_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "EntityId"
    #   }
    # @return [Types::DeleteEvaluationOutput]
    def delete_evaluation(params = {}, options = {})
      request = build_request(:delete_evaluation, params)
      request.send_request(options)
    end

    # <p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteMLModel</code> operation, you can use the
    #           <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p>
    #         
    #         <p>
    #             <b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>
    # @param [Hash, Types::DeleteMLModelInput] params
    # @option params [String] :ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_ml_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId"
    #   }
    # @return [Types::DeleteMLModelOutput]
    def delete_ml_model(params = {}, options = {})
      request = build_request(:delete_ml_model, params)
      request.send_request(options)
    end

    # <p>Deletes a real time endpoint of an <code>MLModel</code>.</p>
    # @param [Hash, Types::DeleteRealtimeEndpointInput] params
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.delete_realtime_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId",
    #     realtime_endpoint_info: {
    #       peak_requests_per_second: 1,
    #       created_at: Time.now,
    #       endpoint_url: "VipURL",
    #       endpoint_status: "NONE" # One of: ["NONE", "READY", "UPDATING", "FAILED"]
    #     }
    #   }
    # @return [Types::DeleteRealtimeEndpointOutput]
    def delete_realtime_endpoint(params = {}, options = {})
      request = build_request(:delete_realtime_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p>
    # 		       <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>
    # @param [Hash, Types::DeleteTagsInput] params
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tags to delete.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
    # @option params [String] :resource_type
    #   <p>The type of the tagged ML object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tag_keys: ["TagKey"], # required
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"], # required
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "EntityId",
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   }
    # @return [Types::DeleteTagsOutput]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>
    # @param [Hash, Types::DescribeBatchPredictionsInput] params
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code>
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>BatchPrediction</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>BatchPrediction</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    # @option params [String] :lt
    #   <p>The less than operator. The <code>BatchPrediction</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>:
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    # @option params [String] :next_token
    #   <p>An ID of the page in the paginated results.</p>
    # @option params [Integer] :limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_variable: "CreatedAt" # One of: ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"],
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc" # One of: ["asc", "dsc"],
    #     next_token: "StringType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_batch_predictions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         batch_prediction_id: "EntityId",
    #         ml_model_id: "EntityId",
    #         batch_prediction_data_source_id: "EntityId",
    #         input_data_location_s3: "S3Url",
    #         created_by_iam_user: "AwsUserArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         name: "EntityName",
    #         status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #         output_uri: "S3Url",
    #         message: "Message",
    #         compute_time: 1,
    #         finished_at: Time.now,
    #         started_at: Time.now,
    #         total_record_count: 1,
    #         invalid_record_count: 1
    #       }
    #     ],
    #     next_token: "StringType"
    #   }
    # @return [Types::DescribeBatchPredictionsOutput]
    def describe_batch_predictions(params = {}, options = {})
      request = build_request(:describe_batch_predictions, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>
    # @param [Hash, Types::DescribeDataSourcesInput] params
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
    #               </li>
    #            </ul>
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>DataSource</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>DataSource</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    # @option params [String] :lt
    #   <p>The less than operator. The <code>DataSource</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, a <code>DataSource</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    # @option params [Integer] :limit
    #   <p> The maximum number of <code>DataSource</code> to include in the result.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_variable: "CreatedAt" # One of: ["CreatedAt", "LastUpdatedAt", "Status", "Name", "DataLocationS3", "IAMUser"],
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc" # One of: ["asc", "dsc"],
    #     next_token: "StringType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         data_source_id: "EntityId",
    #         data_location_s3: "S3Url",
    #         data_rearrangement: "DataRearrangement",
    #         created_by_iam_user: "AwsUserArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         data_size_in_bytes: 1,
    #         number_of_files: 1,
    #         name: "EntityName",
    #         status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #         message: "Message",
    #         redshift_metadata: {
    #           redshift_database: {
    #             database_name: "RedshiftDatabaseName", # required
    #             cluster_identifier: "RedshiftClusterIdentifier", # required
    #           },
    #           database_user_name: "RedshiftDatabaseUsername",
    #           select_sql_query: "RedshiftSelectSqlQuery"
    #         },
    #         rds_metadata: {
    #           database: {
    #             instance_identifier: "RDSInstanceIdentifier", # required
    #             database_name: "RDSDatabaseName", # required
    #           },
    #           database_user_name: "RDSDatabaseUsername",
    #           select_sql_query: "RDSSelectSqlQuery",
    #           resource_role: "EDPResourceRole",
    #           service_role: "EDPServiceRole",
    #           data_pipeline_id: "EDPPipelineId"
    #         },
    #         role_arn: "RoleARN",
    #         compute_statistics: false,
    #         compute_time: 1,
    #         finished_at: Time.now,
    #         started_at: Time.now
    #       }
    #     ],
    #     next_token: "StringType"
    #   }
    # @return [Types::DescribeDataSourcesOutput]
    def describe_data_sources(params = {}, options = {})
      request = build_request(:describe_data_sources, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>
    # @param [Hash, Types::DescribeEvaluationsInput] params
    # @option params [String] :filter_variable
    #   <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p>   
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> 
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>Evaluation</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>Evaluation</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    # @option params [String] :lt
    #   <p>The less than operator. The <code>Evaluation</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, an <code>Evaluation</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    # @option params [Integer] :limit
    #   <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_variable: "CreatedAt" # One of: ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"],
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc" # One of: ["asc", "dsc"],
    #     next_token: "StringType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         evaluation_id: "EntityId",
    #         ml_model_id: "EntityId",
    #         evaluation_data_source_id: "EntityId",
    #         input_data_location_s3: "S3Url",
    #         created_by_iam_user: "AwsUserArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         name: "EntityName",
    #         status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #         performance_metrics: {
    #           properties: {
    #             "PerformanceMetricsPropertyKey" => "PerformanceMetricsPropertyValue"
    #           }
    #         },
    #         message: "Message",
    #         compute_time: 1,
    #         finished_at: Time.now,
    #         started_at: Time.now
    #       }
    #     ],
    #     next_token: "StringType"
    #   }
    # @return [Types::DescribeEvaluationsOutput]
    def describe_evaluations(params = {}, options = {})
      request = build_request(:describe_evaluations, params)
      request.send_request(options)
    end

    # <p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>
    # @param [Hash, Types::DescribeMLModelsInput] params
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code>
    #                     <b> </b> 
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>MLModel</code> results will have 
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>MLModel</code> results will 
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    # @option params [String] :lt
    #   <p>The less than operator. The <code>MLModel</code> results will 
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
    #           <p>For example, an <code>MLModel</code> could have the <code>Name</code> 
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for 
    #               this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
    #               <code>Prefix</code>: 
    #           </p>
    #           
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    # @option params [Integer] :limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_variable: "CreatedAt" # One of: ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "TrainingDataSourceId", "RealtimeEndpointStatus", "MLModelType", "Algorithm", "TrainingDataURI"],
    #     eq: "ComparatorValue",
    #     gt: "ComparatorValue",
    #     lt: "ComparatorValue",
    #     ge: "ComparatorValue",
    #     le: "ComparatorValue",
    #     ne: "ComparatorValue",
    #     prefix: "ComparatorValue",
    #     sort_order: "asc" # One of: ["asc", "dsc"],
    #     next_token: "StringType",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_ml_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         ml_model_id: "EntityId",
    #         training_data_source_id: "EntityId",
    #         created_by_iam_user: "AwsUserArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         name: "MLModelName",
    #         status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #         size_in_bytes: 1,
    #         endpoint_info: {
    #           peak_requests_per_second: 1,
    #           created_at: Time.now,
    #           endpoint_url: "VipURL",
    #           endpoint_status: "NONE" # One of: ["NONE", "READY", "UPDATING", "FAILED"]
    #         },
    #         training_parameters: {
    #           "StringType" => "StringType"
    #         },
    #         input_data_location_s3: "S3Url",
    #         algorithm: "sgd" # One of: ["sgd"],
    #         ml_model_type: "REGRESSION" # One of: ["REGRESSION", "BINARY", "MULTICLASS"],
    #         score_threshold: 1.0,
    #         score_threshold_last_updated_at: Time.now,
    #         message: "Message",
    #         compute_time: 1,
    #         finished_at: Time.now,
    #         started_at: Time.now
    #       }
    #     ],
    #     next_token: "StringType"
    #   }
    # @return [Types::DescribeMLModelsOutput]
    def describe_ml_models(params = {}, options = {})
      request = build_request(:describe_ml_models, params)
      request.send_request(options)
    end

    # <p>Describes one or more of the tags for your Amazon ML object.</p>
    # @param [Hash, Types::DescribeTagsInput] params
    # @option params [String] :resource_id
    #   <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
    # @option params [String] :resource_type
    #   <p>The type of the ML object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "EntityId", # required
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"], # required
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "EntityId",
    #     resource_type: "BatchPrediction" # One of: ["BatchPrediction", "DataSource", "Evaluation", "MLModel"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTagsOutput]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a
    #             <code>Batch Prediction</code> request.</p>
    # @param [Hash, Types::GetBatchPredictionInput] params
    # @option params [String] :batch_prediction_id
    #   <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_prediction_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_batch_prediction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_prediction_id: "EntityId",
    #     ml_model_id: "EntityId",
    #     batch_prediction_data_source_id: "EntityId",
    #     input_data_location_s3: "S3Url",
    #     created_by_iam_user: "AwsUserArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     name: "EntityName",
    #     status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #     output_uri: "S3Url",
    #     log_uri: "PresignedS3Url",
    #     message: "Message",
    #     compute_time: 1,
    #     finished_at: Time.now,
    #     started_at: Time.now,
    #     total_record_count: 1,
    #     invalid_record_count: 1
    #   }
    # @return [Types::GetBatchPredictionOutput]
    def get_batch_prediction(params = {}, options = {})
      request = build_request(:get_batch_prediction, params)
      request.send_request(options)
    end

    # <p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p>
    #         <p>
    #             <code>GetDataSource</code> provides results in normal or verbose format. The verbose format 
    #             adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>
    # @param [Hash, Types::GetDataSourceInput] params
    # @option params [String] :data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> at creation.</p>
    # @option params [Boolean] :verbose
    #   <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p>
    #           <p>If true, <code>DataSourceSchema</code> is returned.</p>
    #           <p>If false, <code>DataSourceSchema</code> is not returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #     verbose: false
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId",
    #     data_location_s3: "S3Url",
    #     data_rearrangement: "DataRearrangement",
    #     created_by_iam_user: "AwsUserArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     data_size_in_bytes: 1,
    #     number_of_files: 1,
    #     name: "EntityName",
    #     status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #     log_uri: "PresignedS3Url",
    #     message: "Message",
    #     redshift_metadata: {
    #       redshift_database: {
    #         database_name: "RedshiftDatabaseName", # required
    #         cluster_identifier: "RedshiftClusterIdentifier", # required
    #       },
    #       database_user_name: "RedshiftDatabaseUsername",
    #       select_sql_query: "RedshiftSelectSqlQuery"
    #     },
    #     rds_metadata: {
    #       database: {
    #         instance_identifier: "RDSInstanceIdentifier", # required
    #         database_name: "RDSDatabaseName", # required
    #       },
    #       database_user_name: "RDSDatabaseUsername",
    #       select_sql_query: "RDSSelectSqlQuery",
    #       resource_role: "EDPResourceRole",
    #       service_role: "EDPServiceRole",
    #       data_pipeline_id: "EDPPipelineId"
    #     },
    #     role_arn: "RoleARN",
    #     compute_statistics: false,
    #     compute_time: 1,
    #     finished_at: Time.now,
    #     started_at: Time.now,
    #     data_source_schema: "DataSchema"
    #   }
    # @return [Types::GetDataSourceOutput]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>
    # @param [Hash, Types::GetEvaluationInput] params
    # @option params [String] :evaluation_id
    #   <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluation_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "EntityId",
    #     ml_model_id: "EntityId",
    #     evaluation_data_source_id: "EntityId",
    #     input_data_location_s3: "S3Url",
    #     created_by_iam_user: "AwsUserArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     name: "EntityName",
    #     status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #     performance_metrics: {
    #       properties: {
    #         "PerformanceMetricsPropertyKey" => "PerformanceMetricsPropertyValue"
    #       }
    #     },
    #     log_uri: "PresignedS3Url",
    #     message: "Message",
    #     compute_time: 1,
    #     finished_at: Time.now,
    #     started_at: Time.now
    #   }
    # @return [Types::GetEvaluationOutput]
    def get_evaluation(params = {}, options = {})
      request = build_request(:get_evaluation, params)
      request.send_request(options)
    end

    # <p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p>
    #         <p>
    #             <code>GetMLModel</code> provides results in normal or verbose format. </p>
    # @param [Hash, Types::GetMLModelInput] params
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> at creation.</p>
    # @option params [Boolean] :verbose
    #   <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p>
    #           <p>If true, <code>Recipe</code> is returned.</p>
    #           <p>If false, <code>Recipe</code> is not returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #     verbose: false
    #   }
    #   options = {}
    #   response = client.get_ml_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId",
    #     training_data_source_id: "EntityId",
    #     created_by_iam_user: "AwsUserArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     name: "MLModelName",
    #     status: "PENDING" # One of: ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"],
    #     size_in_bytes: 1,
    #     endpoint_info: {
    #       peak_requests_per_second: 1,
    #       created_at: Time.now,
    #       endpoint_url: "VipURL",
    #       endpoint_status: "NONE" # One of: ["NONE", "READY", "UPDATING", "FAILED"]
    #     },
    #     training_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     input_data_location_s3: "S3Url",
    #     ml_model_type: "REGRESSION" # One of: ["REGRESSION", "BINARY", "MULTICLASS"],
    #     score_threshold: 1.0,
    #     score_threshold_last_updated_at: Time.now,
    #     log_uri: "PresignedS3Url",
    #     message: "Message",
    #     compute_time: 1,
    #     finished_at: Time.now,
    #     started_at: Time.now,
    #     recipe: "Recipe",
    #     schema: "DataSchema"
    #   }
    # @return [Types::GetMLModelOutput]
    def get_ml_model(params = {}, options = {})
      request = build_request(:get_ml_model, params)
      request.send_request(options)
    end

    # <p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p>
    #         <p>
    #             <b>Note:</b> Not all response parameters will be populated. Whether a
    #           response parameter is populated depends on the type of model requested.</p>
    # @param [Hash, Types::PredictInput] params
    # @option params [String] :ml_model_id
    #   <p>A unique identifier of the <code>MLModel</code>.</p>
    # @option params [Hash<String, String>] :record
    #   <p>A map of variable name-value pairs that represent an observation.</p>
    # @option params [String] :predict_endpoint
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #     record: { # required
    #       "VariableName" => "VariableValue"
    #     },
    #     predict_endpoint: "VipURL", # required
    #   }
    #   options = {}
    #   response = client.predict(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prediction: {
    #       predicted_label: "Label",
    #       predicted_value: 1.0,
    #       predicted_scores: {
    #         "Label" => 1.0
    #       },
    #       details: {
    #         "DetailsAttributes" => "DetailsValue"
    #       }
    #     }
    #   }
    # @return [Types::PredictOutput]
    def predict(params = {}, options = {})
      request = build_request(:predict, params)
      request.send_request(options)
    end

    # <p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p>
    #         <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>
    # @param [Hash, Types::UpdateBatchPredictionInput] params
    # @option params [String] :batch_prediction_id
    #   <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
    # @option params [String] :batch_prediction_name
    #   <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch_prediction_id: "EntityId", # required
    #     batch_prediction_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.update_batch_prediction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_prediction_id: "EntityId"
    #   }
    # @return [Types::UpdateBatchPredictionOutput]
    def update_batch_prediction(params = {}, options = {})
      request = build_request(:update_batch_prediction, params)
      request.send_request(options)
    end

    # <p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p>
    #         <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>
    # @param [Hash, Types::UpdateDataSourceInput] params
    # @option params [String] :data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> during creation.</p>
    # @option params [String] :data_source_name
    #   <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_source_id: "EntityId", # required
    #     data_source_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_source_id: "EntityId"
    #   }
    # @return [Types::UpdateDataSourceOutput]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p>
    #         <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>
    # @param [Hash, Types::UpdateEvaluationInput] params
    # @option params [String] :evaluation_id
    #   <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
    # @option params [String] :evaluation_name
    #   <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     evaluation_id: "EntityId", # required
    #     evaluation_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.update_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "EntityId"
    #   }
    # @return [Types::UpdateEvaluationOutput]
    def update_evaluation(params = {}, options = {})
      request = build_request(:update_evaluation, params)
      request.send_request(options)
    end

    # <p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p>
    #         <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>
    # @param [Hash, Types::UpdateMLModelInput] params
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    # @option params [String] :ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    # @option params [Float] :score_threshold
    #   <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p>
    #           <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_model_id: "EntityId", # required
    #     ml_model_name: "EntityName",
    #     score_threshold: 1.0
    #   }
    #   options = {}
    #   response = client.update_ml_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_model_id: "EntityId"
    #   }
    # @return [Types::UpdateMLModelOutput]
    def update_ml_model(params = {}, options = {})
      request = build_request(:update_ml_model, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-machinelearning'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        batch_prediction_available: Waiters::BatchPredictionAvailable,
        data_source_available: Waiters::DataSourceAvailable,
        evaluation_available: Waiters::EvaluationAvailable,
        ml_model_available: Waiters::MLModelAvailable
      }
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
