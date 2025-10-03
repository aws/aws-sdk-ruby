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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::SFN
  # An API client for Aws::SFN.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSStepFunctions

    add_plugin(::Aws::SFN::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SFN::EndpointProvider)
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

    # <p>Creates an activity. An activity is a task that you write in any programming language and
    #       host on any machine that has access to Step Functions. Activities must poll Step Functions using the
    #         <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API
    #       actions. This function lets Step Functions know the existence of your activity and returns an
    #       identifier for use in a state machine and when polling from the activity.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <code>CreateActivity</code> is an idempotent API. Subsequent requests won’t create a
    #         duplicate resource if it was already created. <code>CreateActivity</code>'s idempotency
    #         check is based on the activity <code>name</code>. If a following request has different
    #           <code>tags</code> values, Step Functions will ignore these differences and treat it as an
    #         idempotent request of the previous. In this case, <code>tags</code> will not be updated,
    #         even if they are different.</p>
    #          </note>
    # @param [Hash, Types::CreateActivityInput] params
    # @option params [String] :name
    #   <p>The name of the activity to create. This name must be unique for your Amazon Web Services account and region for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>Settings to configure server-side encryption.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_activity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activity_arn: "Arn", # required
    #     creation_date: Time.now, # required
    #   }
    # @return [Types::CreateActivityOutput]
    def create_activity(params = {}, options = {})
      request = build_request(:create_activity, params)
      request.send_request(options)
    end

    # <p>Creates a state machine. A state machine consists of a collection of states that can do
    #       work (<code>Task</code> states), determine to which states to transition next
    #         (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states),
    #       and so on. State machines are specified using a JSON-based, structured language. For more
    #       information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States
    #         Language</a> in the Step Functions User Guide.</p>
    #          <p>If you set the <code>publish</code> parameter of this API action to <code>true</code>, it
    #       publishes version <code>1</code> as the first revision of the state machine.</p>
    #          <p>
    #         For additional control over security, you can encrypt your data using a <b>customer-managed key</b> for Step Functions state machines. You can configure a symmetric KMS key and data key reuse period when creating or updating a <b>State Machine</b>. The execution history and state machine definition will be encrypted with the key applied to the State Machine.
    #     </p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <code>CreateStateMachine</code> is an idempotent API. Subsequent requests won’t create a
    #         duplicate resource if it was already created. <code>CreateStateMachine</code>'s idempotency
    #         check is based on the state machine <code>name</code>, <code>definition</code>,
    #           <code>type</code>, <code>LoggingConfiguration</code>,
    #         <code>TracingConfiguration</code>, and <code>EncryptionConfiguration</code> The check is also based on the <code>publish</code> and <code>versionDescription</code> parameters. If a following request has a different
    #           <code>roleArn</code> or <code>tags</code>, Step Functions will ignore these differences and treat
    #         it as an idempotent request of the previous. In this case, <code>roleArn</code> and
    #           <code>tags</code> will not be updated, even if they are different.</p>
    #          </note>
    # @param [Hash, Types::CreateStateMachineInput] params
    # @option params [String] :name
    #   <p>The name of the state machine. </p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    # @option params [String] :definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
    # @option params [String] :type
    #   <p>Determines whether a Standard or Express state machine is created. The default is
    #           <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it
    #         has been created.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>Defines what execution history events are logged and where they are logged.</p>
    #            <note>
    #               <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see
    #             <a href="https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html">Log
    #             Levels</a> in the Step Functions User Guide.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to be added when creating a state machine.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @option params [Types::TracingConfiguration] :tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    # @option params [Boolean] :publish
    #   <p>Set to <code>true</code> to publish the first version of the state machine during creation. The default is <code>false</code>.</p>
    # @option params [String] :version_description
    #   <p>Sets description about the state machine version. You can only set the description if the <code>publish</code> parameter is set to <code>true</code>. Otherwise, if you set <code>versionDescription</code>, but <code>publish</code> to <code>false</code>, this API action throws <code>ValidationException</code>.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>Settings to configure server-side encryption.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     definition: "Definition", # required
    #     role_arn: "Arn", # required
    #     type: "STANDARD" # One of: ["STANDARD", "EXPRESS"],
    #     logging_configuration: {
    #       level: "ALL" # One of: ["ALL", "ERROR", "FATAL", "OFF"],
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn"
    #           }
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     tracing_configuration: {
    #       enabled: false
    #     },
    #     publish: false,
    #     version_description: "VersionDescription",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_state_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_arn: "Arn", # required
    #     creation_date: Time.now, # required
    #     state_machine_version_arn: "Arn"
    #   }
    # @return [Types::CreateStateMachineOutput]
    def create_state_machine(params = {}, options = {})
      request = build_request(:create_state_machine, params)
      request.send_request(options)
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> for a state machine that points to one or two <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">versions</a> of the same state machine. You can set your application to call <a>StartExecution</a> with an alias and update the version the alias uses without changing the client's code.</p>
    #          <p>You can also map an alias to split <a>StartExecution</a> requests between two
    #       versions of a state machine. To do this, add a second <code>RoutingConfig</code> object in the
    #         <code>routingConfiguration</code> parameter. You must also specify the percentage of
    #       execution run requests each version should receive in both <code>RoutingConfig</code> objects.
    #         Step Functions randomly chooses which version runs a given execution based on the
    #       percentage you specify.</p>
    #          <p>To create an alias that points to a single version, specify a single
    #         <code>RoutingConfig</code> object with a <code>weight</code> set to 100.</p>
    #          <p>You can create up to 100 aliases for each state machine. You must delete unused aliases using the <a>DeleteStateMachineAlias</a> API action.</p>
    #          <p>
    #             <code>CreateStateMachineAlias</code> is an idempotent API. Step Functions bases the
    #       idempotency check on the <code>stateMachineArn</code>, <code>description</code>,
    #         <code>name</code>, and <code>routingConfiguration</code> parameters. Requests that contain
    #       the same values for these parameters return a successful idempotent response without creating
    #       a duplicate resource.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateStateMachineAliasInput] params
    # @option params [String] :description
    #   <p>A description for the state machine alias.</p>
    # @option params [String] :name
    #   <p>The name of the state machine alias.</p>
    #            <p>To avoid conflict with version ARNs, don't use an integer in the name of the alias.</p>
    # @option params [Array<Types::RoutingConfigurationListItem>] :routing_configuration
    #   <p>The routing configuration of a state machine alias. The routing configuration shifts
    #         execution traffic between two state machine versions. <code>routingConfiguration</code>
    #         contains an array of <code>RoutingConfig</code> objects that specify up to two state machine
    #         versions. Step Functions then randomly choses which version to run an execution with based
    #         on the weight assigned to each <code>RoutingConfig</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "AliasDescription",
    #     name: "CharacterRestrictedName", # required
    #     routing_configuration: [ # required
    #       {
    #         state_machine_version_arn: "Arn", # required
    #         weight: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_state_machine_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_alias_arn: "Arn", # required
    #     creation_date: Time.now, # required
    #   }
    # @return [Types::CreateStateMachineAliasOutput]
    def create_state_machine_alias(params = {}, options = {})
      request = build_request(:create_state_machine_alias, params)
      request.send_request(options)
    end

    # <p>Deletes an activity.</p>
    # @param [Hash, Types::DeleteActivityInput] params
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activity_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_activity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteActivityOutput]
    def delete_activity(params = {}, options = {})
      request = build_request(:delete_activity, params)
      request.send_request(options)
    end

    # <p>Deletes a state machine. This is an asynchronous operation. It sets the state machine's
    #       status to <code>DELETING</code> and begins the deletion process. A state machine is deleted only when all its executions are completed. On the next state transition, the state machine's executions are terminated.</p>
    #          <p>A qualified state machine ARN can either refer to a <i>Distributed Map state</i> defined within a state machine, a version ARN, or an alias ARN.</p>
    #          <p>The following are some examples of qualified and unqualified state machine ARNs:</p>
    #          <ul>
    #             <li>
    #                <p>The following qualified state machine ARN refers to a <i>Distributed Map state</i> with a label <code>mapStateLabel</code> in a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel</code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a <i>Distributed Map state</i>, the request fails with <code>ValidationException</code>.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following unqualified state machine ARN refers to a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:partition:states:region:account-id:stateMachine:myStateMachine</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This API action also deletes all <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">versions</a> and <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">aliases</a> associated with a state machine.</p>
    #          <note>
    #             <p>For <code>EXPRESS</code> state machines, the deletion happens eventually (usually in
    #         less than a minute). Running executions may emit logs after <code>DeleteStateMachine</code>
    #         API is called.</p>
    #          </note>
    # @param [Hash, Types::DeleteStateMachineInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_state_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStateMachineOutput]
    def delete_state_machine(params = {}, options = {})
      request = build_request(:delete_state_machine, params)
      request.send_request(options)
    end

    # <p>Deletes a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a>.</p>
    #          <p>After you delete a state machine alias, you can't use it to start executions. When you
    #       delete a state machine alias, Step Functions doesn't delete the state machine versions
    #       that alias references.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateStateMachineAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteStateMachineAliasInput] params
    # @option params [String] :state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_alias_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_state_machine_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStateMachineAliasOutput]
    def delete_state_machine_alias(params = {}, options = {})
      request = build_request(:delete_state_machine_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>. After
    #       you delete a version, you can't call <a>StartExecution</a> using that version's ARN
    #       or use the version with a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a>.</p>
    #          <note>
    #             <p>Deleting a state machine version won't terminate its in-progress executions.</p>
    #          </note>
    #          <note>
    #             <p>You can't delete a state machine version currently referenced by one or more aliases. Before you delete a version, you must either delete the aliases or update them to point to another state machine version.</p>
    #          </note>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>PublishStateMachineVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineVersions</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteStateMachineVersionInput] params
    # @option params [String] :state_machine_version_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine version to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_version_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.delete_state_machine_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStateMachineVersionOutput]
    def delete_state_machine_version(params = {}, options = {})
      request = build_request(:delete_state_machine_version, params)
      request.send_request(options)
    end

    # <p>Describes an activity.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    # @param [Hash, Types::DescribeActivityInput] params
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activity_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_activity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activity_arn: "Arn", # required
    #     name: "Name", # required
    #     creation_date: Time.now, # required
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     }
    #   }
    # @return [Types::DescribeActivityOutput]
    def describe_activity(params = {}, options = {})
      request = build_request(:describe_activity, params)
      request.send_request(options)
    end

    # <p>Provides information about a state machine execution, such as the state machine associated with the execution, the execution input and output, and relevant execution metadata. If you've <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html">redriven</a> an execution, you can use this API action to return information about the redrives of that execution. In addition, you can use this API action to return the Map Run Amazon Resource Name (ARN) if the execution was dispatched by a Map Run.</p>
    #          <p>If you specify a version or alias ARN when you call the <a>StartExecution</a>
    #       API action, <code>DescribeExecution</code> returns that ARN.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>Executions of an <code>EXPRESS</code> state machine aren't supported by <code>DescribeExecution</code> unless a Map Run dispatched them.</p>
    # @param [Hash, Types::DescribeExecutionInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
    # @option params [String] :included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call DescribeStateMachine API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     included_data: "ALL_DATA" # One of: ["ALL_DATA", "METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.describe_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "Arn", # required
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED", "PENDING_REDRIVE"], # required
    #     start_date: Time.now, # required
    #     stop_date: Time.now,
    #     input: "SensitiveData",
    #     input_details: {
    #       included: false
    #     },
    #     output: "SensitiveData",
    #     output_details: {
    #       included: false
    #     },
    #     trace_header: "TraceHeader",
    #     map_run_arn: "LongArn",
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #     state_machine_version_arn: "Arn",
    #     state_machine_alias_arn: "Arn",
    #     redrive_count: 1,
    #     redrive_date: Time.now,
    #     redrive_status: "REDRIVABLE" # One of: ["REDRIVABLE", "NOT_REDRIVABLE", "REDRIVABLE_BY_MAP_RUN"],
    #     redrive_status_reason: "SensitiveData"
    #   }
    # @return [Types::DescribeExecutionOutput]
    def describe_execution(params = {}, options = {})
      request = build_request(:describe_execution, params)
      request.send_request(options)
    end

    # <p>Provides information about a Map Run's configuration, progress, and results. If you've <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html">redriven</a> a Map Run, this API action also returns information about the redrives of that Map Run. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html">Examining Map Run</a> in the <i>Step Functions Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeMapRunInput] params
    # @option params [String] :map_run_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a Map Run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_run_arn: "LongArn", # required
    #   }
    #   options = {}
    #   response = client.describe_map_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     map_run_arn: "LongArn", # required
    #     execution_arn: "Arn", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "ABORTED"], # required
    #     start_date: Time.now, # required
    #     stop_date: Time.now,
    #     max_concurrency: 1, # required
    #     tolerated_failure_percentage: 1.0, # required
    #     tolerated_failure_count: 1, # required
    #     item_counts: { # required
    #       pending: 1, # required
    #       running: 1, # required
    #       succeeded: 1, # required
    #       failed: 1, # required
    #       timed_out: 1, # required
    #       aborted: 1, # required
    #       total: 1, # required
    #       results_written: 1, # required
    #       failures_not_redrivable: 1,
    #       pending_redrive: 1
    #     },
    #     execution_counts: { # required
    #       pending: 1, # required
    #       running: 1, # required
    #       succeeded: 1, # required
    #       failed: 1, # required
    #       timed_out: 1, # required
    #       aborted: 1, # required
    #       total: 1, # required
    #       results_written: 1, # required
    #       failures_not_redrivable: 1,
    #       pending_redrive: 1
    #     },
    #     redrive_count: 1,
    #     redrive_date: Time.now
    #   }
    # @return [Types::DescribeMapRunOutput]
    def describe_map_run(params = {}, options = {})
      request = build_request(:describe_map_run, params)
      request.send_request(options)
    end

    # <p>Provides information about a state machine's definition, its IAM role Amazon Resource Name (ARN), and configuration.</p>
    #          <p>A qualified state machine ARN can either refer to a <i>Distributed Map state</i> defined within a state machine, a version ARN, or an alias ARN.</p>
    #          <p>The following are some examples of qualified and unqualified state machine ARNs:</p>
    #          <ul>
    #             <li>
    #                <p>The following qualified state machine ARN refers to a <i>Distributed Map state</i> with a label <code>mapStateLabel</code> in a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel</code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a <i>Distributed Map state</i>, the request fails with <code>ValidationException</code>.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following qualified state machine ARN refers to an alias named <code>PROD</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a version ARN or an alias ARN, the request starts execution for that version or alias.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following unqualified state machine ARN refers to a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This API action returns the details for a state machine version if the
    #         <code>stateMachineArn</code> you specify is a state machine version ARN.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    # @param [Hash, Types::DescribeStateMachineInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine for which you want the information.</p>
    #            <p>If you specify a state machine version ARN, this API returns details about that version. The version ARN is a combination of state machine ARN and the version number separated by a colon (:). For example, <code>stateMachineARN:1</code>.</p>
    # @option params [String] :included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    #            <note>
    #               <p>
    #               When calling a labelled ARN for an encrypted state machine, the <code>includedData = METADATA_ONLY</code> parameter will not apply because Step Functions needs to decrypt the entire state machine definition to get the Distributed Map state’s definition. In this case, the API caller needs to have <code>kms:Decrypt</code> permission.
    #           </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     included_data: "ALL_DATA" # One of: ["ALL_DATA", "METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.describe_state_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_arn: "Arn", # required
    #     name: "Name", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"],
    #     definition: "Definition", # required
    #     role_arn: "Arn", # required
    #     type: "STANDARD" # One of: ["STANDARD", "EXPRESS"], # required
    #     creation_date: Time.now, # required
    #     logging_configuration: {
    #       level: "ALL" # One of: ["ALL", "ERROR", "FATAL", "OFF"],
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn"
    #           }
    #         }
    #       ]
    #     },
    #     tracing_configuration: {
    #       enabled: false
    #     },
    #     label: "MapRunLabel",
    #     revision_id: "RevisionId",
    #     description: "VersionDescription",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     },
    #     variable_references: {
    #       "StateName" => ["VariableName"]
    #     }
    #   }
    # @return [Types::DescribeStateMachineOutput]
    def describe_state_machine(params = {}, options = {})
      request = build_request(:describe_state_machine, params)
      request.send_request(options)
    end

    # <p>Returns details about a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeStateMachineAliasInput] params
    # @option params [String] :state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_alias_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_state_machine_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_alias_arn: "Arn",
    #     name: "Name",
    #     description: "AliasDescription",
    #     routing_configuration: [
    #       {
    #         state_machine_version_arn: "Arn", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     creation_date: Time.now,
    #     update_date: Time.now
    #   }
    # @return [Types::DescribeStateMachineAliasOutput]
    def describe_state_machine_alias(params = {}, options = {})
      request = build_request(:describe_state_machine_alias, params)
      request.send_request(options)
    end

    # <p>Provides information about a state machine's definition, its execution role ARN, and
    #       configuration. If a Map Run dispatched the execution, this action returns the Map Run
    #       Amazon Resource Name (ARN) in the response. The state machine returned is the state machine associated with the
    #       Map Run.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    # @param [Hash, Types::DescribeStateMachineForExecutionInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>
    # @option params [String] :included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     included_data: "ALL_DATA" # One of: ["ALL_DATA", "METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.describe_state_machine_for_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_arn: "Arn", # required
    #     name: "Name", # required
    #     definition: "Definition", # required
    #     role_arn: "Arn", # required
    #     update_date: Time.now, # required
    #     logging_configuration: {
    #       level: "ALL" # One of: ["ALL", "ERROR", "FATAL", "OFF"],
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn"
    #           }
    #         }
    #       ]
    #     },
    #     tracing_configuration: {
    #       enabled: false
    #     },
    #     map_run_arn: "LongArn",
    #     label: "MapRunLabel",
    #     revision_id: "RevisionId",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     },
    #     variable_references: {
    #       "StateName" => ["VariableName"]
    #     }
    #   }
    # @return [Types::DescribeStateMachineForExecutionOutput]
    def describe_state_machine_for_execution(params = {}, options = {})
      request = build_request(:describe_state_machine_for_execution, params)
      request.send_request(options)
    end

    # <p>Used by workers to retrieve a task (with the specified activity ARN) which has been
    #       scheduled for execution by a running state machine. This initiates a long poll, where the
    #       service holds the HTTP connection open and responds as soon as a task becomes available (i.e.
    #       an execution of a task of this type is needed.) The maximum time the service holds on to the
    #       request before responding is 60 seconds. If no task is available within 60 seconds, the poll
    #       returns a <code>taskToken</code> with a null string.</p>
    #          <note>
    #             <p>This API action isn't logged in CloudTrail.</p>
    #          </note>
    #          <important>
    #             <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds
    #         higher than the maximum time the service may hold the poll request).</p>
    #             <p>Polling with <code>GetActivityTask</code> can cause latency in some implementations. See
    #           <a href="https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html">Avoid
    #           Latency When Polling for Activity Tasks</a> in the Step Functions Developer Guide.</p>
    #          </important>
    # @param [Hash, Types::GetActivityTaskInput] params
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task
    #         using <a>CreateActivity</a>.)</p>
    # @option params [String] :worker_name
    #   <p>You can provide an arbitrary name in order to identify the worker that the task is
    #         assigned to. This name is used when it is logged in the execution history.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activity_arn: "Arn", # required
    #     worker_name: "Name"
    #   }
    #   options = {}
    #   response = client.get_activity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_token: "TaskToken",
    #     input: "SensitiveDataJobInput"
    #   }
    # @return [Types::GetActivityTaskOutput]
    def get_activity_task(params = {}, options = {})
      request = build_request(:get_activity_task, params)
      request.send_request(options)
    end

    # <p>Returns the history of the specified execution as a list of events. By default, the
    #       results are returned in ascending order of the <code>timeStamp</code> of the events. Use the
    #         <code>reverseOrder</code> parameter to get the latest events first.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    # @param [Hash, Types::GetExecutionHistoryInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [Boolean] :reverse_order
    #   <p>Lists events in descending order of their <code>timeStamp</code>.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Boolean] :include_execution_data
    #   <p>You can select whether execution data (input or output of a history event) is returned.
    #         The default is <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     max_results: 1,
    #     reverse_order: false,
    #     next_token: "PageToken",
    #     include_execution_data: false
    #   }
    #   options = {}
    #   response = client.get_execution_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         type: "ActivityFailed" # One of: ["ActivityFailed", "ActivityScheduled", "ActivityScheduleFailed", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "ExecutionAborted", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduled", "LambdaFunctionScheduleFailed", "LambdaFunctionStarted", "LambdaFunctionStartFailed", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "MapIterationAborted", "MapIterationFailed", "MapIterationStarted", "MapIterationSucceeded", "MapStateAborted", "MapStateEntered", "MapStateExited", "MapStateFailed", "MapStateStarted", "MapStateSucceeded", "ParallelStateAborted", "ParallelStateEntered", "ParallelStateExited", "ParallelStateFailed", "ParallelStateStarted", "ParallelStateSucceeded", "PassStateEntered", "PassStateExited", "SucceedStateEntered", "SucceedStateExited", "TaskFailed", "TaskScheduled", "TaskStarted", "TaskStartFailed", "TaskStateAborted", "TaskStateEntered", "TaskStateExited", "TaskSubmitFailed", "TaskSubmitted", "TaskSucceeded", "TaskTimedOut", "WaitStateAborted", "WaitStateEntered", "WaitStateExited", "MapRunAborted", "MapRunFailed", "MapRunStarted", "MapRunSucceeded", "ExecutionRedriven", "MapRunRedriven", "EvaluationFailed"], # required
    #         id: 1, # required
    #         previous_event_id: 1,
    #         activity_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         activity_schedule_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         activity_scheduled_event_details: {
    #           resource: "Arn", # required
    #           input: "SensitiveData",
    #           input_details: {
    #             truncated: false
    #           },
    #           timeout_in_seconds: 1,
    #           heartbeat_in_seconds: 1
    #         },
    #         activity_started_event_details: {
    #           worker_name: "Identity"
    #         },
    #         activity_succeeded_event_details: {
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           }
    #         },
    #         activity_timed_out_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         task_failed_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         task_scheduled_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           region: "Name", # required
    #           parameters: "ConnectorParameters", # required
    #           timeout_in_seconds: 1,
    #           heartbeat_in_seconds: 1,
    #           task_credentials: {
    #             role_arn: "LongArn"
    #           }
    #         },
    #         task_start_failed_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         task_started_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #         },
    #         task_submit_failed_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         task_submitted_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           }
    #         },
    #         task_succeeded_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           }
    #         },
    #         task_timed_out_event_details: {
    #           resource_type: "Name", # required
    #           resource: "Name", # required
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         execution_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         execution_started_event_details: {
    #           input: "SensitiveData",
    #           input_details: {
    #             truncated: false
    #           },
    #           role_arn: "Arn",
    #           state_machine_alias_arn: "Arn",
    #           state_machine_version_arn: "Arn"
    #         },
    #         execution_succeeded_event_details: {
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           }
    #         },
    #         execution_aborted_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         execution_timed_out_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         execution_redriven_event_details: {
    #           redrive_count: 1
    #         },
    #         map_state_started_event_details: {
    #           length: 1
    #         },
    #         map_iteration_started_event_details: {
    #           name: "Name",
    #           index: 1
    #         },
    #         map_iteration_succeeded_event_details: {
    #           name: "Name",
    #           index: 1
    #         },
    #         map_iteration_failed_event_details: {
    #           name: "Name",
    #           index: 1
    #         },
    #         map_iteration_aborted_event_details: {
    #           name: "Name",
    #           index: 1
    #         },
    #         lambda_function_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         lambda_function_schedule_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         lambda_function_scheduled_event_details: {
    #           resource: "Arn", # required
    #           input: "SensitiveData",
    #           input_details: {
    #             truncated: false
    #           },
    #           timeout_in_seconds: 1,
    #           task_credentials: {
    #             role_arn: "LongArn"
    #           }
    #         },
    #         lambda_function_start_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         lambda_function_succeeded_event_details: {
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           }
    #         },
    #         lambda_function_timed_out_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         state_entered_event_details: {
    #           name: "Name", # required
    #           input: "SensitiveData",
    #           input_details: {
    #             truncated: false
    #           }
    #         },
    #         state_exited_event_details: {
    #           name: "Name", # required
    #           output: "SensitiveData",
    #           output_details: {
    #             truncated: false
    #           },
    #           assigned_variables: {
    #             "VariableName" => "VariableValue"
    #           },
    #           assigned_variables_details: {
    #             truncated: false
    #           }
    #         },
    #         map_run_started_event_details: {
    #           map_run_arn: "LongArn"
    #         },
    #         map_run_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause"
    #         },
    #         map_run_redriven_event_details: {
    #           map_run_arn: "LongArn",
    #           redrive_count: 1
    #         },
    #         evaluation_failed_event_details: {
    #           error: "SensitiveError",
    #           cause: "SensitiveCause",
    #           location: "EvaluationFailureLocation",
    #           state: "StateName", # required
    #         }
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::GetExecutionHistoryOutput]
    def get_execution_history(params = {}, options = {})
      request = build_request(:get_execution_history, params)
      request.send_request(options)
    end

    # <p>Lists the existing activities.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    # @param [Hash, Types::ListActivitiesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [ # required
    #       {
    #         activity_arn: "Arn", # required
    #         name: "Name", # required
    #         creation_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListActivitiesOutput]
    def list_activities(params = {}, options = {})
      request = build_request(:list_activities, params)
      request.send_request(options)
    end

    # <p>Lists all executions of a state machine or a Map Run. You can list all executions related to a state machine by specifying a state machine Amazon Resource Name (ARN), or those related to a Map Run by specifying a Map Run ARN. Using this API action, you can also list all <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html">redriven</a> executions.</p>
    #          <p>You can also provide a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> ARN or <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a> ARN to list the executions associated with a specific alias or version.</p>
    #          <p>Results are
    #       sorted by time, with the most recent execution first.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    # @param [Hash, Types::ListExecutionsInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
    #            <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>
    #            <p>You can also return a list of executions associated with a specific <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> or <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>, by specifying an alias ARN or a version ARN in the <code>stateMachineArn</code> parameter.</p>
    # @option params [String] :status_filter
    #   <p>If specified, only list the executions whose current execution status matches the given
    #         filter.</p>
    #            <p>If you provide a <code>PENDING_REDRIVE</code> statusFilter, you must specify <code>mapRunArn</code>. 
    #         For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html#redrive-child-workflow-behavior">Child workflow execution redrive behaviour</a>
    #         in the <i>Step Functions Developer Guide</i>.
    #       </p>
    #            <p>If you provide a stateMachineArn and a <code>PENDING_REDRIVE</code> statusFilter, the API returns a validation exception.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [String] :map_run_arn
    #   <p>The Amazon Resource Name (ARN) of the Map Run that started the child workflow executions. If the <code>mapRunArn</code> field is specified, a list of all of the child workflow executions started by a Map Run is returned. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html">Examining Map Run</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>You can specify either a <code>mapRunArn</code> or a <code>stateMachineArn</code>, but not both.</p>
    # @option params [String] :redrive_filter
    #   <p>Sets a filter to list executions based on whether or not they have been redriven.</p>
    #            <p>For a Distributed Map, <code>redriveFilter</code> sets a filter to list child workflow executions based on whether or not they have been redriven.</p>
    #            <p>If you do not provide a <code>redriveFilter</code>, Step Functions returns a list of both redriven and non-redriven executions.</p>
    #            <p>If you provide a state machine ARN in <code>redriveFilter</code>, the API returns a validation exception.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn",
    #     status_filter: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED", "PENDING_REDRIVE"],
    #     max_results: 1,
    #     next_token: "ListExecutionsPageToken",
    #     map_run_arn: "LongArn",
    #     redrive_filter: "REDRIVEN" # One of: ["REDRIVEN", "NOT_REDRIVEN"]
    #   }
    #   options = {}
    #   response = client.list_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     executions: [ # required
    #       {
    #         execution_arn: "Arn", # required
    #         state_machine_arn: "Arn", # required
    #         name: "Name", # required
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED", "PENDING_REDRIVE"], # required
    #         start_date: Time.now, # required
    #         stop_date: Time.now,
    #         map_run_arn: "LongArn",
    #         item_count: 1,
    #         state_machine_version_arn: "Arn",
    #         state_machine_alias_arn: "Arn",
    #         redrive_count: 1,
    #         redrive_date: Time.now
    #       }
    #     ],
    #     next_token: "ListExecutionsPageToken"
    #   }
    # @return [Types::ListExecutionsOutput]
    def list_executions(params = {}, options = {})
      request = build_request(:list_executions, params)
      request.send_request(options)
    end

    # <p>Lists all Map Runs that were started by a given state machine execution. Use this API action to obtain Map Run ARNs, and then call <code>DescribeMapRun</code> to obtain more information, if needed.</p>
    # @param [Hash, Types::ListMapRunsInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution for which the Map Runs must be listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_map_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     map_runs: [ # required
    #       {
    #         execution_arn: "Arn", # required
    #         map_run_arn: "LongArn", # required
    #         state_machine_arn: "Arn", # required
    #         start_date: Time.now, # required
    #         stop_date: Time.now
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListMapRunsOutput]
    def list_map_runs(params = {}, options = {})
      request = build_request(:list_map_runs, params)
      request.send_request(options)
    end

    # <p>Lists <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">aliases</a> for a specified state machine ARN. Results are sorted by time, with the most recently created aliases listed first. </p>
    #          <p>To list aliases that reference a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>, you can specify the version ARN in the <code>stateMachineArn</code> parameter.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListStateMachineAliasesInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine for which you want to list aliases.</p>
    #            <p>If you specify a state machine version ARN, this API returns a list of aliases for that version.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_state_machine_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_aliases: [ # required
    #       {
    #         state_machine_alias_arn: "LongArn", # required
    #         creation_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListStateMachineAliasesOutput]
    def list_state_machine_aliases(params = {}, options = {})
      request = build_request(:list_state_machine_aliases, params)
      request.send_request(options)
    end

    # <p>Lists <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">versions</a> for the specified state machine Amazon Resource Name (ARN).</p>
    #          <p>The results are sorted in descending order of the version creation time.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>PublishStateMachineVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineVersion</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListStateMachineVersionsInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_state_machine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machine_versions: [ # required
    #       {
    #         state_machine_version_arn: "LongArn", # required
    #         creation_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListStateMachineVersionsOutput]
    def list_state_machine_versions(params = {}, options = {})
      request = build_request(:list_state_machine_versions, params)
      request.send_request(options)
    end

    # <p>Lists the existing state machines.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    # @param [Hash, Types::ListStateMachinesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_state_machines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state_machines: [ # required
    #       {
    #         state_machine_arn: "Arn", # required
    #         name: "Name", # required
    #         type: "STANDARD" # One of: ["STANDARD", "EXPRESS"], # required
    #         creation_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListStateMachinesOutput]
    def list_state_machines(params = {}, options = {})
      request = build_request(:list_state_machines, params)
      request.send_request(options)
    end

    # <p>List tags for a given resource.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a> from the
    #       current revision of a state machine. Use versions to create immutable snapshots of your state
    #       machine. You can start executions from versions either directly or with an alias. To create an
    #       alias, use <a>CreateStateMachineAlias</a>.</p>
    #          <p>You can publish up to 1000 versions for each state machine. You must manually delete unused versions using the <a>DeleteStateMachineVersion</a> API action.</p>
    #          <p>
    #             <code>PublishStateMachineVersion</code> is an idempotent API. It doesn't create a
    #       duplicate state machine version if it already exists for the current revision. Step Functions bases <code>PublishStateMachineVersion</code>'s idempotency check on the
    #         <code>stateMachineArn</code>, <code>name</code>, and <code>revisionId</code> parameters.
    #       Requests with the same parameters return a successful idempotent response. If you don't
    #       specify a <code>revisionId</code>, Step Functions checks for a previously published
    #       version of the state machine's current revision.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineVersions</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PublishStateMachineVersionInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    # @option params [String] :revision_id
    #   <p>Only publish the state machine version if the current state machine's revision ID matches the specified ID.</p>
    #            <p>Use this option to avoid publishing a version if the state machine changed since you last
    #         updated it. If the specified revision ID doesn't match the state machine's current revision
    #         ID, the API returns <code>ConflictException</code>.</p>
    #            <note>
    #               <p>To specify an initial revision ID for a state machine with no revision ID assigned,
    #           specify the string <code>INITIAL</code> for the <code>revisionId</code> parameter. For
    #           example, you can specify a <code>revisionID</code> of <code>INITIAL</code> when you create a
    #           state machine using the <a>CreateStateMachine</a> API action.</p>
    #            </note>
    # @option params [String] :description
    #   <p>An optional description of the state machine version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     revision_id: "RevisionId",
    #     description: "VersionDescription"
    #   }
    #   options = {}
    #   response = client.publish_state_machine_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_date: Time.now, # required
    #     state_machine_version_arn: "Arn", # required
    #   }
    # @return [Types::PublishStateMachineVersionOutput]
    def publish_state_machine_version(params = {}, options = {})
      request = build_request(:publish_state_machine_version, params)
      request.send_request(options)
    end

    # <p>Restarts unsuccessful executions of Standard workflows that didn't complete successfully in the last 14 days. These include failed, aborted, or timed out executions. When you <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html">redrive</a> an execution, it continues the failed execution from the unsuccessful step and uses the same input. Step Functions preserves the results and execution history of the successful steps, and doesn't rerun these steps when you redrive an execution. Redriven executions use the same state machine definition and execution ARN as the original execution attempt.</p>
    #          <p>For workflows that include an <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html">Inline Map</a> or <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html">Parallel</a> state, <code>RedriveExecution</code> API action reschedules and redrives only the iterations and branches that failed or aborted.</p>
    #          <p>To redrive a workflow that includes a Distributed Map state whose Map Run failed, you must redrive the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/use-dist-map-orchestrate-large-scale-parallel-workloads.html#dist-map-orchestrate-parallel-workloads-key-terms">parent workflow</a>. The parent workflow redrives all the unsuccessful states, including a failed Map Run. If a Map Run was not started in the original execution attempt, the redriven parent workflow starts the Map Run.</p>
    #          <note>
    #             <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #             <p>However, you can restart the unsuccessful executions of Express child workflows in a Distributed Map by redriving its Map Run. When you redrive a Map Run, the Express child workflows are rerun using the <a>StartExecution</a> API action. For more information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html">Redriving Map Runs</a>.</p>
    #          </note>
    #          <p>You can redrive executions if your original execution meets the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>The execution status isn't <code>SUCCEEDED</code>.</p>
    #             </li>
    #             <li>
    #                <p>Your workflow execution has not exceeded the redrivable period of 14 days. Redrivable period refers to the time during which you can redrive a given execution. This period starts from the day a state machine completes its execution.</p>
    #             </li>
    #             <li>
    #                <p>The workflow execution has not exceeded the maximum open time of one year. For more information about state machine quotas, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions">Quotas related to state machine executions</a>.</p>
    #             </li>
    #             <li>
    #                <p>The execution event history count is less than 24,999. Redriven executions append their event history to the existing event history. Make sure your workflow execution contains less than 24,999 events to accommodate the <code>ExecutionRedriven</code> history event and at least one other history event.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RedriveExecutionInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to be redriven.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don’t specify a client token, the Amazon Web Services SDK automatically generates a client token and uses it for the request to ensure idempotency. The API will return idempotent responses for the last 10 client tokens used to successfully redrive the execution. These client tokens are valid for up to 15 minutes after they are first used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.redrive_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     redrive_date: Time.now, # required
    #   }
    # @return [Types::RedriveExecutionOutput]
    def redrive_execution(params = {}, options = {})
      request = build_request(:redrive_execution, params)
      request.send_request(options)
    end

    # <p>Used by activity workers, Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern, and optionally Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run</a> pattern to report that the task identified by the <code>taskToken</code> failed.</p>
    #          <p>For an execution with encryption enabled, Step Functions will encrypt the error and cause fields using the KMS key for the execution role.</p>
    #          <p>A caller can mark a task as fail without using any KMS permissions in the execution role if the caller provides a null value for both <code>error</code> and <code>cause</code> fields because no data needs to be encrypted.</p>
    # @param [Hash, Types::SendTaskFailureInput] params
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    # @option params [String] :error
    #   <p>The error code of the failure.</p>
    # @option params [String] :cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause"
    #   }
    #   options = {}
    #   response = client.send_task_failure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendTaskFailureOutput]
    def send_task_failure(params = {}, options = {})
      request = build_request(:send_task_failure, params)
      request.send_request(options)
    end

    # <p>Used by activity workers and Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern, and optionally Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run</a> pattern to report to Step Functions that the task represented by the specified
    #         <code>taskToken</code> is still making progress. This action resets the
    #         <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state
    #       machine's Amazon States Language definition (<code>HeartbeatSeconds</code>). This action does not in itself
    #       create an event in the execution history. However, if the task times out, the execution
    #       history contains an <code>ActivityTimedOut</code> entry for activities, or a
    #         <code>TaskTimedOut</code> entry for tasks using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run</a> or
    #         <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern.</p>
    #          <note>
    #             <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is
    #         its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received. Use <code>HeartbeatSeconds</code> to configure the timeout interval
    #         for heartbeats.</p>
    #          </note>
    # @param [Hash, Types::SendTaskHeartbeatInput] params
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #   }
    #   options = {}
    #   response = client.send_task_heartbeat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendTaskHeartbeatOutput]
    def send_task_heartbeat(params = {}, options = {})
      request = build_request(:send_task_heartbeat, params)
      request.send_request(options)
    end

    # <p>Used by activity workers, Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern, and optionally Task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run</a> pattern to report that the task identified by the <code>taskToken</code> completed
    #       successfully.</p>
    # @param [Hash, Types::SendTaskSuccessInput] params
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    # @option params [String] :output
    #   <p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_token: "TaskToken", # required
    #     output: "SensitiveData", # required
    #   }
    #   options = {}
    #   response = client.send_task_success(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendTaskSuccessOutput]
    def send_task_success(params = {}, options = {})
      request = build_request(:send_task_success, params)
      request.send_request(options)
    end

    # <p>Starts a state machine execution.</p>
    #          <p>A qualified state machine ARN can either refer to a <i>Distributed Map state</i> defined within a state machine, a version ARN, or an alias ARN.</p>
    #          <p>The following are some examples of qualified and unqualified state machine ARNs:</p>
    #          <ul>
    #             <li>
    #                <p>The following qualified state machine ARN refers to a <i>Distributed Map state</i> with a label <code>mapStateLabel</code> in a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel</code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a <i>Distributed Map state</i>, the request fails with <code>ValidationException</code>.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following qualified state machine ARN refers to an alias named <code>PROD</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a version ARN or an alias ARN, the request starts execution for that version or alias.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following unqualified state machine ARN refers to a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>If you start an execution with an unqualified state machine ARN, Step Functions uses the latest revision of the state machine for the execution.</p>
    #          <p>To start executions of a state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>, call
    #         <code>StartExecution</code> and provide the version ARN or the ARN of an <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> that points to the version.</p>
    #          <note>
    #             <p>
    #                <code>StartExecution</code> is idempotent for <code>STANDARD</code> workflows. For a
    #           <code>STANDARD</code> workflow, if you call <code>StartExecution</code> with the same name
    #         and input as a running execution, the call succeeds and return the same response as the
    #         original request. If the execution is closed or if the input is different, it returns a
    #           <code>400 ExecutionAlreadyExists</code> error. You can reuse names after 90 days. </p>
    #             <p>
    #                <code>StartExecution</code> isn't idempotent for <code>EXPRESS</code> workflows. </p>
    #          </note>
    # @param [Hash, Types::StartExecutionInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #            <p>The <code>stateMachineArn</code> parameter accepts one of the following inputs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>An unqualified state machine ARN</b> – Refers to a state machine ARN that isn't qualified with a version or alias ARN. The following is an example of an unqualified state machine ARN.</p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>
    #                  </p>
    #                  <p>Step Functions doesn't associate state machine executions that you start with an unqualified ARN with a version. This is true even if that version uses the same revision that the execution used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A state machine version ARN</b> – Refers to a version ARN, which is a combination of state machine ARN and the version number separated by a colon (:). The following is an example of the ARN for version 10. </p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>:10</code>
    #                  </p>
    #                  <p>Step Functions doesn't associate executions that you start with a version ARN with any aliases that point to that version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A state machine alias ARN</b> – Refers to an alias ARN, which is a combination of state machine ARN and the alias name separated by a colon (:). The following is an example of the ARN for an alias named <code>PROD</code>.</p>
    #                  <p>
    #                     <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>
    #                  </p>
    #                  <p>Step Functions associates executions
    #             that you start with an alias ARN with that alias and the state machine version used for
    #             that execution.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>Optional name of the execution. This name must be unique for your Amazon Web Services account, Region, and state machine for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>Step Functions Developer Guide</i>.</p>
    #            <p>If you don't provide a name for the execution, Step Functions automatically generates a universally unique identifier (UUID) as the execution name.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>, <code>U+FFFE-FFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>surrogates (<code>U+D800-DFFF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>invalid characters (<code> U+10FFFF</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    # @option params [String] :input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"{\"first_name\" : \"Alejandro\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    # @option params [String] :trace_header
    #   <p>Passes the X-Ray trace header. The trace header can also be passed in the request
    #         payload.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     input: "SensitiveData",
    #     trace_header: "TraceHeader"
    #   }
    #   options = {}
    #   response = client.start_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "Arn", # required
    #     start_date: Time.now, # required
    #   }
    # @return [Types::StartExecutionOutput]
    def start_execution(params = {}, options = {})
      request = build_request(:start_execution, params)
      request.send_request(options)
    end

    # <p>Starts a Synchronous Express state machine execution. <code>StartSyncExecution</code> 
    # 			  is not available for <code>STANDARD</code> workflows.</p>
    #          <note>
    #             <p>
    #                <code>StartSyncExecution</code> will return a <code>200 OK</code> response, even if your
    #         execution fails, because the status code in the API response doesn't reflect function
    #         errors. Error codes are reserved for errors that prevent your execution from running, such
    #         as permissions errors, limit errors, or issues with your state machine code and
    #         configuration. </p>
    #          </note>
    #          <note>
    #             <p>This API action isn't logged in CloudTrail.</p>
    #          </note>
    # @param [Hash, Types::StartSyncExecutionInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    # @option params [String] :name
    #   <p>The name of the execution.</p>
    # @option params [String] :input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"{\"first_name\" : \"Alejandro\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    # @option params [String] :trace_header
    #   <p>Passes the X-Ray trace header. The trace header can also be passed in the request
    #         payload.</p>
    #            <note>
    #               <p>
    #                   For X-Ray traces, all Amazon Web Services services use the <code>X-Amzn-Trace-Id</code> header from the HTTP request. Using the header is the preferred mechanism to identify a trace. <code>StartExecution</code> and <code>StartSyncExecution</code> API operations can also use <code>traceHeader</code> from the body of the request payload. If <b>both</b> sources are provided, Step Functions will use the <b>header value</b> (preferred) over the value in the request body.
    #               </p>
    #            </note>
    # @option params [String] :included_data
    #   <p>If your state machine definition is encrypted with a KMS key, callers must have <code>kms:Decrypt</code> permission to decrypt the definition. Alternatively, you can call the API with <code>includedData = METADATA_ONLY</code> to get a successful response without the encrypted definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     input: "SensitiveData",
    #     trace_header: "TraceHeader",
    #     included_data: "ALL_DATA" # One of: ["ALL_DATA", "METADATA_ONLY"]
    #   }
    #   options = {}
    #   response = client.start_sync_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_arn: "Arn", # required
    #     state_machine_arn: "Arn",
    #     name: "Name",
    #     start_date: Time.now, # required
    #     stop_date: Time.now, # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "TIMED_OUT"], # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #     input: "SensitiveData",
    #     input_details: {
    #       included: false
    #     },
    #     output: "SensitiveData",
    #     output_details: {
    #       included: false
    #     },
    #     trace_header: "TraceHeader",
    #     billing_details: {
    #       billed_memory_used_in_mb: 1,
    #       billed_duration_in_milliseconds: 1
    #     }
    #   }
    # @return [Types::StartSyncExecutionOutput]
    def start_sync_execution(params = {}, options = {})
      request = build_request(:start_sync_execution, params)
      request.send_request(options)
    end

    # <p>Stops an execution.</p>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #          <p>For an execution with encryption enabled, Step Functions will encrypt the error and cause fields using the KMS key for the execution role.</p>
    #          <p>A caller can stop an execution without using any KMS permissions in the execution role if the caller provides a null value for both <code>error</code> and <code>cause</code> fields because no data needs to be encrypted.</p>
    # @param [Hash, Types::StopExecutionInput] params
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
    # @option params [String] :error
    #   <p>The error code of the failure.</p>
    # @option params [String] :cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_arn: "Arn", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause"
    #   }
    #   options = {}
    #   response = client.stop_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stop_date: Time.now, # required
    #   }
    # @return [Types::StopExecutionOutput]
    def stop_execution(params = {}, options = {})
      request = build_request(:stop_execution, params)
      request.send_request(options)
    end

    # <p>Add a tag to a Step Functions resource.</p>
    #          <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #       Cost Allocation Tags</a> in the <i>Amazon Web Services Billing and Cost Management User
    #         Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #           Tags</a>.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Accepts the definition of a single state and executes it. You can test a state without creating a state machine or updating an existing state machine. Using this API, you can test the following:</p>
    #          <ul>
    #             <li>
    #                <p>A state's <a href="https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-input-output-dataflow">input and output processing</a> data flow</p>
    #             </li>
    #             <li>
    #                <p>An <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-services.html">Amazon Web Services service integration</a> request and response</p>
    #             </li>
    #             <li>
    #                <p>An <a href="https://docs.aws.amazon.com/step-functions/latest/dg/call-https-apis.html">HTTP Task</a> request and response</p>
    #             </li>
    #          </ul>
    #          <p>You can call this API on only one state at a time. The states that you can test include the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-task-state.html#task-types">All Task types</a> except <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html">Activity</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-pass-state.html">Pass</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-wait-state.html">Wait</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-choice-state.html">Choice</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-succeed-state.html">Succeed</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-fail-state.html">Fail</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>The <code>TestState</code> API assumes an IAM role which must contain the required IAM permissions for the resources your state is accessing. For information about the permissions a state might need, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions">IAM permissions to test a state</a>.</p>
    #          <p>The <code>TestState</code> API can run for up to five minutes. If the execution of a state exceeds this duration, it fails with the <code>States.Timeout</code> error.</p>
    #          <p>
    #             <code>TestState</code> doesn't support <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html">Activity tasks</a>, <code>.sync</code> or <code>.waitForTaskToken</code>
    #             <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html">service integration patterns</a>, <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html">Parallel</a>, or <a href="https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html">Map</a> states.</p>
    # @param [Hash, Types::TestStateInput] params
    # @option params [String] :definition
    #   <p>The <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a> (ASL) definition of the state.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role with the required IAM permissions for the state.</p>
    # @option params [String] :input
    #   <p>A string that contains the JSON input data for the state.</p>
    # @option params [String] :inspection_level
    #   <p>Determines the values to return when a state is tested. You can specify one of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFO</code>: Shows the final state output. By default, Step Functions sets <code>inspectionLevel</code> to <code>INFO</code> if you don't specify a level.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEBUG</code>: Shows the final state output along with the input and output data processing result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRACE</code>: Shows the HTTP request and response for an HTTP Task. This level also shows the final state output along with the input and output data processing result.</p>
    #               </li>
    #            </ul>
    #            <p>Each of these levels also provide information about the status of the state execution and the next state to transition to.</p>
    # @option params [Boolean] :reveal_secrets
    #   <p>Specifies whether or not to include secret information in the test result. For HTTP Tasks, a secret includes the data that an EventBridge connection adds to modify the HTTP request headers, query parameters, and body. Step Functions doesn't omit any information included in the state definition or the HTTP response.</p>
    #            <p>If you set <code>revealSecrets</code> to <code>true</code>, you must make sure that the IAM user that calls the <code>TestState</code> API has permission for the <code>states:RevealSecrets</code> action. For an example of IAM policy that sets the <code>states:RevealSecrets</code> permission, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions">IAM permissions to test a state</a>. Without this permission, Step Functions throws an access denied error.</p>
    #            <p>By default, <code>revealSecrets</code> is set to <code>false</code>.</p>
    # @option params [String] :variables
    #   <p>JSON object literal that sets variables used in the state under test. Object keys are the variable names and values are the variable values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: "Definition", # required
    #     role_arn: "Arn",
    #     input: "SensitiveData",
    #     inspection_level: "INFO" # One of: ["INFO", "DEBUG", "TRACE"],
    #     reveal_secrets: false,
    #     variables: "SensitiveData"
    #   }
    #   options = {}
    #   response = client.test_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     output: "SensitiveData",
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #     inspection_data: {
    #       input: "SensitiveData",
    #       after_arguments: "SensitiveData",
    #       after_input_path: "SensitiveData",
    #       after_parameters: "SensitiveData",
    #       result: "SensitiveData",
    #       after_result_selector: "SensitiveData",
    #       after_result_path: "SensitiveData",
    #       request: {
    #         protocol: "HTTPProtocol",
    #         method: "HTTPMethod",
    #         url: "URL",
    #         headers: "HTTPHeaders",
    #         body: "HTTPBody"
    #       },
    #       response: {
    #         protocol: "HTTPProtocol",
    #         status_code: "HTTPStatusCode",
    #         status_message: "HTTPStatusMessage",
    #         headers: "HTTPHeaders",
    #         body: "HTTPBody"
    #       },
    #       variables: "SensitiveData"
    #     },
    #     next_state: "StateName",
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "RETRIABLE", "CAUGHT_ERROR"]
    #   }
    # @return [Types::TestStateOutput]
    def test_state(params = {}, options = {})
      request = build_request(:test_state, params)
      request.send_request(options)
    end

    # <p>Remove a tag from a Step Functions resource</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates an in-progress Map Run's configuration to include changes to the settings that control maximum concurrency and Map Run failure.</p>
    # @param [Hash, Types::UpdateMapRunInput] params
    # @option params [String] :map_run_arn
    #   <p>The Amazon Resource Name (ARN) of a Map Run.</p>
    # @option params [Integer] :max_concurrency
    #   <p>The maximum number of child workflow executions that can be specified to run in parallel for the Map Run at the same time.</p>
    # @option params [Float] :tolerated_failure_percentage
    #   <p>The maximum percentage of failed items before the Map Run fails.</p>
    # @option params [Integer] :tolerated_failure_count
    #   <p>The maximum number of failed items before the Map Run fails.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     map_run_arn: "LongArn", # required
    #     max_concurrency: 1,
    #     tolerated_failure_percentage: 1.0,
    #     tolerated_failure_count: 1
    #   }
    #   options = {}
    #   response = client.update_map_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMapRunOutput]
    def update_map_run(params = {}, options = {})
      request = build_request(:update_map_run, params)
      request.send_request(options)
    end

    # <p>Updates an existing state machine by modifying its <code>definition</code>,
    #         <code>roleArn</code>, <code>loggingConfiguration</code>, or <code>EncryptionConfiguration</code>. Running executions will continue
    #       to use the previous <code>definition</code> and <code>roleArn</code>. You must include at
    #       least one of <code>definition</code> or <code>roleArn</code> or you will receive a
    #         <code>MissingRequiredParameter</code> error.</p>
    #          <p>A qualified state machine ARN refers to a <i>Distributed Map state</i> defined within a state machine. For example, the qualified state machine ARN <code>arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel</code> refers to a <i>Distributed Map state</i> with a label <code>mapStateLabel</code> in the state machine named <code>stateMachineName</code>.</p>
    #          <p>A qualified state machine ARN can either refer to a <i>Distributed Map state</i> defined within a state machine, a version ARN, or an alias ARN.</p>
    #          <p>The following are some examples of qualified and unqualified state machine ARNs:</p>
    #          <ul>
    #             <li>
    #                <p>The following qualified state machine ARN refers to a <i>Distributed Map state</i> with a label <code>mapStateLabel</code> in a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel</code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a <i>Distributed Map state</i>, the request fails with <code>ValidationException</code>.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following qualified state machine ARN refers to an alias named <code>PROD</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD></code>
    #                </p>
    #                <note>
    #                   <p>If you provide a qualified state machine ARN that refers to a version ARN or an alias ARN, the request starts execution for that version or alias.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>The following unqualified state machine ARN refers to a state machine named <code>myStateMachine</code>.</p>
    #                <p>
    #                   <code>arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>After you update your state machine, you can set the <code>publish</code> parameter to
    #         <code>true</code> in the same action to publish a new <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html">version</a>. This
    #       way, you can opt-in to strict versioning of your state machine.</p>
    #          <note>
    #             <p>Step Functions assigns monotonically increasing integers for state machine versions, starting at version number 1.</p>
    #          </note>
    #          <note>
    #             <p>All <code>StartExecution</code> calls within a few seconds use the updated
    #           <code>definition</code> and <code>roleArn</code>. Executions started immediately after you
    #         call <code>UpdateStateMachine</code> may use the previous state machine
    #           <code>definition</code> and <code>roleArn</code>. </p>
    #          </note>
    # @param [Hash, Types::UpdateStateMachineInput] params
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    # @option params [String] :definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>Use the <code>LoggingConfiguration</code> data type to set CloudWatch Logs
    #         options.</p>
    # @option params [Types::TracingConfiguration] :tracing_configuration
    #   <p>Selects whether X-Ray tracing is enabled.</p>
    # @option params [Boolean] :publish
    #   <p>Specifies whether the state machine version is published. The default is
    #           <code>false</code>. To publish a version after updating the state machine, set
    #           <code>publish</code> to <code>true</code>.</p>
    # @option params [String] :version_description
    #   <p>An optional description of the state machine version to publish.</p>
    #            <p>You can only specify the <code>versionDescription</code> parameter if you've set <code>publish</code> to <code>true</code>.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>Settings to configure server-side encryption. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_arn: "Arn", # required
    #     definition: "Definition",
    #     role_arn: "Arn",
    #     logging_configuration: {
    #       level: "ALL" # One of: ["ALL", "ERROR", "FATAL", "OFF"],
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn"
    #           }
    #         }
    #       ]
    #     },
    #     tracing_configuration: {
    #       enabled: false
    #     },
    #     publish: false,
    #     version_description: "VersionDescription",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #       kms_data_key_reuse_period_seconds: 1,
    #       type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_state_machine(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_date: Time.now, # required
    #     revision_id: "RevisionId",
    #     state_machine_version_arn: "Arn"
    #   }
    # @return [Types::UpdateStateMachineOutput]
    def update_state_machine(params = {}, options = {})
      request = build_request(:update_state_machine, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing state machine <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html">alias</a> by modifying its <code>description</code> or <code>routingConfiguration</code>.</p>
    #          <p>You must specify at least one of the <code>description</code> or <code>routingConfiguration</code> parameters to update a state machine alias.</p>
    #          <note>
    #             <p>
    #                <code>UpdateStateMachineAlias</code> is an idempotent API. Step Functions bases the
    #         idempotency check on the <code>stateMachineAliasArn</code>, <code>description</code>, and
    #           <code>routingConfiguration</code> parameters. Requests with the same parameters return an
    #         idempotent response.</p>
    #          </note>
    #          <note>
    #             <p>This operation is eventually consistent. All <a>StartExecution</a> requests
    #         made within a few seconds use the latest alias configuration. Executions started immediately
    #         after calling <code>UpdateStateMachineAlias</code> may use the previous routing
    #         configuration.</p>
    #          </note>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeStateMachineAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListStateMachineAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteStateMachineAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateStateMachineAliasInput] params
    # @option params [String] :state_machine_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine alias.</p>
    # @option params [String] :description
    #   <p>A description of the state machine alias.</p>
    # @option params [Array<Types::RoutingConfigurationListItem>] :routing_configuration
    #   <p>The routing configuration of the state machine alias.</p>
    #            <p>An array of <code>RoutingConfig</code> objects that specifies up to two state machine versions that the alias starts executions for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state_machine_alias_arn: "Arn", # required
    #     description: "AliasDescription",
    #     routing_configuration: [
    #       {
    #         state_machine_version_arn: "Arn", # required
    #         weight: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_state_machine_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_date: Time.now, # required
    #   }
    # @return [Types::UpdateStateMachineAliasOutput]
    def update_state_machine_alias(params = {}, options = {})
      request = build_request(:update_state_machine_alias, params)
      request.send_request(options)
    end

    # <p>Validates the syntax of a state machine definition specified in <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a> (ASL), a
    #             JSON-based, structured language.</p>
    #          <p>You can validate that a state machine definition is correct without creating a state
    #             machine resource.</p>
    #          <p>Suggested uses for <code>ValidateStateMachineDefinition</code>:</p>
    #          <ul>
    #             <li>
    #                <p>Integrate automated checks into your code review or Continuous Integration
    #                     (CI) process to check state machine definitions before starting
    #                     deployments.</p>
    #             </li>
    #             <li>
    #                <p>Run validation from a Git pre-commit hook to verify the definition before
    #                     committing to your source repository.</p>
    #             </li>
    #          </ul>
    #          <p>Validation will look for problems in your state machine definition and return a
    #             <b>result</b> and a list of <b>diagnostic
    #             elements</b>.</p>
    #          <p>The <b>result</b>  value will be <code>OK</code> when your
    #             workflow definition can be successfully created or updated. Note the result can be
    #             <code>OK</code> even when diagnostic warnings are present in the response. The
    #             <b>result</b> value will be <code>FAIL</code> when the
    #             workflow definition contains errors that would prevent you from creating or updating
    #             your state machine. </p>
    #          <p>The list of <a href="https://docs.aws.amazon.com/step-functions/latest/apireference/API_ValidateStateMachineDefinitionDiagnostic.html">ValidateStateMachineDefinitionDiagnostic</a> data elements can contain zero or more <b>WARNING</b> and/or <b>ERROR</b> elements.</p>
    #          <note>
    #             <p>The <b>ValidateStateMachineDefinition API</b> might add
    #                 new diagnostics in the future, adjust diagnostic codes, or change the message
    #                 wording. Your automated processes should only rely on the value of the <b>result</b> field value (OK, FAIL). Do <b>not</b> rely on the exact order, count, or
    #                 wording of diagnostic messages.</p>
    #          </note>
    # @param [Hash, Types::ValidateStateMachineDefinitionInput] params
    # @option params [String] :definition
    #   <p>The Amazon States Language definition of the state machine. For more information, see
    #               <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a> (ASL).</p>
    # @option params [String] :type
    #   <p>The target type of state machine for this definition. The default is <code>STANDARD</code>.</p>
    # @option params [String] :severity
    #   <p>Minimum level of diagnostics to return. <code>ERROR</code> returns only <code>ERROR</code> diagnostics, whereas <code>WARNING</code> returns both <code>WARNING</code> and <code>ERROR</code> diagnostics. The default is <code>ERROR</code>. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of diagnostics that are returned per call. The default and maximum value is 100. Setting the value to 0 will also use the default of 100.</p>
    #            <p>If the number of diagnostics returned in the response exceeds <code>maxResults</code>, the value of the <code>truncated</code> field in the response will be set to <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: "Definition", # required
    #     type: "STANDARD" # One of: ["STANDARD", "EXPRESS"],
    #     severity: "ERROR" # One of: ["ERROR", "WARNING"],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.validate_state_machine_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "OK" # One of: ["OK", "FAIL"], # required
    #     diagnostics: [ # required
    #       {
    #         severity: "ERROR" # One of: ["ERROR", "WARNING"], # required
    #         code: "ValidateStateMachineDefinitionCode", # required
    #         message: "ValidateStateMachineDefinitionMessage", # required
    #         location: "ValidateStateMachineDefinitionLocation"
    #       }
    #     ],
    #     truncated: false
    #   }
    # @return [Types::ValidateStateMachineDefinitionOutput]
    def validate_state_machine_definition(params = {}, options = {})
      request = build_request(:validate_state_machine_definition, params)
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
      context[:gem_name] = 'aws-sdk-sfn'
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
