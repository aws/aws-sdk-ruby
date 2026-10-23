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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:migrationhuborchestrator)

module Aws::MigrationHubOrchestrator
  # An API client for Aws::MigrationHubOrchestrator.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMigrationHubOrchestrator
    @identifier = :migrationhuborchestrator

    add_plugin(::Aws::MigrationHubOrchestrator::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MigrationHubOrchestrator::EndpointProvider)
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

    # <p>Creates a migration workflow template.</p>
    # @param [Hash, Types::CreateTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the migration workflow template.</p>
    # @option params [String] :template_description
    #   <p>A description of the migration workflow template.</p>
    # @option params [Types::TemplateSource] :template_source
    #   <p>The source of the migration workflow template.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. For more information, see <a href="https://smithy.io/2.0/spec/behavior-traits.html#idempotencytoken-trait">Idempotency</a> in the Smithy documentation.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the migration workflow template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "String", # required
    #     template_description: "String",
    #     template_source: { # required
    #       # One of:
    #       workflow_id: "MigrationWorkflowId"
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "String",
    #     template_arn: "String",
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    # @return [Types::CreateTemplateResponse]
    def create_template(params = {}, options = {})
      request = build_request(:create_template, params)
      request.send_request(options)
    end

    # <p>Create a workflow to orchestrate your migrations.</p>
    # @param [Hash, Types::CreateWorkflowInput] params
    # @option params [String] :name
    #   <p>The name of the migration workflow.</p>
    # @option params [String] :description
    #   <p>The description of the migration workflow.</p>
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @option params [String] :application_configuration_id
    #   <p>The configuration ID of the application configured in Application Discovery Service.</p>
    # @option params [Hash<String, Types::StepInput>] :input_parameters
    #   <p>The input parameters required to create a migration workflow.</p>
    # @option params [Array<String>] :step_targets
    #   <p>The servers on which a step will be run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add on a migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     template_id: "String", # required
    #     application_configuration_id: "String",
    #     input_parameters: { # required
    #       "StepInputParametersKey" => {
    #         # One of:
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue"
    #         }
    #       }
    #     },
    #     step_targets: ["StringListMember"],
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     name: "String",
    #     description: "String",
    #     template_id: "String",
    #     ads_application_configuration_id: "String",
    #     workflow_inputs: {
    #       "StepInputParametersKey" => {
    #         # One of:
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue"
    #         }
    #       }
    #     },
    #     step_targets: ["StringListMember"],
    #     status: "MigrationWorkflowStatusEnum",
    #     creation_time: Time.now,
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    # @return [Types::CreateWorkflowOutput]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Create a step in the migration workflow.</p>
    # @param [Hash, Types::CreateWorkflowStepInput] params
    # @option params [String] :name
    #   <p>The name of the step.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    # @option params [String] :description
    #   <p>The description of the step.</p>
    # @option params [Types::WorkflowStepAutomationConfiguration] :workflow_step_automation_configuration
    #   <p>The custom script to run tests on source or target environments.</p>
    # @option params [Array<String>] :step_target
    #   <p>The servers on which a step will be run.</p>
    # @option params [Array<Types::WorkflowStepOutput>] :outputs
    #   <p>The key value pairs added for the expected output.</p>
    # @option params [Array<String>] :previous
    #   <p>The previous step.</p>
    # @option params [Array<String>] :next
    #   <p>The next step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MigrationWorkflowName", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_action_type: "StepActionType", # required
    #     description: "MigrationWorkflowDescription",
    #     workflow_step_automation_configuration: {
    #       script_location_s3_bucket: "S3Bucket",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key"
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String"
    #       },
    #       run_environment: "RunEnvironment",
    #       target_type: "TargetType"
    #     },
    #     step_target: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "WorkflowStepOutputName",
    #         data_type: "DataType",
    #         required: false,
    #         value: {
    #           # One of:
    #           integer_value: 1,
    #           string_value: "MaxStringValue",
    #           list_of_string_value: ["MaxStringValue"]
    #         }
    #       }
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"]
    #   }
    #   options = {}
    #   response = client.create_workflow_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     step_group_id: "String",
    #     workflow_id: "String",
    #     name: "String"
    #   }
    # @return [Types::CreateWorkflowStepOutput]
    def create_workflow_step(params = {}, options = {})
      request = build_request(:create_workflow_step, params)
      request.send_request(options)
    end

    # <p>Create a step group in a migration workflow.</p>
    # @param [Hash, Types::CreateWorkflowStepGroupInput] params
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow that will contain the step group.</p>
    # @option params [String] :name
    #   <p>The name of the step group.</p>
    # @option params [String] :description
    #   <p>The description of the step group.</p>
    # @option params [Array<String>] :next
    #   <p>The next step group.</p>
    # @option params [Array<String>] :previous
    #   <p>The previous step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "MigrationWorkflowId", # required
    #     name: "StepGroupName", # required
    #     description: "StepGroupDescription",
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"]
    #   }
    #   options = {}
    #   response = client.create_workflow_step_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "String",
    #     name: "String",
    #     id: "String",
    #     description: "String",
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"],
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateWorkflowStepGroupOutput]
    def create_workflow_step_group(params = {}, options = {})
      request = build_request(:create_workflow_step_group, params)
      request.send_request(options)
    end

    # <p>Deletes a migration workflow template.</p>
    # @param [Hash, Types::DeleteTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the request to delete a migration workflow template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TemplateId", # required
    #   }
    #   options = {}
    #   response = client.delete_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTemplateResponse]
    def delete_template(params = {}, options = {})
      request = build_request(:delete_template, params)
      request.send_request(options)
    end

    # <p>Delete a migration workflow. You must pause a running workflow in Migration Hub Orchestrator console to
    #             delete it.</p>
    # @param [Hash, Types::DeleteWorkflowInput] params
    # @option params [String] :id
    #   <p>The ID of the migration workflow you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     status: "MigrationWorkflowStatusEnum"
    #   }
    # @return [Types::DeleteWorkflowOutput]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>Delete a step in a migration workflow. Pause the workflow to delete a running
    #             step.</p>
    # @param [Hash, Types::DeleteWorkflowStepInput] params
    # @option params [String] :id
    #   <p>The ID of the step you want to delete.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group that contains the step you want to delete.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "StepId", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkflowStepOutput]
    def delete_workflow_step(params = {}, options = {})
      request = build_request(:delete_workflow_step, params)
      request.send_request(options)
    end

    # <p>Delete a step group in a migration workflow.</p>
    # @param [Hash, Types::DeleteWorkflowStepGroupInput] params
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :id
    #   <p>The ID of the step group you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "MigrationWorkflowId", # required
    #     id: "StepGroupId", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow_step_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkflowStepGroupOutput]
    def delete_workflow_step_group(params = {}, options = {})
      request = build_request(:delete_workflow_step_group, params)
      request.send_request(options)
    end

    # <p>Get the template you want to use for creating a migration workflow.</p>
    # @param [Hash, Types::GetTemplateInput] params
    # @option params [String] :id
    #   <p>The ID of the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TemplateId", # required
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     template_arn: "String",
    #     name: "String",
    #     description: "String",
    #     inputs: [
    #       {
    #         input_name: "TemplateInputName",
    #         data_type: "DataType",
    #         required: false
    #       }
    #     ],
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     creation_time: Time.now,
    #     owner: "String",
    #     status: "TemplateStatus",
    #     status_message: "String",
    #     template_class: "String",
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    # @return [Types::GetTemplateOutput]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Get a specific step in a template.</p>
    # @param [Hash, Types::GetTemplateStepInput] params
    # @option params [String] :id
    #   <p>The ID of the step.</p>
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "StepId", # required
    #     template_id: "TemplateId", # required
    #     step_group_id: "StepGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_template_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "StepId",
    #     step_group_id: "StepGroupId",
    #     template_id: "TemplateId",
    #     name: "String",
    #     description: "String",
    #     step_action_type: "StepActionType",
    #     creation_time: "String",
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "String",
    #         data_type: "DataType",
    #         required: false
    #       }
    #     ],
    #     step_automation_configuration: {
    #       script_location_s3_bucket: "String",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key"
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String"
    #       },
    #       run_environment: "RunEnvironment",
    #       target_type: "TargetType"
    #     }
    #   }
    # @return [Types::GetTemplateStepOutput]
    def get_template_step(params = {}, options = {})
      request = build_request(:get_template_step, params)
      request.send_request(options)
    end

    # <p>Get a step group in a template.</p>
    # @param [Hash, Types::GetTemplateStepGroupInput] params
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @option params [String] :id
    #   <p>The ID of the step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_id: "TemplateId", # required
    #     id: "StepGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_template_step_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "String",
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     status: "StepGroupStatus",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"]
    #   }
    # @return [Types::GetTemplateStepGroupOutput]
    def get_template_step_group(params = {}, options = {})
      request = build_request(:get_template_step_group, params)
      request.send_request(options)
    end

    # <p>Get migration workflow.</p>
    # @param [Hash, Types::GetWorkflowInput] params
    # @option params [String] :id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     name: "String",
    #     description: "String",
    #     template_id: "String",
    #     ads_application_configuration_id: "String",
    #     ads_application_name: "String",
    #     status: "MigrationWorkflowStatusEnum",
    #     status_message: "String",
    #     creation_time: Time.now,
    #     last_start_time: Time.now,
    #     last_stop_time: Time.now,
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     total_steps: 1,
    #     completed_steps: 1,
    #     workflow_inputs: {
    #       "StepInputParametersKey" => {
    #         # One of:
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue"
    #         }
    #       }
    #     },
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     },
    #     workflow_bucket: "String"
    #   }
    # @return [Types::GetWorkflowOutput]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Get a step in the migration workflow.</p>
    # @param [Hash, Types::GetWorkflowStepInput] params
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @option params [String] :id
    #   <p>The ID of the step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #     id: "StepId", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String",
    #     step_group_id: "String",
    #     workflow_id: "String",
    #     step_id: "String",
    #     description: "String",
    #     step_action_type: "StepActionType",
    #     owner: "Owner",
    #     workflow_step_automation_configuration: {
    #       script_location_s3_bucket: "S3Bucket",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key"
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String"
    #       },
    #       run_environment: "RunEnvironment",
    #       target_type: "TargetType"
    #     },
    #     step_target: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "WorkflowStepOutputName",
    #         data_type: "DataType",
    #         required: false,
    #         value: {
    #           # One of:
    #           integer_value: 1,
    #           string_value: "MaxStringValue",
    #           list_of_string_value: ["MaxStringValue"]
    #         }
    #       }
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"],
    #     status: "StepStatus",
    #     status_message: "String",
    #     script_output_location: "String",
    #     creation_time: Time.now,
    #     last_start_time: Time.now,
    #     end_time: Time.now,
    #     no_of_srv_completed: 1,
    #     no_of_srv_failed: 1,
    #     total_no_of_srv: 1
    #   }
    # @return [Types::GetWorkflowStepOutput]
    def get_workflow_step(params = {}, options = {})
      request = build_request(:get_workflow_step, params)
      request.send_request(options)
    end

    # <p>Get the step group of a migration workflow.</p>
    # @param [Hash, Types::GetWorkflowStepGroupInput] params
    # @option params [String] :id
    #   <p>The ID of the step group.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_step_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "StepGroupId",
    #     workflow_id: "String",
    #     name: "String",
    #     description: "String",
    #     status: "StepGroupStatus",
    #     owner: "Owner",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     end_time: Time.now,
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"]
    #   }
    # @return [Types::GetWorkflowStepGroupOutput]
    def get_workflow_step_group(params = {}, options = {})
      request = build_request(:get_workflow_step_group, params)
      request.send_request(options)
    end

    # <p>List AWS Migration Hub Orchestrator plugins.</p>
    # @param [Hash, Types::ListPluginsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of plugins that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_plugins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     plugins: [
    #       {
    #         plugin_id: "PluginId",
    #         hostname: "String",
    #         status: "PluginHealth",
    #         ip_address: "IPAddress",
    #         version: "PluginVersion",
    #         registered_time: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPluginsOutput]
    def list_plugins(params = {}, options = {})
      request = build_request(:list_plugins, params)
      request.send_request(options)
    end

    # <p>List the tags added to a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List the step groups in a template.</p>
    # @param [Hash, Types::ListTemplateStepGroupsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId", # required
    #   }
    #   options = {}
    #   response = client.list_template_step_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     template_step_group_summary: [ # required
    #       {
    #         id: "String",
    #         name: "String",
    #         previous: ["StringListMember"],
    #         next: ["StringListMember"]
    #       }
    #     ]
    #   }
    # @return [Types::ListTemplateStepGroupsOutput]
    def list_template_step_groups(params = {}, options = {})
      request = build_request(:list_template_step_groups, params)
      request.send_request(options)
    end

    # <p>List the steps in a template.</p>
    # @param [Hash, Types::ListTemplateStepsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId", # required
    #     step_group_id: "StepGroupId", # required
    #   }
    #   options = {}
    #   response = client.list_template_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     template_step_summary_list: [
    #       {
    #         id: "String",
    #         step_group_id: "String",
    #         template_id: "String",
    #         name: "String",
    #         step_action_type: "StepActionType",
    #         target_type: "TargetType",
    #         owner: "Owner",
    #         previous: ["StringListMember"],
    #         next: ["StringListMember"]
    #       }
    #     ]
    #   }
    # @return [Types::ListTemplateStepsOutput]
    def list_template_steps(params = {}, options = {})
      request = build_request(:list_template_steps, params)
      request.send_request(options)
    end

    # <p>List the templates available in Migration Hub Orchestrator to create a migration workflow.</p>
    # @param [Hash, Types::ListTemplatesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [String] :name
    #   <p>The name of the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "TemplateName"
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     template_summary: [ # required
    #       {
    #         id: "String",
    #         name: "String",
    #         arn: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTemplatesOutput]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>List the step groups in a migration workflow.</p>
    # @param [Hash, Types::ListWorkflowStepGroupsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     workflow_id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.list_workflow_step_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     workflow_step_groups_summary: [ # required
    #       {
    #         id: "String",
    #         name: "String",
    #         owner: "Owner",
    #         status: "StepGroupStatus",
    #         previous: ["StringListMember"],
    #         next: ["StringListMember"]
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowStepGroupsOutput]
    def list_workflow_step_groups(params = {}, options = {})
      request = build_request(:list_workflow_step_groups, params)
      request.send_request(options)
    end

    # <p>List the steps in a workflow.</p>
    # @param [Hash, Types::ListWorkflowStepsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #   }
    #   options = {}
    #   response = client.list_workflow_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     workflow_steps_summary: [ # required
    #       {
    #         step_id: "String",
    #         name: "String",
    #         step_action_type: "StepActionType",
    #         owner: "Owner",
    #         previous: ["StringListMember"],
    #         next: ["StringListMember"],
    #         status: "StepStatus",
    #         status_message: "String",
    #         no_of_srv_completed: 1,
    #         no_of_srv_failed: 1,
    #         total_no_of_srv: 1,
    #         description: "String",
    #         script_location: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowStepsOutput]
    def list_workflow_steps(params = {}, options = {})
      request = build_request(:list_workflow_steps, params)
      request.send_request(options)
    end

    # <p>List the migration workflows.</p>
    # @param [Hash, Types::ListWorkflowsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    # @option params [String] :template_id
    #   <p>The ID of the template.</p>
    # @option params [String] :ads_application_configuration_name
    #   <p>The name of the application configured in Application Discovery Service.</p>
    # @option params [String] :status
    #   <p>The status of the migration workflow.</p>
    # @option params [String] :name
    #   <p>The name of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     template_id: "TemplateId",
    #     ads_application_configuration_name: "ApplicationConfigurationName",
    #     status: "MigrationWorkflowStatusEnum",
    #     name: "String"
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     migration_workflow_summary: [ # required
    #       {
    #         id: "MigrationWorkflowId",
    #         name: "String",
    #         template_id: "String",
    #         ads_application_configuration_name: "String",
    #         status: "MigrationWorkflowStatusEnum",
    #         creation_time: Time.now,
    #         end_time: Time.now,
    #         status_message: "String",
    #         completed_steps: 1,
    #         total_steps: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowsOutput]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Retry a failed step in a migration workflow.</p>
    # @param [Hash, Types::RetryWorkflowStepInput] params
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @option params [String] :id
    #   <p>The ID of the step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "MigrationWorkflowId", # required
    #     step_group_id: "StepGroupId", # required
    #     id: "StepId", # required
    #   }
    #   options = {}
    #   response = client.retry_workflow_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_group_id: "String",
    #     workflow_id: "String",
    #     id: "String",
    #     status: "StepStatus"
    #   }
    # @return [Types::RetryWorkflowStepOutput]
    def retry_workflow_step(params = {}, options = {})
      request = build_request(:retry_workflow_step, params)
      request.send_request(options)
    end

    # <p>Start a migration workflow.</p>
    # @param [Hash, Types::StartWorkflowInput] params
    # @option params [String] :id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.start_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     status: "MigrationWorkflowStatusEnum",
    #     status_message: "String",
    #     last_start_time: Time.now
    #   }
    # @return [Types::StartWorkflowOutput]
    def start_workflow(params = {}, options = {})
      request = build_request(:start_workflow, params)
      request.send_request(options)
    end

    # <p>Stop an ongoing migration workflow.</p>
    # @param [Hash, Types::StopWorkflowInput] params
    # @option params [String] :id
    #   <p>The ID of the migration workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MigrationWorkflowId", # required
    #   }
    #   options = {}
    #   response = client.stop_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     status: "MigrationWorkflowStatusEnum",
    #     status_message: "String",
    #     last_stop_time: Time.now
    #   }
    # @return [Types::StopWorkflowOutput]
    def stop_workflow(params = {}, options = {})
      request = build_request(:stop_workflow, params)
      request.send_request(options)
    end

    # <p>Tag a resource by specifying its Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the tags for a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove
    #               tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
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

    # <p>Updates a migration workflow template.</p>
    # @param [Hash, Types::UpdateTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the request to update a migration workflow template.</p>
    # @option params [String] :template_name
    #   <p>The name of the migration workflow template to update.</p>
    # @option params [String] :template_description
    #   <p>The description of the migration workflow template to update.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the
    #               idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TemplateId", # required
    #     template_name: "String",
    #     template_description: "String",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "String",
    #     template_arn: "String",
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    # @return [Types::UpdateTemplateResponse]
    def update_template(params = {}, options = {})
      request = build_request(:update_template, params)
      request.send_request(options)
    end

    # <p>Update a migration workflow.</p>
    # @param [Hash, Types::UpdateWorkflowInput] params
    # @option params [String] :id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :name
    #   <p>The name of the migration workflow.</p>
    # @option params [String] :description
    #   <p>The description of the migration workflow.</p>
    # @option params [Hash<String, Types::StepInput>] :input_parameters
    #   <p>The input parameters required to update a migration workflow.</p>
    # @option params [Array<String>] :step_targets
    #   <p>The servers on which a step will be run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "MigrationWorkflowId", # required
    #     name: "String",
    #     description: "String",
    #     input_parameters: {
    #       "StepInputParametersKey" => {
    #         # One of:
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue"
    #         }
    #       }
    #     },
    #     step_targets: ["StringListMember"]
    #   }
    #   options = {}
    #   response = client.update_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "MigrationWorkflowId",
    #     arn: "String",
    #     name: "String",
    #     description: "String",
    #     template_id: "String",
    #     ads_application_configuration_id: "String",
    #     workflow_inputs: {
    #       "StepInputParametersKey" => {
    #         # One of:
    #         integer_value: 1,
    #         string_value: "StringValue",
    #         list_of_strings_value: ["StringListMember"],
    #         map_of_string_value: {
    #           "StringMapKey" => "StringMapValue"
    #         }
    #       }
    #     },
    #     step_targets: ["StringListMember"],
    #     status: "MigrationWorkflowStatusEnum",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     tags: {
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    # @return [Types::UpdateWorkflowOutput]
    def update_workflow(params = {}, options = {})
      request = build_request(:update_workflow, params)
      request.send_request(options)
    end

    # <p>Update a step in a migration workflow.</p>
    # @param [Hash, Types::UpdateWorkflowStepInput] params
    # @option params [String] :id
    #   <p>The ID of the step.</p>
    # @option params [String] :step_group_id
    #   <p>The ID of the step group.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :name
    #   <p>The name of the step.</p>
    # @option params [String] :description
    #   <p>The description of the step.</p>
    # @option params [String] :step_action_type
    #   <p>The action type of the step. You must run and update the status of a manual step for
    #               the workflow to continue after the completion of the step.</p>
    # @option params [Types::WorkflowStepAutomationConfiguration] :workflow_step_automation_configuration
    #   <p>The custom script to run tests on the source and target environments.</p>
    # @option params [Array<String>] :step_target
    #   <p>The servers on which a step will be run.</p>
    # @option params [Array<Types::WorkflowStepOutput>] :outputs
    #   <p>The outputs of a step.</p>
    # @option params [Array<String>] :previous
    #   <p>The previous step.</p>
    # @option params [Array<String>] :next
    #   <p>The next step.</p>
    # @option params [String] :status
    #   <p>The status of the step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "StepId", # required
    #     step_group_id: "StepGroupId", # required
    #     workflow_id: "MigrationWorkflowId", # required
    #     name: "StepName",
    #     description: "StepDescription",
    #     step_action_type: "StepActionType",
    #     workflow_step_automation_configuration: {
    #       script_location_s3_bucket: "S3Bucket",
    #       script_location_s3_key: {
    #         linux: "S3Key",
    #         windows: "S3Key"
    #       },
    #       command: {
    #         linux: "String",
    #         windows: "String"
    #       },
    #       run_environment: "RunEnvironment",
    #       target_type: "TargetType"
    #     },
    #     step_target: ["StringListMember"],
    #     outputs: [
    #       {
    #         name: "WorkflowStepOutputName",
    #         data_type: "DataType",
    #         required: false,
    #         value: {
    #           # One of:
    #           integer_value: 1,
    #           string_value: "MaxStringValue",
    #           list_of_string_value: ["MaxStringValue"]
    #         }
    #       }
    #     ],
    #     previous: ["StringListMember"],
    #     next: ["StringListMember"],
    #     status: "StepStatus"
    #   }
    #   options = {}
    #   response = client.update_workflow_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "StepId",
    #     step_group_id: "String",
    #     workflow_id: "String",
    #     name: "String"
    #   }
    # @return [Types::UpdateWorkflowStepOutput]
    def update_workflow_step(params = {}, options = {})
      request = build_request(:update_workflow_step, params)
      request.send_request(options)
    end

    # <p>Update the step group in a migration workflow.</p>
    # @param [Hash, Types::UpdateWorkflowStepGroupInput] params
    # @option params [String] :workflow_id
    #   <p>The ID of the migration workflow.</p>
    # @option params [String] :id
    #   <p>The ID of the step group.</p>
    # @option params [String] :name
    #   <p>The name of the step group.</p>
    # @option params [String] :description
    #   <p>The description of the step group.</p>
    # @option params [Array<String>] :next
    #   <p>The next step group.</p>
    # @option params [Array<String>] :previous
    #   <p>The previous step group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "MigrationWorkflowId", # required
    #     id: "StepGroupId", # required
    #     name: "StepGroupName",
    #     description: "StepGroupDescription",
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"]
    #   }
    #   options = {}
    #   response = client.update_workflow_step_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "String",
    #     name: "String",
    #     id: "String",
    #     description: "String",
    #     tools: [
    #       {
    #         name: "String",
    #         url: "String"
    #       }
    #     ],
    #     next: ["StringListMember"],
    #     previous: ["StringListMember"],
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateWorkflowStepGroupOutput]
    def update_workflow_step_group(params = {}, options = {})
      request = build_request(:update_workflow_step_group, params)
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
      context[:gem_name] = 'aws-sdk-migrationhuborchestrator'
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
