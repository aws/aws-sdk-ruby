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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:connecthealth)

module Aws::ConnectHealth
  # An API client for Aws::ConnectHealth.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ConnectHealth
    @identifier = :connecthealth

    add_plugin(::Aws::ConnectHealth::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ConnectHealth::EndpointProvider)
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

    # <p>Activates a Subscription to enable billing for a user.</p>
    # @param [Hash, Types::ActivateSubscriptionInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    # @option params [String] :subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.activate_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       domain_id: "DomainId", # required
    #       subscription_id: "SubscriptionId", # required
    #       arn: "SubscriptionArn", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETED"], # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       activated_at: Time.now,
    #       deactivated_at: Time.now
    #     }
    #   }
    # @return [Types::ActivateSubscriptionOutput]
    def activate_subscription(params = {}, options = {})
      request = build_request(:activate_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a new Domain for managing HealthAgent resources.</p>
    # @param [Hash, Types::CreateDomainInput] params
    # @option params [String] :name
    #   <p>The name for the new Domain.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key to use for encrypting data in this Domain.</p>
    # @option params [Types::CreateWebAppConfiguration] :web_app_setup_configuration
    #   <p>Configuration for the Domain web application. Optional, but if provided all fields are required.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the Domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #     kms_key_arn: "KmsKeyArn",
    #     web_app_setup_configuration: {
    #       ehr_role: "String", # required
    #       idc_instance_id: "String", # required
    #       idc_region: "String", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     arn: "DomainArn", # required
    #     name: "DomainName", # required
    #     kms_key_arn: "KmsKeyArn",
    #     encryption_context: {
    #       encryption_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETED"], # required
    #     web_app_url: "WebAppUrl",
    #     web_app_configuration: {
    #       ehr_role: "String", # required
    #       idc_application_id: "String", # required
    #       idc_region: "String", # required
    #     },
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateDomainOutput]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates a new Subscription within a Domain for billing and user management.</p>
    # @param [Hash, Types::CreateSubscriptionInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.create_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #     arn: "SubscriptionArn", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETED"], # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     activated_at: Time.now,
    #     deactivated_at: Time.now
    #   }
    # @return [Types::CreateSubscriptionOutput]
    def create_subscription(params = {}, options = {})
      request = build_request(:create_subscription, params)
      request.send_request(options)
    end

    # <p>Deactivates a Subscription to stop billing for a user.</p>
    # @param [Hash, Types::DeactivateSubscriptionInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    # @option params [String] :subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.deactivate_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       domain_id: "DomainId", # required
    #       subscription_id: "SubscriptionId", # required
    #       arn: "SubscriptionArn", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETED"], # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       activated_at: Time.now,
    #       deactivated_at: Time.now
    #     }
    #   }
    # @return [Types::DeactivateSubscriptionOutput]
    def deactivate_subscription(params = {}, options = {})
      request = build_request(:deactivate_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a Domain and all associated resources.</p>
    # @param [Hash, Types::DeleteDomainInput] params
    # @option params [String] :domain_id
    #   <p>The id of the Domain to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     arn: "DomainArn", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETED"], # required
    #   }
    # @return [Types::DeleteDomainOutput]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Domain.</p>
    # @param [Hash, Types::GetDomainInput] params
    # @option params [String] :domain_id
    #   <p>The id of the Domain to get</p>
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
    #     arn: "DomainArn", # required
    #     name: "DomainName", # required
    #     kms_key_arn: "KmsKeyArn",
    #     encryption_context: {
    #       encryption_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETED"], # required
    #     web_app_url: "WebAppUrl",
    #     web_app_configuration: {
    #       ehr_role: "String", # required
    #       idc_application_id: "String", # required
    #       idc_region: "String", # required
    #     },
    #     created_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDomainOutput]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an existing Medical Scribe listening session</p>
    # @param [Hash, Types::GetMedicalScribeListeningSessionInput] params
    # @option params [String] :session_id
    #   <p>The Session identifier</p>
    # @option params [String] :domain_id
    #   <p>The Domain identifier</p>
    # @option params [String] :subscription_id
    #   <p>The Subscription identifier</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "ScribeSessionId", # required
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.get_medical_scribe_listening_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_scribe_listening_session_details: {
    #       session_id: "ScribeSessionId",
    #       domain_id: "DomainId",
    #       subscription_id: "SubscriptionId",
    #       language_code: "en-US" # One of: ["en-US", "multi"],
    #       media_sample_rate_hertz: 1,
    #       media_encoding: "pcm" # One of: ["pcm", "flac"],
    #       channel_definitions: [
    #         {
    #           channel_id: 1, # required
    #           participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #         }
    #       ],
    #       post_stream_action_settings: {
    #         output_s3_uri: "S3Uri", # required
    #         clinical_note_generation_settings: { # required
    #           note_template_settings: {
    #             # One of:
    #             managed_template: {
    #               template_type: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #             },
    #             custom_template: {
    #               template_type: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP"]
    #             }
    #           }
    #         }
    #       },
    #       post_stream_action_result: {
    #         clinical_note_generation_result: {
    #           note_result: {
    #             output_location: "Uri",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #             failure_reason: "ErrorMessage"
    #           },
    #           transcript_result: {
    #             output_location: "Uri",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #             failure_reason: "ErrorMessage"
    #           },
    #           after_visit_summary_result: {
    #             output_location: "Uri",
    #             status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #             failure_reason: "ErrorMessage"
    #           }
    #         }
    #       },
    #       encounter_context_provided: false,
    #       stream_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "PAUSED", "FAILED", "COMPLETED"],
    #       stream_creation_time: Time.now,
    #       stream_end_time: Time.now
    #     }
    #   }
    # @return [Types::GetMedicalScribeListeningSessionOutput]
    def get_medical_scribe_listening_session(params = {}, options = {})
      request = build_request(:get_medical_scribe_listening_session, params)
      request.send_request(options)
    end

    # <p>Get details of a started patient insights job.</p>
    # @param [Hash, Types::GetPatientInsightsJobRequest] params
    # @option params [String] :domain_id
    #   <p/>
    # @option params [String] :job_id
    #   <p/>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_patient_insights_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     job_arn: "JobArn", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"], # required
    #     creation_time: Time.now,
    #     updated_time: Time.now,
    #     insights_output: {
    #       uri: "S3Uri", # required
    #     },
    #     status_details: "NonEmptyString",
    #     patient_context: { # required
    #       patient_id: "SensitiveNonEmptyString", # required
    #       date_of_birth: "SensitiveIsoDateString",
    #       pronouns: "HE_HIM" # One of: ["HE_HIM", "SHE_HER", "THEY_THEM"]
    #     },
    #     insights_context: { # required
    #       insights_type: "PRE_VISIT" # One of: ["PRE_VISIT"], # required
    #     },
    #     encounter_context: { # required
    #       encounter_reason: "SensitiveNonEmptyString", # required
    #     },
    #     user_context: { # required
    #       role: "CLINICIAN" # One of: ["CLINICIAN"], # required
    #       user_id: "SensitiveNonEmptyString", # required
    #       specialty: "PRIMARY_CARE" # One of: ["PRIMARY_CARE"]
    #     },
    #     input_data_config: { # required
    #       fhir_server: {
    #         fhir_endpoint: "NonEmptyString", # required
    #         oauth_token: "SensitiveNonEmptyString"
    #       },
    #       s3_sources: [
    #         {
    #           uri: "S3Uri", # required
    #         }
    #       ]
    #     },
    #     output_data_config: { # required
    #       s3_output_path: "S3Uri", # required
    #     }
    #   }
    # @return [Types::GetPatientInsightsJobResponse]
    def get_patient_insights_job(params = {}, options = {})
      request = build_request(:get_patient_insights_job, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Subscription.</p>
    # @param [Hash, Types::GetSubscriptionInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    # @option params [String] :subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.get_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       domain_id: "DomainId", # required
    #       subscription_id: "SubscriptionId", # required
    #       arn: "SubscriptionArn", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETED"], # required
    #       created_at: Time.now, # required
    #       last_updated_at: Time.now, # required
    #       activated_at: Time.now,
    #       deactivated_at: Time.now
    #     }
    #   }
    # @return [Types::GetSubscriptionOutput]
    def get_subscription(params = {}, options = {})
      request = build_request(:get_subscription, params)
      request.send_request(options)
    end

    # <p>Lists Domains for a given account.</p>
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [String] :status
    #   <p>Filter by Domain status.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETED"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         arn: "DomainArn", # required
    #         name: "DomainName", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETED"], # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Lists all Subscriptions within a Domain.</p>
    # @param [Hash, Types::ListSubscriptionsInput] params
    # @option params [String] :domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Token for pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         subscription_id: "SubscriptionId", # required
    #         arn: "SubscriptionArn", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETED"], # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         activated_at: Time.now,
    #         deactivated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSubscriptionsOutput]
    def list_subscriptions(params = {}, options = {})
      request = build_request(:list_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified resource</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to list tags for</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Starts a new Medical Scribe listening session for real-time audio transcription</p>
    # @param [Hash, Types::StartMedicalScribeListeningSessionInput] params
    # @option params [String] :session_id
    #   <p>The Session identifier</p>
    # @option params [String] :domain_id
    #   <p>The Domain identifier</p>
    # @option params [String] :subscription_id
    #   <p>The Subscription identifier</p>
    # @option params [String] :language_code
    #   <p>The Language Code for the audio in the session</p>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate of the input audio</p>
    # @option params [String] :media_encoding
    #   <p>The encoding for the input audio</p>
    # @option params [Types::MedicalScribeInputStream] :input_stream
    #   <p/>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "ScribeSessionId", # required
    #     domain_id: "DomainId", # required
    #     subscription_id: "SubscriptionId", # required
    #     language_code: "en-US" # One of: ["en-US", "multi"], # required
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm" # One of: ["pcm", "flac"], # required
    #     input_stream: {
    #       # One of:
    #       audio_event: {
    #         audio_chunk: "data", # required
    #       },
    #       binary_audio_event: {
    #         audio_chunk: "data", # required
    #       },
    #       session_control_event: {
    #         type: "END_OF_SESSION" # One of: ["END_OF_SESSION"]
    #       },
    #       configuration_event: {
    #         post_stream_action_settings: { # required
    #           output_s3_uri: "S3Uri", # required
    #           clinical_note_generation_settings: { # required
    #             note_template_settings: { # required
    #               # One of:
    #               managed_template: {
    #                 template_type: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"], # required
    #               },
    #               custom_template: {
    #                 template_type: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP"], # required
    #                 template_instructions: [ # required
    #                   {
    #                     section_header: "SensitiveSectionHeaderString", # required
    #                     section_instruction: "SensitiveMarkdownString", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         },
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #           }
    #         ],
    #         encounter_context: {
    #           unstructured_context: "SensitiveMarkdownString"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_medical_scribe_listening_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "ScribeSessionId",
    #     domain_id: "DomainId",
    #     subscription_id: "SubscriptionId",
    #     request_id: "RequestId",
    #     language_code: "en-US" # One of: ["en-US", "multi"],
    #     media_sample_rate_hertz: 1,
    #     media_encoding: "pcm" # One of: ["pcm", "flac"],
    #     response_stream: {
    #       # One of:
    #       transcript_event: {
    #         transcript_segment: {
    #           segment_id: "String",
    #           audio_begin_offset: 1.0,
    #           audio_end_offset: 1.0,
    #           is_partial: false,
    #           channel_id: "String",
    #           content: "String"
    #         }
    #       },
    #       internal_failure_exception: {
    #         message: "String"
    #       },
    #       validation_exception: {
    #         message: "String"
    #       }
    #     }
    #   }
    # @return [Types::StartMedicalScribeListeningSessionOutput]
    def start_medical_scribe_listening_session(params = {}, options = {})
      request = build_request(:start_medical_scribe_listening_session, params)
      request.send_request(options)
    end

    # <p>Starts a new patient insights job.</p>
    # @param [Hash, Types::StartPatientInsightsJobRequest] params
    # @option params [String] :domain_id
    #   <p/>
    # @option params [Types::PatientInsightsPatientContext] :patient_context
    #   <p/>
    # @option params [Types::InsightsContext] :insights_context
    #   <p/>
    # @option params [Types::PatientInsightsEncounterContext] :encounter_context
    #   <p/>
    # @option params [Types::UserContext] :user_context
    #   <p/>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p/>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p/>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     patient_context: { # required
    #       patient_id: "SensitiveNonEmptyString", # required
    #       date_of_birth: "SensitiveIsoDateString",
    #       pronouns: "HE_HIM" # One of: ["HE_HIM", "SHE_HER", "THEY_THEM"]
    #     },
    #     insights_context: { # required
    #       insights_type: "PRE_VISIT" # One of: ["PRE_VISIT"], # required
    #     },
    #     encounter_context: { # required
    #       encounter_reason: "SensitiveNonEmptyString", # required
    #     },
    #     user_context: { # required
    #       role: "CLINICIAN" # One of: ["CLINICIAN"], # required
    #       user_id: "SensitiveNonEmptyString", # required
    #       specialty: "PRIMARY_CARE" # One of: ["PRIMARY_CARE"]
    #     },
    #     input_data_config: { # required
    #       fhir_server: {
    #         fhir_endpoint: "NonEmptyString", # required
    #         oauth_token: "SensitiveNonEmptyString"
    #       },
    #       s3_sources: [
    #         {
    #           uri: "S3Uri", # required
    #         }
    #       ]
    #     },
    #     output_data_config: { # required
    #       s3_output_path: "S3Uri", # required
    #     },
    #     client_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.start_patient_insights_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn", # required
    #     job_id: "JobId", # required
    #     creation_time: Time.now
    #   }
    # @return [Types::StartPatientInsightsJobResponse]
    def start_patient_insights_job(params = {}, options = {})
      request = build_request(:start_patient_insights_job, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags with the specified resource</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to tag</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes the specified tags from the specified resource</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to untag</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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
      context[:gem_name] = 'aws-sdk-connecthealth'
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
