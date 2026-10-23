# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lookoutvision)

module Aws::LookoutVision
  # An API client for Aws::LookoutVision.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LookoutVisionService
    @identifier = :lookoutvision

    add_plugin(::Aws::LookoutVision::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LookoutVision::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Creates a new dataset  in an Amazon Lookout for Vision project. <code>CreateDataset</code> can create a 
    #       training or a test dataset from a valid dataset source (<code>DatasetSource</code>).</p>
    #          <p>If you want a single dataset project, specify <code>train</code> for the value of 
    #          <code>DatasetType</code>.</p>
    #          <p>To have a project with separate training and test datasets, call <code>CreateDataset</code> twice.
    #            On the first call, specify <code>train</code> for the value of 
    #            <code>DatasetType</code>. On the second call, specify <code>test</code> for the value of 
    #            <code>DatasetType</code>. </p>
    #          <p>This operation requires permissions to perform the
    #            <code>lookoutvision:CreateDataset</code> operation.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project in which you want to create a dataset.</p>
    # @option params [String] :dataset_type
    #   <p>The type of the dataset. Specify <code>train</code> for a training dataset.
    #         Specify <code>test</code> for a test dataset.</p>
    # @option params [Types::DatasetSource] :dataset_source
    #   <p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>
    #            <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation 
    #         synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.
    #        </p>
    #            <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location
    #        is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous
    #        and might take a while to complete. To find out the current status, Check the value of <code>Status</code>
    #        returned in a call to <a>DescribeDataset</a>.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>CreateDataset</code>.
    #         In this case, safely retry your call
    #          to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency
    #          token is active for 8 hours.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #           version_id: "S3ObjectVersion"
    #         }
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_metadata: {
    #       dataset_type: "DatasetType",
    #       creation_timestamp: Time.now,
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #       status_message: "DatasetStatusMessage"
    #     }
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a new version of a model within an an Amazon Lookout for Vision project. 
    #       <code>CreateModel</code> is an asynchronous operation in which Amazon Lookout for Vision trains, tests,
    #        and evaluates a new version of a model. </p>
    #          <p>To get the current status, check the <code>Status</code> field returned
    #       in the response from <a>DescribeModel</a>.</p>
    #          <p>If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset
    #        to create a training and a test dataset.  
    #        If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test 
    #        the model. </p>
    #          <p>After training completes, the evaluation metrics are stored at the location specified in
    #         <code>OutputConfig</code>.  </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:CreateModel</code> operation. If you want to tag your model, you also require
    #          permission to the <code>lookoutvision:TagResource</code> operation.</p>
    # @param [Hash, Types::CreateModelRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project in which you want to create a model version.</p>
    # @option params [String] :description
    #   <p>A description for the version of the model.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
    #         completes only once.  You choose the value to pass. For example, An issue
    #         might prevent you from getting a response from <code>CreateModel</code>.
    #         In this case, safely retry your call
    #          to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #               This prevents retries after a network error from starting multiple training jobs. You'll need to
    #               provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>The location where Amazon Lookout for Vision saves the training results.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS KMS key.
    #            The key is used to encrypt training and test images copied into the service for model training. Your 
    #            source images are unaffected.
    #            If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     description: "ModelDescriptionMessage",
    #     client_token: "ClientToken",
    #     output_config: { # required
    #       s3_location: { # required
    #         bucket: "S3BucketName", # required
    #         prefix: "S3KeyPrefix"
    #       }
    #     },
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_metadata: {
    #       creation_timestamp: Time.now,
    #       model_version: "ModelVersion",
    #       model_arn: "ModelArn",
    #       description: "ModelDescriptionMessage",
    #       status: "TRAINING" # One of: ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"],
    #       status_message: "ModelStatusMessage",
    #       performance: {
    #         f1_score: 1.0,
    #         recall: 1.0,
    #         precision: 1.0
    #       }
    #     }
    #   }
    # @return [Types::CreateModelResponse]
    def create_model(params = {}, options = {})
      request = build_request(:create_model, params)
      request.send_request(options)
    end

    # <p>Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling
    #          <a>CreateDataset</a>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:CreateProject</code> operation.</p>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :project_name
    #   <p>The name for the project.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from 
    #         getting a response from <code>CreateProject</code>.
    #         In this case, safely retry your call
    #          to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #             This prevents retries after a network error from making multiple project creation requests. You'll need to
    #              provide your own value for other use cases. </p>
    #            <p>An error occurs
    #          if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency
    #          token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_metadata: {
    #       project_arn: "ProjectArn",
    #       project_name: "ProjectName",
    #       creation_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateProjectResponse]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Deletes an existing Amazon Lookout for Vision <code>dataset</code>. </p>
    #          <p>If your the project has a single
    #       dataset, you must create a new dataset before you can create a model.</p>
    #          <p>If you project has a training dataset and a test dataset consider the following. </p>
    #          <ul>
    #             <li>
    #                <p>If you delete the test dataset, your project reverts to a single dataset project. If you then
    #       train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.</p>
    #             </li>
    #             <li>
    #                <p>If you delete the training dataset, you must create a training dataset before you can create a model.</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteDataset</code> operation.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to delete.</p>
    # @option params [String] :dataset_type
    #   <p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.
    #         Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project, 
    #            specify <code>train</code>.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from getting a response from <code>DeleteDataset</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #                    This prevents retries after a network error from making multiple deletetion requests. You'll need to
    #                    provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency
    #          token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model,
    #       use the <a>StopModel</a> operation.</p>
    #          <p>It might take a few seconds to delete a model. To determine if a model has been deleted, call
    #          <a>ListModels</a> and check if the version of the model (<code>ModelVersion</code>) is in the
    #          <code>Models</code> array. </p>
    #          <p></p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteModel</code> operation.</p>
    # @param [Hash, Types::DeleteModelRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to delete.</p>
    # @option params [String] :model_version
    #   <p>The version of the model that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>
    #         completes only once.  You choose the value to pass. For example, an issue might prevent
    #         you from getting a response from <code>DeleteModel</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for ClientToken, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple model deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersionNoLatest", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ModelArn"
    #   }
    # @return [Types::DeleteModelResponse]
    def delete_model(params = {}, options = {})
      request = build_request(:delete_model, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Lookout for Vision project.</p>
    #          <p>To delete a project, you must first delete each version of the model associated with 
    #          the project. To delete a model use the <a>DeleteModel</a> operation.</p>
    #          <p>You also have to delete the dataset(s) associated with the model. For more information, see 
    #          <a>DeleteDataset</a>.  The images referenced by the training and test datasets aren't deleted. 
    #       </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteProject</code> operation.</p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project to delete.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>DeleteProject</code>.
    #            In this case, safely retry your call
    #            to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple project deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency
    #            token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "ProjectArn"
    #   }
    # @return [Types::DeleteProjectResponse]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Describe an Amazon Lookout for Vision dataset.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeDataset</code> operation.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to describe.</p>
    # @option params [String] :dataset_type
    #   <p>The type of the dataset to describe. Specify <code>train</code> to describe the 
    #         training dataset. Specify <code>test</code> to describe the test dataset.
    #         If you have a single dataset project, specify <code>train</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_description: {
    #       project_name: "ProjectName",
    #       dataset_type: "DatasetType",
    #       creation_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #       status_message: "DatasetStatusMessage",
    #       image_stats: {
    #         total: 1,
    #         labeled: 1,
    #         normal: 1,
    #         anomaly: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Describes a version of an Amazon Lookout for Vision model.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeModel</code> operation.</p>
    # @param [Hash, Types::DescribeModelRequest] params
    # @option params [String] :project_name
    #   <p>The project that contains the version of a model that you want to describe.</p>
    # @option params [String] :model_version
    #   <p>The version of the model that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #   }
    #   options = {}
    #   response = client.describe_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_description: {
    #       model_version: "ModelVersion",
    #       model_arn: "ModelArn",
    #       creation_timestamp: Time.now,
    #       description: "ModelDescriptionMessage",
    #       status: "TRAINING" # One of: ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"],
    #       status_message: "ModelStatusMessage",
    #       performance: {
    #         f1_score: 1.0,
    #         recall: 1.0,
    #         precision: 1.0
    #       },
    #       output_config: {
    #         s3_location: { # required
    #           bucket: "S3BucketName", # required
    #           prefix: "S3KeyPrefix"
    #         }
    #       },
    #       evaluation_manifest: {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       },
    #       evaluation_result: {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       },
    #       evaluation_end_timestamp: Time.now,
    #       kms_key_id: "KmsKeyId",
    #       min_inference_units: 1,
    #       max_inference_units: 1
    #     }
    #   }
    # @return [Types::DescribeModelResponse]
    def describe_model(params = {}, options = {})
      request = build_request(:describe_model, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon Lookout for Vision model packaging job.
    # </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeModelPackagingJob</code> operation.</p>
    #          <p>For more information, see 
    #          <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    # @param [Hash, Types::DescribeModelPackagingJobRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model packaging job that you want to describe. 
    #   </p>
    # @option params [String] :job_name
    #   <p>The job name for the model packaging job. 
    #   
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     job_name: "ModelPackagingJobName", # required
    #   }
    #   options = {}
    #   response = client.describe_model_packaging_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_packaging_description: {
    #       job_name: "ModelPackagingJobName",
    #       project_name: "ProjectName",
    #       model_version: "ModelVersion",
    #       model_packaging_configuration: {
    #         greengrass: { # required
    #           compiler_options: "CompilerOptions",
    #           target_device: "jetson_xavier" # One of: ["jetson_xavier"],
    #           target_platform: {
    #             os: "LINUX" # One of: ["LINUX"], # required
    #             arch: "ARM64" # One of: ["ARM64", "X86_64"], # required
    #             accelerator: "NVIDIA" # One of: ["NVIDIA"]
    #           },
    #           s3_output_location: { # required
    #             bucket: "S3BucketName", # required
    #             prefix: "S3KeyPrefix"
    #           },
    #           component_name: "ComponentName", # required
    #           component_version: "ComponentVersion",
    #           component_description: "ComponentDescription",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       model_packaging_job_description: "ModelPackagingJobDescription",
    #       model_packaging_method: "ModelPackagingMethod",
    #       model_packaging_output_details: {
    #         greengrass: {
    #           component_version_arn: "ComponentVersionArn",
    #           component_name: "ComponentName",
    #           component_version: "ComponentVersion"
    #         }
    #       },
    #       status: "CREATED" # One of: ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"],
    #       status_message: "ModelPackagingStatusMessage",
    #       creation_timestamp: Time.now,
    #       last_updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeModelPackagingJobResponse]
    def describe_model_packaging_job(params = {}, options = {})
      request = build_request(:describe_model_packaging_job, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon Lookout for Vision project.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeProject</code> operation.</p>
    # @param [Hash, Types::DescribeProjectRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #   }
    #   options = {}
    #   response = client.describe_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_description: {
    #       project_arn: "ProjectArn",
    #       project_name: "ProjectName",
    #       creation_timestamp: Time.now,
    #       datasets: [
    #         {
    #           dataset_type: "DatasetType",
    #           creation_timestamp: Time.now,
    #           status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #           status_message: "DatasetStatusMessage"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeProjectResponse]
    def describe_project(params = {}, options = {})
      request = build_request(:describe_project, params)
      request.send_request(options)
    end

    # <p>Detects anomalies in an image that you supply. </p>
    #          <p>The response from <code>DetectAnomalies</code> includes a boolean prediction
    #          that the image contains one or more anomalies and a confidence value for the prediction.
    #       If the model is an image segmentation model, the response also includes segmentation
    #       information for each type of anomaly found in the image.</p>
    #          <note>
    #             <p>Before calling <code>DetectAnomalies</code>, you must first start your model with the <a>StartModel</a> operation.
    #          You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your
    #          model uses. If you are not using a model, use the <a>StopModel</a> operation to stop your model. </p>
    #          </note>
    #          <p>For more information, see <i>Detecting anomalies in an image</i> in the Amazon Lookout for Vision developer guide.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DetectAnomalies</code> operation.</p>
    # @param [Hash, Types::DetectAnomaliesRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model version that you want to use.</p>
    # @option params [String] :model_version
    #   <p>The version of the model that you want to use.</p>
    # @option params [String] :body
    #   <p>The unencrypted image bytes that you want to analyze. </p>
    # @option params [String] :content_type
    #   <p>The type of the image passed in <code>Body</code>.
    #            Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     body: File.read("source_file"), # required
    #     content_type: "ContentType", # required
    #   }
    #   options = {}
    #   response = client.detect_anomalies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detect_anomaly_result: {
    #       source: {
    #         type: "ImageSourceType"
    #       },
    #       is_anomalous: false,
    #       confidence: 1.0,
    #       anomalies: [
    #         {
    #           name: "AnomalyName",
    #           pixel_anomaly: {
    #             total_percentage_area: 1.0,
    #             color: "Color"
    #           }
    #         }
    #       ],
    #       anomaly_mask: "data"
    #     }
    #   }
    # @return [Types::DetectAnomaliesResponse]
    def detect_anomalies(params = {}, options = {})
      request = build_request(:detect_anomalies, params)
      request.send_request(options)
    end

    # <p>Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly
    #       information for a single image, including the image location and the assigned label.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListDatasetEntries</code> operation.</p>
    # @param [Hash, Types::ListDatasetEntriesRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to list.</p>
    # @option params [String] :dataset_type
    #   <p>The type of the dataset that you want to list.  Specify <code>train</code> to list 
    #            the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset
    #         project, specify <code>train</code>.</p>
    # @option params [Boolean] :labeled
    #   <p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you
    #         don't specify a value, Lookout for Vision returns all entries.</p>
    # @option params [String] :anomaly_class
    #   <p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include
    #            anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>
    # @option params [Time] :before_creation_date
    #   <p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    # @option params [Time] :after_creation_date
    #   <p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of dataset entries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    # @option params [String] :source_ref_contains
    #   <p>Perform a "contains" search on the  values of the <code>source-ref</code> key within the dataset. 
    #            For example a value of "IMG_17"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     labeled: false,
    #     anomaly_class: "AnomalyClassFilter",
    #     before_creation_date: Time.now,
    #     after_creation_date: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     source_ref_contains: "QueryString"
    #   }
    #   options = {}
    #   response = client.list_dataset_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_entries: ["DatasetEntry"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDatasetEntriesResponse]
    def list_dataset_entries(params = {}, options = {})
      request = build_request(:list_dataset_entries, params)
      request.send_request(options)
    end

    # <p>
    # Lists the model packaging jobs created for an Amazon Lookout for Vision project.
    # </p>
    #          <p>This operation requires permissions to perform the
    #     <code>lookoutvision:ListModelPackagingJobs</code> operation.
    # </p>
    #          <p>For more information, see 
    #       <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    # @param [Hash, Types::ListModelPackagingJobsRequest] params
    # @option params [String] :project_name
    #   <p>
    #   The name of the project for which you want to list the model packaging jobs.
    #   </p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination 
    #         token to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_model_packaging_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_packaging_jobs: [
    #       {
    #         job_name: "ModelPackagingJobName",
    #         project_name: "ProjectName",
    #         model_version: "ModelVersion",
    #         model_packaging_job_description: "ModelPackagingJobDescription",
    #         model_packaging_method: "ModelPackagingMethod",
    #         status: "CREATED" # One of: ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"],
    #         status_message: "ModelPackagingStatusMessage",
    #         creation_timestamp: Time.now,
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListModelPackagingJobsResponse]
    def list_model_packaging_jobs(params = {}, options = {})
      request = build_request(:list_model_packaging_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the versions of a model in an Amazon Lookout for Vision project.</p>
    #          <p>The <code>ListModels</code> operation is eventually consistent.  
    #          Recent calls to <code>CreateModel</code> might
    #          take a while to appear in the response from <code>ListProjects</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListModels</code> operation.</p>
    # @param [Hash, Types::ListModelsRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model versions that you want to list.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of models.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     models: [
    #       {
    #         creation_timestamp: Time.now,
    #         model_version: "ModelVersion",
    #         model_arn: "ModelArn",
    #         description: "ModelDescriptionMessage",
    #         status: "TRAINING" # One of: ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"],
    #         status_message: "ModelStatusMessage",
    #         performance: {
    #           f1_score: 1.0,
    #           recall: 1.0,
    #           precision: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListModelsResponse]
    def list_models(params = {}, options = {})
      request = build_request(:list_models, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Lookout for Vision projects in your AWS account that are in the AWS Region in 
    #       which you call <code>ListProjects</code>.</p>
    #          <p>The <code>ListProjects</code> operation is eventually consistent.  
    #          Recent calls to <code>CreateProject</code> and <code>DeleteProject</code> might
    #          take a while to appear in the response from <code>ListProjects</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListProjects</code> operation.</p>
    # @param [Hash, Types::ListProjectsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of projects.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [
    #       {
    #         project_arn: "ProjectArn",
    #         project_name: "ProjectName",
    #         creation_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProjectsResponse]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags attached to the specified Amazon Lookout for Vision model.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListTagsForResource</code> operation.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while
    #          to complete. To check the current state of the model, use <a>DescribeModel</a>.</p>
    #          <p>A model is ready to use when its status is <code>HOSTED</code>.</p>
    #          <p>Once the model is running, you can detect custom labels in new images by calling 
    #          <a>DetectAnomalies</a>.</p>
    #          <note>
    #             <p>You are charged for the amount of time that the model is running. To stop a running
    #          model, call <a>StopModel</a>.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:StartModel</code> operation.</p>
    # @param [Hash, Types::StartModelRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to start.</p>
    # @option params [String] :model_version
    #   <p>The version of the model that you want to start.</p>
    # @option params [Integer] :min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #            inference unit represents 1 hour of processing. 
    #            Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #            of inference units that you use.
    #         </p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue might prevent 
    #            you from getting a response from <code>StartModel</code>.
    #            In this case, safely retry your call
    #            to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple start requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    # @option params [Integer] :max_inference_units
    #   <p>The maximum number of inference units to use for auto-scaling the model. If you don't
    #            specify a value, Amazon Lookout for Vision doesn't auto-scale the model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     min_inference_units: 1, # required
    #     client_token: "ClientToken",
    #     max_inference_units: 1
    #   }
    #   options = {}
    #   response = client.start_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "STARTING_HOSTING" # One of: ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #   }
    # @return [Types::StartModelResponse]
    def start_model(params = {}, options = {})
      request = build_request(:start_model, params)
      request.send_request(options)
    end

    # <p>Starts an Amazon Lookout for Vision model packaging job. A model packaging job creates an AWS IoT Greengrass component for
    #    a Lookout for Vision model. You can use the component to deploy your model to an edge device managed by Greengrass.
    # </p>
    #          <p>Use the <a>DescribeModelPackagingJob</a> API to determine the current status of the job.
    #      
    #   The model packaging job is complete if the value of <code>Status</code> is <code>SUCCEEDED</code>.</p>
    #          <p>To deploy the component
    #       to the target device, use the component name and component version
    #       with the AWS IoT Greengrass <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html">CreateDeployment</a> API.</p>
    #          <p>This operation requires the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>lookoutvision:StartModelPackagingJob</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:PutObject</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:GetBucketLocation</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>kms:GenerateDataKey</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>greengrass:CreateComponentVersion</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>greengrass:DescribeComponent</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>(Optional) <code>greengrass:TagResource</code>. Only required if you want to tag the component.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see 
    #       <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    # @param [Hash, Types::StartModelPackagingJobRequest] params
    # @option params [String] :project_name
    #   <p>
    #   The name of the project which contains the version of the model that you want to package.
    #   </p>
    # @option params [String] :model_version
    #   <p>
    #   The version of the model within the project that you want to package.
    #   </p>
    # @option params [String] :job_name
    #   <p>A name for the model packaging job. If you don't supply a value, the service creates
    #      a job name for you.
    #   </p>
    # @option params [Types::ModelPackagingConfiguration] :configuration
    #   <p>The configuration for the model packaging job.
    #   </p>
    # @option params [String] :description
    #   <p>A description for the model packaging job.
    #   </p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModelPackagingJob</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>StartModelPackagingJob</code>.
    #         In this case, safely retry your call
    #         to <code>StartModelPackagingJob</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #         This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #         provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #         value for <code>ClientToken</code> is considered a new call to <code>StartModelPackagingJob</code>. An idempotency
    #         token is active for 8 hours.
    #      </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     job_name: "ModelPackagingJobName",
    #     configuration: { # required
    #       greengrass: { # required
    #         compiler_options: "CompilerOptions",
    #         target_device: "jetson_xavier" # One of: ["jetson_xavier"],
    #         target_platform: {
    #           os: "LINUX" # One of: ["LINUX"], # required
    #           arch: "ARM64" # One of: ["ARM64", "X86_64"], # required
    #           accelerator: "NVIDIA" # One of: ["NVIDIA"]
    #         },
    #         s3_output_location: { # required
    #           bucket: "S3BucketName", # required
    #           prefix: "S3KeyPrefix"
    #         },
    #         component_name: "ComponentName", # required
    #         component_version: "ComponentVersion",
    #         component_description: "ComponentDescription",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     },
    #     description: "ModelPackagingJobDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_model_packaging_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_name: "ModelPackagingJobName"
    #   }
    # @return [Types::StartModelPackagingJobResponse]
    def start_model_packaging_job(params = {}, options = {})
      request = build_request(:start_model_packaging_job, params)
      request.send_request(options)
    end

    # <p>Stops the hosting of a running model. The operation might take a while to complete. To
    #          check the current status, call <a>DescribeModel</a>. </p>
    #          <p>After the model hosting stops, the <code>Status</code> of the model is <code>TRAINED</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:StopModel</code> operation.</p>
    # @param [Hash, Types::StopModelRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to stop.</p>
    # @option params [String] :model_version
    #   <p>The version of the model that you want to stop.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue 
    #            might prevent you from getting a response from <code>StopModel</code>.
    #            In this case, safely retry your call
    #            to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple stop requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency
    #            token is active for 8 hours.
    #            
    #           
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     model_version: "ModelVersion", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.stop_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "STARTING_HOSTING" # One of: ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #   }
    # @return [Types::StopModelResponse]
    def stop_model(params = {}, options = {})
      request = build_request(:stop_model, params)
      request.send_request(options)
    end

    # <p>Adds one or more key-value tags to an Amazon Lookout for Vision model. 
    #          For more information, see <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:TagResource</code> operation.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value tags to assign to the model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from an Amazon Lookout for Vision model. For more information, see 
    #          <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:UntagResource</code> operation.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Adds or updates one or more JSON Line entries in a dataset. A JSON Line includes information about an image
    #          used for training or testing an Amazon Lookout for Vision model.</p>
    #          <p>To update an existing JSON Line, use the <code>source-ref</code> field to identify the JSON Line. The JSON line
    #          that you supply replaces the existing JSON line. Any existing annotations that are not in the new JSON line are removed from the dataset.
    #       </p>
    #          <p>For more information, see 
    #          <i>Defining JSON lines for anomaly classification</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #          <note>
    #             <p>The images you reference in the <code>source-ref</code> field of a JSON line, must be 
    #       in the same S3 bucket as the existing images in the dataset. </p>
    #          </note>
    #          <p>Updating a dataset might take a while to complete. To check the current status, call <a>DescribeDataset</a> and
    #          check the <code>Status</code> field in the response.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:UpdateDatasetEntries</code> operation.</p>
    # @param [Hash, Types::UpdateDatasetEntriesRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to update.</p>
    # @option params [String] :dataset_type
    #   <p>The type of the dataset that you want to update. Specify <code>train</code> to update
    #         the training dataset. Specify <code>test</code> to update the test dataset. If you
    #          have a single dataset project, specify <code>train</code>.</p>
    # @option params [String] :changes
    #   <p>The entries to add to the dataset.</p>
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>
    #            completes only once.  You choose the value to pass. For example, An issue 
    #            might prevent you from getting a response from <code>UpdateDatasetEntries</code>.
    #            In this case, safely retry your call
    #            to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you. 
    #            This prevents retries after a network error from making multiple updates with the same dataset entries. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs
    #            if the other input parameters are not the same as in the first request. Using a different  
    #            value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     dataset_type: "DatasetType", # required
    #     changes: "data", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_dataset_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #   }
    # @return [Types::UpdateDatasetEntriesResponse]
    def update_dataset_entries(params = {}, options = {})
      request = build_request(:update_dataset_entries, params)
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
      context[:gem_name] = 'aws-sdk-lookoutvision'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
