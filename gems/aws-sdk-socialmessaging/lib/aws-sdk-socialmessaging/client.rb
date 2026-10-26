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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:socialmessaging)

module Aws::SocialMessaging
  # An API client for Aws::SocialMessaging.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SocialMessaging
    @identifier = :socialmessaging

    add_plugin(::Aws::SocialMessaging::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SocialMessaging::EndpointProvider)
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

    # <p>This is only used through the Amazon Web Services console during sign-up to associate your WhatsApp Business Account to your Amazon Web Services account.</p>
    # @param [Hash, Types::AssociateWhatsAppBusinessAccountInput] params
    # @option params [Types::WhatsAppSignupCallback] :signup_callback
    #   <p>Contains the callback access token.</p>
    # @option params [Types::WhatsAppSetupFinalization] :setup_finalization
    #   <p>A JSON object that contains the phone numbers and WhatsApp Business Account to link to your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     signup_callback: {
    #       access_token: "String", # required
    #       callback_url: "String"
    #     },
    #     setup_finalization: {
    #       associate_in_progress_token: "AssociateInProgressToken", # required
    #       phone_numbers: [ # required
    #         {
    #           id: "WhatsAppPhoneNumber", # required
    #           two_factor_pin: "TwoFactorPin", # required
    #           data_localization_region: "IsoCountryCode",
    #           tags: [
    #             {
    #               key: "String", # required
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       phone_number_parent: "LinkedWhatsAppBusinessAccountId",
    #       waba: {
    #         id: "WhatsAppBusinessAccountId",
    #         event_destinations: [
    #           {
    #             event_destination_arn: "EventDestinationArn", # required
    #             role_arn: "RoleArn"
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "String", # required
    #             value: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.associate_whats_app_business_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signup_callback_result: {
    #       associate_in_progress_token: "AssociateInProgressToken",
    #       linked_accounts_with_incomplete_setup: {
    #         "WhatsAppBusinessAccountId" => {
    #           account_name: "WhatsAppBusinessAccountName",
    #           registration_status: "COMPLETE" # One of: ["COMPLETE", "INCOMPLETE"],
    #           unregistered_whats_app_phone_numbers: [
    #             {
    #               arn: "LinkedWhatsAppPhoneNumberArn", # required
    #               phone_number: "PhoneNumber", # required
    #               phone_number_id: "WhatsAppPhoneNumberId", # required
    #               meta_phone_number_id: "WhatsAppPhoneNumber", # required
    #               display_phone_number_name: "WhatsAppPhoneNumberName", # required
    #               display_phone_number: "WhatsAppDisplayPhoneNumber", # required
    #               quality_rating: "WhatsAppPhoneNumberQualityRating", # required
    #               data_localization_region: "IsoCountryCode"
    #             }
    #           ],
    #           waba_id: "LinkedWhatsAppBusinessAccountId"
    #         }
    #       }
    #     },
    #     status_code: 1,
    #     linked_whats_app_business_account_id: "LinkedWhatsAppBusinessAccountId"
    #   }
    # @return [Types::AssociateWhatsAppBusinessAccountOutput]
    def associate_whats_app_business_account(params = {}, options = {})
      request = build_request(:associate_whats_app_business_account, params)
      request.send_request(options)
    end

    # <p>Creates a Meta Conversions API dataset for a WhatsApp Business Account.</p>
    # @param [Hash, Types::CreateWhatsAppDatasetInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to create a dataset for, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   }
    #   options = {}
    #   response = client.create_whats_app_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "WhatsAppDatasetId", # required
    #   }
    # @return [Types::CreateWhatsAppDatasetOutput]
    def create_whats_app_dataset(params = {}, options = {})
      request = build_request(:create_whats_app_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a new WhatsApp Flow. Flows enable businesses to create rich, interactive forms and experiences
    #          that users can complete without leaving WhatsApp. The Flow is created in DRAFT status. If <code>publish</code>
    #          is set to <code>true</code> and a valid <code>flowJson</code> is provided, the Flow is published immediately.</p>
    # @param [Hash, Types::CreateWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to associate with this Flow.</p>
    # @option params [String] :flow_name
    #   <p>The name of the Flow. Must be unique within the WhatsApp Business Account.</p>
    # @option params [Array<String>] :categories
    #   <p>The categories that classify the business purpose of the Flow. At least one category is required.</p>
    # @option params [String] :flow_json
    #   <p>The Flow JSON definition that describes the screens, components, and logic of the Flow. Maximum size is 10 MB.</p>
    # @option params [Boolean] :publish
    #   <p>Set to <code>true</code> to publish the Flow immediately after creation. Requires a valid <code>flowJson</code> that passes Meta's validation.</p>
    # @option params [String] :clone_flow_id
    #   <p>The ID of an existing Flow within the same WhatsApp Business Account to clone.</p>
    # @option params [String] :endpoint_uri
    #   <p>The HTTPS endpoint that Meta calls for a data exchange Flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_name: "MetaFlowName", # required
    #     categories: ["SIGN_UP" # One of: ["SIGN_UP", "SIGN_IN", "APPOINTMENT_BOOKING", "LEAD_GENERATION", "SHOPPING", "CONTACT_US", "CUSTOMER_SUPPORT", "SURVEY", "OTHER"]], # required
    #     flow_json: "data",
    #     publish: false,
    #     clone_flow_id: "MetaFlowId",
    #     endpoint_uri: "MetaFlowEndpointUri"
    #   }
    #   options = {}
    #   response = client.create_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_id: "MetaFlowId",
    #     validation_errors: ["MetaFlowValidationError"]
    #   }
    # @return [Types::CreateWhatsAppFlowOutput]
    def create_whats_app_flow(params = {}, options = {})
      request = build_request(:create_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Creates a new WhatsApp message template from a custom definition.</p>
    #          <note>
    #             <p>Amazon Web Services End User Messaging Social does not store any WhatsApp message template content.</p>
    #          </note>
    # @param [Hash, Types::CreateWhatsAppMessageTemplateInput] params
    # @option params [String] :template_definition
    #   <p>The complete template definition as a JSON blob.</p>
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to associate with this template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_definition: "data", # required
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   }
    #   options = {}
    #   response = client.create_whats_app_message_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meta_template_id: "MetaTemplateId",
    #     template_status: "String",
    #     category: "MetaTemplateCategory"
    #   }
    # @return [Types::CreateWhatsAppMessageTemplateOutput]
    def create_whats_app_message_template(params = {}, options = {})
      request = build_request(:create_whats_app_message_template, params)
      request.send_request(options)
    end

    # <p>Creates a new WhatsApp message template using a template from Meta's template library.</p>
    # @param [Hash, Types::CreateWhatsAppMessageTemplateFromLibraryInput] params
    # @option params [Types::MetaLibraryTemplate] :meta_library_template
    #   <p>The template configuration from Meta's library, including customizations for buttons and body text.</p>
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to associate with this template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meta_library_template: { # required
    #       template_name: "MetaTemplateName", # required
    #       library_template_name: "MetaTemplateName", # required
    #       template_category: "MetaTemplateCategory", # required
    #       template_language: "MetaTemplateLanguage", # required
    #       library_template_button_inputs: [
    #         {
    #           type: "ButtonType",
    #           phone_number: "PhoneNumber",
    #           url: {
    #             "String" => "String"
    #           },
    #           otp_type: "OtpType",
    #           zero_tap_terms_accepted: false,
    #           supported_apps: [
    #             {
    #               "String" => "String"
    #             }
    #           ]
    #         }
    #       ],
    #       library_template_body_inputs: {
    #         add_contact_number: false,
    #         add_learn_more_link: false,
    #         add_security_recommendation: false,
    #         add_track_package_link: false,
    #         code_expiration_minutes: 1
    #       }
    #     },
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   }
    #   options = {}
    #   response = client.create_whats_app_message_template_from_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meta_template_id: "MetaTemplateId",
    #     template_status: "String",
    #     category: "MetaTemplateCategory"
    #   }
    # @return [Types::CreateWhatsAppMessageTemplateFromLibraryOutput]
    def create_whats_app_message_template_from_library(params = {}, options = {})
      request = build_request(:create_whats_app_message_template_from_library, params)
      request.send_request(options)
    end

    # <p>Uploads media for use in a WhatsApp message template.</p>
    # @param [Hash, Types::CreateWhatsAppMessageTemplateMediaInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this media upload.</p>
    # @option params [Types::S3File] :source_s3_file
    #   <p>Contains information for the S3 bucket that contains media files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     source_s3_file: {
    #       bucket_name: "String", # required
    #       key: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_whats_app_message_template_media(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meta_header_handle: "String"
    #   }
    # @return [Types::CreateWhatsAppMessageTemplateMediaOutput]
    def create_whats_app_message_template_media(params = {}, options = {})
      request = build_request(:create_whats_app_message_template_media, params)
      request.send_request(options)
    end

    # <p>Deletes a WhatsApp Flow permanently. Only Flows in DRAFT status can be deleted. Published or deprecated Flows cannot be deleted.</p>
    # @param [Hash, Types::DeleteWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #   }
    #   options = {}
    #   response = client.delete_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWhatsAppFlowOutput]
    def delete_whats_app_flow(params = {}, options = {})
      request = build_request(:delete_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Delete a media object from the WhatsApp service. If the object is still in an Amazon S3 bucket you should delete it from there too.</p>
    # @param [Hash, Types::DeleteWhatsAppMessageMediaInput] params
    # @option params [String] :media_id
    #   <p>The unique identifier of the media file to delete. Use the <code>mediaId</code> returned from <a href="https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html">PostWhatsAppMessageMedia</a>.</p>
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the originating phone number associated with the media. Phone
    #            number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_id: "WhatsAppMediaId", # required
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #   }
    #   options = {}
    #   response = client.delete_whats_app_message_media(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     success: false
    #   }
    # @return [Types::DeleteWhatsAppMessageMediaOutput]
    def delete_whats_app_message_media(params = {}, options = {})
      request = build_request(:delete_whats_app_message_media, params)
      request.send_request(options)
    end

    # <p>Deletes a WhatsApp message template.</p>
    # @param [Hash, Types::DeleteWhatsAppMessageTemplateInput] params
    # @option params [String] :meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    # @option params [Boolean] :delete_all_languages
    #   <p>If true, deletes all language versions of the template.</p>
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    # @option params [String] :template_name
    #   <p>The name of the template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meta_template_id: "MetaTemplateId",
    #     delete_all_languages: false,
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     template_name: "MetaTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_whats_app_message_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWhatsAppMessageTemplateOutput]
    def delete_whats_app_message_template(params = {}, options = {})
      request = build_request(:delete_whats_app_message_template, params)
      request.send_request(options)
    end

    # <p>Deprecates a published WhatsApp Flow, marking it as no longer recommended for use. The Flow must be in PUBLISHED status. This is an irreversible operation.</p>
    # @param [Hash, Types::DeprecateWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to deprecate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #   }
    #   options = {}
    #   response = client.deprecate_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeprecateWhatsAppFlowOutput]
    def deprecate_whats_app_flow(params = {}, options = {})
      request = build_request(:deprecate_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Disassociate a WhatsApp Business Account (WABA) from your Amazon Web Services account.</p>
    # @param [Hash, Types::DisassociateWhatsAppBusinessAccountInput] params
    # @option params [String] :id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs
    #            and their details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_whats_app_business_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateWhatsAppBusinessAccountOutput]
    def disassociate_whats_app_business_account(params = {}, options = {})
      request = build_request(:disassociate_whats_app_business_account, params)
      request.send_request(options)
    end

    # <p>Get the details of your linked WhatsApp Business Account.</p>
    # @param [Hash, Types::GetLinkedWhatsAppBusinessAccountInput] params
    # @option params [String] :id
    #   <p>The unique identifier, from Amazon Web Services, of the linked WhatsApp Business
    #            Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   }
    #   options = {}
    #   response = client.get_linked_whats_app_business_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: {
    #       arn: "LinkedWhatsAppBusinessAccountArn", # required
    #       id: "LinkedWhatsAppBusinessAccountId", # required
    #       waba_id: "WhatsAppBusinessAccountId", # required
    #       registration_status: "COMPLETE" # One of: ["COMPLETE", "INCOMPLETE"], # required
    #       link_date: Time.now, # required
    #       waba_name: "WhatsAppBusinessAccountName", # required
    #       event_destinations: [ # required
    #         {
    #           event_destination_arn: "EventDestinationArn", # required
    #           role_arn: "RoleArn"
    #         }
    #       ],
    #       marketing_messages_onboarding_status: "WhatsAppBusinessAccountMarketingMessagesOnboardingStatus",
    #       dataset_id: "WhatsAppDatasetId",
    #       phone_numbers: [ # required
    #         {
    #           arn: "LinkedWhatsAppPhoneNumberArn", # required
    #           phone_number: "PhoneNumber", # required
    #           phone_number_id: "WhatsAppPhoneNumberId", # required
    #           meta_phone_number_id: "WhatsAppPhoneNumber", # required
    #           display_phone_number_name: "WhatsAppPhoneNumberName", # required
    #           display_phone_number: "WhatsAppDisplayPhoneNumber", # required
    #           quality_rating: "WhatsAppPhoneNumberQualityRating", # required
    #           data_localization_region: "IsoCountryCode"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLinkedWhatsAppBusinessAccountOutput]
    def get_linked_whats_app_business_account(params = {}, options = {})
      request = build_request(:get_linked_whats_app_business_account, params)
      request.send_request(options)
    end

    # <p>Retrieve the WABA account id and phone number details of a WhatsApp business account phone number.</p>
    # @param [Hash, Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the phone number. Phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a>
    #            to find a phone number's id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WhatsAppPhoneNumberId", # required
    #   }
    #   options = {}
    #   response = client.get_linked_whats_app_business_account_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       arn: "LinkedWhatsAppPhoneNumberArn", # required
    #       phone_number: "PhoneNumber", # required
    #       phone_number_id: "WhatsAppPhoneNumberId", # required
    #       meta_phone_number_id: "WhatsAppPhoneNumber", # required
    #       display_phone_number_name: "WhatsAppPhoneNumberName", # required
    #       display_phone_number: "WhatsAppDisplayPhoneNumber", # required
    #       quality_rating: "WhatsAppPhoneNumberQualityRating", # required
    #       data_localization_region: "IsoCountryCode"
    #     },
    #     linked_whats_app_business_account_id: "LinkedWhatsAppBusinessAccountId",
    #     call_settings: {
    #       call_enabled: false, # required
    #       call_hours: {
    #         enabled: false, # required
    #         timezone: "IanaTimezone", # required
    #         weekly_operating_hours: [ # required
    #           {
    #             day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #             open_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             close_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ],
    #         holiday_schedule: [
    #           {
    #             date: "WhatsAppDate", # required
    #             start_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       call_icon_visibility: "WhatsAppCallIconVisibility",
    #       callback_permission_status: "WhatsAppCallbackPermissionStatus"
    #     }
    #   }
    # @return [Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput]
    def get_linked_whats_app_business_account_phone_number(params = {}, options = {})
      request = build_request(:get_linked_whats_app_business_account_phone_number, params)
      request.send_request(options)
    end

    # <p>Retrieves the business public key for a phone number and its signature status.</p>
    # @param [Hash, Types::GetWhatsAppBusinessPublicKeyInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the phone number whose business public key to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #   }
    #   options = {}
    #   response = client.get_whats_app_business_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     business_public_key: "BusinessPublicKeyPem",
    #     business_public_key_signature_status: "BusinessPublicKeySignatureStatus"
    #   }
    # @return [Types::GetWhatsAppBusinessPublicKeyOutput]
    def get_whats_app_business_public_key(params = {}, options = {})
      request = build_request(:get_whats_app_business_public_key, params)
      request.send_request(options)
    end

    # <p>Retrieves the current calling permission for a WhatsApp end user, along with the calling actions the business is allowed to take with that user. Provide the destination phone number or the business-scoped user ID to identify the end user.</p>
    # @param [Hash, Types::GetWhatsAppCallPermissionInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the business phone number for which to retrieve the calling permission. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.</p>
    # @option params [String] :destination_phone_number
    #   <p>The end user's phone number, in E.164 format, for which to retrieve the calling permission.</p>
    # @option params [String] :end_user_bsuid
    #   <p>The business-scoped user identifier (BSUID) of the end user for which to retrieve the calling permission.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     destination_phone_number: "WhatsAppDestinationPhoneNumber",
    #     end_user_bsuid: "WhatsAppBusinessScopedUserId"
    #   }
    #   options = {}
    #   response = client.get_whats_app_call_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission: { # required
    #       status: "WhatsAppCallPermissionStatus", # required
    #       expiration_time: Time.now
    #     },
    #     actions: [ # required
    #       {
    #         action_name: "WhatsAppCallPermissionActionName", # required
    #         can_perform_action: false, # required
    #         limits: [ # required
    #           {
    #             time_period: "Iso8601Duration", # required
    #             max_allowed: 1, # required
    #             current_usage: 1, # required
    #             limit_expiration_time: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetWhatsAppCallPermissionOutput]
    def get_whats_app_call_permission(params = {}, options = {})
      request = build_request(:get_whats_app_call_permission, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata and status of a WhatsApp Flow, including validation errors, preview information, and health status.</p>
    # @param [Hash, Types::GetWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #   }
    #   options = {}
    #   response = client.get_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_id: "MetaFlowId", # required
    #     flow_name: "MetaFlowName", # required
    #     flow_status: "MetaFlowStatus", # required
    #     categories: ["SIGN_UP" # One of: ["SIGN_UP", "SIGN_IN", "APPOINTMENT_BOOKING", "LEAD_GENERATION", "SHOPPING", "CONTACT_US", "CUSTOMER_SUPPORT", "SURVEY", "OTHER"]],
    #     validation_errors: ["MetaFlowValidationError"],
    #     json_version: "MetaFlowJsonVersion",
    #     data_api_version: "MetaFlowDataApiVersion",
    #     endpoint_uri: "MetaFlowEndpointUri",
    #     preview: {
    #       preview_url: "MetaFlowPreviewUrl", # required
    #       expires_at: "MetaFlowTimestamp", # required
    #     },
    #     whats_app_business_account: {
    #       id: "WhatsAppBusinessAccountId", # required
    #       name: "WhatsAppBusinessAccountName", # required
    #       currency: "MetaFlowWabaCurrency",
    #       timezone_id: "MetaFlowWabaTimezoneId",
    #       message_template_namespace: "MetaFlowWabaTemplateNamespace"
    #     },
    #     application: {
    #       link: "MetaFlowApplicationLink",
    #       name: "MetaFlowApplicationName", # required
    #       id: "MetaFlowApplicationId", # required
    #     },
    #     health_status: {
    #       can_send_message: "MetaFlowHealthStatusAvailability", # required
    #       entities: [
    #         {
    #           entity_type: "MetaFlowHealthEntityType", # required
    #           id: "String", # required
    #           can_send_message: "MetaFlowHealthStatusAvailability", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetWhatsAppFlowOutput]
    def get_whats_app_flow(params = {}, options = {})
      request = build_request(:get_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Generates a web preview URL for testing a WhatsApp Flow before publishing. Preview URLs expire in 30 days and can be shared with stakeholders for review.</p>
    # @param [Hash, Types::GetWhatsAppFlowPreviewInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to preview.</p>
    # @option params [Boolean] :invalidate
    #   <p>Set to <code>true</code> to force generation of a new preview URL. Use this if the previous URL has been compromised or you want a fresh expiration period.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #     invalidate: false
    #   }
    #   options = {}
    #   response = client.get_whats_app_flow_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_id: "MetaFlowId", # required
    #     preview: { # required
    #       preview_url: "MetaFlowPreviewUrl", # required
    #       expires_at: "MetaFlowTimestamp", # required
    #     }
    #   }
    # @return [Types::GetWhatsAppFlowPreviewOutput]
    def get_whats_app_flow_preview(params = {}, options = {})
      request = build_request(:get_whats_app_flow_preview, params)
      request.send_request(options)
    end

    # <p>Get a media file from the WhatsApp service. On successful completion the media file is
    #          retrieved from Meta and stored in the specified Amazon S3 bucket. Use either
    #             <code>destinationS3File</code> or <code>destinationS3PresignedUrl</code> for the
    #          destination. If both are used then an <code>InvalidParameterException</code> is
    #          returned.</p>
    # @param [Hash, Types::GetWhatsAppMessageMediaInput] params
    # @option params [String] :media_id
    #   <p>The unique identifier for the media file.</p>
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the originating phone number for the WhatsApp message media.
    #            The phone number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    # @option params [Boolean] :metadata_only
    #   <p>Set to <code>True</code> to get only the metadata for the file.</p>
    # @option params [Types::S3PresignedUrl] :destination_s3_presigned_url
    #   <p>The presign url of the media file.</p>
    # @option params [Types::S3File] :destination_s3_file
    #   <p>The <code>bucketName</code> and <code>key</code> of the S3 media file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_id: "WhatsAppMediaId", # required
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     metadata_only: false,
    #     destination_s3_presigned_url: {
    #       url: "String", # required
    #       headers: { # required
    #         "String" => "String"
    #       }
    #     },
    #     destination_s3_file: {
    #       bucket_name: "String", # required
    #       key: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.get_whats_app_message_media(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mime_type: "String",
    #     file_size: 1
    #   }
    # @return [Types::GetWhatsAppMessageMediaOutput]
    def get_whats_app_message_media(params = {}, options = {})
      request = build_request(:get_whats_app_message_media, params)
      request.send_request(options)
    end

    # <p>Retrieves a specific WhatsApp message template.</p>
    # @param [Hash, Types::GetWhatsAppMessageTemplateInput] params
    # @option params [String] :meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. Use together with <code>templateLanguageCode</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    # @option params [String] :template_language_code
    #   <p>The language code of the message template (for example, <code>en</code> or <code>en_US</code>). Use together with <code>templateName</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meta_template_id: "MetaTemplateId",
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     template_name: "MetaTemplateName",
    #     template_language_code: "MetaTemplateLanguage"
    #   }
    #   options = {}
    #   response = client.get_whats_app_message_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template: "MetaTemplate"
    #   }
    # @return [Types::GetWhatsAppMessageTemplateOutput]
    def get_whats_app_message_template(params = {}, options = {})
      request = build_request(:get_whats_app_message_template, params)
      request.send_request(options)
    end

    # <p>List all WhatsApp Business Accounts linked to your Amazon Web Services account.</p>
    # @param [Hash, Types::ListLinkedWhatsAppBusinessAccountsInput] params
    # @option params [String] :next_token
    #   <p>The next token for pagination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_linked_whats_app_business_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     linked_accounts: [
    #       {
    #         arn: "LinkedWhatsAppBusinessAccountArn", # required
    #         id: "LinkedWhatsAppBusinessAccountId", # required
    #         waba_id: "WhatsAppBusinessAccountId", # required
    #         registration_status: "COMPLETE" # One of: ["COMPLETE", "INCOMPLETE"], # required
    #         link_date: Time.now, # required
    #         waba_name: "WhatsAppBusinessAccountName", # required
    #         event_destinations: [ # required
    #           {
    #             event_destination_arn: "EventDestinationArn", # required
    #             role_arn: "RoleArn"
    #           }
    #         ],
    #         marketing_messages_onboarding_status: "WhatsAppBusinessAccountMarketingMessagesOnboardingStatus",
    #         dataset_id: "WhatsAppDatasetId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLinkedWhatsAppBusinessAccountsOutput]
    def list_linked_whats_app_business_accounts(params = {}, options = {})
      request = build_request(:list_linked_whats_app_business_accounts, params)
      request.send_request(options)
    end

    # <p>List all tags associated with a resource, such as a phone number or WABA.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to retrieve the tags from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     tags: [
    #       {
    #         key: "String", # required
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the assets (Flow JSON definition) of a WhatsApp Flow with presigned download URLs. Download URLs are generated by Meta and expire after a short period.</p>
    # @param [Hash, Types::ListWhatsAppFlowAssetsInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow whose assets to list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_whats_app_flow_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_assets: [ # required
    #       {
    #         name: "MetaFlowAssetName", # required
    #         asset_type: "MetaFlowAssetType", # required
    #         download_url: "MetaFlowAssetDownloadUrl", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatsAppFlowAssetsOutput]
    def list_whats_app_flow_assets(params = {}, options = {})
      request = build_request(:list_whats_app_flow_assets, params)
      request.send_request(options)
    end

    # <p>Lists all WhatsApp Flows for a WhatsApp Business Account. Returns summary information including Flow ID, name, status, and categories.</p>
    # @param [Hash, Types::ListWhatsAppFlowsInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to list Flows for.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_whats_app_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flows: [ # required
    #       {
    #         flow_id: "MetaFlowId", # required
    #         flow_name: "MetaFlowName", # required
    #         flow_status: "MetaFlowStatus", # required
    #         flow_categories: ["SIGN_UP" # One of: ["SIGN_UP", "SIGN_IN", "APPOINTMENT_BOOKING", "LEAD_GENERATION", "SHOPPING", "CONTACT_US", "CUSTOMER_SUPPORT", "SURVEY", "OTHER"]], # required
    #         validation_errors: ["MetaFlowValidationError"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatsAppFlowsOutput]
    def list_whats_app_flows(params = {}, options = {})
      request = build_request(:list_whats_app_flows, params)
      request.send_request(options)
    end

    # <p>Lists WhatsApp message templates for a specific WhatsApp Business Account.</p>
    # @param [Hash, Types::ListWhatsAppMessageTemplatesInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to list templates for.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page (1-100).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_whats_app_message_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates: [
    #       {
    #         template_name: "MetaTemplateName",
    #         meta_template_id: "MetaTemplateId",
    #         template_status: "MetaTemplateStatus",
    #         template_quality_score: "MetaTemplateQualityScore",
    #         template_language: "MetaTemplateLanguage",
    #         template_category: "MetaTemplateCategory"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatsAppMessageTemplatesOutput]
    def list_whats_app_message_templates(params = {}, options = {})
      request = build_request(:list_whats_app_message_templates, params)
      request.send_request(options)
    end

    # <p>Lists templates available in Meta's template library for WhatsApp messaging.</p>
    # @param [Hash, Types::ListWhatsAppTemplateLibraryInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page (1-100).</p>
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account to list library templates for.</p>
    # @option params [Hash<String, String>] :filters
    #   <p>Map of filters to apply (searchKey, topic, usecase, industry, language).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     filters: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.list_whats_app_template_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meta_library_templates: [
    #       {
    #         template_name: "MetaTemplateName",
    #         template_language: "MetaTemplateLanguage",
    #         template_category: "MetaTemplateCategory",
    #         template_topic: "MetaTemplateTopic",
    #         template_use_case: "MetaTemplateUseCase",
    #         template_industry: ["MetaIndustry"],
    #         template_header: "MetaTemplateHeader",
    #         template_body: "MetaTemplateBody",
    #         template_buttons: [
    #           {
    #             type: "ButtonType",
    #             text: "MetaText",
    #             phone_number: "PhoneNumber",
    #             url: "MetaUrl",
    #             otp_type: "OtpType",
    #             zero_tap_terms_accepted: false,
    #             supported_apps: [
    #               {
    #                 "String" => "String"
    #               }
    #             ]
    #           }
    #         ],
    #         template_id: "MetaTemplateId",
    #         template_body_example_params: ["String"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWhatsAppTemplateLibraryOutput]
    def list_whats_app_template_library(params = {}, options = {})
      request = build_request(:list_whats_app_template_library, params)
      request.send_request(options)
    end

    # <p>Upload a media file to the WhatsApp service. Only the specified
    #             <code>originationPhoneNumberId</code> has the permissions to send the media file when
    #          using <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_SendWhatsAppMessage.html">SendWhatsAppMessage</a>. You must use either <code>sourceS3File</code>
    #          or <code>sourceS3PresignedUrl</code> for the source. If both or neither are specified then an
    #             <code>InvalidParameterException</code> is returned.</p>
    # @param [Hash, Types::PostWhatsAppMessageMediaInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The ID of the phone number to associate with the WhatsApp media file. The phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a>
    #            to find a phone number's id.</p>
    # @option params [Types::S3PresignedUrl] :source_s3_presigned_url
    #   <p>The source presign url of the media file.</p>
    # @option params [Types::S3File] :source_s3_file
    #   <p>The source S3 url for the media file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     source_s3_presigned_url: {
    #       url: "String", # required
    #       headers: { # required
    #         "String" => "String"
    #       }
    #     },
    #     source_s3_file: {
    #       bucket_name: "String", # required
    #       key: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.post_whats_app_message_media(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_id: "WhatsAppMediaId"
    #   }
    # @return [Types::PostWhatsAppMessageMediaOutput]
    def post_whats_app_message_media(params = {}, options = {})
      request = build_request(:post_whats_app_message_media, params)
      request.send_request(options)
    end

    # <p>Publishes a WhatsApp Flow, making it available for use in template messages. The Flow must be in DRAFT status with valid Flow JSON that passes Meta's validation. This is an irreversible operation.</p>
    # @param [Hash, Types::PublishWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to publish.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #   }
    #   options = {}
    #   response = client.publish_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PublishWhatsAppFlowOutput]
    def publish_whats_app_flow(params = {}, options = {})
      request = build_request(:publish_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Add an event destination to log event data from WhatsApp for a WhatsApp Business Account (WABA). A WABA can only have one event destination at a time. All resources associated with the WABA use the same event destination.</p>
    # @param [Hash, Types::PutWhatsAppBusinessAccountEventDestinationsInput] params
    # @option params [String] :id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
    # @option params [Array<Types::WhatsAppBusinessAccountEventDestination>] :event_destinations
    #   <p>An array of <code>WhatsAppBusinessAccountEventDestination</code> event destinations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     event_destinations: [ # required
    #       {
    #         event_destination_arn: "EventDestinationArn", # required
    #         role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_whats_app_business_account_event_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutWhatsAppBusinessAccountEventDestinationsOutput]
    def put_whats_app_business_account_event_destinations(params = {}, options = {})
      request = build_request(:put_whats_app_business_account_event_destinations, params)
      request.send_request(options)
    end

    # <p>Sets the business public key used to encrypt the data exchanged with the endpoint of a data exchange Flow.</p>
    # @param [Hash, Types::PutWhatsAppBusinessPublicKeyInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the phone number to associate with the business public key.</p>
    # @option params [String] :business_public_key
    #   <p>The PEM-encoded 2048-bit RSA public key to set. Mutually exclusive with <code>kmsKeyArn</code>.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of a customer managed asymmetric RSA key in Amazon Web Services KMS. Mutually exclusive with <code>businessPublicKey</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     business_public_key: "BusinessPublicKeyPem",
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.put_whats_app_business_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutWhatsAppBusinessPublicKeyOutput]
    def put_whats_app_business_public_key(params = {}, options = {})
      request = build_request(:put_whats_app_business_public_key, params)
      request.send_request(options)
    end

    # <p>Sends a WhatsApp calling event, such as connecting or terminating a call, for a business phone number. This operation passes the event through to Meta. To use this operation, the origination phone number must belong to a WhatsApp Business Account that is linked to your Amazon Web Services account.</p>
    # @param [Hash, Types::SendWhatsAppCallEventInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the origination phone number for the call. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. Use <code>GetLinkedWhatsAppBusinessAccount</code> to find a phone number's ID.</p>
    # @option params [String] :meta_api_version
    #   <p>The version of the Meta Graph API to use for the request.</p>
    # @option params [String] :call_event
    #   <p>The call event payload to send, as a JSON blob in the format defined by the Meta calling API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     meta_api_version: "String", # required
    #     call_event: "data", # required
    #   }
    #   options = {}
    #   response = client.send_whats_app_call_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     call_id: "String", # required
    #   }
    # @return [Types::SendWhatsAppCallEventOutput]
    def send_whats_app_call_event(params = {}, options = {})
      request = build_request(:send_whats_app_call_event, params)
      request.send_request(options)
    end

    # <p>Sends a conversion event to Meta's Conversions API for the specified WhatsApp Business Account dataset.</p>
    # @param [Hash, Types::SendWhatsAppConversionEventInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with the dataset, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    # @option params [String] :dataset_id
    #   <p>The Meta-generated dataset ID to send the event to.</p>
    # @option params [String] :event_data
    #   <p>The raw Meta Conversions API event payload as a JSON blob. See <a href="https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event">Meta's server event parameters</a> for the supported format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     dataset_id: "WhatsAppDatasetId", # required
    #     event_data: "data", # required
    #   }
    #   options = {}
    #   response = client.send_whats_app_conversion_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "String", # required
    #   }
    # @return [Types::SendWhatsAppConversionEventOutput]
    def send_whats_app_conversion_event(params = {}, options = {})
      request = build_request(:send_whats_app_conversion_event, params)
      request.send_request(options)
    end

    # <p>Send a WhatsApp message. For examples of sending a message using the Amazon Web Services
    #          CLI, see <a href="https://docs.aws.amazon.com/social-messaging/latest/userguide/send-message.html">Sending messages</a> in the
    #          <i>
    #                <i>Amazon Web Services End User Messaging Social User Guide</i>
    #             </i>.</p>
    # @param [Hash, Types::SendWhatsAppMessageInput] params
    # @option params [String] :origination_phone_number_id
    #   <p>The ID of the phone number used to send the WhatsApp message. If you are sending a media
    #            file only the <code>originationPhoneNumberId</code> used to upload the file can be used.
    #            Phone number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    # @option params [String] :message
    #   <p>The message to send through WhatsApp. The length is in KB. The message field passes through a WhatsApp
    #            Message object, see <a href="https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages">Messages</a> in the <i>WhatsApp Business Platform Cloud API
    #                  Reference</i>.</p>
    # @option params [String] :meta_api_version
    #   <p>The API version for the request formatted as <code>v{VersionNumber}</code>. For a list of supported API versions and Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html">
    #                  <i>Amazon Web Services End User Messaging Social API</i> Service Endpoints</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     message: "data", # required
    #     meta_api_version: "String", # required
    #   }
    #   options = {}
    #   response = client.send_whats_app_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String"
    #   }
    # @return [Types::SendWhatsAppMessageOutput]
    def send_whats_app_message(params = {}, options = {})
      request = build_request(:send_whats_app_message, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites only the specified tags for the specified resource. When you specify
    #          an existing tag key, the value is overwritten with the new value.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "String", # required
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from a resource. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the calling settings for a linked WhatsApp business phone number, such as whether calling is enabled and the hours during which the business accepts calls.</p>
    # @param [Hash, Types::UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the phone number to update. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.</p>
    # @option params [Types::WhatsAppCallSettings] :call_settings
    #   <p>The calling settings to apply to the phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WhatsAppPhoneNumberId", # required
    #     call_settings: { # required
    #       call_enabled: false, # required
    #       call_hours: {
    #         enabled: false, # required
    #         timezone: "IanaTimezone", # required
    #         weekly_operating_hours: [ # required
    #           {
    #             day_of_week: "MONDAY" # One of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"], # required
    #             open_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             close_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ],
    #         holiday_schedule: [
    #           {
    #             date: "WhatsAppDate", # required
    #             start_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       call_icon_visibility: "WhatsAppCallIconVisibility",
    #       callback_permission_status: "WhatsAppCallbackPermissionStatus"
    #     }
    #   }
    #   options = {}
    #   response = client.update_linked_whats_app_business_account_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_id: "WhatsAppPhoneNumberId", # required
    #   }
    # @return [Types::UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput]
    def update_linked_whats_app_business_account_phone_number(params = {}, options = {})
      request = build_request(:update_linked_whats_app_business_account_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates the metadata of a WhatsApp Flow, such as its name or categories. This does not update the Flow JSON definition. Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_UpdateWhatsAppFlowAssets.html">UpdateWhatsAppFlowAssets</a> to update the Flow JSON.</p>
    # @param [Hash, Types::UpdateWhatsAppFlowInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow to update.</p>
    # @option params [String] :flow_name
    #   <p>The updated name for the Flow.</p>
    # @option params [Array<String>] :categories
    #   <p>The updated categories for the Flow.</p>
    # @option params [String] :endpoint_uri
    #   <p>The updated HTTPS endpoint for a data exchange Flow.</p>
    # @option params [String] :meta_app_id
    #   <p>The ID of the Meta application to attach to the Flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #     flow_name: "MetaFlowName",
    #     categories: ["SIGN_UP" # One of: ["SIGN_UP", "SIGN_IN", "APPOINTMENT_BOOKING", "LEAD_GENERATION", "SHOPPING", "CONTACT_US", "CUSTOMER_SUPPORT", "SURVEY", "OTHER"]],
    #     endpoint_uri: "MetaFlowEndpointUri",
    #     meta_app_id: "MetaFlowApplicationId"
    #   }
    #   options = {}
    #   response = client.update_whats_app_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWhatsAppFlowOutput]
    def update_whats_app_flow(params = {}, options = {})
      request = build_request(:update_whats_app_flow, params)
      request.send_request(options)
    end

    # <p>Updates the Flow JSON definition (assets) of a WhatsApp Flow. Updating a published Flow's assets reverts it to DRAFT status, requiring re-publishing.</p>
    # @param [Hash, Types::UpdateWhatsAppFlowAssetsInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    # @option params [String] :flow_id
    #   <p>The unique identifier of the Flow whose assets to update.</p>
    # @option params [String] :flow_json
    #   <p>The updated Flow JSON definition. Maximum size is 10 MB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     flow_id: "MetaFlowId", # required
    #     flow_json: "data", # required
    #   }
    #   options = {}
    #   response = client.update_whats_app_flow_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_errors: ["MetaFlowValidationError"]
    #   }
    # @return [Types::UpdateWhatsAppFlowAssetsOutput]
    def update_whats_app_flow_assets(params = {}, options = {})
      request = build_request(:update_whats_app_flow_assets, params)
      request.send_request(options)
    end

    # <p>Updates an existing WhatsApp message template.</p>
    # @param [Hash, Types::UpdateWhatsAppMessageTemplateInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    # @option params [String] :meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    # @option params [String] :template_name
    #   <p>The name of the message template. Use together with <code>templateLanguageCode</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    # @option params [String] :template_language_code
    #   <p>The language code of the message template (for example, <code>en</code> or <code>en_US</code>). Use together with <code>templateName</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    # @option params [String] :parameter_format
    #   <p>The format specification for parameters in the template, this can be either 'named' or 'positional'.</p>
    # @option params [String] :template_category
    #   <p>The new category for the template (for example, UTILITY or MARKETING).</p>
    # @option params [String] :template_components
    #   <p>The updated components of the template as a JSON blob (maximum 3000 characters).</p>
    # @option params [Boolean] :cta_url_link_tracking_opted_out
    #   <p>When true, disables click tracking for call-to-action URL buttons in the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     meta_template_id: "MetaTemplateId",
    #     template_name: "MetaTemplateName",
    #     template_language_code: "MetaTemplateLanguage",
    #     parameter_format: "MetaParameterFormat",
    #     template_category: "MetaTemplateCategory",
    #     template_components: "data",
    #     cta_url_link_tracking_opted_out: false
    #   }
    #   options = {}
    #   response = client.update_whats_app_message_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWhatsAppMessageTemplateOutput]
    def update_whats_app_message_template(params = {}, options = {})
      request = build_request(:update_whats_app_message_template, params)
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
      context[:gem_name] = 'aws-sdk-socialmessaging'
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
