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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::Synthetics
  # An API client for Aws::Synthetics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Synthetics

    add_plugin(::Aws::Synthetics::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Synthetics::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates a canary with a group. Using groups can help you with
    #          managing and automating your canaries, and you can also view aggregated run results and statistics
    #          for all canaries in a group. </p>
    #          <p>You must run this operation in the Region where the canary exists.</p>
    # @param [Hash, Types::AssociateResourceRequest] params
    # @option params [String] :group_identifier
    #   <p>Specifies the group. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you want to associate with the specified group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_identifier: "GroupIdentifier", # required
    #     resource_arn: "CanaryArn", # required
    #   }
    #   options = {}
    #   response = client.associate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateResourceResponse]
    def associate_resource(params = {}, options = {})
      request = build_request(:associate_resource, params)
      request.send_request(options)
    end

    # <p>Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the
    #          outside-in. Canaries help you check the availability and latency of your web services and
    #          troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and
    #          metrics. You can set up a canary to run continuously or just once. </p>
    #          <p>Do not use <code>CreateCanary</code> to modify an existing canary. Use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html">UpdateCanary</a> instead.</p>
    #          <p>To create canaries, you must have the <code>CloudWatchSyntheticsFullAccess</code> policy.
    #          If you are creating a new IAM role for the canary, you also need the
    #          <code>iam:CreateRole</code>, <code>iam:CreatePolicy</code> and
    #             <code>iam:AttachRolePolicy</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles">Necessary
    #             Roles and Permissions</a>.</p>
    #          <p>Do not include secrets or proprietary information in your canary names. The canary name
    #          makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in
    #          outbound calls over the internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #             Considerations for Synthetics Canaries</a>.</p>
    # @param [Hash, Types::CreateCanaryRequest] params
    # @option params [String] :name
    #   <p>The name for this canary. Be sure to give it a descriptive name 
    #            that distinguishes it from other canaries in your account.</p>
    #            <p>Do not include secrets or proprietary information in your canary names. The canary name
    #            makes up part of the canary ARN, and the ARN is included in outbound calls over the
    #            internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #               Considerations for Synthetics Canaries</a>.</p>
    # @option params [Types::CanaryCodeInput] :code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in 
    #            an Amazon S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    # @option params [String] :artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the 
    #            Amazon S3 bucket can't include a period (.).</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:PutLogEvents</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::CanaryScheduleInput] :schedule
    #   <p>A structure that contains information about how often the canary is to run and when
    #            these test runs are to stop.</p>
    # @option params [Types::CanaryRunConfigInput] :run_config
    #   <p>A structure that contains the configuration for individual canary runs, 
    #            such as timeout value and environment variables.</p>
    #            <important>
    #               <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables 
    #            are not encrypted on the client side. Do not store sensitive information
    #            in them.</p>
    #            </important>
    # @option params [Integer] :success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [Integer] :failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [String] :runtime_version
    #   <p>Specifies the runtime version to use for the canary. For a list of valid
    #            runtime versions and more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    # @option params [Types::VpcConfigInput] :vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #         information about the subnet and security groups of the VPC endpoint. 
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #            Running a Canary in a VPC</a>.</p>
    # @option params [Array<String>] :resources_to_replicate_tags
    #   <p>To have the tags that you apply to this canary also be applied to the Lambda function that
    #            the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>
    #            <p>If you specify this parameter and don't specify any tags in the <code>Tags</code>
    #            parameter, the canary creation fails.</p>
    # @option params [String] :provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #         when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means
    #            that the Lambda functions and layers will be deleted when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the canary. 
    #            You can associate as many as 50 tags with a canary.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by 
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    #            <p>To have the tags that you apply to this canary also be applied to the Lambda function that
    #            the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>
    # @option params [Types::ArtifactConfigInput] :artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including 
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     code: { # required
    #       s3_bucket: "String",
    #       s3_key: "String",
    #       s3_version: "String",
    #       zip_file: "data",
    #       handler: "CodeHandler", # required
    #       dependencies: [
    #         {
    #           type: "LambdaLayer" # One of: ["LambdaLayer"],
    #           reference: "String", # required
    #         }
    #       ]
    #     },
    #     artifact_s3_location: "String", # required
    #     execution_role_arn: "RoleArn", # required
    #     schedule: { # required
    #       expression: "String", # required
    #       duration_in_seconds: 1,
    #       retry_config: {
    #         max_retries: 1, # required
    #       }
    #     },
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #       environment_variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       ephemeral_storage: 1
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     runtime_version: "String", # required
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     resources_to_replicate_tags: ["lambda-function" # One of: ["lambda-function"]],
    #     provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     artifact_config: {
    #       s3_encryption: {
    #         encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canary: {
    #       id: "UUID",
    #       name: "CanaryName",
    #       code: {
    #         source_location_arn: "String",
    #         handler: "String",
    #         dependencies: [
    #           {
    #             type: "LambdaLayer" # One of: ["LambdaLayer"],
    #             reference: "String", # required
    #           }
    #         ]
    #       },
    #       execution_role_arn: "RoleArn",
    #       schedule: {
    #         expression: "String",
    #         duration_in_seconds: 1,
    #         retry_config: {
    #           max_retries: 1
    #         }
    #       },
    #       run_config: {
    #         timeout_in_seconds: 1,
    #         memory_in_mb: 1,
    #         active_tracing: false,
    #         ephemeral_storage: 1
    #       },
    #       success_retention_period_in_days: 1,
    #       failure_retention_period_in_days: 1,
    #       status: {
    #         state: "CREATING" # One of: ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"],
    #         state_reason: "String",
    #         state_reason_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #       },
    #       timeline: {
    #         created: Time.now,
    #         last_modified: Time.now,
    #         last_started: Time.now,
    #         last_stopped: Time.now
    #       },
    #       artifact_s3_location: "String",
    #       engine_arn: "FunctionArn",
    #       runtime_version: "String",
    #       vpc_config: {
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         ipv6_allowed_for_dual_stack: false
    #       },
    #       visual_reference: {
    #         base_screenshots: [
    #           {
    #             screenshot_name: "String", # required
    #             ignore_coordinates: ["BaseScreenshotConfigIgnoreCoordinate"]
    #           }
    #         ],
    #         base_canary_run_id: "String"
    #       },
    #       provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       artifact_config: {
    #         s3_encryption: {
    #           encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       dry_run_config: {
    #         dry_run_id: "UUID",
    #         last_dry_run_execution_status: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateCanaryResponse]
    def create_canary(params = {}, options = {})
      request = build_request(:create_canary, params)
      request.send_request(options)
    end

    # <p>Creates a group which you can use to associate canaries with each other, including cross-Region
    #          canaries. Using groups can help you with
    #          managing and automating your canaries, and you can also view aggregated run results and statistics
    #       for all canaries in a group. </p>
    #          <p>Groups are global resources. When you create a group, it is replicated across Amazon Web Services Regions, and 
    #          you can view it and add canaries to it from any Region.
    #          Although the group ARN format reflects the Region name where it was created, a group is not constrained to any Region. 
    #          This means that you can put canaries from multiple Regions into the same group, and then use
    #       that group to view and manage all of those canaries in a single view.</p>
    #          <p>Groups are supported in all Regions except the Regions that are disabled by default. For more information
    #          about these Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">Enabling a Region</a>.</p>
    #          <p>Each group can contain as many as 10 canaries. You can have as many as 20 groups in your account. Any single canary
    #       can be a member of up to 10 groups.</p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :name
    #   <p>The name for the group. It can include any Unicode characters.</p>
    #            <p>The names for all groups in your account, across all Regions, must be unique.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the group. 
    #            You can associate as many as 50 tags with a group.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by 
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GroupName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       id: "String",
    #       name: "GroupName",
    #       arn: "GroupArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the specified canary.</p>
    #          <p>If the canary's <code>ProvisionedResourceCleanup</code> field is set to <code>AUTOMATIC</code> 
    #          or you specify <code>DeleteLambda</code> in this operation as <code>true</code>, CloudWatch Synthetics also deletes
    #          the Lambda functions and layers that are used by the canary.</p>
    #          <p>Other resources used and created by the canary are not automatically deleted. 
    #          After you delete a canary, you
    #       should also delete the following:</p>
    #          <ul>
    #             <li>
    #                <p>The CloudWatch alarms created for this canary. These alarms have a name of
    #                <code>Synthetics-Alarm-<i>first-198-characters-of-canary-name</i>-<i>canaryId</i>-<i>alarm number</i>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Amazon S3 objects and buckets, such as the canary's artifact location.</p>
    #             </li>
    #             <li>
    #                <p>IAM roles created for the canary. If they were created in the console, these roles
    #                have the name <code>
    #                      role/service-role/CloudWatchSyntheticsRole-<i>First-21-Characters-of-CanaryName</i>
    #                   </code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>CloudWatch Logs log groups created for the canary. These logs groups have the name
    #                <code>/aws/lambda/cwsyn-<i>First-21-Characters-of-CanaryName</i>
    #                   </code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Before you delete a canary, you might want to use <code>GetCanary</code> to display
    #          the information about this canary. Make
    #          note of the information returned by this operation so that you can delete these resources
    #          after you delete the canary.</p>
    # @param [Hash, Types::DeleteCanaryRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to delete. To find the names of your canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    # @option params [Boolean] :delete_lambda
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary. The default
    #         is <code>false</code>.</p>
    #            <p>Your setting for this parameter is used only if the canary doesn't have <code>AUTOMATIC</code> for its 
    #          <code>ProvisionedResourceCleanup</code> field. If that field is set to <code>AUTOMATIC</code>, then the 
    #          Lambda functions and layers will be deleted when this canary is deleted. </p>
    #            <p>Type: Boolean</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     delete_lambda: false
    #   }
    #   options = {}
    #   response = client.delete_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCanaryResponse]
    def delete_canary(params = {}, options = {})
      request = build_request(:delete_canary, params)
      request.send_request(options)
    end

    # <p>Deletes a group. The group doesn't need to be empty to be deleted. If there are canaries in the group,
    #          they are not deleted when you delete the group.
    #       </p>
    #          <p>Groups are a global resource that appear in all Regions, but the request to delete a group
    #       must be made from its home Region. You can find the home Region of a group within its ARN.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :group_identifier
    #   <p>Specifies which group to delete. You can specify the group name, the ARN, or the 
    #         group ID as the <code>GroupIdentifier</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_identifier: "GroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResponse]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of the canaries in your account, along with full details
    #       about each canary.</p>
    #          <p>This operation supports resource-level authorization using an IAM policy and 
    #       the <code>Names</code> parameter. If you specify the <code>Names</code> parameter, the operation is successful only if you have authorization to view
    #          all the canaries that you specify in your request. If you do not have permission to view any of 
    #          the canaries, the request fails with a 403 response.</p>
    #          <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an 
    #          IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #             Limiting a user to viewing specific canaries</a>.</p>
    # @param [Hash, Types::DescribeCanariesRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many canaries are returned each time you use
    #         the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 20 is used.</p>
    # @option params [Array<String>] :names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of 
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use this parameter if you are logged on to a user or role that has an 
    #            IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     names: ["CanaryName"]
    #   }
    #   options = {}
    #   response = client.describe_canaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canaries: [
    #       {
    #         id: "UUID",
    #         name: "CanaryName",
    #         code: {
    #           source_location_arn: "String",
    #           handler: "String",
    #           dependencies: [
    #             {
    #               type: "LambdaLayer" # One of: ["LambdaLayer"],
    #               reference: "String", # required
    #             }
    #           ]
    #         },
    #         execution_role_arn: "RoleArn",
    #         schedule: {
    #           expression: "String",
    #           duration_in_seconds: 1,
    #           retry_config: {
    #             max_retries: 1
    #           }
    #         },
    #         run_config: {
    #           timeout_in_seconds: 1,
    #           memory_in_mb: 1,
    #           active_tracing: false,
    #           ephemeral_storage: 1
    #         },
    #         success_retention_period_in_days: 1,
    #         failure_retention_period_in_days: 1,
    #         status: {
    #           state: "CREATING" # One of: ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"],
    #           state_reason: "String",
    #           state_reason_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #         },
    #         timeline: {
    #           created: Time.now,
    #           last_modified: Time.now,
    #           last_started: Time.now,
    #           last_stopped: Time.now
    #         },
    #         artifact_s3_location: "String",
    #         engine_arn: "FunctionArn",
    #         runtime_version: "String",
    #         vpc_config: {
    #           vpc_id: "VpcId",
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           ipv6_allowed_for_dual_stack: false
    #         },
    #         visual_reference: {
    #           base_screenshots: [
    #             {
    #               screenshot_name: "String", # required
    #               ignore_coordinates: ["BaseScreenshotConfigIgnoreCoordinate"]
    #             }
    #           ],
    #           base_canary_run_id: "String"
    #         },
    #         provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         artifact_config: {
    #           s3_encryption: {
    #             encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #             kms_key_arn: "KmsKeyArn"
    #           }
    #         },
    #         dry_run_config: {
    #           dry_run_id: "UUID",
    #           last_dry_run_execution_status: "String"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeCanariesResponse]
    def describe_canaries(params = {}, options = {})
      request = build_request(:describe_canaries, params)
      request.send_request(options)
    end

    # <p>Use this operation to see information from the most recent run of each canary that you have created.</p>
    #          <p>This operation supports resource-level authorization using an IAM policy and 
    #          the <code>Names</code> parameter. If you specify the <code>Names</code> parameter, the operation is successful only if you have authorization to view
    #          all the canaries that you specify in your request. If you do not have permission to view any of 
    #          the canaries, the request fails with a 403 response.</p>
    #          <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an 
    #          IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #             Limiting a user to viewing specific canaries</a>.</p>
    # @param [Hash, Types::DescribeCanariesLastRunRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>
    # @option params [Array<String>] :names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of 
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an 
    #            IAM policy that restricts which canaries that you are allowed to view. For more information, 
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     names: ["CanaryName"]
    #   }
    #   options = {}
    #   response = client.describe_canaries_last_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canaries_last_run: [
    #       {
    #         canary_name: "CanaryName",
    #         last_run: {
    #           id: "UUID",
    #           scheduled_run_id: "UUID",
    #           retry_attempt: 1,
    #           name: "CanaryName",
    #           status: {
    #             state: "RUNNING" # One of: ["RUNNING", "PASSED", "FAILED"],
    #             state_reason: "String",
    #             state_reason_code: "CANARY_FAILURE" # One of: ["CANARY_FAILURE", "EXECUTION_FAILURE"],
    #             test_result: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"]
    #           },
    #           timeline: {
    #             started: Time.now,
    #             completed: Time.now,
    #             metric_timestamp_for_run_and_retries: Time.now
    #           },
    #           artifact_s3_location: "String",
    #           dry_run_config: {
    #             dry_run_id: "UUID"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeCanariesLastRunResponse]
    def describe_canaries_last_run(params = {}, options = {})
      request = build_request(:describe_canaries_last_run, params)
      request.send_request(options)
    end

    # <p>Returns a list of Synthetics canary runtime versions. For more information, 
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #             Canary Runtime Versions</a>.</p>
    # @param [Hash, Types::DescribeRuntimeVersionsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_runtime_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_versions: [
    #       {
    #         version_name: "String",
    #         description: "String",
    #         release_date: Time.now,
    #         deprecation_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeRuntimeVersionsResponse]
    def describe_runtime_versions(params = {}, options = {})
      request = build_request(:describe_runtime_versions, params)
      request.send_request(options)
    end

    # <p>Removes a canary from a group. You must run this operation in the Region where the canary exists.</p>
    # @param [Hash, Types::DisassociateResourceRequest] params
    # @option params [String] :group_identifier
    #   <p>Specifies the group. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you want to remove from the specified group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_identifier: "GroupIdentifier", # required
    #     resource_arn: "CanaryArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateResourceResponse]
    def disassociate_resource(params = {}, options = {})
      request = build_request(:disassociate_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves complete information about one canary. You must specify
    #       the name of the canary that you want. To get a list of canaries
    #       and their names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    # @param [Hash, Types::GetCanaryRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want details for.</p>
    # @option params [String] :dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     dry_run_id: "UUID"
    #   }
    #   options = {}
    #   response = client.get_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canary: {
    #       id: "UUID",
    #       name: "CanaryName",
    #       code: {
    #         source_location_arn: "String",
    #         handler: "String",
    #         dependencies: [
    #           {
    #             type: "LambdaLayer" # One of: ["LambdaLayer"],
    #             reference: "String", # required
    #           }
    #         ]
    #       },
    #       execution_role_arn: "RoleArn",
    #       schedule: {
    #         expression: "String",
    #         duration_in_seconds: 1,
    #         retry_config: {
    #           max_retries: 1
    #         }
    #       },
    #       run_config: {
    #         timeout_in_seconds: 1,
    #         memory_in_mb: 1,
    #         active_tracing: false,
    #         ephemeral_storage: 1
    #       },
    #       success_retention_period_in_days: 1,
    #       failure_retention_period_in_days: 1,
    #       status: {
    #         state: "CREATING" # One of: ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"],
    #         state_reason: "String",
    #         state_reason_code: "INVALID_PERMISSIONS" # One of: ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #       },
    #       timeline: {
    #         created: Time.now,
    #         last_modified: Time.now,
    #         last_started: Time.now,
    #         last_stopped: Time.now
    #       },
    #       artifact_s3_location: "String",
    #       engine_arn: "FunctionArn",
    #       runtime_version: "String",
    #       vpc_config: {
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         ipv6_allowed_for_dual_stack: false
    #       },
    #       visual_reference: {
    #         base_screenshots: [
    #           {
    #             screenshot_name: "String", # required
    #             ignore_coordinates: ["BaseScreenshotConfigIgnoreCoordinate"]
    #           }
    #         ],
    #         base_canary_run_id: "String"
    #       },
    #       provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       artifact_config: {
    #         s3_encryption: {
    #           encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #           kms_key_arn: "KmsKeyArn"
    #         }
    #       },
    #       dry_run_config: {
    #         dry_run_id: "UUID",
    #         last_dry_run_execution_status: "String"
    #       }
    #     }
    #   }
    # @return [Types::GetCanaryResponse]
    def get_canary(params = {}, options = {})
      request = build_request(:get_canary, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of runs for a specified canary.</p>
    # @param [Hash, Types::GetCanaryRunsRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to see runs for.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next 
    #            set of results.</p>
    #            <note>
    #               <p>When auto retry is enabled for the canary, the first subsequent retry is suffixed with *1 indicating its the first retry and the next subsequent try is suffixed with *2.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>
    # @option params [String] :dry_run_id
    #   <p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>
    # @option params [String] :run_type
    #   <ul>
    #               <li>
    #                  <p>When you provide <code>RunType=CANARY_RUN</code> and <code>dryRunId</code>, you will get an exception
    #               
    #               
    #              </p>
    #               </li>
    #               <li>
    #                  <p>When a value is not provided for <code>RunType</code>, the default value is <code>CANARY_RUN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>When <code>CANARY_RUN</code> is provided, all canary runs excluding dry runs are returned</p>
    #               </li>
    #               <li>
    #                  <p>When <code>DRY_RUN</code> is provided, all dry runs excluding canary runs are returned</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #     dry_run_id: "UUID",
    #     run_type: "CANARY_RUN" # One of: ["CANARY_RUN", "DRY_RUN"]
    #   }
    #   options = {}
    #   response = client.get_canary_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canary_runs: [
    #       {
    #         id: "UUID",
    #         scheduled_run_id: "UUID",
    #         retry_attempt: 1,
    #         name: "CanaryName",
    #         status: {
    #           state: "RUNNING" # One of: ["RUNNING", "PASSED", "FAILED"],
    #           state_reason: "String",
    #           state_reason_code: "CANARY_FAILURE" # One of: ["CANARY_FAILURE", "EXECUTION_FAILURE"],
    #           test_result: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"]
    #         },
    #         timeline: {
    #           started: Time.now,
    #           completed: Time.now,
    #           metric_timestamp_for_run_and_retries: Time.now
    #         },
    #         artifact_s3_location: "String",
    #         dry_run_config: {
    #           dry_run_id: "UUID"
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::GetCanaryRunsResponse]
    def get_canary_runs(params = {}, options = {})
      request = build_request(:get_canary_runs, params)
      request.send_request(options)
    end

    # <p>Returns information about one group. Groups are a global resource, so you can use this operation from
    #       any Region.</p>
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :group_identifier
    #   <p>Specifies the group to return information for. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_identifier: "GroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       id: "String",
    #       name: "GroupName",
    #       arn: "GroupArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::GetGroupResponse]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Returns a list of the groups that the specified canary is associated with. The canary
    #       that you specify must be in the current Region.</p>
    # @param [Hash, Types::ListAssociatedGroupsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many groups are returned each time you use
    #            the <code>ListAssociatedGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you want to view groups for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     resource_arn: "CanaryArn", # required
    #   }
    #   options = {}
    #   response = client.list_associated_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         id: "String",
    #         name: "GroupName",
    #         arn: "GroupArn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssociatedGroupsResponse]
    def list_associated_groups(params = {}, options = {})
      request = build_request(:list_associated_groups, params)
      request.send_request(options)
    end

    # <p>This operation returns a list of the ARNs of the canaries that are associated with the specified group.</p>
    # @param [Hash, Types::ListGroupResourcesRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many canary ARNs are returned each time you use
    #            the <code>ListGroupResources</code> operation. If you omit this parameter, the default of 20 is used.</p>
    # @option params [String] :group_identifier
    #   <p>Specifies the group to return information for. You can specify the group name, the ARN, or the 
    #            group ID as the <code>GroupIdentifier</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     group_identifier: "GroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_group_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: ["String"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListGroupResourcesResponse]
    def list_group_resources(params = {}, options = {})
      request = build_request(:list_group_resources, params)
      request.send_request(options)
    end

    # <p>Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs. The groups
    #       from all Regions are returned.</p>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next 
    #            set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many groups are returned each time you use
    #            the <code>ListGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         id: "String",
    #         name: "GroupName",
    #         arn: "GroupArn"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a canary or group.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary or group that you want to view tags for.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #            <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Use this operation to run a canary that has already been created.  
    #          The frequency of the canary runs is determined by the value of the canary's <code>Schedule</code>. To see a canary's schedule, 
    #          use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html">GetCanary</a>.</p>
    # @param [Hash, Types::StartCanaryRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #   }
    #   options = {}
    #   response = client.start_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartCanaryResponse]
    def start_canary(params = {}, options = {})
      request = build_request(:start_canary, params)
      request.send_request(options)
    end

    # <p>Use this operation to start a dry run for a canary that has already been created</p>
    # @param [Hash, Types::StartCanaryDryRunRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to dry run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    # @option params [Types::CanaryCodeInput] :code
    #   <p>Use this structure to input your script code for the canary. This structure contains the
    #            Lambda handler with the location where the canary should start running the script. If the
    #            script is stored in an Amazon S3 bucket, the bucket name, key, and version are also included. If
    #            the script was passed into the canary directly, the script code is contained in the value
    #            of <code>Zipfile</code>. </p>
    #            <p>If you are uploading your canary scripts with an Amazon S3 bucket, your zip file should include your 
    #         script in a certain folder structure.</p>
    #            <ul>
    #               <li>
    #                  <p>For Node.js canaries, the folder structure must be <code>nodejs/node_modules/<i>myCanaryFilename.js</i>
    #                     </code>
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Nodejs.html#CloudWatch_Synthetics_Canaries_package">Packaging your Node.js canary files</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For Python canaries, the folder structure must be <code>python/<i>myCanaryFilename.py</i>
    #                     </code> or <code>python/<i>myFolder/myCanaryFilename.py</i>
    #                     </code>
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_WritingCanary_Python.html#CloudWatch_Synthetics_Canaries_WritingCanary_Python_package">Packaging your Python canary files</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :runtime_version
    #   <p>Specifies the runtime version to use for the canary.  
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    # @option params [Types::CanaryRunConfigInput] :run_config
    #   <p>A structure that contains input information for a canary run.</p>
    # @option params [Types::VpcConfigInput] :vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnets and security groups of the VPC endpoint. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    # @option params [Integer] :success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [Integer] :failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit 
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [Types::VisualReferenceInput] :visual_reference
    #   <p>An object that specifies what screenshots to use as a baseline for visual monitoring by this canary. It can
    #            optionally also specify parts of the screenshots to ignore during the visual monitoring comparison.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    # @option params [String] :artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #   
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the 
    #            Amazon S3 bucket can't include a period (.).</p>
    # @option params [Types::ArtifactConfigInput] :artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including the 
    #            encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    # @option params [String] :provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #            when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means
    #   
    #            that the Lambda functions and layers will be deleted when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     code: {
    #       s3_bucket: "String",
    #       s3_key: "String",
    #       s3_version: "String",
    #       zip_file: "data",
    #       handler: "CodeHandler", # required
    #       dependencies: [
    #         {
    #           type: "LambdaLayer" # One of: ["LambdaLayer"],
    #           reference: "String", # required
    #         }
    #       ]
    #     },
    #     runtime_version: "String",
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #       environment_variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       ephemeral_storage: 1
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     execution_role_arn: "RoleArn",
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     visual_reference: {
    #       base_screenshots: [
    #         {
    #           screenshot_name: "String", # required
    #           ignore_coordinates: ["BaseScreenshotConfigIgnoreCoordinate"]
    #         }
    #       ],
    #       base_canary_run_id: "String", # required
    #     },
    #     artifact_s3_location: "String",
    #     artifact_config: {
    #       s3_encryption: {
    #         encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"]
    #   }
    #   options = {}
    #   response = client.start_canary_dry_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dry_run_config: {
    #       dry_run_id: "UUID",
    #       last_dry_run_execution_status: "String"
    #     }
    #   }
    # @return [Types::StartCanaryDryRunResponse]
    def start_canary_dry_run(params = {}, options = {})
      request = build_request(:start_canary_dry_run, params)
      request.send_request(options)
    end

    # <p>Stops the canary to prevent all future runs. If the canary is currently running,the
    #         run that is in progress completes on its own, publishes metrics, and uploads artifacts, but
    #          it is not recorded in Synthetics as a completed run.</p>
    #          <p>You can use <code>StartCanary</code> to start it running again 
    #          with the canary’s current schedule at any point in the future.  </p>
    # @param [Hash, Types::StopCanaryRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to stop. To find the names of your 
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">ListCanaries</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #   }
    #   options = {}
    #   response = client.stop_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopCanaryResponse]
    def stop_canary(params = {}, options = {})
      request = build_request(:stop_canary, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified canary or group. </p>
    #          <p>Tags can help you organize and categorize your
    #          resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with
    #          certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. If you specify a new 
    #          tag key for the resource, 
    #          this tag is appended to the list of tags associated
    #          with the resource. If you specify a tag key that is already associated with the resource, the new tag 
    #          value that you specify replaces
    #          the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a canary or group.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary or group that you're adding tags to.</p>
    #            <p>The ARN format of a canary is
    #   <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #    <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary or group that you're removing tags from.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #            <p>The ARN format of a group is
    #            <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>
    #               </code>
    #            </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates the configuration of a canary that has 
    #          already been created.</p>
    #          <p>You can't use this operation to update the tags of an existing canary. To 
    #          change the tags of an existing canary, use
    #          <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    #          <note>
    #             <p>When you use the <code>dryRunId</code> field when updating a canary, the only other field you can provide is the <code>Schedule</code>. Adding any other field will thrown an exception.</p>
    #          </note>
    # @param [Hash, Types::UpdateCanaryRequest] params
    # @option params [String] :name
    #   <p>The name of the canary that you want to update. To find the names of your 
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #            <p>You cannot change the name of a canary that has already been created.</p>
    # @option params [Types::CanaryCodeInput] :code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in 
    #            an Amazon S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :runtime_version
    #   <p>Specifies the runtime version to use for the canary.  
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    # @option params [Types::CanaryScheduleInput] :schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    # @option params [Types::CanaryRunConfigInput] :run_config
    #   <p>A structure that contains the timeout value that is used for each individual run of the 
    #            canary.</p>
    #            <important>
    #               <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables 
    #            are not encrypted on the client side. Do not store sensitive information
    #            in them.</p>
    #            </important>
    # @option params [Integer] :success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [Integer] :failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #            <p>This setting affects the range of information returned by <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html">GetCanaryRuns</a>, as well as 
    #            the range of information displayed in the Synthetics console.
    #         </p>
    # @option params [Types::VpcConfigInput] :vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnet and security groups of the VPC endpoint. 
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    # @option params [Types::VisualReferenceInput] :visual_reference
    #   <p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this 
    #         parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    # @option params [String] :artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary. 
    #            Artifacts include the log file, screenshots, and HAR files. The name of the
    #            Amazon S3 bucket can't include a period (.).</p>
    # @option params [Types::ArtifactConfigInput] :artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, 
    #            including the encryption-at-rest settings for artifacts that 
    #            the canary uploads to Amazon S3.</p>
    # @option params [String] :provisioned_resource_cleanup
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary
    #            when the canary is deleted.</p>
    #            <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter
    #            of the <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html">DeleteCanary</a> operation
    #            determines whether the Lambda functions and layers will be deleted.</p>
    # @option params [String] :dry_run_id
    #   <p>Update the existing canary using the updated configurations from the DryRun associated with the DryRunId.</p>
    #            <note>
    #               <p>When you use the <code>dryRunId</code> field when updating a canary, the only other field you can provide is the <code>Schedule</code>. Adding any other field will thrown an exception.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CanaryName", # required
    #     code: {
    #       s3_bucket: "String",
    #       s3_key: "String",
    #       s3_version: "String",
    #       zip_file: "data",
    #       handler: "CodeHandler", # required
    #       dependencies: [
    #         {
    #           type: "LambdaLayer" # One of: ["LambdaLayer"],
    #           reference: "String", # required
    #         }
    #       ]
    #     },
    #     execution_role_arn: "RoleArn",
    #     runtime_version: "String",
    #     schedule: {
    #       expression: "String", # required
    #       duration_in_seconds: 1,
    #       retry_config: {
    #         max_retries: 1, # required
    #       }
    #     },
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #       environment_variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       ephemeral_storage: 1
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     visual_reference: {
    #       base_screenshots: [
    #         {
    #           screenshot_name: "String", # required
    #           ignore_coordinates: ["BaseScreenshotConfigIgnoreCoordinate"]
    #         }
    #       ],
    #       base_canary_run_id: "String", # required
    #     },
    #     artifact_s3_location: "String",
    #     artifact_config: {
    #       s3_encryption: {
    #         encryption_mode: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     },
    #     provisioned_resource_cleanup: "AUTOMATIC" # One of: ["AUTOMATIC", "OFF"],
    #     dry_run_id: "UUID"
    #   }
    #   options = {}
    #   response = client.update_canary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCanaryResponse]
    def update_canary(params = {}, options = {})
      request = build_request(:update_canary, params)
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
      context[:gem_name] = 'aws-sdk-synthetics'
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
    end
  end
end
