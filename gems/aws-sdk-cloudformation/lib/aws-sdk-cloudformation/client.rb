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
require 'aws-sdk-core/plugins/query_protocol'

module Aws::CloudFormation
  # An API client for Aws::CloudFormation.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudFormation

    add_plugin(::Aws::CloudFormation::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)

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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::CloudFormation::EndpointProvider] :endpoint_provider
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

    # <p>Activate trusted access with Organizations. With trusted access between StackSets
    #       and Organizations activated, the management account has permissions to create
    #       and manage StackSets for your organization.</p>
    # @param [Hash, Types::ActivateOrganizationsAccessInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.activate_organizations_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ActivateOrganizationsAccessOutput]
    def activate_organizations_access(params = {}, options = {})
      request = build_request(:activate_organizations_access, params)
      request.send_request(options)
    end

    # <p>Activates a public third-party extension, such as a resource or module, to make it
    #       available for use in stack templates in your current account and Region. It can also create
    #       CloudFormation Hooks, which allow you to evaluate resource configurations before CloudFormation
    #       provisions them. Hooks integrate with both CloudFormation and Cloud Control API operations.</p>
    #          <p>After you activate an extension, you can use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a> to set specific properties for the extension.</p>
    #          <p>To see which extensions have been activated, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListTypes.html">ListTypes</a>. To see
    #       configuration details for an extension, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public-activate-extension.html">Activate a
    #         third-party public extension in your account</a> in the
    #         <i>CloudFormation User Guide</i>. For information about creating Hooks, see the
    #         <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/hooks-userguide/what-is-cloudformation-hooks.html">CloudFormation
    #         Hooks User Guide</a>.</p>
    # @param [Hash, Types::ActivateTypeInput] params
    # @option params [String] :type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    # @option params [String] :public_type_arn
    #   <p>The Amazon Resource Name (ARN) of the public extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    # @option params [String] :publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #           <code>Type</code>, and <code>PublisherId</code>.</p>
    # @option params [String] :type_name_alias
    #   <p>An alias to assign to the public extension, in this account and Region. If you specify an
    #         alias for the extension, CloudFormation treats the alias as the extension type name within this
    #         account and Region. You must use the alias to refer to the extension in your templates, API
    #         calls, and CloudFormation console.</p>
    #            <p>An extension alias must be unique within a given account and Region. You can activate the
    #         same public resource multiple times in the same account and Region, using different type name
    #         aliases.</p>
    # @option params [Boolean] :auto_update
    #   <p>Whether to automatically update the extension in this account and Region when a new
    #           <i>minor</i> version is published by the extension publisher. Major versions
    #         released by the publisher must be manually updated.</p>
    #            <p>The default is <code>true</code>.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>Contains logging configuration information for an extension.</p>
    # @option params [String] :execution_role_arn
    #   <p>The name of the IAM execution role to use to activate the extension.</p>
    # @option params [String] :version_bump
    #   <p>Manually updates a previously-activated type to a new major or minor version, if
    #         available. You can also use this parameter to update the value of
    #         <code>AutoUpdate</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MAJOR</code>: CloudFormation updates the extension to the newest major version, if
    #             one is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MINOR</code>: CloudFormation updates the extension to the newest minor version, if
    #             one is available.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :major_version
    #   <p>The major version of this extension you want to activate, if multiple major versions are
    #         available. The default is the latest major version. CloudFormation uses the latest available
    #           <i>minor</i> version of the major version selected.</p>
    #            <p>You can specify <code>MajorVersion</code> or <code>VersionBump</code>, but not
    #         both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     public_type_arn: "ThirdPartyTypeArn",
    #     publisher_id: "PublisherId",
    #     type_name: "TypeName",
    #     type_name_alias: "TypeName",
    #     auto_update: false,
    #     logging_config: {
    #       log_role_arn: "RoleARN2", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     execution_role_arn: "RoleARN2",
    #     version_bump: "MAJOR" # One of: ["MAJOR", "MINOR"],
    #     major_version: 1
    #   }
    #   options = {}
    #   response = client.activate_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PrivateTypeArn"
    #   }
    # @return [Types::ActivateTypeOutput]
    def activate_type(params = {}, options = {})
      request = build_request(:activate_type, params)
      request.send_request(options)
    end

    # <p>Returns configuration data for the specified CloudFormation extensions, from the CloudFormation
    #       registry in your current account and Region.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html">Edit configuration
    #         data for extensions in your account</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::BatchDescribeTypeConfigurationsInput] params
    # @option params [Array<Types::TypeConfigurationIdentifier>] :type_configuration_identifiers
    #   <p>The list of identifiers for the desired extension configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_configuration_identifiers: [ # required
    #       {
    #         type_arn: "TypeArn",
    #         type_configuration_alias: "TypeConfigurationAlias",
    #         type_configuration_arn: "TypeConfigurationArn",
    #         type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #         type_name: "TypeName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_describe_type_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage",
    #         type_configuration_identifier: {
    #           type_arn: "TypeArn",
    #           type_configuration_alias: "TypeConfigurationAlias",
    #           type_configuration_arn: "TypeConfigurationArn",
    #           type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #           type_name: "TypeName"
    #         }
    #       }
    #     ],
    #     unprocessed_type_configurations: [
    #       {
    #         type_arn: "TypeArn",
    #         type_configuration_alias: "TypeConfigurationAlias",
    #         type_configuration_arn: "TypeConfigurationArn",
    #         type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #         type_name: "TypeName"
    #       }
    #     ],
    #     type_configurations: [
    #       {
    #         arn: "TypeConfigurationArn",
    #         alias: "TypeConfigurationAlias",
    #         configuration: "TypeConfiguration",
    #         last_updated: Time.now,
    #         type_arn: "TypeArn",
    #         type_name: "TypeName",
    #         is_default_configuration: false
    #       }
    #     ]
    #   }
    # @return [Types::BatchDescribeTypeConfigurationsOutput]
    def batch_describe_type_configurations(params = {}, options = {})
      request = build_request(:batch_describe_type_configurations, params)
      request.send_request(options)
    end

    # <p>Cancels an update on the specified stack. If the call completes successfully, the stack
    #       rolls back the update and reverts to the previous stack configuration.</p>
    #          <note>
    #             <p>You can cancel only stacks that are in the <code>UPDATE_IN_PROGRESS</code> state.</p>
    #          </note>
    # @param [Hash, Types::CancelUpdateStackInput] params
    # @option params [String] :stack_name
    #   <note>
    #               <p>If you don't pass a parameter to <code>StackName</code>, the API returns a response that
    #           describes all resources in the account.</p>
    #               <p>The IAM policy below can be added to IAM policies when you want to limit
    #           resource-level permissions and avoid returning a response when no parameter is sent in the
    #           request:</p>
    #               <p>
    #                  <code>{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny", "Action":
    #             "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }]
    #             }</code>
    #               </p>
    #            </note>
    #            <p>The name or the unique stack ID that's associated with the stack.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to cancel an
    #         update on a stack with the same name. You might retry <code>CancelUpdateStack</code> requests
    #         to ensure that CloudFormation successfully received them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.cancel_update_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_update_stack(params = {}, options = {})
      request = build_request(:cancel_update_stack, params)
      request.send_request(options)
    end

    # <p>Continues rolling back a stack from <code>UPDATE_ROLLBACK_FAILED</code> to
    #         <code>UPDATE_ROLLBACK_COMPLETE</code> state. Depending on the cause of the failure, you can
    #       manually fix the error and continue the rollback. By continuing the rollback, you can return
    #       your stack to a working state (the <code>UPDATE_ROLLBACK_COMPLETE</code> state) and then try
    #       to update the stack again.</p>
    #          <p>A stack enters the <code>UPDATE_ROLLBACK_FAILED</code> state when CloudFormation can't roll
    #       back all changes after a failed stack update. For example, this might occur when a stack
    #       attempts to roll back to an old database that was deleted outside of CloudFormation. Because
    #       CloudFormation doesn't know the instance was deleted, it assumes the instance still exists and
    #       attempts to roll back to it, causing the update rollback to fail.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html">Continue rolling back an update</a> in the <i>CloudFormation User Guide</i>. For
    #       information for troubleshooting a failed update rollback, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed">Update rollback failed</a>.</p>
    # @param [Hash, Types::ContinueUpdateRollbackInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique ID of the stack that you want to continue rolling back.</p>
    #            <note>
    #               <p>Don't specify the name of a nested stack (a stack that was created by using the
    #             <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
    #           parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
    #           resource).</p>
    #            </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to roll back the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    # @option params [Array<String>] :resources_to_skip
    #   <p>A list of the logical IDs of the resources that CloudFormation skips during the continue
    #         update rollback operation. You can specify only resources that are in the
    #           <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources that
    #         are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an update
    #         was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason.</p>
    #            <important>
    #               <p>Specify this property to skip rolling back resources that CloudFormation can't successfully
    #           roll back. We recommend that you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. CloudFormation sets the status of the
    #           specified resources to <code>UPDATE_COMPLETE</code> and continues to roll back the stack.
    #           After the rollback is complete, the state of the skipped resources will be inconsistent with
    #           the state of the resources in the stack template. Before performing another stack update,
    #           you must update the stack or resources to be consistent with each other. If you don't,
    #           subsequent stack updates might fail, and the stack will become unrecoverable.</p>
    #            </important>
    #            <p>Specify the minimum number of resources required to successfully roll back your stack. For
    #         example, a failed resource update might cause dependent resources to fail. In this case, it
    #         might not be necessary to skip the dependent resources.</p>
    #            <p>To skip resources that are part of nested stacks, use the following format:
    #           <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of a
    #         stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
    #           <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one of
    #         the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
    #           <code>DELETE_FAILED</code>.</p>
    #            <note>
    #               <p>Don't confuse a child stack's name with its corresponding logical ID defined in the
    #           parent stack. For an example of a continue update rollback operation with nested stacks, see
    #             <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Continue rolling back from failed nested stack updates</a>.</p>
    #            </note>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this
    #         token if you plan to retry requests so that CloudFormation knows that you're not attempting to
    #         continue the rollback to a stack with the same name. You might retry
    #           <code>ContinueUpdateRollback</code> requests to ensure that CloudFormation successfully received
    #         them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     resources_to_skip: ["ResourceToSkip"],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.continue_update_rollback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ContinueUpdateRollbackOutput]
    def continue_update_rollback(params = {}, options = {})
      request = build_request(:continue_update_rollback, params)
      request.send_request(options)
    end

    # <p>Creates a list of changes that will be applied to a stack so that you can review the
    #       changes before executing them. You can create a change set for a stack that doesn't exist or
    #       an existing stack. If you create a change set for a stack that doesn't exist, the change set
    #       shows all of the resources that CloudFormation will create. If you create a change set for an
    #       existing stack, CloudFormation compares the stack's information with the information that you
    #       submit in the change set and lists the differences. Use change sets to understand which
    #       resources CloudFormation will create or change, and how it will change resources in an existing
    #       stack, before you create or update a stack.</p>
    #          <p>To create a change set for a stack that doesn't exist, for the <code>ChangeSetType</code>
    #       parameter, specify <code>CREATE</code>. To create a change set for an existing stack, specify
    #         <code>UPDATE</code> for the <code>ChangeSetType</code> parameter. To create a change set for
    #       an import operation, specify <code>IMPORT</code> for the <code>ChangeSetType</code> parameter.
    #       After the <code>CreateChangeSet</code> call successfully completes, CloudFormation starts creating
    #       the change set. To check the status of the change set or to review it, use the <a>DescribeChangeSet</a> action.</p>
    #          <p>When you are satisfied with the changes the change set will make, execute the change set
    #       by using the <a>ExecuteChangeSet</a> action. CloudFormation doesn't make changes until
    #       you execute the change set.</p>
    #          <p>To create a change set for the entire stack hierarchy, set
    #         <code>IncludeNestedStacks</code> to <code>True</code>.</p>
    # @param [Hash, Types::CreateChangeSetInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique ID of the stack for which you are creating a change set. CloudFormation
    #         generates the change set by comparing this stack's information with the information that you
    #         submit, such as a modified template or different parameter input values.</p>
    # @option params [String] :template_body
    #   <p>A structure that contains the body of the revised template, with a minimum length of 1
    #         byte and a maximum length of 51,200 bytes. CloudFormation generates the change set by comparing
    #         this template with the template of the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #         <code>TemplateURL</code>.</p>
    # @option params [String] :template_url
    #   <p>The URL of the file that contains the revised template. The URL must point to a template
    #         (max size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. CloudFormation
    #         generates the change set by comparing this template with the stack that you specified. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static
    #         websites are not supported.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #         <code>TemplateURL</code>.</p>
    # @option params [Boolean] :use_previous_template
    #   <p>Whether to reuse the template that's associated with the stack to create the change
    #         set.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the change
    #         set. For more information, see the <a>Parameter</a> data type.</p>
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">
    #                   AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">
    #                   AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">
    #                   AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">
    #                   AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">
    #                   AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually creating the stack. If your stack template contains one or more macros,
    #             and you choose to create a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <note>
    #                     <p>This capacity doesn't apply to creating change sets, and specifying it when creating
    #               change sets has no effect.</p>
    #                     <p>If you want to create a stack from a stack template that contains macros
    #                 <i>and</i> nested stacks, you must create or update the stack directly
    #               from the template using the <a>CreateStack</a> or <a>UpdateStack</a> action, and specifying this capability.</p>
    #                  </note>
    #                  <p>For more information about macros, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with if you execute this
    #         change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource type that you're updating, the
    #         stack update fails. By default, CloudFormation grants permissions to all resource types. IAM
    #         uses this parameter for condition keys in IAM policies for CloudFormation. For more information,
    #         see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes when executing the
    #         change set. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that is generated from
    #         your user credentials.</p>
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    # @option params [Array<String>] :notification_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of Amazon SNS topics that CloudFormation associates with the
    #         stack. To remove all associated notification topics, specify an empty list.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to
    #         resources in the stack. You can specify a maximum of 50 tags.</p>
    # @option params [String] :change_set_name
    #   <p>The name of the change set. The name must be unique among all change sets that are
    #         associated with the specified stack.</p>
    #            <p>A change set name can contain only alphanumeric, case sensitive characters, and hyphens.
    #         It must start with an alphabetical character and can't exceed 128 characters.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to create
    #         another change set with the same name. You might retry <code>CreateChangeSet</code> requests
    #         to ensure that CloudFormation successfully received them.</p>
    # @option params [String] :description
    #   <p>A description to help you identify this change set.</p>
    # @option params [String] :change_set_type
    #   <p>The type of change set operation. To create a change set for a new stack, specify
    #           <code>CREATE</code>. To create a change set for an existing stack, specify
    #           <code>UPDATE</code>. To create a change set for an import operation, specify
    #           <code>IMPORT</code>.</p>
    #            <p>If you create a change set for a new stack, CloudFormation creates a stack with a unique stack
    #         ID, but no template or resources. The stack will be in the <code>REVIEW_IN_PROGRESS</code>
    #         state until you execute the change set.</p>
    #            <p>By default, CloudFormation specifies <code>UPDATE</code>. You can't use the
    #           <code>UPDATE</code> type to create a change set for a new stack or the <code>CREATE</code>
    #         type to create a change set for an existing stack.</p>
    # @option params [Array<Types::ResourceToImport>] :resources_to_import
    #   <p>The resources to import into your stack.</p>
    # @option params [Boolean] :include_nested_stacks
    #   <p>Creates a change set for the all nested stacks specified in the template. The default
    #         behavior of this action is set to <code>False</code>. To include nested sets in a change set,
    #         specify <code>True</code>.</p>
    # @option params [String] :on_stack_failure
    #   <p>Determines what action will be taken if stack creation fails. If this parameter is
    #         specified, the <code>DisableRollback</code> parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation must not be specified. This must be one of these
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes the change set if the stack creation fails. This is only
    #             valid when the <code>ChangeSetType</code> parameter is set to <code>CREATE</code>. If the
    #             deletion of the stack fails, the status of the stack is <code>DELETE_FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DO_NOTHING</code> - if the stack creation fails, do nothing. This is equivalent
    #             to specifying <code>true</code> for the <code>DisableRollback</code> parameter to the
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK</code> - if the stack creation fails, roll back the stack. This is
    #             equivalent to specifying <code>false</code> for the <code>DisableRollback</code> parameter
    #             to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html">ExecuteChangeSet</a> API operation.</p>
    #               </li>
    #            </ul>
    #            <p>For nested stacks, when the <code>OnStackFailure</code> parameter is set to
    #           <code>DELETE</code> for the change set for the parent stack, any failure in a child stack
    #         will cause the parent stack creation to fail and all stacks to be deleted.</p>
    # @option params [Boolean] :import_existing_resources
    #   <p>Indicates if the change set auto-imports resources that already exist. For more
    #         information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/import-resources-automatically.html">Import Amazon Web Services
    #           resources into a CloudFormation stack automatically</a> in the
    #           <i>CloudFormation User Guide</i>.</p>
    #            <note>
    #               <p>This parameter can only import resources that have custom names in templates. For more
    #           information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-properties-name.html">name
    #             type</a> in the <i>CloudFormation User Guide</i>. To import resources that do not
    #           accept custom names, such as EC2 instances, use the <code>ResourcesToImport</code> parameter
    #           instead.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     notification_ar_ns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     change_set_name: "ChangeSetName", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     change_set_type: "CREATE" # One of: ["CREATE", "UPDATE", "IMPORT"],
    #     resources_to_import: [
    #       {
    #         resource_type: "ResourceType", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         resource_identifier: { # required
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue"
    #         }
    #       }
    #     ],
    #     include_nested_stacks: false,
    #     on_stack_failure: "DO_NOTHING" # One of: ["DO_NOTHING", "ROLLBACK", "DELETE"],
    #     import_existing_resources: false
    #   }
    #   options = {}
    #   response = client.create_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ChangeSetId",
    #     stack_id: "StackId"
    #   }
    # @return [Types::CreateChangeSetOutput]
    def create_change_set(params = {}, options = {})
      request = build_request(:create_change_set, params)
      request.send_request(options)
    end

    # <p>Creates a template from existing resources that are not already managed with CloudFormation.
    #       You can check the status of the template generation using the
    #         <code>DescribeGeneratedTemplate</code> API action.</p>
    # @param [Hash, Types::CreateGeneratedTemplateInput] params
    # @option params [Array<Types::ResourceDefinition>] :resources
    #   <p>An optional list of resources to be included in the generated template.</p>
    #            <p> If no resources are specified,the template will be created without any resources.
    #         Resources can be added to the template using the <code>UpdateGeneratedTemplate</code> API
    #         action.</p>
    # @option params [String] :generated_template_name
    #   <p>The name assigned to the generated template.</p>
    # @option params [String] :stack_name
    #   <p>An optional name or ARN of a stack to use as the base stack for the generated
    #         template.</p>
    # @option params [Types::TemplateConfiguration] :template_configuration
    #   <p>The configuration details of the generated template, including the
    #           <code>DeletionPolicy</code> and <code>UpdateReplacePolicy</code>.</p>
    # @example To create a generated template
    #   # This example creates a generated template with a resources file.
    #   params = {
    #     resources: [
    #       {
    #         resource_type: "AWS::S3::Bucket",
    #         resource_identifier: {
    #           "BucketName" => "jazz-bucket"
    #         }
    #       },
    #       {
    #         resource_type: "AWS::EC2::DHCPOptions",
    #         resource_identifier: {
    #           "DhcpOptionsId" => "random-id123"
    #         }
    #       }
    #     ],
    #     generated_template_name: "JazzyTemplate"
    #   }
    #   options = {}
    #   response = client.create_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     generated_template_id: "arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/88f09db1-d211-4cb7-964b-434e2b8469ca"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resources: [
    #       {
    #         resource_type: "ResourceType", # required
    #         logical_resource_id: "LogicalResourceId",
    #         resource_identifier: { # required
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue"
    #         }
    #       }
    #     ],
    #     generated_template_name: "GeneratedTemplateName", # required
    #     stack_name: "StackName",
    #     template_configuration: {
    #       deletion_policy: "DELETE" # One of: ["DELETE", "RETAIN"],
    #       update_replace_policy: "DELETE" # One of: ["DELETE", "RETAIN"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_generated_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     generated_template_id: "GeneratedTemplateId"
    #   }
    # @return [Types::CreateGeneratedTemplateOutput]
    def create_generated_template(params = {}, options = {})
      request = build_request(:create_generated_template, params)
      request.send_request(options)
    end

    # <p>Creates a stack as specified in the template. After the call completes successfully, the
    #       stack creation starts. You can check the status of the stack through the <a>DescribeStacks</a> operation.</p>
    #          <p>For more information about creating a stack and monitoring stack progress, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Managing Amazon Web Services
    #         resources as a single unit with CloudFormation stacks</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::CreateStackInput] params
    # @option params [String] :stack_name
    #   <p>The name that's associated with the stack. The name must be unique in the Region in which
    #         you are creating the stack.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It
    #           must start with an alphabetical character and can't be longer than 128 characters.</p>
    #            </note>
    # @option params [String] :template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify either <code>TemplateBody</code> or
    #         <code>TemplateURL</code>, but not both.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #         For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #         type.</p>
    # @option params [Boolean] :disable_rollback
    #   <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You
    #         can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not
    #         both.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    # @option params [Integer] :timeout_in_minutes
    #   <p>The amount of time that can pass before the stack status becomes
    #           <code>CREATE_FAILED</code>; if <code>DisableRollback</code> is not set or is set to
    #           <code>false</code>, the stack will be rolled back.</p>
    # @option params [Array<String>] :notification_ar_ns
    #   <p>The Amazon SNS topic ARNs to publish stack related events. You can find your Amazon SNS topic ARNs
    #         using the Amazon SNS console or your Command Line Interface (CLI).</p>
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually creating the stack. If your stack template contains one or more macros,
    #             and you choose to create a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to create a stack from a stack template that contains macros
    #               <i>and</i> nested stacks, you must create the stack directly from the
    #             template using this capability.</p>
    #                  <important>
    #                     <p>You should only create stacks directly from a stack template that contains macros if
    #               you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for processing stack
    #               templates. Be aware that the Lambda function owner can update the function operation
    #               without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with for this create stack
    #         action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template
    #         resource types: <code>AWS::*</code> (for all Amazon Web Services resources), <code>Custom::*</code> (for all
    #         custom resources), <code>Custom::<i>logical_ID</i>
    #               </code> (for a specific custom resource),
    #           <code>AWS::<i>service_name</i>::*</code> (for all resources of a particular
    #         Amazon Web Services service), and
    #             <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i>
    #               </code> (for a specific Amazon Web Services resource).</p>
    #            <p>If the list of resource types doesn't include a resource that you're creating, the stack
    #         creation fails. By default, CloudFormation grants permissions to all resource types. IAM uses
    #         this parameter for CloudFormation-specific condition keys in IAM policies. For more information,
    #         see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to create the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    # @option params [String] :on_failure
    #   <p>Determines what action will be taken if stack creation fails. This must be one of:
    #           <code>DO_NOTHING</code>, <code>ROLLBACK</code>, or <code>DELETE</code>. You can specify
    #         either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p>
    #            <note>
    #               <p>Although the default setting is <code>ROLLBACK</code>, there is one exception. This
    #           exception occurs when a StackSet attempts to deploy a stack instance and the stack instance
    #           fails to create successfully. In this case, the <code>CreateStack</code> call overrides the
    #           default setting and sets the value of <code>OnFailure</code> to <code>DELETE</code>.</p>
    #            </note>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    # @option params [String] :stack_policy_body
    #   <p>Structure that contains the stack policy body. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent updates to stack resources</a> in the <i>CloudFormation User Guide</i>.
    #         You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    # @option params [String] :stack_policy_url
    #   <p>Location of a file that contains the stack policy. The URL must point to a policy (maximum
    #         size: 16 KB) located in an S3 bucket in the same Region as the stack. The location for an Amazon S3
    #         bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to the
    #         resources created in the stack. A maximum number of 50 tags can be specified.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to create a stack
    #         with the same name. You might retry <code>CreateStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    # @option params [Boolean] :enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack. If a user attempts to
    #         delete a stack with termination protection enabled, the operation fails and the stack remains
    #         unchanged. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protect CloudFormation
    #           stacks from being deleted</a> in the <i>CloudFormation User Guide</i>. Termination
    #         protection is deactivated on stacks by default.</p>
    #            <p>For <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #         termination protection is set on the root stack and can't be changed directly on the nested
    #         stack.</p>
    # @option params [Boolean] :retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     timeout_in_minutes: 1,
    #     notification_ar_ns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING" # One of: ["DO_NOTHING", "ROLLBACK", "DELETE"],
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #     retain_except_on_create: false
    #   }
    #   options = {}
    #   response = client.create_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "StackId"
    #   }
    # @return [Types::CreateStackOutput]
    def create_stack(params = {}, options = {})
      request = build_request(:create_stack, params)
      request.send_request(options)
    end

    # <p>Creates stack instances for the specified accounts, within the specified Amazon Web Services Regions. A
    #       stack instance refers to a stack in a specific account and Region. You must specify at least
    #       one value for either <code>Accounts</code> or <code>DeploymentTargets</code>, and you must
    #       specify at least one value for <code>Regions</code>.</p>
    #          <note>
    #             <p>The maximum number of organizational unit (OUs) supported by a
    #           <code>CreateStackInstances</code> operation is 50.</p>
    #             <p>If you need more than 50, consider the following options:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <i>Batch processing:</i> If you don't want to expose your OU
    #             hierarchy, split up the operations into multiple calls with less than 50 OUs
    #             each.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <i>Parent OU strategy:</i> If you don't mind exposing the OU
    #             hierarchy, target a parent OU that contains all desired child OUs.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateStackInstancesInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to create stack instances from.</p>
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The account IDs of one or more Amazon Web Services accounts that you want to
    #         create stack instances in the specified Region(s) for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to create stack
    #         instances in the specified Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Array<String>] :regions
    #   <p>The names of one or more Amazon Web Services Regions where you want to create stack instances using the
    #         specified Amazon Web Services accounts.</p>
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   <p>A list of StackSet parameters whose values you want to override in the selected stack
    #         instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #         accounts and Amazon Web Services Regions. When specifying parameters and their values, be aware of how
    #         CloudFormation sets parameter values during stack instance operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify its
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter and
    #             specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify both a
    #             value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the StackSet, specify a
    #             parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property at
    #             all.</p>
    #               </li>
    #            </ul>
    #            <p>During StackSet updates, any parameter values overridden for a stack instance aren't
    #         updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in the
    #         StackSet; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #         to update the StackSet template.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    # @option params [String] :operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE" # One of: ["NONE", "INTERSECTION", "DIFFERENCE", "UNION"]
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.create_stack_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::CreateStackInstancesOutput]
    def create_stack_instances(params = {}, options = {})
      request = build_request(:create_stack_instances, params)
      request.send_request(options)
    end

    # <p>Creates a refactor across multiple stacks, with the list of stacks and resources that are
    #       affected.</p>
    # @param [Hash, Types::CreateStackRefactorInput] params
    # @option params [String] :description
    #   <p>A description to help you identify the stack refactor.</p>
    # @option params [Boolean] :enable_stack_creation
    #   <p>Determines if a new stack is created with the refactor.</p>
    # @option params [Array<Types::ResourceMapping>] :resource_mappings
    #   <p>The mappings for the stack resource <code>Source</code> and stack resource
    #           <code>Destination</code>.</p>
    # @option params [Array<Types::StackDefinition>] :stack_definitions
    #   <p>The stacks being refactored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description",
    #     enable_stack_creation: false,
    #     resource_mappings: [
    #       {
    #         source: { # required
    #           stack_name: "StackName", # required
    #           logical_resource_id: "LogicalResourceId", # required
    #         },
    #         destination: { # required
    #           stack_name: "StackName", # required
    #           logical_resource_id: "LogicalResourceId", # required
    #         }
    #       }
    #     ],
    #     stack_definitions: [ # required
    #       {
    #         stack_name: "StackName",
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_stack_refactor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_refactor_id: "StackRefactorId", # required
    #   }
    # @return [Types::CreateStackRefactorOutput]
    def create_stack_refactor(params = {}, options = {})
      request = build_request(:create_stack_refactor, params)
      request.send_request(options)
    end

    # <p>Creates a StackSet.</p>
    # @param [Hash, Types::CreateStackSetInput] params
    # @option params [String] :stack_set_name
    #   <p>The name to associate with the StackSet. The name must be unique in the Region where you
    #         create your StackSet.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It
    #           must start with an alphabetic character and can't be longer than 128 characters.</p>
    #            </note>
    # @option params [String] :description
    #   <p>A description of the StackSet. You can use the description to identify the StackSet's
    #         purpose or other important information.</p>
    # @option params [String] :template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #         maximum length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template
    #         (maximum size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. S3 static website URLs are
    #         not supported.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #           <code>TemplateURL</code> parameter, but not both.</p>
    # @option params [String] :stack_id
    #   <p>The stack ID you are importing into a new StackSet. Specify the Amazon Resource Name (ARN)
    #         of the stack.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>The input parameters for the StackSet template.</p>
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your StackSet template contains
    #         certain capabilities in order for CloudFormation to create the StackSet and related stack
    #         instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account; for example, by creating new IAM users. For those StackSets, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your StackSet template references one or more
    #             macros, you must create the StackSet directly from the processed template, without first
    #             reviewing the resulting changes in a change set. To create the StackSet directly, you must
    #             acknowledge this capability. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #                  <important>
    #                     <p>StackSets with service-managed permissions don't currently support the use of macros
    #               in templates. (This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a> and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.) Even if
    #               you specify this capability for a StackSet with service-managed permissions, if you
    #               reference a macro in your template the StackSet operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pairs to associate with this StackSet and the stacks created from it.
    #         CloudFormation also propagates these tags to supported resources that are created in the stacks. A
    #         maximum number of 50 tags can be specified.</p>
    #            <p>If you specify tags as part of a <code>CreateStackSet</code> action, CloudFormation checks to
    #         see if you have the required IAM permission to tag resources. If you don't, the entire
    #           <code>CreateStackSet</code> action fails with an <code>access denied</code> error, and the
    #         StackSet is not created.</p>
    # @option params [String] :administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to create this StackSet.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles to control
    #         which users or groups can manage specific StackSets within the same administrator account. For
    #         more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #           self-managed permissions</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>Valid only if the permissions model is <code>SELF_MANAGED</code>.</p>
    # @option params [String] :execution_role_name
    #   <p>The name of the IAM execution role to use to create the StackSet. If you do not specify
    #         an execution role, CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code>
    #         role for the StackSet operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to control which
    #         stack resources users and groups can include in their StackSets.</p>
    #            <p>Valid only if the permissions model is <code>SELF_MANAGED</code>.</p>
    # @option params [String] :permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created. By default,
    #           <code>SELF-MANAGED</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #             execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #               self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #             IAM roles required to deploy to accounts managed by Organizations. For more
    #             information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AutoDeployment] :auto_deployment
    #   <p>Describes whether StackSets automatically deploys to Organizations accounts that
    #         are added to the target organization or organizational unit (OU). For more information, see
    #           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html">Enable or disable automatic deployments for StackSets in Organizations</a>
    #         in the <i>CloudFormation User Guide</i>.</p>
    #            <p>Required if the permissions model is <code>SERVICE_MANAGED</code>. (Not used with
    #         self-managed permissions.)</p>
    # @option params [String] :call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a StackSet with service-managed permissions while signed in to the management account, specify <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a StackSet with service-managed permissions while signed in to a delegated
    #             administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated admin in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>StackSets with service-managed permissions are created in the management account, including StackSets that are created by delegated administrators.</p>
    #            <p>Valid only if the permissions model is <code>SERVICE_MANAGED</code>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to create
    #         another StackSet with the same name. You might retry <code>CreateStackSet</code> requests to
    #         ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    # @option params [Types::ManagedExecution] :managed_execution
    #   <p>Describes whether CloudFormation performs non-conflicting operations concurrently and queues
    #         conflicting operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_id: "StackId",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     permission_model: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"],
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false
    #     },
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"],
    #     client_request_token: "ClientRequestToken",
    #     managed_execution: {
    #       active: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_stack_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_set_id: "StackSetId"
    #   }
    # @return [Types::CreateStackSetOutput]
    def create_stack_set(params = {}, options = {})
      request = build_request(:create_stack_set, params)
      request.send_request(options)
    end

    # <p>Deactivates trusted access with Organizations. If trusted access is deactivated,
    #       the management account does not have permissions to create and manage
    #       service-managed StackSets for your organization.</p>
    # @param [Hash, Types::DeactivateOrganizationsAccessInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.deactivate_organizations_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeactivateOrganizationsAccessOutput]
    def deactivate_organizations_access(params = {}, options = {})
      request = build_request(:deactivate_organizations_access, params)
      request.send_request(options)
    end

    # <p>Deactivates a public third-party extension, such as a resource or module, or a CloudFormation
    #       Hook when you no longer use it.</p>
    #          <p>Deactivating an extension deletes the configuration details that are associated with it.
    #       To temporary disable a CloudFormation Hook instead, you can use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a>.</p>
    #          <p>Once deactivated, an extension can't be used in any CloudFormation operation. This includes
    #       stack update operations where the stack template includes the extension, even if no updates
    #       are being made to the extension. In addition, deactivated extensions aren't automatically
    #       updated if a new version of the extension is released.</p>
    #          <p>To see which extensions are currently activated, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListTypes.html">ListTypes</a>.</p>
    # @param [Hash, Types::DeactivateTypeInput] params
    # @option params [String] :type_name
    #   <p>The type name of the extension, in this account and Region. If you specified a type name
    #         alias when enabling the extension, use the type name alias.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and Region.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "TypeName",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     arn: "PrivateTypeArn"
    #   }
    #   options = {}
    #   response = client.deactivate_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeactivateTypeOutput]
    def deactivate_type(params = {}, options = {})
      request = build_request(:deactivate_type, params)
      request.send_request(options)
    end

    # <p>Deletes the specified change set. Deleting change sets ensures that no one executes the
    #       wrong change set.</p>
    #          <p>If the call successfully completes, CloudFormation successfully deleted the change set.</p>
    #          <p>If <code>IncludeNestedStacks</code> specifies <code>True</code> during the creation of the
    #       nested change set, then <code>DeleteChangeSet</code> will delete all change sets that belong
    #       to the stacks hierarchy and will also delete all change sets for nested stacks with the status
    #       of <code>REVIEW_IN_PROGRESS</code>.</p>
    # @param [Hash, Types::DeleteChangeSetInput] params
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set to delete, specify the stack name or Amazon
    #         Resource Name (ARN) that's associated with it.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId"
    #   }
    #   options = {}
    #   response = client.delete_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChangeSetOutput]
    def delete_change_set(params = {}, options = {})
      request = build_request(:delete_change_set, params)
      request.send_request(options)
    end

    # <p>Deleted a generated template.</p>
    # @param [Hash, Types::DeleteGeneratedTemplateInput] params
    # @option params [String] :generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    # @example To delete a generated template
    #   # This example deletes a generated template
    #   params = {
    #     generated_template_name: "JazzyTemplate"
    #   }
    #   options = {}
    #   response = client.delete_generated_template(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     generated_template_name: "GeneratedTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_generated_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_generated_template(params = {}, options = {})
      request = build_request(:delete_generated_template, params)
      request.send_request(options)
    end

    # <p>Deletes a specified stack. Once the call completes successfully, stack deletion starts.
    #       Deleted stacks don't show up in the <a>DescribeStacks</a> operation if the deletion
    #       has been completed successfully.</p>
    #          <p>For more information about deleting a stack, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-delete-stack.html">Delete a stack from
    #         the CloudFormation console</a> in the <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::DeleteStackInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    # @option params [Array<String>] :retain_resources
    #   <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that
    #         are associated with the resources you want to retain. During deletion, CloudFormation deletes the
    #         stack but doesn't delete the retained resources.</p>
    #            <p>Retaining resources is useful when you can't delete a resource, such as a non-empty S3
    #         bucket, but you want to delete the stack.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to delete the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that's generated from
    #         your user credentials.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to delete a stack
    #         with the same name. You might retry <code>DeleteStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    # @option params [String] :deletion_mode
    #   <p>Specifies the deletion mode for the stack. Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code> - Use the standard behavior. Specifying this value is the same
    #             as not specifying this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DELETE_STACK</code> - Delete the stack if it's stuck in a
    #               <code>DELETE_FAILED</code> state due to resource deletion failure.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #     deletion_mode: "STANDARD" # One of: ["STANDARD", "FORCE_DELETE_STACK"]
    #   }
    #   options = {}
    #   response = client.delete_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stack(params = {}, options = {})
      request = build_request(:delete_stack, params)
      request.send_request(options)
    end

    # <p>Deletes stack instances for the specified accounts, in the specified Amazon Web Services Regions.</p>
    #          <note>
    #             <p>The maximum number of organizational unit (OUs) supported by a
    #           <code>DeleteStackInstances</code> operation is 50.</p>
    #             <p>If you need more than 50, consider the following options:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <i>Batch processing:</i> If you don't want to expose your OU
    #             hierarchy, split up the operations into multiple calls with less than 50 OUs
    #             each.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <i>Parent OU strategy:</i> If you don't mind exposing the OU
    #             hierarchy, target a parent OU that contains all desired child OUs.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteStackInstancesInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to delete stack instances for.</p>
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The account IDs of the Amazon Web Services accounts that you want to delete
    #         stack instances for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts from which to delete
    #         stack instances.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Array<String>] :regions
    #   <p>The Amazon Web Services Regions where you want to delete StackSet instances.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    # @option params [Boolean] :retain_stacks
    #   <p>Removes the stack instances from the specified StackSet, but doesn't delete the stacks.
    #         You can't reassociate a retained stack or add an existing, saved stack to a new stack
    #         set.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    # @option params [String] :operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         can retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE" # One of: ["NONE", "INTERSECTION", "DIFFERENCE", "UNION"]
    #     },
    #     regions: ["Region"], # required
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     retain_stacks: false, # required
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.delete_stack_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::DeleteStackInstancesOutput]
    def delete_stack_instances(params = {}, options = {})
      request = build_request(:delete_stack_instances, params)
      request.send_request(options)
    end

    # <p>Deletes a StackSet. Before you can delete a StackSet, all its member stack instances must
    #       be deleted. For more information about how to complete this, see <a>DeleteStackInstances</a>.</p>
    # @param [Hash, Types::DeleteStackSetInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you're deleting. You can obtain this value by
    #         running <a>ListStackSets</a>.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.delete_stack_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStackSetOutput]
    def delete_stack_set(params = {}, options = {})
      request = build_request(:delete_stack_set, params)
      request.send_request(options)
    end

    # <p>Marks an extension or extension version as <code>DEPRECATED</code> in the CloudFormation
    #       registry, removing it from active use. Deprecated extensions or extension versions cannot be
    #       used in CloudFormation operations.</p>
    #          <p>To deregister an entire extension, you must individually deregister all active versions of
    #       that extension. If an extension has only a single active version, deregistering that version
    #       results in the extension itself being deregistered and marked as deprecated in the
    #       registry.</p>
    #          <p>You can't deregister the default version of an extension if there are other active version
    #       of that extension. If you do deregister the default version of an extension, the extension
    #       type itself is deregistered as well and marked as deprecated.</p>
    #          <p>To view the deprecation status of an extension or extension version, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-private-deregister-extension.html">Remove
    #         third-party private extensions from your account</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::DeregisterTypeInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId"
    #   }
    #   options = {}
    #   response = client.deregister_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterTypeOutput]
    def deregister_type(params = {}, options = {})
      request = build_request(:deregister_type, params)
      request.send_request(options)
    end

    # <p>Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you
    #       can create in your account. For more information about account limits, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">Understand CloudFormation quotas</a> in the <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::DescribeAccountLimitsInput] params
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of limits that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_account_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_limits: [
    #       {
    #         name: "LimitName",
    #         value: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAccountLimitsOutput]
    def describe_account_limits(params = {}, options = {})
      request = build_request(:describe_account_limits, params)
      request.send_request(options)
    end

    # <p>Returns the inputs for the change set and a list of changes that CloudFormation will make if
    #       you execute the change set. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html">Update
    #         CloudFormation stacks using change sets</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::DescribeChangeSetInput] params
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the
    #         change set you want to describe.</p>
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>DescribeChangeSet</a> response output) that
    #         identifies the next page of information that you want to retrieve.</p>
    # @option params [Boolean] :include_property_values
    #   <p>If <code>true</code>, the returned changes include detailed changes in the property
    #         values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #     include_property_values: false
    #   }
    #   options = {}
    #   response = client.describe_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_name: "ChangeSetName",
    #     change_set_id: "ChangeSetId",
    #     stack_id: "StackId",
    #     stack_name: "StackName",
    #     description: "Description",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     creation_time: Time.now,
    #     execution_status: "UNAVAILABLE" # One of: ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"],
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"],
    #     status_reason: "ChangeSetStatusReason",
    #     notification_ar_ns: ["NotificationARN"],
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     changes: [
    #       {
    #         type: "Resource" # One of: ["Resource"],
    #         hook_invocation_count: 1,
    #         resource_change: {
    #           policy_action: "Delete" # One of: ["Delete", "Retain", "Snapshot", "ReplaceAndDelete", "ReplaceAndRetain", "ReplaceAndSnapshot"],
    #           action: "Add" # One of: ["Add", "Modify", "Remove", "Import", "Dynamic"],
    #           logical_resource_id: "LogicalResourceId",
    #           physical_resource_id: "PhysicalResourceId",
    #           resource_type: "ResourceType",
    #           replacement: "True" # One of: ["True", "False", "Conditional"],
    #           scope: ["Properties" # One of: ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "UpdateReplacePolicy", "Tags"]],
    #           details: [
    #             {
    #               target: {
    #                 attribute: "Properties" # One of: ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "UpdateReplacePolicy", "Tags"],
    #                 name: "PropertyName",
    #                 requires_recreation: "Never" # One of: ["Never", "Conditionally", "Always"],
    #                 path: "ResourcePropertyPath",
    #                 before_value: "BeforeValue",
    #                 after_value: "AfterValue",
    #                 attribute_change_type: "Add" # One of: ["Add", "Remove", "Modify"]
    #               },
    #               evaluation: "Static" # One of: ["Static", "Dynamic"],
    #               change_source: "ResourceReference" # One of: ["ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"],
    #               causing_entity: "CausingEntity"
    #             }
    #           ],
    #           change_set_id: "ChangeSetId",
    #           module_info: {
    #             type_hierarchy: "TypeHierarchy",
    #             logical_id_hierarchy: "LogicalIdHierarchy"
    #           },
    #           before_context: "BeforeContext",
    #           after_context: "AfterContext"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken",
    #     include_nested_stacks: false,
    #     parent_change_set_id: "ChangeSetId",
    #     root_change_set_id: "ChangeSetId",
    #     on_stack_failure: "DO_NOTHING" # One of: ["DO_NOTHING", "ROLLBACK", "DELETE"],
    #     import_existing_resources: false
    #   }
    # @return [Types::DescribeChangeSetOutput]
    def describe_change_set(params = {}, options = {})
      request = build_request(:describe_change_set, params)
      request.send_request(options)
    end

    # <p>Returns hook-related information for the change set and a list of changes that CloudFormation
    #       makes when you run the change set.</p>
    # @param [Hash, Types::DescribeChangeSetHooksInput] params
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or stack ID (ARN) of the
    #         change set you want to describe.</p>
    # @option params [String] :next_token
    #   <p>A string, provided by the <code>DescribeChangeSetHooks</code> response output, that
    #         identifies the next page of information that you want to retrieve.</p>
    # @option params [String] :logical_resource_id
    #   <p>If specified, lists only the Hooks related to the specified
    #           <code>LogicalResourceId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     next_token: "NextToken",
    #     logical_resource_id: "LogicalResourceId"
    #   }
    #   options = {}
    #   response = client.describe_change_set_hooks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_set_id: "ChangeSetId",
    #     change_set_name: "ChangeSetName",
    #     hooks: [
    #       {
    #         invocation_point: "PRE_PROVISION" # One of: ["PRE_PROVISION"],
    #         failure_mode: "FAIL" # One of: ["FAIL", "WARN"],
    #         type_name: "HookTypeName",
    #         type_version_id: "HookTypeVersionId",
    #         type_configuration_version_id: "HookTypeConfigurationVersionId",
    #         target_details: {
    #           target_type: "RESOURCE" # One of: ["RESOURCE"],
    #           resource_target_details: {
    #             logical_resource_id: "LogicalResourceId",
    #             resource_type: "HookTargetTypeName",
    #             resource_action: "Add" # One of: ["Add", "Modify", "Remove", "Import", "Dynamic"]
    #           }
    #         }
    #       }
    #     ],
    #     status: "PLANNING" # One of: ["PLANNING", "PLANNED", "UNAVAILABLE"],
    #     next_token: "NextToken",
    #     stack_id: "StackId",
    #     stack_name: "StackName"
    #   }
    # @return [Types::DescribeChangeSetHooksOutput]
    def describe_change_set_hooks(params = {}, options = {})
      request = build_request(:describe_change_set_hooks, params)
      request.send_request(options)
    end

    # <p>Describes a generated template. The output includes details about the progress of the
    #       creation of a generated template started by a <code>CreateGeneratedTemplate</code> API action
    #       or the update of a generated template started with an <code>UpdateGeneratedTemplate</code> API
    #       action.</p>
    # @param [Hash, Types::DescribeGeneratedTemplateInput] params
    # @option params [String] :generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     generated_template_name: "GeneratedTemplateName", # required
    #   }
    #   options = {}
    #   response = client.describe_generated_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     generated_template_id: "GeneratedTemplateId",
    #     generated_template_name: "GeneratedTemplateName",
    #     resources: [
    #       {
    #         resource_type: "ResourceType",
    #         logical_resource_id: "LogicalResourceId",
    #         resource_identifier: {
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue"
    #         },
    #         resource_status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FAILED", "COMPLETE"],
    #         resource_status_reason: "ResourceStatusReason",
    #         warnings: [
    #           {
    #             type: "MUTUALLY_EXCLUSIVE_PROPERTIES" # One of: ["MUTUALLY_EXCLUSIVE_PROPERTIES", "UNSUPPORTED_PROPERTIES", "MUTUALLY_EXCLUSIVE_TYPES", "EXCLUDED_PROPERTIES"],
    #             properties: [
    #               {
    #                 property_path: "PropertyPath",
    #                 required: false,
    #                 description: "PropertyDescription"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "UPDATE_PENDING", "DELETE_PENDING", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "COMPLETE"],
    #     status_reason: "TemplateStatusReason",
    #     creation_time: Time.now,
    #     last_updated_time: Time.now,
    #     progress: {
    #       resources_succeeded: 1,
    #       resources_failed: 1,
    #       resources_processing: 1,
    #       resources_pending: 1
    #     },
    #     stack_id: "StackId",
    #     template_configuration: {
    #       deletion_policy: "DELETE" # One of: ["DELETE", "RETAIN"],
    #       update_replace_policy: "DELETE" # One of: ["DELETE", "RETAIN"]
    #     },
    #     total_warnings: 1
    #   }
    # @return [Types::DescribeGeneratedTemplateOutput]
    def describe_generated_template(params = {}, options = {})
      request = build_request(:describe_generated_template, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the account's <code>OrganizationAccess</code> status. This API
    #       can be called either by the management account or the delegated administrator by using the
    #         <code>CallAs</code> parameter. This API can also be called without the <code>CallAs</code>
    #       parameter by the management account.</p>
    # @param [Hash, Types::DescribeOrganizationsAccessInput] params
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.describe_organizations_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED", "DISABLED_PERMANENTLY"]
    #   }
    # @return [Types::DescribeOrganizationsAccessOutput]
    def describe_organizations_access(params = {}, options = {})
      request = build_request(:describe_organizations_access, params)
      request.send_request(options)
    end

    # <p>Returns information about a CloudFormation extension publisher.</p>
    #          <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #       publisher, <code>DescribePublisher</code> returns information about your own publisher
    #       account.</p>
    #          <p>For more information about registering as a publisher, see:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html">RegisterPublisher</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Publishing extensions
    #             to make them available for public use</a> in the
    #             <i>CloudFormation Command Line Interface (CLI) User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribePublisherInput] params
    # @option params [String] :publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #         publisher, <code>DescribePublisher</code> returns information about your own publisher
    #         account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     publisher_id: "PublisherId"
    #   }
    #   options = {}
    #   response = client.describe_publisher(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     publisher_id: "PublisherId",
    #     publisher_status: "VERIFIED" # One of: ["VERIFIED", "UNVERIFIED"],
    #     identity_provider: "AWS_Marketplace" # One of: ["AWS_Marketplace", "GitHub", "Bitbucket"],
    #     publisher_profile: "PublisherProfile"
    #   }
    # @return [Types::DescribePublisherOutput]
    def describe_publisher(params = {}, options = {})
      request = build_request(:describe_publisher, params)
      request.send_request(options)
    end

    # <p>Describes details of a resource scan.</p>
    # @param [Hash, Types::DescribeResourceScanInput] params
    # @option params [String] :resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_scan_id: "ResourceScanId", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_scan_id: "ResourceScanId",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETE", "EXPIRED"],
    #     status_reason: "ResourceScanStatusReason",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     percentage_completed: 1.0,
    #     resource_types: ["ResourceType"],
    #     resources_scanned: 1,
    #     resources_read: 1,
    #     scan_filters: [
    #       {
    #         types: ["ResourceTypeFilter"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeResourceScanOutput]
    def describe_resource_scan(params = {}, options = {})
      request = build_request(:describe_resource_scan, params)
      request.send_request(options)
    end

    # <p>Returns information about a stack drift detection operation. A stack drift detection
    #       operation detects whether a stack's actual configuration differs, or has
    #         <i>drifted</i>, from its expected configuration, as defined in the stack
    #       template and any values specified as template parameters. A stack is considered to have
    #       drifted if one or more of its resources have drifted. For more information about stack and
    #       resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect unmanaged
    #         configuration changes to stacks and resources with drift detection</a>.</p>
    #          <p>Use <a>DetectStackDrift</a> to initiate a stack drift detection operation.
    #         <code>DetectStackDrift</code> returns a <code>StackDriftDetectionId</code> you can use to
    #       monitor the progress of the operation using <code>DescribeStackDriftDetectionStatus</code>.
    #       Once the drift detection operation has completed, use <a>DescribeStackResourceDrifts</a> to return drift information about the stack and its
    #       resources.</p>
    # @param [Hash, Types::DescribeStackDriftDetectionStatusInput] params
    # @option params [String] :stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation
    #         is run. However, the number of drift results CloudFormation retains for any given stack, and for
    #         how long, may vary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_drift_detection_id: "StackDriftDetectionId", # required
    #   }
    #   options = {}
    #   response = client.describe_stack_drift_detection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "StackId", # required
    #     stack_drift_detection_id: "StackDriftDetectionId", # required
    #     stack_drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"],
    #     detection_status: "DETECTION_IN_PROGRESS" # One of: ["DETECTION_IN_PROGRESS", "DETECTION_FAILED", "DETECTION_COMPLETE"], # required
    #     detection_status_reason: "StackDriftDetectionStatusReason",
    #     drifted_stack_resource_count: 1,
    #     timestamp: Time.now, # required
    #   }
    # @return [Types::DescribeStackDriftDetectionStatusOutput]
    def describe_stack_drift_detection_status(params = {}, options = {})
      request = build_request(:describe_stack_drift_detection_status, params)
      request.send_request(options)
    end

    # <p>Returns all stack related events for a specified stack in reverse chronological order. For
    #       more information about a stack's event history, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html">Understand CloudFormation stack creation events</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    #          <note>
    #             <p>You can list events for stacks that have failed to create or have been deleted by
    #         specifying the unique stack identifier (stack ID).</p>
    #          </note>
    # @param [Hash, Types::DescribeStackEventsInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_stack_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_events: [
    #       {
    #         stack_id: "StackId", # required
    #         event_id: "EventId", # required
    #         stack_name: "StackName", # required
    #         logical_resource_id: "LogicalResourceId",
    #         physical_resource_id: "PhysicalResourceId",
    #         resource_type: "ResourceType",
    #         timestamp: Time.now, # required
    #         resource_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "EXPORT_FAILED", "EXPORT_COMPLETE", "EXPORT_IN_PROGRESS", "EXPORT_ROLLBACK_IN_PROGRESS", "EXPORT_ROLLBACK_FAILED", "EXPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"],
    #         resource_status_reason: "ResourceStatusReason",
    #         resource_properties: "ResourceProperties",
    #         client_request_token: "ClientRequestToken",
    #         hook_type: "HookType",
    #         hook_status: "HOOK_IN_PROGRESS" # One of: ["HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"],
    #         hook_status_reason: "HookStatusReason",
    #         hook_invocation_point: "PRE_PROVISION" # One of: ["PRE_PROVISION"],
    #         hook_invocation_id: "HookInvocationId",
    #         hook_failure_mode: "FAIL" # One of: ["FAIL", "WARN"],
    #         detailed_status: "CONFIGURATION_COMPLETE" # One of: ["CONFIGURATION_COMPLETE", "VALIDATION_FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStackEventsOutput]
    def describe_stack_events(params = {}, options = {})
      request = build_request(:describe_stack_events, params)
      request.send_request(options)
    end

    # <p>Returns the stack instance that's associated with the specified StackSet, Amazon Web Services account,
    #       and Amazon Web Services Region.</p>
    #          <p>For a list of stack instances that are associated with a specific StackSet, use <a>ListStackInstances</a>.</p>
    # @param [Hash, Types::DescribeStackInstanceInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or the unique stack ID of the StackSet that you want to get stack instance
    #         information for.</p>
    # @option params [String] :stack_instance_account
    #   <p>The ID of an Amazon Web Services account that's associated with this stack instance.</p>
    # @option params [String] :stack_instance_region
    #   <p>The name of a Region that's associated with this stack instance.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     stack_instance_account: "Account", # required
    #     stack_instance_region: "Region", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.describe_stack_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_instance: {
    #       stack_set_id: "StackSetId",
    #       region: "Region",
    #       account: "Account",
    #       stack_id: "StackId",
    #       parameter_overrides: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue",
    #           use_previous_value: false,
    #           resolved_value: "ParameterValue"
    #         }
    #       ],
    #       status: "CURRENT" # One of: ["CURRENT", "OUTDATED", "INOPERABLE"],
    #       stack_instance_status: {
    #         detailed_status: "PENDING" # One of: ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE", "SKIPPED_SUSPENDED_ACCOUNT", "FAILED_IMPORT"]
    #       },
    #       status_reason: "Reason",
    #       organizational_unit_id: "OrganizationalUnitId",
    #       drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"],
    #       last_drift_check_timestamp: Time.now,
    #       last_operation_id: "ClientRequestToken"
    #     }
    #   }
    # @return [Types::DescribeStackInstanceOutput]
    def describe_stack_instance(params = {}, options = {})
      request = build_request(:describe_stack_instance, params)
      request.send_request(options)
    end

    # <p>Describes the stack refactor status.</p>
    # @param [Hash, Types::DescribeStackRefactorInput] params
    # @option params [String] :stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_refactor_id: "StackRefactorId", # required
    #   }
    #   options = {}
    #   response = client.describe_stack_refactor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "Description",
    #     stack_refactor_id: "StackRefactorId",
    #     stack_ids: ["StackId"],
    #     execution_status: "UNAVAILABLE" # One of: ["UNAVAILABLE", "AVAILABLE", "OBSOLETE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"],
    #     execution_status_reason: "ExecutionStatusReason",
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #     status_reason: "StackRefactorStatusReason"
    #   }
    # @return [Types::DescribeStackRefactorOutput]
    def describe_stack_refactor(params = {}, options = {})
      request = build_request(:describe_stack_refactor, params)
      request.send_request(options)
    end

    # <p>Returns a description of the specified resource in the specified stack.</p>
    #          <p>For deleted stacks, DescribeStackResource returns resource information for up to 90 days
    #       after the stack has been deleted.</p>
    # @param [Hash, Types::DescribeStackResourceInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_stack_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_resource_detail: {
    #       stack_name: "StackName",
    #       stack_id: "StackId",
    #       logical_resource_id: "LogicalResourceId", # required
    #       physical_resource_id: "PhysicalResourceId",
    #       resource_type: "ResourceType", # required
    #       last_updated_timestamp: Time.now, # required
    #       resource_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "EXPORT_FAILED", "EXPORT_COMPLETE", "EXPORT_IN_PROGRESS", "EXPORT_ROLLBACK_IN_PROGRESS", "EXPORT_ROLLBACK_FAILED", "EXPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"], # required
    #       resource_status_reason: "ResourceStatusReason",
    #       description: "Description",
    #       metadata: "Metadata",
    #       drift_information: {
    #         stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #         last_check_timestamp: Time.now
    #       },
    #       module_info: {
    #         type_hierarchy: "TypeHierarchy",
    #         logical_id_hierarchy: "LogicalIdHierarchy"
    #       }
    #     }
    #   }
    # @return [Types::DescribeStackResourceOutput]
    def describe_stack_resource(params = {}, options = {})
      request = build_request(:describe_stack_resource, params)
      request.send_request(options)
    end

    # <p>Returns drift information for the resources that have been checked for drift in the
    #       specified stack. This includes actual and expected configuration values for resources where
    #       CloudFormation detects configuration drift.</p>
    #          <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack
    #       resource that has been checked for drift. Resources that haven't yet been checked for drift
    #       aren't included. Resources that don't currently support drift detection aren't checked, and so
    #       not included. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #         type support for imports and drift detection</a>.</p>
    #          <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources, or
    #         <a>DetectStackDrift</a> to detect drift on all supported resources for a given
    #       stack.</p>
    # @param [Hash, Types::DescribeStackResourceDriftsInput] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for which you want drift information.</p>
    # @option params [Array<String>] :stack_resource_drift_status_filters
    #   <p>The resource drift status values to use as filters for the resource drift results
    #         returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration in
    #             that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #             template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #             template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: CloudFormation could not run drift detection for the
    #             resource.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stack resource drift results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     stack_resource_drift_status_filters: ["IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_stack_resource_drifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_resource_drifts: [ # required
    #       {
    #         stack_id: "StackId", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         physical_resource_id: "PhysicalResourceId",
    #         physical_resource_id_context: [
    #           {
    #             key: "Key", # required
    #             value: "Value", # required
    #           }
    #         ],
    #         resource_type: "ResourceType", # required
    #         expected_properties: "Properties",
    #         actual_properties: "Properties",
    #         property_differences: [
    #           {
    #             property_path: "PropertyPath", # required
    #             expected_value: "PropertyValue", # required
    #             actual_value: "PropertyValue", # required
    #             difference_type: "ADD" # One of: ["ADD", "REMOVE", "NOT_EQUAL"], # required
    #           }
    #         ],
    #         stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #         timestamp: Time.now, # required
    #         module_info: {
    #           type_hierarchy: "TypeHierarchy",
    #           logical_id_hierarchy: "LogicalIdHierarchy"
    #         },
    #         drift_status_reason: "StackResourceDriftStatusReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStackResourceDriftsOutput]
    def describe_stack_resource_drifts(params = {}, options = {})
      request = build_request(:describe_stack_resource_drifts, params)
      request.send_request(options)
    end

    # <p>Returns Amazon Web Services resource descriptions for running and deleted stacks. If
    #         <code>StackName</code> is specified, all the associated resources that are part of the stack
    #       are returned. If <code>PhysicalResourceId</code> is specified, the associated resources of the
    #       stack that the resource belongs to are returned.</p>
    #          <note>
    #             <p>Only the first 100 resources will be returned. If your stack has more resources than
    #         this, you should use <code>ListStackResources</code> instead.</p>
    #          </note>
    #          <p>For deleted stacks, <code>DescribeStackResources</code> returns resource information for
    #       up to 90 days after the stack has been deleted.</p>
    #          <p>You must specify either <code>StackName</code> or <code>PhysicalResourceId</code>, but not
    #       both. In addition, you can specify <code>LogicalResourceId</code> to filter the returned
    #       result. For more information about resources, the <code>LogicalResourceId</code> and
    #         <code>PhysicalResourceId</code>, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">CloudFormation User Guide</a>.</p>
    #          <note>
    #             <p>A <code>ValidationError</code> is returned if you specify both <code>StackName</code>
    #         and <code>PhysicalResourceId</code> in the same request.</p>
    #          </note>
    # @param [Hash, Types::DescribeStackResourcesInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Required: Conditional. If you don't specify <code>StackName</code>, you must specify
    #           <code>PhysicalResourceId</code>.</p>
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    # @option params [String] :physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #         supported by CloudFormation.</p>
    #            <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #           <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass the
    #         EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack the
    #         instance belongs to and what other resources are part of the stack.</p>
    #            <p>Required: Conditional. If you don't specify <code>PhysicalResourceId</code>, you must
    #         specify <code>StackName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName",
    #     logical_resource_id: "LogicalResourceId",
    #     physical_resource_id: "PhysicalResourceId"
    #   }
    #   options = {}
    #   response = client.describe_stack_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_resources: [
    #       {
    #         stack_name: "StackName",
    #         stack_id: "StackId",
    #         logical_resource_id: "LogicalResourceId", # required
    #         physical_resource_id: "PhysicalResourceId",
    #         resource_type: "ResourceType", # required
    #         timestamp: Time.now, # required
    #         resource_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "EXPORT_FAILED", "EXPORT_COMPLETE", "EXPORT_IN_PROGRESS", "EXPORT_ROLLBACK_IN_PROGRESS", "EXPORT_ROLLBACK_FAILED", "EXPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"], # required
    #         resource_status_reason: "ResourceStatusReason",
    #         description: "Description",
    #         drift_information: {
    #           stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #           last_check_timestamp: Time.now
    #         },
    #         module_info: {
    #           type_hierarchy: "TypeHierarchy",
    #           logical_id_hierarchy: "LogicalIdHierarchy"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeStackResourcesOutput]
    def describe_stack_resources(params = {}, options = {})
      request = build_request(:describe_stack_resources, params)
      request.send_request(options)
    end

    # <p>Returns the description of the specified StackSet.</p>
    #          <note>
    #             <p>This API provides <i>strongly consistent</i> reads meaning it will always
    #         return the most up-to-date data.</p>
    #          </note>
    # @param [Hash, Types::DescribeStackSetInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet whose description you want.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.describe_stack_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_set: {
    #       stack_set_name: "StackSetName",
    #       stack_set_id: "StackSetId",
    #       description: "Description",
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETED"],
    #       template_body: "TemplateBody",
    #       parameters: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue",
    #           use_previous_value: false,
    #           resolved_value: "ParameterValue"
    #         }
    #       ],
    #       capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       stack_set_arn: "StackSetARN",
    #       administration_role_arn: "RoleARN",
    #       execution_role_name: "ExecutionRoleName",
    #       stack_set_drift_detection_details: {
    #         drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "NOT_CHECKED"],
    #         drift_detection_status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"],
    #         last_drift_check_timestamp: Time.now,
    #         total_stack_instances_count: 1,
    #         drifted_stack_instances_count: 1,
    #         in_sync_stack_instances_count: 1,
    #         in_progress_stack_instances_count: 1,
    #         failed_stack_instances_count: 1
    #       },
    #       auto_deployment: {
    #         enabled: false,
    #         retain_stacks_on_account_removal: false
    #       },
    #       permission_model: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"],
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       managed_execution: {
    #         active: false
    #       },
    #       regions: ["Region"]
    #     }
    #   }
    # @return [Types::DescribeStackSetOutput]
    def describe_stack_set(params = {}, options = {})
      request = build_request(:describe_stack_set, params)
      request.send_request(options)
    end

    # <p>Returns the description of the specified StackSet operation.</p>
    #          <note>
    #             <p>This API provides <i>strongly consistent</i> reads meaning it will always
    #         return the most up-to-date data.</p>
    #          </note>
    # @param [Hash, Types::DescribeStackSetOperationInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or the unique stack ID of the StackSet for the stack operation.</p>
    # @option params [String] :operation_id
    #   <p>The unique ID of the StackSet operation.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.describe_stack_set_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_set_operation: {
    #       operation_id: "ClientRequestToken",
    #       stack_set_id: "StackSetId",
    #       action: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"],
    #       status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"],
    #       operation_preferences: {
    #         region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #         region_order: ["Region"],
    #         failure_tolerance_count: 1,
    #         failure_tolerance_percentage: 1,
    #         max_concurrent_count: 1,
    #         max_concurrent_percentage: 1,
    #         concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #       },
    #       retain_stacks: false,
    #       administration_role_arn: "RoleARN",
    #       execution_role_name: "ExecutionRoleName",
    #       creation_timestamp: Time.now,
    #       end_timestamp: Time.now,
    #       deployment_targets: {
    #         accounts: ["Account"],
    #         accounts_url: "AccountsUrl",
    #         organizational_unit_ids: ["OrganizationalUnitId"],
    #         account_filter_type: "NONE" # One of: ["NONE", "INTERSECTION", "DIFFERENCE", "UNION"]
    #       },
    #       stack_set_drift_detection_details: {
    #         drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "NOT_CHECKED"],
    #         drift_detection_status: "COMPLETED" # One of: ["COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"],
    #         last_drift_check_timestamp: Time.now,
    #         total_stack_instances_count: 1,
    #         drifted_stack_instances_count: 1,
    #         in_sync_stack_instances_count: 1,
    #         in_progress_stack_instances_count: 1,
    #         failed_stack_instances_count: 1
    #       },
    #       status_reason: "StackSetOperationStatusReason",
    #       status_details: {
    #         failed_stack_instances_count: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeStackSetOperationOutput]
    def describe_stack_set_operation(params = {}, options = {})
      request = build_request(:describe_stack_set_operation, params)
      request.send_request(options)
    end

    # <p>Returns the description for the specified stack; if no stack name was specified, then it
    #       returns the description for all the stacks created. For more information about a stack's event
    #       history, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html">Understand CloudFormation stack creation events</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    #          <note>
    #             <p>If the stack doesn't exist, a <code>ValidationError</code> is returned.</p>
    #          </note>
    # @param [Hash, Types::DescribeStacksInput] params
    # @option params [String] :stack_name
    #   <note>
    #               <p>If you don't pass a parameter to <code>StackName</code>, the API returns a response
    #           that describes all resources in the account, which can impact performance. This requires
    #             <code>ListStacks</code> and <code>DescribeStacks</code> permissions.</p>
    #               <p>Consider using the <a>ListStacks</a> API if you're not passing a parameter to
    #             <code>StackName</code>.</p>
    #               <p>The IAM policy below can be added to IAM policies when you want to limit
    #           resource-level permissions and avoid returning a response when no parameter is sent in the
    #           request:</p>
    #               <p>{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny", "Action":
    #           "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }]
    #           }</p>
    #            </note>
    #            <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stacks: [
    #       {
    #         stack_id: "StackId",
    #         stack_name: "StackName", # required
    #         change_set_id: "ChangeSetId",
    #         description: "Description",
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue"
    #           }
    #         ],
    #         creation_time: Time.now, # required
    #         deletion_time: Time.now,
    #         last_updated_time: Time.now,
    #         rollback_configuration: {
    #           rollback_triggers: [
    #             {
    #               arn: "Arn", # required
    #               type: "Type", # required
    #             }
    #           ],
    #           monitoring_time_in_minutes: 1
    #         },
    #         stack_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"], # required
    #         stack_status_reason: "StackStatusReason",
    #         disable_rollback: false,
    #         notification_ar_ns: ["NotificationARN"],
    #         timeout_in_minutes: 1,
    #         capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #         outputs: [
    #           {
    #             output_key: "OutputKey",
    #             output_value: "OutputValue",
    #             description: "Description",
    #             export_name: "ExportName"
    #           }
    #         ],
    #         role_arn: "RoleARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         enable_termination_protection: false,
    #         parent_id: "StackId",
    #         root_id: "StackId",
    #         drift_information: {
    #           stack_drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"], # required
    #           last_check_timestamp: Time.now
    #         },
    #         retain_except_on_create: false,
    #         deletion_mode: "STANDARD" # One of: ["STANDARD", "FORCE_DELETE_STACK"],
    #         detailed_status: "CONFIGURATION_COMPLETE" # One of: ["CONFIGURATION_COMPLETE", "VALIDATION_FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeStacksOutput]
    def describe_stacks(params = {}, options = {})
      request = build_request(:describe_stacks, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about an extension from the CloudFormation registry in your
    #       current account and Region.</p>
    #          <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #       about that specific extension version. Otherwise, it returns information about the default
    #       extension version.</p>
    # @param [Hash, Types::DescribeTypeInput] params
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    #            <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #         about that specific extension version. Otherwise, it returns information about the default
    #         extension version.</p>
    # @option params [String] :publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions provided by Amazon Web Services are not assigned a publisher ID.</p>
    # @option params [String] :public_version_number
    #   <p>The version number of a public third-party extension.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     arn: "TypeArn",
    #     version_id: "TypeVersionId",
    #     publisher_id: "PublisherId",
    #     public_version_number: "PublicVersionNumber"
    #   }
    #   options = {}
    #   response = client.describe_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TypeArn",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     default_version_id: "TypeVersionId",
    #     is_default_version: false,
    #     type_tests_status: "PASSED" # One of: ["PASSED", "FAILED", "IN_PROGRESS", "NOT_TESTED"],
    #     type_tests_status_description: "TypeTestsStatusDescription",
    #     description: "Description",
    #     schema: "TypeSchema",
    #     provisioning_type: "NON_PROVISIONABLE" # One of: ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"],
    #     deprecated_status: "LIVE" # One of: ["LIVE", "DEPRECATED"],
    #     logging_config: {
    #       log_role_arn: "RoleARN2", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     required_activated_types: [
    #       {
    #         type_name_alias: "TypeName",
    #         original_type_name: "TypeName",
    #         publisher_id: "PublisherId",
    #         supported_major_versions: [1]
    #       }
    #     ],
    #     execution_role_arn: "RoleARN2",
    #     visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     source_url: "OptionalSecureUrl",
    #     documentation_url: "OptionalSecureUrl",
    #     last_updated: Time.now,
    #     time_created: Time.now,
    #     configuration_schema: "ConfigurationSchema",
    #     publisher_id: "PublisherId",
    #     original_type_name: "TypeName",
    #     original_type_arn: "TypeArn",
    #     public_version_number: "PublicVersionNumber",
    #     latest_public_version: "PublicVersionNumber",
    #     is_activated: false,
    #     auto_update: false
    #   }
    # @return [Types::DescribeTypeOutput]
    def describe_type(params = {}, options = {})
      request = build_request(:describe_type, params)
      request.send_request(options)
    end

    # <p>Returns information about an extension's registration, including its current status and
    #       type and version identifiers.</p>
    #          <p>When you initiate a registration request using <a>RegisterType</a>, you can
    #       then use <a>DescribeTypeRegistration</a> to monitor the progress of that
    #       registration request.</p>
    #          <p>Once the registration request has completed, use <a>DescribeType</a> to return
    #       detailed information about an extension.</p>
    # @param [Hash, Types::DescribeTypeRegistrationInput] params
    # @option params [String] :registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>This registration token is generated by CloudFormation when you initiate a registration
    #         request using <a>RegisterType</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_token: "RegistrationToken", # required
    #   }
    #   options = {}
    #   response = client.describe_type_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_status: "COMPLETE" # One of: ["COMPLETE", "IN_PROGRESS", "FAILED"],
    #     description: "Description",
    #     type_arn: "TypeArn",
    #     type_version_arn: "TypeArn"
    #   }
    # @return [Types::DescribeTypeRegistrationOutput]
    def describe_type_registration(params = {}, options = {})
      request = build_request(:describe_type_registration, params)
      request.send_request(options)
    end

    # <p>Detects whether a stack's actual configuration differs, or has
    #         <i>drifted</i>, from its expected configuration, as defined in the stack
    #       template and any values specified as template parameters. For each resource in the stack that
    #       supports drift detection, CloudFormation compares the actual configuration of the resource with
    #       its expected template configuration. Only resource properties explicitly defined in the stack
    #       template are checked for drift. A stack is considered to have drifted if one or more of its
    #       resources differ from their expected template configurations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect unmanaged configuration changes to stacks and resources with drift
    #       detection</a>.</p>
    #          <p>Use <code>DetectStackDrift</code> to detect drift on all supported resources for a given
    #       stack, or <a>DetectStackResourceDrift</a> to detect drift on individual
    #       resources.</p>
    #          <p>For a list of stack resources that currently support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #         type support for imports and drift detection</a>.</p>
    #          <p>
    #             <code>DetectStackDrift</code> can take up to several minutes, depending on the number of
    #       resources contained within the stack. Use <a>DescribeStackDriftDetectionStatus</a>
    #       to monitor the progress of a detect stack drift operation. Once the drift detection operation
    #       has completed, use <a>DescribeStackResourceDrifts</a> to return drift information
    #       about the stack and its resources.</p>
    #          <p>When detecting drift on a stack, CloudFormation doesn't detect drift on any nested stacks
    #       belonging to that stack. Perform <code>DetectStackDrift</code> directly on the nested stack
    #       itself.</p>
    # @param [Hash, Types::DetectStackDriftInput] params
    # @option params [String] :stack_name
    #   <p>The name of the stack for which you want to detect drift.</p>
    # @option params [Array<String>] :logical_resource_ids
    #   <p>The logical names of any resources you want to use as filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_ids: ["LogicalResourceId"]
    #   }
    #   options = {}
    #   response = client.detect_stack_drift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_drift_detection_id: "StackDriftDetectionId", # required
    #   }
    # @return [Types::DetectStackDriftOutput]
    def detect_stack_drift(params = {}, options = {})
      request = build_request(:detect_stack_drift, params)
      request.send_request(options)
    end

    # <p>Returns information about whether a resource's actual configuration differs, or has
    #         <i>drifted</i>, from its expected configuration, as defined in the stack
    #       template and any values specified as template parameters. This information includes actual and
    #       expected property values for resources in which CloudFormation detects drift. Only resource
    #       properties explicitly defined in the stack template are checked for drift. For more
    #       information about stack and resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detect unmanaged
    #         configuration changes to stacks and resources with drift detection</a>.</p>
    #          <p>Use <code>DetectStackResourceDrift</code> to detect drift on individual resources, or
    #         <a>DetectStackDrift</a> to detect drift on all resources in a given stack that
    #       support drift detection.</p>
    #          <p>Resources that don't currently support drift detection can't be checked. For a list of
    #       resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resource
    #         type support for imports and drift detection</a>.</p>
    # @param [Hash, Types::DetectStackResourceDriftInput] params
    # @option params [String] :stack_name
    #   <p>The name of the stack to which the resource belongs.</p>
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource for which to return drift information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #   }
    #   options = {}
    #   response = client.detect_stack_resource_drift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_resource_drift: { # required
    #       stack_id: "StackId", # required
    #       logical_resource_id: "LogicalResourceId", # required
    #       physical_resource_id: "PhysicalResourceId",
    #       physical_resource_id_context: [
    #         {
    #           key: "Key", # required
    #           value: "Value", # required
    #         }
    #       ],
    #       resource_type: "ResourceType", # required
    #       expected_properties: "Properties",
    #       actual_properties: "Properties",
    #       property_differences: [
    #         {
    #           property_path: "PropertyPath", # required
    #           expected_value: "PropertyValue", # required
    #           actual_value: "PropertyValue", # required
    #           difference_type: "ADD" # One of: ["ADD", "REMOVE", "NOT_EQUAL"], # required
    #         }
    #       ],
    #       stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #       timestamp: Time.now, # required
    #       module_info: {
    #         type_hierarchy: "TypeHierarchy",
    #         logical_id_hierarchy: "LogicalIdHierarchy"
    #       },
    #       drift_status_reason: "StackResourceDriftStatusReason"
    #     }
    #   }
    # @return [Types::DetectStackResourceDriftOutput]
    def detect_stack_resource_drift(params = {}, options = {})
      request = build_request(:detect_stack_resource_drift, params)
      request.send_request(options)
    end

    # <p>Detect drift on a StackSet. When CloudFormation performs drift detection on a StackSet, it
    #       performs drift detection on the stack associated with each stack instance in the StackSet. For
    #       more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Performing drift detection on
    #         CloudFormation StackSets</a>.</p>
    #          <p>
    #             <code>DetectStackSetDrift</code> returns the <code>OperationId</code> of the StackSet
    #       drift detection operation. Use this operation id with <a>DescribeStackSetOperation</a> to monitor the progress of the drift detection
    #       operation. The drift detection operation may take some time, depending on the number of stack
    #       instances included in the StackSet, in addition to the number of resources included in each
    #       stack.</p>
    #          <p>Once the operation has completed, use the following actions to return drift
    #       information:</p>
    #          <ul>
    #             <li>
    #                <p>Use <a>DescribeStackSet</a> to return detailed information about the stack
    #           set, including detailed information about the last <i>completed</i> drift
    #           operation performed on the StackSet. (Information about drift operations that are in
    #           progress isn't included.)</p>
    #             </li>
    #             <li>
    #                <p>Use <a>ListStackInstances</a> to return a list of stack instances belonging
    #           to the StackSet, including the drift status and last drift time checked of each
    #           instance.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>DescribeStackInstance</a> to return detailed information about a
    #           specific stack instance, including its drift status and last drift time checked.</p>
    #             </li>
    #          </ul>
    #          <p>You can only run a single drift detection operation on a given StackSet at one
    #       time.</p>
    #          <p>To stop a drift detection StackSet operation, use <a>StopStackSetOperation</a>.</p>
    # @param [Hash, Types::DetectStackSetDriftInput] params
    # @option params [String] :stack_set_name
    #   <p>The name of the StackSet on which to perform the drift detection operation.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    # @option params [String] :operation_id
    #   <p>
    #               <i>The ID of the StackSet operation.</i>
    #            </p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetNameOrId", # required
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.detect_stack_set_drift(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::DetectStackSetDriftOutput]
    def detect_stack_set_drift(params = {}, options = {})
      request = build_request(:detect_stack_set_drift, params)
      request.send_request(options)
    end

    # <p>Returns the estimated monthly cost of a template. The return value is an Amazon Web Services Simple
    #       Monthly Calculator URL with a query string that describes the resources required to run the
    #       template.</p>
    # @param [Hash, Types::EstimateTemplateCostInput] params
    # @option params [String] :template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template that's
    #         located in an Amazon S3 bucket or a Systems Manager document. The location for an Amazon S3 bucket must
    #         start with <code>https://</code>. URLs from S3 static websites are not supported.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.estimate_template_cost(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "Url"
    #   }
    # @return [Types::EstimateTemplateCostOutput]
    def estimate_template_cost(params = {}, options = {})
      request = build_request(:estimate_template_cost, params)
      request.send_request(options)
    end

    # <p>Updates a stack using the input information that was provided when the specified change
    #       set was created. After the call successfully completes, CloudFormation starts updating the stack.
    #       Use the <a>DescribeStacks</a> action to view the status of the update.</p>
    #          <p>When you execute a change set, CloudFormation deletes all other change sets associated with
    #       the stack because they aren't valid for the updated stack.</p>
    #          <p>If a stack policy is associated with the stack, CloudFormation enforces the policy during the
    #       update. You can't specify a temporary stack policy that overrides the current policy.</p>
    #          <p>To create a change set for the entire stack hierarchy, <code>IncludeNestedStacks</code>
    #       must have been set to <code>True</code>.</p>
    # @param [Hash, Types::ExecuteChangeSetInput] params
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want use to update the
    #         specified stack.</p>
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or Amazon Resource Name
    #         (ARN) that's associated with the change set you want to execute.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to execute a
    #         change set to update a stack with the same name. You might retry <code>ExecuteChangeSet</code>
    #         requests to ensure that CloudFormation successfully received them.</p>
    # @option params [Boolean] :disable_rollback
    #   <p>Preserves the state of previously provisioned resources when an operation fails. This
    #         parameter can't be specified when the <code>OnStackFailure</code> parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation was specified.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>True</code> - if the stack creation fails, do nothing. This is equivalent to
    #             specifying <code>DO_NOTHING</code> for the <code>OnStackFailure</code> parameter to the
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>False</code> - if the stack creation fails, roll back the stack. This is
    #             equivalent to specifying <code>ROLLBACK</code> for the <code>OnStackFailure</code>
    #             parameter to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html">CreateChangeSet</a> API operation.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>True</code>
    #            </p>
    # @option params [Boolean] :retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     change_set_name: "ChangeSetNameOrId", # required
    #     stack_name: "StackNameOrId",
    #     client_request_token: "ClientRequestToken",
    #     disable_rollback: false,
    #     retain_except_on_create: false
    #   }
    #   options = {}
    #   response = client.execute_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExecuteChangeSetOutput]
    def execute_change_set(params = {}, options = {})
      request = build_request(:execute_change_set, params)
      request.send_request(options)
    end

    # <p>Executes the stack refactor operation.</p>
    # @param [Hash, Types::ExecuteStackRefactorInput] params
    # @option params [String] :stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_refactor_id: "StackRefactorId", # required
    #   }
    #   options = {}
    #   response = client.execute_stack_refactor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def execute_stack_refactor(params = {}, options = {})
      request = build_request(:execute_stack_refactor, params)
      request.send_request(options)
    end

    # <p>Retrieves a generated template. If the template is in an <code>InProgress</code> or
    #         <code>Pending</code> status then the template returned will be the template when the
    #       template was last in a <code>Complete</code> status. If the template has not yet been in a
    #         <code>Complete</code> status then an empty template will be returned.</p>
    # @param [Hash, Types::GetGeneratedTemplateInput] params
    # @option params [String] :format
    #   <p>The language to use to retrieve for the generated template. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>JSON</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>YAML</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of the generated template. The format is
    #           <code>arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}</code>.
    #         For example,
    #             <code>arn:aws:cloudformation:<i>us-east-1</i>:<i>123456789012</i>:generatedtemplate/<i>2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc</i>
    #               </code>.</p>
    # @example To get a generated template in JSON format
    #   # This example gets a generated template ins JSON format.
    #   params = {
    #     generated_template_name: "JazzyTemplate"
    #   }
    #   options = {}
    #   response = client.get_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     status: COMPLETE,
    #     template_body: "{\"Metadata\":{\"TemplateId\":\"arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/*\"},\"Parameters\":{\"Stage\":{\"Default\":\"beta\",\"Type\":\"String\"}},\"Resources\":{\"TestRole\":{\"Properties\":{\"AssumeRolePolicyDocument\":{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":{\"Fn::Sub\":[\"arn:${AWS::Partition}:iam::${AccountId}:root\",{\"AccountId\":{\"Fn::AccountIdFromAlias\":\"test-account-alias\"}}]}},\"Action\":\"sts:AssumeRole\"}]}},\"Type\":\"AWS::IAM::Role\",\"DeletionPolicy\":\"Delete\"},\"DocumentationPartl7ob4vsd76vs\":{\"UpdateReplacePolicy\":\"Retain\",\"Type\":\"AWS::ApiGateway::DocumentationPart\",\"DeletionPolicy\":\"Retain\",\"Properties\":{\"RestApiId\":\"l7ob4vsd76\",\"Properties\":\"{\\n  \\\"description\\\" : \\\"ListGeneratedTemplates 200 response\\\"\\n}\",\"Location\":{\"Path\":\"/ListGeneratedTemplates\",\"Type\":\"RESPONSE\",\"Method\":\"POST\",\"StatusCode\":\"200\"}}}}}"
    #   }
    # @example To get a generated template in YAML format
    #   # This example gets a generated template in YAML format.
    #   params = {
    #     generated_template_name: "JazzyTemplate",
    #     format: YAML
    #   }
    #   options = {}
    #   response = client.get_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     status: COMPLETE,
    #     template_body: "---\nMetadata:\n  TemplateId: \"arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/*\"\nParameters:\n  Stage:\n    Default: \"beta\"\n    Type: \"String\"\nResources:\n  TestRole:\n    Properties:\n      AssumeRolePolicyDocument:\n        Version: \"2012-10-17\"\n        Statement:\n        - Effect: \"Allow\"\n          Principal:\n            AWS:\n              Fn::Sub:\n              - \"arn:${AWS::Partition}:iam::${AccountId}:root\"\n              - AccountId:\n                  Fn::AccountIdFromAlias: \"test-account-alias\"\n          Action: \"sts:AssumeRole\"\n    Type: \"AWS::IAM::Role\"\n    DeletionPolicy: \"Delete\"\n  DocumentationPartl7ob4vsd76vsnAlFMLXKVm:\n    UpdateReplacePolicy: \"Retain\"\n    Type: \"AWS::ApiGateway::DocumentationPart\"\n    DeletionPolicy: \"Retain\"\n    Properties:\n      RestApiId: \"l7ob4vsd76\"\n      Properties: \"{\\n  \\\"description\\\" : \\\"ListGeneratedTemplates 200 response\\\"\\n\\\n        }\"\n      Location:\n        Path: \"/ListGeneratedTemplates\"\n        Type: \"RESPONSE\"\n        Method: \"POST\"\n        StatusCode: \"200\"\n"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     format: "JSON" # One of: ["JSON", "YAML"],
    #     generated_template_name: "GeneratedTemplateName", # required
    #   }
    #   options = {}
    #   response = client.get_generated_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "UPDATE_PENDING", "DELETE_PENDING", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "COMPLETE"],
    #     template_body: "TemplateBody"
    #   }
    # @return [Types::GetGeneratedTemplateOutput]
    def get_generated_template(params = {}, options = {})
      request = build_request(:get_generated_template, params)
      request.send_request(options)
    end

    # <p>Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null
    #       value is returned.</p>
    # @param [Hash, Types::GetStackPolicyInput] params
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID that's associated with the stack whose policy you want to
    #         get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #   }
    #   options = {}
    #   response = client.get_stack_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_policy_body: "StackPolicyBody"
    #   }
    # @return [Types::GetStackPolicyOutput]
    def get_stack_policy(params = {}, options = {})
      request = build_request(:get_stack_policy, params)
      request.send_request(options)
    end

    # <p>Returns the template body for a specified stack. You can get the template for running or
    #       deleted stacks.</p>
    #          <p>For deleted stacks, <code>GetTemplate</code> returns the template for up to 90 days after
    #       the stack has been deleted.</p>
    #          <note>
    #             <p>If the template doesn't exist, a <code>ValidationError</code> is returned.</p>
    #          </note>
    # @param [Hash, Types::GetTemplateInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of a change set for which CloudFormation returns the
    #         associated template. If you specify a name, you must also specify the
    #         <code>StackName</code>.</p>
    # @option params [String] :template_stage
    #   <p>For templates that include transforms, the stage of the template that CloudFormation returns.
    #         To get the user-submitted template, specify <code>Original</code>. To get the template after
    #         CloudFormation has processed all transforms, specify <code>Processed</code>.</p>
    #            <p>If the template doesn't include transforms, <code>Original</code> and
    #           <code>Processed</code> return the same template. By default, CloudFormation specifies
    #           <code>Processed</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName",
    #     change_set_name: "ChangeSetNameOrId",
    #     template_stage: "Original" # One of: ["Original", "Processed"]
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_body: "TemplateBody",
    #     stages_available: ["Original" # One of: ["Original", "Processed"]]
    #   }
    # @return [Types::GetTemplateOutput]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Returns information about a new or existing template. The <code>GetTemplateSummary</code>
    #       action is useful for viewing parameter information, such as default parameter values and
    #       parameter types, before you create or update a stack or StackSet.</p>
    #          <p>You can use the <code>GetTemplateSummary</code> action when you submit a template, or you
    #       can get template information for a StackSet, or a running or deleted stack.</p>
    #          <p>For deleted stacks, <code>GetTemplateSummary</code> returns the template information for
    #       up to 90 days after the stack has been deleted. If the template doesn't exist, a
    #         <code>ValidationError</code> is returned.</p>
    # @param [Hash, Types::GetTemplateSummaryInput] params
    # @option params [String] :template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that's located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    # @option params [String] :stack_name
    #   <p>The name or the stack ID that's associated with the stack, which aren't always
    #         interchangeable. For running stacks, you can specify either the stack's name or its unique
    #         stack ID. For deleted stack, you must specify the unique stack ID.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet from which the stack was created.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #         <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #           <code>TemplateURL</code>.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::TemplateSummaryConfig] :template_summary_config
    #   <p>Specifies options for the <code>GetTemplateSummary</code> API action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     stack_name: "StackNameOrId",
    #     stack_set_name: "StackSetNameOrId",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"],
    #     template_summary_config: {
    #       treat_unrecognized_resource_types_as_warnings: false
    #     }
    #   }
    #   options = {}
    #   response = client.get_template_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         default_value: "ParameterValue",
    #         parameter_type: "ParameterType",
    #         no_echo: false,
    #         description: "Description",
    #         parameter_constraints: {
    #           allowed_values: ["AllowedValue"]
    #         }
    #       }
    #     ],
    #     description: "Description",
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     capabilities_reason: "CapabilitiesReason",
    #     resource_types: ["ResourceType"],
    #     version: "Version",
    #     metadata: "Metadata",
    #     declared_transforms: ["TransformName"],
    #     resource_identifier_summaries: [
    #       {
    #         resource_type: "ResourceType",
    #         logical_resource_ids: ["LogicalResourceId"],
    #         resource_identifiers: ["ResourceIdentifierPropertyKey"]
    #       }
    #     ],
    #     warnings: {
    #       unrecognized_resource_types: ["ResourceType"]
    #     }
    #   }
    # @return [Types::GetTemplateSummaryOutput]
    def get_template_summary(params = {}, options = {})
      request = build_request(:get_template_summary, params)
      request.send_request(options)
    end

    # <p>Import existing stacks into a new StackSets. Use the stack import operation to import up
    #       to 10 stacks into a new StackSet in the same account as the source stack or in a different
    #       administrator account and Region, by specifying the stack ID of the stack you intend to
    #       import.</p>
    # @param [Hash, Types::ImportStacksToStackSetInput] params
    # @option params [String] :stack_set_name
    #   <p>The name of the StackSet. The name must be unique in the Region where you create your
    #         StackSet.</p>
    # @option params [Array<String>] :stack_ids
    #   <p>The IDs of the stacks you are importing into a StackSet. You import up to 10 stacks per
    #         StackSet at a time.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    # @option params [String] :stack_ids_url
    #   <p>The Amazon S3 URL which contains list of stack ids to be inputted.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The list of OU ID's to which the imported stacks must be mapped as deployment
    #         targets.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a StackSet operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">StackSet operation options</a>.</p>
    # @option params [String] :operation_id
    #   <p>A unique, user defined, identifier for the StackSet operation.</p>
    # @option params [String] :call_as
    #   <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For service managed StackSets, specify <code>DELEGATED_ADMIN</code>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetNameOrId", # required
    #     stack_ids: ["StackId"],
    #     stack_ids_url: "StackIdsUrl",
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.import_stacks_to_stack_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::ImportStacksToStackSetOutput]
    def import_stacks_to_stack_set(params = {}, options = {})
      request = build_request(:import_stacks_to_stack_set, params)
      request.send_request(options)
    end

    # <p>Returns the ID and status of each active change set for a stack. For example, CloudFormation
    #       lists change sets that are in the <code>CREATE_IN_PROGRESS</code> or
    #         <code>CREATE_PENDING</code> state.</p>
    # @param [Hash, Types::ListChangeSetsInput] params
    # @option params [String] :stack_name
    #   <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list change
    #         sets.</p>
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListChangeSets</a> response output) that
    #         identifies the next page of change sets that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_change_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         stack_id: "StackId",
    #         stack_name: "StackName",
    #         change_set_id: "ChangeSetId",
    #         change_set_name: "ChangeSetName",
    #         execution_status: "UNAVAILABLE" # One of: ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"],
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"],
    #         status_reason: "ChangeSetStatusReason",
    #         creation_time: Time.now,
    #         description: "Description",
    #         include_nested_stacks: false,
    #         parent_change_set_id: "ChangeSetId",
    #         root_change_set_id: "ChangeSetId",
    #         import_existing_resources: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChangeSetsOutput]
    def list_change_sets(params = {}, options = {})
      request = build_request(:list_change_sets, params)
      request.send_request(options)
    end

    # <p>Lists all exported output values in the account and Region in which you call this action.
    #       Use this action to see the exported output values that you can import into other stacks. To
    #       import values, use the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/intrinsic-function-reference-importvalue.html"> Fn::ImportValue</a> function.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html">Get exported outputs
    #         from a deployed CloudFormation stack</a>.</p>
    # @param [Hash, Types::ListExportsInput] params
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListExports</a> response output) that identifies
    #         the next page of exported output values that you asked to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exports: [
    #       {
    #         exporting_stack_id: "StackId",
    #         name: "ExportName",
    #         value: "ExportValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExportsOutput]
    def list_exports(params = {}, options = {})
      request = build_request(:list_exports, params)
      request.send_request(options)
    end

    # <p>Lists your generated templates in this Region.</p>
    # @param [Hash, Types::ListGeneratedTemplatesInput] params
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    # @option params [Integer] :max_results
    #   <p> If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListGeneratedTemplates</code> API action
    #         will return at most 50 results in each response. The maximum value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_generated_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         generated_template_id: "GeneratedTemplateId",
    #         generated_template_name: "GeneratedTemplateName",
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "UPDATE_PENDING", "DELETE_PENDING", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "COMPLETE"],
    #         status_reason: "TemplateStatusReason",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         number_of_resources: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGeneratedTemplatesOutput]
    def list_generated_templates(params = {}, options = {})
      request = build_request(:list_generated_templates, params)
      request.send_request(options)
    end

    # <p>Returns summaries of invoked Hooks. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/hooks-userguide/hooks-view-invocations.html">View CloudFormation Hooks
    #         invocations</a> in the <i>CloudFormation Hooks User Guide</i>.</p>
    #          <p>This operation supports the following parameter combinations:</p>
    #          <ul>
    #             <li>
    #                <p>No parameters: Returns all Hook invocation summaries.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TypeArn</code> only: Returns summaries for a specific Hook.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TypeArn</code> and <code>Status</code>: Returns summaries for a specific
    #           Hook filtered by status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TargetId</code> and <code>TargetType</code>: Returns summaries for a specific
    #           Hook invocation target.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListHookResultsInput] params
    # @option params [String] :target_type
    #   <p>Filters results by target type. Currently, only <code>CHANGE_SET</code> and
    #           <code>CLOUD_CONTROL</code> are supported filter options.</p>
    #            <p>Required when <code>TargetId</code> is specified and cannot be used otherwise.</p>
    # @option params [String] :target_id
    #   <p>Filters results by the unique identifier of the target the Hook was invoked
    #         against.</p>
    #            <p>For change sets, this is the change set ARN. When the target is a Cloud Control API operation, this
    #         value must be the <code>HookRequestToken</code> returned by the Cloud Control API request. For more
    #         information on the <code>HookRequestToken</code>, see <a href="https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_ProgressEvent.html">ProgressEvent</a>.</p>
    #            <p>Required when <code>TargetType</code> is specified and cannot be used otherwise.</p>
    # @option params [String] :type_arn
    #   <p>Filters results by the ARN of the Hook. Can be used alone or in combination with
    #           <code>Status</code>.</p>
    # @option params [String] :status
    #   <p>Filters results by the status of Hook invocations. Can only be used in
    #         combination with <code>TypeArn</code>. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HOOK_IN_PROGRESS</code>: The Hook is currently running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_SUCCEEDED</code>: The Hook completed
    #             successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_COMPLETE_FAILED</code>: The Hook completed but failed
    #             validation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOOK_FAILED</code>: The Hook encountered an error during
    #             execution.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_type: "CHANGE_SET" # One of: ["CHANGE_SET", "STACK", "RESOURCE", "CLOUD_CONTROL"],
    #     target_id: "HookResultId",
    #     type_arn: "HookTypeArn",
    #     status: "HOOK_IN_PROGRESS" # One of: ["HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_hook_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_type: "CHANGE_SET" # One of: ["CHANGE_SET", "STACK", "RESOURCE", "CLOUD_CONTROL"],
    #     target_id: "HookResultId",
    #     hook_results: [
    #       {
    #         hook_result_id: "HookInvocationId",
    #         invocation_point: "PRE_PROVISION" # One of: ["PRE_PROVISION"],
    #         failure_mode: "FAIL" # One of: ["FAIL", "WARN"],
    #         type_name: "HookTypeName",
    #         type_version_id: "HookTypeVersionId",
    #         type_configuration_version_id: "HookTypeConfigurationVersionId",
    #         status: "HOOK_IN_PROGRESS" # One of: ["HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"],
    #         hook_status_reason: "HookStatusReason",
    #         invoked_at: Time.now,
    #         target_type: "CHANGE_SET" # One of: ["CHANGE_SET", "STACK", "RESOURCE", "CLOUD_CONTROL"],
    #         target_id: "HookResultId",
    #         type_arn: "HookTypeArn",
    #         hook_execution_target: "HookResultId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHookResultsOutput]
    def list_hook_results(params = {}, options = {})
      request = build_request(:list_hook_results, params)
      request.send_request(options)
    end

    # <p>Lists all stacks that are importing an exported output value. To modify or remove an
    #       exported output value, first use this action to see which stacks are using it. To see the
    #       exported output values in your account, see <a>ListExports</a>.</p>
    #          <p>For more information about importing an exported output value, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/intrinsic-function-reference-importvalue.html">Fn::ImportValue</a> function.</p>
    # @param [Hash, Types::ListImportsInput] params
    # @option params [String] :export_name
    #   <p>The name of the exported output value. CloudFormation returns the stack names that are
    #         importing this value.</p>
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListImports</a> response output) that identifies
    #         the next page of stacks that are importing the specified exported output value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_name: "ExportName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_imports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     imports: ["StackName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListImportsOutput]
    def list_imports(params = {}, options = {})
      request = build_request(:list_imports, params)
      request.send_request(options)
    end

    # <p>Lists the related resources for a list of resources from a resource scan. The response
    #       indicates whether each returned resource is already managed by CloudFormation.</p>
    # @param [Hash, Types::ListResourceScanRelatedResourcesInput] params
    # @option params [String] :resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    # @option params [Array<Types::ScannedResourceIdentifier>] :resources
    #   <p>The list of resources for which you want to get the related resources. Up to 100 resources
    #         can be provided.</p>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    # @option params [Integer] :max_results
    #   <p> If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListResourceScanRelatedResources</code> API
    #         action will return up to 100 results in each response. The maximum value is 100.</p>
    # @example To list resource scan related resources
    #   # This example lists the resources related to the passed in resources
    #   params = {
    #     resource_scan_id: "arn:aws:cloudformation:us-east-1:123456789012:resourceScan/c19304f6-c4f1-4ff8-8e1f-35162e41d7e1",
    #     resources: [
    #       {
    #         resource_type: "AWS::S3::Bucket",
    #         resource_identifier: {
    #           "BucketName" => "jazz-bucket"
    #         }
    #       },
    #       {
    #         resource_type: "AWS::EC2::DHCPOptions",
    #         resource_identifier: {
    #           "DhcpOptionsId" => "random-id123"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resource_scan_related_resources(params, options)
    #   response.to_h #=>
    #   {
    #     related_resources: [
    #       {
    #         resource_type: "AWS::EC2::VPCDHCPOptionsAssociation",
    #         resource_identifier: {
    #           "VpcId" => "vpc-0123456abcdefg",
    #           "DhcpOptionsId" => "dopt-98765edcba"
    #         },
    #         managed_by_stack: false
    #       },
    #       {
    #         resource_type: "AWS::EC2::VPC",
    #         resource_identifier: {
    #           "VpcId" => "vpc-0123456abcdefgabc"
    #         },
    #         managed_by_stack: false
    #       },
    #       {
    #         resource_type: "AWS::EC2::VPCDHCPOptionsAssociation",
    #         resource_identifier: {
    #           "VpcId" => "vpc-123456abcdef",
    #           "DhcpOptionsId" => "dopt-98765edcba"
    #         },
    #         managed_by_stack: false
    #       },
    #       {
    #         resource_type: "AWS::EC2::VPC",
    #         resource_identifier: {
    #           "VpcId" => "vpc-12345678abcd"
    #         },
    #         managed_by_stack: false
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_scan_id: "ResourceScanId", # required
    #     resources: [ # required
    #       {
    #         resource_type: "ResourceType", # required
    #         resource_identifier: { # required
    #           "JazzResourceIdentifierPropertyKey" => "JazzResourceIdentifierPropertyValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_scan_related_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     related_resources: [
    #       {
    #         resource_type: "ResourceType",
    #         resource_identifier: {
    #           "JazzResourceIdentifierPropertyKey" => "JazzResourceIdentifierPropertyValue"
    #         },
    #         managed_by_stack: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceScanRelatedResourcesOutput]
    def list_resource_scan_related_resources(params = {}, options = {})
      request = build_request(:list_resource_scan_related_resources, params)
      request.send_request(options)
    end

    # <p>Lists the resources from a resource scan. The results can be filtered by resource
    #       identifier, resource type prefix, tag key, and tag value. Only resources that match all
    #       specified filters are returned. The response indicates whether each returned resource is
    #       already managed by CloudFormation.</p>
    # @param [Hash, Types::ListResourceScanResourcesInput] params
    # @option params [String] :resource_scan_id
    #   <p>The Amazon Resource Name (ARN) of the resource scan.</p>
    # @option params [String] :resource_identifier
    #   <p>If specified, the returned resources will have the specified resource identifier (or one
    #         of them in the case where the resource has multiple identifiers).</p>
    # @option params [String] :resource_type_prefix
    #   <p>If specified, the returned resources will be of any of the resource types with the
    #         specified prefix.</p>
    # @option params [String] :tag_key
    #   <p>If specified, the returned resources will have a matching tag key.</p>
    # @option params [String] :tag_value
    #   <p>If specified, the returned resources will have a matching tag value.</p>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    # @option params [Integer] :max_results
    #   <p> If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. By default the <code>ListResourceScanResources</code> API action
    #         will return at most 100 results in each response. The maximum value is 100.</p>
    # @example To list the resources in your resource scan
    #   # This example lists the resources in your resource scan
    #   params = {
    #     resource_scan_id: "arn:aws:cloudformation:us-east-1:123456789012:resourceScan/c19304f6-c4f1-4ff8-8e1f-35162e41d7e1"
    #   }
    #   options = {}
    #   response = client.list_resource_scan_resources(params, options)
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         resource_type: "AWS::Amplify::App",
    #         resource_identifier: {
    #           "Arn" => "arn:aws:amplify:us-east-1:123456789012:apps/12345678"
    #         },
    #         managed_by_stack: false
    #       },
    #       {
    #         resource_type: "AWS::ApiGateway::Deployment",
    #         resource_identifier: {
    #           "DeploymentId" => "1234567",
    #           "RestApiId" => "abcdefgh"
    #         },
    #         managed_by_stack: true
    #       }
    #     ],
    #     next_token: "AQICAHjOiFofVZCZ0aEN1VnF1m9jq/xxpTY7MyPexz72BHuAkgETVS8c+PVCFpE6uGVJDxCFAAACbjCCAmoGCSqGSIb3DQEHBqCCAlswggJXAgEAMIICUAYJKoZIhvcNAQcBMB4GCWCGSAFlAwQBLjARBAwJ9QJAYeDzUoBeimECARCAggIh8brcL6H6uMvcZafRTB79hUkdJlOoFavrhYA2U7qdlPUwyvaVqN2DvFMxsl2XC1SaWmr5esMKxg1fLjbOEF32lVQn0Jp8QuoFUvREnqEsR32ZQmiI/Oc9HmwIr/BS3rzljki2Kr8Y0nriS7aFDLUCYsdsRdQ9iL5/iCc6oW7IisCzq1VKcHijlXvuiEipZAinsxEbmYBjmWgT7UYZdrrb6Hq3COEgPzS490ucndtwPjyvuCIMiAfTLMuBgjkzEfp4U97aLwPWaiKw94dMXj/3K67uuH9BjWZO+j6d3nnyZ14FOgI7SQvvVBnxARbTmINttHWjXPrIuE9YuuSWgn6GmuzEEDqkuglOS/OeTHYSPvLPRrFieUiawblljLVoVY9/HDjL/EErSTWiCnytGXIRoMI9Ozp2Yjfm3MBwSDXvMIrscw6QAa3bUA6uJSV2skCBnDoqV8EXd8umh788OgEtDxQ7d/NlUYEhN6AJ0K9TVz/2rZgOlzLCmtvmbIy7loAZCmf/uPNkyu6WuoLWTzQz78SnA8jWPKnxrzhNyPuaIgUH23U3mExhfMRDczitpOo5JM81oHVPECslGoqktLhP55BQqMbJy4w16SZJfr993TXhF5jOZenRN1zDsK3J5cLdJgPK1Ds1Z9DnRKMfXOqoAyme2l94/h0kLIxgAtxOeJFP/g/9hUtt1qGkZeV3Xqw1nkFQnafGIg4fJoWg74Sr7yo="
    #   }
    # @example To list the resources in your resource scan for specific resource type
    #   # This example lists the resources in your resource scan filtering only the resources that start with the passed in prefix
    #   params = {
    #     resource_scan_id: "arn:aws:cloudformation:us-east-1:123456789012:resourceScan/c19304f6-c4f1-4ff8-8e1f-35162e41d7e1",
    #     resource_type_prefix: "AWS::S3"
    #   }
    #   options = {}
    #   response = client.list_resource_scan_resources(params, options)
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         resource_type: "AWS::S3::AccessPoint",
    #         resource_identifier: {
    #           "Name" => "test-access-point"
    #         },
    #         managed_by_stack: true
    #       },
    #       {
    #         resource_type: "AWS::S3::BucketPolicy",
    #         resource_identifier: {
    #           "Bucket" => "a-random-bucket"
    #         },
    #         managed_by_stack: false
    #       }
    #     ],
    #     next_token: "AQICAHjOiFofVZCZ0aEN1VnF1m9jq/xxpTY7MyPexz72BHuAkgETVS8c+PVCFpE6uGVJDxCFAAACbjCCAmoGCSqGSIb3DQEHBqCCAlswggJXAgEAMIICUAYJKoZIhvcNAQcBMB4GCWCGSAFlAwQBLjARBAwJ9QJAYeDzUoBeimECARCAggIh8brcL6H6uMvcZafRTB79hUkdJlOoFavrhYA2U7qdlPUwyvaVqN2DvFMxsl2XC1SaWmr5esMKxg1fLjbOEF32lVQn0Jp8QuoFUvREnqEsR32ZQmiI/Oc9HmwIr/BS3rzljki2Kr8Y0nriS7aFDLUCYsdsRdQ9iL5/iCc6oW7IisCzq1VKcHijlXvuiEipZAinsxEbmYBjmWgT7UYZdrrb6Hq3COEgPzS490ucndtwPjyvuCIMiAfTLMuBgjkzEfp4U97aLwPWaiKw94dMXj/3K67uuH9BjWZO+j6d3nnyZ14FOgI7SQvvVBnxARbTmINttHWjXPrIuE9YuuSWgn6GmuzEEDqkuglOS/OeTHYSPvLPRrFieUiawblljLVoVY9/HDjL/EErSTWiCnytGXIRoMI9Ozp2Yjfm3MBwSDXvMIrscw6QAa3bUA6uJSV2skCBnDoqV8EXd8umh788OgEtDxQ7d/NlUYEhN6AJ0K9TVz/2rZgOlzLCmtvmbIy7loAZCmf/uPNkyu6WuoLWTzQz78SnA8jWPKnxrzhNyPuaIgUH23U3mExhfMRDczitpOo5JM81oHVPECslGoqktLhP55BQqMbJy4w16SZJfr993TXhF5jOZenRN1zDsK3J5cLdJgPK1Ds1Z9DnRKMfXOqoAyme2l94/h0kLIxgAtxOeJFP/g/9hUtt1qGkZeV3Xqw1nkFQnafGIg4fJoWg74Sr7yo="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_scan_id: "ResourceScanId", # required
    #     resource_identifier: "ResourceIdentifier",
    #     resource_type_prefix: "ResourceTypePrefix",
    #     tag_key: "TagKey",
    #     tag_value: "TagValue",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_scan_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         resource_type: "ResourceType",
    #         resource_identifier: {
    #           "JazzResourceIdentifierPropertyKey" => "JazzResourceIdentifierPropertyValue"
    #         },
    #         managed_by_stack: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceScanResourcesOutput]
    def list_resource_scan_resources(params = {}, options = {})
      request = build_request(:list_resource_scan_resources, params)
      request.send_request(options)
    end

    # <p>List the resource scans from newest to oldest. By default it will return up to 10 resource
    #       scans.</p>
    # @param [Hash, Types::ListResourceScansInput] params
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of resource scan results.</p>
    # @option params [Integer] :max_results
    #   <p> If the number of available results exceeds this maximum, the response includes a
    #           <code>NextToken</code> value that you can use for the <code>NextToken</code> parameter to
    #         get the next set of results. The default value is 10. The maximum value is 100.</p>
    # @option params [String] :scan_type_filter
    #   <p>The scan type that you want to get summary information about. The default is
    #           <code>FULL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     scan_type_filter: "FULL" # One of: ["FULL", "PARTIAL"]
    #   }
    #   options = {}
    #   response = client.list_resource_scans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_scan_summaries: [
    #       {
    #         resource_scan_id: "ResourceScanId",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETE", "EXPIRED"],
    #         status_reason: "ResourceScanStatusReason",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         percentage_completed: 1.0,
    #         scan_type: "FULL" # One of: ["FULL", "PARTIAL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceScansOutput]
    def list_resource_scans(params = {}, options = {})
      request = build_request(:list_resource_scans, params)
      request.send_request(options)
    end

    # <p>Returns drift information for resources in a stack instance.</p>
    #          <note>
    #             <p>
    #                <code>ListStackInstanceResourceDrifts</code> returns drift information for the most
    #         recent drift detection operation. If an operation is in progress, it may only return partial
    #         results.</p>
    #          </note>
    # @param [Hash, Types::ListStackInstanceResourceDriftsInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to list drifted resources for.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [Array<String>] :stack_instance_resource_drift_statuses
    #   <p>The resource drift status of the stack instance. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template configuration in
    #             that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #             template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #             template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #            </ul>
    # @option params [String] :stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list resource drifts for.</p>
    # @option params [String] :stack_instance_region
    #   <p>The name of the Region where you want to list resource drifts.</p>
    # @option params [String] :operation_id
    #   <p>The unique ID of the drift operation.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetNameOrId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     stack_instance_resource_drift_statuses: ["IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"]],
    #     stack_instance_account: "Account", # required
    #     stack_instance_region: "Region", # required
    #     operation_id: "ClientRequestToken", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.list_stack_instance_resource_drifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         stack_id: "StackId", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         physical_resource_id: "PhysicalResourceId",
    #         physical_resource_id_context: [
    #           {
    #             key: "Key", # required
    #             value: "Value", # required
    #           }
    #         ],
    #         resource_type: "ResourceType", # required
    #         property_differences: [
    #           {
    #             property_path: "PropertyPath", # required
    #             expected_value: "PropertyValue", # required
    #             actual_value: "PropertyValue", # required
    #             difference_type: "ADD" # One of: ["ADD", "REMOVE", "NOT_EQUAL"], # required
    #           }
    #         ],
    #         stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #         timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackInstanceResourceDriftsOutput]
    def list_stack_instance_resource_drifts(params = {}, options = {})
      request = build_request(:list_stack_instance_resource_drifts, params)
      request.send_request(options)
    end

    # <p>Returns summary information about stack instances that are associated with the specified
    #       StackSet. You can filter for stack instances that are associated with a specific Amazon Web Services account
    #       name or Region, or that have a specific status.</p>
    # @param [Hash, Types::ListStackInstancesInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to list stack instances for.</p>
    # @option params [String] :next_token
    #   <p>If the previous request didn't return all the remaining results, the response's
    #           <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackInstances</code> again and assign that token to the request
    #         object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #         response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [Array<Types::StackInstanceFilter>] :filters
    #   <p>The filter to apply to stack instances</p>
    # @option params [String] :stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list stack instances for.</p>
    # @option params [String] :stack_instance_region
    #   <p>The name of the Region where you want to list stack instances.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "DETAILED_STATUS" # One of: ["DETAILED_STATUS", "LAST_OPERATION_ID", "DRIFT_STATUS"],
    #         values: "StackInstanceFilterValues"
    #       }
    #     ],
    #     stack_instance_account: "Account",
    #     stack_instance_region: "Region",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.list_stack_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         stack_set_id: "StackSetId",
    #         region: "Region",
    #         account: "Account",
    #         stack_id: "StackId",
    #         status: "CURRENT" # One of: ["CURRENT", "OUTDATED", "INOPERABLE"],
    #         status_reason: "Reason",
    #         stack_instance_status: {
    #           detailed_status: "PENDING" # One of: ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE", "SKIPPED_SUSPENDED_ACCOUNT", "FAILED_IMPORT"]
    #         },
    #         organizational_unit_id: "OrganizationalUnitId",
    #         drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"],
    #         last_drift_check_timestamp: Time.now,
    #         last_operation_id: "ClientRequestToken"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackInstancesOutput]
    def list_stack_instances(params = {}, options = {})
      request = build_request(:list_stack_instances, params)
      request.send_request(options)
    end

    # <p>Lists the stack refactor actions that will be taken after calling the <a>ExecuteStackRefactor</a> action.</p>
    # @param [Hash, Types::ListStackRefactorActionsInput] params
    # @option params [String] :stack_refactor_id
    #   <p>The ID associated with the stack refactor created from the <a>CreateStackRefactor</a> action.</p>
    # @option params [String] :next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_refactor_id: "StackRefactorId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stack_refactor_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_refactor_actions: [ # required
    #       {
    #         action: "MOVE" # One of: ["MOVE", "CREATE"],
    #         entity: "RESOURCE" # One of: ["RESOURCE", "STACK"],
    #         physical_resource_id: "PhysicalResourceId",
    #         resource_identifier: "StackRefactorResourceIdentifier",
    #         description: "Description",
    #         detection: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         detection_reason: "DetectionReason",
    #         tag_resources: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         untag_resources: ["TagKey"],
    #         resource_mapping: {
    #           source: { # required
    #             stack_name: "StackName", # required
    #             logical_resource_id: "LogicalResourceId", # required
    #           },
    #           destination: { # required
    #             stack_name: "StackName", # required
    #             logical_resource_id: "LogicalResourceId", # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackRefactorActionsOutput]
    def list_stack_refactor_actions(params = {}, options = {})
      request = build_request(:list_stack_refactor_actions, params)
      request.send_request(options)
    end

    # <p>Lists all account stack refactor operations and their statuses.</p>
    # @param [Hash, Types::ListStackRefactorsInput] params
    # @option params [Array<String>] :execution_status_filter
    #   <p>Execution status to use as a filter. Specify one or more execution status codes to list
    #         only stack refactors with the specified execution status codes.</p>
    # @option params [String] :next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set to
    #         a token. To retrieve the next set of results, call this action again and assign that token to
    #         the request object's <code>NextToken</code> parameter. If the request returns all results,
    #           <code>NextToken</code> is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_status_filter: ["UNAVAILABLE" # One of: ["UNAVAILABLE", "AVAILABLE", "OBSOLETE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stack_refactors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_refactor_summaries: [ # required
    #       {
    #         stack_refactor_id: "StackRefactorId",
    #         description: "Description",
    #         execution_status: "UNAVAILABLE" # One of: ["UNAVAILABLE", "AVAILABLE", "OBSOLETE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"],
    #         execution_status_reason: "ExecutionStatusReason",
    #         status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"],
    #         status_reason: "StackRefactorStatusReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackRefactorsOutput]
    def list_stack_refactors(params = {}, options = {})
      request = build_request(:list_stack_refactors, params)
      request.send_request(options)
    end

    # <p>Returns descriptions of all resources of the specified stack.</p>
    #          <p>For deleted stacks, ListStackResources returns resource information for up to 90 days
    #       after the stack has been deleted.</p>
    # @param [Hash, Types::ListStackResourcesInput] params
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #         interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stack resources that you want to
    #         retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_stack_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_resource_summaries: [
    #       {
    #         logical_resource_id: "LogicalResourceId", # required
    #         physical_resource_id: "PhysicalResourceId",
    #         resource_type: "ResourceType", # required
    #         last_updated_timestamp: Time.now, # required
    #         resource_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "EXPORT_FAILED", "EXPORT_COMPLETE", "EXPORT_IN_PROGRESS", "EXPORT_ROLLBACK_IN_PROGRESS", "EXPORT_ROLLBACK_FAILED", "EXPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"], # required
    #         resource_status_reason: "ResourceStatusReason",
    #         drift_information: {
    #           stack_resource_drift_status: "IN_SYNC" # One of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED", "UNKNOWN"], # required
    #           last_check_timestamp: Time.now
    #         },
    #         module_info: {
    #           type_hierarchy: "TypeHierarchy",
    #           logical_id_hierarchy: "LogicalIdHierarchy"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackResourcesOutput]
    def list_stack_resources(params = {}, options = {})
      request = build_request(:list_stack_resources, params)
      request.send_request(options)
    end

    # <p>Returns summary information about deployment targets for a StackSet.</p>
    # @param [Hash, Types::ListStackSetAutoDeploymentTargetsInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get automatic deployment targets
    #         for.</p>
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of deployment targets that you want to
    #         retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetNameOrId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.list_stack_set_auto_deployment_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         organizational_unit_id: "OrganizationalUnitId",
    #         regions: ["Region"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackSetAutoDeploymentTargetsOutput]
    def list_stack_set_auto_deployment_targets(params = {}, options = {})
      request = build_request(:list_stack_set_auto_deployment_targets, params)
      request.send_request(options)
    end

    # <p>Returns summary information about the results of a StackSet operation.</p>
    #          <note>
    #             <p>This API provides <i>eventually consistent</i> reads meaning it may take
    #         some time but will eventually return the most up-to-date data.</p>
    #          </note>
    # @param [Hash, Types::ListStackSetOperationResultsInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get operation results for.</p>
    # @option params [String] :operation_id
    #   <p>The ID of the StackSet operation.</p>
    # @option params [String] :next_token
    #   <p>If the previous request didn't return all the remaining results, the response object's
    #           <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSetOperationResults</code> again and assign that token to the
    #         request object's <code>NextToken</code> parameter. If there are no remaining results, the
    #         previous response object's <code>NextToken</code> parameter is set to
    #         <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::OperationResultFilter>] :filters
    #   <p>The filter to apply to operation results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"],
    #     filters: [
    #       {
    #         name: "OPERATION_RESULT_STATUS" # One of: ["OPERATION_RESULT_STATUS"],
    #         values: "OperationResultFilterValues"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_stack_set_operation_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         account: "Account",
    #         region: "Region",
    #         status: "PENDING" # One of: ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"],
    #         status_reason: "Reason",
    #         account_gate_result: {
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "SKIPPED"],
    #           status_reason: "AccountGateStatusReason"
    #         },
    #         organizational_unit_id: "OrganizationalUnitId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackSetOperationResultsOutput]
    def list_stack_set_operation_results(params = {}, options = {})
      request = build_request(:list_stack_set_operation_results, params)
      request.send_request(options)
    end

    # <p>Returns summary information about operations performed on a StackSet.</p>
    #          <note>
    #             <p>This API provides <i>eventually consistent</i> reads meaning it may take
    #         some time but will eventually return the most up-to-date data.</p>
    #          </note>
    # @param [Hash, Types::ListStackSetOperationsInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to get operation summaries for.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSetOperations</code> again and assign that token to the request
    #         object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #         response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.list_stack_set_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         operation_id: "ClientRequestToken",
    #         action: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"],
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"],
    #         creation_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #         status_reason: "StackSetOperationStatusReason",
    #         status_details: {
    #           failed_stack_instances_count: 1
    #         },
    #         operation_preferences: {
    #           region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #           region_order: ["Region"],
    #           failure_tolerance_count: 1,
    #           failure_tolerance_percentage: 1,
    #           max_concurrent_count: 1,
    #           max_concurrent_percentage: 1,
    #           concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackSetOperationsOutput]
    def list_stack_set_operations(params = {}, options = {})
      request = build_request(:list_stack_set_operations, params)
      request.send_request(options)
    end

    # <p>Returns summary information about StackSets that are associated with the user.</p>
    #          <note>
    #             <p>This API provides <i>strongly consistent</i> reads meaning it will always
    #         return the most up-to-date data.</p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>[Self-managed permissions] If you set the <code>CallAs</code> parameter to
    #             <code>SELF</code> while signed in to your Amazon Web Services account, <code>ListStackSets</code>
    #           returns all self-managed StackSets in your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>[Service-managed permissions] If you set the <code>CallAs</code> parameter to
    #             <code>SELF</code> while signed in to the organization's management account,
    #             <code>ListStackSets</code> returns all StackSets in the management account.</p>
    #             </li>
    #             <li>
    #                <p>[Service-managed permissions] If you set the <code>CallAs</code> parameter to
    #             <code>DELEGATED_ADMIN</code> while signed in to your member account,
    #             <code>ListStackSets</code> returns all StackSets with service-managed permissions in the
    #             management account.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListStackSetsInput] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call <code>ListStackSets</code> again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :status
    #   <p>The status of the StackSets that you want to get summary information about.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the management account or as a delegated administrator in a member
    #         account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETED"],
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.list_stack_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         stack_set_name: "StackSetName",
    #         stack_set_id: "StackSetId",
    #         description: "Description",
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETED"],
    #         auto_deployment: {
    #           enabled: false,
    #           retain_stacks_on_account_removal: false
    #         },
    #         permission_model: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"],
    #         drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"],
    #         last_drift_check_timestamp: Time.now,
    #         managed_execution: {
    #           active: false
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStackSetsOutput]
    def list_stack_sets(params = {}, options = {})
      request = build_request(:list_stack_sets, params)
      request.send_request(options)
    end

    # <p>Returns the summary information for stacks whose status matches the specified
    #         <code>StackStatusFilter</code>. Summary information for stacks that have been deleted is
    #       kept for 90 days after the stack is deleted. If no <code>StackStatusFilter</code> is
    #       specified, summary information for all stacks is returned (including existing stacks and
    #       stacks that have been deleted).</p>
    # @param [Hash, Types::ListStacksInput] params
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    # @option params [Array<String>] :stack_status_filter
    #   <p>Stack status to use as a filter. Specify one or more stack status codes to list only
    #         stacks with the specified status codes. For a complete list of stack status codes, see the
    #           <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     stack_status_filter: ["CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]]
    #   }
    #   options = {}
    #   response = client.list_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_summaries: [
    #       {
    #         stack_id: "StackId",
    #         stack_name: "StackName", # required
    #         template_description: "TemplateDescription",
    #         creation_time: Time.now, # required
    #         last_updated_time: Time.now,
    #         deletion_time: Time.now,
    #         stack_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"], # required
    #         stack_status_reason: "StackStatusReason",
    #         parent_id: "StackId",
    #         root_id: "StackId",
    #         drift_information: {
    #           stack_drift_status: "DRIFTED" # One of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"], # required
    #           last_check_timestamp: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStacksOutput]
    def list_stacks(params = {}, options = {})
      request = build_request(:list_stacks, params)
      request.send_request(options)
    end

    # <p>Returns a list of registration tokens for the specified extension(s).</p>
    # @param [Hash, Types::ListTypeRegistrationsInput] params
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :registration_status_filter
    #   <p>The current status of the extension registration request.</p>
    #            <p>The default is <code>IN_PROGRESS</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     type_arn: "TypeArn",
    #     registration_status_filter: "COMPLETE" # One of: ["COMPLETE", "IN_PROGRESS", "FAILED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_type_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_token_list: ["RegistrationToken"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTypeRegistrationsOutput]
    def list_type_registrations(params = {}, options = {})
      request = build_request(:list_type_registrations, params)
      request.send_request(options)
    end

    # <p>Returns summary information about the versions of an extension.</p>
    # @param [Hash, Types::ListTypeVersionsInput] params
    # @option params [String] :type
    #   <p>The kind of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension for which you want version summary information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #         information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @option params [String] :deprecated_status
    #   <p>The deprecation status of the extension versions that you want to get summary information
    #         about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension version is registered and can be used in CloudFormation
    #             operations, dependent on its provisioning behavior and visibility scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension version has been deregistered and can no longer
    #             be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>LIVE</code>.</p>
    # @option params [String] :publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     arn: "TypeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     deprecated_status: "LIVE" # One of: ["LIVE", "DEPRECATED"],
    #     publisher_id: "PublisherId"
    #   }
    #   options = {}
    #   response = client.list_type_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_version_summaries: [
    #       {
    #         type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #         type_name: "TypeName",
    #         version_id: "TypeVersionId",
    #         is_default_version: false,
    #         arn: "TypeArn",
    #         time_created: Time.now,
    #         description: "Description",
    #         public_version_number: "PublicVersionNumber"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTypeVersionsOutput]
    def list_type_versions(params = {}, options = {})
      request = build_request(:list_type_versions, params)
      request.send_request(options)
    end

    # <p>Returns summary information about all extensions, including your private resource types,
    #       modules, and Hooks as well as all public extensions from Amazon Web Services and third-party
    #       publishers.</p>
    # @param [Hash, Types::ListTypesInput] params
    # @option params [String] :visibility
    #   <p>The scope at which the extensions are visible and usable in CloudFormation operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: Extensions that are visible and usable within this account and
    #             Region. This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions you have registered in this account and Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions that you have activated in this account and Region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: Extensions that are publicly visible and available to be
    #             activated within any Amazon Web Services account. This includes extensions from Amazon Web Services, in addition to
    #             third-party publishers.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>PRIVATE</code>.</p>
    # @option params [String] :provisioning_type
    #   <p>For resource types, the provisioning behavior of the resource type. CloudFormation determines
    #         the provisioning type during registration, based on the types of handlers in the schema
    #         handler package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to process
    #             updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so the
    #             type can't be updated and must instead be replaced during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include create, read, and
    #             delete handlers, and therefore can't actually be provisioned.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>FULLY_MUTABLE</code>.</p>
    # @option params [String] :deprecated_status
    #   <p>The deprecation status of the extension that you want to get summary information
    #         about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is registered for use in CloudFormation
    #             operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deregistered and can no longer be used
    #             in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    # @option params [String] :type
    #   <p>The type of extension.</p>
    # @option params [Types::TypeFilters] :filters
    #   <p>Filter criteria to use in determining which extensions to return.</p>
    #            <p>Filters must be compatible with <code>Visibility</code> to return valid results. For
    #         example, specifying <code>AWS_TYPES</code> for <code>Category</code> and <code>PRIVATE</code>
    #         for <code>Visibility</code> returns an empty list of types, but specifying <code>PUBLIC</code>
    #         for <code>Visibility</code> returns the desired list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #         available results exceeds this maximum, the response includes a <code>NextToken</code> value
    #         that you can assign to the <code>NextToken</code> request parameter to get the next set of
    #         results.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #         object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #         results, call this action again and assign that token to the request object's
    #           <code>NextToken</code> parameter. If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     provisioning_type: "NON_PROVISIONABLE" # One of: ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"],
    #     deprecated_status: "LIVE" # One of: ["LIVE", "DEPRECATED"],
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     filters: {
    #       category: "REGISTERED" # One of: ["REGISTERED", "ACTIVATED", "THIRD_PARTY", "AWS_TYPES"],
    #       publisher_id: "PublisherId",
    #       type_name_prefix: "TypeNamePrefix"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_summaries: [
    #       {
    #         type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #         type_name: "TypeName",
    #         default_version_id: "TypeVersionId",
    #         type_arn: "TypeArn",
    #         last_updated: Time.now,
    #         description: "Description",
    #         publisher_id: "PublisherId",
    #         original_type_name: "TypeName",
    #         public_version_number: "PublicVersionNumber",
    #         latest_public_version: "PublicVersionNumber",
    #         publisher_identity: "AWS_Marketplace" # One of: ["AWS_Marketplace", "GitHub", "Bitbucket"],
    #         publisher_name: "PublisherName",
    #         is_activated: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTypesOutput]
    def list_types(params = {}, options = {})
      request = build_request(:list_types, params)
      request.send_request(options)
    end

    # <p>Publishes the specified extension to the CloudFormation registry as a public extension in this
    #       Region. Public extensions are available for use by all CloudFormation users. For more information
    #       about publishing extensions, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Publishing extensions to
    #         make them available for public use</a> in the
    #       <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #          <p>To publish an extension, you must be registered as a publisher with CloudFormation. For more
    #       information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html">RegisterPublisher</a>.</p>
    # @param [Hash, Types::PublishTypeInput] params
    # @option params [String] :type
    #   <p>The type of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :public_version_number
    #   <p>The version number to assign to this version of the extension.</p>
    #            <p>Use the following format, and adhere to semantic versioning when assigning a version
    #         number to your extension:</p>
    #            <p>
    #               <code>MAJOR.MINOR.PATCH</code>
    #            </p>
    #            <p>For more information, see <a href="https://semver.org/">Semantic Versioning
    #           2.0.0</a>.</p>
    #            <p>If you don't specify a version number, CloudFormation increments the version number by one
    #         minor version release.</p>
    #            <p>You cannot specify a version number the first time you publish a type. CloudFormation
    #         automatically sets the first version number to be <code>1.0.0</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     arn: "PrivateTypeArn",
    #     type_name: "TypeName",
    #     public_version_number: "PublicVersionNumber"
    #   }
    #   options = {}
    #   response = client.publish_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_type_arn: "TypeArn"
    #   }
    # @return [Types::PublishTypeOutput]
    def publish_type(params = {}, options = {})
      request = build_request(:publish_type, params)
      request.send_request(options)
    end

    # <p>Reports progress of a resource handler to CloudFormation.</p>
    #          <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #         CLI</a>. Don't use this API in your code.</p>
    # @param [Hash, Types::RecordHandlerProgressInput] params
    # @option params [String] :bearer_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :current_operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :status_message
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :error_code
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :resource_model
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @option params [String] :client_request_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
    #           CLI</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bearer_token: "ClientToken", # required
    #     operation_status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"], # required
    #     current_operation_status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"],
    #     status_message: "StatusMessage",
    #     error_code: "NotUpdatable" # One of: ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "NetworkFailure", "InternalFailure", "InvalidTypeConfiguration", "HandlerInternalFailure", "NonCompliant", "Unknown", "UnsupportedTarget"],
    #     resource_model: "ResourceModel",
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.record_handler_progress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RecordHandlerProgressOutput]
    def record_handler_progress(params = {}, options = {})
      request = build_request(:record_handler_progress, params)
      request.send_request(options)
    end

    # <p>Registers your account as a publisher of public extensions in the CloudFormation registry.
    #       Public extensions are available for use by all CloudFormation users. This publisher ID applies to
    #       your account in all Amazon Web Services Regions.</p>
    #          <p>For information about requirements for registering as a public extension publisher, see
    #         <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Prerequisite: Registering your account to publish CloudFormation extensions</a> in the
    #         <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #          <p></p>
    # @param [Hash, Types::RegisterPublisherInput] params
    # @option params [Boolean] :accept_terms_and_conditions
    #   <p>Whether you accept the <a href="https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf">Terms and Conditions</a> for publishing extensions in the CloudFormation registry. You must
    #         accept the terms and conditions in order to register to publish public extensions to the
    #         CloudFormation registry.</p>
    #            <p>The default is <code>false</code>.</p>
    # @option params [String] :connection_arn
    #   <p>If you are using a Bitbucket or GitHub account for identity verification, the Amazon
    #         Resource Name (ARN) for your connection to that account.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Prerequisite: Registering your account to publish CloudFormation extensions</a> in the
    #           <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_terms_and_conditions: false,
    #     connection_arn: "ConnectionArn"
    #   }
    #   options = {}
    #   response = client.register_publisher(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     publisher_id: "PublisherId"
    #   }
    # @return [Types::RegisterPublisherOutput]
    def register_publisher(params = {}, options = {})
      request = build_request(:register_publisher, params)
      request.send_request(options)
    end

    # <p>Registers an extension with the CloudFormation service. Registering an extension makes it
    #       available for use in CloudFormation templates in your Amazon Web Services account, and includes:</p>
    #          <ul>
    #             <li>
    #                <p>Validating the extension schema.</p>
    #             </li>
    #             <li>
    #                <p>Determining which handlers, if any, have been specified for the extension.</p>
    #             </li>
    #             <li>
    #                <p>Making the extension available for use in your account.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how to develop extensions and ready them for registration, see
    #         <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html">Creating resource types using the CloudFormation CLI</a> in the
    #         <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #          <p>You can have a maximum of 50 resource extension versions registered at a time. This
    #       maximum is per account and per Region. Use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html">DeregisterType</a>
    #       to deregister specific extension versions if necessary.</p>
    #          <p>Once you have initiated a registration request using <a>RegisterType</a>, you
    #       can use <a>DescribeTypeRegistration</a> to monitor the progress of the registration
    #       request.</p>
    #          <p>Once you have registered a private extension in your account and Region, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a> to specify configuration properties for the extension. For
    #       more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html">Edit configuration
    #         data for extensions in your account</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::RegisterTypeInput] params
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension being registered.</p>
    #            <p>We suggest that extension names adhere to the following patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>For resource types, <code>company_or_organization::service::type</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For modules, <code>company_or_organization::service::type::MODULE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Hooks, <code>MyCompany::Testing::MyTestHook</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your extension
    #           names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :schema_handler_package
    #   <p>A URL to the S3 bucket that contains the extension project package that contains the
    #         necessary files for the extension you want to register.</p>
    #            <p>For information about generating a schema handler package for the extension you want to
    #         register, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html">submit</a> in
    #         the <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #            <note>
    #               <p>The user registering the extension must be able to access the package in the S3 bucket.
    #           That's, the user needs to have <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a> permissions for the schema
    #           handler package. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html">Actions, Resources, and Condition Keys for
    #             Amazon S3</a> in the <i>Identity and Access Management User Guide</i>.</p>
    #            </note>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>Specifies logging configuration information for an extension.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking
    #         the extension.</p>
    #            <p>For CloudFormation to assume the specified execution role, the role must contain a trust
    #         relationship with the CloudFormation service principal
    #           (<code>resources.cloudformation.amazonaws.com</code>). For more information about adding
    #         trust relationships, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy">Modifying a role trust policy</a> in the <i>Identity and Access Management User
    #         Guide</i>.</p>
    #            <p>If your extension calls Amazon Web Services APIs in any of its handlers, you must create an
    #             <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #             execution role</a>
    #               </i> that includes the necessary permissions to call those
    #         Amazon Web Services APIs, and provision that execution role in your account. When CloudFormation needs to invoke
    #         the resource type handler, CloudFormation assumes this execution role to create a temporary
    #         session token, which it then passes to the resource type handler, thereby supplying your
    #         resource type with the appropriate credentials.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier that acts as an idempotency key for this registration request.
    #         Specifying a client request token prevents CloudFormation from generating more than one version of
    #         an extension from the same registration request, even if the request is submitted multiple
    #         times.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName", # required
    #     schema_handler_package: "S3Url", # required
    #     logging_config: {
    #       log_role_arn: "RoleARN2", # required
    #       log_group_name: "LogGroupName", # required
    #     },
    #     execution_role_arn: "RoleARN2",
    #     client_request_token: "RequestToken"
    #   }
    #   options = {}
    #   response = client.register_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_token: "RegistrationToken"
    #   }
    # @return [Types::RegisterTypeOutput]
    def register_type(params = {}, options = {})
      request = build_request(:register_type, params)
      request.send_request(options)
    end

    # <p>When specifying <code>RollbackStack</code>, you preserve the state of previously
    #       provisioned resources when an operation fails. You can check the status of the stack through
    #       the <a>DescribeStacks</a> operation.</p>
    #          <p>Rolls back the specified stack to the last known stable state from
    #         <code>CREATE_FAILED</code> or <code>UPDATE_FAILED</code> stack statuses.</p>
    #          <p>This operation will delete a stack if it doesn't contain a last known stable state. A last
    #       known stable state includes any status in a <code>*_COMPLETE</code>. This includes the
    #       following stack statuses.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CREATE_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UPDATE_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UPDATE_ROLLBACK_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IMPORT_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IMPORT_ROLLBACK_COMPLETE</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RollbackStackInput] params
    # @option params [String] :stack_name
    #   <p>The name that's associated with the stack.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to rollback the
    #         stack.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>RollbackStack</code> request.</p>
    # @option params [Boolean] :retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #     retain_except_on_create: false
    #   }
    #   options = {}
    #   response = client.rollback_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "StackId"
    #   }
    # @return [Types::RollbackStackOutput]
    def rollback_stack(params = {}, options = {})
      request = build_request(:rollback_stack, params)
      request.send_request(options)
    end

    # <p>Sets a stack policy for a specified stack.</p>
    # @param [Hash, Types::SetStackPolicyInput] params
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID that you want to associate a policy with.</p>
    # @option params [String] :stack_policy_body
    #   <p>Structure that contains the stack policy body. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html">Prevent updates to stack resources</a> in the <i>CloudFormation User Guide</i>.
    #         You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    # @option params [String] :stack_policy_url
    #   <p>Location of a file that contains the stack policy. The URL must point to a policy (maximum
    #         size: 16 KB) located in an Amazon S3 bucket in the same Amazon Web Services Region as the stack. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL"
    #   }
    #   options = {}
    #   response = client.set_stack_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_stack_policy(params = {}, options = {})
      request = build_request(:set_stack_policy, params)
      request.send_request(options)
    end

    # <p>Specifies the configuration data for a registered CloudFormation extension, in the given
    #       account and Region.</p>
    #          <p>To view the current configuration data for an extension, refer to the
    #         <code>ConfigurationSchema</code> element of <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>. For
    #       more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html">Edit configuration
    #         data for extensions in your account</a> in the
    #       <i>CloudFormation User Guide</i>.</p>
    #          <important>
    #             <p>It's strongly recommended that you use dynamic references to restrict sensitive
    #         configuration definitions, such as third-party credentials. For more details on dynamic
    #         references, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/dynamic-references.html">Specify values stored in
    #           other services using dynamic references</a> in the
    #           <i>CloudFormation User Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::SetTypeConfigurationInput] params
    # @option params [String] :type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and Region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a> API operation in this account and Region. For private extensions, this
    #         will be the ARN assigned when you call the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a> API
    #         operation in this account and Region.</p>
    #            <p>Do not include the extension versions suffix at the end of the ARN. You can set the
    #         configuration for an extension, but not for a specific extension version.</p>
    # @option params [String] :configuration
    #   <p>The configuration data for the extension, in this account and Region.</p>
    #            <p>The configuration data must be formatted as JSON, and validate against the schema returned
    #         in the <code>ConfigurationSchema</code> response element of <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>. For
    #         more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration">Defining the account-level configuration of an extension</a> in the
    #           <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    # @option params [String] :configuration_alias
    #   <p>An alias by which to refer to this extension configuration data.</p>
    #            <p>Conditional: Specifying a configuration alias is required when setting a configuration for
    #         a resource type extension.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #           <code>TypeName</code>.</p>
    # @option params [String] :type
    #   <p>The type of extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #           <code>TypeName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_arn: "TypeArn",
    #     configuration: "TypeConfiguration", # required
    #     configuration_alias: "TypeConfigurationAlias",
    #     type_name: "TypeName",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"]
    #   }
    #   options = {}
    #   response = client.set_type_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_arn: "TypeConfigurationArn"
    #   }
    # @return [Types::SetTypeConfigurationOutput]
    def set_type_configuration(params = {}, options = {})
      request = build_request(:set_type_configuration, params)
      request.send_request(options)
    end

    # <p>Specify the default version of an extension. The default version of an extension will be
    #       used in CloudFormation operations.</p>
    # @param [Hash, Types::SetTypeDefaultVersionInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #         information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #           <code>Arn</code>.</p>
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #         the Amazon Resource Name (ARN) assigned to the extension version when it is registered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PrivateTypeArn",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId"
    #   }
    #   options = {}
    #   response = client.set_type_default_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetTypeDefaultVersionOutput]
    def set_type_default_version(params = {}, options = {})
      request = build_request(:set_type_default_version, params)
      request.send_request(options)
    end

    # <p>Sends a signal to the specified resource with a success or failure status. You can use the
    #         <code>SignalResource</code> operation in conjunction with a creation policy or update
    #       policy. CloudFormation doesn't proceed with a stack creation or update until resources receive the
    #       required number of signals or the timeout period is exceeded. The <code>SignalResource</code>
    #       operation is useful in cases where you want to send signals from anywhere other than an Amazon EC2
    #       instance.</p>
    # @param [Hash, Types::SignalResourceInput] params
    # @option params [String] :stack_name
    #   <p>The stack name or unique stack ID that includes the resource that you want to
    #         signal.</p>
    # @option params [String] :logical_resource_id
    #   <p>The logical ID of the resource that you want to signal. The logical ID is the name of the
    #         resource that given in the template.</p>
    # @option params [String] :unique_id
    #   <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the
    #         instance ID that you are signaling as the unique ID. If you send multiple signals to a single
    #         resource (such as signaling a wait condition), each signal requires a different unique
    #         ID.</p>
    # @option params [String] :status
    #   <p>The status of the signal, which is either success or failure. A failure signal causes
    #         CloudFormation to immediately fail the stack creation or update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackNameOrId", # required
    #     logical_resource_id: "LogicalResourceId", # required
    #     unique_id: "ResourceSignalUniqueId", # required
    #     status: "SUCCESS" # One of: ["SUCCESS", "FAILURE"], # required
    #   }
    #   options = {}
    #   response = client.signal_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def signal_resource(params = {}, options = {})
      request = build_request(:signal_resource, params)
      request.send_request(options)
    end

    # <p>Starts a scan of the resources in this account in this Region. You can the status of a
    #       scan using the <code>ListResourceScans</code> API action.</p>
    # @param [Hash, Types::StartResourceScanInput] params
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>StartResourceScan</code> request. Specify this token if
    #         you plan to retry requests so that CloudFormation knows that you're not attempting to start a new
    #         resource scan.</p>
    # @option params [Array<Types::ScanFilter>] :scan_filters
    #   <p>The scan filters to use.</p>
    # @example To start a resource scan
    #   # This example shows how to start a new resource scan
    #   params = {}
    #   options = {}
    #   response = client.start_resource_scan(params, options)
    #   response.to_h #=>
    #   {
    #     resource_scan_id: "arn:aws:cloudformation:us-east-1:123456789012:resourceScan/88f09db1-d211-4cb7-964b-434e2b8469ca"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     scan_filters: [
    #       {
    #         types: ["ResourceTypeFilter"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_resource_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_scan_id: "ResourceScanId"
    #   }
    # @return [Types::StartResourceScanOutput]
    def start_resource_scan(params = {}, options = {})
      request = build_request(:start_resource_scan, params)
      request.send_request(options)
    end

    # <p>Stops an in-progress operation on a StackSet and its associated stack instances. StackSets
    #    will cancel all the unstarted stack instance deployments and wait for those are in-progress to
    #    complete.</p>
    # @param [Hash, Types::StopStackSetOperationInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to stop the operation for.</p>
    # @option params [String] :operation_id
    #   <p>The ID of the stack operation.</p>
    # @option params [String] :call_as
    #   <p>Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid only if the
    #      StackSet uses service-managed permissions.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #      self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #        <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #         <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #         delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     operation_id: "ClientRequestToken", # required
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.stop_stack_set_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopStackSetOperationOutput]
    def stop_stack_set_operation(params = {}, options = {})
      request = build_request(:stop_stack_set_operation, params)
      request.send_request(options)
    end

    # <p>Tests a registered extension to make sure it meets all necessary requirements for being
    #       published in the CloudFormation registry.</p>
    #          <ul>
    #             <li>
    #                <p>For resource types, this includes passing all contracts tests defined for the
    #           type.</p>
    #             </li>
    #             <li>
    #                <p>For modules, this includes determining if the module's model meets all necessary
    #           requirements.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing">Testing your public extension before publishing</a> in the
    #         <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    #          <p>If you don't specify a version, CloudFormation uses the default version of the extension in
    #       your account and Region for testing.</p>
    #          <p>To perform testing, CloudFormation assumes the execution role specified when the type was
    #       registered. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #          <p>Once you've initiated testing on an extension using <code>TestType</code>, you can pass
    #       the returned <code>TypeVersionArn</code> into <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a> to
    #       monitor the current test status and test status description for the extension.</p>
    #          <p>An extension must have a test status of <code>PASSED</code> before it can be published.
    #       For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html">Publishing extensions
    #         to make them available for public use</a> in the
    #       <i>CloudFormation Command Line Interface (CLI) User Guide</i>.</p>
    # @param [Hash, Types::TestTypeInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :type
    #   <p>The type of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :type_name
    #   <p>The name of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #           <code>Type</code>.</p>
    # @option params [String] :version_id
    #   <p>The version of the extension to test.</p>
    #            <p>You can specify the version id with either <code>Arn</code>, or with <code>TypeName</code>
    #         and <code>Type</code>.</p>
    #            <p>If you don't specify a version, CloudFormation uses the default version of the extension in
    #         this account and Region for testing.</p>
    # @option params [String] :log_delivery_bucket
    #   <p>The S3 bucket to which CloudFormation delivers the contract test execution logs.</p>
    #            <p>CloudFormation delivers the logs by the time contract testing has completed and the extension
    #         has been assigned a test type status of <code>PASSED</code> or <code>FAILED</code>.</p>
    #            <p>The user calling <code>TestType</code> must be able to access items in the specified S3
    #         bucket. Specifically, the user needs the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutObject</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions, Resources, and
    #           Condition Keys for Amazon S3</a> in the <i>Identity and Access Management User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "TypeArn",
    #     type: "RESOURCE" # One of: ["RESOURCE", "MODULE", "HOOK"],
    #     type_name: "TypeName",
    #     version_id: "TypeVersionId",
    #     log_delivery_bucket: "S3Bucket"
    #   }
    #   options = {}
    #   response = client.test_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_version_arn: "TypeArn"
    #   }
    # @return [Types::TestTypeOutput]
    def test_type(params = {}, options = {})
      request = build_request(:test_type, params)
      request.send_request(options)
    end

    # <p>Updates a generated template. This can be used to change the name, add and remove
    #       resources, refresh resources, and change the <code>DeletionPolicy</code> and
    #         <code>UpdateReplacePolicy</code> settings. You can check the status of the update to the
    #       generated template using the <code>DescribeGeneratedTemplate</code> API action.</p>
    # @param [Hash, Types::UpdateGeneratedTemplateInput] params
    # @option params [String] :generated_template_name
    #   <p>The name or Amazon Resource Name (ARN) of a generated template.</p>
    # @option params [String] :new_generated_template_name
    #   <p>An optional new name to assign to the generated template.</p>
    # @option params [Array<Types::ResourceDefinition>] :add_resources
    #   <p>An optional list of resources to be added to the generated template.</p>
    # @option params [Array<String>] :remove_resources
    #   <p>A list of logical ids for resources to remove from the generated template.</p>
    # @option params [Boolean] :refresh_all_resources
    #   <p>If <code>true</code>, update the resource properties in the generated template with their
    #         current live state. This feature is useful when the resource properties in your generated a
    #         template does not reflect the live state of the resource properties. This happens when a user
    #         update the resource properties after generating a template.</p>
    # @option params [Types::TemplateConfiguration] :template_configuration
    #   <p>The configuration details of the generated template, including the
    #           <code>DeletionPolicy</code> and <code>UpdateReplacePolicy</code>.</p>
    # @example To add resources to a generated template
    #   # This example adds resources to a generated template
    #   params = {
    #     generated_template_name: "JazzyTemplate",
    #     add_resources: [
    #       {
    #         resource_type: "AWS::S3::Bucket",
    #         resource_identifier: {
    #           "BucketName" => "jazz-bucket"
    #         }
    #       },
    #       {
    #         resource_type: "AWS::EC2::DHCPOptions",
    #         resource_identifier: {
    #           "DhcpOptionsId" => "random-id123"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     generated_template_id: "arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/88f09db1-d211-4cb7-964b-434e2b8469ca"
    #   }
    # @example To update a generated template's name
    #   # This example updates a generated template with a new name.
    #   params = {
    #     generated_template_name: "JazzyTemplate",
    #     new_generated_template_name: "JazzierTemplate"
    #   }
    #   options = {}
    #   response = client.update_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     generated_template_id: "arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/88f09db1-d211-4cb7-964b-434e2b8469ca"
    #   }
    # @example To remove resources from a generated template
    #   # This example removes resources from a generated template
    #   params = {
    #     generated_template_name: "JazzyTemplate",
    #     remove_resources: [
    #       "LogicalResourceId1",
    #       "LogicalResourceId2"
    #     ]
    #   }
    #   options = {}
    #   response = client.update_generated_template(params, options)
    #   response.to_h #=>
    #   {
    #     generated_template_id: "arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/88f09db1-d211-4cb7-964b-434e2b8469ca"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     generated_template_name: "GeneratedTemplateName", # required
    #     new_generated_template_name: "GeneratedTemplateName",
    #     add_resources: [
    #       {
    #         resource_type: "ResourceType", # required
    #         logical_resource_id: "LogicalResourceId",
    #         resource_identifier: { # required
    #           "ResourceIdentifierPropertyKey" => "ResourceIdentifierPropertyValue"
    #         }
    #       }
    #     ],
    #     remove_resources: ["LogicalResourceId"],
    #     refresh_all_resources: false,
    #     template_configuration: {
    #       deletion_policy: "DELETE" # One of: ["DELETE", "RETAIN"],
    #       update_replace_policy: "DELETE" # One of: ["DELETE", "RETAIN"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_generated_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     generated_template_id: "GeneratedTemplateId"
    #   }
    # @return [Types::UpdateGeneratedTemplateOutput]
    def update_generated_template(params = {}, options = {})
      request = build_request(:update_generated_template, params)
      request.send_request(options)
    end

    # <p>Updates a stack as specified in the template. After the call completes successfully, the
    #       stack update starts. You can check the status of the stack through the <a>DescribeStacks</a> action.</p>
    #          <p>To get a copy of the template for an existing stack, you can use the <a>GetTemplate</a> action.</p>
    #          <p>For more information about updating a stack and monitoring the progress of the update, see
    #         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Managing
    #         Amazon Web Services resources as a single unit with CloudFormation stacks</a> in the
    #         <i>CloudFormation User Guide</i>.</p>
    # @param [Hash, Types::UpdateStackInput] params
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID of the stack to update.</p>
    # @option params [String] :template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template that's
    #         located in an Amazon S3 bucket or a Systems Manager document. The location for an Amazon S3 bucket must
    #         start with <code>https://</code>.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    # @option params [Boolean] :use_previous_template
    #   <p>Reuse the existing template that is associated with the stack that you are
    #         updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #           <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    # @option params [String] :stack_policy_during_update_body
    #   <p>Structure that contains the temporary overriding stack policy body. You can specify either
    #         the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code>
    #         parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #         during this update. If you don't specify a stack policy, the current policy that is associated
    #         with the stack will be used.</p>
    # @option params [String] :stack_policy_during_update_url
    #   <p>Location of a file that contains the temporary overriding stack policy. The URL must point
    #         to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static
    #         websites are not supported.</p>
    #            <p>You can specify either the <code>StackPolicyDuringUpdateBody</code> or the
    #           <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #         during this update. If you don't specify a stack policy, the current policy that is associated
    #         with the stack will be used.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #         For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #         type.</p>
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to update the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account, for example, by creating new IAM users. For those stacks, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">
    #                   AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">
    #                   AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html"> AWS::IAM::ManagedPolicy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">
    #                   AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">
    #                   AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this can
    #             include simple actions like find-and-replace operations, all the way to extensive
    #             transformations of entire templates. Because of this, users typically create a change set
    #             from the processed template, so that they can review the changes resulting from the macros
    #             before actually updating the stack. If your stack template contains one or more macros,
    #             and you choose to update a stack directly from the processed template, without first
    #             reviewing the resulting changes in a change set, you must acknowledge this capability.
    #             This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a>
    #             and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to update a stack from a stack template that contains macros
    #               <i>and</i> nested stacks, you must update the stack directly from the
    #             template using this capability.</p>
    #                  <important>
    #                     <p>You should only update stacks directly from a stack template that contains macros if
    #               you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for processing stack
    #               templates. Be aware that the Lambda function owner can update the function operation
    #               without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with for this update stack
    #         action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #           <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource that you're updating, the stack
    #         update fails. By default, CloudFormation grants permissions to all resource types. IAM uses this
    #         parameter for CloudFormation-specific condition keys in IAM policies. For more information, see
    #           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html">Control access with
    #           Identity and Access Management</a>.</p>
    #            <note>
    #               <p>Only one of the <code>Capabilities</code> and <code>ResourceType</code> parameters can
    #           be specified.</p>
    #            </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that CloudFormation assumes to update the
    #         stack. CloudFormation uses the role's credentials to make calls on your behalf. CloudFormation always
    #         uses this role for all future operations on the stack. Provided that users have permission to
    #         operate on the stack, CloudFormation uses this role even if the users don't have permission to
    #         pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously associated with
    #         the stack. If no role is available, CloudFormation uses a temporary session that is generated from
    #         your user credentials.</p>
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and updating
    #         operations, and for the specified monitoring period afterwards.</p>
    # @option params [String] :stack_policy_body
    #   <p>Structure that contains a new stack policy body. You can specify either the
    #           <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #         both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #         you created during a stack update. If you don't specify a stack policy, the current policy
    #         that is associated with the stack is unchanged.</p>
    # @option params [String] :stack_policy_url
    #   <p>Location of a file that contains the updated stack policy. The URL must point to a policy
    #         (max size: 16KB) located in an S3 bucket in the same Region as the stack. The location for an
    #         Amazon S3 bucket must start with <code>https://</code>. URLs from S3 static websites are not
    #         supported.</p>
    #            <p>You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code>
    #         parameter, but not both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #         you created during a stack update. If you don't specify a stack policy, the current policy
    #         that is associated with the stack is unchanged.</p>
    # @option params [Array<String>] :notification_ar_ns
    #   <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that CloudFormation
    #         associates with the stack. Specify an empty list to remove all notification topics.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these tags to
    #         supported resources in the stack. You can specify a maximum number of 50 tags.</p>
    #            <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's tags. If you
    #         specify an empty value, CloudFormation removes all associated tags.</p>
    # @option params [Boolean] :disable_rollback
    #   <p>Preserve the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>False</code>
    #            </p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you
    #         plan to retry requests so that CloudFormation knows that you're not attempting to update a stack
    #         with the same name. You might retry <code>UpdateStack</code> requests to ensure that
    #         CloudFormation successfully received them.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request
    #         token, which you can use to track operations. For example, if you execute a
    #           <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #           <code>StackEvents</code> generated by that operation will have
    #           <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab. Stack
    #         operations that are initiated from the console use the token format
    #           <i>Console-StackOperation-ID</i>, which helps you easily identify the stack
    #         operation . For example, if you create a stack using the console, each stack event would be
    #         assigned the same token in the following format:
    #           <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    # @option params [Boolean] :retain_except_on_create
    #   <p>When set to <code>true</code>, newly created resources are deleted when the operation
    #         rolls back. This includes newly created resources marked with a deletion policy of
    #           <code>Retain</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_name: "StackName", # required
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_ar_ns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     disable_rollback: false,
    #     client_request_token: "ClientRequestToken",
    #     retain_except_on_create: false
    #   }
    #   options = {}
    #   response = client.update_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "StackId"
    #   }
    # @return [Types::UpdateStackOutput]
    def update_stack(params = {}, options = {})
      request = build_request(:update_stack, params)
      request.send_request(options)
    end

    # <p>Updates the parameter values for stack instances for the specified accounts, within the
    #       specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and
    #       Region.</p>
    #          <p>You can only update stack instances in Amazon Web Services Regions and accounts where they already
    #       exist; to create additional stack instances, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html">CreateStackInstances</a>.</p>
    #          <p>During StackSet updates, any parameters overridden for a stack instance aren't updated,
    #       but retain their overridden value.</p>
    #          <p>You can only update the parameter <i>values</i> that are specified in the
    #       StackSet. To add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #       to update the StackSet template. If you add a parameter to a template, before you can override
    #       the parameter value specified in the StackSet you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #       to update all stack instances with the updated template and parameter value specified in the
    #       StackSet. Once a stack instance has been updated with the new parameter, you can then override
    #       the parameter value using <code>UpdateStackInstances</code>.</p>
    #          <note>
    #             <p>The maximum number of organizational unit (OUs) supported by a
    #           <code>UpdateStackInstances</code> operation is 50.</p>
    #             <p>If you need more than 50, consider the following options:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <i>Batch processing:</i> If you don't want to expose your OU
    #             hierarchy, split up the operations into multiple calls with less than 50 OUs
    #             each.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <i>Parent OU strategy:</i> If you don't mind exposing the OU
    #             hierarchy, target a parent OU that contains all desired child OUs.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateStackInstancesInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet associated with the stack instances.</p>
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The account IDs of one or more Amazon Web Services accounts in which you want
    #         to update parameter values for stack instances. The overridden parameter values will be
    #         applied to all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which you want to
    #         update parameter values for stack instances. If your update targets OUs, the overridden
    #         parameter values only apply to the accounts that are currently in the target OUs and their
    #         child OUs. Accounts added to the target OUs and their child OUs in the future won't use the
    #         overridden values.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #         both.</p>
    # @option params [Array<String>] :regions
    #   <p>The names of one or more Amazon Web Services Regions in which you want to update parameter values for
    #         stack instances. The overridden parameter values will be applied to all stack instances in the
    #         specified accounts and Amazon Web Services Regions.</p>
    # @option params [Array<Types::Parameter>] :parameter_overrides
    #   <p>A list of input parameters whose values you want to update for the specified stack
    #         instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #         accounts and Amazon Web Services Regions. When specifying parameters and their values, be aware of how
    #         CloudFormation sets parameter values during stack instance update operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify its
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter and
    #             specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify both a
    #             value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the StackSet, specify a
    #             parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property at
    #             all.</p>
    #               </li>
    #            </ul>
    #            <p>During StackSet updates, any parameter values overridden for a stack instance aren't
    #         updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in the
    #         StackSet. To add or delete a parameter itself, use <code>UpdateStackSet</code> to update the
    #         StackSet template. If you add a parameter to a template, before you can override the parameter
    #         value specified in the StackSet you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a>
    #         to update all stack instances with the updated template and parameter value specified in the
    #         StackSet. Once a stack instance has been updated with the new parameter, you can then override
    #         the parameter value using <code>UpdateStackInstances</code>.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    # @option params [String] :operation_id
    #   <p>The unique identifier for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #         automatically.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetNameOrId", # required
    #     accounts: ["Account"],
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE" # One of: ["NONE", "INTERSECTION", "DIFFERENCE", "UNION"]
    #     },
    #     regions: ["Region"], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     operation_id: "ClientRequestToken",
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"]
    #   }
    #   options = {}
    #   response = client.update_stack_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::UpdateStackInstancesOutput]
    def update_stack_instances(params = {}, options = {})
      request = build_request(:update_stack_instances, params)
      request.send_request(options)
    end

    # <p>Updates the StackSet and associated stack instances in the specified accounts and
    #       Amazon Web Services Regions.</p>
    #          <p>Even if the StackSet operation created by updating the StackSet fails (completely or
    #       partially, below or above a specified failure tolerance), the StackSet is updated with your
    #       changes. Subsequent <a>CreateStackInstances</a> calls on the specified StackSet use
    #       the updated StackSet.</p>
    #          <note>
    #             <p>The maximum number of organizational unit (OUs) supported by a
    #           <code>UpdateStackSet</code> operation is 50.</p>
    #             <p>If you need more than 50, consider the following options:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <i>Batch processing:</i> If you don't want to expose your OU
    #             hierarchy, split up the operations into multiple calls with less than 50 OUs
    #             each.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <i>Parent OU strategy:</i> If you don't mind exposing the OU
    #             hierarchy, target a parent OU that contains all desired child OUs.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateStackSetInput] params
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the StackSet that you want to update.</p>
    # @option params [String] :description
    #   <p>A brief description of updates that you are making.</p>
    # @option params [String] :template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #         maximum length of 51,200 bytes.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template
    #         (maximum size: 1 MB) that is located in an Amazon S3 bucket or a Systems Manager document. The
    #         location for an Amazon S3 bucket must start with <code>https://</code>. S3 static website URLs are
    #         not supported.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    # @option params [Boolean] :use_previous_template
    #   <p>Use the existing template that's associated with the StackSet that you're updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #           <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #           <code>UsePreviousTemplate</code> to true.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>A list of input parameters for the StackSet template.</p>
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #         capabilities in order for CloudFormation to update the StackSet and its associated stack
    #         instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #             Amazon Web Services account, for example, by creating new IAM users. For those stacks sets, you must
    #             explicitly acknowledge this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #               <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code> capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you <i>must</i>
    #                 specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                   <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #             permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html">AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html">AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html">AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html">AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html">AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your StackSet template references one or more
    #             macros, you must update the StackSet directly from the processed template, without first
    #             reviewing the resulting changes in a change set. To update the StackSet directly, you must
    #             acknowledge this capability. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Perform custom processing
    #               on CloudFormation templates with template macros</a>.</p>
    #                  <important>
    #                     <p>StackSets with service-managed permissions do not currently support the use of
    #               macros in templates. (This includes the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html">AWS::Include</a> and <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.) Even if
    #               you specify this capability for a StackSet with service-managed permissions, if you
    #               reference a macro in your template the StackSet operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pairs to associate with this StackSet and the stacks created from it.
    #         CloudFormation also propagates these tags to supported resources that are created in the stacks.
    #         You can specify a maximum number of 50 tags.</p>
    #            <p>If you specify tags for this parameter, those tags replace any list of tags that are
    #         currently associated with this StackSet. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #             tags.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <i>any</i> tags using this parameter, you must specify
    #               <i>all</i> the tags that you want associated with this StackSet, even tags
    #             you've specified before (for example, when creating the StackSet or during a previous
    #             update of the StackSet.). Any tags that you don't include in the updated list of tags are
    #             removed from the StackSet, and therefore from the stacks and resources as well.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify an empty value, CloudFormation removes all currently associated
    #             tags.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, CloudFormation
    #         checks to see if you have the required IAM permission to tag resources. If you omit tags
    #         that are currently associated with the StackSet from the list of tags you specify, CloudFormation
    #         assumes that you want to remove those tags from the StackSet, and checks to see if you have
    #         permission to untag resources. If you don't have the necessary permission(s), the entire
    #           <code>UpdateStackSet</code> action fails with an <code>access denied</code> error, and the
    #         StackSet is not updated.</p>
    # @option params [Types::StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this StackSet operation.</p>
    # @option params [String] :administration_role_arn
    #   <p>[Self-managed permissions] The Amazon Resource Name (ARN) of the IAM role to use to
    #         update this StackSet.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles to control
    #         which users or groups can manage specific StackSets within the same administrator account. For
    #         more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #           self-managed permissions</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specified a customized administrator role when you created the StackSet, you must
    #         specify a customized administrator role, even if it is the same customized administrator role
    #         used with this StackSet previously.</p>
    # @option params [String] :execution_role_name
    #   <p>[Self-managed permissions] The name of the IAM execution role to use to update the stack
    #         set. If you do not specify an execution role, CloudFormation uses the
    #           <code>AWSCloudFormationStackSetExecutionRole</code> role for the StackSet operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to control which
    #         stack resources users and groups can include in their StackSets.</p>
    #            <p>If you specify a customized execution role, CloudFormation uses that role to update the stack.
    #         If you do not specify a customized execution role, CloudFormation performs the update using the
    #         role previously associated with the StackSet, so long as you have permissions to perform
    #         operations on the StackSet.</p>
    # @option params [Types::DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to update
    #         associated stack instances.</p>
    #            <p>To update all the stack instances associated with this StackSet, do not specify
    #           <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if
    #           <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the
    #           <code>Parameters</code>, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Amazon Web Services Regions. If the StackSet update doesn't include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Regions, while leaving
    #         all other stack instances with their existing stack instance status.</p>
    # @option params [String] :permission_model
    #   <p>Describes how the IAM roles required for StackSet operations are created. You cannot
    #         modify <code>PermissionModel</code> if there are stack instances associated with your stack
    #         set.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #             execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #               self-managed permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #             IAM roles required to deploy to accounts managed by Organizations. For more
    #             information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html">Activate trusted access for StackSets with Organizations</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AutoDeployment] :auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
    #         For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html">Enable or disable automatic deployments for StackSets in Organizations</a>
    #         in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specify <code>AutoDeployment</code>, don't specify <code>DeploymentTargets</code>
    #         or <code>Regions</code>.</p>
    # @option params [String] :operation_id
    #   <p>The unique ID for this StackSet operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation
    #         performs the StackSet operation only once, even if you retry the request multiple times. You
    #         might retry StackSet operation requests to ensure that CloudFormation successfully received
    #         them.</p>
    #            <p>If you don't specify an operation ID, CloudFormation generates one
    #         automatically.</p>
    #            <p>Repeating this StackSet operation with a new operation ID retries all stack instances
    #         whose status is <code>OUTDATED</code>.</p>
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The accounts in which to update associated stack instances. If
    #         you specify accounts, you must also specify the Amazon Web Services Regions in which to update StackSet
    #         instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this StackSet,
    #         don't specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if the
    #           <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #           <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Amazon Web Services Regions. If the StackSet update does not include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Amazon Web Services Regions, while
    #         leaving all other stack instances with their existing stack instance status.</p>
    # @option params [Array<String>] :regions
    #   <p>The Amazon Web Services Regions in which to update associated stack instances. If you specify Regions,
    #         you must also specify accounts in which to update StackSet instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this StackSet, do
    #         not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the StackSet update includes changes to the template (that is, if the
    #           <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #           <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #           <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and
    #         Regions. If the StackSet update does not include changes to the template or parameters,
    #         CloudFormation updates the stack instances in the specified accounts and Regions, while leaving
    #         all other stack instances with their existing stack instance status.</p>
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account administrator
    #         in the organization's management account or as a delegated administrator in a
    #         member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for StackSets with
    #         self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #             <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #               <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a
    #               delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ManagedExecution] :managed_execution
    #   <p>Describes whether CloudFormation performs non-conflicting operations concurrently and queues
    #         conflicting operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stack_set_name: "StackSetName", # required
    #     description: "Description",
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue"
    #       }
    #     ],
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: "SEQUENTIAL" # One of: ["SEQUENTIAL", "PARALLEL"],
    #       region_order: ["Region"],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1,
    #       concurrency_mode: "STRICT_FAILURE_TOLERANCE" # One of: ["STRICT_FAILURE_TOLERANCE", "SOFT_FAILURE_TOLERANCE"]
    #     },
    #     administration_role_arn: "RoleARN",
    #     execution_role_name: "ExecutionRoleName",
    #     deployment_targets: {
    #       accounts: ["Account"],
    #       accounts_url: "AccountsUrl",
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_filter_type: "NONE" # One of: ["NONE", "INTERSECTION", "DIFFERENCE", "UNION"]
    #     },
    #     permission_model: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"],
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false
    #     },
    #     operation_id: "ClientRequestToken",
    #     accounts: ["Account"],
    #     regions: ["Region"],
    #     call_as: "SELF" # One of: ["SELF", "DELEGATED_ADMIN"],
    #     managed_execution: {
    #       active: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_stack_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "ClientRequestToken"
    #   }
    # @return [Types::UpdateStackSetOutput]
    def update_stack_set(params = {}, options = {})
      request = build_request(:update_stack_set, params)
      request.send_request(options)
    end

    # <p>Updates termination protection for the specified stack. If a user attempts to delete a
    #       stack with termination protection enabled, the operation fails and the stack remains
    #       unchanged. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protect a CloudFormation
    #         stack from being deleted</a> in the <i>CloudFormation User Guide</i>.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #       termination protection is set on the root stack and can't be changed directly on the nested
    #       stack.</p>
    # @param [Hash, Types::UpdateTerminationProtectionInput] params
    # @option params [Boolean] :enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack.</p>
    # @option params [String] :stack_name
    #   <p>The name or unique ID of the stack for which you want to set termination
    #         protection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enable_termination_protection: false, # required
    #     stack_name: "StackNameOrId", # required
    #   }
    #   options = {}
    #   response = client.update_termination_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_id: "StackId"
    #   }
    # @return [Types::UpdateTerminationProtectionOutput]
    def update_termination_protection(params = {}, options = {})
      request = build_request(:update_termination_protection, params)
      request.send_request(options)
    end

    # <p>Validates a specified template. CloudFormation first checks if the template is valid JSON. If
    #       it isn't, CloudFormation checks if the template is valid YAML. If both these checks fail,
    #       CloudFormation returns a template validation error.</p>
    # @param [Hash, Types::ValidateTemplateInput] params
    # @option params [String] :template_body
    #   <p>Structure that contains the template body with a minimum length of 1 byte and a maximum
    #         length of 51,200 bytes.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    # @option params [String] :template_url
    #   <p>The URL of a file that contains the template body. The URL must point to a template (max
    #         size: 1 MB) that is located in an Amazon S3 bucket or a Systems Manager document. The location for
    #         an Amazon S3 bucket must start with <code>https://</code>.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both
    #         are passed, only <code>TemplateBody</code> is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL"
    #   }
    #   options = {}
    #   response = client.validate_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         default_value: "ParameterValue",
    #         no_echo: false,
    #         description: "Description"
    #       }
    #     ],
    #     description: "Description",
    #     capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]],
    #     capabilities_reason: "CapabilitiesReason",
    #     declared_transforms: ["TransformName"]
    #   }
    # @return [Types::ValidateTemplateOutput]
    def validate_template(params = {}, options = {})
      request = build_request(:validate_template, params)
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
      context[:gem_name] = 'aws-sdk-cloudformation'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        change_set_create_complete: Waiters::ChangeSetCreateComplete,
        stack_create_complete: Waiters::StackCreateComplete,
        stack_delete_complete: Waiters::StackDeleteComplete,
        stack_exists: Waiters::StackExists,
        stack_import_complete: Waiters::StackImportComplete,
        stack_refactor_create_complete: Waiters::StackRefactorCreateComplete,
        stack_refactor_execute_complete: Waiters::StackRefactorExecuteComplete,
        stack_rollback_complete: Waiters::StackRollbackComplete,
        stack_update_complete: Waiters::StackUpdateComplete,
        type_registration_complete: Waiters::TypeRegistrationComplete
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
