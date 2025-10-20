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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SocialMessaging::EndpointProvider)
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
    #     status_code: 1
    #   }
    # @return [Types::AssociateWhatsAppBusinessAccountOutput]
    def associate_whats_app_business_account(params = {}, options = {})
      request = build_request(:associate_whats_app_business_account, params)
      request.send_request(options)
    end

    # <p>Creates a new WhatsApp message template from a custom definition.</p>
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

    # <p>Delete a media object from the WhatsApp service. If the object is still in an Amazon S3 bucket you should delete it from there too.</p>
    # @param [Hash, Types::DeleteWhatsAppMessageMediaInput] params
    # @option params [String] :media_id
    #   <p>The unique identifier of the media file to delete. Use the <code>mediaId</code> returned from <a href="https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html">PostWhatsAppMessageMedia</a>.</p>
    # @option params [String] :origination_phone_number_id
    #   <p>The unique identifier of the originating phone number associated with the media. Phone
    #            number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
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

    # <p>Disassociate a WhatsApp Business Account (WABA) from your Amazon Web Services account.</p>
    # @param [Hash, Types::DisassociateWhatsAppBusinessAccountInput] params
    # @option params [String] :id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
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

    # <p>Use your WhatsApp phone number id to get the WABA account id and phone number
    #          details.</p>
    # @param [Hash, Types::GetLinkedWhatsAppBusinessAccountPhoneNumberInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the phone number. Phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
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
    #     linked_whats_app_business_account_id: "LinkedWhatsAppBusinessAccountId"
    #   }
    # @return [Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput]
    def get_linked_whats_app_business_account_phone_number(params = {}, options = {})
      request = build_request(:get_linked_whats_app_business_account_phone_number, params)
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
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
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
    # @example Request syntax with placeholder values
    #   params = {
    #     meta_template_id: "MetaTemplateId", # required
    #     id: "LinkedWhatsAppBusinessAccountId", # required
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
    #         ]
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
    #         template_id: "MetaTemplateId"
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
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a>  to find a phone number's
    #            id.</p>
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
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
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

    # <p>Updates an existing WhatsApp message template.</p>
    # @param [Hash, Types::UpdateWhatsAppMessageTemplateInput] params
    # @option params [String] :id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    # @option params [String] :meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    # @option params [String] :template_category
    #   <p>The new category for the template (for example, UTILITY or MARKETING).</p>
    # @option params [String] :template_components
    #   <p>The updated components of the template as a JSON blob (maximum 3000 characters).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     meta_template_id: "MetaTemplateId", # required
    #     template_category: "MetaTemplateCategory",
    #     template_components: "data"
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
    end
  end
end
