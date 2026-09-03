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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:connectcases)

module Aws::ConnectCases
  # An API client for Aws::ConnectCases.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonConnectCases
    @identifier = :connectcases

    add_plugin(::Aws::ConnectCases::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ConnectCases::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Gets a batch of case rules. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @param [Hash, Types::BatchGetCaseRuleRequest] params
    # @option params [String] :domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    # @option params [Array<Types::CaseRuleIdentifier>] :case_rules
    #   <p>List of case rule identifiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_rules: [ # required
    #       {
    #         id: "CaseRuleId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_case_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_rules: [ # required
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         name: "CaseRuleName", # required
    #         case_rule_arn: "CaseRuleArn", # required
    #         rule: { # required
    #           # One of:
    #           required: {
    #             default_value: false, # required
    #             conditions: [{ # required
    #               # One of:
    #               equal_to: {
    #                 operand_one: { # required
    #                   # One of:
    #                   field_id: "FieldId"
    #                 },
    #                 operand_two: { # required
    #                   # One of:
    #                   string_value: "String",
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   empty_value: {
    #                   }
    #                 },
    #                 result: false, # required
    #               },
    #               not_equal_to: {
    #                 operand_one: { # required
    #                   # One of:
    #                   field_id: "FieldId"
    #                 },
    #                 operand_two: { # required
    #                   # One of:
    #                   string_value: "String",
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   empty_value: {
    #                   }
    #                 },
    #                 result: false, # required
    #               }
    #             }]
    #           }
    #         },
    #         description: "CaseRuleDescription",
    #         deleted: false,
    #         created_time: Time.now,
    #         last_modified_time: Time.now,
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         id: "CaseRuleId", # required
    #         error_code: "String", # required
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetCaseRuleResponse]
    def batch_get_case_rule(params = {}, options = {})
      request = build_request(:batch_get_case_rule, params)
      request.send_request(options)
    end

    # <p>Returns the description for the list of fields in the request parameters. </p>
    # @param [Hash, Types::BatchGetFieldInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Array<Types::FieldIdentifier>] :fields
    #   <p>A list of unique field identifiers. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fields: [ # required
    #       {
    #         field_id: "FieldId", # required
    #         name: "FieldName", # required
    #         field_arn: "FieldArn", # required
    #         description: "FieldDescription",
    #         type: "FieldType", # required
    #         namespace: "FieldNamespace", # required
    #         tags: {
    #           "String" => "String"
    #         },
    #         deleted: false,
    #         created_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         id: "FieldId", # required
    #         error_code: "String", # required
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFieldOutput]
    def batch_get_field(params = {}, options = {})
      request = build_request(:batch_get_field, params)
      request.send_request(options)
    end

    # <p>Creates and updates a set of field options for a single select field in a Cases domain.</p>
    # @param [Hash, Types::BatchPutFieldOptionsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :field_id
    #   <p>The unique identifier of a field.</p>
    # @option params [Array<Types::FieldOption>] :options
    #   <p>A list of <code>FieldOption</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     options: [ # required
    #       {
    #         name: "FieldOptionName", # required
    #         value: "FieldOptionValue", # required
    #         active: false, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_field_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         message: "String", # required
    #         error_code: "String", # required
    #         value: "FieldOptionValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutFieldOptionsOutput]
    def batch_put_field_options(params = {}, options = {})
      request = build_request(:batch_put_field_options, params)
      request.send_request(options)
    end

    # <note> <p>If you provide a value for <code>PerformedBy.UserArn</code> you must also have <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html">connect:DescribeUser</a> permission on the User ARN resource that you provide</p> </note> <p>Creates a case in the specified Cases domain. Case system and custom fields are taken as an array id/value pairs with a declared data types.</p> <p>The following fields are required when creating a case:</p> <ul> <li> <p> <code>customer_id</code> - You must provide the full customer profile ARN in this format: <code>arn:aws:profile:your_AWS_Region:your_AWS_account ID:domains/your_profiles_domain_name/profiles/profile_ID</code> </p> </li> <li> <p> <code>title</code> </p> </li> </ul>
    # @param [Hash, Types::CreateCaseInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :template_id
    #   <p>A unique identifier of a template.</p>
    # @option params [Array<Types::FieldValue>] :fields
    #   <p>An array of objects with field ID (matching ListFields/DescribeField) and value union data.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Types::UserUnion] :performed_by
    #   <p>Represents the entity that performed the action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           # One of:
    #           string_value: "String",
    #           double_value: 1.0,
    #           boolean_value: false,
    #           empty_value: {
    #           },
    #           user_arn_value: "String"
    #         }
    #       }
    #     ],
    #     client_token: "String",
    #     performed_by: {
    #       # One of:
    #       user_arn: "UserArn",
    #       custom_entity: "CustomEntity"
    #     }
    #   }
    #   options = {}
    #   response = client.create_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_id: "CaseId", # required
    #     case_arn: "CaseArn", # required
    #   }
    # @return [Types::CreateCaseOutput]
    def create_case(params = {}, options = {})
      request = build_request(:create_case, params)
      request.send_request(options)
    end

    # <p>Creates a new case rule. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @param [Hash, Types::CreateCaseRuleRequest] params
    # @option params [String] :domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    # @option params [String] :name
    #   <p>Name of the case rule.</p>
    # @option params [String] :description
    #   <p>The description of a case rule.</p>
    # @option params [Types::CaseRuleDetails] :rule
    #   <p>Represents what rule type should take place, under what conditions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "CaseRuleName", # required
    #     description: "CaseRuleDescription",
    #     rule: { # required
    #       # One of:
    #       required: {
    #         default_value: false, # required
    #         conditions: [{ # required
    #           # One of:
    #           equal_to: {
    #             operand_one: { # required
    #               # One of:
    #               field_id: "FieldId"
    #             },
    #             operand_two: { # required
    #               # One of:
    #               string_value: "String",
    #               boolean_value: false,
    #               double_value: 1.0,
    #               empty_value: {
    #               }
    #             },
    #             result: false, # required
    #           },
    #           not_equal_to: {
    #             operand_one: { # required
    #               # One of:
    #               field_id: "FieldId"
    #             },
    #             operand_two: { # required
    #               # One of:
    #               string_value: "String",
    #               boolean_value: false,
    #               double_value: 1.0,
    #               empty_value: {
    #               }
    #             },
    #             result: false, # required
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_case_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_rule_id: "CaseRuleId", # required
    #     case_rule_arn: "CaseRuleArn", # required
    #   }
    # @return [Types::CreateCaseRuleResponse]
    def create_case_rule(params = {}, options = {})
      request = build_request(:create_case_rule, params)
      request.send_request(options)
    end

    # <p>Creates a domain, which is a container for all case data, such as cases, fields, templates and layouts. Each Amazon Connect instance can be associated with only one Cases domain.</p> <important> <p>This will not associate your connect instance to Cases domain. Instead, use the Amazon Connect <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html">CreateIntegrationAssociation</a> API. You need specific IAM permissions to successfully associate the Cases domain. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam">Onboard to Cases</a>.</p> </important>
    # @param [Hash, Types::CreateDomainInput] params
    # @option params [String] :name
    #   <p>The name for your Cases domain. It must be unique for your Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     domain_arn: "DomainArn", # required
    #     domain_status: "DomainStatus", # required
    #   }
    # @return [Types::CreateDomainOutput]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates a field in the Cases domain. This field is used to define the case object model (that is, defines what data can be captured on cases) in a Cases domain. </p>
    # @param [Hash, Types::CreateFieldInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :name
    #   <p>The name of the field.</p>
    # @option params [String] :type
    #   <p>Defines the data type, some system constraints, and default display of the field.</p>
    # @option params [String] :description
    #   <p>The description of the field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "FieldName", # required
    #     type: "FieldType", # required
    #     description: "FieldDescription"
    #   }
    #   options = {}
    #   response = client.create_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_id: "FieldId", # required
    #     field_arn: "FieldArn", # required
    #   }
    # @return [Types::CreateFieldOutput]
    def create_field(params = {}, options = {})
      request = build_request(:create_field, params)
      request.send_request(options)
    end

    # <p>Creates a layout in the Cases domain. Layouts define the following configuration in the top section and More Info tab of the Cases user interface:</p> <ul> <li> <p>Fields to display to the users</p> </li> <li> <p>Field ordering</p> </li> </ul> <note> <p>Title and Status fields cannot be part of layouts since they are not configurable.</p> </note>
    # @param [Hash, Types::CreateLayoutInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :name
    #   <p>The name of the layout. It must be unique for the Cases domain.</p>
    # @option params [Types::LayoutContent] :content
    #   <p>Information about which fields will be present in the layout, and information about the order of the fields.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "LayoutName", # required
    #     content: { # required
    #       # One of:
    #       basic: {
    #         top_panel: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         },
    #         more_info: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layout_id: "LayoutId", # required
    #     layout_arn: "LayoutArn", # required
    #   }
    # @return [Types::CreateLayoutOutput]
    def create_layout(params = {}, options = {})
      request = build_request(:create_layout, params)
      request.send_request(options)
    end

    # <p>Creates a related item (comments, tasks, and contacts) and associates it with a case.</p> <note> <ul> <li> <p>A Related Item is a resource that is associated with a case. It may or may not have an external identifier linking it to an external resource (for example, a <code>contactArn</code>). All Related Items have their own internal identifier, the <code>relatedItemArn</code>. Examples of related items include <code>comments</code> and <code>contacts</code>.</p> </li> <li> <p>If you provide a value for <code>performedBy.userArn</code> you must also have <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html">DescribeUser</a> permission on the ARN of the user that you provide.</p> </li> <li> <p>The <code>type</code> field is reserved for internal use only.</p> </li> </ul> </note>
    # @param [Hash, Types::CreateRelatedItemInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [String] :type
    #   <p>The type of a related item.</p>
    # @option params [Types::RelatedItemInputContent] :content
    #   <p>The content of a related item to be created.</p>
    # @option params [Types::UserUnion] :performed_by
    #   <p>Represents the creator of the related item.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_id: "CaseId", # required
    #     type: "RelatedItemType", # required
    #     content: { # required
    #       # One of:
    #       contact: {
    #         contact_arn: "ContactArn", # required
    #       },
    #       comment: {
    #         body: "CommentBody", # required
    #         content_type: "CommentBodyTextType", # required
    #       },
    #       file: {
    #         file_arn: "FileArn", # required
    #       },
    #       sla: {
    #         # One of:
    #         sla_input_configuration: {
    #           name: "SlaName", # required
    #           type: "SlaType", # required
    #           field_id: "FieldId",
    #           target_field_values: [{
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }],
    #           target_sla_minutes: 1, # required
    #         }
    #       },
    #       connect_case: {
    #         case_id: "CaseId", # required
    #       },
    #       custom: {
    #         fields: [ # required
    #           {
    #             id: "FieldId", # required
    #             value: { # required
    #               # One of:
    #               string_value: "String",
    #               double_value: 1.0,
    #               boolean_value: false,
    #               empty_value: {
    #               },
    #               user_arn_value: "String"
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     performed_by: {
    #       # One of:
    #       user_arn: "UserArn",
    #       custom_entity: "CustomEntity"
    #     }
    #   }
    #   options = {}
    #   response = client.create_related_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     related_item_id: "RelatedItemId", # required
    #     related_item_arn: "RelatedItemArn", # required
    #   }
    # @return [Types::CreateRelatedItemOutput]
    def create_related_item(params = {}, options = {})
      request = build_request(:create_related_item, params)
      request.send_request(options)
    end

    # <p>Creates a template in the Cases domain. This template is used to define the case object model (that is, to define what data can be captured on cases) in a Cases domain. A template must have a unique name within a domain, and it must reference existing field IDs and layout IDs. Additionally, multiple fields with same IDs are not allowed within the same Template. A template can be either Active or Inactive, as indicated by its status. Inactive templates cannot be used to create cases.</p> <p> Other template APIs are: </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html">DeleteTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html">GetTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html">ListTemplates</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html">UpdateTemplate</a> </p> </li> </ul>
    # @param [Hash, Types::CreateTemplateInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :name
    #   <p>A name for the template. It must be unique per domain.</p>
    # @option params [String] :description
    #   <p>A brief description of the template.</p>
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   <p>Configuration of layouts associated to the template.</p>
    # @option params [Array<Types::RequiredField>] :required_fields
    #   <p>A list of fields that must contain a value for a case to be successfully created with this template.</p>
    # @option params [String] :status
    #   <p>The status of the template.</p>
    # @option params [Array<Types::TemplateRule>] :rules
    #   <p>A list of case rules (also known as <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">case field conditions</a>) on a template. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     layout_configuration: {
    #       default_layout: "LayoutId"
    #     },
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       }
    #     ],
    #     status: "TemplateStatus",
    #     rules: [
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         field_id: "FieldId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #   }
    # @return [Types::CreateTemplateOutput]
    def create_template(params = {}, options = {})
      request = build_request(:create_template, params)
      request.send_request(options)
    end

    # <p> The DeleteCase API permanently deletes a case and all its associated resources from the cases data store. After a successful deletion, you cannot:</p> <ul> <li> <p>Retrieve related items</p> </li> <li> <p>Access audit history</p> </li> <li> <p>Perform any operations that require the CaseID</p> </li> </ul> <important> <p>This action is irreversible. After you delete a case, you cannot recover its data.</p> </important>
    # @param [Hash, Types::DeleteCaseRequest] params
    # @option params [String] :domain_id
    #   <p>A unique identifier of the Cases domain.</p>
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_id: "CaseId", # required
    #   }
    #   options = {}
    #   response = client.delete_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCaseResponse]
    def delete_case(params = {}, options = {})
      request = build_request(:delete_case, params)
      request.send_request(options)
    end

    # <p>Deletes a case rule. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @param [Hash, Types::DeleteCaseRuleRequest] params
    # @option params [String] :domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    # @option params [String] :case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_rule_id: "CaseRuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_case_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCaseRuleResponse]
    def delete_case_rule(params = {}, options = {})
      request = build_request(:delete_case_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a Cases domain.</p> <note> <p>After deleting your domain you must disassociate the deleted domain from your Amazon Connect instance with another API call before being able to use Cases again with this Amazon Connect instance. See <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteIntegrationAssociation.html">DeleteIntegrationAssociation</a>.</p> </note>
    # @param [Hash, Types::DeleteDomainInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainOutput]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Deletes a field from a cases template. You can delete up to 100 fields per domain.</p> <p>After a field is deleted:</p> <ul> <li> <p>You can still retrieve the field by calling <code>BatchGetField</code>.</p> </li> <li> <p>You cannot update a deleted field by calling <code>UpdateField</code>; it throws a <code>ValidationException</code>.</p> </li> <li> <p>Deleted fields are not included in the <code>ListFields</code> response.</p> </li> <li> <p>Calling <code>CreateCase</code> with a deleted field throws a <code>ValidationException</code> denoting which field IDs in the request have been deleted.</p> </li> <li> <p>Calling <code>GetCase</code> with a deleted field ID returns the deleted field's value if one exists.</p> </li> <li> <p>Calling <code>UpdateCase</code> with a deleted field ID throws a <code>ValidationException</code> if the case does not already contain a value for the deleted field. Otherwise it succeeds, allowing you to update or remove (using <code>emptyValue: {}</code>) the field's value from the case.</p> </li> <li> <p> <code>GetTemplate</code> does not return field IDs for deleted fields.</p> </li> <li> <p> <code>GetLayout</code> does not return field IDs for deleted fields.</p> </li> <li> <p>Calling <code>SearchCases</code> with the deleted field ID as a filter returns any cases that have a value for the deleted field that matches the filter criteria.</p> </li> <li> <p>Calling <code>SearchCases</code> with a <code>searchTerm</code> value that matches a deleted field's value on a case returns the case in the response.</p> </li> <li> <p>Calling <code>BatchPutFieldOptions</code> with a deleted field ID throw a <code>ValidationException</code>.</p> </li> <li> <p>Calling <code>GetCaseEventConfiguration</code> does not return field IDs for deleted fields.</p> </li> </ul>
    # @param [Hash, Types::DeleteFieldRequest] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    # @option params [String] :field_id
    #   <p>Unique identifier of the field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #   }
    #   options = {}
    #   response = client.delete_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFieldResponse]
    def delete_field(params = {}, options = {})
      request = build_request(:delete_field, params)
      request.send_request(options)
    end

    # <p>Deletes a layout from a cases template. You can delete up to 100 layouts per domain.</p> <p>After a layout is deleted:</p> <ul> <li> <p>You can still retrieve the layout by calling <code>GetLayout</code>.</p> </li> <li> <p>You cannot update a deleted layout by calling <code>UpdateLayout</code>; it throws a <code>ValidationException</code>.</p> </li> <li> <p>Deleted layouts are not included in the <code>ListLayouts</code> response.</p> </li> </ul>
    # @param [Hash, Types::DeleteLayoutRequest] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    # @option params [String] :layout_id
    #   <p>The unique identifier of the layout.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #   }
    #   options = {}
    #   response = client.delete_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLayoutResponse]
    def delete_layout(params = {}, options = {})
      request = build_request(:delete_layout, params)
      request.send_request(options)
    end

    # <p>Deletes the related item resource under a case.</p> <note> <p>This API cannot be used on a FILE type related attachment. To delete this type of file, use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteAttachedFile.html">DeleteAttachedFile</a> API</p> </note>
    # @param [Hash, Types::DeleteRelatedItemRequest] params
    # @option params [String] :domain_id
    #   <p>A unique identifier of the Cases domain.</p>
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [String] :related_item_id
    #   <p>A unique identifier of a related item.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_id: "CaseId", # required
    #     related_item_id: "RelatedItemId", # required
    #   }
    #   options = {}
    #   response = client.delete_related_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRelatedItemResponse]
    def delete_related_item(params = {}, options = {})
      request = build_request(:delete_related_item, params)
      request.send_request(options)
    end

    # <p>Deletes a cases template. You can delete up to 100 templates per domain.</p> <p>After a cases template is deleted:</p> <ul> <li> <p>You can still retrieve the template by calling <code>GetTemplate</code>.</p> </li> <li> <p>You cannot update the template. </p> </li> <li> <p>You cannot create a case by using the deleted template.</p> </li> <li> <p>Deleted templates are not included in the <code>ListTemplates</code> response.</p> </li> </ul>
    # @param [Hash, Types::DeleteTemplateRequest] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    # @option params [String] :template_id
    #   <p>A unique identifier of a template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
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

    # <p>Returns information about a specific case if it exists. </p>
    # @param [Hash, Types::GetCaseInput] params
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Array<Types::FieldIdentifier>] :fields
    #   <p>A list of unique field identifiers. </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           # One of:
    #           string_value: "String",
    #           double_value: 1.0,
    #           boolean_value: false,
    #           empty_value: {
    #           },
    #           user_arn_value: "String"
    #         }
    #       }
    #     ],
    #     template_id: "TemplateId", # required
    #     next_token: "NextToken",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetCaseOutput]
    def get_case(params = {}, options = {})
      request = build_request(:get_case, params)
      request.send_request(options)
    end

    # <p>Returns the audit history about a specific case if it exists.</p>
    # @param [Hash, Types::GetCaseAuditEventsRequest] params
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of audit events to return. When no value is provided, 25 is the default.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_case_audit_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     audit_events: [ # required
    #       {
    #         event_id: "AuditEventId", # required
    #         type: "AuditEventType", # required
    #         related_item_type: "RelatedItemType",
    #         performed_time: Time.now, # required
    #         fields: [ # required
    #           {
    #             event_field_id: "AuditEventFieldId", # required
    #             old_value: {
    #               # One of:
    #               string_value: "String",
    #               double_value: 1.0,
    #               boolean_value: false,
    #               empty_value: {
    #               },
    #               user_arn_value: "String"
    #             },
    #             new_value: { # required
    #               # One of:
    #               string_value: "String",
    #               double_value: 1.0,
    #               boolean_value: false,
    #               empty_value: {
    #               },
    #               user_arn_value: "String"
    #             }
    #           }
    #         ],
    #         performed_by: {
    #           user: {
    #             # One of:
    #             user_arn: "UserArn",
    #             custom_entity: "CustomEntity"
    #           },
    #           iam_principal_arn: "IamPrincipalArn", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetCaseAuditEventsResponse]
    def get_case_audit_events(params = {}, options = {})
      request = build_request(:get_case_audit_events, params)
      request.send_request(options)
    end

    # <p>Returns the case event publishing configuration.</p>
    # @param [Hash, Types::GetCaseEventConfigurationInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_case_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_bridge: { # required
    #       enabled: false, # required
    #       included_data: {
    #         case_data: {
    #           fields: [ # required
    #             {
    #               id: "FieldId", # required
    #             }
    #           ]
    #         },
    #         related_item_data: {
    #           include_content: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCaseEventConfigurationOutput]
    def get_case_event_configuration(params = {}, options = {})
      request = build_request(:get_case_event_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific domain if it exists. </p>
    # @param [Hash, Types::GetDomainInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     domain_arn: "DomainArn", # required
    #     name: "DomainName", # required
    #     created_time: Time.now, # required
    #     domain_status: "DomainStatus", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetDomainOutput]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # <p>Returns the details for the requested layout.</p>
    # @param [Hash, Types::GetLayoutInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :layout_id
    #   <p>The unique identifier of the layout.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #   }
    #   options = {}
    #   response = client.get_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layout_id: "LayoutId", # required
    #     layout_arn: "LayoutArn", # required
    #     name: "LayoutName", # required
    #     content: { # required
    #       # One of:
    #       basic: {
    #         top_panel: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         },
    #         more_info: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         }
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     deleted: false,
    #     created_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::GetLayoutOutput]
    def get_layout(params = {}, options = {})
      request = build_request(:get_layout, params)
      request.send_request(options)
    end

    # <p>Returns the details for the requested template. Other template APIs are: </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html">CreateTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html">DeleteTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html">ListTemplates</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html">UpdateTemplate</a> </p> </li> </ul>
    # @param [Hash, Types::GetTemplateInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :template_id
    #   <p>A unique identifier of a template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #   }
    #   options = {}
    #   response = client.get_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "TemplateId", # required
    #     template_arn: "TemplateArn", # required
    #     name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     layout_configuration: {
    #       default_layout: "LayoutId"
    #     },
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       }
    #     ],
    #     tags: {
    #       "String" => "String"
    #     },
    #     status: "TemplateStatus", # required
    #     deleted: false,
    #     created_time: Time.now,
    #     last_modified_time: Time.now,
    #     rules: [
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         field_id: "FieldId", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetTemplateOutput]
    def get_template(params = {}, options = {})
      request = build_request(:get_template, params)
      request.send_request(options)
    end

    # <p>Lists all case rules in a Cases domain. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @param [Hash, Types::ListCaseRulesRequest] params
    # @option params [String] :domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_case_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_rules: [ # required
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         name: "CaseRuleName", # required
    #         case_rule_arn: "CaseRuleArn", # required
    #         rule_type: "RuleType", # required
    #         description: "CaseRuleDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCaseRulesResponse]
    def list_case_rules(params = {}, options = {})
      request = build_request(:list_case_rules, params)
      request.send_request(options)
    end

    # <p>Lists cases for a given contact.</p>
    # @param [Hash, Types::ListCasesForContactInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :contact_arn
    #   <p>A unique identifier of a contact in Amazon Connect.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     contact_arn: "ContactArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_cases_for_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cases: [ # required
    #       {
    #         case_id: "CaseId", # required
    #         template_id: "TemplateId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCasesForContactOutput]
    def list_cases_for_contact(params = {}, options = {})
      request = build_request(:list_cases_for_contact, params)
      request.send_request(options)
    end

    # <p>Lists all cases domains in the Amazon Web Services account. Each list item is a condensed summary object of the domain.</p>
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         domain_arn: "DomainArn", # required
    #         name: "DomainName", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Lists all of the field options for a field identifier in the domain. </p>
    # @param [Hash, Types::ListFieldOptionsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :field_id
    #   <p>The unique identifier of a field.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Array<String>] :values
    #   <p>A list of <code>FieldOption</code> values to filter on for <code>ListFieldOptions</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     values: ["Value"]
    #   }
    #   options = {}
    #   response = client.list_field_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     options: [ # required
    #       {
    #         name: "FieldOptionName", # required
    #         value: "FieldOptionValue", # required
    #         active: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFieldOptionsOutput]
    def list_field_options(params = {}, options = {})
      request = build_request(:list_field_options, params)
      request.send_request(options)
    end

    # <p>Lists all fields in a Cases domain.</p>
    # @param [Hash, Types::ListFieldsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_fields(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fields: [ # required
    #       {
    #         field_id: "FieldId", # required
    #         field_arn: "FieldArn", # required
    #         name: "FieldName", # required
    #         type: "FieldType", # required
    #         namespace: "FieldNamespace", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFieldsOutput]
    def list_fields(params = {}, options = {})
      request = build_request(:list_fields, params)
      request.send_request(options)
    end

    # <p>Lists all layouts in the given cases domain. Each list item is a condensed summary object of the layout.</p>
    # @param [Hash, Types::ListLayoutsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_layouts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layouts: [ # required
    #       {
    #         layout_id: "LayoutId", # required
    #         layout_arn: "LayoutArn", # required
    #         name: "LayoutName", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLayoutsOutput]
    def list_layouts(params = {}, options = {})
      request = build_request(:list_layouts, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all of the templates in a Cases domain. Each list item is a condensed summary object of the template. </p> <p> Other template APIs are: </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html">CreateTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html">DeleteTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html">GetTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html">UpdateTemplate</a> </p> </li> </ul>
    # @param [Hash, Types::ListTemplatesInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Array<String>] :status
    #   <p>A list of status values to filter on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: ["TemplateStatus"]
    #   }
    #   options = {}
    #   response = client.list_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates: [ # required
    #       {
    #         template_id: "TemplateId", # required
    #         template_arn: "TemplateArn", # required
    #         name: "TemplateName", # required
    #         status: "TemplateStatus", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTemplatesOutput]
    def list_templates(params = {}, options = {})
      request = build_request(:list_templates, params)
      request.send_request(options)
    end

    # <p>Adds case event publishing configuration. For a complete list of fields you can add to the event message, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-fields.html">Create case fields</a> in the <i>Amazon Connect Administrator Guide</i> </p>
    # @param [Hash, Types::PutCaseEventConfigurationInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Types::EventBridgeConfiguration] :event_bridge
    #   <p>Configuration to enable EventBridge case event delivery and determine what data is delivered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     event_bridge: { # required
    #       enabled: false, # required
    #       included_data: {
    #         case_data: {
    #           fields: [ # required
    #             {
    #               id: "FieldId", # required
    #             }
    #           ]
    #         },
    #         related_item_data: {
    #           include_content: false, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_case_event_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutCaseEventConfigurationOutput]
    def put_case_event_configuration(params = {}, options = {})
      request = build_request(:put_case_event_configuration, params)
      request.send_request(options)
    end

    # <p>Searches for related items across all cases within a domain. This is a global search operation that returns related items from multiple cases, unlike the case-specific <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_SearchRelatedItems.html">SearchRelatedItems</a> API.</p> <p> <b>Use cases</b> </p> <p>Following are common uses cases for this API:</p> <ul> <li> <p>Find cases with similar issues across the domain. For example, search for all cases containing comments about "product defect" to identify patterns and existing solutions.</p> </li> <li> <p>Locate all cases associated with specific contacts or orders. For example, find all cases linked to a contactArn to understand the complete customer journey. </p> </li> <li> <p>Monitor SLA compliance across cases. For example, search for all cases with "Active" SLA status to prioritize remediation efforts.</p> </li> </ul> <p> <b>Important things to know</b> </p> <ul> <li> <p>This API returns case IDs, not complete case objects. To retrieve full case details, you must make additional calls to the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetCase.html">GetCase</a> API for each returned case ID. </p> </li> <li> <p>This API searches across related items content, not case fields. Use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_SearchCases.html">SearchCases</a> API to search within case field values.</p> </li> </ul> <p> <b>Endpoints</b>: See <a href="https://docs.aws.amazon.com/general/latest/gr/connect_region.html">Amazon Connect endpoints and quotas</a>.</p>
    # @param [Hash, Types::SearchAllRelatedItemsRequest] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Array<Types::RelatedItemTypeFilter>] :filters
    #   <p>The list of types of related items and their parameters to use for filtering. The filters work as an OR condition: caller gets back related items that match any of the specified filter types.</p>
    # @option params [Array<Types::SearchAllRelatedItemsSort>] :sorts
    #   <p>A structured set of sort terms to specify the order in which related items should be returned. Supports sorting by association time or case ID. The sorts work in the order specified: first sort term takes precedence over subsequent terms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [{
    #       # One of:
    #       contact: {
    #         channel: ["Channel"],
    #         contact_arn: "ContactArn"
    #       },
    #       comment: {
    #       },
    #       file: {
    #         file_arn: "FileArn"
    #       },
    #       sla: {
    #         name: "SlaName",
    #         status: "SlaStatus"
    #       },
    #       connect_case: {
    #         case_id: "CaseId"
    #       },
    #       custom: {
    #         fields: {
    #           # One of:
    #           field: {
    #             # One of:
    #             equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             contains: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             greater_than: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             greater_than_or_equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             less_than: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             less_than_or_equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             }
    #           },
    #           not: {
    #             # recursive CustomFieldsFilter
    #           },
    #           and_all: [{
    #             # recursive CustomFieldsFilter
    #           }],
    #           or_all: [{
    #             # recursive CustomFieldsFilter
    #           }]
    #         }
    #       }
    #     }],
    #     sorts: [
    #       {
    #         sort_property: "SearchAllRelatedItemsSortProperty", # required
    #         sort_order: "Order", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_all_related_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     related_items: [ # required
    #       {
    #         related_item_id: "RelatedItemId", # required
    #         case_id: "CaseId", # required
    #         type: "RelatedItemType", # required
    #         association_time: Time.now, # required
    #         content: { # required
    #           # One of:
    #           contact: {
    #             contact_arn: "ContactArn", # required
    #             channel: "Channel", # required
    #             connected_to_system_time: Time.now, # required
    #           },
    #           comment: {
    #             body: "CommentBody", # required
    #             content_type: "CommentBodyTextType", # required
    #           },
    #           file: {
    #             file_arn: "FileArn", # required
    #           },
    #           sla: {
    #             sla_configuration: { # required
    #               name: "SlaName", # required
    #               type: "SlaType", # required
    #               status: "SlaStatus", # required
    #               field_id: "FieldId",
    #               target_field_values: [{
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }],
    #               target_time: Time.now, # required
    #               completion_time: Time.now
    #             }
    #           },
    #           connect_case: {
    #             case_id: "CaseId", # required
    #           },
    #           custom: {
    #             fields: [ # required
    #               {
    #                 id: "FieldId", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "String",
    #                   double_value: 1.0,
    #                   boolean_value: false,
    #                   empty_value: {
    #                   },
    #                   user_arn_value: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         performed_by: {
    #           # One of:
    #           user_arn: "UserArn",
    #           custom_entity: "CustomEntity"
    #         },
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::SearchAllRelatedItemsResponse]
    def search_all_related_items(params = {}, options = {})
      request = build_request(:search_all_related_items, params)
      request.send_request(options)
    end

    # <p>Searches for cases within their associated Cases domain. Search results are returned as a paginated list of abridged case documents.</p> <note> <p>For <code>customer_id</code> you must provide the full customer profile ARN in this format: <code> arn:aws:profile:your AWS Region:your AWS account ID:domains/profiles domain name/profiles/profile ID</code>. </p> </note>
    # @param [Hash, Types::SearchCasesInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of cases to return. When no value is provided, 25 is the default.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [String] :search_term
    #   <p>A word or phrase used to perform a quick search.</p>
    # @option params [Types::CaseFilter] :filter
    #   <p>A list of filter objects.</p>
    # @option params [Array<Types::Sort>] :sorts
    #   <p>A list of sorts where each sort specifies a field and their sort order to be applied to the results. </p>
    # @option params [Array<Types::FieldIdentifier>] :fields
    #   <p>The list of field identifiers to be returned as part of the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     search_term: "String",
    #     filter: {
    #       # One of:
    #       field: {
    #         # One of:
    #         equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         },
    #         contains: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         },
    #         greater_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         },
    #         greater_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         },
    #         less_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         },
    #         less_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             # One of:
    #             string_value: "String",
    #             double_value: 1.0,
    #             boolean_value: false,
    #             empty_value: {
    #             },
    #             user_arn_value: "String"
    #           }
    #         }
    #       },
    #       not: {
    #         # recursive CaseFilter
    #       },
    #       and_all: [{
    #         # recursive CaseFilter
    #       }],
    #       or_all: [{
    #         # recursive CaseFilter
    #       }]
    #     },
    #     sorts: [
    #       {
    #         field_id: "FieldId", # required
    #         sort_order: "Order", # required
    #       }
    #     ],
    #     fields: [
    #       {
    #         id: "FieldId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     cases: [ # required
    #       {
    #         case_id: "CaseId", # required
    #         template_id: "TemplateId", # required
    #         fields: [ # required
    #           {
    #             id: "FieldId", # required
    #             value: { # required
    #               # One of:
    #               string_value: "String",
    #               double_value: 1.0,
    #               boolean_value: false,
    #               empty_value: {
    #               },
    #               user_arn_value: "String"
    #             }
    #           }
    #         ],
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::SearchCasesOutput]
    def search_cases(params = {}, options = {})
      request = build_request(:search_cases, params)
      request.send_request(options)
    end

    # <p>Searches for related items that are associated with a case.</p> <note> <p>If no filters are provided, this returns all related items associated with a case.</p> </note>
    # @param [Hash, Types::SearchRelatedItemsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    # @option params [Array<Types::RelatedItemTypeFilter>] :filters
    #   <p>The list of types of related items and their parameters to use for filtering.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_id: "CaseId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [{
    #       # One of:
    #       contact: {
    #         channel: ["Channel"],
    #         contact_arn: "ContactArn"
    #       },
    #       comment: {
    #       },
    #       file: {
    #         file_arn: "FileArn"
    #       },
    #       sla: {
    #         name: "SlaName",
    #         status: "SlaStatus"
    #       },
    #       connect_case: {
    #         case_id: "CaseId"
    #       },
    #       custom: {
    #         fields: {
    #           # One of:
    #           field: {
    #             # One of:
    #             equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             contains: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             greater_than: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             greater_than_or_equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             less_than: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             },
    #             less_than_or_equal_to: {
    #               id: "FieldId", # required
    #               value: { # required
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }
    #             }
    #           },
    #           not: {
    #             # recursive CustomFieldsFilter
    #           },
    #           and_all: [{
    #             # recursive CustomFieldsFilter
    #           }],
    #           or_all: [{
    #             # recursive CustomFieldsFilter
    #           }]
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.search_related_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     related_items: [ # required
    #       {
    #         related_item_id: "RelatedItemId", # required
    #         type: "RelatedItemType", # required
    #         association_time: Time.now, # required
    #         content: { # required
    #           # One of:
    #           contact: {
    #             contact_arn: "ContactArn", # required
    #             channel: "Channel", # required
    #             connected_to_system_time: Time.now, # required
    #           },
    #           comment: {
    #             body: "CommentBody", # required
    #             content_type: "CommentBodyTextType", # required
    #           },
    #           file: {
    #             file_arn: "FileArn", # required
    #           },
    #           sla: {
    #             sla_configuration: { # required
    #               name: "SlaName", # required
    #               type: "SlaType", # required
    #               status: "SlaStatus", # required
    #               field_id: "FieldId",
    #               target_field_values: [{
    #                 # One of:
    #                 string_value: "String",
    #                 double_value: 1.0,
    #                 boolean_value: false,
    #                 empty_value: {
    #                 },
    #                 user_arn_value: "String"
    #               }],
    #               target_time: Time.now, # required
    #               completion_time: Time.now
    #             }
    #           },
    #           connect_case: {
    #             case_id: "CaseId", # required
    #           },
    #           custom: {
    #             fields: [ # required
    #               {
    #                 id: "FieldId", # required
    #                 value: { # required
    #                   # One of:
    #                   string_value: "String",
    #                   double_value: 1.0,
    #                   boolean_value: false,
    #                   empty_value: {
    #                   },
    #                   user_arn_value: "String"
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         tags: {
    #           "String" => "String"
    #         },
    #         performed_by: {
    #           # One of:
    #           user_arn: "UserArn",
    #           custom_entity: "CustomEntity"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::SearchRelatedItemsOutput]
    def search_related_items(params = {}, options = {})
      request = build_request(:search_related_items, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN)</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Untags a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN)</p>
    # @option params [Array<String>] :tag_keys
    #   <p>List of tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <note> <p>If you provide a value for <code>PerformedBy.UserArn</code> you must also have <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html">connect:DescribeUser</a> permission on the User ARN resource that you provide</p> </note> <p>Updates the values of fields on a case. Fields to be updated are received as an array of id/value pairs identical to the <code>CreateCase</code> input .</p> <p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    # @param [Hash, Types::UpdateCaseInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :case_id
    #   <p>A unique identifier of the case.</p>
    # @option params [Array<Types::FieldValue>] :fields
    #   <p>An array of objects with <code>fieldId</code> (matching ListFields/DescribeField) and value union data, structured identical to <code>CreateCase</code>.</p>
    # @option params [Types::UserUnion] :performed_by
    #   <p>Represents the entity that performed the action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_id: "CaseId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           # One of:
    #           string_value: "String",
    #           double_value: 1.0,
    #           boolean_value: false,
    #           empty_value: {
    #           },
    #           user_arn_value: "String"
    #         }
    #       }
    #     ],
    #     performed_by: {
    #       # One of:
    #       user_arn: "UserArn",
    #       custom_entity: "CustomEntity"
    #     }
    #   }
    #   options = {}
    #   response = client.update_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCaseOutput]
    def update_case(params = {}, options = {})
      request = build_request(:update_case, params)
      request.send_request(options)
    end

    # <p>Updates a case rule. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @param [Hash, Types::UpdateCaseRuleRequest] params
    # @option params [String] :domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    # @option params [String] :case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    # @option params [String] :name
    #   <p>Name of the case rule.</p>
    # @option params [String] :description
    #   <p>Description of a case rule.</p>
    # @option params [Types::CaseRuleDetails] :rule
    #   <p>Represents what rule type should take place, under what conditions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     case_rule_id: "CaseRuleId", # required
    #     name: "CaseRuleName",
    #     description: "CaseRuleDescription",
    #     rule: {
    #       # One of:
    #       required: {
    #         default_value: false, # required
    #         conditions: [{ # required
    #           # One of:
    #           equal_to: {
    #             operand_one: { # required
    #               # One of:
    #               field_id: "FieldId"
    #             },
    #             operand_two: { # required
    #               # One of:
    #               string_value: "String",
    #               boolean_value: false,
    #               double_value: 1.0,
    #               empty_value: {
    #               }
    #             },
    #             result: false, # required
    #           },
    #           not_equal_to: {
    #             operand_one: { # required
    #               # One of:
    #               field_id: "FieldId"
    #             },
    #             operand_two: { # required
    #               # One of:
    #               string_value: "String",
    #               boolean_value: false,
    #               double_value: 1.0,
    #               empty_value: {
    #               }
    #             },
    #             result: false, # required
    #           }
    #         }]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_case_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCaseRuleResponse]
    def update_case_rule(params = {}, options = {})
      request = build_request(:update_case_rule, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing field. </p>
    # @param [Hash, Types::UpdateFieldInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :field_id
    #   <p>The unique identifier of a field.</p>
    # @option params [String] :name
    #   <p>The name of the field.</p>
    # @option params [String] :description
    #   <p>The description of a field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     name: "FieldName",
    #     description: "FieldDescription"
    #   }
    #   options = {}
    #   response = client.update_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFieldOutput]
    def update_field(params = {}, options = {})
      request = build_request(:update_field, params)
      request.send_request(options)
    end

    # <p>Updates the attributes of an existing layout.</p> <p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p> <p>A <code>ValidationException</code> is returned when you add non-existent <code>fieldIds</code> to a layout.</p> <note> <p>Title and Status fields cannot be part of layouts because they are not configurable.</p> </note>
    # @param [Hash, Types::UpdateLayoutInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :layout_id
    #   <p>The unique identifier of the layout.</p>
    # @option params [String] :name
    #   <p>The name of the layout. It must be unique per domain.</p>
    # @option params [Types::LayoutContent] :content
    #   <p>Information about which fields will be present in the layout, the order of the fields.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #     name: "LayoutName",
    #     content: {
    #       # One of:
    #       basic: {
    #         top_panel: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         },
    #         more_info: {
    #           sections: [{
    #             # One of:
    #             field_group: {
    #               name: "String",
    #               fields: [ # required
    #                 {
    #                   id: "FieldId", # required
    #                 }
    #               ]
    #             }
    #           }]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLayoutOutput]
    def update_layout(params = {}, options = {})
      request = build_request(:update_layout, params)
      request.send_request(options)
    end

    # <p>Updates the attributes of an existing template. The template attributes that can be modified include <code>name</code>, <code>description</code>, <code>layoutConfiguration</code>, <code>requiredFields</code>, and <code>status</code>. At least one of these attributes must not be null. If a null value is provided for a given attribute, that attribute is ignored and its current value is preserved.</p> <p>Other template APIs are:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html">CreateTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html">DeleteTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html">GetTemplate</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html">ListTemplates</a> </p> </li> </ul>
    # @param [Hash, Types::UpdateTemplateInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    # @option params [String] :template_id
    #   <p>A unique identifier for the template.</p>
    # @option params [String] :name
    #   <p>The name of the template. It must be unique per domain.</p>
    # @option params [String] :description
    #   <p>A brief description of the template.</p>
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   <p>Configuration of layouts associated to the template.</p>
    # @option params [Array<Types::RequiredField>] :required_fields
    #   <p>A list of fields that must contain a value for a case to be successfully created with this template.</p>
    # @option params [String] :status
    #   <p>The status of the template.</p>
    # @option params [Array<Types::TemplateRule>] :rules
    #   <p>A list of case rules (also known as <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">case field conditions</a>) on a template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #     name: "TemplateName",
    #     description: "TemplateDescription",
    #     layout_configuration: {
    #       default_layout: "LayoutId"
    #     },
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       }
    #     ],
    #     status: "TemplateStatus",
    #     rules: [
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         field_id: "FieldId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTemplateOutput]
    def update_template(params = {}, options = {})
      request = build_request(:update_template, params)
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
      context[:gem_name] = 'aws-sdk-connectcases'
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
