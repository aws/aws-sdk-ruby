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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:endusermessaging)

module Aws::EndUserMessaging
  # An API client for Aws::EndUserMessaging.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::EndUserMessaging
    @identifier = :endusermessaging

    add_plugin(::Aws::EndUserMessaging::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EndUserMessaging::EndpointProvider)
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

    # <p>Creates a brand profile. A brand profile is a lightweight container that holds your brand identity information as flexible attributes. After you create a brand profile, use the CreateBrandProfileAttributes operation to add company information, addresses, compliance documents, and logos.</p>
    # @param [Hash, Types::CreateBrandProfileInput] params
    # @option params [String] :brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    # @example Create a brand profile
    #   # Example operation for create_brand_profile
    #   params = {
    #     brand_profile_name: "AcmeCorp",
    #     deletion_protection_enabled: true
    #   }
    #   options = {}
    #   response = client.create_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "bp-abc12345678901234",
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #     brand_profile_name: "AcmeCorp",
    #     status: ACTIVE,
    #     deletion_protection_enabled: true,
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727130000),
    #     attributes_created: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_name: "BrandProfileName", # required
    #     client_token: "ClientToken",
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_arn: "AmazonResourceName", # required
    #     brand_profile_name: "BrandProfileName", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"], # required
    #     deletion_protection_enabled: false, # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     attributes_created: 1, # required
    #   }
    # @return [Types::CreateBrandProfileOutput]
    def create_brand_profile(params = {}, options = {})
      request = build_request(:create_brand_profile, params)
      request.send_request(options)
    end

    # <p>Creates up to 10 attributes for a brand profile in a single request. For attributes of type IMAGE or DOCUMENT, the response includes a presigned Amazon S3 URL that you use to upload the media. This operation is atomic: either all of the attributes are created, or none of them are.</p>
    # @param [Hash, Types::CreateBrandProfileAttributesInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::BrandProfileAttributeInput>] :attributes
    #   <p>The brand profile attributes.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @example Create a text attribute on a brand profile
    #   # Example operation for create_brand_profile_attributes
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     attributes: [
    #       {
    #         attribute_name: "SupportEmail",
    #         attribute_type: TEXT,
    #         attribute_value: "support@example.com",
    #         category: "CONTACT"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_brand_profile_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         attribute_name: "SupportEmail",
    #         attribute_type: TEXT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attributes: [ # required
    #       {
    #         attribute_name: "BrandProfileAttributeName", # required
    #         attribute_type: "TEXT" # One of: ["TEXT", "IMAGE", "DOCUMENT"], # required
    #         attribute_value: "BrandProfileAttributeValue",
    #         attachment_body: "data",
    #         description: "BrandProfileAttributeDescription",
    #         category: "BrandProfileAttributeCategory"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_brand_profile_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [ # required
    #       {
    #         attribute_name: "BrandProfileAttributeName", # required
    #         attribute_type: "TEXT" # One of: ["TEXT", "IMAGE", "DOCUMENT"], # required
    #         media_download_url: "MediaDownloadUrl"
    #       }
    #     ]
    #   }
    # @return [Types::CreateBrandProfileAttributesOutput]
    def create_brand_profile_attributes(params = {}, options = {})
      request = build_request(:create_brand_profile_attributes, params)
      request.send_request(options)
    end

    # <p>Creates a brand profile and populates its attributes from an existing registration. This operation runs asynchronously. Use the GetJob operation to track its progress.</p>
    # @param [Hash, Types::CreateBrandProfileFromRegistrationInput] params
    # @option params [String] :registration_id
    #   <p>The identifier or Amazon Resource Name (ARN) of the registration to populate the brand profile from.</p>
    # @option params [String] :brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    # @option params [Boolean] :smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @example Create a brand profile from a registration
    #   # Example operation for create_brand_profile_from_registration
    #   params = {
    #     registration_id: "reg-abc12345678901234",
    #     brand_profile_name: "AcmeCorp",
    #     smart_match: true
    #   }
    #   options = {}
    #   response = client.create_brand_profile_from_registration(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234",
    #         resource_identifier: "reg-abc12345678901234"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     brand_profile_name: "BrandProfileName", # required
    #     smart_match: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_brand_profile_from_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         job_id: "JobId", # required
    #         resource_identifier: "JobResourceIdentifier", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateBrandProfileFromRegistrationOutput]
    def create_brand_profile_from_registration(params = {}, options = {})
      request = build_request(:create_brand_profile_from_registration, params)
      request.send_request(options)
    end

    # <p>Creates a notify code configuration. A notify code configuration is a reusable policy that defines how one-time passcodes are generated and rendered, including the code type, length, validity period, maximum number of attempts, and channel templates.</p>
    # @param [Hash, Types::CreateNotifyCodeConfigurationInput] params
    # @option params [String] :notify_code_configuration_name
    #   <p>The name of the notify code configuration.</p>
    # @option params [Types::CodeConfigurationParameters] :code_configuration_parameters
    #   <p>The passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. Each member is optional. When you omit a member, no value is applied at create time and the default is applied when a passcode is sent.</p>
    # @option params [Types::ChannelParameters] :channel_parameters
    #   <p>The channel-specific parameters used to render and deliver the one-time passcode. Provide parameters for any subset of channels. Each member configures one delivery route, and the route that is selected at send time uses the matching channel.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    # @example Create a notify code configuration
    #   # Example operation for create_notify_code_configuration
    #   params = {
    #     notify_code_configuration_name: "SignupOtp",
    #     code_configuration_parameters: {
    #       code_type: NUMERIC,
    #       code_length: 6,
    #       validity_period_minutes: 10,
    #       max_attempts: 3
    #     },
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "Your verification code is {{code}}."
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_notify_code_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: {
    #       notify_code_configuration_id: "ncc-abc12345678901234",
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234",
    #       notify_code_configuration_name: "SignupOtp",
    #       code_configuration_parameters: {
    #         code_type: NUMERIC,
    #         code_length: 6,
    #         validity_period_minutes: 10,
    #         max_attempts: 3
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}."
    #         }
    #       },
    #       deletion_protection_enabled: false,
    #       created_at: Time.parse(1727130000),
    #       updated_at: Time.parse(1727130000)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #     code_configuration_parameters: {
    #       code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1
    #     },
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "InlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #         }
    #       },
    #       voice: {
    #         inline_template_body: "InlineTemplateBody",
    #         language_code: "LanguageCode",
    #         voice_id: "VoiceId",
    #         voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #       },
    #       notify: {
    #         notify_template_id: "NotifyTemplateId",
    #         voice_id: "VoiceId"
    #       },
    #       whats_app: {
    #         whats_app_template_name: "WhatsAppTemplateName",
    #         language_code: "LanguageCode"
    #       }
    #     },
    #     deletion_protection_enabled: false,
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_notify_code_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: { # required
    #       notify_code_configuration_id: "NotifyCodeConfigurationId", # required
    #       notify_code_configuration_arn: "AmazonResourceName", # required
    #       notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #       code_configuration_parameters: {
    #         code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #         code_length: 1,
    #         validity_period_minutes: 1,
    #         max_attempts: 1
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "InlineTemplateBody",
    #           destination_country_parameters: {
    #             "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #           }
    #         },
    #         voice: {
    #           inline_template_body: "InlineTemplateBody",
    #           language_code: "LanguageCode",
    #           voice_id: "VoiceId",
    #           voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #         },
    #         notify: {
    #           notify_template_id: "NotifyTemplateId",
    #           voice_id: "VoiceId"
    #         },
    #         whats_app: {
    #           whats_app_template_name: "WhatsAppTemplateName",
    #           language_code: "LanguageCode"
    #         }
    #       },
    #       deletion_protection_enabled: false, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateNotifyCodeConfigurationOutput]
    def create_notify_code_configuration(params = {}, options = {})
      request = build_request(:create_notify_code_configuration, params)
      request.send_request(options)
    end

    # <p>Creates one or more registrations in the DRAFT state and prefills their fields from the attributes of a brand profile. This operation runs asynchronously. Use the GetJob operation to track its progress.</p>
    # @param [Hash, Types::CreateRegistrationsFromBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :registration_types
    #   <p>The registration types to create, for example US_TOLL_FREE_REGISTRATION or SENDER_ID.</p>
    # @option params [Boolean] :smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @example Create draft registrations from a brand profile
    #   # Example operation for create_registrations_from_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     registration_types: [
    #       "US_TOLL_FREE_REGISTRATION"
    #     ],
    #     smart_match: true
    #   }
    #   options = {}
    #   response = client.create_registrations_from_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234",
    #         resource_identifier: "US_TOLL_FREE_REGISTRATION"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_types: ["RegistrationType"], # required
    #     smart_match: false,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_registrations_from_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         job_id: "JobId", # required
    #         resource_identifier: "JobResourceIdentifier", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateRegistrationsFromBrandProfileOutput]
    def create_registrations_from_brand_profile(params = {}, options = {})
      request = build_request(:create_registrations_from_brand_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a brand profile. This operation also deletes the attributes of the profile and any associated media. The request fails if deletion protection is enabled for the profile.</p>
    # @param [Hash, Types::DeleteBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @example Delete a brand profile
    #   # Example operation for delete_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.delete_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "bp-abc12345678901234",
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_arn: "AmazonResourceName", # required
    #   }
    # @return [Types::DeleteBrandProfileOutput]
    def delete_brand_profile(params = {}, options = {})
      request = build_request(:delete_brand_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a brand profile attribute. If the attribute stores media, this operation also deletes the associated media.</p>
    # @param [Hash, Types::DeleteBrandProfileAttributeInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    # @example Delete a brand profile attribute
    #   # Example operation for delete_brand_profile_attribute
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     attribute_name: "SupportEmail"
    #   }
    #   options = {}
    #   response = client.delete_brand_profile_attribute(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "bp-abc12345678901234",
    #     attribute_name: "SupportEmail"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #   }
    #   options = {}
    #   response = client.delete_brand_profile_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #   }
    # @return [Types::DeleteBrandProfileAttributeOutput]
    def delete_brand_profile_attribute(params = {}, options = {})
      request = build_request(:delete_brand_profile_attribute, params)
      request.send_request(options)
    end

    # <p>Deletes a notify code configuration. Verifications that are already in progress are not affected, because they capture the policy at the time that the passcode was sent.</p>
    # @param [Hash, Types::DeleteNotifyCodeConfigurationInput] params
    # @option params [String] :notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @example Delete a notify code configuration
    #   # Example operation for delete_notify_code_configuration
    #   params = {
    #     notify_code_configuration_id: "ncc-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.delete_notify_code_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_notify_code_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNotifyCodeConfigurationOutput]
    def delete_notify_code_configuration(params = {}, options = {})
      request = build_request(:delete_notify_code_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for a brand profile, including its name, status, deletion protection setting, and timestamps. To retrieve the attributes of the profile, use the ListBrandProfileAttributes operation.</p>
    # @param [Hash, Types::GetBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @example Get a brand profile
    #   # Example operation for get_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.get_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "bp-abc12345678901234",
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #     brand_profile_name: "AcmeCorp",
    #     status: ACTIVE,
    #     deletion_protection_enabled: true,
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727130000)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_arn: "AmazonResourceName", # required
    #     brand_profile_name: "BrandProfileName", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"], # required
    #     deletion_protection_enabled: false, # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetBrandProfileOutput]
    def get_brand_profile(params = {}, options = {})
      request = build_request(:get_brand_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves a single brand profile attribute.</p>
    # @param [Hash, Types::GetBrandProfileAttributeInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    # @example Get a brand profile attribute
    #   # Example operation for get_brand_profile_attribute
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     attribute_name: "SupportEmail"
    #   }
    #   options = {}
    #   response = client.get_brand_profile_attribute(params, options)
    #   response.to_h #=>
    #   {
    #     attribute_name: "SupportEmail",
    #     attribute_type: TEXT,
    #     attribute_value: "support@example.com",
    #     category: "CONTACT",
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727130000)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #   }
    #   options = {}
    #   response = client.get_brand_profile_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_name: "BrandProfileAttributeName", # required
    #     attribute_type: "TEXT" # One of: ["TEXT", "IMAGE", "DOCUMENT"], # required
    #     attribute_value: "BrandProfileAttributeValue",
    #     description: "BrandProfileAttributeDescription",
    #     category: "BrandProfileAttributeCategory",
    #     media_content_type: "String",
    #     media_size_bytes: 1,
    #     media_download_url: "MediaDownloadUrl",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetBrandProfileAttributeOutput]
    def get_brand_profile_attribute(params = {}, options = {})
      request = build_request(:get_brand_profile_attribute, params)
      request.send_request(options)
    end

    # <p>Retrieves the current state of an asynchronous job, including its status and any resources that it created or updated.</p>
    # @param [Hash, Types::GetJobInput] params
    # @option params [String] :job_id
    #   <p>The unique identifier of the asynchronous job. Use the GetJob operation to check the status of the job and to retrieve its results.</p>
    # @example Get an async job
    #   # Example operation for get_job
    #   params = {
    #     job_id: "job-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "job-abc12345678901234",
    #     status: SUCCESS,
    #     operation_type: "CreateRegistrationsFromBrandProfile",
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727130060),
    #     brand_profile_id: "bp-abc12345678901234",
    #     resources: [
    #       {
    #         resource_type: REGISTRATION,
    #         resource_id: "reg-abc12345678901234",
    #         resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:registration/reg-abc12345678901234"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     status: "SUCCESS" # One of: ["SUCCESS", "PROCESSING", "FAILED"], # required
    #     operation_type: "JobOperationType", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     brand_profile_id: "BrandProfileIdOrArn",
    #     error_code: "JobErrorCode",
    #     error_message: "JobErrorMessage",
    #     resources: [
    #       {
    #         resource_type: "REGISTRATION" # One of: ["REGISTRATION", "BRAND_PROFILE"], # required
    #         resource_id: "JobResourceId", # required
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::Job]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>Retrieves a notify code configuration.</p>
    # @param [Hash, Types::GetNotifyCodeConfigurationInput] params
    # @option params [String] :notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @example Get a notify code configuration
    #   # Example operation for get_notify_code_configuration
    #   params = {
    #     notify_code_configuration_id: "ncc-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.get_notify_code_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: {
    #       notify_code_configuration_id: "ncc-abc12345678901234",
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234",
    #       notify_code_configuration_name: "SignupOtp",
    #       code_configuration_parameters: {
    #         code_type: NUMERIC,
    #         code_length: 6,
    #         validity_period_minutes: 10,
    #         max_attempts: 3
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}."
    #         }
    #       },
    #       deletion_protection_enabled: false,
    #       created_at: Time.parse(1727130000),
    #       updated_at: Time.parse(1727130000)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_notify_code_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: { # required
    #       notify_code_configuration_id: "NotifyCodeConfigurationId", # required
    #       notify_code_configuration_arn: "AmazonResourceName", # required
    #       notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #       code_configuration_parameters: {
    #         code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #         code_length: 1,
    #         validity_period_minutes: 1,
    #         max_attempts: 1
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "InlineTemplateBody",
    #           destination_country_parameters: {
    #             "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #           }
    #         },
    #         voice: {
    #           inline_template_body: "InlineTemplateBody",
    #           language_code: "LanguageCode",
    #           voice_id: "VoiceId",
    #           voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #         },
    #         notify: {
    #           notify_template_id: "NotifyTemplateId",
    #           voice_id: "VoiceId"
    #         },
    #         whats_app: {
    #           whats_app_template_name: "WhatsAppTemplateName",
    #           language_code: "LanguageCode"
    #         }
    #       },
    #       deletion_protection_enabled: false, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetNotifyCodeConfigurationOutput]
    def get_notify_code_configuration(params = {}, options = {})
      request = build_request(:get_notify_code_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the attributes for a brand profile.</p>
    # @param [Hash, Types::ListBrandProfileAttributesInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example List brand profile attributes
    #   # Example operation for list_brand_profile_attributes
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_brand_profile_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_attributes: [
    #       {
    #         attribute_name: "SupportEmail",
    #         attribute_type: TEXT,
    #         category: "CONTACT",
    #         created_at: Time.parse(1727130000),
    #         updated_at: Time.parse(1727130000)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_brand_profile_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_attributes: [ # required
    #       {
    #         attribute_name: "BrandProfileAttributeName", # required
    #         attribute_type: "TEXT" # One of: ["TEXT", "IMAGE", "DOCUMENT"], # required
    #         description: "BrandProfileAttributeDescription",
    #         category: "BrandProfileAttributeCategory",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBrandProfileAttributesOutput]
    def list_brand_profile_attributes(params = {}, options = {})
      request = build_request(:list_brand_profile_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the brand profiles in your account. Use the nextToken parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListBrandProfilesInput] params
    # @option params [String] :next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example List brand profiles
    #   # Example operation for list_brand_profiles
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_brand_profiles(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profiles: [
    #       {
    #         brand_profile_id: "bp-abc12345678901234",
    #         brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #         brand_profile_name: "AcmeCorp",
    #         status: ACTIVE,
    #         deletion_protection_enabled: true,
    #         created_at: Time.parse(1727130000),
    #         updated_at: Time.parse(1727130000)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_brand_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profiles: [ # required
    #       {
    #         brand_profile_id: "BrandProfileIdOrArn", # required
    #         brand_profile_arn: "AmazonResourceName", # required
    #         brand_profile_name: "BrandProfileName", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"], # required
    #         deletion_protection_enabled: false, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBrandProfilesOutput]
    def list_brand_profiles(params = {}, options = {})
      request = build_request(:list_brand_profiles, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the asynchronous jobs in your account. You can filter the results by status, brand profile, or operation type.</p>
    # @param [Hash, Types::ListJobsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    # @option params [String] :status
    #   <p>Filters the results to jobs that have the specified status.</p>
    # @option params [String] :brand_profile_id
    #   <p>Filters the results to jobs for the specified brand profile.</p>
    # @option params [String] :operation_type
    #   <p>Filters the results to jobs of the specified operation type.</p>
    # @example List async jobs
    #   # Example operation for list_jobs
    #   params = {
    #     max_results: 10,
    #     status: SUCCESS
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_id: "job-abc12345678901234",
    #         status: SUCCESS,
    #         operation_type: "CreateRegistrationsFromBrandProfile",
    #         created_at: Time.parse(1727130000),
    #         updated_at: Time.parse(1727130060),
    #         brand_profile_id: "bp-abc12345678901234"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "SUCCESS" # One of: ["SUCCESS", "PROCESSING", "FAILED"],
    #     brand_profile_id: "BrandProfileIdOrArn",
    #     operation_type: "JobOperationType"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_id: "JobId", # required
    #         status: "SUCCESS" # One of: ["SUCCESS", "PROCESSING", "FAILED"], # required
    #         operation_type: "JobOperationType", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         brand_profile_id: "BrandProfileIdOrArn",
    #         error_code: "JobErrorCode",
    #         error_message: "JobErrorMessage",
    #         resources: [
    #           {
    #             resource_type: "REGISTRATION" # One of: ["REGISTRATION", "BRAND_PROFILE"], # required
    #             resource_id: "JobResourceId", # required
    #             resource_arn: "AmazonResourceName", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobsOutput]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the notify code configurations in your account.</p>
    # @param [Hash, Types::ListNotifyCodeConfigurationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    # @example List notify code configurations
    #   # Example operation for list_notify_code_configurations
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_notify_code_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     notify_code_configurations: [
    #       {
    #         notify_code_configuration_id: "ncc-abc12345678901234",
    #         notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234",
    #         notify_code_configuration_name: "SignupOtp",
    #         code_configuration_parameters: {
    #           code_type: NUMERIC,
    #           code_length: 6,
    #           validity_period_minutes: 10,
    #           max_attempts: 3
    #         },
    #         channel_parameters: {
    #           text: {
    #             inline_template_body: "Your verification code is {{code}}."
    #           }
    #         },
    #         deletion_protection_enabled: false,
    #         created_at: Time.parse(1727130000),
    #         updated_at: Time.parse(1727130000)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_notify_code_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_code_configurations: [ # required
    #       {
    #         notify_code_configuration_id: "NotifyCodeConfigurationId", # required
    #         notify_code_configuration_arn: "AmazonResourceName", # required
    #         notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #         code_configuration_parameters: {
    #           code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #           code_length: 1,
    #           validity_period_minutes: 1,
    #           max_attempts: 1
    #         },
    #         channel_parameters: {
    #           text: {
    #             inline_template_body: "InlineTemplateBody",
    #             destination_country_parameters: {
    #               "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #             }
    #           },
    #           voice: {
    #             inline_template_body: "InlineTemplateBody",
    #             language_code: "LanguageCode",
    #             voice_id: "VoiceId",
    #             voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #           },
    #           notify: {
    #             notify_template_id: "NotifyTemplateId",
    #             voice_id: "VoiceId"
    #           },
    #           whats_app: {
    #             whats_app_template_name: "WhatsAppTemplateName",
    #             language_code: "LanguageCode"
    #           }
    #         },
    #         deletion_protection_enabled: false, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNotifyCodeConfigurationsOutput]
    def list_notify_code_configurations(params = {}, options = {})
      request = build_request(:list_notify_code_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves a paginated list of the registrations that were created from a brand profile through the synchronization operations.</p>
    # @param [Hash, Types::ListRegistrationsFromBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next page of results. This value is returned when more results are available, and is null when there are no more results to return.</p>
    # @example List registrations created from a brand profile
    #   # Example operation for list_registrations_from_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_registrations_from_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     registration_associations: [
    #       {
    #         registration_id: "reg-abc12345678901234",
    #         registration_type: "US_TOLL_FREE_REGISTRATION",
    #         created_at: Time.parse(1727130000),
    #         smart_match_used: true
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_registrations_from_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_associations: [ # required
    #       {
    #         registration_id: "RegistrationId", # required
    #         registration_type: "RegistrationType", # required
    #         created_at: Time.now, # required
    #         smart_match_used: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegistrationsFromBrandProfileOutput]
    def list_registrations_from_brand_profile(params = {}, options = {})
      request = build_request(:list_registrations_from_brand_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves the tags that are associated with a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example List tags on a resource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Environment",
    #         value: "Production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Generates a one-time passcode and delivers it to a recipient over the requested channel. The passcode policy is captured from the referenced notify code configuration at the time of the request, so later updates to the configuration do not affect verifications that are already in progress.</p>
    # @param [Hash, Types::SendNotifyCodeVerificationInput] params
    # @option params [String] :channel
    #   <p>The channel used to deliver the one-time passcode to the recipient.</p>
    # @option params [String] :destination_identity
    #   <p>The recipient identifier. For the TEXT and VOICE channels, specify an E.164 phone number. For the WhatsApp channel, specify a WhatsApp address.</p>
    # @option params [String] :origination_identity
    #   <p>The identity used to send the message, such as a phone number, sender ID, or pool that is owned by your account.</p>
    # @option params [String] :notify_code_configuration
    #   <p>The identifier or Amazon Resource Name (ARN) of the notify code configuration that supplies the passcode policy and template defaults. When you do not specify a configuration, you must supply the template in the request.</p>
    # @option params [Types::ChannelParameters] :override_channel_parameters
    #   <p>The channel-specific parameters used to render and deliver the one-time passcode for this request. The route that is derived from the channel and the origination identity selects the matching channel. When you do not specify channel parameters, the service uses the parameters from the referenced notify code configuration.</p>
    # @option params [Types::CodeConfigurationParameters] :override_code_configuration_parameters
    #   <p>The per-send overrides for the passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. These values override the values from the referenced notify code configuration. When you do not specify a value, the value from the configuration is used, and if neither is set, the service default applies.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set used to control how delivery events for the message are handled.</p>
    # @option params [Hash<String, String>] :context
    #   <p>A map of custom key and value pairs that are propagated to the delivery events for this verification.</p>
    # @option params [String] :reference_id
    #   <p>A caller-supplied reference identifier that binds a send request to a later validate request. Specify the same value in both requests.</p>
    # @example Send a one-time passcode over SMS
    #   # Example operation for send_notify_code_verification
    #   params = {
    #     channel: TEXT,
    #     destination_identity: "+14255550100",
    #     origination_identity: "arn:aws:sms-voice:us-east-1:123456789012:phone-number/pn-abc123",
    #     notify_code_configuration: "ncc-abc12345678901234",
    #     reference_id: "signup-flow-42"
    #   }
    #   options = {}
    #   response = client.send_notify_code_verification(params, options)
    #   response.to_h #=>
    #   {
    #     verification_id: "ver-abc12345678901234",
    #     message_id: "msg-abc12345678901234"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channel: "TEXT" # One of: ["TEXT", "VOICE", "WHATSAPP"], # required
    #     destination_identity: "DestinationIdentity", # required
    #     origination_identity: "OriginationIdentity", # required
    #     notify_code_configuration: "NotifyCodeConfigurationIdOrArn",
    #     override_channel_parameters: {
    #       text: {
    #         inline_template_body: "InlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #         }
    #       },
    #       voice: {
    #         inline_template_body: "InlineTemplateBody",
    #         language_code: "LanguageCode",
    #         voice_id: "VoiceId",
    #         voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #       },
    #       notify: {
    #         notify_template_id: "NotifyTemplateId",
    #         voice_id: "VoiceId"
    #       },
    #       whats_app: {
    #         whats_app_template_name: "WhatsAppTemplateName",
    #         language_code: "LanguageCode"
    #       }
    #     },
    #     override_code_configuration_parameters: {
    #       code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1
    #     },
    #     configuration_set_name: "ConfigurationSetName",
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     reference_id: "ReferenceId"
    #   }
    #   options = {}
    #   response = client.send_notify_code_verification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_id: "VerificationId", # required
    #     message_id: "MessageId", # required
    #   }
    # @return [Types::SendNotifyCodeVerificationOutput]
    def send_notify_code_verification(params = {}, options = {})
      request = build_request(:send_notify_code_verification, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites the tags on a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    # @example Tag a resource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #     tags: [
    #       {
    #         key: "Environment",
    #         value: "Production"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Removes the specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Remove tags from a resource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #     tag_keys: [
    #       "Environment"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates the name or the deletion protection setting of a brand profile. To change the information that is stored in the profile, use the brand profile attribute operations.</p>
    # @param [Hash, Types::UpdateBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :brand_profile_name
    #   <p>The name of the brand profile. The name can contain alphanumeric characters, underscores, hyphens, and spaces.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    # @example Update a brand profile name
    #   # Example operation for update_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     brand_profile_name: "AcmeCorpUpdated",
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "bp-abc12345678901234",
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234",
    #     brand_profile_name: "AcmeCorpUpdated",
    #     status: ACTIVE,
    #     deletion_protection_enabled: false,
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727216400)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_name: "BrandProfileName",
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_arn: "AmazonResourceName", # required
    #     brand_profile_name: "BrandProfileName", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"], # required
    #     deletion_protection_enabled: false, # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateBrandProfileOutput]
    def update_brand_profile(params = {}, options = {})
      request = build_request(:update_brand_profile, params)
      request.send_request(options)
    end

    # <p>Updates the value, description, or category of an existing brand profile attribute.</p>
    # @param [Hash, Types::UpdateBrandProfileAttributeInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :attribute_name
    #   <p>The name of the brand profile attribute. The name is unique within a brand profile.</p>
    # @option params [String] :attribute_value
    #   <p>The text value of the attribute. This value applies to attributes of type TEXT.</p>
    # @option params [String] :attachment_body
    #   <p>The binary content for an attribute of type IMAGE or DOCUMENT. The content is base64-encoded when it is sent over the wire.</p>
    # @option params [String] :description
    #   <p>A description of the attribute.</p>
    # @option params [String] :category
    #   <p>The category of the attribute.</p>
    # @example Update a brand profile attribute value
    #   # Example operation for update_brand_profile_attribute
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     attribute_name: "SupportEmail",
    #     attribute_value: "help@example.com",
    #     category: "CONTACT"
    #   }
    #   options = {}
    #   response = client.update_brand_profile_attribute(params, options)
    #   response.to_h #=>
    #   {
    #     attribute_name: "SupportEmail",
    #     attribute_type: TEXT,
    #     attribute_value: "help@example.com",
    #     category: "CONTACT",
    #     created_at: Time.parse(1727130000),
    #     updated_at: Time.parse(1727216400)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #     attribute_value: "BrandProfileAttributeValue",
    #     attachment_body: "data",
    #     description: "BrandProfileAttributeDescription",
    #     category: "BrandProfileAttributeCategory"
    #   }
    #   options = {}
    #   response = client.update_brand_profile_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute_name: "BrandProfileAttributeName", # required
    #     attribute_type: "TEXT" # One of: ["TEXT", "IMAGE", "DOCUMENT"], # required
    #     attribute_value: "BrandProfileAttributeValue",
    #     description: "BrandProfileAttributeDescription",
    #     category: "BrandProfileAttributeCategory",
    #     media_content_type: "String",
    #     media_size_bytes: 1,
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateBrandProfileAttributeOutput]
    def update_brand_profile_attribute(params = {}, options = {})
      request = build_request(:update_brand_profile_attribute, params)
      request.send_request(options)
    end

    # <p>Imports or refreshes the attributes of an existing brand profile from an existing registration. This operation runs asynchronously. Use the GetJob operation to track its progress.</p>
    # @param [Hash, Types::UpdateBrandProfileFromRegistrationInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :registration_id
    #   <p>The identifier or Amazon Resource Name (ARN) of the registration to import attributes from.</p>
    # @option params [Boolean] :smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    # @option params [String] :on_attribute_conflict
    #   <p>Specifies how the service resolves an attribute that already exists. REPLACE overwrites the existing value with the incoming value. PRESERVE keeps the existing value.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @example Update a brand profile from a registration
    #   # Example operation for update_brand_profile_from_registration
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     registration_id: "reg-abc12345678901234",
    #     smart_match: true,
    #     on_attribute_conflict: REPLACE
    #   }
    #   options = {}
    #   response = client.update_brand_profile_from_registration(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234",
    #         resource_identifier: "reg-abc12345678901234"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_id: "RegistrationIdOrArn", # required
    #     smart_match: false,
    #     on_attribute_conflict: "REPLACE" # One of: ["REPLACE", "PRESERVE"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_brand_profile_from_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         job_id: "JobId", # required
    #         resource_identifier: "JobResourceIdentifier", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateBrandProfileFromRegistrationOutput]
    def update_brand_profile_from_registration(params = {}, options = {})
      request = build_request(:update_brand_profile_from_registration, params)
      request.send_request(options)
    end

    # <p>Updates the mutable fields of a notify code configuration. Only the fields that you supply are changed. For the template and language fields, supplying an empty value clears the currently stored value.</p>
    # @param [Hash, Types::UpdateNotifyCodeConfigurationInput] params
    # @option params [String] :notify_code_configuration_id
    #   <p>The unique identifier of the notify code configuration. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [String] :notify_code_configuration_name
    #   <p>The name of the notify code configuration.</p>
    # @option params [Types::UpdateCodeConfigurationParameters] :code_configuration_parameters
    #   <p>The updated passcode policy parameters, including the code type, length, validity period, and maximum number of attempts. When you omit a member, its current value is preserved.</p>
    # @option params [Types::UpdateChannelParameters] :channel_parameters
    #   <p>The updated channel-specific parameters used to render and deliver the one-time passcode. This is a loose, nested update: when you omit a channel, that channel's parameters remain unchanged. Within a supplied channel, an empty string on a string member, or an empty map on the destination-country parameters, clears the currently stored value, and absent members preserve the current value.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether deletion protection is enabled. When enabled, the resource cannot be deleted until deletion protection is turned off.</p>
    # @example Update a notify code configuration
    #   # Example operation for update_notify_code_configuration
    #   params = {
    #     notify_code_configuration_id: "ncc-abc12345678901234",
    #     code_configuration_parameters: {
    #       code_length: 8,
    #       validity_period_minutes: 15
    #     }
    #   }
    #   options = {}
    #   response = client.update_notify_code_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: {
    #       notify_code_configuration_id: "ncc-abc12345678901234",
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234",
    #       notify_code_configuration_name: "SignupOtp",
    #       code_configuration_parameters: {
    #         code_type: NUMERIC,
    #         code_length: 8,
    #         validity_period_minutes: 15,
    #         max_attempts: 3
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}."
    #         }
    #       },
    #       deletion_protection_enabled: false,
    #       created_at: Time.parse(1727130000),
    #       updated_at: Time.parse(1727216400)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #     notify_code_configuration_name: "NotifyCodeConfigurationName",
    #     code_configuration_parameters: {
    #       code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1
    #     },
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "UpdateInlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #         }
    #       },
    #       voice: {
    #         inline_template_body: "UpdateInlineTemplateBody",
    #         language_code: "UpdateLanguageCode",
    #         voice_id: "UpdateVoiceId",
    #         voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #       },
    #       notify: {
    #         notify_template_id: "UpdateNotifyTemplateId",
    #         voice_id: "UpdateVoiceId"
    #       },
    #       whats_app: {
    #         whats_app_template_name: "UpdateWhatsAppTemplateName",
    #         language_code: "UpdateLanguageCode"
    #       }
    #     },
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_notify_code_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_code_configuration: { # required
    #       notify_code_configuration_id: "NotifyCodeConfigurationId", # required
    #       notify_code_configuration_arn: "AmazonResourceName", # required
    #       notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #       code_configuration_parameters: {
    #         code_type: "NUMERIC" # One of: ["NUMERIC", "ALPHA", "ALPHANUMERIC"],
    #         code_length: 1,
    #         validity_period_minutes: 1,
    #         max_attempts: 1
    #       },
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "InlineTemplateBody",
    #           destination_country_parameters: {
    #             "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #           }
    #         },
    #         voice: {
    #           inline_template_body: "InlineTemplateBody",
    #           language_code: "LanguageCode",
    #           voice_id: "VoiceId",
    #           voice_message_body_text_type: "TEXT" # One of: ["TEXT", "SSML"]
    #         },
    #         notify: {
    #           notify_template_id: "NotifyTemplateId",
    #           voice_id: "VoiceId"
    #         },
    #         whats_app: {
    #           whats_app_template_name: "WhatsAppTemplateName",
    #           language_code: "LanguageCode"
    #         }
    #       },
    #       deletion_protection_enabled: false, # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateNotifyCodeConfigurationOutput]
    def update_notify_code_configuration(params = {}, options = {})
      request = build_request(:update_notify_code_configuration, params)
      request.send_request(options)
    end

    # <p>Repushes the attributes of a brand profile into existing DRAFT registrations. This operation runs asynchronously. Use the GetJob operation to track its progress.</p>
    # @param [Hash, Types::UpdateRegistrationsFromBrandProfileInput] params
    # @option params [String] :brand_profile_id
    #   <p>The unique identifier of the brand profile. You can specify either the bare ID or the full Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :registration_ids
    #   <p>The identifiers of the registrations.</p>
    # @option params [Boolean] :smart_match
    #   <p>Specifies whether to use semantic field mapping between brand profile attributes and registration fields. The default is true. When false, the service maps fields using a fixed set of standard field types.</p>
    # @option params [String] :on_attribute_conflict
    #   <p>Specifies how the service resolves an attribute that already exists. REPLACE overwrites the existing value with the incoming value. PRESERVE keeps the existing value.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you do not specify a client token, the AWS SDK automatically generates one.</p>
    # @example Update registrations from a brand profile
    #   # Example operation for update_registrations_from_brand_profile
    #   params = {
    #     brand_profile_id: "bp-abc12345678901234",
    #     registration_ids: [
    #       "reg-abc12345678901234"
    #     ],
    #     smart_match: true,
    #     on_attribute_conflict: PRESERVE
    #   }
    #   options = {}
    #   response = client.update_registrations_from_brand_profile(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234",
    #         resource_identifier: "reg-abc12345678901234"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_ids: ["RegistrationIdOrArn"], # required
    #     smart_match: false,
    #     on_attribute_conflict: "REPLACE" # One of: ["REPLACE", "PRESERVE"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_registrations_from_brand_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         job_id: "JobId", # required
    #         resource_identifier: "JobResourceIdentifier", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateRegistrationsFromBrandProfileOutput]
    def update_registrations_from_brand_profile(params = {}, options = {})
      request = build_request(:update_registrations_from_brand_profile, params)
      request.send_request(options)
    end

    # <p>Validates a one-time passcode that a recipient submitted. Validation succeeds when the passcode matches, the validity period has not elapsed, and the maximum number of attempts has not been exceeded.</p>
    # @param [Hash, Types::ValidateNotifyCodeVerificationInput] params
    # @option params [String] :destination_identity
    #   <p>The recipient identifier. For the TEXT and VOICE channels, specify an E.164 phone number. For the WhatsApp channel, specify a WhatsApp address.</p>
    # @option params [String] :reference_id
    #   <p>The caller-supplied reference identifier used to locate the verification. This value must match the value that you supplied to the SendNotifyCodeVerification operation.</p>
    # @option params [String] :code
    #   <p>The one-time passcode that the recipient submitted for validation.</p>
    # @example Validate a submitted one-time passcode
    #   # Example operation for validate_notify_code_verification
    #   params = {
    #     destination_identity: "+14255550100",
    #     reference_id: "signup-flow-42",
    #     code: "123456"
    #   }
    #   options = {}
    #   response = client.validate_notify_code_verification(params, options)
    #   response.to_h #=>
    #   {
    #     status: VALID
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_identity: "DestinationIdentity", # required
    #     reference_id: "ReferenceId",
    #     code: "VerificationCode", # required
    #   }
    #   options = {}
    #   response = client.validate_notify_code_verification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "VALID" # One of: ["VALID", "INVALID"], # required
    #   }
    # @return [Types::ValidateNotifyCodeVerificationOutput]
    def validate_notify_code_verification(params = {}, options = {})
      request = build_request(:validate_notify_code_verification, params)
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
      context[:gem_name] = 'aws-sdk-endusermessaging'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        brand_profile_active: Waiters::BrandProfileActive,
        job_success: Waiters::JobSuccess
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
