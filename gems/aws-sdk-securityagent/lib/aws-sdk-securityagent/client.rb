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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:securityagent)

module Aws::SecurityAgent
  # An API client for Aws::SecurityAgent.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SecurityAgent
    @identifier = :securityagent

    add_plugin(::Aws::SecurityAgent::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SecurityAgent::EndpointProvider)
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

    # <p>Uploads an artifact to an agent space. Artifacts provide additional context for security testing, such as architecture diagrams, API specifications, or configuration files.</p>
    # @param [Hash, Types::AddArtifactInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to add the artifact to.</p>
    # @option params [String] :artifact_content
    #   <p>The binary content of the artifact to upload.</p>
    # @option params [String] :artifact_type
    #   <p>The file type of the artifact. Valid values include TXT, PNG, JPEG, MD, PDF, DOCX, DOC, JSON, and YAML.</p>
    # @option params [String] :file_name
    #   <p>The file name of the artifact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_content: "data", # required
    #     artifact_type: "TXT" # One of: ["TXT", "PNG", "JPEG", "MD", "PDF", "DOCX", "DOC", "JSON", "YAML"], # required
    #     file_name: "String", # required
    #   }
    #   options = {}
    #   response = client.add_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifact_id: "ArtifactId", # required
    #   }
    # @return [Types::AddArtifactOutput]
    def add_artifact(params = {}, options = {})
      request = build_request(:add_artifact, params)
      request.send_request(options)
    end

    # <p>Batch creates security requirements in a customer managed pack.</p>
    # @param [Hash, Types::BatchCreateSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to add requirements to.</p>
    # @option params [Array<Types::CreateSecurityRequirementEntry>] :security_requirements
    #   <p>The list of security requirements to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirements: [ # required
    #       {
    #         name: "SecurityRequirementName", # required
    #         description: "String", # required
    #         domain: "String", # required
    #         evaluation: "String", # required
    #         remediation: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_requirements: [ # required
    #       {
    #         pack_id: "SecurityRequirementPackId", # required
    #         name: "SecurityRequirementName", # required
    #         description: "String", # required
    #         domain: "String", # required
    #         evaluation: "String", # required
    #         remediation: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         security_requirement_name: "SecurityRequirementName", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateSecurityRequirementsOutput]
    def batch_create_security_requirements(params = {}, options = {})
      request = build_request(:batch_create_security_requirements, params)
      request.send_request(options)
    end

    # <p>Deletes one or more code reviews from an agent space.</p>
    # @param [Hash, Types::BatchDeleteCodeReviewsInput] params
    # @option params [Array<String>] :code_review_ids
    #   <p>The list of code review identifiers to delete.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the code reviews to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_delete_code_reviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted: ["String"],
    #     failed: [
    #       {
    #         code_review_id: "String",
    #         reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteCodeReviewsOutput]
    def batch_delete_code_reviews(params = {}, options = {})
      request = build_request(:batch_delete_code_reviews, params)
      request.send_request(options)
    end

    # <p>Deletes one or more pentests from an agent space.</p>
    # @param [Hash, Types::BatchDeletePentestsInput] params
    # @option params [Array<String>] :pentest_ids
    #   <p>The list of pentest identifiers to delete.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentests to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pentest_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_delete_pentests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted: [
    #       {
    #         pentest_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         assets: { # required
    #           endpoints: [
    #             {
    #               uri: "String"
    #             }
    #           ],
    #           actors: [
    #             {
    #               identifier: "String",
    #               uris: ["String"],
    #               authentication: {
    #                 provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #                 value: "String"
    #               },
    #               description: "String",
    #               enable_email_mfa: false,
    #               mfa_forwarding_address: "SensitiveEmailAddress"
    #             }
    #           ],
    #           documents: [
    #             {
    #               s3_location: "String",
    #               artifact_id: "String",
    #               integrated_document: {
    #                 integration_id: "String", # required
    #                 resource_id: "String", # required
    #               }
    #             }
    #           ],
    #           source_code: [
    #             {
    #               s3_location: "String"
    #             }
    #           ],
    #           integrated_repositories: [
    #             {
    #               integration_id: "String", # required
    #               provider_resource_id: "String", # required
    #               branch: "String"
    #             }
    #           ],
    #           trusted_ca_certificates: [
    #             {
    #               source: { # required
    #                 # One of:
    #                 inline_pem: "CaCertificatePem",
    #                 artifact_id: "String",
    #                 s3_location: "String"
    #               }
    #             }
    #           ]
    #         },
    #         exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         vpc_config: {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         },
    #         network_traffic_config: {
    #           rules: [
    #             {
    #               effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #               pattern: "String",
    #               network_traffic_rule_type: "URL" # One of: ["URL"]
    #             }
    #           ],
    #           custom_headers: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #         clean_up_strategy: "BEST_EFFORT_DELETE" # One of: ["BEST_EFFORT_DELETE", "RETAIN_ALL"],
    #         disable_managed_skills: ["FINDING_PERSONALIZATION" # One of: ["FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"]],
    #         max_task_hours: 1.0,
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         report_filters: {
    #           risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #           confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #           statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #           risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #           finding_types: ["ReportFilterValue"],
    #           task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #           annotation_notes: false,
    #           compliance_report: false
    #         },
    #         cicd_configuration: {
    #           enabled: false
    #         },
    #         test_scope: {
    #           type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     failed: [
    #       {
    #         pentest_id: "String",
    #         reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeletePentestsOutput]
    def batch_delete_pentests(params = {}, options = {})
      request = build_request(:batch_delete_pentests, params)
      request.send_request(options)
    end

    # <p>Batch deletes security requirements from a customer managed pack.</p>
    # @param [Hash, Types::BatchDeleteSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to remove requirements from.</p>
    # @option params [Array<String>] :security_requirement_names
    #   <p>The list of security requirement names to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirement_names: ["SecurityRequirementName"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_security_requirement_names: ["SecurityRequirementName"], # required
    #     errors: [ # required
    #       {
    #         security_requirement_name: "SecurityRequirementName", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteSecurityRequirementsOutput]
    def batch_delete_security_requirements(params = {}, options = {})
      request = build_request(:batch_delete_security_requirements, params)
      request.send_request(options)
    end

    # <p>Deletes one or more threat models from an agent space.</p>
    # @param [Hash, Types::BatchDeleteThreatModelsInput] params
    # @option params [Array<String>] :threat_model_ids
    #   <p>The list of threat model identifiers to delete.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat models to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_model_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_delete_threat_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted: ["String"],
    #     failed: [
    #       {
    #         threat_model_id: "String",
    #         reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteThreatModelsOutput]
    def batch_delete_threat_models(params = {}, options = {})
      request = build_request(:batch_delete_threat_models, params)
      request.send_request(options)
    end

    # <p>Disassociates a batch of findings from their linked issues.</p>
    # @param [Hash, Types::BatchDisassociateFindingIssueInput] params
    # @option params [String] :agent_space_id
    #   <p>The identifier of the agent space where the job exists.</p>
    # @option params [String] :pentest_job_id
    #   <p>The identifier of the penetration test job. This parameter is mutually exclusive with <code>codeReviewJobId</code>.</p>
    # @option params [String] :code_review_job_id
    #   <p>The identifier of the code review job. This parameter is mutually exclusive with <code>pentestJobId</code>.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The identifiers of the findings to disassociate from their issues. Each must belong to the specified job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     finding_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_finding_issue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         finding_id: "String", # required
    #         code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"], # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateFindingIssueOutput]
    def batch_disassociate_finding_issue(params = {}, options = {})
      request = build_request(:batch_disassociate_finding_issue, params)
      request.send_request(options)
    end

    # <p>Exports a batch of findings to the connected issue tracker as issues.</p>
    # @param [Hash, Types::BatchExportFindingsInput] params
    # @option params [String] :agent_space_id
    #   <p>The identifier of the agent space where the job exists.</p>
    # @option params [String] :pentest_job_id
    #   <p>The identifier of the penetration test job. This parameter is mutually exclusive with <code>codeReviewJobId</code>.</p>
    # @option params [String] :code_review_job_id
    #   <p>The identifier of the code review job. This parameter is mutually exclusive with <code>pentestJobId</code>.</p>
    # @option params [Types::IssueDestination] :issue_destination
    #   <p>The destination issue-tracker project the findings are exported to. Must be a connected capability of the agent space.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The identifiers of the findings to export. Each must belong to the specified job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     issue_destination: { # required
    #       integration_id: "String", # required
    #       project_key: "String", # required
    #     },
    #     finding_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_export_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         finding_id: "String", # required
    #         linked_issue: { # required
    #           provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"],
    #           integration_id: "String",
    #           project_key: "String",
    #           issue_key: "String",
    #           issue_id: "String",
    #           issue_url: "String",
    #           site_url: "String"
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         finding_id: "String", # required
    #         code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"], # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchExportFindingsOutput]
    def batch_export_findings(params = {}, options = {})
      request = build_request(:batch_export_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more agent spaces.</p>
    # @param [Hash, Types::BatchGetAgentSpacesInput] params
    # @option params [Array<String>] :agent_space_ids
    #   <p>The list of agent space identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_ids: ["AgentSpaceId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_agent_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_spaces: [
    #       {
    #         agent_space_id: "AgentSpaceId", # required
    #         name: "String", # required
    #         description: "String",
    #         aws_resources: {
    #           vpcs: [
    #             {
    #               vpc_arn: "VpcArn",
    #               security_group_arns: ["SecurityGroupArn"],
    #               subnet_arns: ["SubnetArn"]
    #             }
    #           ],
    #           log_groups: ["LogGroupArn"],
    #           s3_buckets: ["S3BucketArn"],
    #           secret_arns: ["SecretArn"],
    #           lambda_function_arns: ["LambdaFunctionArn"],
    #           iam_roles: ["ServiceRole"]
    #         },
    #         target_domain_ids: ["String"],
    #         code_review_settings: {
    #           controls_scanning: false, # required
    #           general_purpose_scanning: false, # required
    #         },
    #         kms_key_id: "KmsKeyId",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["AgentSpaceId"]
    #   }
    # @return [Types::BatchGetAgentSpacesOutput]
    def batch_get_agent_spaces(params = {}, options = {})
      request = build_request(:batch_get_agent_spaces, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata for one or more artifacts in an agent space.</p>
    # @param [Hash, Types::BatchGetArtifactMetadataInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifacts.</p>
    # @option params [Array<String>] :artifact_ids
    #   <p>The list of artifact identifiers to retrieve metadata for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_ids: ["ArtifactId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_artifact_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifact_metadata_list: [ # required
    #       {
    #         agent_space_id: "AgentSpaceId", # required
    #         artifact_id: "ArtifactId", # required
    #         file_name: "String", # required
    #         updated_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetArtifactMetadataOutput]
    def batch_get_artifact_metadata(params = {}, options = {})
      request = build_request(:batch_get_artifact_metadata, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more tasks within a code review job.</p>
    # @param [Hash, Types::BatchGetCodeReviewJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    # @option params [Array<String>] :code_review_job_task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     code_review_job_task_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_code_review_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_job_tasks: [
    #       {
    #         task_id: "String", # required
    #         code_review_id: "String",
    #         code_review_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         description: "String",
    #         categories: [
    #           {
    #             name: "String",
    #             is_primary: false
    #           }
    #         ],
    #         risk_type: "CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"],
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         logs_location: {
    #           log_type: "CLOUDWATCH" # One of: ["CLOUDWATCH"],
    #           cloud_watch_log: {
    #             log_group: "String",
    #             log_stream: "String"
    #           }
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetCodeReviewJobTasksOutput]
    def batch_get_code_review_job_tasks(params = {}, options = {})
      request = build_request(:batch_get_code_review_job_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more code review jobs in an agent space.</p>
    # @param [Hash, Types::BatchGetCodeReviewJobsInput] params
    # @option params [Array<String>] :code_review_job_ids
    #   <p>The list of code review job identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_code_review_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_jobs: [
    #       {
    #         code_review_job_id: "String",
    #         code_review_id: "String",
    #         title: "String",
    #         overview: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         documents: [
    #           {
    #             s3_location: "String",
    #             artifact_id: "String",
    #             integrated_document: {
    #               integration_id: "String", # required
    #               resource_id: "String", # required
    #             }
    #           }
    #         ],
    #         source_code: [
    #           {
    #             s3_location: "String"
    #           }
    #         ],
    #         steps: [
    #           {
    #             name: "PREFLIGHT" # One of: ["PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"],
    #             status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOPPED"],
    #             created_at: Time.now,
    #             updated_at: Time.now
    #           }
    #         ],
    #         execution_context: [
    #           {
    #             context_type: "ERROR" # One of: ["ERROR", "CLIENT_ERROR", "WARNING", "INFO"],
    #             context: "String",
    #             timestamp: Time.now
    #           }
    #         ],
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         error_information: {
    #           code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"],
    #           message: "String"
    #         },
    #         integrated_repositories: [
    #           {
    #             integration_id: "String", # required
    #             provider_resource_id: "String", # required
    #             branch: "String"
    #           }
    #         ],
    #         code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #         max_task_hours: 1.0,
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetCodeReviewJobsOutput]
    def batch_get_code_review_jobs(params = {}, options = {})
      request = build_request(:batch_get_code_review_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more code reviews in an agent space.</p>
    # @param [Hash, Types::BatchGetCodeReviewsInput] params
    # @option params [Array<String>] :code_review_ids
    #   <p>The list of code review identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the code reviews.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_code_reviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_reviews: [
    #       {
    #         code_review_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         assets: { # required
    #           endpoints: [
    #             {
    #               uri: "String"
    #             }
    #           ],
    #           actors: [
    #             {
    #               identifier: "String",
    #               uris: ["String"],
    #               authentication: {
    #                 provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #                 value: "String"
    #               },
    #               description: "String",
    #               enable_email_mfa: false,
    #               mfa_forwarding_address: "SensitiveEmailAddress"
    #             }
    #           ],
    #           documents: [
    #             {
    #               s3_location: "String",
    #               artifact_id: "String",
    #               integrated_document: {
    #                 integration_id: "String", # required
    #                 resource_id: "String", # required
    #               }
    #             }
    #           ],
    #           source_code: [
    #             {
    #               s3_location: "String"
    #             }
    #           ],
    #           integrated_repositories: [
    #             {
    #               integration_id: "String", # required
    #               provider_resource_id: "String", # required
    #               branch: "String"
    #             }
    #           ],
    #           trusted_ca_certificates: [
    #             {
    #               source: { # required
    #                 # One of:
    #                 inline_pem: "CaCertificatePem",
    #                 artifact_id: "String",
    #                 s3_location: "String"
    #               }
    #             }
    #           ]
    #         },
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #         validation_mode: "DISABLED" # One of: ["DISABLED", "SIMULATED"],
    #         max_task_hours: 1.0,
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         report_filters: {
    #           risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #           confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #           statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #           risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #           finding_types: ["ReportFilterValue"],
    #           task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #           annotation_notes: false,
    #           compliance_report: false
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetCodeReviewsOutput]
    def batch_get_code_reviews(params = {}, options = {})
      request = build_request(:batch_get_code_reviews, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more security findings in an agent space.</p>
    # @param [Hash, Types::BatchGetFindingsInput] params
    # @option params [Array<String>] :finding_ids
    #   <p>The list of finding identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the findings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [
    #       {
    #         finding_id: "String", # required
    #         agent_space_id: "String", # required
    #         pentest_id: "String",
    #         pentest_job_id: "String",
    #         code_review_id: "String",
    #         code_review_job_id: "String",
    #         task_id: "String",
    #         name: "String",
    #         description: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"],
    #         risk_type: "String",
    #         risk_level: "UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #         risk_score: "String",
    #         reasoning: "String",
    #         confidence: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"],
    #         validation_status: "CONFIRMED" # One of: ["CONFIRMED", "NOT_REPRODUCED", "VALIDATION_FAILED", "VALIDATING", "NOT_VALIDATED"],
    #         attack_script: "String",
    #         remediation_code: "String",
    #         code_remediation_task: {
    #           status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #           status_reason: "String",
    #           task_details: [
    #             {
    #               repo_name: "String",
    #               code_diff_link: "String",
    #               pull_request_link: "String"
    #             }
    #           ]
    #         },
    #         last_updated_by: "String",
    #         customer_note: "String",
    #         code_locations: [
    #           {
    #             file_path: "String", # required
    #             line_start: 1,
    #             line_end: 1,
    #             label: "String"
    #           }
    #         ],
    #         verification_script: {
    #           script_type: "String",
    #           script_url: "String",
    #           instructions: "String",
    #           env_vars: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         alignment_rationale: "String",
    #         revalidation_job_ids: ["String"],
    #         original_finding_id: "String",
    #         linked_issue: {
    #           provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"],
    #           integration_id: "String",
    #           project_key: "String",
    #           issue_key: "String",
    #           issue_id: "String",
    #           issue_url: "String",
    #           site_url: "String"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetFindingsOutput]
    def batch_get_findings(params = {}, options = {})
      request = build_request(:batch_get_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more tasks within a pentest job.</p>
    # @param [Hash, Types::BatchGetPentestJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    # @option params [Array<String>] :task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     task_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_pentest_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_id: "String", # required
    #         pentest_id: "String",
    #         pentest_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         description: "String",
    #         categories: [
    #           {
    #             name: "String",
    #             is_primary: false
    #           }
    #         ],
    #         risk_type: "CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"],
    #         target_endpoint: {
    #           uri: "String"
    #         },
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         logs_location: {
    #           log_type: "CLOUDWATCH" # One of: ["CLOUDWATCH"],
    #           cloud_watch_log: {
    #             log_group: "String",
    #             log_stream: "String"
    #           }
    #         },
    #         task_hours: 1.0,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetPentestJobTasksOutput]
    def batch_get_pentest_job_tasks(params = {}, options = {})
      request = build_request(:batch_get_pentest_job_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more pentest jobs in an agent space.</p>
    # @param [Hash, Types::BatchGetPentestJobsInput] params
    # @option params [Array<String>] :pentest_job_ids
    #   <p>The list of pentest job identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pentest_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_pentest_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentest_jobs: [
    #       {
    #         pentest_job_id: "String",
    #         pentest_id: "String",
    #         title: "String",
    #         overview: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         endpoints: [
    #           {
    #             uri: "String"
    #           }
    #         ],
    #         actors: [
    #           {
    #             identifier: "String",
    #             uris: ["String"],
    #             authentication: {
    #               provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #               value: "String"
    #             },
    #             description: "String",
    #             enable_email_mfa: false,
    #             mfa_forwarding_address: "SensitiveEmailAddress"
    #           }
    #         ],
    #         documents: [
    #           {
    #             s3_location: "String",
    #             artifact_id: "String",
    #             integrated_document: {
    #               integration_id: "String", # required
    #               resource_id: "String", # required
    #             }
    #           }
    #         ],
    #         source_code: [
    #           {
    #             s3_location: "String"
    #           }
    #         ],
    #         exclude_paths: [
    #           {
    #             uri: "String"
    #           }
    #         ],
    #         allowed_domains: [
    #           {
    #             uri: "String"
    #           }
    #         ],
    #         exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #         steps: [
    #           {
    #             name: "PREFLIGHT" # One of: ["PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"],
    #             status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOPPED"],
    #             created_at: Time.now,
    #             updated_at: Time.now
    #           }
    #         ],
    #         execution_context: [
    #           {
    #             context_type: "ERROR" # One of: ["ERROR", "CLIENT_ERROR", "WARNING", "INFO"],
    #             context: "String",
    #             timestamp: Time.now
    #           }
    #         ],
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         vpc_config: {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         },
    #         network_traffic_config: {
    #           rules: [
    #             {
    #               effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #               pattern: "String",
    #               network_traffic_rule_type: "URL" # One of: ["URL"]
    #             }
    #           ],
    #           custom_headers: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         error_information: {
    #           code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"],
    #           message: "String"
    #         },
    #         integrated_repositories: [
    #           {
    #             integration_id: "String", # required
    #             provider_resource_id: "String", # required
    #             branch: "String"
    #           }
    #         ],
    #         trusted_ca_certificates: [
    #           {
    #             source: { # required
    #               # One of:
    #               inline_pem: "CaCertificatePem",
    #               artifact_id: "String",
    #               s3_location: "String"
    #             }
    #           }
    #         ],
    #         code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #         clean_up_strategy: "BEST_EFFORT_DELETE" # One of: ["BEST_EFFORT_DELETE", "RETAIN_ALL"],
    #         disable_managed_skills: ["FINDING_PERSONALIZATION" # One of: ["FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"]],
    #         max_task_hours: 1.0,
    #         job_type: "FULL" # One of: ["FULL", "REVALIDATION", "CICD"],
    #         selected_finding_ids: ["String"],
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         report_url: "String",
    #         scope_result: {
    #           decision: "IN_SCOPE" # One of: ["IN_SCOPE", "SCOPED_OUT", "SCOPE_CONFLICT"], # required
    #           reason: "String", # required
    #         },
    #         scope_changes: [
    #           {
    #             integration_id: "String", # required
    #             provider_resource_id: "String", # required
    #             base_commit_sha: "String",
    #             head_commit_sha: "String", # required
    #             trigger_run_id: "String"
    #           }
    #         ],
    #         cicd_configuration: {
    #           enabled: false
    #         },
    #         test_scope: {
    #           type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetPentestJobsOutput]
    def batch_get_pentest_jobs(params = {}, options = {})
      request = build_request(:batch_get_pentest_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more pentests in an agent space.</p>
    # @param [Hash, Types::BatchGetPentestsInput] params
    # @option params [Array<String>] :pentest_ids
    #   <p>The list of pentest identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pentest_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_pentests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentests: [
    #       {
    #         pentest_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         assets: { # required
    #           endpoints: [
    #             {
    #               uri: "String"
    #             }
    #           ],
    #           actors: [
    #             {
    #               identifier: "String",
    #               uris: ["String"],
    #               authentication: {
    #                 provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #                 value: "String"
    #               },
    #               description: "String",
    #               enable_email_mfa: false,
    #               mfa_forwarding_address: "SensitiveEmailAddress"
    #             }
    #           ],
    #           documents: [
    #             {
    #               s3_location: "String",
    #               artifact_id: "String",
    #               integrated_document: {
    #                 integration_id: "String", # required
    #                 resource_id: "String", # required
    #               }
    #             }
    #           ],
    #           source_code: [
    #             {
    #               s3_location: "String"
    #             }
    #           ],
    #           integrated_repositories: [
    #             {
    #               integration_id: "String", # required
    #               provider_resource_id: "String", # required
    #               branch: "String"
    #             }
    #           ],
    #           trusted_ca_certificates: [
    #             {
    #               source: { # required
    #                 # One of:
    #                 inline_pem: "CaCertificatePem",
    #                 artifact_id: "String",
    #                 s3_location: "String"
    #               }
    #             }
    #           ]
    #         },
    #         exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         vpc_config: {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         },
    #         network_traffic_config: {
    #           rules: [
    #             {
    #               effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #               pattern: "String",
    #               network_traffic_rule_type: "URL" # One of: ["URL"]
    #             }
    #           ],
    #           custom_headers: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #         clean_up_strategy: "BEST_EFFORT_DELETE" # One of: ["BEST_EFFORT_DELETE", "RETAIN_ALL"],
    #         disable_managed_skills: ["FINDING_PERSONALIZATION" # One of: ["FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"]],
    #         max_task_hours: 1.0,
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         report_filters: {
    #           risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #           confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #           statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #           risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #           finding_types: ["ReportFilterValue"],
    #           task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #           annotation_notes: false,
    #           compliance_report: false
    #         },
    #         cicd_configuration: {
    #           enabled: false
    #         },
    #         test_scope: {
    #           type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetPentestsOutput]
    def batch_get_pentests(params = {}, options = {})
      request = build_request(:batch_get_pentests, params)
      request.send_request(options)
    end

    # <p>Batch retrieves security requirements from a pack.</p>
    # @param [Hash, Types::BatchGetSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to retrieve requirements from.</p>
    # @option params [Array<String>] :security_requirement_names
    #   <p>The list of security requirement names to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirement_names: ["SecurityRequirementName"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_requirements: [ # required
    #       {
    #         pack_id: "SecurityRequirementPackId", # required
    #         name: "SecurityRequirementName", # required
    #         description: "String", # required
    #         domain: "String", # required
    #         evaluation: "String", # required
    #         remediation: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         security_requirement_name: "SecurityRequirementName", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetSecurityRequirementsOutput]
    def batch_get_security_requirements(params = {}, options = {})
      request = build_request(:batch_get_security_requirements, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more target domains.</p>
    # @param [Hash, Types::BatchGetTargetDomainsInput] params
    # @option params [Array<String>] :target_domain_ids
    #   <p>The list of target domain identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_domain_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_target_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domains: [
    #       {
    #         target_domain_id: "TargetDomainId", # required
    #         domain_name: "String", # required
    #         verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED", "UNREACHABLE"],
    #         verification_status_reason: "String",
    #         verification_details: {
    #           method: "DNS_TXT" # One of: ["DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"],
    #           dns_txt: {
    #             token: "String",
    #             dns_record_name: "String",
    #             dns_record_type: "TXT" # One of: ["TXT"]
    #           },
    #           http_route: {
    #             token: "String",
    #             route_path: "String"
    #           }
    #         },
    #         created_at: Time.now,
    #         verified_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetTargetDomainsOutput]
    def batch_get_target_domains(params = {}, options = {})
      request = build_request(:batch_get_target_domains, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more tasks within a threat model job.</p>
    # @param [Hash, Types::BatchGetThreatModelJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    # @option params [Array<String>] :threat_model_job_task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     threat_model_job_task_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_threat_model_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_job_tasks: [
    #       {
    #         task_id: "String", # required
    #         threat_model_id: "String",
    #         threat_model_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         description: "String",
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         logs_location: {
    #           log_type: "CLOUDWATCH" # One of: ["CLOUDWATCH"],
    #           cloud_watch_log: {
    #             log_group: "String",
    #             log_stream: "String"
    #           }
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetThreatModelJobTasksOutput]
    def batch_get_threat_model_job_tasks(params = {}, options = {})
      request = build_request(:batch_get_threat_model_job_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more threat model jobs in an agent space.</p>
    # @param [Hash, Types::BatchGetThreatModelJobsInput] params
    # @option params [Array<String>] :threat_model_job_ids
    #   <p>The list of threat model job identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_model_job_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_threat_model_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_jobs: [
    #       {
    #         threat_model_job_id: "String",
    #         threat_model_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         execution_start_time: Time.now,
    #         execution_end_time: Time.now,
    #         source_code: [
    #           {
    #             s3_location: "String"
    #           }
    #         ],
    #         integrated_repositories: [
    #           {
    #             integration_id: "String", # required
    #             provider_resource_id: "String", # required
    #             branch: "String"
    #           }
    #         ],
    #         documents: [
    #           {
    #             s3_location: "String",
    #             artifact_id: "String",
    #             integrated_document: {
    #               integration_id: "String", # required
    #               resource_id: "String", # required
    #             }
    #           }
    #         ],
    #         scope_docs: [
    #           {
    #             s3_location: "String",
    #             artifact_id: "String",
    #             integrated_document: {
    #               integration_id: "String", # required
    #               resource_id: "String", # required
    #             }
    #           }
    #         ],
    #         error_information: {
    #           code: "CLIENT_ERROR" # One of: ["CLIENT_ERROR", "INTERNAL_ERROR", "STOPPED_BY_USER"],
    #           message: "String"
    #         },
    #         system_overview: "String",
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         }
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetThreatModelJobsOutput]
    def batch_get_threat_model_jobs(params = {}, options = {})
      request = build_request(:batch_get_threat_model_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more threat models in an agent space.</p>
    # @param [Hash, Types::BatchGetThreatModelsInput] params
    # @option params [Array<String>] :threat_model_ids
    #   <p>The list of threat model identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat models.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_model_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_threat_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_models: [
    #       {
    #         threat_model_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         description: "String",
    #         assets: { # required
    #           endpoints: [
    #             {
    #               uri: "String"
    #             }
    #           ],
    #           actors: [
    #             {
    #               identifier: "String",
    #               uris: ["String"],
    #               authentication: {
    #                 provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #                 value: "String"
    #               },
    #               description: "String",
    #               enable_email_mfa: false,
    #               mfa_forwarding_address: "SensitiveEmailAddress"
    #             }
    #           ],
    #           documents: [
    #             {
    #               s3_location: "String",
    #               artifact_id: "String",
    #               integrated_document: {
    #                 integration_id: "String", # required
    #                 resource_id: "String", # required
    #               }
    #             }
    #           ],
    #           source_code: [
    #             {
    #               s3_location: "String"
    #             }
    #           ],
    #           integrated_repositories: [
    #             {
    #               integration_id: "String", # required
    #               provider_resource_id: "String", # required
    #               branch: "String"
    #             }
    #           ],
    #           trusted_ca_certificates: [
    #             {
    #               source: { # required
    #                 # One of:
    #                 inline_pem: "CaCertificatePem",
    #                 artifact_id: "String",
    #                 s3_location: "String"
    #               }
    #             }
    #           ]
    #         },
    #         scope_docs: [
    #           {
    #             s3_location: "String",
    #             artifact_id: "String",
    #             integrated_document: {
    #               integration_id: "String", # required
    #               resource_id: "String", # required
    #             }
    #           }
    #         ],
    #         service_role: "ServiceRole",
    #         log_config: {
    #           log_group: "String",
    #           log_stream: "String"
    #         },
    #         report_destination: {
    #           integration_id: "String", # required
    #           container_id: "String", # required
    #           parent_id: "String",
    #           document_id: "String"
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetThreatModelsOutput]
    def batch_get_threat_models(params = {}, options = {})
      request = build_request(:batch_get_threat_models, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more threats.</p>
    # @param [Hash, Types::BatchGetThreatsInput] params
    # @option params [Array<String>] :threat_ids
    #   <p>The list of threat identifiers to retrieve.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_ids: ["String"], # required
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.batch_get_threats(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threats: [
    #       {
    #         threat_id: "String",
    #         threat_job_id: "String",
    #         title: "String",
    #         statement: "String",
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #         status: "OPEN" # One of: ["OPEN", "RESOLVED", "DISMISSED"],
    #         comments: "String",
    #         threat_source: "String",
    #         prerequisites: "String",
    #         threat_action: "String",
    #         threat_impact: "String",
    #         impacted_goal: ["String"],
    #         impacted_assets: ["String"],
    #         anchor: {
    #           kind: "String",
    #           id: "String",
    #           package_id: "String"
    #         },
    #         evidence: [
    #           {
    #             package_id: "String",
    #             path: "String"
    #           }
    #         ],
    #         stride: ["SPOOFING" # One of: ["SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"]],
    #         recommendation: "String",
    #         created_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #         updated_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     not_found: ["String"]
    #   }
    # @return [Types::BatchGetThreatsOutput]
    def batch_get_threats(params = {}, options = {})
      request = build_request(:batch_get_threats, params)
      request.send_request(options)
    end

    # <p>Batch updates security requirements within a customer managed pack.</p>
    # @param [Hash, Types::BatchUpdateSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack containing the requirements to update.</p>
    # @option params [Array<Types::UpdateSecurityRequirementEntry>] :security_requirements
    #   <p>The list of security requirement updates to apply.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     security_requirements: [ # required
    #       {
    #         name: "SecurityRequirementName", # required
    #         description: "String",
    #         domain: "String",
    #         evaluation: "String",
    #         remediation: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     updated_security_requirement_names: ["SecurityRequirementName"], # required
    #     errors: [ # required
    #       {
    #         security_requirement_name: "SecurityRequirementName", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateSecurityRequirementsOutput]
    def batch_update_security_requirements(params = {}, options = {})
      request = build_request(:batch_update_security_requirements, params)
      request.send_request(options)
    end

    # <p>Creates a new agent space. An agent space is a dedicated workspace for securing a specific application.</p>
    # @param [Hash, Types::CreateAgentSpaceInput] params
    # @option params [String] :name
    #   <p>The name of the agent space.</p>
    # @option params [String] :description
    #   <p>A description of the agent space.</p>
    # @option params [Types::AWSResources] :aws_resources
    #   <p>The AWS resources to associate with the agent space.</p>
    # @option params [Array<String>] :target_domain_ids
    #   <p>The list of target domain identifiers to associate with the agent space.</p>
    # @option params [Types::CodeReviewSettings] :code_review_settings
    #   <p>The code review settings for the agent space.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of the AWS KMS key to use for encrypting data in the agent space.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the agent space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AgentName", # required
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         }
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"]
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     },
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentName", # required
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         }
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"]
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     },
    #     kms_key_id: "KmsKeyId",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateAgentSpaceOutput]
    def create_agent_space(params = {}, options = {})
      request = build_request(:create_agent_space, params)
      request.send_request(options)
    end

    # <p>Creates a new application. An application is the top-level organizational unit that supports IAM Identity Center integration.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :idc_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center instance to associate with the application.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the application.</p>
    # @option params [String] :default_kms_key_id
    #   <p>The identifier of the default AWS KMS key to use for encrypting data in the application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     idc_instance_arn: "IdCInstanceArn",
    #     role_arn: "RoleArn",
    #     default_kms_key_id: "DefaultKmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a new code review configuration in an agent space. A code review defines the parameters for automated security-focused code analysis.</p>
    # @param [Hash, Types::CreateCodeReviewInput] params
    # @option params [String] :title
    #   <p>The title of the code review.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to create the code review in.</p>
    # @option params [Types::Assets] :assets
    #   <p>The assets to include in the code review, such as documents and source code.</p>
    # @option params [String] :service_role
    #   <p>The IAM service role to use for the code review.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The CloudWatch Logs configuration for the code review.</p>
    # @option params [String] :code_remediation_strategy
    #   <p>The code remediation strategy for the code review. Valid values are AUTOMATIC and DISABLED.</p>
    # @option params [String] :validation_mode
    #   <p>The validation mode for the code review. Valid values are SIMULATED and DISABLED.</p>
    # @option params [Float] :max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this code review. Must be a positive number. If not set, jobs run to completion with no budget cap.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @option params [Types::ReportFilters] :report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     assets: { # required
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     validation_mode: "DISABLED" # One of: ["DISABLED", "SIMULATED"],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_code_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_id: "String", # required
    #     title: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     agent_space_id: "String",
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     validation_mode: "DISABLED" # One of: ["DISABLED", "SIMULATED"],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     }
    #   }
    # @return [Types::CreateCodeReviewOutput]
    def create_code_review(params = {}, options = {})
      request = build_request(:create_code_review, params)
      request.send_request(options)
    end

    # <p>Creates a new integration with a third-party provider, such as GitHub, for code review and remediation.</p>
    # @param [Hash, Types::CreateIntegrationInput] params
    # @option params [String] :provider
    #   <p>The integration provider.</p>
    # @option params [Types::ProviderInput] :input
    #   <p>The provider-specific input required to create the integration.</p>
    # @option params [String] :integration_display_name
    #   <p>The display name for the integration.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of the AWS KMS key to use for encrypting data associated with the integration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the integration.</p>
    # @option params [String] :private_connection_name
    #   <p>The name of an active private connection used to reach a self-hosted provider instance over private networking. Specify this when the instance is not publicly reachable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"], # required
    #     input: { # required
    #       # One of:
    #       github: {
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         organization_name: "String",
    #         target_url: "TargetUrl",
    #         installation_id: "String"
    #       },
    #       gitlab: {
    #         access_token: "AccessToken", # required
    #         target_url: "TargetUrl",
    #         token_type: "PERSONAL" # One of: ["PERSONAL", "GROUP"], # required
    #         group_id: "String"
    #       },
    #       bitbucket: {
    #         installation_id: "BitbucketInstallationId", # required
    #         workspace: "BitbucketWorkspace", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #       },
    #       confluence: {
    #         installation_id: "ConfluenceInstallationId", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         site_url: "ConfluenceSiteUrl", # required
    #       },
    #       azure_dev_ops: {
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         organization_name: "String", # required
    #       },
    #       bitbucket_data_center: {
    #         target_url: "TargetUrl", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #       },
    #       jira: {
    #         installation_id: "JiraInstallationId", # required
    #         code: "AuthCode", # required
    #         state: "CsrfState", # required
    #         site_url: "JiraSiteUrl", # required
    #       }
    #     },
    #     integration_display_name: "String", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     private_connection_name: "PrivateConnectionName"
    #   }
    #   options = {}
    #   response = client.create_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_id: "IntegrationId", # required
    #   }
    # @return [Types::CreateIntegrationOutput]
    def create_integration(params = {}, options = {})
      request = build_request(:create_integration, params)
      request.send_request(options)
    end

    # <p>Creates a new membership, granting a user access to an agent space within an application.</p>
    # @param [Hash, Types::CreateMembershipRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to grant access to.</p>
    # @option params [String] :membership_id
    #   <p>The unique identifier for the membership.</p>
    # @option params [String] :member_type
    #   <p>The type of member. Currently, only USER is supported.</p>
    # @option params [Types::MembershipConfig] :config
    #   <p>The configuration for the membership, such as the user role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     membership_id: "MembershipId", # required
    #     member_type: "USER" # One of: ["USER"], # required
    #     config: {
    #       # One of:
    #       user: {
    #         role: "MEMBER" # One of: ["MEMBER"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateMembershipResponse]
    def create_membership(params = {}, options = {})
      request = build_request(:create_membership, params)
      request.send_request(options)
    end

    # <p>Creates a new pentest configuration in an agent space. A pentest defines the security test parameters, including target assets, risk type exclusions, and logging configuration.</p>
    # @param [Hash, Types::CreatePentestInput] params
    # @option params [String] :title
    #   <p>The title of the pentest.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to create the pentest in.</p>
    # @option params [Types::Assets] :assets
    #   <p>The assets to include in the pentest, such as endpoints, actors, documents, and source code.</p>
    # @option params [Array<String>] :exclude_risk_types
    #   <p>The list of risk types to exclude from the pentest.</p>
    # @option params [String] :service_role
    #   <p>The IAM service role to use for the pentest.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The CloudWatch Logs configuration for the pentest.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC configuration for the pentest.</p>
    # @option params [Types::NetworkTrafficConfig] :network_traffic_config
    #   <p>The network traffic configuration for the pentest, including custom headers and traffic rules.</p>
    # @option params [String] :code_remediation_strategy
    #   <p>The code remediation strategy for the pentest. Valid values are AUTOMATIC and DISABLED.</p>
    # @option params [Array<String>] :disable_managed_skills
    #   <p>A list of managed skills to disable for this pentest. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    # @option params [Float] :max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this pentest. Must be a positive number. If not set, jobs run to completion with no budget cap.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @option params [Types::ReportFilters] :report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    # @option params [Types::CiCdConfiguration] :cicd_configuration
    #   <p>The CI/CD pentesting configuration to apply to the pentest.</p>
    # @option params [Types::TestScope] :test_scope
    #   <p>The category of application a pentest targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     vpc_config: {
    #       vpc_arn: "VpcArn",
    #       security_group_arns: ["SecurityGroupArn"],
    #       subnet_arns: ["SubnetArn"]
    #     },
    #     network_traffic_config: {
    #       rules: [
    #         {
    #           effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           pattern: "String",
    #           network_traffic_rule_type: "URL" # One of: ["URL"]
    #         }
    #       ],
    #       custom_headers: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ]
    #     },
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     disable_managed_skills: ["FINDING_PERSONALIZATION" # One of: ["FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"]],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     },
    #     cicd_configuration: {
    #       enabled: false
    #     },
    #     test_scope: {
    #       type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_pentest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentest_id: "String",
    #     title: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     agent_space_id: "String",
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     },
    #     cicd_configuration: {
    #       enabled: false
    #     },
    #     test_scope: {
    #       type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #     }
    #   }
    # @return [Types::CreatePentestOutput]
    def create_pentest(params = {}, options = {})
      request = build_request(:create_pentest, params)
      request.send_request(options)
    end

    # <p>Creates a private connection for reaching a self-hosted provider instance over private networking using Amazon VPC Lattice.</p>
    # @param [Hash, Types::CreatePrivateConnectionInput] params
    # @option params [String] :private_connection_name
    #   <p>A unique name for the private connection within your account.</p>
    # @option params [Types::PrivateConnectionMode] :mode
    #   <p>The configuration for the private connection. Specify either a service-managed or a self-managed mode.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to attach to the private connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     private_connection_name: "PrivateConnectionName", # required
    #     mode: { # required
    #       # One of:
    #       service_managed: {
    #         host_address: "HostAddress", # required
    #         vpc_id: "PrivateConnectionVpcId", # required
    #         subnet_ids: ["PrivateConnectionSubnetId"], # required
    #         security_group_ids: ["PrivateConnectionSecurityGroupId"],
    #         ip_address_type: "IPV4" # One of: ["IPV4", "IPV6", "DUAL_STACK"],
    #         ipv4_addresses_per_eni: 1,
    #         port_ranges: ["PortRange"],
    #         certificate: "CertificateChain",
    #         dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"]
    #       },
    #       self_managed: {
    #         resource_configuration_id: "ResourceConfigurationId", # required
    #         certificate: "CertificateChain"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     resource_gateway_id: "ResourceGatewayId",
    #     host_address: "HostAddress",
    #     vpc_id: "PrivateConnectionVpcId",
    #     resource_configuration_id: "ResourceConfigurationId",
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreatePrivateConnectionOutput]
    def create_private_connection(params = {}, options = {})
      request = build_request(:create_private_connection, params)
      request.send_request(options)
    end

    # <p>Creates a customer managed security requirement pack.</p>
    # @param [Hash, Types::CreateSecurityRequirementPackInput] params
    # @option params [String] :name
    #   <p>The name of the security requirement pack.</p>
    # @option params [String] :description
    #   <p>A description of the security requirement pack.</p>
    # @option params [String] :status
    #   <p>The status of the pack. Defaults to ENABLED if not provided.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt pack contents.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the security requirement pack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SecurityRequirementPackName", # required
    #     description: "String",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_security_requirement_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pack_id: "SecurityRequirementPackId", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     kms_key_id: "KmsKeyId"
    #   }
    # @return [Types::CreateSecurityRequirementPackOutput]
    def create_security_requirement_pack(params = {}, options = {})
      request = build_request(:create_security_requirement_pack, params)
      request.send_request(options)
    end

    # <p>Creates a new target domain for penetration testing. A target domain is a web domain that must be registered and verified before it can be tested.</p>
    # @param [Hash, Types::CreateTargetDomainInput] params
    # @option params [String] :target_domain_name
    #   <p>The domain name to register as a target domain.</p>
    # @option params [String] :verification_method
    #   <p>The method to use for verifying domain ownership. Valid values are DNS_TXT, HTTP_ROUTE, and PRIVATE_VPC.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the target domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_domain_name: "String", # required
    #     verification_method: "DNS_TXT" # One of: ["DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_target_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domain_id: "TargetDomainId", # required
    #     domain_name: "String", # required
    #     verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED", "UNREACHABLE"], # required
    #     verification_status_reason: "String",
    #     verification_details: {
    #       method: "DNS_TXT" # One of: ["DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"],
    #       dns_txt: {
    #         token: "String",
    #         dns_record_name: "String",
    #         dns_record_type: "TXT" # One of: ["TXT"]
    #       },
    #       http_route: {
    #         token: "String",
    #         route_path: "String"
    #       }
    #     },
    #     created_at: Time.now,
    #     verified_at: Time.now
    #   }
    # @return [Types::CreateTargetDomainOutput]
    def create_target_domain(params = {}, options = {})
      request = build_request(:create_target_domain, params)
      request.send_request(options)
    end

    # <p>Creates a new threat under a threat model job.</p>
    # @param [Hash, Types::CreateThreatInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :threat_job_id
    #   <p>The unique identifier of the threat model job the threat belongs to.</p>
    # @option params [String] :title
    #   <p>A short title summarizing the threat.</p>
    # @option params [String] :statement
    #   <p>The natural-language threat statement.</p>
    # @option params [String] :severity
    #   <p>The severity level of the threat.</p>
    # @option params [String] :comments
    #   <p>Optional customer comment on the threat.</p>
    # @option params [Array<String>] :stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    # @option params [String] :threat_source
    #   <p>The actor or origin of the threat.</p>
    # @option params [String] :prerequisites
    #   <p>The conditions required for the threat to be exploitable.</p>
    # @option params [String] :threat_action
    #   <p>What the threat source can do.</p>
    # @option params [String] :threat_impact
    #   <p>The direct consequence of the threat action.</p>
    # @option params [Array<String>] :impacted_goal
    #   <p>The security goals affected by the threat.</p>
    # @option params [Array<String>] :impacted_assets
    #   <p>The specific assets affected by the threat.</p>
    # @option params [Types::ThreatAnchorShape] :anchor
    #   <p>The DFD element this threat is anchored to.</p>
    # @option params [Array<Types::ThreatEvidenceShape>] :evidence
    #   <p>The source code files supporting the threat.</p>
    # @option params [String] :recommendation
    #   <p>The recommended mitigation guidance for this threat.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     threat_job_id: "String", # required
    #     title: "String",
    #     statement: "String",
    #     severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #     comments: "String",
    #     stride: ["SPOOFING" # One of: ["SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"]],
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String"
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String"
    #       }
    #     ],
    #     recommendation: "String"
    #   }
    #   options = {}
    #   response = client.create_threat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_id: "String", # required
    #     threat_job_id: "String", # required
    #     title: "String",
    #     statement: "String",
    #     severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #     status: "OPEN" # One of: ["OPEN", "RESOLVED", "DISMISSED"],
    #     comments: "String",
    #     stride: ["SPOOFING" # One of: ["SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"]],
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String"
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String"
    #       }
    #     ],
    #     recommendation: "String",
    #     created_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #     updated_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateThreatOutput]
    def create_threat(params = {}, options = {})
      request = build_request(:create_threat, params)
      request.send_request(options)
    end

    # <p>Creates a new threat model configuration in an agent space. A threat model defines the parameters for automated threat analysis.</p>
    # @param [Hash, Types::CreateThreatModelInput] params
    # @option params [String] :title
    #   <p>The title of the threat model.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to create the threat model in.</p>
    # @option params [String] :description
    #   <p>A description of the application or system being threat modeled.</p>
    # @option params [Types::Assets] :assets
    #   <p>The assets to include in the threat model.</p>
    # @option params [Array<Types::DocumentInfo>] :scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    # @option params [String] :service_role
    #   <p>The IAM service role to use for the threat model.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The CloudWatch Logs configuration for the threat model.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     title: "String", # required
    #     agent_space_id: "String", # required
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         }
    #       }
    #     ],
    #     service_role: "ServiceRole", # required
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_threat_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_id: "String", # required
    #     title: "String",
    #     agent_space_id: "String",
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         }
    #       }
    #     ],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     }
    #   }
    # @return [Types::CreateThreatModelOutput]
    def create_threat_model(params = {}, options = {})
      request = build_request(:create_threat_model, params)
      request.send_request(options)
    end

    # <p>Deletes an agent space and all of its associated resources, including pentests, findings, and artifacts.</p>
    # @param [Hash, Types::DeleteAgentSpaceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId"
    #   }
    # @return [Types::DeleteAgentSpaceOutput]
    def delete_agent_space(params = {}, options = {})
      request = build_request(:delete_agent_space, params)
      request.send_request(options)
    end

    # <p>Deletes an application and its associated configuration, including IAM Identity Center settings.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an artifact from an agent space.</p>
    # @param [Hash, Types::DeleteArtifactInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    # @option params [String] :artifact_id
    #   <p>The unique identifier of the artifact to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_id: "ArtifactId", # required
    #   }
    #   options = {}
    #   response = client.delete_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteArtifactOutput]
    def delete_artifact(params = {}, options = {})
      request = build_request(:delete_artifact, params)
      request.send_request(options)
    end

    # <p>Deletes an integration with a third-party provider.</p>
    # @param [Hash, Types::DeleteIntegrationInput] params
    # @option params [String] :integration_id
    #   <p>The unique identifier of the integration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_id: "IntegrationId", # required
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIntegrationOutput]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # <p>Deletes a membership, revoking a user's access to an agent space.</p>
    # @param [Hash, Types::DeleteMembershipRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to revoke access from.</p>
    # @option params [String] :membership_id
    #   <p>The unique identifier of the membership to delete.</p>
    # @option params [String] :member_type
    #   <p>The type of member to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     membership_id: "MembershipId", # required
    #     member_type: "USER" # One of: ["USER"]
    #   }
    #   options = {}
    #   response = client.delete_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMembershipResponse]
    def delete_membership(params = {}, options = {})
      request = build_request(:delete_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a private connection.</p>
    # @param [Hash, Types::DeletePrivateConnectionInput] params
    # @option params [String] :private_connection_name
    #   <p>The name of the private connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     private_connection_name: "PrivateConnectionName", # required
    #   }
    #   options = {}
    #   response = client.delete_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     resource_gateway_id: "ResourceGatewayId",
    #     host_address: "HostAddress",
    #     vpc_id: "PrivateConnectionVpcId",
    #     resource_configuration_id: "ResourceConfigurationId",
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DeletePrivateConnectionOutput]
    def delete_private_connection(params = {}, options = {})
      request = build_request(:delete_private_connection, params)
      request.send_request(options)
    end

    # <p>Deletes a customer managed security requirement pack and all its associated security requirements.</p>
    # @param [Hash, Types::DeleteSecurityRequirementPackInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #   }
    #   options = {}
    #   response = client.delete_security_requirement_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSecurityRequirementPackOutput]
    def delete_security_requirement_pack(params = {}, options = {})
      request = build_request(:delete_security_requirement_pack, params)
      request.send_request(options)
    end

    # <p>Deletes a target domain registration. After deletion, the domain can no longer be used for penetration testing.</p>
    # @param [Hash, Types::DeleteTargetDomainInput] params
    # @option params [String] :target_domain_id
    #   <p>The unique identifier of the target domain to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_domain_id: "TargetDomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_target_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domain_id: "TargetDomainId"
    #   }
    # @return [Types::DeleteTargetDomainOutput]
    def delete_target_domain(params = {}, options = {})
      request = build_request(:delete_target_domain, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a private connection.</p>
    # @param [Hash, Types::DescribePrivateConnectionInput] params
    # @option params [String] :private_connection_name
    #   <p>The name of the private connection to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     private_connection_name: "PrivateConnectionName", # required
    #   }
    #   options = {}
    #   response = client.describe_private_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     resource_gateway_id: "ResourceGatewayId",
    #     host_address: "HostAddress",
    #     vpc_id: "PrivateConnectionVpcId",
    #     resource_configuration_id: "ResourceConfigurationId",
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribePrivateConnectionOutput]
    def describe_private_connection(params = {}, options = {})
      request = build_request(:describe_private_connection, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an application.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #     domain: "ApplicationDomain", # required
    #     application_name: "String",
    #     idc_configuration: {
    #       idc_application_arn: "IdCApplicationArn",
    #       idc_instance_arn: "IdCInstanceArn"
    #     },
    #     role_arn: "RoleArn",
    #     default_kms_key_id: "DefaultKmsKeyId"
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Retrieves an artifact from an agent space.</p>
    # @param [Hash, Types::GetArtifactInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    # @option params [String] :artifact_id
    #   <p>The unique identifier of the artifact to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_id: "ArtifactId", # required
    #   }
    #   options = {}
    #   response = client.get_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     artifact_id: "ArtifactId", # required
    #     artifact: { # required
    #       contents: "String", # required
    #       type: "TXT" # One of: ["TXT", "PNG", "JPEG", "MD", "PDF", "DOCX", "DOC", "JSON", "YAML"], # required
    #     },
    #     file_name: "String", # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetArtifactOutput]
    def get_artifact(params = {}, options = {})
      request = build_request(:get_artifact, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an integration.</p>
    # @param [Hash, Types::GetIntegrationInput] params
    # @option params [String] :integration_id
    #   <p>The unique identifier of the integration to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_id: "IntegrationId", # required
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_id: "IntegrationId", # required
    #     installation_id: "String", # required
    #     provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"], # required
    #     provider_type: "SOURCE_CODE" # One of: ["SOURCE_CODE", "DOCUMENTATION", "ISSUE_TRACKING"], # required
    #     display_name: "String",
    #     kms_key_id: "KmsKeyId",
    #     target_url: "TargetUrl",
    #     site_url: "TargetUrl",
    #     webhook_url: "String",
    #     private_connection_name: "PrivateConnectionName"
    #   }
    # @return [Types::GetIntegrationOutput]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a security requirement pack.</p>
    # @param [Hash, Types::GetSecurityRequirementPackInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #   }
    #   options = {}
    #   response = client.get_security_requirement_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pack_id: "SecurityRequirementPackId", # required
    #     name: "SecurityRequirementPackName", # required
    #     description: "String",
    #     vendor_name: "String",
    #     management_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "CUSTOMER_MANAGED"], # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     import_status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     kms_key_id: "KmsKeyId"
    #   }
    # @return [Types::GetSecurityRequirementPackOutput]
    def get_security_requirement_pack(params = {}, options = {})
      request = build_request(:get_security_requirement_pack, params)
      request.send_request(options)
    end

    # <p>Imports security requirements from uploaded documents into a customer managed security requirement pack. The import process asynchronously extracts and generates structured security requirements from the provided source files.</p>
    # @param [Hash, Types::ImportSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to import requirements into.</p>
    # @option params [Types::ImportSource] :input
    #   <p>The import source containing the documents to extract security requirements from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     input: { # required
    #       # One of:
    #       documents: [
    #         {
    #           name: "SecurityRequirementArtifactName", # required
    #           format: "MD" # One of: ["MD", "PDF", "TXT", "DOCX", "DOC"], # required
    #           content: "data", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.import_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pack_id: "SecurityRequirementPackId", # required
    #     import_status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #   }
    # @return [Types::ImportSecurityRequirementsOutput]
    def import_security_requirements(params = {}, options = {})
      request = build_request(:import_security_requirements, params)
      request.send_request(options)
    end

    # <p>Initiates the OAuth registration flow with a third-party provider. Returns a redirect URL and CSRF state token for completing the authorization.</p>
    # @param [Hash, Types::InitiateProviderRegistrationInput] params
    # @option params [String] :provider
    #   <p>The provider to initiate registration with.</p>
    # @option params [String] :target_url
    #   <p>The HTTPS URL of a self-managed provider instance. Omit for SaaS providers.</p>
    # @option params [String] :organization_name
    #   <p>The name of the organization to connect.</p>
    # @option params [String] :client_id
    #   <p>The client ID of the OAuth application registered on your self-managed provider instance.</p>
    # @option params [String] :client_secret
    #   <p>The client secret of the OAuth application registered on your self-managed provider instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"], # required
    #     target_url: "TargetUrl",
    #     organization_name: "String",
    #     client_id: "ClientId",
    #     client_secret: "ClientSecret"
    #   }
    #   options = {}
    #   response = client.initiate_provider_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     redirect_to: "Location", # required
    #     csrf_state: "CsrfState", # required
    #   }
    # @return [Types::InitiateProviderRegistrationOutput]
    def initiate_provider_registration(params = {}, options = {})
      request = build_request(:initiate_provider_registration, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of the email MFA messages received for an actor at its server-generated email address, most recent first.</p>
    # @param [Hash, Types::ListActorMessagesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that owns the pentest.</p>
    # @option params [String] :pentest_id
    #   <p>The unique identifier of the pentest that the actor belongs to.</p>
    # @option params [String] :actor_identifier
    #   <p>The identifier of the actor whose messages to list. The identifier is case-insensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #     pentest_id: "String", # required
    #     actor_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.list_actor_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         sender: "SensitiveMessageSender",
    #         subject: "SensitiveMessageSubject",
    #         body: "SensitiveMessageBody",
    #         received_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActorMessagesOutput]
    def list_actor_messages(params = {}, options = {})
      request = build_request(:list_actor_messages, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of agent space summaries in your account.</p>
    # @param [Hash, Types::ListAgentSpacesInput] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_agent_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_summaries: [
    #       {
    #         agent_space_id: "AgentSpaceId", # required
    #         name: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentSpacesOutput]
    def list_agent_spaces(params = {}, options = {})
      request = build_request(:list_agent_spaces, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of application summaries in your account.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_summaries: [ # required
    #       {
    #         application_id: "ApplicationId", # required
    #         application_name: "String", # required
    #         domain: "ApplicationDomain", # required
    #         default_kms_key_id: "DefaultKmsKeyId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of artifact summaries for the specified agent space.</p>
    # @param [Hash, Types::ListArtifactsInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list artifacts for.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifact_summaries: [ # required
    #       {
    #         artifact_id: "ArtifactId", # required
    #         file_name: "String", # required
    #         artifact_type: "TXT" # One of: ["TXT", "PNG", "JPEG", "MD", "PDF", "DOCX", "DOC", "JSON", "YAML"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListArtifactsOutput]
    def list_artifacts(params = {}, options = {})
      request = build_request(:list_artifacts, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of task summaries for the specified code review job, optionally filtered by step name or category.</p>
    # @param [Hash, Types::ListCodeReviewJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :code_review_job_id
    #   <p>The unique identifier of the code review job to list tasks for.</p>
    # @option params [String] :step_name
    #   <p>Filter tasks by step name.</p>
    # @option params [String] :category_name
    #   <p>Filter tasks by category name.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     code_review_job_id: "String",
    #     step_name: "PREFLIGHT" # One of: ["PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"],
    #     category_name: "String",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_code_review_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_job_task_summaries: [
    #       {
    #         task_id: "String", # required
    #         code_review_id: "String",
    #         code_review_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         risk_type: "CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"],
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeReviewJobTasksOutput]
    def list_code_review_job_tasks(params = {}, options = {})
      request = build_request(:list_code_review_job_tasks, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of code review job summaries for the specified code review configuration.</p>
    # @param [Hash, Types::ListCodeReviewJobsForCodeReviewInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :code_review_id
    #   <p>The unique identifier of the code review to list jobs for.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     code_review_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_code_review_jobs_for_code_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_job_summaries: [
    #       {
    #         code_review_job_id: "String", # required
    #         code_review_id: "String", # required
    #         title: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeReviewJobsForCodeReviewOutput]
    def list_code_review_jobs_for_code_review(params = {}, options = {})
      request = build_request(:list_code_review_jobs_for_code_review, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of code review summaries for the specified agent space.</p>
    # @param [Hash, Types::ListCodeReviewsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list code reviews for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.list_code_reviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_summaries: [
    #       {
    #         code_review_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCodeReviewsOutput]
    def list_code_reviews(params = {}, options = {})
      request = build_request(:list_code_reviews, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of endpoints discovered during a pentest job execution.</p>
    # @param [Hash, Types::ListDiscoveredEndpointsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :pentest_job_id
    #   <p>The unique identifier of the pentest job to list discovered endpoints for.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :prefix
    #   <p>A prefix to filter discovered endpoints by URI.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     pentest_job_id: "String", # required
    #     agent_space_id: "String", # required
    #     prefix: "String",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_discovered_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     discovered_endpoints: [
    #       {
    #         uri: "String", # required
    #         pentest_job_id: "String", # required
    #         task_id: "String", # required
    #         agent_space_id: "String", # required
    #         evidence: "String",
    #         operation: "String",
    #         description: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDiscoveredEndpointsOutput]
    def list_discovered_endpoints(params = {}, options = {})
      request = build_request(:list_discovered_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists the security findings for a pentest job.</p>
    # @param [Hash, Types::ListFindingsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :pentest_job_id
    #   <p>The unique identifier of the pentest job to list findings for.</p>
    # @option params [String] :code_review_job_id
    #   <p>The unique identifier of the code review job to list findings for. Mutually exclusive with pentestJobId.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [String] :risk_type
    #   <p>Filter findings by risk type.</p>
    # @option params [String] :risk_level
    #   <p>Filter findings by risk level.</p>
    # @option params [String] :status
    #   <p>Filter findings by status.</p>
    # @option params [String] :confidence
    #   <p>Filter findings by confidence level.</p>
    # @option params [String] :name
    #   <p>Filter findings by name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #     risk_type: "String",
    #     risk_level: "UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #     status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"],
    #     confidence: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"],
    #     name: "String"
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_summaries: [
    #       {
    #         finding_id: "String", # required
    #         agent_space_id: "String", # required
    #         pentest_id: "String",
    #         pentest_job_id: "String",
    #         code_review_id: "String",
    #         code_review_job_id: "String",
    #         name: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"],
    #         risk_type: "String",
    #         risk_level: "UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #         confidence: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"],
    #         validation_status: "CONFIRMED" # One of: ["CONFIRMED", "NOT_REPRODUCED", "VALIDATION_FAILED", "VALIDATING", "NOT_VALIDATED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFindingsOutput]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>Lists the integrated resources for an agent space, optionally filtered by integration or resource type.</p>
    # @param [Hash, Types::ListIntegratedResourcesInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list integrated resources for.</p>
    # @option params [String] :integration_id
    #   <p>The unique identifier of the integration to filter by.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource to filter by.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     integration_id: "IntegrationId",
    #     resource_type: "CODE_REPOSITORY" # One of: ["CODE_REPOSITORY", "DOCUMENT", "PROJECT"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_integrated_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integrated_resource_summaries: [ # required
    #       {
    #         integration_id: "IntegrationId", # required
    #         resource: { # required
    #           # One of:
    #           github_repository: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             owner: "GitHubOwner", # required
    #             access_type: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"]
    #           },
    #           gitlab_repository: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             namespace: "GitLabNamespace", # required
    #             access_type: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"]
    #           },
    #           bitbucket_repository: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             workspace: "BitbucketWorkspace", # required
    #             access_type: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"]
    #           },
    #           confluence_document: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             space_key: "String", # required
    #             page_id: "String", # required
    #             title: "String",
    #             space_title: "String"
    #           },
    #           azure_dev_ops_repository: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             organization: "AzureDevOpsOrganization", # required
    #             project: "String",
    #             project_id: "String",
    #             access_type: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"]
    #           },
    #           jira_project: {
    #             name: "ProviderResourceName", # required
    #             provider_resource_id: "ProviderResourceId", # required
    #             project_key: "String", # required
    #             project_id: "String", # required
    #             project_name: "String"
    #           }
    #         },
    #         capabilities: {
    #           # One of:
    #           github: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           gitlab: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           bitbucket: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           confluence: {
    #             fetch_document: false,
    #             create_document: false,
    #             update_document: false
    #           },
    #           azure_dev_ops: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           jira: {
    #             create_issue: false,
    #             comment_issue: false
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIntegratedResourcesOutput]
    def list_integrated_resources(params = {}, options = {})
      request = build_request(:list_integrated_resources, params)
      request.send_request(options)
    end

    # <p>Lists the integrations in your account, optionally filtered by provider or provider type.</p>
    # @param [Hash, Types::ListIntegrationsInput] params
    # @option params [Types::IntegrationFilter] :filter
    #   <p>A filter to apply to the list of integrations.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       # One of:
    #       provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"],
    #       provider_type: "SOURCE_CODE" # One of: ["SOURCE_CODE", "DOCUMENTATION", "ISSUE_TRACKING"]
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_summaries: [ # required
    #       {
    #         integration_id: "String", # required
    #         installation_id: "String", # required
    #         provider: "GITHUB" # One of: ["GITHUB", "GITLAB", "BITBUCKET", "CONFLUENCE", "AZURE_DEVOPS", "JIRA"], # required
    #         provider_type: "SOURCE_CODE" # One of: ["SOURCE_CODE", "DOCUMENTATION", "ISSUE_TRACKING"], # required
    #         display_name: "String", # required
    #         target_url: "TargetUrl",
    #         webhook_url: "String",
    #         private_connection_name: "PrivateConnectionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIntegrationsOutput]
    def list_integrations(params = {}, options = {})
      request = build_request(:list_integrations, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of membership summaries for the specified agent space within an application.</p>
    # @param [Hash, Types::ListMembershipsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list memberships for.</p>
    # @option params [String] :member_type
    #   <p>Filter memberships by member type.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     agent_space_id: "AgentSpaceId", # required
    #     member_type: "USER" # One of: ["USER", "ALL"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_summaries: [ # required
    #       {
    #         membership_id: "MembershipId", # required
    #         application_id: "ApplicationId", # required
    #         agent_space_id: "AgentSpaceId", # required
    #         member_type: "USER" # One of: ["USER"], # required
    #         config: {
    #           # One of:
    #           user: {
    #             role: "MEMBER" # One of: ["MEMBER"]
    #           }
    #         },
    #         metadata: {
    #           # One of:
    #           user: {
    #             username: "String", # required
    #             email: "SensitiveEmail", # required
    #           }
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         created_by: "String", # required
    #         updated_by: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMembershipsResponse]
    def list_memberships(params = {}, options = {})
      request = build_request(:list_memberships, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of task summaries for the specified pentest job, optionally filtered by step name or category.</p>
    # @param [Hash, Types::ListPentestJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :pentest_job_id
    #   <p>The unique identifier of the pentest job to list tasks for.</p>
    # @option params [String] :step_name
    #   <p>Filter tasks by step name. Valid values include PREFLIGHT, STATIC_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.</p>
    # @option params [String] :category_name
    #   <p>Filter tasks by category name.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     pentest_job_id: "String",
    #     step_name: "PREFLIGHT" # One of: ["PREFLIGHT", "STATIC_ANALYSIS", "PENTEST", "FINALIZING", "VALIDATION"],
    #     category_name: "String",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_pentest_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_summaries: [
    #       {
    #         task_id: "String", # required
    #         pentest_id: "String",
    #         pentest_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         risk_type: "CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"],
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         task_hours: 1.0,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPentestJobTasksOutput]
    def list_pentest_job_tasks(params = {}, options = {})
      request = build_request(:list_pentest_job_tasks, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of pentest job summaries for the specified pentest configuration.</p>
    # @param [Hash, Types::ListPentestJobsForPentestInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :pentest_id
    #   <p>The unique identifier of the pentest to list jobs for.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [String] :job_type
    #   <p>Filters the returned pentest jobs to only those of the specified job type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     pentest_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #     job_type: "FULL" # One of: ["FULL", "REVALIDATION", "CICD"]
    #   }
    #   options = {}
    #   response = client.list_pentest_jobs_for_pentest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentest_job_summaries: [
    #       {
    #         pentest_job_id: "String", # required
    #         pentest_id: "String", # required
    #         title: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         job_type: "FULL" # One of: ["FULL", "REVALIDATION", "CICD"],
    #         report_url: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPentestJobsForPentestOutput]
    def list_pentest_jobs_for_pentest(params = {}, options = {})
      request = build_request(:list_pentest_jobs_for_pentest, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of pentest summaries for the specified agent space.</p>
    # @param [Hash, Types::ListPentestsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list pentests for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.list_pentests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentest_summaries: [
    #       {
    #         pentest_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPentestsOutput]
    def list_pentests(params = {}, options = {})
      request = build_request(:list_pentests, params)
      request.send_request(options)
    end

    # <p>Lists the private connections in your account.</p>
    # @param [Hash, Types::ListPrivateConnectionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of private connections to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_private_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     private_connections: [ # required
    #       {
    #         name: "PrivateConnectionName", # required
    #         type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"], # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #         resource_gateway_id: "ResourceGatewayId",
    #         host_address: "HostAddress",
    #         vpc_id: "PrivateConnectionVpcId",
    #         resource_configuration_id: "ResourceConfigurationId",
    #         certificate_expiry_time: Time.now,
    #         dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #         failure_message: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPrivateConnectionsOutput]
    def list_private_connections(params = {}, options = {})
      request = build_request(:list_private_connections, params)
      request.send_request(options)
    end

    # <p>Lists all security requirement packs in the caller's account.</p>
    # @param [Hash, Types::ListSecurityRequirementPacksInput] params
    # @option params [Types::ListSecurityRequirementPackFilter] :filter
    #   <p>The filter criteria for listing security requirement packs.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       management_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "CUSTOMER_MANAGED"],
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_requirement_packs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_requirement_pack_summaries: [ # required
    #       {
    #         pack_id: "SecurityRequirementPackId", # required
    #         name: "SecurityRequirementPackName", # required
    #         description: "String",
    #         vendor_name: "String",
    #         management_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "CUSTOMER_MANAGED"], # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityRequirementPacksOutput]
    def list_security_requirement_packs(params = {}, options = {})
      request = build_request(:list_security_requirement_packs, params)
      request.send_request(options)
    end

    # <p>Lists security requirements within a pack.</p>
    # @param [Hash, Types::ListSecurityRequirementsInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to list requirements for.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_requirements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_requirement_summaries: [ # required
    #       {
    #         pack_id: "SecurityRequirementPackId", # required
    #         name: "SecurityRequirementName", # required
    #         description: "String", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityRequirementsOutput]
    def list_security_requirements(params = {}, options = {})
      request = build_request(:list_security_requirements, params)
      request.send_request(options)
    end

    # <p>Returns the tags associated with the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
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

    # <p>Returns a paginated list of target domain summaries in your account.</p>
    # @param [Hash, Types::ListTargetDomainsInput] params
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_target_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domain_summaries: [
    #       {
    #         target_domain_id: "TargetDomainId", # required
    #         domain_name: "String", # required
    #         verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED", "UNREACHABLE"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetDomainsOutput]
    def list_target_domains(params = {}, options = {})
      request = build_request(:list_target_domains, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of task summaries for the specified threat model job.</p>
    # @param [Hash, Types::ListThreatModelJobTasksInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :threat_model_job_id
    #   <p>The unique identifier of the threat model job to list tasks for.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     max_results: 1,
    #     threat_model_job_id: "String", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_threat_model_job_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_job_task_summaries: [
    #       {
    #         task_id: "String", # required
    #         threat_model_id: "String",
    #         threat_model_job_id: "String",
    #         agent_space_id: "String",
    #         title: "String",
    #         execution_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThreatModelJobTasksOutput]
    def list_threat_model_job_tasks(params = {}, options = {})
      request = build_request(:list_threat_model_job_tasks, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of threat model job summaries for the specified threat model.</p>
    # @param [Hash, Types::ListThreatModelJobsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :threat_model_id
    #   <p>The unique identifier of the threat model to list jobs for.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     threat_model_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_threat_model_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_job_summaries: [
    #       {
    #         threat_model_job_id: "String", # required
    #         threat_model_id: "String", # required
    #         agent_space_id: "String",
    #         title: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThreatModelJobsOutput]
    def list_threat_model_jobs(params = {}, options = {})
      request = build_request(:list_threat_model_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of threat model summaries for the specified agent space.</p>
    # @param [Hash, Types::ListThreatModelsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to list threat models for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     agent_space_id: "String", # required
    #   }
    #   options = {}
    #   response = client.list_threat_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_summaries: [
    #       {
    #         threat_model_id: "String", # required
    #         agent_space_id: "String", # required
    #         title: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThreatModelsOutput]
    def list_threat_models(params = {}, options = {})
      request = build_request(:list_threat_models, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of threats for a threat model job.</p>
    # @param [Hash, Types::ListThreatsInput] params
    # @option params [String] :threat_job_id
    #   <p>The unique identifier of the threat model job to list threats for.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_job_id: "String", # required
    #     agent_space_id: "String", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_threats(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threats: [
    #       {
    #         threat_id: "String",
    #         threat_job_id: "String",
    #         title: "String",
    #         statement: "String",
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #         status: "OPEN" # One of: ["OPEN", "RESOLVED", "DISMISSED"],
    #         stride: ["SPOOFING" # One of: ["SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"]],
    #         created_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #         updated_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThreatsOutput]
    def list_threats(params = {}, options = {})
      request = build_request(:list_threats, params)
      request.send_request(options)
    end

    # <p>Initiates code remediation for one or more security findings. This creates pull requests in integrated repositories to fix the identified vulnerabilities.</p>
    # @param [Hash, Types::StartCodeRemediationInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :pentest_job_id
    #   <p>The unique identifier of the pentest job that produced the findings. Mutually exclusive with <code>codeReviewJobId</code>.</p>
    # @option params [String] :code_review_job_id
    #   <p>The unique identifier of the code review job that produced the findings. Mutually exclusive with <code>pentestJobId</code>.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The list of finding identifiers to initiate code remediation for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String",
    #     code_review_job_id: "String",
    #     finding_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.start_code_remediation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartCodeRemediationOutput]
    def start_code_remediation(params = {}, options = {})
      request = build_request(:start_code_remediation, params)
      request.send_request(options)
    end

    # <p>Starts a new code review job for a code review configuration. The job executes the security-focused code analysis defined in the code review.</p>
    # @param [Hash, Types::StartCodeReviewJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :code_review_id
    #   <p>The unique identifier of the code review to start a job for.</p>
    # @option params [Types::DiffSource] :diff_source
    #   <p>Source of the diff for a differential scan. When present, the job analyzes only the changed lines instead of performing a full scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     code_review_id: "String", # required
    #     diff_source: {
    #       # One of:
    #       s3_uri: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_code_review_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     code_review_id: "String", # required
    #     code_review_job_id: "String", # required
    #     agent_space_id: "String"
    #   }
    # @return [Types::StartCodeReviewJobOutput]
    def start_code_review_job(params = {}, options = {})
      request = build_request(:start_code_review_job, params)
      request.send_request(options)
    end

    # <p>Starts a new pentest job for a pentest configuration. The job executes the security tests defined in the pentest.</p>
    # @param [Hash, Types::StartPentestJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :pentest_id
    #   <p>The unique identifier of the pentest to start a job for.</p>
    # @option params [String] :job_type
    #   <p>The type of pentest job to start. Valid values are FULL, REVALIDATION, and CICD. When set to REVALIDATION, the selectedFindingIds parameter is required. When set to CICD, the scopeChanges parameter defines the code changes to test.</p>
    # @option params [Array<String>] :selected_finding_ids
    #   <p>The list of finding identifiers to revalidate. Required when jobType is REVALIDATION. Each finding must belong to the same agent space and pentest.</p>
    # @option params [Array<Types::ScopeChange>] :scope_changes
    #   <p>The code changes that define the scope of a CI/CD pentest job. Provide this when starting a job with jobType CICD to test only the changes in the current pipeline run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     pentest_id: "String", # required
    #     job_type: "FULL" # One of: ["FULL", "REVALIDATION", "CICD"],
    #     selected_finding_ids: ["String"],
    #     scope_changes: [
    #       {
    #         integration_id: "String", # required
    #         provider_resource_id: "String", # required
    #         base_commit_sha: "String",
    #         head_commit_sha: "String", # required
    #         trigger_run_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_pentest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     pentest_id: "String",
    #     pentest_job_id: "String",
    #     agent_space_id: "String"
    #   }
    # @return [Types::StartPentestJobOutput]
    def start_pentest_job(params = {}, options = {})
      request = build_request(:start_pentest_job, params)
      request.send_request(options)
    end

    # <p>Starts a new threat model job for a threat model configuration.</p>
    # @param [Hash, Types::StartThreatModelJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :threat_model_id
    #   <p>The unique identifier of the threat model to start a job for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     threat_model_id: "String", # required
    #   }
    #   options = {}
    #   response = client.start_threat_model_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     title: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "STOPPING", "STOPPED", "FAILED", "COMPLETED"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     threat_model_id: "String",
    #     threat_model_job_id: "String", # required
    #     agent_space_id: "String"
    #   }
    # @return [Types::StartThreatModelJobOutput]
    def start_threat_model_job(params = {}, options = {})
      request = build_request(:start_threat_model_job, params)
      request.send_request(options)
    end

    # <p>Stops a running code review job. The job transitions to a stopping state and then to stopped after cleanup completes.</p>
    # @param [Hash, Types::StopCodeReviewJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :code_review_job_id
    #   <p>The unique identifier of the code review job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     code_review_job_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_code_review_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopCodeReviewJobOutput]
    def stop_code_review_job(params = {}, options = {})
      request = build_request(:stop_code_review_job, params)
      request.send_request(options)
    end

    # <p>Stops a running pentest job. The job transitions to a stopping state and then to stopped after cleanup completes.</p>
    # @param [Hash, Types::StopPentestJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :pentest_job_id
    #   <p>The unique identifier of the pentest job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     pentest_job_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_pentest_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopPentestJobOutput]
    def stop_pentest_job(params = {}, options = {})
      request = build_request(:stop_pentest_job, params)
      request.send_request(options)
    end

    # <p>Stops a running threat model job.</p>
    # @param [Hash, Types::StopThreatModelJobInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :threat_model_job_id
    #   <p>The unique identifier of the threat model job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "String", # required
    #     threat_model_job_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_threat_model_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopThreatModelJobOutput]
    def stop_threat_model_job(params = {}, options = {})
      request = build_request(:stop_threat_model_job, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing agent space, including its name, description, AWS resources, target domains, and code review settings.</p>
    # @param [Hash, Types::UpdateAgentSpaceInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space to update.</p>
    # @option params [String] :name
    #   <p>The updated name of the agent space.</p>
    # @option params [String] :description
    #   <p>The updated description of the agent space.</p>
    # @option params [Types::AWSResources] :aws_resources
    #   <p>The updated AWS resources to associate with the agent space.</p>
    # @option params [Array<String>] :target_domain_ids
    #   <p>The updated list of target domain identifiers to associate with the agent space.</p>
    # @option params [Types::CodeReviewSettings] :code_review_settings
    #   <p>The updated code review settings for the agent space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentName",
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         }
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"]
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_agent_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_space_id: "AgentSpaceId", # required
    #     name: "AgentName", # required
    #     description: "String",
    #     aws_resources: {
    #       vpcs: [
    #         {
    #           vpc_arn: "VpcArn",
    #           security_group_arns: ["SecurityGroupArn"],
    #           subnet_arns: ["SubnetArn"]
    #         }
    #       ],
    #       log_groups: ["LogGroupArn"],
    #       s3_buckets: ["S3BucketArn"],
    #       secret_arns: ["SecretArn"],
    #       lambda_function_arns: ["LambdaFunctionArn"],
    #       iam_roles: ["ServiceRole"]
    #     },
    #     target_domain_ids: ["String"],
    #     code_review_settings: {
    #       controls_scanning: false, # required
    #       general_purpose_scanning: false, # required
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateAgentSpaceOutput]
    def update_agent_space(params = {}, options = {})
      request = build_request(:update_agent_space, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing application, including the IAM role and default KMS key.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application to update.</p>
    # @option params [String] :role_arn
    #   <p>The updated Amazon Resource Name (ARN) of the IAM role for the application.</p>
    # @option params [String] :default_kms_key_id
    #   <p>The updated identifier of the default AWS KMS key for the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     role_arn: "RoleArn",
    #     default_kms_key_id: "DefaultKmsKeyId"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates an existing code review configuration.</p>
    # @param [Hash, Types::UpdateCodeReviewInput] params
    # @option params [String] :code_review_id
    #   <p>The unique identifier of the code review to update.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    # @option params [String] :title
    #   <p>The updated title of the code review.</p>
    # @option params [Types::Assets] :assets
    #   <p>The updated assets for the code review.</p>
    # @option params [String] :service_role
    #   <p>The updated IAM service role for the code review.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The updated CloudWatch Logs configuration for the code review.</p>
    # @option params [String] :code_remediation_strategy
    #   <p>The updated code remediation strategy for the code review.</p>
    # @option params [String] :validation_mode
    #   <p>The updated validation mode for the code review. Valid values are SIMULATED and DISABLED.</p>
    # @option params [Float] :max_task_hours
    #   <p>The updated maximum number of billable task hours allowed for jobs started from this code review.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @option params [Types::ReportFilters] :report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     code_review_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     validation_mode: "DISABLED" # One of: ["DISABLED", "SIMULATED"],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_code_review(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_review_id: "String", # required
    #     title: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     agent_space_id: "String",
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     validation_mode: "DISABLED" # One of: ["DISABLED", "SIMULATED"],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     }
    #   }
    # @return [Types::UpdateCodeReviewOutput]
    def update_code_review(params = {}, options = {})
      request = build_request(:update_code_review, params)
      request.send_request(options)
    end

    # <p>Updates the status or risk level of a security finding.</p>
    # @param [Hash, Types::UpdateFindingInput] params
    # @option params [String] :finding_id
    #   <p>The unique identifier of the finding to update.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the finding.</p>
    # @option params [String] :name
    #   <p>The updated name for the finding.</p>
    # @option params [String] :description
    #   <p>The updated description for the finding.</p>
    # @option params [String] :risk_type
    #   <p>The updated risk type for the finding.</p>
    # @option params [String] :risk_level
    #   <p>The updated risk level for the finding.</p>
    # @option params [String] :risk_score
    #   <p>The updated numerical risk score for the finding.</p>
    # @option params [String] :attack_script
    #   <p>The updated attack script for the finding.</p>
    # @option params [String] :reasoning
    #   <p>The updated reasoning for the finding.</p>
    # @option params [String] :status
    #   <p>The updated status for the finding.</p>
    # @option params [String] :customer_note
    #   <p>A customer-provided note on the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "String", # required
    #     agent_space_id: "String", # required
    #     name: "String",
    #     description: "String",
    #     risk_type: "String",
    #     risk_level: "UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"],
    #     risk_score: "String",
    #     attack_script: "String",
    #     reasoning: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"],
    #     customer_note: "String"
    #   }
    #   options = {}
    #   response = client.update_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFindingOutput]
    def update_finding(params = {}, options = {})
      request = build_request(:update_finding, params)
      request.send_request(options)
    end

    # <p>Updates the integrated resources for an agent space, including their capabilities.</p>
    # @param [Hash, Types::UpdateIntegratedResourcesInput] params
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :integration_id
    #   <p>The unique identifier of the integration.</p>
    # @option params [Array<Types::IntegratedResourceInputItem>] :items
    #   <p>The list of integrated resource items to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_space_id: "AgentSpaceId", # required
    #     integration_id: "IntegrationId", # required
    #     items: [ # required
    #       {
    #         resource: { # required
    #           # One of:
    #           github_repository: {
    #             name: "ProviderResourceName", # required
    #             owner: "GitHubOwner", # required
    #           },
    #           gitlab_repository: {
    #             name: "ProviderResourceName", # required
    #             namespace: "GitLabNamespace", # required
    #           },
    #           bitbucket_repository: {
    #             name: "ProviderResourceName", # required
    #             workspace: "BitbucketWorkspace", # required
    #           },
    #           confluence_document: {
    #             name: "ProviderResourceName", # required
    #             space_key: "String", # required
    #             page_id: "String", # required
    #             title: "String",
    #             space_title: "String"
    #           },
    #           azure_dev_ops_repository: {
    #             name: "ProviderResourceName", # required
    #             organization: "AzureDevOpsOrganization", # required
    #             project: "String"
    #           },
    #           jira_project: {
    #             name: "ProviderResourceName", # required
    #             project_key: "String", # required
    #             project_id: "String", # required
    #             project_name: "String"
    #           }
    #         },
    #         capabilities: {
    #           # One of:
    #           github: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           gitlab: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           bitbucket: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           confluence: {
    #             fetch_document: false,
    #             create_document: false,
    #             update_document: false
    #           },
    #           azure_dev_ops: {
    #             trigger_filter_groups: [
    #               {
    #                 events: ["PULL_REQUEST_READY_FOR_REVIEW" # One of: ["PULL_REQUEST_READY_FOR_REVIEW", "PULL_REQUEST_DRAFT", "PULL_REQUEST_LABEL_ADDED"]],
    #                 filters: [
    #                   {
    #                     type: "TARGET_BRANCH" # One of: ["TARGET_BRANCH", "LABEL"], # required
    #                     patterns: ["TriggerRegexPattern"], # required
    #                     match_mode: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"]
    #                   }
    #                 ]
    #               }
    #             ],
    #             leave_comments: false,
    #             remediate_code: false
    #           },
    #           jira: {
    #             create_issue: false,
    #             comment_issue: false
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_integrated_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIntegratedResourcesOutput]
    def update_integrated_resources(params = {}, options = {})
      request = build_request(:update_integrated_resources, params)
      request.send_request(options)
    end

    # <p>Creates an integration's webhook, or rotates the HMAC signing secret of an existing one. The secret is returned only once, in this response, and cannot be retrieved again.</p>
    # @param [Hash, Types::UpdateIntegrationInput] params
    # @option params [String] :integration_id
    #   <p>The ID of the integration whose webhook you want to create or rotate.</p>
    # @option params [String] :webhook_action
    #   <p>The action to perform on the integration's webhook.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_id: "IntegrationId", # required
    #     webhook_action: "CREATE_IF_ABSENT" # One of: ["CREATE_IF_ABSENT", "ROTATE"], # required
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_id: "IntegrationId", # required
    #     webhook_url: "String",
    #     secret: "WebhookSecret"
    #   }
    # @return [Types::UpdateIntegrationOutput]
    def update_integration(params = {}, options = {})
      request = build_request(:update_integration, params)
      request.send_request(options)
    end

    # <p>Updates an existing pentest configuration.</p>
    # @param [Hash, Types::UpdatePentestInput] params
    # @option params [String] :pentest_id
    #   <p>The unique identifier of the pentest to update.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    # @option params [String] :title
    #   <p>The updated title of the pentest.</p>
    # @option params [Types::Assets] :assets
    #   <p>The updated assets for the pentest.</p>
    # @option params [Array<String>] :exclude_risk_types
    #   <p>The updated list of risk types to exclude from the pentest.</p>
    # @option params [String] :service_role
    #   <p>The updated IAM service role for the pentest.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The updated CloudWatch Logs configuration for the pentest.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The updated VPC configuration for the pentest.</p>
    # @option params [Types::NetworkTrafficConfig] :network_traffic_config
    #   <p>The updated network traffic configuration for the pentest.</p>
    # @option params [String] :code_remediation_strategy
    #   <p>The updated code remediation strategy for the pentest.</p>
    # @option params [Array<String>] :disable_managed_skills
    #   <p>The updated list of managed skills to disable for this pentest. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    # @option params [Float] :max_task_hours
    #   <p>The updated maximum number of billable task hours allowed for jobs started from this pentest.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @option params [Types::ReportFilters] :report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    # @option params [Types::CiCdConfiguration] :cicd_configuration
    #   <p>The updated CI/CD pentesting configuration to apply to the pentest.</p>
    # @option params [Types::TestScope] :test_scope
    #   <p>The category of application a pentest targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pentest_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     vpc_config: {
    #       vpc_arn: "VpcArn",
    #       security_group_arns: ["SecurityGroupArn"],
    #       subnet_arns: ["SubnetArn"]
    #     },
    #     network_traffic_config: {
    #       rules: [
    #         {
    #           effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #           pattern: "String",
    #           network_traffic_rule_type: "URL" # One of: ["URL"]
    #         }
    #       ],
    #       custom_headers: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ]
    #     },
    #     code_remediation_strategy: "AUTOMATIC" # One of: ["AUTOMATIC", "DISABLED"],
    #     disable_managed_skills: ["FINDING_PERSONALIZATION" # One of: ["FINDING_PERSONALIZATION", "LOGIN_OPTIMIZATION"]],
    #     max_task_hours: 1.0,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     },
    #     cicd_configuration: {
    #       enabled: false
    #     },
    #     test_scope: {
    #       type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_pentest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pentest_id: "String",
    #     title: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     exclude_risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     agent_space_id: "String",
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     },
    #     report_filters: {
    #       risk_levels: ["UNKNOWN" # One of: ["UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"]],
    #       confidence_levels: ["FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "UNCONFIRMED", "LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ACTIVE" # One of: ["ACTIVE", "RESOLVED", "ACCEPTED", "FALSE_POSITIVE"]],
    #       risk_types: ["CROSS_SITE_SCRIPTING" # One of: ["CROSS_SITE_SCRIPTING", "DEFAULT_CREDENTIALS", "INSECURE_DIRECT_OBJECT_REFERENCE", "PRIVILEGE_ESCALATION", "SERVER_SIDE_TEMPLATE_INJECTION", "COMMAND_INJECTION", "CODE_INJECTION", "SQL_INJECTION", "ARBITRARY_FILE_UPLOAD", "INSECURE_DESERIALIZATION", "LOCAL_FILE_INCLUSION", "INFORMATION_DISCLOSURE", "PATH_TRAVERSAL", "SERVER_SIDE_REQUEST_FORGERY", "JSON_WEB_TOKEN_VULNERABILITIES", "XML_EXTERNAL_ENTITY", "FILE_DELETION", "OTHER", "GRAPHQL_VULNERABILITIES", "BUSINESS_LOGIC_VULNERABILITIES", "CRYPTOGRAPHIC_VULNERABILITIES", "DENIAL_OF_SERVICE", "FILE_ACCESS", "FILE_CREATION", "DATABASE_MODIFICATION", "DATABASE_ACCESS", "OUTBOUND_SERVICE_REQUEST", "UNKNOWN"]],
    #       finding_types: ["ReportFilterValue"],
    #       task_statuses: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "ABORTED", "COMPLETED", "INTERNAL_ERROR", "FAILED"]],
    #       annotation_notes: false,
    #       compliance_report: false
    #     },
    #     cicd_configuration: {
    #       enabled: false
    #     },
    #     test_scope: {
    #       type: "WEB_APP" # One of: ["WEB_APP", "GENERATIVE_AI_APP"], # required
    #     }
    #   }
    # @return [Types::UpdatePentestOutput]
    def update_pentest(params = {}, options = {})
      request = build_request(:update_pentest, params)
      request.send_request(options)
    end

    # <p>Updates the certificate associated with a private connection. Certificates can be added or replaced but not removed.</p>
    # @param [Hash, Types::UpdatePrivateConnectionCertificateInput] params
    # @option params [String] :private_connection_name
    #   <p>The name of the private connection to update.</p>
    # @option params [String] :certificate
    #   <p>The PEM-encoded certificate chain for the private connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     private_connection_name: "PrivateConnectionName", # required
    #     certificate: "CertificateChain", # required
    #   }
    #   options = {}
    #   response = client.update_private_connection_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "PrivateConnectionName", # required
    #     type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "SELF_MANAGED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     resource_gateway_id: "ResourceGatewayId",
    #     host_address: "HostAddress",
    #     vpc_id: "PrivateConnectionVpcId",
    #     resource_configuration_id: "ResourceConfigurationId",
    #     certificate_expiry_time: Time.now,
    #     dns_resolution: "PUBLIC" # One of: ["PUBLIC", "IN_VPC"],
    #     failure_message: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdatePrivateConnectionCertificateOutput]
    def update_private_connection_certificate(params = {}, options = {})
      request = build_request(:update_private_connection_certificate, params)
      request.send_request(options)
    end

    # <p>Updates a security requirement pack. For customer managed packs, both metadata and status can be updated. For AWS managed packs, only status can be updated.</p>
    # @param [Hash, Types::UpdateSecurityRequirementPackInput] params
    # @option params [String] :pack_id
    #   <p>The unique identifier of the security requirement pack to update.</p>
    # @option params [String] :name
    #   <p>The updated name of the security requirement pack.</p>
    # @option params [String] :description
    #   <p>The updated description of the security requirement pack.</p>
    # @option params [String] :status
    #   <p>The updated status of the security requirement pack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pack_id: "SecurityRequirementPackId", # required
    #     name: "SecurityRequirementPackName",
    #     description: "String",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_security_requirement_pack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pack_id: "SecurityRequirementPackId", # required
    #     name: "SecurityRequirementPackName",
    #     description: "String",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::UpdateSecurityRequirementPackOutput]
    def update_security_requirement_pack(params = {}, options = {})
      request = build_request(:update_security_requirement_pack, params)
      request.send_request(options)
    end

    # <p>Updates the verification method for a target domain.</p>
    # @param [Hash, Types::UpdateTargetDomainInput] params
    # @option params [String] :target_domain_id
    #   <p>The unique identifier of the target domain to update.</p>
    # @option params [String] :verification_method
    #   <p>The updated verification method for the target domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_domain_id: "TargetDomainId", # required
    #     verification_method: "DNS_TXT" # One of: ["DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"], # required
    #   }
    #   options = {}
    #   response = client.update_target_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domain_id: "TargetDomainId", # required
    #     domain_name: "String", # required
    #     verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED", "UNREACHABLE"], # required
    #     verification_status_reason: "String",
    #     verification_details: {
    #       method: "DNS_TXT" # One of: ["DNS_TXT", "HTTP_ROUTE", "PRIVATE_VPC"],
    #       dns_txt: {
    #         token: "String",
    #         dns_record_name: "String",
    #         dns_record_type: "TXT" # One of: ["TXT"]
    #       },
    #       http_route: {
    #         token: "String",
    #         route_path: "String"
    #       }
    #     },
    #     created_at: Time.now,
    #     verified_at: Time.now
    #   }
    # @return [Types::UpdateTargetDomainOutput]
    def update_target_domain(params = {}, options = {})
      request = build_request(:update_target_domain, params)
      request.send_request(options)
    end

    # <p>Updates a threat.</p>
    # @param [Hash, Types::UpdateThreatInput] params
    # @option params [String] :threat_id
    #   <p>The unique identifier of the threat to update.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    # @option params [String] :title
    #   <p>A short title summarizing the threat.</p>
    # @option params [String] :status
    #   <p>The updated status of the threat.</p>
    # @option params [String] :comments
    #   <p>Optional customer comment.</p>
    # @option params [String] :statement
    #   <p>The updated natural-language threat statement.</p>
    # @option params [String] :severity
    #   <p>The updated severity level of the threat.</p>
    # @option params [String] :threat_source
    #   <p>The updated actor or origin of the threat.</p>
    # @option params [String] :prerequisites
    #   <p>The updated conditions required for the threat to be exploitable.</p>
    # @option params [String] :threat_action
    #   <p>The updated description of what the threat source can do.</p>
    # @option params [String] :threat_impact
    #   <p>The updated direct consequence of the threat action.</p>
    # @option params [Array<String>] :impacted_goal
    #   <p>The updated security goals affected by the threat.</p>
    # @option params [Array<String>] :impacted_assets
    #   <p>The updated list of specific assets affected by the threat.</p>
    # @option params [Types::ThreatAnchorShape] :anchor
    #   <p>The updated DFD element this threat is anchored to.</p>
    # @option params [Array<Types::ThreatEvidenceShape>] :evidence
    #   <p>The updated source code files supporting the threat.</p>
    # @option params [String] :recommendation
    #   <p>The updated recommended mitigation guidance for this threat.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     status: "OPEN" # One of: ["OPEN", "RESOLVED", "DISMISSED"],
    #     comments: "String",
    #     statement: "String",
    #     severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String"
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String"
    #       }
    #     ],
    #     recommendation: "String"
    #   }
    #   options = {}
    #   response = client.update_threat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_id: "String", # required
    #     threat_job_id: "String", # required
    #     title: "String",
    #     statement: "String",
    #     severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"],
    #     status: "OPEN" # One of: ["OPEN", "RESOLVED", "DISMISSED"],
    #     comments: "String",
    #     stride: ["SPOOFING" # One of: ["SPOOFING", "TAMPERING", "REPUDIATION", "INFORMATION_DISCLOSURE", "DENIAL_OF_SERVICE", "ELEVATION_OF_PRIVILEGE"]],
    #     threat_source: "String",
    #     prerequisites: "String",
    #     threat_action: "String",
    #     threat_impact: "String",
    #     impacted_goal: ["String"],
    #     impacted_assets: ["String"],
    #     anchor: {
    #       kind: "String",
    #       id: "String",
    #       package_id: "String"
    #     },
    #     evidence: [
    #       {
    #         package_id: "String",
    #         path: "String"
    #       }
    #     ],
    #     recommendation: "String",
    #     created_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #     updated_by: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateThreatOutput]
    def update_threat(params = {}, options = {})
      request = build_request(:update_threat, params)
      request.send_request(options)
    end

    # <p>Updates an existing threat model configuration.</p>
    # @param [Hash, Types::UpdateThreatModelInput] params
    # @option params [String] :threat_model_id
    #   <p>The unique identifier of the threat model to update.</p>
    # @option params [String] :agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    # @option params [String] :title
    #   <p>The updated title of the threat model.</p>
    # @option params [String] :description
    #   <p>The updated description of the application or system being threat modeled.</p>
    # @option params [Types::Assets] :assets
    #   <p>The updated assets for the threat model.</p>
    # @option params [Array<Types::DocumentInfo>] :scope_docs
    #   <p>The updated scoped documents for the agent to focus on during threat modeling.</p>
    # @option params [String] :service_role
    #   <p>The updated IAM service role for the threat model.</p>
    # @option params [Types::CloudWatchLog] :log_config
    #   <p>The updated CloudWatch Logs configuration for the threat model.</p>
    # @option params [Types::ReportDestination] :report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     threat_model_id: "String", # required
    #     agent_space_id: "String", # required
    #     title: "String",
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         }
    #       }
    #     ],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_threat_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_model_id: "String", # required
    #     title: "String",
    #     agent_space_id: "String",
    #     description: "String",
    #     assets: {
    #       endpoints: [
    #         {
    #           uri: "String"
    #         }
    #       ],
    #       actors: [
    #         {
    #           identifier: "String",
    #           uris: ["String"],
    #           authentication: {
    #             provider_type: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER", "AWS_LAMBDA", "AWS_IAM_ROLE", "AWS_INTERNAL"],
    #             value: "String"
    #           },
    #           description: "String",
    #           enable_email_mfa: false,
    #           mfa_forwarding_address: "SensitiveEmailAddress"
    #         }
    #       ],
    #       documents: [
    #         {
    #           s3_location: "String",
    #           artifact_id: "String",
    #           integrated_document: {
    #             integration_id: "String", # required
    #             resource_id: "String", # required
    #           }
    #         }
    #       ],
    #       source_code: [
    #         {
    #           s3_location: "String"
    #         }
    #       ],
    #       integrated_repositories: [
    #         {
    #           integration_id: "String", # required
    #           provider_resource_id: "String", # required
    #           branch: "String"
    #         }
    #       ],
    #       trusted_ca_certificates: [
    #         {
    #           source: { # required
    #             # One of:
    #             inline_pem: "CaCertificatePem",
    #             artifact_id: "String",
    #             s3_location: "String"
    #           }
    #         }
    #       ]
    #     },
    #     scope_docs: [
    #       {
    #         s3_location: "String",
    #         artifact_id: "String",
    #         integrated_document: {
    #           integration_id: "String", # required
    #           resource_id: "String", # required
    #         }
    #       }
    #     ],
    #     service_role: "ServiceRole",
    #     log_config: {
    #       log_group: "String",
    #       log_stream: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     report_destination: {
    #       integration_id: "String", # required
    #       container_id: "String", # required
    #       parent_id: "String",
    #       document_id: "String"
    #     }
    #   }
    # @return [Types::UpdateThreatModelOutput]
    def update_threat_model(params = {}, options = {})
      request = build_request(:update_threat_model, params)
      request.send_request(options)
    end

    # <p>Initiates verification of a target domain. This checks whether the domain ownership verification token has been properly configured.</p>
    # @param [Hash, Types::VerifyTargetDomainInput] params
    # @option params [String] :target_domain_id
    #   <p>The unique identifier of the target domain to verify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_domain_id: "TargetDomainId", # required
    #   }
    #   options = {}
    #   response = client.verify_target_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_domain_id: "TargetDomainId",
    #     domain_name: "String",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     verified_at: Time.now,
    #     status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED", "UNREACHABLE"],
    #     verification_status_reason: "String"
    #   }
    # @return [Types::VerifyTargetDomainOutput]
    def verify_target_domain(params = {}, options = {})
      request = build_request(:verify_target_domain, params)
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
      context[:gem_name] = 'aws-sdk-securityagent'
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
