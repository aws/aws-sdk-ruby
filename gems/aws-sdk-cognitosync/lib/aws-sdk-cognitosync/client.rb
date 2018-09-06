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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitosync)

module Aws::CognitoSync
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cognitosync

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Initiates a bulk publish of all existing datasets for an Identity Pool
    # to the configured stream. Customers are limited to one successful bulk
    # publish per 24 hours. Bulk publish is an asynchronous request,
    # customers can see the status of the request via the
    # GetBulkPublishDetails operation.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @return [Types::BulkPublishResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BulkPublishResponse#identity_pool_id #identity_pool_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.bulk_publish({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/BulkPublish AWS API Documentation
    #
    # @overload bulk_publish(params = {})
    # @param [Hash] params ({})
    def bulk_publish(params = {}, options = {})
      req = build_request(:bulk_publish, params)
      req.send_request(options)
    end

    # Deletes the specific dataset. The dataset will be deleted permanently,
    # and the action can't be undone. Datasets that this dataset was merged
    # with will no longer report the merge. Any subsequent operation on this
    # dataset will result in a ResourceNotFoundException.
    #
    # This API can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :dataset_name
    #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
    #   0-9, '\_' (underscore), '-' (dash), and '.' (dot).
    #
    # @return [Types::DeleteDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetResponse#dataset #dataset} => Types::Dataset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.identity_id #=> String
    #   resp.dataset.dataset_name #=> String
    #   resp.dataset.creation_date #=> Time
    #   resp.dataset.last_modified_date #=> Time
    #   resp.dataset.last_modified_by #=> String
    #   resp.dataset.data_storage #=> Integer
    #   resp.dataset.num_records #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Gets meta data about a dataset by identity and dataset name. With
    # Amazon Cognito Sync, each identity has access only to its own data.
    # Thus, the credentials used to make this API call need to have access
    # to the identity data.
    #
    # This API can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials. You should use Cognito
    # Identity credentials to make this API call.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :dataset_name
    #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
    #   0-9, '\_' (underscore), '-' (dash), and '.' (dot).
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset #dataset} => Types::Dataset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.identity_id #=> String
    #   resp.dataset.dataset_name #=> String
    #   resp.dataset.creation_date #=> Time
    #   resp.dataset.last_modified_date #=> Time
    #   resp.dataset.last_modified_by #=> String
    #   resp.dataset.data_storage #=> Integer
    #   resp.dataset.num_records #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Gets usage details (for example, data storage) about a particular
    # identity pool.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @return [Types::DescribeIdentityPoolUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityPoolUsageResponse#identity_pool_usage #identity_pool_usage} => Types::IdentityPoolUsage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_pool_usage({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_usage.identity_pool_id #=> String
    #   resp.identity_pool_usage.sync_sessions_count #=> Integer
    #   resp.identity_pool_usage.data_storage #=> Integer
    #   resp.identity_pool_usage.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeIdentityPoolUsage AWS API Documentation
    #
    # @overload describe_identity_pool_usage(params = {})
    # @param [Hash] params ({})
    def describe_identity_pool_usage(params = {}, options = {})
      req = build_request(:describe_identity_pool_usage, params)
      req.send_request(options)
    end

    # Gets usage information for an identity, including number of datasets
    # and data usage.
    #
    # This API can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @return [Types::DescribeIdentityUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityUsageResponse#identity_usage #identity_usage} => Types::IdentityUsage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_usage({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_usage.identity_id #=> String
    #   resp.identity_usage.identity_pool_id #=> String
    #   resp.identity_usage.last_modified_date #=> Time
    #   resp.identity_usage.dataset_count #=> Integer
    #   resp.identity_usage.data_storage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeIdentityUsage AWS API Documentation
    #
    # @overload describe_identity_usage(params = {})
    # @param [Hash] params ({})
    def describe_identity_usage(params = {}, options = {})
      req = build_request(:describe_identity_usage, params)
      req.send_request(options)
    end

    # Get the status of the last BulkPublish operation for an identity pool.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @return [Types::GetBulkPublishDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBulkPublishDetailsResponse#identity_pool_id #identity_pool_id} => String
    #   * {Types::GetBulkPublishDetailsResponse#bulk_publish_start_time #bulk_publish_start_time} => Time
    #   * {Types::GetBulkPublishDetailsResponse#bulk_publish_complete_time #bulk_publish_complete_time} => Time
    #   * {Types::GetBulkPublishDetailsResponse#bulk_publish_status #bulk_publish_status} => String
    #   * {Types::GetBulkPublishDetailsResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bulk_publish_details({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.bulk_publish_start_time #=> Time
    #   resp.bulk_publish_complete_time #=> Time
    #   resp.bulk_publish_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetBulkPublishDetails AWS API Documentation
    #
    # @overload get_bulk_publish_details(params = {})
    # @param [Hash] params ({})
    def get_bulk_publish_details(params = {}, options = {})
      req = build_request(:get_bulk_publish_details, params)
      req.send_request(options)
    end

    # Gets the events and the corresponding Lambda functions associated with
    # an identity pool.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   The Cognito Identity Pool ID for the request
    #
    # @return [Types::GetCognitoEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCognitoEventsResponse#events #events} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cognito_events({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Hash
    #   resp.events["CognitoEventType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetCognitoEvents AWS API Documentation
    #
    # @overload get_cognito_events(params = {})
    # @param [Hash] params ({})
    def get_cognito_events(params = {}, options = {})
      req = build_request(:get_cognito_events, params)
      req.send_request(options)
    end

    # Gets the configuration settings of an identity pool.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. This is the ID of the pool for which to return a
    #   configuration.
    #
    # @return [Types::GetIdentityPoolConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityPoolConfigurationResponse#identity_pool_id #identity_pool_id} => String
    #   * {Types::GetIdentityPoolConfigurationResponse#push_sync #push_sync} => Types::PushSync
    #   * {Types::GetIdentityPoolConfigurationResponse#cognito_streams #cognito_streams} => Types::CognitoStreams
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_pool_configuration({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.push_sync.application_arns #=> Array
    #   resp.push_sync.application_arns[0] #=> String
    #   resp.push_sync.role_arn #=> String
    #   resp.cognito_streams.stream_name #=> String
    #   resp.cognito_streams.role_arn #=> String
    #   resp.cognito_streams.streaming_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetIdentityPoolConfiguration AWS API Documentation
    #
    # @overload get_identity_pool_configuration(params = {})
    # @param [Hash] params ({})
    def get_identity_pool_configuration(params = {}, options = {})
      req = build_request(:get_identity_pool_configuration, params)
      req.send_request(options)
    end

    # Lists datasets for an identity. With Amazon Cognito Sync, each
    # identity has access only to its own data. Thus, the credentials used
    # to make this API call need to have access to the identity data.
    #
    # ListDatasets can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials. You should use the
    # Cognito Identity credentials to make this API call.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::Dataset&gt;
    #   * {Types::ListDatasetsResponse#count #count} => Integer
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].identity_id #=> String
    #   resp.datasets[0].dataset_name #=> String
    #   resp.datasets[0].creation_date #=> Time
    #   resp.datasets[0].last_modified_date #=> Time
    #   resp.datasets[0].last_modified_by #=> String
    #   resp.datasets[0].data_storage #=> Integer
    #   resp.datasets[0].num_records #=> Integer
    #   resp.count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Gets a list of identity pools registered with Cognito.
    #
    # ListIdentityPoolUsage can only be called with developer credentials.
    # You cannot make this API call with the temporary user credentials
    # provided by Cognito Identity.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @return [Types::ListIdentityPoolUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityPoolUsageResponse#identity_pool_usages #identity_pool_usages} => Array&lt;Types::IdentityPoolUsage&gt;
    #   * {Types::ListIdentityPoolUsageResponse#max_results #max_results} => Integer
    #   * {Types::ListIdentityPoolUsageResponse#count #count} => Integer
    #   * {Types::ListIdentityPoolUsageResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_pool_usage({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_usages #=> Array
    #   resp.identity_pool_usages[0].identity_pool_id #=> String
    #   resp.identity_pool_usages[0].sync_sessions_count #=> Integer
    #   resp.identity_pool_usages[0].data_storage #=> Integer
    #   resp.identity_pool_usages[0].last_modified_date #=> Time
    #   resp.max_results #=> Integer
    #   resp.count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListIdentityPoolUsage AWS API Documentation
    #
    # @overload list_identity_pool_usage(params = {})
    # @param [Hash] params ({})
    def list_identity_pool_usage(params = {}, options = {})
      req = build_request(:list_identity_pool_usage, params)
      req.send_request(options)
    end

    # Gets paginated records, optionally changed after a particular sync
    # count for a dataset and identity. With Amazon Cognito Sync, each
    # identity has access only to its own data. Thus, the credentials used
    # to make this API call need to have access to the identity data.
    #
    # ListRecords can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials. You should use Cognito
    # Identity credentials to make this API call.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :dataset_name
    #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
    #   0-9, '\_' (underscore), '-' (dash), and '.' (dot).
    #
    # @option params [Integer] :last_sync_count
    #   The last server sync count for this record.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @option params [String] :sync_session_token
    #   A token containing a session ID, identity ID, and expiration.
    #
    # @return [Types::ListRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecordsResponse#records #records} => Array&lt;Types::Record&gt;
    #   * {Types::ListRecordsResponse#next_token #next_token} => String
    #   * {Types::ListRecordsResponse#count #count} => Integer
    #   * {Types::ListRecordsResponse#dataset_sync_count #dataset_sync_count} => Integer
    #   * {Types::ListRecordsResponse#last_modified_by #last_modified_by} => String
    #   * {Types::ListRecordsResponse#merged_dataset_names #merged_dataset_names} => Array&lt;String&gt;
    #   * {Types::ListRecordsResponse#dataset_exists #dataset_exists} => Boolean
    #   * {Types::ListRecordsResponse#dataset_deleted_after_requested_sync_count #dataset_deleted_after_requested_sync_count} => Boolean
    #   * {Types::ListRecordsResponse#sync_session_token #sync_session_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_records({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     last_sync_count: 1,
    #     next_token: "String",
    #     max_results: 1,
    #     sync_session_token: "SyncSessionToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].key #=> String
    #   resp.records[0].value #=> String
    #   resp.records[0].sync_count #=> Integer
    #   resp.records[0].last_modified_date #=> Time
    #   resp.records[0].last_modified_by #=> String
    #   resp.records[0].device_last_modified_date #=> Time
    #   resp.next_token #=> String
    #   resp.count #=> Integer
    #   resp.dataset_sync_count #=> Integer
    #   resp.last_modified_by #=> String
    #   resp.merged_dataset_names #=> Array
    #   resp.merged_dataset_names[0] #=> String
    #   resp.dataset_exists #=> Boolean
    #   resp.dataset_deleted_after_requested_sync_count #=> Boolean
    #   resp.sync_session_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListRecords AWS API Documentation
    #
    # @overload list_records(params = {})
    # @param [Hash] params ({})
    def list_records(params = {}, options = {})
      req = build_request(:list_records, params)
      req.send_request(options)
    end

    # Registers a device to receive push sync notifications.
    #
    # This API can only be called with temporary credentials provided by
    # Cognito Identity. You cannot call this API with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. Here, the ID of the pool that the identity belongs to.
    #
    # @option params [required, String] :identity_id
    #   The unique ID for this identity.
    #
    # @option params [required, String] :platform
    #   The SNS platform type (e.g. GCM, SDM, APNS, APNS\_SANDBOX).
    #
    # @option params [required, String] :token
    #   The push token.
    #
    # @return [Types::RegisterDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterDeviceResponse#device_id #device_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_device({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     platform: "APNS", # required, accepts APNS, APNS_SANDBOX, GCM, ADM
    #     token: "PushToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/RegisterDevice AWS API Documentation
    #
    # @overload register_device(params = {})
    # @param [Hash] params ({})
    def register_device(params = {}, options = {})
      req = build_request(:register_device, params)
      req.send_request(options)
    end

    # Sets the AWS Lambda function for a given event type for an identity
    # pool. This request only updates the key/value pair specified. Other
    # key/values pairs are not updated. To remove a key value pair, pass a
    # empty value for the particular key.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   The Cognito Identity Pool to use when configuring Cognito Events
    #
    # @option params [required, Hash<String,String>] :events
    #   The events to configure
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_cognito_events({
    #     identity_pool_id: "IdentityPoolId", # required
    #     events: { # required
    #       "CognitoEventType" => "LambdaFunctionArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SetCognitoEvents AWS API Documentation
    #
    # @overload set_cognito_events(params = {})
    # @param [Hash] params ({})
    def set_cognito_events(params = {}, options = {})
      req = build_request(:set_cognito_events, params)
      req.send_request(options)
    end

    # Sets the necessary configuration for push sync.
    #
    # This API can only be called with developer credentials. You cannot
    # call this API with the temporary user credentials provided by Cognito
    # Identity.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. This is the ID of the pool to modify.
    #
    # @option params [Types::PushSync] :push_sync
    #   Options to apply to this identity pool for push synchronization.
    #
    # @option params [Types::CognitoStreams] :cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #
    # @return [Types::SetIdentityPoolConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetIdentityPoolConfigurationResponse#identity_pool_id #identity_pool_id} => String
    #   * {Types::SetIdentityPoolConfigurationResponse#push_sync #push_sync} => Types::PushSync
    #   * {Types::SetIdentityPoolConfigurationResponse#cognito_streams #cognito_streams} => Types::CognitoStreams
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_pool_configuration({
    #     identity_pool_id: "IdentityPoolId", # required
    #     push_sync: {
    #       application_arns: ["ApplicationArn"],
    #       role_arn: "AssumeRoleArn",
    #     },
    #     cognito_streams: {
    #       stream_name: "StreamName",
    #       role_arn: "AssumeRoleArn",
    #       streaming_status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.push_sync.application_arns #=> Array
    #   resp.push_sync.application_arns[0] #=> String
    #   resp.push_sync.role_arn #=> String
    #   resp.cognito_streams.stream_name #=> String
    #   resp.cognito_streams.role_arn #=> String
    #   resp.cognito_streams.streaming_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SetIdentityPoolConfiguration AWS API Documentation
    #
    # @overload set_identity_pool_configuration(params = {})
    # @param [Hash] params ({})
    def set_identity_pool_configuration(params = {}, options = {})
      req = build_request(:set_identity_pool_configuration, params)
      req.send_request(options)
    end

    # Subscribes to receive notifications when a dataset is modified by
    # another device.
    #
    # This API can only be called with temporary credentials provided by
    # Cognito Identity. You cannot call this API with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. The ID of the pool to which the identity belongs.
    #
    # @option params [required, String] :identity_id
    #   Unique ID for this identity.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset to subcribe to.
    #
    # @option params [required, String] :device_id
    #   The unique ID generated for this device by Cognito.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe_to_dataset({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SubscribeToDataset AWS API Documentation
    #
    # @overload subscribe_to_dataset(params = {})
    # @param [Hash] params ({})
    def subscribe_to_dataset(params = {}, options = {})
      req = build_request(:subscribe_to_dataset, params)
      req.send_request(options)
    end

    # Unsubscribes from receiving notifications when a dataset is modified
    # by another device.
    #
    # This API can only be called with temporary credentials provided by
    # Cognito Identity. You cannot call this API with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. The ID of the pool to which this identity belongs.
    #
    # @option params [required, String] :identity_id
    #   Unique ID for this identity.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset from which to unsubcribe.
    #
    # @option params [required, String] :device_id
    #   The unique ID generated for this device by Cognito.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe_from_dataset({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/UnsubscribeFromDataset AWS API Documentation
    #
    # @overload unsubscribe_from_dataset(params = {})
    # @param [Hash] params ({})
    def unsubscribe_from_dataset(params = {}, options = {})
      req = build_request(:unsubscribe_from_dataset, params)
      req.send_request(options)
    end

    # Posts updates to records and adds and deletes records for a dataset
    # and user.
    #
    # The sync count in the record patch is your last known sync count for
    # that record. The server will reject an UpdateRecords request with a
    # ResourceConflictException if you try to patch a record with a new
    # value but a stale sync count.
    #
    # For example, if the sync count on the server is 5 for a key called
    # highScore and you try and submit a new highScore with sync count of 4,
    # the request will be rejected. To obtain the current sync count for a
    # record, call ListRecords. On a successful update of the record, the
    # response returns the new sync count for that record. You should
    # present that sync count the next time you try to update that same
    # record. When the record does not exist, specify the sync count as 0.
    #
    # This API can be called with temporary user credentials provided by
    # Cognito Identity or with developer credentials.
    #
    # @option params [required, String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :identity_id
    #   A name-spaced GUID (for example,
    #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    #   Cognito. GUID generation is unique within a region.
    #
    # @option params [required, String] :dataset_name
    #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
    #   0-9, '\_' (underscore), '-' (dash), and '.' (dot).
    #
    # @option params [String] :device_id
    #   The unique ID generated for this device by Cognito.
    #
    # @option params [Array<Types::RecordPatch>] :record_patches
    #   A list of patch operations.
    #
    # @option params [required, String] :sync_session_token
    #   The SyncSessionToken returned by a previous call to ListRecords for
    #   this dataset and identity.
    #
    # @option params [String] :client_context
    #   Intended to supply a device ID that will populate the lastModifiedBy
    #   field referenced in other methods. The ClientContext field is not yet
    #   implemented.
    #
    # @return [Types::UpdateRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecordsResponse#records #records} => Array&lt;Types::Record&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_records({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId", # required
    #     dataset_name: "DatasetName", # required
    #     device_id: "DeviceId",
    #     record_patches: [
    #       {
    #         op: "replace", # required, accepts replace, remove
    #         key: "RecordKey", # required
    #         value: "RecordValue",
    #         sync_count: 1, # required
    #         device_last_modified_date: Time.now,
    #       },
    #     ],
    #     sync_session_token: "SyncSessionToken", # required
    #     client_context: "ClientContext",
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].key #=> String
    #   resp.records[0].value #=> String
    #   resp.records[0].sync_count #=> Integer
    #   resp.records[0].last_modified_date #=> Time
    #   resp.records[0].last_modified_by #=> String
    #   resp.records[0].device_last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/UpdateRecords AWS API Documentation
    #
    # @overload update_records(params = {})
    # @param [Hash] params ({})
    def update_records(params = {}, options = {})
      req = build_request(:update_records, params)
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
      context[:gem_name] = 'aws-sdk-cognitosync'
      context[:gem_version] = '1.3.0'
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
