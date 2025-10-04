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

module Aws::CodePipeline
  # An API client for Aws::CodePipeline.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodePipeline20150709

    add_plugin(::Aws::CodePipeline::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodePipeline::EndpointProvider)
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

    # <p>Returns information about a specified job and whether that job has been received by
    #             the job worker. Used for custom actions only.</p>
    # @param [Hash, Types::AcknowledgeJobInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job for which you want to confirm
    #               receipt.</p>
    # @option params [String] :nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Get this number from the response of the
    #                   <a>PollForJobs</a> request that returned this job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     nonce: "Nonce", # required
    #   }
    #   options = {}
    #   response = client.acknowledge_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Created" # One of: ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #   }
    # @return [Types::AcknowledgeJobOutput]
    def acknowledge_job(params = {}, options = {})
      request = build_request(:acknowledge_job, params)
      request.send_request(options)
    end

    # <p>Confirms a job worker has received the specified job. Used for partner actions
    #             only.</p>
    # @param [Hash, Types::AcknowledgeThirdPartyJobInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job.</p>
    # @option params [String] :nonce
    #   <p>A system-generated random number that CodePipeline uses to ensure that the
    #               job is being worked on by only one job worker. Get this number from the response to a
    #                   <a>GetThirdPartyJobDetails</a> request.</p>
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ThirdPartyJobId", # required
    #     nonce: "Nonce", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.acknowledge_third_party_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Created" # One of: ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #   }
    # @return [Types::AcknowledgeThirdPartyJobOutput]
    def acknowledge_third_party_job(params = {}, options = {})
      request = build_request(:acknowledge_third_party_job, params)
      request.send_request(options)
    end

    # <p>Creates a new custom action that can be used in all pipelines associated with the
    #                 Amazon Web Services account. Only used for custom actions.</p>
    # @param [Hash, Types::CreateCustomActionTypeInput] params
    # @option params [String] :category
    #   <p>The category of the custom action, such as a build action or a test
    #               action.</p>
    # @option params [String] :provider
    #   <p>The provider of the service used in the custom action, such as
    #               CodeDeploy.</p>
    # @option params [String] :version
    #   <p>The version identifier of the custom action.</p>
    # @option params [Types::ActionTypeSettings] :settings
    #   <p>URLs that provide users information about this custom action.</p>
    # @option params [Array<Types::ActionConfigurationProperty>] :configuration_properties
    #   <p>The configuration properties for the custom action.</p>
    #            <note>
    #               <p>You can refer to a name in the configuration properties of the custom action
    #                   within the URL templates by following the format of {Config:name}, as long as the
    #                   configuration property is both required and not secret. For more information, see
    #                       <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a
    #                       Custom Action for a Pipeline</a>.</p>
    #            </note>
    # @option params [Types::ArtifactDetails] :input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    # @option params [Types::ArtifactDetails] :output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the custom action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #     settings: {
    #       third_party_configuration_url: "Url",
    #       entity_url_template: "UrlTemplate",
    #       execution_url_template: "UrlTemplate",
    #       revision_url_template: "UrlTemplate"
    #     },
    #     configuration_properties: [
    #       {
    #         name: "ActionConfigurationKey", # required
    #         required: false, # required
    #         key: false, # required
    #         secret: false, # required
    #         queryable: false,
    #         description: "Description",
    #         type: "String" # One of: ["String", "Number", "Boolean"]
    #       }
    #     ],
    #     input_artifact_details: { # required
    #       minimum_count: 1, # required
    #       maximum_count: 1, # required
    #     },
    #     output_artifact_details: { # required
    #       minimum_count: 1, # required
    #       maximum_count: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_custom_action_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_type: { # required
    #       id: { # required
    #         category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #         owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #         provider: "ActionProvider", # required
    #         version: "Version", # required
    #       },
    #       settings: {
    #         third_party_configuration_url: "Url",
    #         entity_url_template: "UrlTemplate",
    #         execution_url_template: "UrlTemplate",
    #         revision_url_template: "UrlTemplate"
    #       },
    #       action_configuration_properties: [
    #         {
    #           name: "ActionConfigurationKey", # required
    #           required: false, # required
    #           key: false, # required
    #           secret: false, # required
    #           queryable: false,
    #           description: "Description",
    #           type: "String" # One of: ["String", "Number", "Boolean"]
    #         }
    #       ],
    #       input_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       output_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateCustomActionTypeOutput]
    def create_custom_action_type(params = {}, options = {})
      request = build_request(:create_custom_action_type, params)
      request.send_request(options)
    end

    # <p>Creates a pipeline.</p>
    #          <note>
    #             <p>In the pipeline structure, you must include either <code>artifactStore</code>
    #                 or <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                 create a cross-region action in your pipeline, you must use
    #                     <code>artifactStores</code>.</p>
    #          </note>
    # @param [Hash, Types::CreatePipelineInput] params
    # @option params [Types::PipelineDeclaration] :pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline: { # required
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3" # One of: ["S3"], # required
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3" # One of: ["S3"], # required
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         }
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule" # One of: ["Schedule"], # required
    #             }
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #                 owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue"
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"]
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 }
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT" # One of: ["PLAINTEXT", "SECRETS_MANAGER"]
    #                 }
    #               ]
    #             }
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"]
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       pipeline_type: "V1" # One of: ["V1", "V2"],
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection" # One of: ["CodeStarSourceConnection"], # required
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"]
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN" # One of: ["OPEN", "UPDATED", "CLOSED"]],
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3" # One of: ["S3"], # required
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3" # One of: ["S3"], # required
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         }
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule" # One of: ["Schedule"], # required
    #             }
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #                 owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue"
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"]
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 }
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT" # One of: ["PLAINTEXT", "SECRETS_MANAGER"]
    #                 }
    #               ]
    #             }
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"]
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       pipeline_type: "V1" # One of: ["V1", "V2"],
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection" # One of: ["CodeStarSourceConnection"], # required
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"]
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN" # One of: ["OPEN", "UPDATED", "CLOSED"]],
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreatePipelineOutput]
    def create_pipeline(params = {}, options = {})
      request = build_request(:create_pipeline, params)
      request.send_request(options)
    end

    # <p>Marks a custom action as deleted. <code>PollForJobs</code> for the custom action
    #             fails after the action is marked for deletion. Used for custom actions only.</p>
    #          <important>
    #             <p>To re-create a custom action after it has been deleted you must use a string in
    #                 the version field that has never been used before. This string can be an incremented
    #                 version number, for example. To restore a deleted custom action, use a JSON file
    #                 that is identical to the deleted action, including the original string in the
    #                 version field.</p>
    #          </important>
    # @param [Hash, Types::DeleteCustomActionTypeInput] params
    # @option params [String] :category
    #   <p>The category of the custom action that you want to delete, such as source or
    #               deploy.</p>
    # @option params [String] :provider
    #   <p>The provider of the service used in the custom action, such as
    #               CodeDeploy.</p>
    # @option params [String] :version
    #   <p>The version of the custom action to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_action_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_action_type(params = {}, options = {})
      request = build_request(:delete_custom_action_type, params)
      request.send_request(options)
    end

    # <p>Deletes the specified pipeline.</p>
    # @param [Hash, Types::DeletePipelineInput] params
    # @option params [String] :name
    #   <p>The name of the pipeline to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_pipeline(params = {}, options = {})
      request = build_request(:delete_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes a previously created webhook by name. Deleting the webhook stops CodePipeline from starting a pipeline every time an external event occurs. The API
    #             returns successfully when trying to delete a webhook that is already deleted. If a
    #             deleted webhook is re-created by calling PutWebhook with the same name, it will have a
    #             different URL.</p>
    # @param [Hash, Types::DeleteWebhookInput] params
    # @option params [String] :name
    #   <p>The name of the webhook you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WebhookName", # required
    #   }
    #   options = {}
    #   response = client.delete_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWebhookOutput]
    def delete_webhook(params = {}, options = {})
      request = build_request(:delete_webhook, params)
      request.send_request(options)
    end

    # <p>Removes the connection between the webhook that was created by CodePipeline
    #             and the external tool with events to be detected. Currently supported only for webhooks
    #             that target an action type of GitHub.</p>
    # @param [Hash, Types::DeregisterWebhookWithThirdPartyInput] params
    # @option params [String] :webhook_name
    #   <p>The name of the webhook you want to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_name: "WebhookName"
    #   }
    #   options = {}
    #   response = client.deregister_webhook_with_third_party(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterWebhookWithThirdPartyOutput]
    def deregister_webhook_with_third_party(params = {}, options = {})
      request = build_request(:deregister_webhook_with_third_party, params)
      request.send_request(options)
    end

    # <p>Prevents artifacts in a pipeline from transitioning to the next stage in the
    #             pipeline.</p>
    # @param [Hash, Types::DisableStageTransitionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline in which you want to disable the flow of artifacts from
    #               one stage to another.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage where you want to disable the inbound or outbound transition
    #               of artifacts.</p>
    # @option params [String] :transition_type
    #   <p>Specifies whether artifacts are prevented from transitioning into the stage and
    #               being processed by the actions in that stage (inbound), or prevented from transitioning
    #               from the stage after they have been processed by the actions in that stage
    #               (outbound).</p>
    # @option params [String] :reason
    #   <p>The reason given to the user that a stage is disabled, such as waiting for manual
    #               approval or manual tests. This message is displayed in the pipeline console
    #               UI.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     transition_type: "Inbound" # One of: ["Inbound", "Outbound"], # required
    #     reason: "DisabledReason", # required
    #   }
    #   options = {}
    #   response = client.disable_stage_transition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_stage_transition(params = {}, options = {})
      request = build_request(:disable_stage_transition, params)
      request.send_request(options)
    end

    # <p>Enables artifacts in a pipeline to transition to a stage in a pipeline.</p>
    # @param [Hash, Types::EnableStageTransitionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline in which you want to enable the flow of artifacts from one
    #               stage to another.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage where you want to enable the transition of artifacts, either
    #               into the stage (inbound) or from that stage to the next stage (outbound).</p>
    # @option params [String] :transition_type
    #   <p>Specifies whether artifacts are allowed to enter the stage and be processed by the
    #               actions in that stage (inbound) or whether already processed artifacts are allowed to
    #               transition to the next stage (outbound).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     transition_type: "Inbound" # One of: ["Inbound", "Outbound"], # required
    #   }
    #   options = {}
    #   response = client.enable_stage_transition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_stage_transition(params = {}, options = {})
      request = build_request(:enable_stage_transition, params)
      request.send_request(options)
    end

    # <p>Returns information about an action type created for an external provider, where the
    #             action is to be used by customers of the external provider. The action can be created
    #             with any supported integration model.</p>
    # @param [Hash, Types::GetActionTypeInput] params
    # @option params [String] :category
    #   <p>Defines what kind of action can be taken in the stage. The following are the valid
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Compute</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :owner
    #   <p>The creator of an action type that was created with any supported integration model.
    #               There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>
    # @option params [String] :provider
    #   <p>The provider of the action type being called. The provider name is specified when the
    #               action type is created.</p>
    # @option params [String] :version
    #   <p>A string that describes the action type version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #     owner: "ActionTypeOwner", # required
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #   }
    #   options = {}
    #   response = client.get_action_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_type: {
    #       description: "ActionTypeDescription",
    #       executor: { # required
    #         configuration: { # required
    #           lambda_executor_configuration: {
    #             lambda_function_arn: "LambdaFunctionArn", # required
    #           },
    #           job_worker_executor_configuration: {
    #             polling_accounts: ["AccountId"],
    #             polling_service_principals: ["ServicePrincipal"]
    #           }
    #         },
    #         type: "JobWorker" # One of: ["JobWorker", "Lambda"], # required
    #         policy_statements_template: "PolicyStatementsTemplate",
    #         job_timeout: 1
    #       },
    #       id: { # required
    #         category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #         owner: "ActionTypeOwner", # required
    #         provider: "ActionProvider", # required
    #         version: "Version", # required
    #       },
    #       input_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       output_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       permissions: {
    #         allowed_accounts: ["AllowedAccount"], # required
    #       },
    #       properties: [
    #         {
    #           name: "ActionConfigurationKey", # required
    #           optional: false, # required
    #           key: false, # required
    #           no_echo: false, # required
    #           queryable: false,
    #           description: "PropertyDescription"
    #         }
    #       ],
    #       urls: {
    #         configuration_url: "Url",
    #         entity_url_template: "UrlTemplate",
    #         execution_url_template: "UrlTemplate",
    #         revision_url_template: "UrlTemplate"
    #       }
    #     }
    #   }
    # @return [Types::GetActionTypeOutput]
    def get_action_type(params = {}, options = {})
      request = build_request(:get_action_type, params)
      request.send_request(options)
    end

    # <p>Returns information about a job. Used for custom actions only.</p>
    #          <important>
    #             <p>When this API is called, CodePipeline returns temporary credentials for
    #                 the S3 bucket used to store artifacts for the pipeline, if the action requires
    #                 access to that S3 bucket for input or output artifacts. This API also returns any
    #                 secret values defined for the action.</p>
    #          </important>
    # @param [Hash, Types::GetJobDetailsInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID for the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_details: {
    #       id: "JobId",
    #       data: {
    #         action_type_id: {
    #           category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #           owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #           provider: "ActionProvider", # required
    #           version: "Version", # required
    #         },
    #         action_configuration: {
    #           configuration: {
    #             "ActionConfigurationKey" => "ActionConfigurationValue"
    #           }
    #         },
    #         pipeline_context: {
    #           pipeline_name: "PipelineName",
    #           stage: {
    #             name: "StageName"
    #           },
    #           action: {
    #             name: "ActionName",
    #             action_execution_id: "ActionExecutionId"
    #           },
    #           pipeline_arn: "PipelineArn",
    #           pipeline_execution_id: "PipelineExecutionId"
    #         },
    #         input_artifacts: [
    #           {
    #             name: "ArtifactName",
    #             revision: "Revision",
    #             location: {
    #               type: "S3" # One of: ["S3"],
    #               s3_location: {
    #                 bucket_name: "S3BucketName", # required
    #                 object_key: "S3ObjectKey", # required
    #               }
    #             }
    #           }
    #         ],
    #         output_artifacts: [
    #           {
    #             name: "ArtifactName",
    #             revision: "Revision",
    #             location: {
    #               type: "S3" # One of: ["S3"],
    #               s3_location: {
    #                 bucket_name: "S3BucketName", # required
    #                 object_key: "S3ObjectKey", # required
    #               }
    #             }
    #           }
    #         ],
    #         artifact_credentials: {
    #           access_key_id: "AccessKeyId", # required
    #           secret_access_key: "SecretAccessKey", # required
    #           session_token: "SessionToken", # required
    #         },
    #         continuation_token: "ContinuationToken",
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       account_id: "AccountId"
    #     }
    #   }
    # @return [Types::GetJobDetailsOutput]
    def get_job_details(params = {}, options = {})
      request = build_request(:get_job_details, params)
      request.send_request(options)
    end

    # <p>Returns the metadata, structure, stages, and actions of a pipeline. Can be used to
    #             return the entire structure of a pipeline in JSON format, which can then be modified and
    #             used to update the pipeline structure with <a>UpdatePipeline</a>.</p>
    # @param [Hash, Types::GetPipelineInput] params
    # @option params [String] :name
    #   <p>The name of the pipeline for which you want to get information. Pipeline names must
    #               be unique in an Amazon Web Services account.</p>
    # @option params [Integer] :version
    #   <p>The version number of the pipeline. If you do not specify a version, defaults to
    #               the current version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipelineName", # required
    #     version: 1
    #   }
    #   options = {}
    #   response = client.get_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3" # One of: ["S3"], # required
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3" # One of: ["S3"], # required
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         }
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule" # One of: ["Schedule"], # required
    #             }
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #                 owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue"
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"]
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 }
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT" # One of: ["PLAINTEXT", "SECRETS_MANAGER"]
    #                 }
    #               ]
    #             }
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"]
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       pipeline_type: "V1" # One of: ["V1", "V2"],
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection" # One of: ["CodeStarSourceConnection"], # required
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"]
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN" # One of: ["OPEN", "UPDATED", "CLOSED"]],
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     metadata: {
    #       pipeline_arn: "PipelineArn",
    #       created: Time.now,
    #       updated: Time.now,
    #       polling_disabled_at: Time.now
    #     }
    #   }
    # @return [Types::GetPipelineOutput]
    def get_pipeline(params = {}, options = {})
      request = build_request(:get_pipeline, params)
      request.send_request(options)
    end

    # <p>Returns information about an execution of a pipeline, including details about
    #             artifacts, the pipeline execution ID, and the name, version, and status of the
    #             pipeline.</p>
    # @param [Hash, Types::GetPipelineExecutionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline about which you want to get execution details.</p>
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution about which you want to get execution
    #               details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_pipeline_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution: {
    #       pipeline_name: "PipelineName",
    #       pipeline_version: 1,
    #       pipeline_execution_id: "PipelineExecutionId",
    #       status: "Cancelled" # One of: ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"],
    #       status_summary: "PipelineExecutionStatusSummary",
    #       artifact_revisions: [
    #         {
    #           name: "ArtifactName",
    #           revision_id: "Revision",
    #           revision_change_identifier: "RevisionChangeIdentifier",
    #           revision_summary: "RevisionSummary",
    #           created: Time.now,
    #           revision_url: "Url"
    #         }
    #       ],
    #       variables: [
    #         {
    #           name: "String",
    #           resolved_value: "String"
    #         }
    #       ],
    #       trigger: {
    #         trigger_type: "CreatePipeline" # One of: ["CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision", "WebhookV2", "ManualRollback", "AutomatedRollback"],
    #         trigger_detail: "TriggerDetail"
    #       },
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       execution_type: "STANDARD" # One of: ["STANDARD", "ROLLBACK"],
    #       rollback_metadata: {
    #         rollback_target_pipeline_execution_id: "PipelineExecutionId"
    #       }
    #     }
    #   }
    # @return [Types::GetPipelineExecutionOutput]
    def get_pipeline_execution(params = {}, options = {})
      request = build_request(:get_pipeline_execution, params)
      request.send_request(options)
    end

    # <p>Returns information about the state of a pipeline, including the stages and
    #             actions.</p>
    #          <note>
    #             <p>Values returned in the <code>revisionId</code> and <code>revisionUrl</code>
    #                 fields indicate the source revision information, such as the commit ID, for the
    #                 current state.</p>
    #          </note>
    # @param [Hash, Types::GetPipelineStateInput] params
    # @option params [String] :name
    #   <p>The name of the pipeline about which you want to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.get_pipeline_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_name: "PipelineName",
    #     pipeline_version: 1,
    #     stage_states: [
    #       {
    #         stage_name: "StageName",
    #         inbound_execution: {
    #           pipeline_execution_id: "PipelineExecutionId", # required
    #           status: "Cancelled" # One of: ["Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"], # required
    #           type: "STANDARD" # One of: ["STANDARD", "ROLLBACK"]
    #         },
    #         inbound_executions: [
    #           {
    #             pipeline_execution_id: "PipelineExecutionId", # required
    #             status: "Cancelled" # One of: ["Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"], # required
    #             type: "STANDARD" # One of: ["STANDARD", "ROLLBACK"]
    #           }
    #         ],
    #         inbound_transition_state: {
    #           enabled: false,
    #           last_changed_by: "LastChangedBy",
    #           last_changed_at: Time.now,
    #           disabled_reason: "DisabledReason"
    #         },
    #         action_states: [
    #           {
    #             action_name: "ActionName",
    #             current_revision: {
    #               revision_id: "Revision", # required
    #               revision_change_id: "RevisionChangeIdentifier", # required
    #               created: Time.now, # required
    #             },
    #             latest_execution: {
    #               action_execution_id: "ActionExecutionId",
    #               status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #               summary: "ExecutionSummary",
    #               last_status_change: Time.now,
    #               token: "ActionExecutionToken",
    #               last_updated_by: "LastUpdatedBy",
    #               external_execution_id: "ExecutionId",
    #               external_execution_url: "Url",
    #               percent_complete: 1,
    #               error_details: {
    #                 code: "Code",
    #                 message: "Message"
    #               },
    #               log_stream_arn: "LogStreamARN"
    #             },
    #             entity_url: "Url",
    #             revision_url: "Url"
    #           }
    #         ],
    #         latest_execution: {
    #           pipeline_execution_id: "PipelineExecutionId", # required
    #           status: "Cancelled" # One of: ["Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"], # required
    #           type: "STANDARD" # One of: ["STANDARD", "ROLLBACK"]
    #         },
    #         before_entry_condition_state: {
    #           latest_execution: {
    #             status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #             summary: "ExecutionSummary"
    #           },
    #           condition_states: [
    #             {
    #               latest_execution: {
    #                 status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #                 summary: "ExecutionSummary",
    #                 last_status_change: Time.now
    #               },
    #               rule_states: [
    #                 {
    #                   rule_name: "RuleName",
    #                   current_revision: {
    #                     revision_id: "Revision", # required
    #                     revision_change_id: "RevisionChangeIdentifier", # required
    #                     created: Time.now, # required
    #                   },
    #                   latest_execution: {
    #                     rule_execution_id: "RuleExecutionId",
    #                     status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #                     summary: "ExecutionSummary",
    #                     last_status_change: Time.now,
    #                     token: "RuleExecutionToken",
    #                     last_updated_by: "LastUpdatedBy",
    #                     external_execution_id: "ExecutionId",
    #                     external_execution_url: "Url",
    #                     error_details: {
    #                       code: "Code",
    #                       message: "Message"
    #                     }
    #                   },
    #                   entity_url: "Url",
    #                   revision_url: "Url"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         on_success_condition_state: {
    #           latest_execution: {
    #             status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #             summary: "ExecutionSummary"
    #           },
    #           condition_states: [
    #             {
    #               latest_execution: {
    #                 status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #                 summary: "ExecutionSummary",
    #                 last_status_change: Time.now
    #               },
    #               rule_states: [
    #                 {
    #                   rule_name: "RuleName",
    #                   current_revision: {
    #                     revision_id: "Revision", # required
    #                     revision_change_id: "RevisionChangeIdentifier", # required
    #                     created: Time.now, # required
    #                   },
    #                   latest_execution: {
    #                     rule_execution_id: "RuleExecutionId",
    #                     status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #                     summary: "ExecutionSummary",
    #                     last_status_change: Time.now,
    #                     token: "RuleExecutionToken",
    #                     last_updated_by: "LastUpdatedBy",
    #                     external_execution_id: "ExecutionId",
    #                     external_execution_url: "Url",
    #                     error_details: {
    #                       code: "Code",
    #                       message: "Message"
    #                     }
    #                   },
    #                   entity_url: "Url",
    #                   revision_url: "Url"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         on_failure_condition_state: {
    #           latest_execution: {
    #             status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #             summary: "ExecutionSummary"
    #           },
    #           condition_states: [
    #             {
    #               latest_execution: {
    #                 status: "InProgress" # One of: ["InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"],
    #                 summary: "ExecutionSummary",
    #                 last_status_change: Time.now
    #               },
    #               rule_states: [
    #                 {
    #                   rule_name: "RuleName",
    #                   current_revision: {
    #                     revision_id: "Revision", # required
    #                     revision_change_id: "RevisionChangeIdentifier", # required
    #                     created: Time.now, # required
    #                   },
    #                   latest_execution: {
    #                     rule_execution_id: "RuleExecutionId",
    #                     status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #                     summary: "ExecutionSummary",
    #                     last_status_change: Time.now,
    #                     token: "RuleExecutionToken",
    #                     last_updated_by: "LastUpdatedBy",
    #                     external_execution_id: "ExecutionId",
    #                     external_execution_url: "Url",
    #                     error_details: {
    #                       code: "Code",
    #                       message: "Message"
    #                     }
    #                   },
    #                   entity_url: "Url",
    #                   revision_url: "Url"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         retry_stage_metadata: {
    #           auto_stage_retry_attempt: 1,
    #           manual_stage_retry_attempt: 1,
    #           latest_retry_trigger: "AutomatedStageRetry" # One of: ["AutomatedStageRetry", "ManualStageRetry"]
    #         }
    #       }
    #     ],
    #     created: Time.now,
    #     updated: Time.now
    #   }
    # @return [Types::GetPipelineStateOutput]
    def get_pipeline_state(params = {}, options = {})
      request = build_request(:get_pipeline_state, params)
      request.send_request(options)
    end

    # <p>Requests the details of a job for a third party action. Used for partner actions
    #             only.</p>
    #          <important>
    #             <p>When this API is called, CodePipeline returns temporary credentials for
    #                 the S3 bucket used to store artifacts for the pipeline, if the action requires
    #                 access to that S3 bucket for input or output artifacts. This API also returns any
    #                 secret values defined for the action.</p>
    #          </important>
    # @param [Hash, Types::GetThirdPartyJobDetailsInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID used for identifying the job.</p>
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.get_third_party_job_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_details: {
    #       id: "ThirdPartyJobId",
    #       data: {
    #         action_type_id: {
    #           category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #           owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #           provider: "ActionProvider", # required
    #           version: "Version", # required
    #         },
    #         action_configuration: {
    #           configuration: {
    #             "ActionConfigurationKey" => "ActionConfigurationValue"
    #           }
    #         },
    #         pipeline_context: {
    #           pipeline_name: "PipelineName",
    #           stage: {
    #             name: "StageName"
    #           },
    #           action: {
    #             name: "ActionName",
    #             action_execution_id: "ActionExecutionId"
    #           },
    #           pipeline_arn: "PipelineArn",
    #           pipeline_execution_id: "PipelineExecutionId"
    #         },
    #         input_artifacts: [
    #           {
    #             name: "ArtifactName",
    #             revision: "Revision",
    #             location: {
    #               type: "S3" # One of: ["S3"],
    #               s3_location: {
    #                 bucket_name: "S3BucketName", # required
    #                 object_key: "S3ObjectKey", # required
    #               }
    #             }
    #           }
    #         ],
    #         output_artifacts: [
    #           {
    #             name: "ArtifactName",
    #             revision: "Revision",
    #             location: {
    #               type: "S3" # One of: ["S3"],
    #               s3_location: {
    #                 bucket_name: "S3BucketName", # required
    #                 object_key: "S3ObjectKey", # required
    #               }
    #             }
    #           }
    #         ],
    #         artifact_credentials: {
    #           access_key_id: "AccessKeyId", # required
    #           secret_access_key: "SecretAccessKey", # required
    #           session_token: "SessionToken", # required
    #         },
    #         continuation_token: "ContinuationToken",
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       nonce: "Nonce"
    #     }
    #   }
    # @return [Types::GetThirdPartyJobDetailsOutput]
    def get_third_party_job_details(params = {}, options = {})
      request = build_request(:get_third_party_job_details, params)
      request.send_request(options)
    end

    # <p>Lists the action executions that have occurred in a pipeline.</p>
    # @param [Hash, Types::ListActionExecutionsInput] params
    # @option params [String] :pipeline_name
    #   <p> The name of the pipeline for which you want to list action execution history.</p>
    # @option params [Types::ActionExecutionFilter] :filter
    #   <p>Input information used to filter action execution history.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Action execution history
    #               is retained for up to 12 months, based on action execution start times. Default value is
    #               100. </p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListActionExecutions</code> call,
    #               which can be used to return the next set of action executions in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     filter: {
    #       pipeline_execution_id: "PipelineExecutionId",
    #       latest_in_pipeline_execution: {
    #         pipeline_execution_id: "PipelineExecutionId", # required
    #         start_time_range: "Latest" # One of: ["Latest", "All"], # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_action_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_execution_details: [
    #       {
    #         pipeline_execution_id: "PipelineExecutionId",
    #         action_execution_id: "ActionExecutionId",
    #         pipeline_version: 1,
    #         stage_name: "StageName",
    #         action_name: "ActionName",
    #         start_time: Time.now,
    #         last_update_time: Time.now,
    #         updated_by: "LastUpdatedBy",
    #         status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #         input: {
    #           action_type_id: {
    #             category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #             owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #             provider: "ActionProvider", # required
    #             version: "Version", # required
    #           },
    #           configuration: {
    #             "ActionConfigurationKey" => "ActionConfigurationValue"
    #           },
    #           resolved_configuration: {
    #             "String" => "String"
    #           },
    #           role_arn: "RoleArn",
    #           region: "AWSRegionName",
    #           input_artifacts: [
    #             {
    #               name: "ArtifactName",
    #               s3location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               }
    #             }
    #           ],
    #           namespace: "ActionNamespace"
    #         },
    #         output: {
    #           output_artifacts: [
    #             {
    #               name: "ArtifactName",
    #               s3location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               }
    #             }
    #           ],
    #           execution_result: {
    #             external_execution_id: "ExternalExecutionId",
    #             external_execution_summary: "ExternalExecutionSummary",
    #             external_execution_url: "Url",
    #             error_details: {
    #               code: "Code",
    #               message: "Message"
    #             },
    #             log_stream_arn: "LogStreamARN"
    #           },
    #           output_variables: {
    #             "OutputVariablesKey" => "OutputVariablesValue"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActionExecutionsOutput]
    def list_action_executions(params = {}, options = {})
      request = build_request(:list_action_executions, params)
      request.send_request(options)
    end

    # <p>Gets a summary of all CodePipeline action types associated with your
    #             account.</p>
    # @param [Hash, Types::ListActionTypesInput] params
    # @option params [String] :action_owner_filter
    #   <p>Filters the list of action types to those created by a specified entity.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous list action types call, which can
    #               be used to return the next set of action types in the list.</p>
    # @option params [String] :region_filter
    #   <p>The Region to filter on for the list of action types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_owner_filter: "AWS" # One of: ["AWS", "ThirdParty", "Custom"],
    #     next_token: "NextToken",
    #     region_filter: "AWSRegionName"
    #   }
    #   options = {}
    #   response = client.list_action_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_types: [ # required
    #       {
    #         id: { # required
    #           category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #           owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #           provider: "ActionProvider", # required
    #           version: "Version", # required
    #         },
    #         settings: {
    #           third_party_configuration_url: "Url",
    #           entity_url_template: "UrlTemplate",
    #           execution_url_template: "UrlTemplate",
    #           revision_url_template: "UrlTemplate"
    #         },
    #         action_configuration_properties: [
    #           {
    #             name: "ActionConfigurationKey", # required
    #             required: false, # required
    #             key: false, # required
    #             secret: false, # required
    #             queryable: false,
    #             description: "Description",
    #             type: "String" # One of: ["String", "Number", "Boolean"]
    #           }
    #         ],
    #         input_artifact_details: { # required
    #           minimum_count: 1, # required
    #           maximum_count: 1, # required
    #         },
    #         output_artifact_details: { # required
    #           minimum_count: 1, # required
    #           maximum_count: 1, # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActionTypesOutput]
    def list_action_types(params = {}, options = {})
      request = build_request(:list_action_types, params)
      request.send_request(options)
    end

    # <p>Lists the targets for the deploy action.</p>
    # @param [Hash, Types::ListDeployActionExecutionTargetsInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline with the deploy action.</p>
    # @option params [String] :action_execution_id
    #   <p>The execution ID for the deploy action.</p>
    # @option params [Array<Types::TargetFilter>] :filters
    #   <p>Filters the targets for a specified deploy action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous list action types call, which can be
    #               used to return the next set of action types in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName",
    #     action_execution_id: "ActionExecutionId", # required
    #     filters: [
    #       {
    #         name: "TARGET_STATUS" # One of: ["TARGET_STATUS"],
    #         values: ["TargetFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deploy_action_execution_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         target_id: "String",
    #         target_type: "String",
    #         status: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         events: [
    #           {
    #             name: "String",
    #             status: "String",
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             context: {
    #               ssm_command_id: "String",
    #               message: "String"
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeployActionExecutionTargetsOutput]
    def list_deploy_action_execution_targets(params = {}, options = {})
      request = build_request(:list_deploy_action_execution_targets, params)
      request.send_request(options)
    end

    # <p>Gets a summary of the most recent executions for a pipeline.</p>
    #          <note>
    #             <p>When applying the filter for pipeline executions that have succeeded in the stage,
    #                 the operation returns all executions in the current pipeline version beginning on
    #                 February 1, 2024.</p>
    #          </note>
    # @param [Hash, Types::ListPipelineExecutionsInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    # @option params [Types::PipelineExecutionFilter] :filter
    #   <p>The pipeline execution to filter on.</p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListPipelineExecutions</code>
    #               call, which can be used to return the next set of pipeline executions in the
    #               list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     max_results: 1,
    #     filter: {
    #       succeeded_in_stage: {
    #         stage_name: "StageName"
    #       }
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_pipeline_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution_summaries: [
    #       {
    #         pipeline_execution_id: "PipelineExecutionId",
    #         status: "Cancelled" # One of: ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"],
    #         status_summary: "PipelineExecutionStatusSummary",
    #         start_time: Time.now,
    #         last_update_time: Time.now,
    #         source_revisions: [
    #           {
    #             action_name: "ActionName", # required
    #             revision_id: "Revision",
    #             revision_summary: "RevisionSummary",
    #             revision_url: "Url"
    #           }
    #         ],
    #         trigger: {
    #           trigger_type: "CreatePipeline" # One of: ["CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision", "WebhookV2", "ManualRollback", "AutomatedRollback"],
    #           trigger_detail: "TriggerDetail"
    #         },
    #         stop_trigger: {
    #           reason: "StopPipelineExecutionReason"
    #         },
    #         execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #         execution_type: "STANDARD" # One of: ["STANDARD", "ROLLBACK"],
    #         rollback_metadata: {
    #           rollback_target_pipeline_execution_id: "PipelineExecutionId"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPipelineExecutionsOutput]
    def list_pipeline_executions(params = {}, options = {})
      request = build_request(:list_pipeline_executions, params)
      request.send_request(options)
    end

    # <p>Gets a summary of all of the pipelines associated with your account.</p>
    # @param [Hash, Types::ListPipelinesInput] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous list pipelines call. It can be
    #               used to return the next set of pipelines in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of pipelines to return in a single call. To retrieve the remaining
    #               pipelines, make another call with the returned nextToken value. The minimum value you
    #               can specify is 1. The maximum accepted value is 1000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipelines: [
    #       {
    #         name: "PipelineName",
    #         version: 1,
    #         pipeline_type: "V1" # One of: ["V1", "V2"],
    #         execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #         created: Time.now,
    #         updated: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPipelinesOutput]
    def list_pipelines(params = {}, options = {})
      request = build_request(:list_pipelines, params)
      request.send_request(options)
    end

    # <p>Lists the rule executions that have occurred in a pipeline configured for conditions
    #             with rules.</p>
    # @param [Hash, Types::ListRuleExecutionsInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    # @option params [Types::RuleExecutionFilter] :filter
    #   <p>Input information used to filter rule execution history.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListRuleExecutions</code> call,
    #               which can be used to return the next set of rule executions in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     filter: {
    #       pipeline_execution_id: "PipelineExecutionId",
    #       latest_in_pipeline_execution: {
    #         pipeline_execution_id: "PipelineExecutionId", # required
    #         start_time_range: "Latest" # One of: ["Latest", "All"], # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_rule_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_execution_details: [
    #       {
    #         pipeline_execution_id: "PipelineExecutionId",
    #         rule_execution_id: "RuleExecutionId",
    #         pipeline_version: 1,
    #         stage_name: "StageName",
    #         rule_name: "RuleName",
    #         start_time: Time.now,
    #         last_update_time: Time.now,
    #         updated_by: "LastUpdatedBy",
    #         status: "InProgress" # One of: ["InProgress", "Abandoned", "Succeeded", "Failed"],
    #         input: {
    #           rule_type_id: {
    #             category: "Rule" # One of: ["Rule"], # required
    #             owner: "AWS" # One of: ["AWS"],
    #             provider: "RuleProvider", # required
    #             version: "Version"
    #           },
    #           configuration: {
    #             "RuleConfigurationKey" => "RuleConfigurationValue"
    #           },
    #           resolved_configuration: {
    #             "String" => "String"
    #           },
    #           role_arn: "RoleArn",
    #           region: "AWSRegionName",
    #           input_artifacts: [
    #             {
    #               name: "ArtifactName",
    #               s3location: {
    #                 bucket: "S3Bucket",
    #                 key: "S3Key"
    #               }
    #             }
    #           ]
    #         },
    #         output: {
    #           execution_result: {
    #             external_execution_id: "ExternalExecutionId",
    #             external_execution_summary: "ExternalExecutionSummary",
    #             external_execution_url: "Url",
    #             error_details: {
    #               code: "Code",
    #               message: "Message"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRuleExecutionsOutput]
    def list_rule_executions(params = {}, options = {})
      request = build_request(:list_rule_executions, params)
      request.send_request(options)
    end

    # <p>Lists the rules for the condition. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage
    #                 conditions</a> and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>.For more information about rules, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html">CodePipeline rule reference</a>.</p>
    # @param [Hash, Types::ListRuleTypesInput] params
    # @option params [String] :rule_owner_filter
    #   <p>The rule owner to filter on.</p>
    # @option params [String] :region_filter
    #   <p>The rule Region to filter on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_owner_filter: "AWS" # One of: ["AWS"],
    #     region_filter: "AWSRegionName"
    #   }
    #   options = {}
    #   response = client.list_rule_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_types: [ # required
    #       {
    #         id: { # required
    #           category: "Rule" # One of: ["Rule"], # required
    #           owner: "AWS" # One of: ["AWS"],
    #           provider: "RuleProvider", # required
    #           version: "Version"
    #         },
    #         settings: {
    #           third_party_configuration_url: "Url",
    #           entity_url_template: "UrlTemplate",
    #           execution_url_template: "UrlTemplate",
    #           revision_url_template: "UrlTemplate"
    #         },
    #         rule_configuration_properties: [
    #           {
    #             name: "RuleConfigurationKey", # required
    #             required: false, # required
    #             key: false, # required
    #             secret: false, # required
    #             queryable: false,
    #             description: "Description",
    #             type: "String" # One of: ["String", "Number", "Boolean"]
    #           }
    #         ],
    #         input_artifact_details: { # required
    #           minimum_count: 1, # required
    #           maximum_count: 1, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRuleTypesOutput]
    def list_rule_types(params = {}, options = {})
      request = build_request(:list_rule_types, params)
      request.send_request(options)
    end

    # <p>Gets the set of key-value pairs (metadata) that are used to manage the
    #             resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous API call, which would be used to return
    #               the next page of the list. The ListTagsforResource call lists all available tags in one
    #               call and does not use pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
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
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Gets a listing of all the webhooks in this Amazon Web Services Region for this
    #             account. The output lists all webhooks and includes the webhook URL and ARN and the
    #             configuration for each webhook.</p>
    #          <note>
    #             <p>If a secret token was provided, it will be redacted in the response.</p>
    #          </note>
    # @param [Hash, Types::ListWebhooksInput] params
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous ListWebhooks call, which can be used
    #               to return the next set of webhooks in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_webhooks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhooks: [
    #       {
    #         definition: { # required
    #           name: "WebhookName", # required
    #           target_pipeline: "PipelineName", # required
    #           target_action: "ActionName", # required
    #           filters: [ # required
    #             {
    #               json_path: "JsonPath", # required
    #               match_equals: "MatchEquals"
    #             }
    #           ],
    #           authentication: "GITHUB_HMAC" # One of: ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"], # required
    #           authentication_configuration: { # required
    #             allowed_ip_range: "WebhookAuthConfigurationAllowedIPRange",
    #             secret_token: "WebhookAuthConfigurationSecretToken"
    #           }
    #         },
    #         url: "WebhookUrl", # required
    #         error_message: "WebhookErrorMessage",
    #         error_code: "WebhookErrorCode",
    #         last_triggered: Time.now,
    #         arn: "WebhookArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebhooksOutput]
    def list_webhooks(params = {}, options = {})
      request = build_request(:list_webhooks, params)
      request.send_request(options)
    end

    # <p>Used to override a stage condition. For more information about conditions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html">Stage
    #                 conditions</a> and <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html">How do
    #                 stage conditions work?</a>.</p>
    # @param [Hash, Types::OverrideStageConditionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline with the stage that will override the condition.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage for the override.</p>
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution for the override.</p>
    # @option params [String] :condition_type
    #   <p>The type of condition to override for the stage, such as entry conditions, failure
    #               conditions, or success conditions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     condition_type: "BEFORE_ENTRY" # One of: ["BEFORE_ENTRY", "ON_SUCCESS"], # required
    #   }
    #   options = {}
    #   response = client.override_stage_condition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def override_stage_condition(params = {}, options = {})
      request = build_request(:override_stage_condition, params)
      request.send_request(options)
    end

    # <p>Returns information about any jobs for CodePipeline to act on.
    #                 <code>PollForJobs</code> is valid only for action types with "Custom" in the owner
    #             field. If the action type contains <code>AWS</code> or <code>ThirdParty</code> in the
    #             owner field, the <code>PollForJobs</code> action returns an error.</p>
    #          <important>
    #             <p>When this API is called, CodePipeline returns temporary credentials for
    #                 the S3 bucket used to store artifacts for the pipeline, if the action requires
    #                 access to that S3 bucket for input or output artifacts. This API also returns any
    #                 secret values defined for the action.</p>
    #          </important>
    # @param [Hash, Types::PollForJobsInput] params
    # @option params [Types::ActionTypeId] :action_type_id
    #   <p>Represents information about an action type.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    # @option params [Hash<String, String>] :query_param
    #   <p>A map of property names and values. For an action type with no queryable
    #               properties, this value must be null or an empty map. For an action type with a queryable
    #               property, you must supply that property as a key in the map. Only jobs whose action
    #               configuration matches the mapped value are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type_id: { # required
    #       category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #       owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #       provider: "ActionProvider", # required
    #       version: "Version", # required
    #     },
    #     max_batch_size: 1,
    #     query_param: {
    #       "ActionConfigurationKey" => "ActionConfigurationQueryableValue"
    #     }
    #   }
    #   options = {}
    #   response = client.poll_for_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         id: "JobId",
    #         data: {
    #           action_type_id: {
    #             category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #             owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #             provider: "ActionProvider", # required
    #             version: "Version", # required
    #           },
    #           action_configuration: {
    #             configuration: {
    #               "ActionConfigurationKey" => "ActionConfigurationValue"
    #             }
    #           },
    #           pipeline_context: {
    #             pipeline_name: "PipelineName",
    #             stage: {
    #               name: "StageName"
    #             },
    #             action: {
    #               name: "ActionName",
    #               action_execution_id: "ActionExecutionId"
    #             },
    #             pipeline_arn: "PipelineArn",
    #             pipeline_execution_id: "PipelineExecutionId"
    #           },
    #           input_artifacts: [
    #             {
    #               name: "ArtifactName",
    #               revision: "Revision",
    #               location: {
    #                 type: "S3" # One of: ["S3"],
    #                 s3_location: {
    #                   bucket_name: "S3BucketName", # required
    #                   object_key: "S3ObjectKey", # required
    #                 }
    #               }
    #             }
    #           ],
    #           output_artifacts: [
    #             {
    #               name: "ArtifactName",
    #               revision: "Revision",
    #               location: {
    #                 type: "S3" # One of: ["S3"],
    #                 s3_location: {
    #                   bucket_name: "S3BucketName", # required
    #                   object_key: "S3ObjectKey", # required
    #                 }
    #               }
    #             }
    #           ],
    #           artifact_credentials: {
    #             access_key_id: "AccessKeyId", # required
    #             secret_access_key: "SecretAccessKey", # required
    #             session_token: "SessionToken", # required
    #           },
    #           continuation_token: "ContinuationToken",
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         },
    #         nonce: "Nonce",
    #         account_id: "AccountId"
    #       }
    #     ]
    #   }
    # @return [Types::PollForJobsOutput]
    def poll_for_jobs(params = {}, options = {})
      request = build_request(:poll_for_jobs, params)
      request.send_request(options)
    end

    # <p>Determines whether there are any third party jobs for a job worker to act on. Used
    #             for partner actions only.</p>
    #          <important>
    #             <p>When this API is called, CodePipeline returns temporary credentials for
    #                 the S3 bucket used to store artifacts for the pipeline, if the action requires
    #                 access to that S3 bucket for input or output artifacts.</p>
    #          </important>
    # @param [Hash, Types::PollForThirdPartyJobsInput] params
    # @option params [Types::ActionTypeId] :action_type_id
    #   <p>Represents information about an action type.</p>
    # @option params [Integer] :max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type_id: { # required
    #       category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #       owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #       provider: "ActionProvider", # required
    #       version: "Version", # required
    #     },
    #     max_batch_size: 1
    #   }
    #   options = {}
    #   response = client.poll_for_third_party_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         client_id: "ClientId",
    #         job_id: "JobId"
    #       }
    #     ]
    #   }
    # @return [Types::PollForThirdPartyJobsOutput]
    def poll_for_third_party_jobs(params = {}, options = {})
      request = build_request(:poll_for_third_party_jobs, params)
      request.send_request(options)
    end

    # <p>Provides information to CodePipeline about new revisions to a
    #             source.</p>
    # @param [Hash, Types::PutActionRevisionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that starts processing the revision to the
    #               source.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage that contains the action that acts on the revision.</p>
    # @option params [String] :action_name
    #   <p>The name of the action that processes the revision.</p>
    # @option params [Types::ActionRevision] :action_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     action_name: "ActionName", # required
    #     action_revision: { # required
    #       revision_id: "Revision", # required
    #       revision_change_id: "RevisionChangeIdentifier", # required
    #       created: Time.now, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_action_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     new_revision: false,
    #     pipeline_execution_id: "PipelineExecutionId"
    #   }
    # @return [Types::PutActionRevisionOutput]
    def put_action_revision(params = {}, options = {})
      request = build_request(:put_action_revision, params)
      request.send_request(options)
    end

    # <p>Provides the response to a manual approval request to CodePipeline. Valid
    #             responses include Approved and Rejected.</p>
    # @param [Hash, Types::PutApprovalResultInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that contains the action. </p>
    # @option params [String] :stage_name
    #   <p>The name of the stage that contains the action.</p>
    # @option params [String] :action_name
    #   <p>The name of the action for which approval is requested.</p>
    # @option params [Types::ApprovalResult] :result
    #   <p>Represents information about the result of the approval request.</p>
    # @option params [String] :token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval
    #               request corresponding to this token is still valid.</p>
    #            <important>
    #               <p>For a pipeline where the execution mode is set to PARALLEL, the token required to
    #                   approve/reject an approval request as detailed above is not available. Instead, use
    #                   the <code>externalExecutionId</code> in the response output from the <a>ListActionExecutions</a> action as the token in the approval
    #                   request.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     action_name: "ActionName", # required
    #     result: { # required
    #       summary: "ApprovalSummary", # required
    #       status: "Approved" # One of: ["Approved", "Rejected"], # required
    #     },
    #     token: "ApprovalToken", # required
    #   }
    #   options = {}
    #   response = client.put_approval_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approved_at: Time.now
    #   }
    # @return [Types::PutApprovalResultOutput]
    def put_approval_result(params = {}, options = {})
      request = build_request(:put_approval_result, params)
      request.send_request(options)
    end

    # <p>Represents the failure of a job as returned to the pipeline by a job worker. Used
    #             for custom actions only.</p>
    # @param [Hash, Types::PutJobFailureResultInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job that failed. This is the same ID returned
    #               from <code>PollForJobs</code>.</p>
    # @option params [Types::FailureDetails] :failure_details
    #   <p>The details about the failure of a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     failure_details: { # required
    #       type: "JobFailed" # One of: ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"], # required
    #       message: "Message", # required
    #       external_execution_id: "ExecutionId"
    #     }
    #   }
    #   options = {}
    #   response = client.put_job_failure_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_job_failure_result(params = {}, options = {})
      request = build_request(:put_job_failure_result, params)
      request.send_request(options)
    end

    # <p>Represents the success of a job as returned to the pipeline by a job worker. Used
    #             for custom actions only.</p>
    # @param [Hash, Types::PutJobSuccessResultInput] params
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job that succeeded. This is the same ID
    #               returned from <code>PollForJobs</code>.</p>
    # @option params [Types::CurrentRevision] :current_revision
    #   <p>The ID of the current revision of the artifact successfully worked on by the
    #               job.</p>
    # @option params [String] :continuation_token
    #   <p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a
    #               successful job provides to identify a custom action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the custom action. When the action is complete, no
    #               continuation token should be supplied.</p>
    # @option params [Types::ExecutionDetails] :execution_details
    #   <p>The execution details of the successful job, such as the actions taken by the job
    #               worker.</p>
    # @option params [Hash<String, String>] :output_variables
    #   <p>Key-value pairs produced as output by a job worker that can be made available to a
    #               downstream action configuration. <code>outputVariables</code> can be included only when
    #               there is no continuation token on the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     current_revision: {
    #       revision: "Revision", # required
    #       change_identifier: "RevisionChangeIdentifier", # required
    #       created: Time.now,
    #       revision_summary: "RevisionSummary"
    #     },
    #     continuation_token: "ContinuationToken",
    #     execution_details: {
    #       summary: "ExecutionSummary",
    #       external_execution_id: "ExecutionId",
    #       percent_complete: 1
    #     },
    #     output_variables: {
    #       "OutputVariablesKey" => "OutputVariablesValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_job_success_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_job_success_result(params = {}, options = {})
      request = build_request(:put_job_success_result, params)
      request.send_request(options)
    end

    # <p>Represents the failure of a third party job as returned to the pipeline by a job
    #             worker. Used for partner actions only.</p>
    # @param [Hash, Types::PutThirdPartyJobFailureResultInput] params
    # @option params [String] :job_id
    #   <p>The ID of the job that failed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    # @option params [Types::FailureDetails] :failure_details
    #   <p>Represents information about failure details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #     failure_details: { # required
    #       type: "JobFailed" # One of: ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"], # required
    #       message: "Message", # required
    #       external_execution_id: "ExecutionId"
    #     }
    #   }
    #   options = {}
    #   response = client.put_third_party_job_failure_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_third_party_job_failure_result(params = {}, options = {})
      request = build_request(:put_third_party_job_failure_result, params)
      request.send_request(options)
    end

    # <p>Represents the success of a third party job as returned to the pipeline by a job
    #             worker. Used for partner actions only.</p>
    # @param [Hash, Types::PutThirdPartyJobSuccessResultInput] params
    # @option params [String] :job_id
    #   <p>The ID of the job that successfully completed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    # @option params [Types::CurrentRevision] :current_revision
    #   <p>Represents information about a current revision.</p>
    # @option params [String] :continuation_token
    #   <p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a
    #               successful job provides to identify a partner action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the partner action. When the action is complete, no
    #               continuation token should be supplied.</p>
    # @option params [Types::ExecutionDetails] :execution_details
    #   <p>The details of the actions taken and results produced on an artifact as it passes
    #               through stages in the pipeline. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #     current_revision: {
    #       revision: "Revision", # required
    #       change_identifier: "RevisionChangeIdentifier", # required
    #       created: Time.now,
    #       revision_summary: "RevisionSummary"
    #     },
    #     continuation_token: "ContinuationToken",
    #     execution_details: {
    #       summary: "ExecutionSummary",
    #       external_execution_id: "ExecutionId",
    #       percent_complete: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_third_party_job_success_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_third_party_job_success_result(params = {}, options = {})
      request = build_request(:put_third_party_job_success_result, params)
      request.send_request(options)
    end

    # <p>Defines a webhook and returns a unique webhook URL generated by CodePipeline.
    #             This URL can be supplied to third party source hosting providers to call every time
    #             there's a code change. When CodePipeline receives a POST request on this URL, the
    #             pipeline defined in the webhook is started as long as the POST request satisfied the
    #             authentication and filtering requirements supplied when defining the webhook.
    #             RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to
    #             automatically configure supported third parties to call the generated webhook
    #             URL.</p>
    #          <important>
    #             <p>When creating CodePipeline webhooks, do not use your own credentials or
    #                 reuse the same secret token across multiple webhooks. For optimal security, generate
    #                 a unique secret token for each webhook you create. The secret token is an arbitrary
    #                 string that you provide, which GitHub uses to compute and sign the webhook payloads
    #                 sent to CodePipeline, for protecting the integrity and authenticity of the
    #                 webhook payloads. Using your own credentials or reusing the same token across
    #                 multiple webhooks can lead to security vulnerabilities.</p>
    #          </important>
    #          <note>
    #             <p>If a secret token was provided, it will be redacted in the response.</p>
    #          </note>
    # @param [Hash, Types::PutWebhookInput] params
    # @option params [Types::WebhookDefinition] :webhook
    #   <p>The detail provided in an input file to create the webhook, such as the webhook
    #               name, the pipeline name, and the action name. Give the webhook a unique name that helps
    #               you identify it. You might name the webhook after the pipeline and action it targets so
    #               that you can easily recognize what it's used for later.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the webhook.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook: { # required
    #       name: "WebhookName", # required
    #       target_pipeline: "PipelineName", # required
    #       target_action: "ActionName", # required
    #       filters: [ # required
    #         {
    #           json_path: "JsonPath", # required
    #           match_equals: "MatchEquals"
    #         }
    #       ],
    #       authentication: "GITHUB_HMAC" # One of: ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"], # required
    #       authentication_configuration: { # required
    #         allowed_ip_range: "WebhookAuthConfigurationAllowedIPRange",
    #         secret_token: "WebhookAuthConfigurationSecretToken"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: {
    #       definition: { # required
    #         name: "WebhookName", # required
    #         target_pipeline: "PipelineName", # required
    #         target_action: "ActionName", # required
    #         filters: [ # required
    #           {
    #             json_path: "JsonPath", # required
    #             match_equals: "MatchEquals"
    #           }
    #         ],
    #         authentication: "GITHUB_HMAC" # One of: ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"], # required
    #         authentication_configuration: { # required
    #           allowed_ip_range: "WebhookAuthConfigurationAllowedIPRange",
    #           secret_token: "WebhookAuthConfigurationSecretToken"
    #         }
    #       },
    #       url: "WebhookUrl", # required
    #       error_message: "WebhookErrorMessage",
    #       error_code: "WebhookErrorCode",
    #       last_triggered: Time.now,
    #       arn: "WebhookArn",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutWebhookOutput]
    def put_webhook(params = {}, options = {})
      request = build_request(:put_webhook, params)
      request.send_request(options)
    end

    # <p>Configures a connection between the webhook that was created and the external tool
    #             with events to be detected.</p>
    # @param [Hash, Types::RegisterWebhookWithThirdPartyInput] params
    # @option params [String] :webhook_name
    #   <p>The name of an existing webhook created with PutWebhook to register with a
    #               supported third party. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_name: "WebhookName"
    #   }
    #   options = {}
    #   response = client.register_webhook_with_third_party(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterWebhookWithThirdPartyOutput]
    def register_webhook_with_third_party(params = {}, options = {})
      request = build_request(:register_webhook_with_third_party, params)
      request.send_request(options)
    end

    # <p>You can retry a stage that has failed without having to run a pipeline again from
    #             the beginning. You do this by either retrying the failed actions in a stage or by
    #             retrying all actions in the stage starting from the first action in the stage. When you
    #             retry the failed actions in a stage, all actions that are still in progress continue
    #             working, and failed actions are triggered again. When you retry a failed stage from the
    #             first action in the stage, the stage cannot have any actions in progress. Before a stage
    #             can be retried, it must either have all actions failed or some actions failed and some
    #             succeeded.</p>
    # @param [Hash, Types::RetryStageExecutionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that contains the failed stage.</p>
    # @option params [String] :stage_name
    #   <p>The name of the failed stage to be retried.</p>
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
    #               the failed stage</p>
    # @option params [String] :retry_mode
    #   <p>The scope of the retry attempt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"], # required
    #   }
    #   options = {}
    #   response = client.retry_stage_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution_id: "PipelineExecutionId"
    #   }
    # @return [Types::RetryStageExecutionOutput]
    def retry_stage_execution(params = {}, options = {})
      request = build_request(:retry_stage_execution, params)
      request.send_request(options)
    end

    # <p>Rolls back a stage execution.</p>
    # @param [Hash, Types::RollbackStageInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline for which the stage will be rolled back. </p>
    # @option params [String] :stage_name
    #   <p>The name of the stage in the pipeline to be rolled back. </p>
    # @option params [String] :target_pipeline_execution_id
    #   <p>The pipeline execution ID for the stage to be rolled back to. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     target_pipeline_execution_id: "PipelineExecutionId", # required
    #   }
    #   options = {}
    #   response = client.rollback_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #   }
    # @return [Types::RollbackStageOutput]
    def rollback_stage(params = {}, options = {})
      request = build_request(:rollback_stage, params)
      request.send_request(options)
    end

    # <p>Starts the specified pipeline. Specifically, it begins processing the latest commit
    #             to the source location specified as part of the pipeline.</p>
    # @param [Hash, Types::StartPipelineExecutionInput] params
    # @option params [String] :name
    #   <p>The name of the pipeline to start.</p>
    # @option params [Array<Types::PipelineVariable>] :variables
    #   <p>A list that overrides pipeline variables for a pipeline execution that's being
    #               started. Variable names must match <code>[A-Za-z0-9@\-_]+</code>, and the values can be
    #               anything except an empty string.</p>
    # @option params [String] :client_request_token
    #   <p>The system-generated unique ID used to identify a unique execution
    #               request.</p>
    # @option params [Array<Types::SourceRevisionOverride>] :source_revisions
    #   <p>A list that allows you to specify, or override, the source revision for a pipeline
    #               execution that's being started. A source revision is the version with all the changes to
    #               your application code, or source artifact, for the pipeline execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipelineName", # required
    #     variables: [
    #       {
    #         name: "PipelineVariableName", # required
    #         value: "PipelineVariableValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     source_revisions: [
    #       {
    #         action_name: "ActionName", # required
    #         revision_type: "COMMIT_ID" # One of: ["COMMIT_ID", "IMAGE_DIGEST", "S3_OBJECT_VERSION_ID", "S3_OBJECT_KEY"], # required
    #         revision_value: "Revision", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_pipeline_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution_id: "PipelineExecutionId"
    #   }
    # @return [Types::StartPipelineExecutionOutput]
    def start_pipeline_execution(params = {}, options = {})
      request = build_request(:start_pipeline_execution, params)
      request.send_request(options)
    end

    # <p>Stops the specified pipeline execution. You choose to either stop the pipeline
    #             execution by completing in-progress actions without starting subsequent actions, or by
    #             abandoning in-progress actions. While completing or abandoning in-progress actions, the
    #             pipeline execution is in a <code>Stopping</code> state. After all in-progress actions
    #             are completed or abandoned, the pipeline execution is in a <code>Stopped</code>
    #             state.</p>
    # @param [Hash, Types::StopPipelineExecutionInput] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution to be stopped in the current stage. Use the
    #                   <code>GetPipelineState</code> action to retrieve the current
    #               pipelineExecutionId.</p>
    # @option params [Boolean] :abandon
    #   <p>Use this option to stop the pipeline execution by abandoning, rather than finishing,
    #               in-progress actions.</p>
    #            <note>
    #               <p>This option can lead to failed or out-of-sequence tasks.</p>
    #            </note>
    # @option params [String] :reason
    #   <p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     abandon: false,
    #     reason: "StopPipelineExecutionReason"
    #   }
    #   options = {}
    #   response = client.stop_pipeline_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_execution_id: "PipelineExecutionId"
    #   }
    # @return [Types::StopPipelineExecutionOutput]
    def stop_pipeline_execution(params = {}, options = {})
      request = build_request(:stop_pipeline_execution, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used
    #             to manage a resource. </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from an Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an action type that was created with any supported integration model, where
    #             the action type is to be used by customers of the action type provider. Use a JSON file
    #             with the action definition and <code>UpdateActionType</code> to provide the full
    #             structure.</p>
    # @param [Hash, Types::UpdateActionTypeInput] params
    # @option params [Types::ActionTypeDeclaration] :action_type
    #   <p>The action type definition for the action type to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: { # required
    #       description: "ActionTypeDescription",
    #       executor: { # required
    #         configuration: { # required
    #           lambda_executor_configuration: {
    #             lambda_function_arn: "LambdaFunctionArn", # required
    #           },
    #           job_worker_executor_configuration: {
    #             polling_accounts: ["AccountId"],
    #             polling_service_principals: ["ServicePrincipal"]
    #           }
    #         },
    #         type: "JobWorker" # One of: ["JobWorker", "Lambda"], # required
    #         policy_statements_template: "PolicyStatementsTemplate",
    #         job_timeout: 1
    #       },
    #       id: { # required
    #         category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #         owner: "ActionTypeOwner", # required
    #         provider: "ActionProvider", # required
    #         version: "Version", # required
    #       },
    #       input_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       output_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       permissions: {
    #         allowed_accounts: ["AllowedAccount"], # required
    #       },
    #       properties: [
    #         {
    #           name: "ActionConfigurationKey", # required
    #           optional: false, # required
    #           key: false, # required
    #           no_echo: false, # required
    #           queryable: false,
    #           description: "PropertyDescription"
    #         }
    #       ],
    #       urls: {
    #         configuration_url: "Url",
    #         entity_url_template: "UrlTemplate",
    #         execution_url_template: "UrlTemplate",
    #         revision_url_template: "UrlTemplate"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_action_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_action_type(params = {}, options = {})
      request = build_request(:update_action_type, params)
      request.send_request(options)
    end

    # <p>Updates a specified pipeline with edits or changes to its structure. Use a JSON
    #             file with the pipeline structure and <code>UpdatePipeline</code> to provide the full
    #             structure of the pipeline. Updating the pipeline increases the version number of the
    #             pipeline by 1.</p>
    # @param [Hash, Types::UpdatePipelineInput] params
    # @option params [Types::PipelineDeclaration] :pipeline
    #   <p>The name of the pipeline to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline: { # required
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3" # One of: ["S3"], # required
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3" # One of: ["S3"], # required
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         }
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule" # One of: ["Schedule"], # required
    #             }
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #                 owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue"
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"]
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 }
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT" # One of: ["PLAINTEXT", "SECRETS_MANAGER"]
    #                 }
    #               ]
    #             }
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"]
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       pipeline_type: "V1" # One of: ["V1", "V2"],
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection" # One of: ["CodeStarSourceConnection"], # required
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"]
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN" # One of: ["OPEN", "UPDATED", "CLOSED"]],
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3" # One of: ["S3"], # required
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS" # One of: ["KMS"], # required
    #         }
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3" # One of: ["S3"], # required
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS" # One of: ["KMS"], # required
    #           }
    #         }
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule" # One of: ["Schedule"], # required
    #             }
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source" # One of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"], # required
    #                 owner: "AWS" # One of: ["AWS", "ThirdParty", "Custom"], # required
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue"
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"]
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 }
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT" # One of: ["PLAINTEXT", "SECRETS_MANAGER"]
    #                 }
    #               ]
    #             }
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS" # One of: ["FAILED_ACTIONS", "ALL_ACTIONS"]
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK" # One of: ["ROLLBACK", "FAIL", "RETRY", "SKIP"],
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule" # One of: ["Rule"], # required
    #                       owner: "AWS" # One of: ["AWS"],
    #                       provider: "RuleProvider", # required
    #                       version: "Version"
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue"
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       }
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED" # One of: ["QUEUED", "SUPERSEDED", "PARALLEL"],
    #       pipeline_type: "V1" # One of: ["V1", "V2"],
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection" # One of: ["CodeStarSourceConnection"], # required
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"]
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN" # One of: ["OPEN", "UPDATED", "CLOSED"]],
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"]
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"]
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdatePipelineOutput]
    def update_pipeline(params = {}, options = {})
      request = build_request(:update_pipeline, params)
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
      context[:gem_name] = 'aws-sdk-codepipeline'
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
