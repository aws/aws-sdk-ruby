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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Fis
  # An API client for Aws::Fis.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::FaultInjectionSimulator

    add_plugin(::Aws::Fis::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Fis::EndpointProvider)
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

    # <p>Creates an experiment template. </p>
    #          <p>An experiment template includes the following components:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Targets</b>: A target can be a specific resource in 
    #                your Amazon Web Services environment, or one or more resources that match criteria that you
    #                specify, for example, resources that have specific tags.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Actions</b>: The actions to carry out on the
    #                target. You can specify multiple actions, the duration of each action, and when to start each action during an experiment.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Stop conditions</b>: If a stop condition is
    #                triggered while an experiment is running, the experiment is automatically
    #                stopped. You can define a stop condition as a CloudWatch alarm.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html">experiment templates</a>
    #          in the <i>Fault Injection Service User Guide</i>.</p>
    # @param [Hash, Types::CreateExperimentTemplateRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>A description for the experiment template.</p>
    # @option params [Array<Types::CreateExperimentTemplateStopConditionInput>] :stop_conditions
    #   <p>The stop conditions.</p>
    # @option params [Hash<String, Types::CreateExperimentTemplateTargetInput>] :targets
    #   <p>The targets for the experiment.</p>
    # @option params [Hash<String, Types::CreateExperimentTemplateActionInput>] :actions
    #   <p>The actions for the experiment.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the experiment template.</p>
    # @option params [Types::CreateExperimentTemplateLogConfigurationInput] :log_configuration
    #   <p>The configuration for experiment logging.</p>
    # @option params [Types::CreateExperimentTemplateExperimentOptionsInput] :experiment_options
    #   <p>The experiment options for the experiment template.</p>
    # @option params [Types::CreateExperimentTemplateReportConfigurationInput] :experiment_report_configuration
    #   <p>The experiment report configuration for the experiment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     description: "ExperimentTemplateDescription", # required
    #     stop_conditions: [ # required
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue"
    #       }
    #     ],
    #     targets: {
    #       "ExperimentTemplateTargetName" => {
    #         resource_type: "TargetResourceTypeId", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           }
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #         parameters: {
    #           "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #         }
    #       }
    #     },
    #     actions: { # required
    #       "ExperimentTemplateActionName" => {
    #         action_id: "ActionId", # required
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"]
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: "CloudWatchLogGroupArn", # required
    #       },
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "S3ObjectKey"
    #       },
    #       log_schema_version: 1, # required
    #     },
    #     experiment_options: {
    #       account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #       empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #     },
    #     experiment_report_configuration: {
    #       outputs: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "ReportConfigurationS3OutputPrefix"
    #         }
    #       },
    #       data_sources: {
    #         cloud_watch_dashboards: [
    #           {
    #             dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #           }
    #         ]
    #       },
    #       pre_experiment_duration: "ReportConfigurationDuration",
    #       post_experiment_duration: "ReportConfigurationDuration"
    #     }
    #   }
    #   options = {}
    #   response = client.create_experiment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment_template: {
    #       id: "ExperimentTemplateId",
    #       arn: "ResourceArn",
    #       description: "ExperimentTemplateDescription",
    #       targets: {
    #         "ExperimentTemplateTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTemplateTargetFilterPath",
    #               values: ["ExperimentTemplateTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTemplateTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentTemplateActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentTemplateActionDescription",
    #           parameters: {
    #             "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #           },
    #           targets: {
    #             "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #           },
    #           start_after: ["ExperimentTemplateActionStartAfter"]
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       role_arn: "RoleArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       }
    #     }
    #   }
    # @return [Types::CreateExperimentTemplateResponse]
    def create_experiment_template(params = {}, options = {})
      request = build_request(:create_experiment_template, params)
      request.send_request(options)
    end

    # <p>Creates a target account configuration for the experiment template. A target account configuration
    #       is required when <code>accountTargeting</code> of <code>experimentOptions</code> is set to <code>multi-account</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html">experiment options</a>
    #       in the <i>Fault Injection Service User Guide</i>.
    #       </p>
    # @param [Hash, Types::CreateTargetAccountConfigurationRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :experiment_template_id
    #   <p>The experiment template ID.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    # @option params [String] :description
    #   <p>The description of the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #     role_arn: "RoleArn", # required
    #     description: "TargetAccountConfigurationDescription"
    #   }
    #   options = {}
    #   response = client.create_target_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configuration: {
    #       role_arn: "RoleArn",
    #       account_id: "TargetAccountId",
    #       description: "TargetAccountConfigurationDescription"
    #     }
    #   }
    # @return [Types::CreateTargetAccountConfigurationResponse]
    def create_target_account_configuration(params = {}, options = {})
      request = build_request(:create_target_account_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified experiment template.</p>
    # @param [Hash, Types::DeleteExperimentTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperimentTemplateId", # required
    #   }
    #   options = {}
    #   response = client.delete_experiment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment_template: {
    #       id: "ExperimentTemplateId",
    #       arn: "ResourceArn",
    #       description: "ExperimentTemplateDescription",
    #       targets: {
    #         "ExperimentTemplateTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTemplateTargetFilterPath",
    #               values: ["ExperimentTemplateTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTemplateTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentTemplateActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentTemplateActionDescription",
    #           parameters: {
    #             "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #           },
    #           targets: {
    #             "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #           },
    #           start_after: ["ExperimentTemplateActionStartAfter"]
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       role_arn: "RoleArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       }
    #     }
    #   }
    # @return [Types::DeleteExperimentTemplateResponse]
    def delete_experiment_template(params = {}, options = {})
      request = build_request(:delete_experiment_template, params)
      request.send_request(options)
    end

    # <p>Deletes the specified target account configuration of the experiment template.</p>
    # @param [Hash, Types::DeleteTargetAccountConfigurationRequest] params
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #   }
    #   options = {}
    #   response = client.delete_target_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configuration: {
    #       role_arn: "RoleArn",
    #       account_id: "TargetAccountId",
    #       description: "TargetAccountConfigurationDescription"
    #     }
    #   }
    # @return [Types::DeleteTargetAccountConfigurationResponse]
    def delete_target_account_configuration(params = {}, options = {})
      request = build_request(:delete_target_account_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified FIS action.</p>
    # @param [Hash, Types::GetActionRequest] params
    # @option params [String] :id
    #   <p>The ID of the action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ActionId", # required
    #   }
    #   options = {}
    #   response = client.get_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action: {
    #       id: "ActionId",
    #       arn: "ResourceArn",
    #       description: "ActionDescription",
    #       parameters: {
    #         "ActionParameterName" => {
    #           description: "ActionParameterDescription",
    #           required: false
    #         }
    #       },
    #       targets: {
    #         "ActionTargetName" => {
    #           resource_type: "TargetResourceTypeId"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetActionResponse]
    def get_action(params = {}, options = {})
      request = build_request(:get_action, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified experiment.</p>
    # @param [Hash, Types::GetExperimentRequest] params
    # @option params [String] :id
    #   <p>The ID of the experiment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperimentId", # required
    #   }
    #   options = {}
    #   response = client.get_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: {
    #       id: "ExperimentId",
    #       arn: "ResourceArn",
    #       experiment_template_id: "ExperimentTemplateId",
    #       role_arn: "RoleArn",
    #       state: {
    #         status: "pending" # One of: ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"],
    #         reason: "ExperimentStatusReason",
    #         error: {
    #           account_id: "ExperimentErrorAccountId",
    #           code: "ExperimentErrorCode",
    #           location: "ExperimentErrorLocation"
    #         }
    #       },
    #       targets: {
    #         "ExperimentTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTargetFilterPath",
    #               values: ["ExperimentTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTargetParameterName" => "ExperimentTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentActionDescription",
    #           parameters: {
    #             "ExperimentActionParameterName" => "ExperimentActionParameter"
    #           },
    #           targets: {
    #             "ExperimentActionTargetName" => "ExperimentTargetName"
    #           },
    #           start_after: ["ExperimentActionStartAfter"],
    #           state: {
    #             status: "pending" # One of: ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"],
    #             reason: "ExperimentActionStatusReason"
    #           },
    #           start_time: Time.now,
    #           end_time: Time.now
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"],
    #         actions_mode: "skip-all" # One of: ["skip-all", "run-all"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       },
    #       experiment_report: {
    #         state: {
    #           status: "pending" # One of: ["pending", "running", "completed", "cancelled", "failed"],
    #           reason: "ExperimentReportReason",
    #           error: {
    #             code: "ExperimentReportErrorCode"
    #           }
    #         },
    #         s3_reports: [
    #           {
    #             arn: "ExperimentReportS3ReportArn",
    #             report_type: "ExperimentReportS3ReportType"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetExperimentResponse]
    def get_experiment(params = {}, options = {})
      request = build_request(:get_experiment, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified target account configuration of the experiment.</p>
    # @param [Hash, Types::GetExperimentTargetAccountConfigurationRequest] params
    # @option params [String] :experiment_id
    #   <p>The ID of the experiment.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_id: "ExperimentId", # required
    #     account_id: "TargetAccountId", # required
    #   }
    #   options = {}
    #   response = client.get_experiment_target_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configuration: {
    #       role_arn: "RoleArn",
    #       account_id: "TargetAccountId",
    #       description: "TargetAccountConfigurationDescription"
    #     }
    #   }
    # @return [Types::GetExperimentTargetAccountConfigurationResponse]
    def get_experiment_target_account_configuration(params = {}, options = {})
      request = build_request(:get_experiment_target_account_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified experiment template.</p>
    # @param [Hash, Types::GetExperimentTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperimentTemplateId", # required
    #   }
    #   options = {}
    #   response = client.get_experiment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment_template: {
    #       id: "ExperimentTemplateId",
    #       arn: "ResourceArn",
    #       description: "ExperimentTemplateDescription",
    #       targets: {
    #         "ExperimentTemplateTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTemplateTargetFilterPath",
    #               values: ["ExperimentTemplateTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTemplateTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentTemplateActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentTemplateActionDescription",
    #           parameters: {
    #             "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #           },
    #           targets: {
    #             "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #           },
    #           start_after: ["ExperimentTemplateActionStartAfter"]
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       role_arn: "RoleArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       }
    #     }
    #   }
    # @return [Types::GetExperimentTemplateResponse]
    def get_experiment_template(params = {}, options = {})
      request = build_request(:get_experiment_template, params)
      request.send_request(options)
    end

    # <p>
    #          Gets information about the specified safety lever.
    #       </p>
    # @param [Hash, Types::GetSafetyLeverRequest] params
    # @option params [String] :id
    #   <p>
    #           The ID of the safety lever.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SafetyLeverId", # required
    #   }
    #   options = {}
    #   response = client.get_safety_lever(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     safety_lever: {
    #       id: "SafetyLeverId",
    #       arn: "ResourceArn",
    #       state: {
    #         status: "disengaged" # One of: ["disengaged", "engaged", "engaging"],
    #         reason: "SafetyLeverStatusReason"
    #       }
    #     }
    #   }
    # @return [Types::GetSafetyLeverResponse]
    def get_safety_lever(params = {}, options = {})
      request = build_request(:get_safety_lever, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified target account configuration of the experiment template.</p>
    # @param [Hash, Types::GetTargetAccountConfigurationRequest] params
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #   }
    #   options = {}
    #   response = client.get_target_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configuration: {
    #       role_arn: "RoleArn",
    #       account_id: "TargetAccountId",
    #       description: "TargetAccountConfigurationDescription"
    #     }
    #   }
    # @return [Types::GetTargetAccountConfigurationResponse]
    def get_target_account_configuration(params = {}, options = {})
      request = build_request(:get_target_account_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified resource type.</p>
    # @param [Hash, Types::GetTargetResourceTypeRequest] params
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "TargetResourceTypeId", # required
    #   }
    #   options = {}
    #   response = client.get_target_resource_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_resource_type: {
    #       resource_type: "TargetResourceTypeId",
    #       description: "TargetResourceTypeDescription",
    #       parameters: {
    #         "TargetResourceTypeParameterName" => {
    #           description: "TargetResourceTypeParameterDescription",
    #           required: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetTargetResourceTypeResponse]
    def get_target_resource_type(params = {}, options = {})
      request = build_request(:get_target_resource_type, params)
      request.send_request(options)
    end

    # <p>Lists the available FIS actions.</p>
    # @param [Hash, Types::ListActionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [
    #       {
    #         id: "ActionId",
    #         arn: "ResourceArn",
    #         description: "ActionDescription",
    #         targets: {
    #           "ActionTargetName" => {
    #             resource_type: "TargetResourceTypeId"
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActionsResponse]
    def list_actions(params = {}, options = {})
      request = build_request(:list_actions, params)
      request.send_request(options)
    end

    # <p>Lists the resolved targets information of the specified experiment.</p>
    # @param [Hash, Types::ListExperimentResolvedTargetsRequest] params
    # @option params [String] :experiment_id
    #   <p>The ID of the experiment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, 
    #         make another call with the returned nextToken value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [String] :target_name
    #   <p>The name of the target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_id: "ExperimentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     target_name: "TargetName"
    #   }
    #   options = {}
    #   response = client.list_experiment_resolved_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resolved_targets: [
    #       {
    #         resource_type: "TargetResourceTypeId",
    #         target_name: "TargetName",
    #         target_information: {
    #           "TargetInformationKey" => "TargetInformationValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperimentResolvedTargetsResponse]
    def list_experiment_resolved_targets(params = {}, options = {})
      request = build_request(:list_experiment_resolved_targets, params)
      request.send_request(options)
    end

    # <p>Lists the target account configurations of the specified experiment.</p>
    # @param [Hash, Types::ListExperimentTargetAccountConfigurationsRequest] params
    # @option params [String] :experiment_id
    #   <p>The ID of the experiment.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_id: "ExperimentId", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_experiment_target_account_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configurations: [
    #       {
    #         role_arn: "RoleArn",
    #         account_id: "TargetAccountId",
    #         description: "TargetAccountConfigurationDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperimentTargetAccountConfigurationsResponse]
    def list_experiment_target_account_configurations(params = {}, options = {})
      request = build_request(:list_experiment_target_account_configurations, params)
      request.send_request(options)
    end

    # <p>Lists your experiment templates.</p>
    # @param [Hash, Types::ListExperimentTemplatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_experiment_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment_templates: [
    #       {
    #         id: "ExperimentTemplateId",
    #         arn: "ResourceArn",
    #         description: "ExperimentTemplateDescription",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperimentTemplatesResponse]
    def list_experiment_templates(params = {}, options = {})
      request = build_request(:list_experiment_templates, params)
      request.send_request(options)
    end

    # <p>Lists your experiments.</p>
    # @param [Hash, Types::ListExperimentsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     experiment_template_id: "ExperimentTemplateId"
    #   }
    #   options = {}
    #   response = client.list_experiments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiments: [
    #       {
    #         id: "ExperimentId",
    #         arn: "ResourceArn",
    #         experiment_template_id: "ExperimentTemplateId",
    #         state: {
    #           status: "pending" # One of: ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"],
    #           reason: "ExperimentStatusReason",
    #           error: {
    #             account_id: "ExperimentErrorAccountId",
    #             code: "ExperimentErrorCode",
    #             location: "ExperimentErrorLocation"
    #           }
    #         },
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         experiment_options: {
    #           account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #           empty_target_resolution_mode: "fail" # One of: ["fail", "skip"],
    #           actions_mode: "skip-all" # One of: ["skip-all", "run-all"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperimentsResponse]
    def list_experiments(params = {}, options = {})
      request = build_request(:list_experiments, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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

    # <p>Lists the target account configurations of the specified experiment template.</p>
    # @param [Hash, Types::ListTargetAccountConfigurationsRequest] params
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, 
    #         make another call with the returned nextToken value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_target_account_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configurations: [
    #       {
    #         role_arn: "RoleArn",
    #         account_id: "TargetAccountId",
    #         description: "TargetAccountConfigurationDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetAccountConfigurationsResponse]
    def list_target_account_configurations(params = {}, options = {})
      request = build_request(:list_target_account_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the target resource types.</p>
    # @param [Hash, Types::ListTargetResourceTypesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_target_resource_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_resource_types: [
    #       {
    #         resource_type: "TargetResourceTypeId",
    #         description: "TargetResourceTypeDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetResourceTypesResponse]
    def list_target_resource_types(params = {}, options = {})
      request = build_request(:list_target_resource_types, params)
      request.send_request(options)
    end

    # <p>Starts running an experiment from the specified experiment template.</p>
    # @param [Hash, Types::StartExperimentRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @option params [Types::StartExperimentExperimentOptionsInput] :experiment_options
    #   <p>The experiment options for running the experiment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the experiment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     experiment_options: {
    #       actions_mode: "skip-all" # One of: ["skip-all", "run-all"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: {
    #       id: "ExperimentId",
    #       arn: "ResourceArn",
    #       experiment_template_id: "ExperimentTemplateId",
    #       role_arn: "RoleArn",
    #       state: {
    #         status: "pending" # One of: ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"],
    #         reason: "ExperimentStatusReason",
    #         error: {
    #           account_id: "ExperimentErrorAccountId",
    #           code: "ExperimentErrorCode",
    #           location: "ExperimentErrorLocation"
    #         }
    #       },
    #       targets: {
    #         "ExperimentTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTargetFilterPath",
    #               values: ["ExperimentTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTargetParameterName" => "ExperimentTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentActionDescription",
    #           parameters: {
    #             "ExperimentActionParameterName" => "ExperimentActionParameter"
    #           },
    #           targets: {
    #             "ExperimentActionTargetName" => "ExperimentTargetName"
    #           },
    #           start_after: ["ExperimentActionStartAfter"],
    #           state: {
    #             status: "pending" # One of: ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"],
    #             reason: "ExperimentActionStatusReason"
    #           },
    #           start_time: Time.now,
    #           end_time: Time.now
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"],
    #         actions_mode: "skip-all" # One of: ["skip-all", "run-all"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       },
    #       experiment_report: {
    #         state: {
    #           status: "pending" # One of: ["pending", "running", "completed", "cancelled", "failed"],
    #           reason: "ExperimentReportReason",
    #           error: {
    #             code: "ExperimentReportErrorCode"
    #           }
    #         },
    #         s3_reports: [
    #           {
    #             arn: "ExperimentReportS3ReportArn",
    #             report_type: "ExperimentReportS3ReportType"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::StartExperimentResponse]
    def start_experiment(params = {}, options = {})
      request = build_request(:start_experiment, params)
      request.send_request(options)
    end

    # <p>Stops the specified experiment.</p>
    # @param [Hash, Types::StopExperimentRequest] params
    # @option params [String] :id
    #   <p>The ID of the experiment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperimentId", # required
    #   }
    #   options = {}
    #   response = client.stop_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: {
    #       id: "ExperimentId",
    #       arn: "ResourceArn",
    #       experiment_template_id: "ExperimentTemplateId",
    #       role_arn: "RoleArn",
    #       state: {
    #         status: "pending" # One of: ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"],
    #         reason: "ExperimentStatusReason",
    #         error: {
    #           account_id: "ExperimentErrorAccountId",
    #           code: "ExperimentErrorCode",
    #           location: "ExperimentErrorLocation"
    #         }
    #       },
    #       targets: {
    #         "ExperimentTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTargetFilterPath",
    #               values: ["ExperimentTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTargetParameterName" => "ExperimentTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentActionDescription",
    #           parameters: {
    #             "ExperimentActionParameterName" => "ExperimentActionParameter"
    #           },
    #           targets: {
    #             "ExperimentActionTargetName" => "ExperimentTargetName"
    #           },
    #           start_after: ["ExperimentActionStartAfter"],
    #           state: {
    #             status: "pending" # One of: ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"],
    #             reason: "ExperimentActionStatusReason"
    #           },
    #           start_time: Time.now,
    #           end_time: Time.now
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"],
    #         actions_mode: "skip-all" # One of: ["skip-all", "run-all"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       },
    #       experiment_report: {
    #         state: {
    #           status: "pending" # One of: ["pending", "running", "completed", "cancelled", "failed"],
    #           reason: "ExperimentReportReason",
    #           error: {
    #             code: "ExperimentReportErrorCode"
    #           }
    #         },
    #         s3_reports: [
    #           {
    #             arn: "ExperimentReportS3ReportArn",
    #             report_type: "ExperimentReportS3ReportType"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::StopExperimentResponse]
    def stop_experiment(params = {}, options = {})
      request = build_request(:stop_experiment, params)
      request.send_request(options)
    end

    # <p>Applies the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource.</p>
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"]
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

    # <p>Updates the specified experiment template.</p>
    # @param [Hash, Types::UpdateExperimentTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    # @option params [String] :description
    #   <p>A description for the template.</p>
    # @option params [Array<Types::UpdateExperimentTemplateStopConditionInput>] :stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    # @option params [Hash<String, Types::UpdateExperimentTemplateTargetInput>] :targets
    #   <p>The targets for the experiment.</p>
    # @option params [Hash<String, Types::UpdateExperimentTemplateActionInputItem>] :actions
    #   <p>The actions for the experiment.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    # @option params [Types::UpdateExperimentTemplateLogConfigurationInput] :log_configuration
    #   <p>The configuration for experiment logging.</p>
    # @option params [Types::UpdateExperimentTemplateExperimentOptionsInput] :experiment_options
    #   <p>The experiment options for the experiment template.</p>
    # @option params [Types::UpdateExperimentTemplateReportConfigurationInput] :experiment_report_configuration
    #   <p>The experiment report configuration for the experiment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ExperimentTemplateId", # required
    #     description: "ExperimentTemplateDescription",
    #     stop_conditions: [
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue"
    #       }
    #     ],
    #     targets: {
    #       "ExperimentTemplateTargetName" => {
    #         resource_type: "TargetResourceTypeId", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           }
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #         parameters: {
    #           "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #         }
    #       }
    #     },
    #     actions: {
    #       "ExperimentTemplateActionName" => {
    #         action_id: "ActionId",
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"]
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: "CloudWatchLogGroupArn", # required
    #       },
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "S3ObjectKey"
    #       },
    #       log_schema_version: 1
    #     },
    #     experiment_options: {
    #       empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #     },
    #     experiment_report_configuration: {
    #       outputs: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "ReportConfigurationS3OutputPrefix"
    #         }
    #       },
    #       data_sources: {
    #         cloud_watch_dashboards: [
    #           {
    #             dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #           }
    #         ]
    #       },
    #       pre_experiment_duration: "ReportConfigurationDuration",
    #       post_experiment_duration: "ReportConfigurationDuration"
    #     }
    #   }
    #   options = {}
    #   response = client.update_experiment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment_template: {
    #       id: "ExperimentTemplateId",
    #       arn: "ResourceArn",
    #       description: "ExperimentTemplateDescription",
    #       targets: {
    #         "ExperimentTemplateTargetName" => {
    #           resource_type: "TargetResourceTypeId",
    #           resource_arns: ["ResourceArn"],
    #           resource_tags: {
    #             "TagKey" => "TagValue"
    #           },
    #           filters: [
    #             {
    #               path: "ExperimentTemplateTargetFilterPath",
    #               values: ["ExperimentTemplateTargetFilterValue"]
    #             }
    #           ],
    #           selection_mode: "ExperimentTemplateTargetSelectionMode",
    #           parameters: {
    #             "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue"
    #           }
    #         }
    #       },
    #       actions: {
    #         "ExperimentTemplateActionName" => {
    #           action_id: "ActionId",
    #           description: "ExperimentTemplateActionDescription",
    #           parameters: {
    #             "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter"
    #           },
    #           targets: {
    #             "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName"
    #           },
    #           start_after: ["ExperimentTemplateActionStartAfter"]
    #         }
    #       },
    #       stop_conditions: [
    #         {
    #           source: "StopConditionSource",
    #           value: "StopConditionValue"
    #         }
    #       ],
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       role_arn: "RoleArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       log_configuration: {
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "S3ObjectKey"
    #         },
    #         log_schema_version: 1
    #       },
    #       experiment_options: {
    #         account_targeting: "single-account" # One of: ["single-account", "multi-account"],
    #         empty_target_resolution_mode: "fail" # One of: ["fail", "skip"]
    #       },
    #       target_account_configurations_count: 1,
    #       experiment_report_configuration: {
    #         outputs: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             prefix: "ReportConfigurationS3OutputPrefix"
    #           }
    #         },
    #         data_sources: {
    #           cloud_watch_dashboards: [
    #             {
    #               dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier"
    #             }
    #           ]
    #         },
    #         pre_experiment_duration: "ReportConfigurationDuration",
    #         post_experiment_duration: "ReportConfigurationDuration"
    #       }
    #     }
    #   }
    # @return [Types::UpdateExperimentTemplateResponse]
    def update_experiment_template(params = {}, options = {})
      request = build_request(:update_experiment_template, params)
      request.send_request(options)
    end

    # <p>
    #         Updates the specified safety lever state.
    #       </p>
    # @param [Hash, Types::UpdateSafetyLeverStateRequest] params
    # @option params [String] :id
    #   <p>
    #            The ID of the safety lever.
    #         </p>
    # @option params [Types::UpdateSafetyLeverStateInput] :state
    #   <p>
    #          The state of the safety lever.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SafetyLeverId", # required
    #     state: { # required
    #       status: "disengaged" # One of: ["disengaged", "engaged"], # required
    #       reason: "SafetyLeverStatusReason", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_safety_lever_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     safety_lever: {
    #       id: "SafetyLeverId",
    #       arn: "ResourceArn",
    #       state: {
    #         status: "disengaged" # One of: ["disengaged", "engaged", "engaging"],
    #         reason: "SafetyLeverStatusReason"
    #       }
    #     }
    #   }
    # @return [Types::UpdateSafetyLeverStateResponse]
    def update_safety_lever_state(params = {}, options = {})
      request = build_request(:update_safety_lever_state, params)
      request.send_request(options)
    end

    # <p>Updates the target account configuration for the specified experiment template.</p>
    # @param [Hash, Types::UpdateTargetAccountConfigurationRequest] params
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the target account.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role for the target account.</p>
    # @option params [String] :description
    #   <p>The description of the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #     role_arn: "RoleArn",
    #     description: "TargetAccountConfigurationDescription"
    #   }
    #   options = {}
    #   response = client.update_target_account_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_account_configuration: {
    #       role_arn: "RoleArn",
    #       account_id: "TargetAccountId",
    #       description: "TargetAccountConfigurationDescription"
    #     }
    #   }
    # @return [Types::UpdateTargetAccountConfigurationResponse]
    def update_target_account_configuration(params = {}, options = {})
      request = build_request(:update_target_account_configuration, params)
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
      context[:gem_name] = 'aws-sdk-fis'
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
