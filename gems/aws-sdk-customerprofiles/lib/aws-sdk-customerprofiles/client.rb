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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::CustomerProfiles
  # An API client for Aws::CustomerProfiles.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CustomerProfiles20200815

    add_plugin(::Aws::CustomerProfiles::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::CustomerProfiles::EndpointProvider] :endpoint_provider
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

    # <p>Associates a new key value with a specific profile, such as a Contact Record
    #          ContactId.</p>
    #          <p>A profile object can have a single unique key and any number of additional keys that can
    #          be used to identify the profile that it belongs to.</p>
    # @param [Hash, Types::AddProfileKeyRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use include: _account, _profileId, _assetId,
    #            _caseId, _orderId, _fullName, _phone, _email, _ctrContactId, _marketoLeadId,
    #            _salesforceAccountId, _salesforceContactId, _salesforceAssetId, _zendeskUserId,
    #            _zendeskExternalId, _zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
    #            _segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p>
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.add_profile_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_name: "name",
    #     values: ["string1To255"]
    #   }
    # @return [Types::AddProfileKeyResponse]
    def add_profile_key(params = {}, options = {})
      request = build_request(:add_profile_key, params)
      request.send_request(options)
    end

    # <p>Fetch the possible attribute values given the attribute name.</p>
    # @param [Hash, Types::BatchGetCalculatedAttributeForProfileRequest] params
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Array<String>] :profile_ids
    #   <p>List of unique identifiers for customer profiles to retrieve.</p>
    # @option params [Types::ConditionOverrides] :condition_overrides
    #   <p>Overrides the condition block within the original calculated attribute
    #            definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calculated_attribute_name: "typeName", # required
    #     domain_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #     condition_overrides: {
    #       range: {
    #         start: 1, # required
    #         end: 1,
    #         unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.batch_get_calculated_attribute_for_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         code: "string1To255", # required
    #         message: "string1To1000", # required
    #         profile_id: "uuid", # required
    #       }
    #     ],
    #     calculated_attribute_values: [
    #       {
    #         calculated_attribute_name: "typeName",
    #         display_name: "displayName",
    #         is_data_partial: "string1To255",
    #         profile_id: "uuid",
    #         value: "string1To255",
    #         last_object_timestamp: Time.now
    #       }
    #     ],
    #     condition_overrides: {
    #       range: {
    #         start: 1, # required
    #         end: 1,
    #         unit: "DAYS" # One of: ["DAYS"], # required
    #       }
    #     }
    #   }
    # @return [Types::BatchGetCalculatedAttributeForProfileResponse]
    def batch_get_calculated_attribute_for_profile(params = {}, options = {})
      request = build_request(:batch_get_calculated_attribute_for_profile, params)
      request.send_request(options)
    end

    # <p>Get a batch of profiles.</p>
    # @param [Hash, Types::BatchGetProfileRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Array<String>] :profile_ids
    #   <p>List of unique identifiers for customer profiles to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         code: "string1To255", # required
    #         message: "string1To1000", # required
    #         profile_id: "uuid", # required
    #       }
    #     ],
    #     profiles: [
    #       {
    #         profile_id: "uuid",
    #         account_number: "sensitiveString1To255",
    #         additional_information: "sensitiveString1To1000",
    #         party_type: "INDIVIDUAL" # One of: ["INDIVIDUAL", "BUSINESS", "OTHER"],
    #         business_name: "sensitiveString1To255",
    #         first_name: "sensitiveString1To255",
    #         middle_name: "sensitiveString1To255",
    #         last_name: "sensitiveString1To255",
    #         birth_date: "sensitiveString1To255",
    #         gender: "MALE" # One of: ["MALE", "FEMALE", "UNSPECIFIED"],
    #         phone_number: "sensitiveString1To255",
    #         mobile_phone_number: "sensitiveString1To255",
    #         home_phone_number: "sensitiveString1To255",
    #         business_phone_number: "sensitiveString1To255",
    #         email_address: "sensitiveString1To255",
    #         personal_email_address: "sensitiveString1To255",
    #         business_email_address: "sensitiveString1To255",
    #         address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         shipping_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         mailing_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         billing_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         attributes: {
    #           "string1To255" => "string1To255"
    #         },
    #         found_by_items: [
    #           {
    #             key_name: "name",
    #             values: ["string1To255"]
    #           }
    #         ],
    #         party_type_string: "sensitiveString1To255",
    #         gender_string: "sensitiveString1To255",
    #         profile_type: "ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"],
    #         engagement_preferences: {
    #           phone: [
    #             {
    #               key_name: "name",
    #               key_value: "string1To255",
    #               profile_id: "uuid",
    #               contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #             }
    #           ],
    #           email: [
    #             {
    #               key_name: "name",
    #               key_value: "string1To255",
    #               profile_id: "uuid",
    #               contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetProfileResponse]
    def batch_get_profile(params = {}, options = {})
      request = build_request(:batch_get_profile, params)
      request.send_request(options)
    end

    # <p>Creates a new calculated attribute definition. After creation, new object data ingested
    #          into Customer Profiles will be included in the calculated attribute, which can be retrieved
    #          for a profile using the <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html">GetCalculatedAttributeForProfile</a> API. Defining a calculated attribute makes it
    #          available for all profiles within a domain. Each calculated attribute can only reference
    #          one <code>ObjectType</code> and at most, two fields from that
    #          <code>ObjectType</code>.</p>
    # @param [Hash, Types::CreateCalculatedAttributeDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @option params [String] :display_name
    #   <p>The display name of the calculated attribute.</p>
    # @option params [String] :description
    #   <p>The description of the calculated attribute.</p>
    # @option params [Types::AttributeDetails] :attribute_details
    #   <p>Mathematical expression and a list of attribute items specified in that
    #            expression.</p>
    # @option params [Types::Conditions] :conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    # @option params [Types::Filter] :filter
    #   <p>Defines how to filter incoming objects to include part of the Calculated
    #            Attribute.</p>
    # @option params [String] :statistic
    #   <p>The aggregation operation to perform for the calculated attribute.</p>
    # @option params [Boolean] :use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     attribute_details: { # required
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         }
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255"
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO" # One of: ["EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"], # required
    #       }
    #     },
    #     filter: {
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #       groups: [ # required
    #         {
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #           dimensions: [ # required
    #             {
    #               attributes: { # required
    #                 "attributeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     statistic: "FIRST_OCCURRENCE" # One of: ["FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"], # required
    #     use_historical_data: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_calculated_attribute_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculated_attribute_name: "typeName",
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     attribute_details: {
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         }
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255"
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO" # One of: ["EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"], # required
    #       }
    #     },
    #     filter: {
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #       groups: [ # required
    #         {
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #           dimensions: [ # required
    #             {
    #               attributes: { # required
    #                 "attributeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     statistic: "FIRST_OCCURRENCE" # One of: ["FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     use_historical_data: false,
    #     status: "PREPARING" # One of: ["PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #     readiness: {
    #       progress_percentage: 1,
    #       message: "text"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateCalculatedAttributeDefinitionResponse]
    def create_calculated_attribute_definition(params = {}, options = {})
      request = build_request(:create_calculated_attribute_definition, params)
      request.send_request(options)
    end

    # <p>Creates a domain, which is a container for all customer data, such as customer profile
    #          attributes, object types, profile keys, and encryption keys. You can create multiple
    #          domains, and each domain can have multiple third-party integrations.</p>
    #          <p>Each Amazon Connect instance can be associated with only one domain. Multiple
    #             Amazon Connect instances can be associated with one domain.</p>
    #          <p>Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain</a> to
    #          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    #             resolution</a>: set <code>Matching</code> to true.</p>
    #          <p>To prevent cross-service impersonation when you call this API, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html">Cross-service confused deputy prevention</a> for sample policies that you should
    #          apply. </p>
    #          <note>
    #             <p>It is not possible to associate a Customer Profiles domain with an Amazon Connect Instance directly from
    #             the API. If you would like to create a domain and associate a Customer Profiles domain, use the Amazon Connect
    #             admin website. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-customer-profiles.html#enable-customer-profiles-step1">Enable Customer Profiles</a>.</p>
    #             <p>Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances
    #             can be associated with one domain.</p>
    #          </note>
    # @param [Hash, Types::CreateDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Integer] :default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    # @option params [String] :default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    # @option params [String] :dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. You must set up a policy on the
    #            DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to send
    #            messages to the DeadLetterQueue.</p>
    # @option params [Types::MatchingRequest] :matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the 
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    # @option params [Types::RuleBasedMatchingRequest] :rule_based_matching
    #   <p>The process of matching duplicate profiles using the Rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Amazon Connect Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     default_expiration_days: 1, # required
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"]
    #           ]
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #           source_name: "string1To255"
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     rule_based_matching: {
    #       enabled: false, # required
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         }
    #       ],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
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
    #     domain_name: "name", # required
    #     default_expiration_days: 1, # required
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false,
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"]
    #           ]
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #           source_name: "string1To255"
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     rule_based_matching: {
    #       enabled: false,
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         }
    #       ],
    #       status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE"],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateDomainResponse]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates the layout to view data for a specific domain. This API can only be invoked from
    #          the Amazon Connect admin website.</p>
    # @param [Hash, Types::CreateDomainLayoutRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :layout_definition_name
    #   <p>The unique name of the layout.</p>
    # @option params [String] :description
    #   <p>The description of the layout</p>
    # @option params [String] :display_name
    #   <p>The display name of the layout</p>
    # @option params [Boolean] :is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    # @option params [String] :layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    # @option params [String] :layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText", # required
    #     display_name: "displayName", # required
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"], # required
    #     layout: "sensitiveString1To2000000", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText", # required
    #     display_name: "displayName", # required
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"], # required
    #     layout: "sensitiveString1To2000000", # required
    #     version: "string1To255", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now
    #   }
    # @return [Types::CreateDomainLayoutResponse]
    def create_domain_layout(params = {}, options = {})
      request = build_request(:create_domain_layout, params)
      request.send_request(options)
    end

    # <p>Creates an event stream, which is a subscription to real-time events, such as when
    #          profiles are created and updated through Amazon Connect Customer Profiles.</p>
    #          <p>Each event stream can be associated with only one Kinesis Data Stream destination in the
    #          same region and Amazon Web Services account as the customer profiles domain</p>
    # @param [Hash, Types::CreateEventStreamRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :uri
    #   <p>The StreamARN of the destination to deliver profile events to. For example,
    #            arn:aws:kinesis:region:account-id:stream/stream-name</p>
    # @option params [String] :event_stream_name
    #   <p>The name of the event stream.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #     event_stream_name: "name", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_stream_arn: "string1To255", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateEventStreamResponse]
    def create_event_stream(params = {}, options = {})
      request = build_request(:create_event_stream, params)
      request.send_request(options)
    end

    # <p>Creates an event trigger, which specifies the rules when to perform action based on
    #          customer's ingested data.</p>
    #          <p>Each event stream can be associated with only one integration in the same region and AWS
    #          account as the event stream. </p>
    # @param [Hash, Types::CreateEventTriggerRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    # @option params [String] :object_type_name
    #   <p>The unique name of the object type.</p>
    # @option params [String] :description
    #   <p>The description of the event trigger.</p>
    # @option params [Array<Types::EventTriggerCondition>] :event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    # @option params [String] :segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    # @option params [Types::EventTriggerLimits] :event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText",
    #     event_trigger_conditions: [ # required
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"], # required
    #                 values: ["string1To255"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         logical_operator: "ANY" # One of: ["ANY", "ALL", "NONE"], # required
    #       }
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS"], # required
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_event_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_trigger_name: "name",
    #     object_type_name: "typeName",
    #     description: "sensitiveText",
    #     event_trigger_conditions: [
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"], # required
    #                 values: ["string1To255"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         logical_operator: "ANY" # One of: ["ANY", "ALL", "NONE"], # required
    #       }
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS"], # required
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false
    #         }
    #       ]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateEventTriggerResponse]
    def create_event_trigger(params = {}, options = {})
      request = build_request(:create_event_trigger, params)
      request.send_request(options)
    end

    # <p> Creates an integration workflow. An integration workflow is an async process which
    #          ingests historic data and sets up an integration for ongoing updates. The supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo. </p>
    # @param [Hash, Types::CreateIntegrationWorkflowRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    # @option params [Types::IntegrationConfig] :integration_config
    #   <p>Configuration data for integration workflow.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION" # One of: ["APPFLOW_INTEGRATION"], # required
    #     integration_config: { # required
    #       appflow_integration: {
    #         flow_definition: { # required
    #           description: "FlowDescription",
    #           flow_name: "FlowName", # required
    #           kms_arn: "KmsArn", # required
    #           source_flow_config: { # required
    #             connector_profile_name: "ConnectorProfileName",
    #             connector_type: "Salesforce" # One of: ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"], # required
    #             incremental_pull_config: {
    #               datetime_type_field_name: "DatetimeTypeFieldName"
    #             },
    #             source_connector_properties: { # required
    #               marketo: {
    #                 object: "Object", # required
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix"
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false
    #               },
    #               service_now: {
    #                 object: "Object", # required
    #               },
    #               zendesk: {
    #                 object: "Object", # required
    #               }
    #             }
    #           },
    #           tasks: [ # required
    #             {
    #               connector_operator: {
    #                 marketo: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #                 s3: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #                 salesforce: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #                 service_now: "PROJECTION" # One of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #                 zendesk: "PROJECTION" # One of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #               },
    #               destination_field: "DestinationField",
    #               source_fields: ["stringTo2048"], # required
    #               task_properties: {
    #                 "OperatorPropertiesKeys" => "Property"
    #               },
    #               task_type: "Arithmetic" # One of: ["Arithmetic", "Filter", "Map", "Mask", "Merge", "Truncate", "Validate"], # required
    #             }
    #           ],
    #           trigger_config: { # required
    #             trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"], # required
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: "ScheduleExpression", # required
    #                 data_pull_mode: "Incremental" # One of: ["Incremental", "Complete"],
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: "Timezone",
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now
    #               }
    #             }
    #           }
    #         },
    #         batches: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           }
    #         ]
    #       }
    #     },
    #     object_type_name: "typeName", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_integration_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "uuid", # required
    #     message: "string1To255", # required
    #   }
    # @return [Types::CreateIntegrationWorkflowResponse]
    def create_integration_workflow(params = {}, options = {})
      request = build_request(:create_integration_workflow, params)
      request.send_request(options)
    end

    # <p>Creates a standard profile.</p>
    #          <p>A standard profile represents the following attributes for a customer profile in a
    #          domain.</p>
    # @param [Hash, Types::CreateProfileRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :account_number
    #   <p>An account number that you have assigned to the customer.</p>
    # @option params [String] :additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    # @option params [String] :party_type
    #   <p>The type of profile used to describe the customer.</p>
    # @option params [String] :business_name
    #   <p>The name of the customer’s business.</p>
    # @option params [String] :first_name
    #   <p>The customer’s first name.</p>
    # @option params [String] :middle_name
    #   <p>The customer’s middle name.</p>
    # @option params [String] :last_name
    #   <p>The customer’s last name.</p>
    # @option params [String] :birth_date
    #   <p>The customer’s birth date. </p>
    # @option params [String] :gender
    #   <p>The gender with which the customer identifies. </p>
    # @option params [String] :phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    # @option params [String] :mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    # @option params [String] :home_phone_number
    #   <p>The customer’s home phone number.</p>
    # @option params [String] :business_phone_number
    #   <p>The customer’s business phone number.</p>
    # @option params [String] :email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    # @option params [String] :personal_email_address
    #   <p>The customer’s personal email address.</p>
    # @option params [String] :business_email_address
    #   <p>The customer’s business email address.</p>
    # @option params [Types::Address] :address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    # @option params [Types::Address] :shipping_address
    #   <p>The customer’s shipping address.</p>
    # @option params [Types::Address] :mailing_address
    #   <p>The customer’s mailing address.</p>
    # @option params [Types::Address] :billing_address
    #   <p>The customer’s billing address.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    # @option params [String] :party_type_string
    #   <p>An alternative to <code>PartyType</code> which accepts any string as input.</p>
    # @option params [String] :gender_string
    #   <p>An alternative to <code>Gender</code> which accepts any string as input.</p>
    # @option params [String] :profile_type
    #   <p>The type of the profile.</p>
    # @option params [Types::EngagementPreferences] :engagement_preferences
    #   <p>Object that defines the preferred methods of engagement, per channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     account_number: "sensitiveString1To255",
    #     additional_information: "sensitiveString1To1000",
    #     party_type: "INDIVIDUAL" # One of: ["INDIVIDUAL", "BUSINESS", "OTHER"],
    #     business_name: "sensitiveString1To255",
    #     first_name: "sensitiveString1To255",
    #     middle_name: "sensitiveString1To255",
    #     last_name: "sensitiveString1To255",
    #     birth_date: "sensitiveString1To255",
    #     gender: "MALE" # One of: ["MALE", "FEMALE", "UNSPECIFIED"],
    #     phone_number: "sensitiveString1To255",
    #     mobile_phone_number: "sensitiveString1To255",
    #     home_phone_number: "sensitiveString1To255",
    #     business_phone_number: "sensitiveString1To255",
    #     email_address: "sensitiveString1To255",
    #     personal_email_address: "sensitiveString1To255",
    #     business_email_address: "sensitiveString1To255",
    #     address: {
    #       address1: "string1To255",
    #       address2: "string1To255",
    #       address3: "string1To255",
    #       address4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255"
    #     },
    #     shipping_address: {
    #       address1: "string1To255",
    #       address2: "string1To255",
    #       address3: "string1To255",
    #       address4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255"
    #     },
    #     mailing_address: {
    #       address1: "string1To255",
    #       address2: "string1To255",
    #       address3: "string1To255",
    #       address4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255"
    #     },
    #     billing_address: {
    #       address1: "string1To255",
    #       address2: "string1To255",
    #       address3: "string1To255",
    #       address4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255"
    #     },
    #     attributes: {
    #       "string1To255" => "string1To255"
    #     },
    #     party_type_string: "sensitiveString1To255",
    #     gender_string: "sensitiveString1To255",
    #     profile_type: "ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"],
    #     engagement_preferences: {
    #       phone: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #         }
    #       ],
    #       email: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "uuid", # required
    #   }
    # @return [Types::CreateProfileResponse]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>Creates a segment definition associated to the given domain.</p>
    # @param [Hash, Types::CreateSegmentDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    # @option params [String] :display_name
    #   <p>The display name of the segment definition.</p>
    # @option params [String] :description
    #   <p>The description of the segment definition.</p>
    # @option params [Types::SegmentGroup] :segment_groups
    #   <p>Specifies the base segments and dimensions for a segment definition along with their
    #            respective relationship.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     display_name: "string1To255", # required
    #     description: "sensitiveText",
    #     segment_groups: { # required
    #       groups: [
    #         {
    #           dimensions: [{
    #             # One of:
    #             profile_attributes: {
    #               account_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               additional_information: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To1000"], # required
    #               },
    #               first_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               last_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               middle_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               gender_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               party_type_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               birth_date: {
    #                 dimension_type: "BEFORE" # One of: ["BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON"], # required
    #                 values: ["String"], # required
    #               },
    #               phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               home_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               mobile_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               personal_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               shipping_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               mailing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               billing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               attributes: {
    #                 "typeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               profile_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"], # required
    #                 values: ["ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"]], # required
    #               }
    #             },
    #             calculated_attributes: {
    #               "typeName" => {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                 values: ["string1To255"], # required
    #                 condition_overrides: {
    #                   range: {
    #                     start: 1, # required
    #                     end: 1,
    #                     unit: "DAYS" # One of: ["DAYS"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }],
    #           source_segments: [
    #             {
    #               segment_definition_name: "name"
    #             }
    #           ],
    #           source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #         }
    #       ],
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_segment_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_definition_name: "name", # required
    #     display_name: "string1To255",
    #     description: "sensitiveText",
    #     created_at: Time.now,
    #     segment_definition_arn: "SegmentDefinitionArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateSegmentDefinitionResponse]
    def create_segment_definition(params = {}, options = {})
      request = build_request(:create_segment_definition, params)
      request.send_request(options)
    end

    # <p>Creates a segment estimate query.</p>
    # @param [Hash, Types::CreateSegmentEstimateRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Types::SegmentGroupStructure] :segment_query
    #   <p>The segment query for calculating a segment estimate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_query: { # required
    #       groups: [
    #         {
    #           dimensions: [{
    #             # One of:
    #             profile_attributes: {
    #               account_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               additional_information: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To1000"], # required
    #               },
    #               first_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               last_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               middle_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               gender_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               party_type_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               birth_date: {
    #                 dimension_type: "BEFORE" # One of: ["BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON"], # required
    #                 values: ["String"], # required
    #               },
    #               phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               home_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               mobile_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               personal_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               shipping_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               mailing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               billing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               attributes: {
    #                 "typeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               profile_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"], # required
    #                 values: ["ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"]], # required
    #               }
    #             },
    #             calculated_attributes: {
    #               "typeName" => {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                 values: ["string1To255"], # required
    #                 condition_overrides: {
    #                   range: {
    #                     start: 1, # required
    #                     end: 1,
    #                     unit: "DAYS" # One of: ["DAYS"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }],
    #           source_segments: [
    #             {
    #               segment_definition_name: "name"
    #             }
    #           ],
    #           source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #         }
    #       ],
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_segment_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name",
    #     estimate_id: "string1To255",
    #     status_code: 1
    #   }
    # @return [Types::CreateSegmentEstimateResponse]
    def create_segment_estimate(params = {}, options = {})
      request = build_request(:create_segment_estimate, params)
      request.send_request(options)
    end

    # <p>Triggers a job to export a segment to a specified destination.</p>
    # @param [Hash, Types::CreateSegmentSnapshotRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The name of the segment definition used in this snapshot request.</p>
    # @option params [String] :data_format
    #   <p>The format in which the segment will be exported.</p>
    # @option params [String] :encryption_key
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the exported
    #            segment.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Customer Profiles service
    #            principal to assume the role for conducting KMS and S3 operations.</p>
    # @option params [String] :destination_uri
    #   <p>The destination to which the segment will be exported. This field must be provided if
    #            the request is not submitted from the Amazon Connect Admin Website.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     data_format: "CSV" # One of: ["CSV", "JSONL", "ORC"], # required
    #     encryption_key: "encryptionKey",
    #     role_arn: "RoleArn",
    #     destination_uri: "string1To255"
    #   }
    #   options = {}
    #   response = client.create_segment_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "uuid", # required
    #   }
    # @return [Types::CreateSegmentSnapshotResponse]
    def create_segment_snapshot(params = {}, options = {})
      request = build_request(:create_segment_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates an Upload job to ingest data for segment imports. The metadata is created for
    #          the job with the provided field mapping and unique key. </p>
    # @param [Hash, Types::CreateUploadJobRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain. Domain should be exists for the upload job to be created.
    #         </p>
    # @option params [String] :display_name
    #   <p>The unique name of the upload job. Could be a file name to identify the upload
    #            job.</p>
    # @option params [Hash<String, Types::ObjectTypeField>] :fields
    #   <p>The mapping between CSV Columns and Profile Object attributes. A map of the name and
    #            ObjectType field.</p>
    # @option params [String] :unique_key
    #   <p>The unique key columns for de-duping the profiles used to map data to the profile.
    #         </p>
    # @option params [Integer] :data_expiry
    #   <p>The expiry duration for the profiles ingested with the job. If not provided, the system
    #            default of 2 weeks is used. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     display_name: "string1To255", # required
    #     fields: { # required
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     unique_key: "text", # required
    #     data_expiry: 1
    #   }
    #   options = {}
    #   response = client.create_upload_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "uuid", # required
    #   }
    # @return [Types::CreateUploadJobResponse]
    def create_upload_job(params = {}, options = {})
      request = build_request(:create_upload_job, params)
      request.send_request(options)
    end

    # <p>Deletes an existing calculated attribute definition. Note that deleting a default
    #          calculated attribute is possible, however once deleted, you will be unable to undo that
    #          action and will need to recreate it on your own using the
    #          CreateCalculatedAttributeDefinition API if you want it back.</p>
    # @param [Hash, Types::DeleteCalculatedAttributeDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.delete_calculated_attribute_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCalculatedAttributeDefinitionResponse]
    def delete_calculated_attribute_definition(params = {}, options = {})
      request = build_request(:delete_calculated_attribute_definition, params)
      request.send_request(options)
    end

    # <p>Deletes a specific domain and all of its customer data, such as customer profile
    #          attributes and their related objects.</p>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message", # required
    #   }
    # @return [Types::DeleteDomainResponse]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Deletes the layout used to view data for a specific domain. This API can only be invoked
    #          from the Amazon Connect admin website.</p>
    # @param [Hash, Types::DeleteDomainLayoutRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :layout_definition_name
    #   <p>The unique name of the layout.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message", # required
    #   }
    # @return [Types::DeleteDomainLayoutResponse]
    def delete_domain_layout(params = {}, options = {})
      request = build_request(:delete_domain_layout, params)
      request.send_request(options)
    end

    # <p>Disables and deletes the specified event stream.</p>
    # @param [Hash, Types::DeleteEventStreamRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_stream_name
    #   <p>The name of the event stream</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventStreamResponse]
    def delete_event_stream(params = {}, options = {})
      request = build_request(:delete_event_stream, params)
      request.send_request(options)
    end

    # <p>Disable and deletes the Event Trigger.</p>
    #          <note>
    #             <p>You cannot delete an Event Trigger with an active Integration associated.</p>
    #          </note>
    # @param [Hash, Types::DeleteEventTriggerRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_event_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message", # required
    #   }
    # @return [Types::DeleteEventTriggerResponse]
    def delete_event_trigger(params = {}, options = {})
      request = build_request(:delete_event_trigger, params)
      request.send_request(options)
    end

    # <p>Removes an integration from a specific domain.</p>
    # @param [Hash, Types::DeleteIntegrationRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message", # required
    #   }
    # @return [Types::DeleteIntegrationResponse]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # <p>Deletes the standard customer profile and all data pertaining to the profile.</p>
    # @param [Hash, Types::DeleteProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "uuid", # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message"
    #   }
    # @return [Types::DeleteProfileResponse]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>Removes a searchable key from a customer profile.</p>
    # @param [Hash, Types::DeleteProfileKeyRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile.</p>
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_profile_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message"
    #   }
    # @return [Types::DeleteProfileKeyResponse]
    def delete_profile_key(params = {}, options = {})
      request = build_request(:delete_profile_key, params)
      request.send_request(options)
    end

    # <p>Removes an object associated with a profile of a given ProfileObjectType.</p>
    # @param [Hash, Types::DeleteProfileObjectRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "uuid", # required
    #     profile_object_unique_key: "string1To255", # required
    #     object_type_name: "typeName", # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_profile_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message"
    #   }
    # @return [Types::DeleteProfileObjectResponse]
    def delete_profile_object(params = {}, options = {})
      request = build_request(:delete_profile_object, params)
      request.send_request(options)
    end

    # <p>Removes a ProfileObjectType from a specific domain as well as removes all the
    #          ProfileObjects of that type. It also disables integrations from this specific
    #          ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that
    #          were populated from this ProfileObjectType.</p>
    # @param [Hash, Types::DeleteProfileObjectTypeRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.delete_profile_object_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message", # required
    #   }
    # @return [Types::DeleteProfileObjectTypeResponse]
    def delete_profile_object_type(params = {}, options = {})
      request = build_request(:delete_profile_object_type, params)
      request.send_request(options)
    end

    # <p>Deletes a segment definition from the domain.</p>
    # @param [Hash, Types::DeleteSegmentDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #   }
    #   options = {}
    #   response = client.delete_segment_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "string1To1000"
    #   }
    # @return [Types::DeleteSegmentDefinitionResponse]
    def delete_segment_definition(params = {}, options = {})
      request = build_request(:delete_segment_definition, params)
      request.send_request(options)
    end

    # <p>Deletes the specified workflow and all its corresponding resources. This is an async
    #          process.</p>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     workflow_id: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkflowResponse]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>The process of detecting profile object type mapping by using given objects.</p>
    # @param [Hash, Types::DetectProfileObjectTypeRequest] params
    # @option params [Array<String>] :objects
    #   <p>A string that is serialized from a JSON object.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     objects: ["stringifiedJson"], # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.detect_profile_object_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detected_profile_object_types: [
    #       {
    #         source_last_updated_timestamp_format: "string1To255",
    #         fields: {
    #           "fieldName" => {
    #             source: "text",
    #             target: "text",
    #             content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #           }
    #         },
    #         keys: {
    #           "name" => [
    #             {
    #               standard_identifiers: ["PROFILE" # One of: ["PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"]],
    #               field_names: ["name"]
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DetectProfileObjectTypeResponse]
    def detect_profile_object_type(params = {}, options = {})
      request = build_request(:detect_profile_object_type, params)
      request.send_request(options)
    end

    # <p>Tests the auto-merging settings of your Identity Resolution Job without merging your data. It randomly
    #          selects a sample of matching groups from the existing matching results, and applies the
    #          automerging settings that you provided. You can then view the number of profiles in the
    #          sample, the number of matches, and the number of profiles identified to be merged. This
    #          enables you to evaluate the accuracy of the attributes in your matching list. </p>
    #          <p>You can't view which profiles are matched and would be merged.</p>
    #          <important>
    #             <p>We strongly recommend you use this API to do a dry run of the automerging process
    #             before running the Identity Resolution Job. Include <b>at least</b> two matching
    #             attributes. If your matching list includes too few attributes (such as only
    #                <code>FirstName</code> or only <code>LastName</code>), there may be a large number of
    #             matches. This increases the chances of erroneous merges.</p>
    #          </important>
    # @param [Hash, Types::GetAutoMergingPreviewRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Types::Consolidation] :consolidation
    #   <p>A list of matching attributes that represent matching criteria.</p>
    # @option params [Types::ConflictResolution] :conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    # @option params [Float] :min_allowed_confidence_score_for_merging
    #   <p>Minimum confidence score required for profiles within a matching group to be merged
    #            during the auto-merge process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     consolidation: { # required
    #       matching_attributes_list: [ # required
    #         ["string1To255"]
    #       ]
    #     },
    #     conflict_resolution: { # required
    #       conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #       source_name: "string1To255"
    #     },
    #     min_allowed_confidence_score_for_merging: 1.0
    #   }
    #   options = {}
    #   response = client.get_auto_merging_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     number_of_matches_in_sample: 1,
    #     number_of_profiles_in_sample: 1,
    #     number_of_profiles_will_be_merged: 1
    #   }
    # @return [Types::GetAutoMergingPreviewResponse]
    def get_auto_merging_preview(params = {}, options = {})
      request = build_request(:get_auto_merging_preview, params)
      request.send_request(options)
    end

    # <p>Provides more information on a calculated attribute definition for Customer
    #          Profiles.</p>
    # @param [Hash, Types::GetCalculatedAttributeDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.get_calculated_attribute_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculated_attribute_name: "typeName",
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     statistic: "FIRST_OCCURRENCE" # One of: ["FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"],
    #     filter: {
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #       groups: [ # required
    #         {
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"], # required
    #           dimensions: [ # required
    #             {
    #               attributes: { # required
    #                 "attributeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255"
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO" # One of: ["EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"], # required
    #       }
    #     },
    #     attribute_details: {
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         }
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     use_historical_data: false,
    #     status: "PREPARING" # One of: ["PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #     readiness: {
    #       progress_percentage: 1,
    #       message: "text"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetCalculatedAttributeDefinitionResponse]
    def get_calculated_attribute_definition(params = {}, options = {})
      request = build_request(:get_calculated_attribute_definition, params)
      request.send_request(options)
    end

    # <p>Retrieve a calculated attribute for a customer profile.</p>
    # @param [Hash, Types::GetCalculatedAttributeForProfileRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     calculated_attribute_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.get_calculated_attribute_for_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculated_attribute_name: "typeName",
    #     display_name: "displayName",
    #     is_data_partial: "string1To255",
    #     value: "string1To255",
    #     last_object_timestamp: Time.now
    #   }
    # @return [Types::GetCalculatedAttributeForProfileResponse]
    def get_calculated_attribute_for_profile(params = {}, options = {})
      request = build_request(:get_calculated_attribute_for_profile, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific domain.</p>
    # @param [Hash, Types::GetDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     default_expiration_days: 1,
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     stats: {
    #       profile_count: 1,
    #       metering_profile_count: 1,
    #       object_count: 1,
    #       total_size: 1
    #     },
    #     matching: {
    #       enabled: false,
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"]
    #           ]
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #           source_name: "string1To255"
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     rule_based_matching: {
    #       enabled: false,
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         }
    #       ],
    #       status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE"],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDomainResponse]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # <p>Gets the layout to view data for a specific domain. This API can only be invoked from
    #          the Amazon Connect admin website.</p>
    # @param [Hash, Types::GetDomainLayoutRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :layout_definition_name
    #   <p>The unique name of the layout.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_domain_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText", # required
    #     display_name: "displayName", # required
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"], # required
    #     layout: "sensitiveString1To2000000", # required
    #     version: "string1To255", # required
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDomainLayoutResponse]
    def get_domain_layout(params = {}, options = {})
      request = build_request(:get_domain_layout, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified event stream in a specific domain.</p>
    # @param [Hash, Types::GetEventStreamRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_stream_name
    #   <p>The name of the event stream provided during create operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_event_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     event_stream_arn: "string1To255", # required
    #     created_at: Time.now, # required
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"], # required
    #     stopped_since: Time.now,
    #     destination_details: { # required
    #       uri: "string1To255", # required
    #       status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #       unhealthy_since: Time.now,
    #       message: "string1To1000"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetEventStreamResponse]
    def get_event_stream(params = {}, options = {})
      request = build_request(:get_event_stream, params)
      request.send_request(options)
    end

    # <p>Get a specific Event Trigger from the domain.</p>
    # @param [Hash, Types::GetEventTriggerRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_event_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_trigger_name: "name",
    #     object_type_name: "typeName",
    #     description: "sensitiveText",
    #     event_trigger_conditions: [
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"], # required
    #                 values: ["string1To255"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         logical_operator: "ANY" # One of: ["ANY", "ALL", "NONE"], # required
    #       }
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS"], # required
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false
    #         }
    #       ]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetEventTriggerResponse]
    def get_event_trigger(params = {}, options = {})
      request = build_request(:get_event_trigger, params)
      request.send_request(options)
    end

    # <p>Returns information about an Identity Resolution Job in a specific domain. </p>
    #          <p>Identity Resolution Jobs are set up using the Amazon Connect admin console. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html">Use
    #             Identity Resolution to consolidate similar profiles</a>.</p>
    # @param [Hash, Types::GetIdentityResolutionJobRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     job_id: "uuid", # required
    #   }
    #   options = {}
    #   response = client.get_identity_resolution_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name",
    #     job_id: "uuid",
    #     status: "PENDING" # One of: ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"],
    #     message: "stringTo2048",
    #     job_start_time: Time.now,
    #     job_end_time: Time.now,
    #     last_updated_at: Time.now,
    #     job_expiration_time: Time.now,
    #     auto_merging: {
    #       enabled: false, # required
    #       consolidation: {
    #         matching_attributes_list: [ # required
    #           ["string1To255"]
    #         ]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       min_allowed_confidence_score_for_merging: 1.0
    #     },
    #     exporting_location: {
    #       s3_exporting: {
    #         s3_bucket_name: "s3BucketName",
    #         s3_key_name: "s3KeyName"
    #       }
    #     },
    #     job_stats: {
    #       number_of_profiles_reviewed: 1,
    #       number_of_matches_found: 1,
    #       number_of_merges_done: 1
    #     }
    #   }
    # @return [Types::GetIdentityResolutionJobResponse]
    def get_identity_resolution_job(params = {}, options = {})
      request = build_request(:get_identity_resolution_job, params)
      request.send_request(options)
    end

    # <p>Returns an integration for a domain.</p>
    # @param [Hash, Types::GetIntegrationRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #     object_type_name: "typeName",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     object_type_names: {
    #       "string1To255" => "typeName"
    #     },
    #     workflow_id: "string1To255",
    #     is_unstructured: false,
    #     role_arn: "RoleArn",
    #     event_trigger_names: ["name"]
    #   }
    # @return [Types::GetIntegrationResponse]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # <p>Before calling this API, use <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain</a> or
    #             <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain</a> to
    #          enable identity resolution: set <code>Matching</code> to true.</p>
    #          <p>GetMatches returns potentially matching profiles, based on the results of the latest run
    #          of a machine learning process. </p>
    #          <important>
    #             <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    # batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
    # Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #             <p>After the Identity Resolution Job completes, use the 
    # <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    # API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    # S3.</p>
    #          </important>
    #          <p>Amazon Connect uses the following profile attributes to identify matches:</p>
    #          <ul>
    #             <li>
    #                <p>PhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>HomePhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>BusinessPhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>MobilePhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>EmailAddress</p>
    #             </li>
    #             <li>
    #                <p>PersonalEmailAddress</p>
    #             </li>
    #             <li>
    #                <p>BusinessEmailAddress</p>
    #             </li>
    #             <li>
    #                <p>FullName</p>
    #             </li>
    #          </ul>
    #          <p>For example, two or more profiles—with spelling mistakes such as <b>John Doe</b> and <b>Jhn Doe</b>, or different casing
    #          email addresses such as <b>JOHN_DOE@ANYCOMPANY.COM</b> and
    #             <b>johndoe@anycompany.com</b>, or different phone number
    #          formats such as <b>555-010-0000</b> and <b>+1-555-010-0000</b>—can be detected as belonging to the same customer <b>John Doe</b> and merged into a unified profile.</p>
    # @param [Hash, Types::GetMatchesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_matches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "token",
    #     match_generation_date: Time.now,
    #     potential_matches: 1,
    #     matches: [
    #       {
    #         match_id: "string1To255",
    #         profile_ids: ["uuid"],
    #         confidence_score: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::GetMatchesResponse]
    def get_matches(params = {}, options = {})
      request = build_request(:get_matches, params)
      request.send_request(options)
    end

    # <p>Returns the object types for a specific domain.</p>
    # @param [Hash, Types::GetProfileObjectTypeRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.get_profile_object_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText", # required
    #     template_id: "name",
    #     expiration_days: 1,
    #     encryption_key: "encryptionKey",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     max_available_profile_object_count: 1,
    #     max_profile_object_count: 1,
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE" # One of: ["PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"]],
    #           field_names: ["name"]
    #         }
    #       ]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetProfileObjectTypeResponse]
    def get_profile_object_type(params = {}, options = {})
      request = build_request(:get_profile_object_type, params)
      request.send_request(options)
    end

    # <p>Returns the template information for a specific object type.</p>
    #          <p>A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
    #          “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API,
    #          with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the
    #          template.</p>
    # @param [Hash, Types::GetProfileObjectTypeTemplateRequest] params
    # @option params [String] :template_id
    #   <p>A unique identifier for the object template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_id: "name", # required
    #   }
    #   options = {}
    #   response = client.get_profile_object_type_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_id: "name",
    #     source_name: "name",
    #     source_object: "name",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE" # One of: ["PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"]],
    #           field_names: ["name"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetProfileObjectTypeTemplateResponse]
    def get_profile_object_type_template(params = {}, options = {})
      request = build_request(:get_profile_object_type_template, params)
      request.send_request(options)
    end

    # <p>Gets a segment definition from the domain.</p>
    # @param [Hash, Types::GetSegmentDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #   }
    #   options = {}
    #   response = client.get_segment_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_definition_name: "name",
    #     display_name: "string1To255",
    #     description: "sensitiveText",
    #     segment_groups: {
    #       groups: [
    #         {
    #           dimensions: [{
    #             # One of:
    #             profile_attributes: {
    #               account_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               additional_information: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To1000"], # required
    #               },
    #               first_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               last_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               middle_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               gender_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               party_type_string: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               birth_date: {
    #                 dimension_type: "BEFORE" # One of: ["BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON"], # required
    #                 values: ["String"], # required
    #               },
    #               phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_name: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               home_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               mobile_phone_number: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               personal_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               business_email_address: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                 values: ["string1To255"], # required
    #               },
    #               address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               shipping_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               mailing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               billing_address: {
    #                 city: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 country: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 county: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 postal_code: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 province: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 },
    #                 state: {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               attributes: {
    #                 "typeName" => {
    #                   dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                   values: ["string1To255"], # required
    #                 }
    #               },
    #               profile_type: {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE"], # required
    #                 values: ["ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"]], # required
    #               }
    #             },
    #             calculated_attributes: {
    #               "typeName" => {
    #                 dimension_type: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"], # required
    #                 values: ["string1To255"], # required
    #                 condition_overrides: {
    #                   range: {
    #                     start: 1, # required
    #                     end: 1,
    #                     unit: "DAYS" # One of: ["DAYS"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }],
    #           source_segments: [
    #             {
    #               segment_definition_name: "name"
    #             }
    #           ],
    #           source_type: "ALL" # One of: ["ALL", "ANY", "NONE"],
    #           type: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #         }
    #       ],
    #       include: "ALL" # One of: ["ALL", "ANY", "NONE"]
    #     },
    #     segment_definition_arn: "SegmentDefinitionArn", # required
    #     created_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSegmentDefinitionResponse]
    def get_segment_definition(params = {}, options = {})
      request = build_request(:get_segment_definition, params)
      request.send_request(options)
    end

    # <p>Gets the result of a segment estimate query.</p>
    # @param [Hash, Types::GetSegmentEstimateRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :estimate_id
    #   <p>The query Id passed by a previous <code>CreateSegmentEstimate</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     estimate_id: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.get_segment_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name",
    #     estimate_id: "string1To255",
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED"],
    #     estimate: "string1To255",
    #     message: "string1To255",
    #     status_code: 1
    #   }
    # @return [Types::GetSegmentEstimateResponse]
    def get_segment_estimate(params = {}, options = {})
      request = build_request(:get_segment_estimate, params)
      request.send_request(options)
    end

    # <p>Determines if the given profiles are within a segment.</p>
    # @param [Hash, Types::GetSegmentMembershipRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The Id of the wanted segment. Needs to be a valid, and existing segment Id.</p>
    # @option params [Array<String>] :profile_ids
    #   <p>The list of profile IDs to query for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #   }
    #   options = {}
    #   response = client.get_segment_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment_definition_name: "name",
    #     profiles: [
    #       {
    #         profile_id: "ProfileId", # required
    #         query_result: "PRESENT" # One of: ["PRESENT", "ABSENT"], # required
    #         profile: {
    #           profile_id: "uuid",
    #           account_number: "sensitiveString1To255",
    #           additional_information: "sensitiveString1To1000",
    #           party_type: "INDIVIDUAL" # One of: ["INDIVIDUAL", "BUSINESS", "OTHER"],
    #           business_name: "sensitiveString1To255",
    #           first_name: "sensitiveString1To255",
    #           middle_name: "sensitiveString1To255",
    #           last_name: "sensitiveString1To255",
    #           birth_date: "sensitiveString1To255",
    #           gender: "MALE" # One of: ["MALE", "FEMALE", "UNSPECIFIED"],
    #           phone_number: "sensitiveString1To255",
    #           mobile_phone_number: "sensitiveString1To255",
    #           home_phone_number: "sensitiveString1To255",
    #           business_phone_number: "sensitiveString1To255",
    #           email_address: "sensitiveString1To255",
    #           personal_email_address: "sensitiveString1To255",
    #           business_email_address: "sensitiveString1To255",
    #           address: {
    #             address1: "string1To255",
    #             address2: "string1To255",
    #             address3: "string1To255",
    #             address4: "string1To255",
    #             city: "string1To255",
    #             county: "string1To255",
    #             state: "string1To255",
    #             province: "string1To255",
    #             country: "string1To255",
    #             postal_code: "string1To255"
    #           },
    #           shipping_address: {
    #             address1: "string1To255",
    #             address2: "string1To255",
    #             address3: "string1To255",
    #             address4: "string1To255",
    #             city: "string1To255",
    #             county: "string1To255",
    #             state: "string1To255",
    #             province: "string1To255",
    #             country: "string1To255",
    #             postal_code: "string1To255"
    #           },
    #           mailing_address: {
    #             address1: "string1To255",
    #             address2: "string1To255",
    #             address3: "string1To255",
    #             address4: "string1To255",
    #             city: "string1To255",
    #             county: "string1To255",
    #             state: "string1To255",
    #             province: "string1To255",
    #             country: "string1To255",
    #             postal_code: "string1To255"
    #           },
    #           billing_address: {
    #             address1: "string1To255",
    #             address2: "string1To255",
    #             address3: "string1To255",
    #             address4: "string1To255",
    #             city: "string1To255",
    #             county: "string1To255",
    #             state: "string1To255",
    #             province: "string1To255",
    #             country: "string1To255",
    #             postal_code: "string1To255"
    #           },
    #           attributes: {
    #             "string1To255" => "string1To255"
    #           },
    #           found_by_items: [
    #             {
    #               key_name: "name",
    #               values: ["string1To255"]
    #             }
    #           ],
    #           party_type_string: "sensitiveString1To255",
    #           gender_string: "sensitiveString1To255",
    #           profile_type: "ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"],
    #           engagement_preferences: {
    #             phone: [
    #               {
    #                 key_name: "name",
    #                 key_value: "string1To255",
    #                 profile_id: "uuid",
    #                 contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #               }
    #             ],
    #             email: [
    #               {
    #                 key_name: "name",
    #                 key_value: "string1To255",
    #                 profile_id: "uuid",
    #                 contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         profile_id: "ProfileId", # required
    #         message: "GetSegmentMembershipMessage", # required
    #         status: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetSegmentMembershipResponse]
    def get_segment_membership(params = {}, options = {})
      request = build_request(:get_segment_membership, params)
      request.send_request(options)
    end

    # <p>Retrieve the latest status of a segment snapshot.</p>
    # @param [Hash, Types::GetSegmentSnapshotRequest] params
    # @option params [String] :domain_name
    #   <p>The unique identifier of the domain.</p>
    # @option params [String] :segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    # @option params [String] :snapshot_id
    #   <p>The unique identifier of the segment snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     snapshot_id: "uuid", # required
    #   }
    #   options = {}
    #   response = client.get_segment_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "uuid", # required
    #     status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"], # required
    #     status_message: "string1To1000",
    #     data_format: "CSV" # One of: ["CSV", "JSONL", "ORC"], # required
    #     encryption_key: "encryptionKey",
    #     role_arn: "RoleArn",
    #     destination_uri: "string1To255"
    #   }
    # @return [Types::GetSegmentSnapshotResponse]
    def get_segment_snapshot(params = {}, options = {})
      request = build_request(:get_segment_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns a set of profiles that belong to the same matching group using the
    #             <code>matchId</code> or <code>profileId</code>. You can also specify the type of
    #          matching that you want for finding similar profiles using either
    #             <code>RULE_BASED_MATCHING</code> or <code>ML_BASED_MATCHING</code>.</p>
    # @param [Hash, Types::GetSimilarProfilesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous <code>GetSimilarProfiles</code> API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :match_type
    #   <p>Specify the type of matching to get similar profiles for.</p>
    # @option params [String] :search_key
    #   <p>The string indicating the search key to be used.</p>
    # @option params [String] :search_value
    #   <p>The string based on <code>SearchKey</code> to be searched for similar profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     match_type: "RULE_BASED_MATCHING" # One of: ["RULE_BASED_MATCHING", "ML_BASED_MATCHING"], # required
    #     search_key: "string1To255", # required
    #     search_value: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.get_similar_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_ids: ["uuid"],
    #     match_id: "string1To255",
    #     match_type: "RULE_BASED_MATCHING" # One of: ["RULE_BASED_MATCHING", "ML_BASED_MATCHING"],
    #     rule_level: 1,
    #     confidence_score: 1.0,
    #     next_token: "token"
    #   }
    # @return [Types::GetSimilarProfilesResponse]
    def get_similar_profiles(params = {}, options = {})
      request = build_request(:get_similar_profiles, params)
      request.send_request(options)
    end

    # <p>This API retrieves the details of a specific upload job. </p>
    # @param [Hash, Types::GetUploadJobRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain containing the upload job. </p>
    # @option params [String] :job_id
    #   <p>The unique identifier of the upload job to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     job_id: "uuid", # required
    #   }
    #   options = {}
    #   response = client.get_upload_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "uuid",
    #     display_name: "string1To255",
    #     status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "PARTIALLY_SUCCEEDED", "SUCCEEDED", "FAILED", "STOPPED"],
    #     status_reason: "VALIDATION_FAILURE" # One of: ["VALIDATION_FAILURE", "INTERNAL_FAILURE"],
    #     created_at: Time.now,
    #     completed_at: Time.now,
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     unique_key: "text",
    #     results_summary: {
    #       updated_records: 1,
    #       created_records: 1,
    #       failed_records: 1
    #     },
    #     data_expiry: 1
    #   }
    # @return [Types::GetUploadJobResponse]
    def get_upload_job(params = {}, options = {})
      request = build_request(:get_upload_job, params)
      request.send_request(options)
    end

    # <p>This API retrieves the pre-signed URL and client token for uploading the file associated
    #          with the upload job. </p>
    # @param [Hash, Types::GetUploadJobPathRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain containing the upload job. </p>
    # @option params [String] :job_id
    #   <p>The unique identifier of the upload job to retrieve the upload path for. This is
    #            generated from the CreateUploadJob API. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   }
    #   options = {}
    #   response = client.get_upload_job_path(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "stringTo2048", # required
    #     client_token: "text",
    #     valid_until: Time.now
    #   }
    # @return [Types::GetUploadJobPathResponse]
    def get_upload_job_path(params = {}, options = {})
      request = build_request(:get_upload_job_path, params)
      request.send_request(options)
    end

    # <p>Get details of specified workflow.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "uuid",
    #     workflow_type: "APPFLOW_INTEGRATION" # One of: ["APPFLOW_INTEGRATION"],
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"],
    #     error_description: "string1To255",
    #     start_date: Time.now,
    #     last_updated_at: Time.now,
    #     attributes: {
    #       appflow_integration: {
    #         source_connector_type: "Salesforce" # One of: ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"], # required
    #         connector_profile_name: "ConnectorProfileName", # required
    #         role_arn: "string1To255"
    #       }
    #     },
    #     metrics: {
    #       appflow_integration: {
    #         records_processed: 1, # required
    #         steps_completed: 1, # required
    #         total_steps: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Get granular list of steps in workflow.</p>
    # @param [Hash, Types::GetWorkflowStepsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_workflow_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_id: "uuid",
    #     workflow_type: "APPFLOW_INTEGRATION" # One of: ["APPFLOW_INTEGRATION"],
    #     items: [
    #       {
    #         appflow_integration: {
    #           flow_name: "FlowName", # required
    #           status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"], # required
    #           execution_message: "string1To255", # required
    #           records_processed: 1, # required
    #           batch_records_start_time: "string1To255", # required
    #           batch_records_end_time: "string1To255", # required
    #           created_at: Time.now, # required
    #           last_updated_at: Time.now, # required
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::GetWorkflowStepsResponse]
    def get_workflow_steps(params = {}, options = {})
      request = build_request(:get_workflow_steps, params)
      request.send_request(options)
    end

    # <p>Lists all of the integrations associated to a specific URI in the AWS account.</p>
    # @param [Hash, Types::ListAccountIntegrationsRequest] params
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [Boolean] :include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     uri: "string1To255", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false
    #   }
    #   options = {}
    #   response = client.list_account_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255", # required
    #         object_type_name: "typeName",
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         object_type_names: {
    #           "string1To255" => "typeName"
    #         },
    #         workflow_id: "string1To255",
    #         is_unstructured: false,
    #         role_arn: "RoleArn",
    #         event_trigger_names: ["name"]
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListAccountIntegrationsResponse]
    def list_account_integrations(params = {}, options = {})
      request = build_request(:list_account_integrations, params)
      request.send_request(options)
    end

    # <p>Lists calculated attribute definitions for Customer Profiles</p>
    # @param [Hash, Types::ListCalculatedAttributeDefinitionsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributeDefinitions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of calculated attribute definitions returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_calculated_attribute_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         calculated_attribute_name: "typeName",
    #         display_name: "displayName",
    #         description: "sensitiveText",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         use_historical_data: false,
    #         status: "PREPARING" # One of: ["PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListCalculatedAttributeDefinitionsResponse]
    def list_calculated_attribute_definitions(params = {}, options = {})
      request = build_request(:list_calculated_attribute_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of calculated attributes for a customer profile.</p>
    # @param [Hash, Types::ListCalculatedAttributesForProfileRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributesForProfile.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of calculated attributes returned per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #   }
    #   options = {}
    #   response = client.list_calculated_attributes_for_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         calculated_attribute_name: "typeName",
    #         display_name: "displayName",
    #         is_data_partial: "string1To255",
    #         value: "string1To255",
    #         last_object_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListCalculatedAttributesForProfileResponse]
    def list_calculated_attributes_for_profile(params = {}, options = {})
      request = build_request(:list_calculated_attributes_for_profile, params)
      request.send_request(options)
    end

    # <p>Lists the existing layouts that can be used to view data for a specific domain. This API
    #          can only be invoked from the Amazon Connect admin website.</p>
    # @param [Hash, Types::ListDomainLayoutsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domain_layouts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         layout_definition_name: "name", # required
    #         description: "sensitiveText", # required
    #         display_name: "displayName", # required
    #         is_default: false,
    #         layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"], # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListDomainLayoutsResponse]
    def list_domain_layouts(params = {}, options = {})
      request = build_request(:list_domain_layouts, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the domains for an AWS account that have been created.</p>
    # @param [Hash, Types::ListDomainsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListDomain API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name: "name", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListDomainsResponse]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the event streams in a specific domain.</p>
    # @param [Hash, Types::ListEventStreamsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name: "name", # required
    #         event_stream_name: "name", # required
    #         event_stream_arn: "string1To255", # required
    #         state: "RUNNING" # One of: ["RUNNING", "STOPPED"], # required
    #         stopped_since: Time.now,
    #         destination_summary: {
    #           uri: "string1To255", # required
    #           status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #           unhealthy_since: Time.now
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListEventStreamsResponse]
    def list_event_streams(params = {}, options = {})
      request = build_request(:list_event_streams, params)
      request.send_request(options)
    end

    # <p>List all Event Triggers under a domain.</p>
    # @param [Hash, Types::ListEventTriggersRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use with ListEventTriggers.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_triggers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         object_type_name: "typeName",
    #         event_trigger_name: "name",
    #         description: "text",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListEventTriggersResponse]
    def list_event_triggers(params = {}, options = {})
      request = build_request(:list_event_triggers, params)
      request.send_request(options)
    end

    # <p>Lists all of the Identity Resolution Jobs in your domain. The response sorts the list by
    #             <code>JobStartTime</code>.</p>
    # @param [Hash, Types::ListIdentityResolutionJobsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_identity_resolution_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_resolution_jobs_list: [
    #       {
    #         domain_name: "name",
    #         job_id: "uuid",
    #         status: "PENDING" # One of: ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"],
    #         job_start_time: Time.now,
    #         job_end_time: Time.now,
    #         job_stats: {
    #           number_of_profiles_reviewed: 1,
    #           number_of_matches_found: 1,
    #           number_of_merges_done: 1
    #         },
    #         exporting_location: {
    #           s3_exporting: {
    #             s3_bucket_name: "s3BucketName",
    #             s3_key_name: "s3KeyName"
    #           }
    #         },
    #         message: "stringTo2048"
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListIdentityResolutionJobsResponse]
    def list_identity_resolution_jobs(params = {}, options = {})
      request = build_request(:list_identity_resolution_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all of the integrations in your domain.</p>
    # @param [Hash, Types::ListIntegrationsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [Boolean] :include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false
    #   }
    #   options = {}
    #   response = client.list_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255", # required
    #         object_type_name: "typeName",
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         object_type_names: {
    #           "string1To255" => "typeName"
    #         },
    #         workflow_id: "string1To255",
    #         is_unstructured: false,
    #         role_arn: "RoleArn",
    #         event_trigger_names: ["name"]
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListIntegrationsResponse]
    def list_integrations(params = {}, options = {})
      request = build_request(:list_integrations, params)
      request.send_request(options)
    end

    # <p>Fetch the possible attribute values given the attribute name.</p>
    # @param [Hash, Types::ListObjectTypeAttributesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique identifier of the domain.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   }
    #   options = {}
    #   response = client.list_object_type_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         attribute_name: "name", # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListObjectTypeAttributesResponse]
    def list_object_type_attributes(params = {}, options = {})
      request = build_request(:list_object_type_attributes, params)
      request.send_request(options)
    end

    # <p>Fetch the possible attribute values given the attribute name.</p>
    # @param [Hash, Types::ProfileAttributeValuesRequest] params
    # @option params [String] :domain_name
    #   <p>The unique identifier of the domain.</p>
    # @option params [String] :attribute_name
    #   <p>The attribute name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     attribute_name: "string1To255", # required
    #   }
    #   options = {}
    #   response = client.list_profile_attribute_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name",
    #     attribute_name: "string1To255",
    #     items: [
    #       {
    #         value: "string1To255"
    #       }
    #     ],
    #     status_code: 1
    #   }
    # @return [Types::ProfileAttributeValuesResponse]
    def list_profile_attribute_values(params = {}, options = {})
      request = build_request(:list_profile_attribute_values, params)
      request.send_request(options)
    end

    # <p>Lists all of the template information for object types.</p>
    # @param [Hash, Types::ListProfileObjectTypeTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_profile_object_type_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         template_id: "name",
    #         source_name: "name",
    #         source_object: "name"
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListProfileObjectTypeTemplatesResponse]
    def list_profile_object_type_templates(params = {}, options = {})
      request = build_request(:list_profile_object_type_templates, params)
      request.send_request(options)
    end

    # <p>Lists all of the templates available within the service.</p>
    # @param [Hash, Types::ListProfileObjectTypesRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_profile_object_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         object_type_name: "typeName", # required
    #         description: "text", # required
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         max_profile_object_count: 1,
    #         max_available_profile_object_count: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListProfileObjectTypesResponse]
    def list_profile_object_types(params = {}, options = {})
      request = build_request(:list_profile_object_types, params)
      request.send_request(options)
    end

    # <p>Returns a list of objects associated with a profile of a given ProfileObjectType.</p>
    # @param [Hash, Types::ListProfileObjectsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [Types::ObjectFilter] :object_filter
    #   <p>Applies a filter to the response to include profile objects with the specified index
    #            values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     profile_id: "uuid", # required
    #     object_filter: {
    #       key_name: "name", # required
    #       values: ["string1To255"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.list_profile_objects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         object_type_name: "typeName",
    #         profile_object_unique_key: "string1To255",
    #         object: "stringifiedJson"
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListProfileObjectsResponse]
    def list_profile_objects(params = {}, options = {})
      request = build_request(:list_profile_objects, params)
      request.send_request(options)
    end

    # <p>Returns a set of <code>MatchIds</code> that belong to the given domain.</p>
    # @param [Hash, Types::ListRuleBasedMatchesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous <code>ListRuleBasedMatches</code> API
    #            call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>MatchIds</code> returned per page.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.list_rule_based_matches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     match_ids: ["string1To255"],
    #     next_token: "token"
    #   }
    # @return [Types::ListRuleBasedMatchesResponse]
    def list_rule_based_matches(params = {}, options = {})
      request = build_request(:list_rule_based_matches, params)
      request.send_request(options)
    end

    # <p>Lists all segment definitions under a domain.</p>
    # @param [Hash, Types::ListSegmentDefinitionsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique identifier of the domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     max_results: 1,
    #     next_token: "token"
    #   }
    #   options = {}
    #   response = client.list_segment_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "token",
    #     items: [
    #       {
    #         segment_definition_name: "name",
    #         display_name: "string1To255",
    #         description: "sensitiveText",
    #         segment_definition_arn: "SegmentDefinitionArn",
    #         created_at: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSegmentDefinitionsResponse]
    def list_segment_definitions(params = {}, options = {})
      request = build_request(:list_segment_definitions, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect
    #          Customer Profiles, domains, profile object types, and integrations can be tagged.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>This API retrieves a list of upload jobs for the specified domain. </p>
    # @param [Hash, Types::ListUploadJobsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain to list upload jobs for. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of upload jobs to return per page. </p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call to retrieve the next page of results.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     max_results: 1,
    #     next_token: "token"
    #   }
    #   options = {}
    #   response = client.list_upload_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "token",
    #     items: [
    #       {
    #         job_id: "uuid",
    #         display_name: "string1To255",
    #         status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "PARTIALLY_SUCCEEDED", "SUCCEEDED", "FAILED", "STOPPED"],
    #         status_reason: "VALIDATION_FAILURE" # One of: ["VALIDATION_FAILURE", "INTERNAL_FAILURE"],
    #         created_at: Time.now,
    #         completed_at: Time.now,
    #         data_expiry: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListUploadJobsResponse]
    def list_upload_jobs(params = {}, options = {})
      request = build_request(:list_upload_jobs, params)
      request.send_request(options)
    end

    # <p>Query to list all workflows.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    # @option params [String] :status
    #   <p>Status of workflow execution.</p>
    # @option params [Time] :query_start_date
    #   <p>Retrieve workflows started after timestamp.</p>
    # @option params [Time] :query_end_date
    #   <p>Retrieve workflows ended after timestamp.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION" # One of: ["APPFLOW_INTEGRATION"],
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"],
    #     query_start_date: Time.now,
    #     query_end_date: Time.now,
    #     next_token: "token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         workflow_type: "APPFLOW_INTEGRATION" # One of: ["APPFLOW_INTEGRATION"], # required
    #         workflow_id: "string1To255", # required
    #         status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"], # required
    #         status_description: "string1To255", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Runs an AWS Lambda job that does the following:</p>
    #          <ol>
    #             <li>
    #                <p>All the profileKeys in the <code>ProfileToBeMerged</code> will be moved to the
    #                main profile.</p>
    #             </li>
    #             <li>
    #                <p>All the objects in the <code>ProfileToBeMerged</code> will be moved to the main
    #                profile.</p>
    #             </li>
    #             <li>
    #                <p>All the <code>ProfileToBeMerged</code> will be deleted at the end.</p>
    #             </li>
    #             <li>
    #                <p>All the profileKeys in the <code>ProfileIdsToBeMerged</code> will be moved to the
    #                main profile.</p>
    #             </li>
    #             <li>
    #                <p>Standard fields are merged as follows:</p>
    #                <ol>
    #                   <li>
    #                      <p>Fields are always "union"-ed if there are no conflicts in standard fields or
    #                      attributeKeys.</p>
    #                   </li>
    #                   <li>
    #                      <p>When there are conflicting fields:</p>
    #                      <ol>
    #                         <li>
    #                            <p>If no <code>SourceProfileIds</code> entry is specified, the main
    #                            Profile value is always taken. </p>
    #                         </li>
    #                         <li>
    #                            <p>If a <code>SourceProfileIds</code> entry is specified, the specified
    #                            profileId is always taken, even if it is a NULL value.</p>
    #                         </li>
    #                      </ol>
    #                   </li>
    #                </ol>
    #             </li>
    #          </ol>
    #          <p>You can use MergeProfiles together with <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>, which
    #          returns potentially matching profiles, or use it with the results of another matching
    #          system. After profiles have been merged, they cannot be separated (unmerged).</p>
    # @param [Hash, Types::MergeProfilesRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :main_profile_id
    #   <p>The identifier of the profile to be taken.</p>
    # @option params [Array<String>] :profile_ids_to_be_merged
    #   <p>The identifier of the profile to be merged into MainProfileId.</p>
    # @option params [Types::FieldSourceProfileIds] :field_source_profile_ids
    #   <p>The identifiers of the fields in the profile that has the information you want to apply
    #            to the merge. For example, say you want to merge EmailAddress from Profile1 into
    #            MainProfile. This would be the identifier of the EmailAddress field in Profile1. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     main_profile_id: "uuid", # required
    #     profile_ids_to_be_merged: ["uuid"], # required
    #     field_source_profile_ids: {
    #       account_number: "uuid",
    #       additional_information: "uuid",
    #       party_type: "uuid",
    #       business_name: "uuid",
    #       first_name: "uuid",
    #       middle_name: "uuid",
    #       last_name: "uuid",
    #       birth_date: "uuid",
    #       gender: "uuid",
    #       phone_number: "uuid",
    #       mobile_phone_number: "uuid",
    #       home_phone_number: "uuid",
    #       business_phone_number: "uuid",
    #       email_address: "uuid",
    #       personal_email_address: "uuid",
    #       business_email_address: "uuid",
    #       address: "uuid",
    #       shipping_address: "uuid",
    #       mailing_address: "uuid",
    #       billing_address: "uuid",
    #       attributes: {
    #         "string1To255" => "uuid"
    #       },
    #       profile_type: "uuid",
    #       engagement_preferences: "uuid"
    #     }
    #   }
    #   options = {}
    #   response = client.merge_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "message"
    #   }
    # @return [Types::MergeProfilesResponse]
    def merge_profiles(params = {}, options = {})
      request = build_request(:merge_profiles, params)
      request.send_request(options)
    end

    # <p>Adds an integration between the service and a third-party service, which includes
    #          Amazon AppFlow and Amazon Connect.</p>
    #          <p>An integration can belong to only one domain.</p>
    #          <p>To add or remove tags on an existing Integration, see <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html"> TagResource
    #             </a>/<a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html">
    #          UntagResource</a>.</p>
    # @param [Hash, Types::PutIntegrationRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @option params [Types::FlowDefinition] :flow_definition
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    # @option params [Hash<String, String>] :object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>, 
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. The Integration uses this role to make
    #            Customer Profiles requests on your behalf.</p>
    # @option params [Array<String>] :event_trigger_names
    #   <p>A list of unique names for active event triggers associated with the integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     uri: "string1To255",
    #     object_type_name: "typeName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     flow_definition: {
    #       description: "FlowDescription",
    #       flow_name: "FlowName", # required
    #       kms_arn: "KmsArn", # required
    #       source_flow_config: { # required
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"], # required
    #         incremental_pull_config: {
    #           datetime_type_field_name: "DatetimeTypeFieldName"
    #         },
    #         source_connector_properties: { # required
    #           marketo: {
    #             object: "Object", # required
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix"
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false
    #           },
    #           service_now: {
    #             object: "Object", # required
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #           }
    #         }
    #       },
    #       tasks: [ # required
    #         {
    #           connector_operator: {
    #             marketo: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #             s3: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #             salesforce: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #             service_now: "PROJECTION" # One of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #             zendesk: "PROJECTION" # One of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           },
    #           destination_field: "DestinationField",
    #           source_fields: ["stringTo2048"], # required
    #           task_properties: {
    #             "OperatorPropertiesKeys" => "Property"
    #           },
    #           task_type: "Arithmetic" # One of: ["Arithmetic", "Filter", "Map", "Mask", "Merge", "Truncate", "Validate"], # required
    #         }
    #       ],
    #       trigger_config: { # required
    #         trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"], # required
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: "ScheduleExpression", # required
    #             data_pull_mode: "Incremental" # One of: ["Incremental", "Complete"],
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: "Timezone",
    #             schedule_offset: 1,
    #             first_execution_from: Time.now
    #           }
    #         }
    #       }
    #     },
    #     object_type_names: {
    #       "string1To255" => "typeName"
    #     },
    #     role_arn: "RoleArn",
    #     event_trigger_names: ["name"]
    #   }
    #   options = {}
    #   response = client.put_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #     object_type_name: "typeName",
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     object_type_names: {
    #       "string1To255" => "typeName"
    #     },
    #     workflow_id: "string1To255",
    #     is_unstructured: false,
    #     role_arn: "RoleArn",
    #     event_trigger_names: ["name"]
    #   }
    # @return [Types::PutIntegrationResponse]
    def put_integration(params = {}, options = {})
      request = build_request(:put_integration, params)
      request.send_request(options)
    end

    # <p>Adds additional objects to customer profiles of a given ObjectType.</p>
    #          <p>When adding a specific profile object, like a Contact Record, an inferred profile can
    #          get created if it is not mapped to an existing profile. The resulting profile will only
    #          have a phone number populated in the standard ProfileObject. Any additional Contact Records
    #          with the same phone number will be mapped to the same inferred profile.</p>
    #          <p>When a ProfileObject is created and if a ProfileObjectType already exists for the
    #          ProfileObject, it will provide data to a standard profile depending on the
    #          ProfileObjectType definition.</p>
    #          <p>PutProfileObject needs an ObjectType, which can be created using
    #          PutProfileObjectType.</p>
    # @param [Hash, Types::PutProfileObjectRequest] params
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [String] :object
    #   <p>A string that is serialized from a JSON object.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     object_type_name: "typeName", # required
    #     object: "stringifiedJson", # required
    #     domain_name: "name", # required
    #   }
    #   options = {}
    #   response = client.put_profile_object(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_object_unique_key: "string1To255"
    #   }
    # @return [Types::PutProfileObjectResponse]
    def put_profile_object(params = {}, options = {})
      request = build_request(:put_profile_object, params)
      request.send_request(options)
    end

    # <p>Defines a ProfileObjectType.</p>
    #          <p>To add or remove tags on an existing ObjectType, see <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html">
    #             TagResource</a>/<a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    # @param [Hash, Types::PutProfileObjectTypeRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    # @option params [String] :description
    #   <p>Description of the profile object type.</p>
    # @option params [String] :template_id
    #   <p>A unique identifier for the object template. For some attributes in the request, the
    #            service will use the default value from the object template when TemplateId is present. If
    #            these attributes are present in the request, the service may return a
    #               <code>BadRequestException</code>. These attributes include: AllowProfileCreation,
    #            SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if AllowProfileCreation is
    #            set to true when TemplateId is set, the service may return a
    #               <code>BadRequestException</code>.</p>
    # @option params [Integer] :expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    # @option params [String] :encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    # @option params [Boolean] :allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    # @option params [String] :source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up.
    #         </p>
    # @option params [Integer] :max_profile_object_count
    #   <p>The amount of profile object max count assigned to the object type</p>
    # @option params [Hash<String, Types::ObjectTypeField>] :fields
    #   <p>A map of the name and ObjectType field.</p>
    # @option params [Hash<String, Array<Types::ObjectTypeKey>>] :keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText", # required
    #     template_id: "name",
    #     expiration_days: 1,
    #     encryption_key: "encryptionKey",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     max_profile_object_count: 1,
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE" # One of: ["PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"]],
    #           field_names: ["name"]
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.put_profile_object_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText", # required
    #     template_id: "name",
    #     expiration_days: 1,
    #     encryption_key: "encryptionKey",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     max_profile_object_count: 1,
    #     max_available_profile_object_count: 1,
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING" # One of: ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE" # One of: ["PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"]],
    #           field_names: ["name"]
    #         }
    #       ]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::PutProfileObjectTypeResponse]
    def put_profile_object_type(params = {}, options = {})
      request = build_request(:put_profile_object_type, params)
      request.send_request(options)
    end

    # <p>Searches for profiles within a specific domain using one or more predefined search keys
    #          (e.g., _fullName, _phone, _email, _account, etc.) and/or custom-defined search keys. A
    #          search key is a data type pair that consists of a <code>KeyName</code> and
    #             <code>Values</code> list.</p>
    #          <p>This operation supports searching for profiles with a minimum of 1 key-value(s) pair and
    #          up to 5 key-value(s) pairs using either <code>AND</code> or <code>OR</code> logic.</p>
    # @param [Hash, Types::SearchProfilesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #            <p>The default is 20 if this parameter is not included in the request.</p>
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use to search include: _account, _profileId,
    #            _assetId, _caseId, _orderId, _fullName, _phone, _email, _ctrContactId, _marketoLeadId,
    #            _salesforceAccountId, _salesforceContactId, _salesforceAssetId, _zendeskUserId,
    #            _zendeskExternalId, _zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
    #            _segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p>
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    # @option params [Array<Types::AdditionalSearchKey>] :additional_search_keys
    #   <p>A list of <code>AdditionalSearchKey</code> objects that are each searchable identifiers
    #            of a profile. Each <code>AdditionalSearchKey</code> object contains a <code>KeyName</code>
    #            and a list of <code>Values</code> associated with that specific key (i.e., a key-value(s)
    #            pair). These additional search keys will be used in conjunction with the
    #               <code>LogicalOperator</code> and the required <code>KeyName</code> and
    #               <code>Values</code> parameters to search for profiles that satisfy the search criteria.
    #         </p>
    # @option params [String] :logical_operator
    #   <p>Relationship between all specified search keys that will be used to search for profiles.
    #            This includes the required <code>KeyName</code> and <code>Values</code> parameters as well
    #            as any key-value(s) pairs specified in the <code>AdditionalSearchKeys</code> list.</p>
    #            <p>This parameter influences which profiles will be returned in the response in the
    #            following manner:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AND</code> - The response only includes profiles that match all of the
    #                  search keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> - The response includes profiles that match at least one of the
    #                  search keys.</p>
    #               </li>
    #            </ul>
    #            <p>The <code>OR</code> relationship is the default behavior if this parameter is not
    #            included in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     additional_search_keys: [
    #       {
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       }
    #     ],
    #     logical_operator: "AND" # One of: ["AND", "OR"]
    #   }
    #   options = {}
    #   response = client.search_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         profile_id: "uuid",
    #         account_number: "sensitiveString1To255",
    #         additional_information: "sensitiveString1To1000",
    #         party_type: "INDIVIDUAL" # One of: ["INDIVIDUAL", "BUSINESS", "OTHER"],
    #         business_name: "sensitiveString1To255",
    #         first_name: "sensitiveString1To255",
    #         middle_name: "sensitiveString1To255",
    #         last_name: "sensitiveString1To255",
    #         birth_date: "sensitiveString1To255",
    #         gender: "MALE" # One of: ["MALE", "FEMALE", "UNSPECIFIED"],
    #         phone_number: "sensitiveString1To255",
    #         mobile_phone_number: "sensitiveString1To255",
    #         home_phone_number: "sensitiveString1To255",
    #         business_phone_number: "sensitiveString1To255",
    #         email_address: "sensitiveString1To255",
    #         personal_email_address: "sensitiveString1To255",
    #         business_email_address: "sensitiveString1To255",
    #         address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         shipping_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         mailing_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         billing_address: {
    #           address1: "string1To255",
    #           address2: "string1To255",
    #           address3: "string1To255",
    #           address4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255"
    #         },
    #         attributes: {
    #           "string1To255" => "string1To255"
    #         },
    #         found_by_items: [
    #           {
    #             key_name: "name",
    #             values: ["string1To255"]
    #           }
    #         ],
    #         party_type_string: "sensitiveString1To255",
    #         gender_string: "sensitiveString1To255",
    #         profile_type: "ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"],
    #         engagement_preferences: {
    #           phone: [
    #             {
    #               key_name: "name",
    #               key_value: "string1To255",
    #               profile_id: "uuid",
    #               contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #             }
    #           ],
    #           email: [
    #             {
    #               key_name: "name",
    #               key_value: "string1To255",
    #               profile_id: "uuid",
    #               contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "token"
    #   }
    # @return [Types::SearchProfilesResponse]
    def search_profiles(params = {}, options = {})
      request = build_request(:search_profiles, params)
      request.send_request(options)
    end

    # <p>This API starts the processing of an upload job to ingest profile data. </p>
    # @param [Hash, Types::StartUploadJobRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain containing the upload job to start. </p>
    # @option params [String] :job_id
    #   <p>The unique identifier of the upload job to start. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   }
    #   options = {}
    #   response = client.start_upload_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartUploadJobResponse]
    def start_upload_job(params = {}, options = {})
      request = build_request(:start_upload_job, params)
      request.send_request(options)
    end

    # <p>This API stops the processing of an upload job. </p>
    # @param [Hash, Types::StopUploadJobRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain containing the upload job to stop. </p>
    # @option params [String] :job_id
    #   <p>The unique identifier of the upload job to stop. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   }
    #   options = {}
    #   response = client.stop_upload_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopUploadJobResponse]
    def stop_upload_job(params = {}, options = {})
      request = build_request(:stop_upload_job, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles
    #          resource. Tags can help you organize and categorize your resources. You can also use them
    #          to scope user permissions by granting a user permission to access or change only resources
    #          with certain tag values. In Connect Customer Profiles, domains, profile object types, and
    #          integrations can be tagged.</p>
    #          <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of
    #          characters.</p>
    #          <p>You can use the TagResource action with a resource that already has tags. If you specify
    #          a new tag key, this tag is appended to the list of tags associated with the resource. If
    #          you specify a tag key that is already associated with the resource, the new tag value that
    #          you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect
    #          Customer Profiles, domains, profile object types, and integrations can be tagged.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing calculated attribute definition. When updating the Conditions, note
    #          that increasing the date range of a calculated attribute will not trigger inclusion of
    #          historical data greater than the current date range.</p>
    # @param [Hash, Types::UpdateCalculatedAttributeDefinitionRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    # @option params [String] :display_name
    #   <p>The display name of the calculated attribute.</p>
    # @option params [String] :description
    #   <p>The description of the calculated attribute.</p>
    # @option params [Types::Conditions] :conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255"
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO" # One of: ["EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_calculated_attribute_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     calculated_attribute_name: "typeName",
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     statistic: "FIRST_OCCURRENCE" # One of: ["FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"],
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS" # One of: ["DAYS"],
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255"
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO" # One of: ["EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"], # required
    #       }
    #     },
    #     attribute_details: {
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         }
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     use_historical_data: false,
    #     status: "PREPARING" # One of: ["PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #     readiness: {
    #       progress_percentage: 1,
    #       message: "text"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateCalculatedAttributeDefinitionResponse]
    def update_calculated_attribute_definition(params = {}, options = {})
      request = build_request(:update_calculated_attribute_definition, params)
      request.send_request(options)
    end

    # <p>Updates the properties of a domain, including creating or selecting a dead letter queue
    #          or an encryption key.</p>
    #          <p>After a domain is created, the name can’t be changed.</p>
    #          <p>Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain</a> to
    #          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    #             resolution</a>: set <code>Matching</code> to true.</p>
    #          <p>To prevent cross-service impersonation when you call this API, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html">Cross-service confused deputy prevention</a> for sample policies that you should
    #          apply. </p>
    #          <p>To add or remove tags on an existing Domain, see <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html">TagResource</a>/<a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    # @param [Hash, Types::UpdateDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [Integer] :default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    # @option params [String] :default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage. If specified as an empty string, it will clear any
    #            existing value.</p>
    # @option params [String] :dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. If specified as an empty string, it will
    #            clear any existing value. You must set up a policy on the DeadLetterQueue for the
    #            SendMessage operation to enable Amazon Connect Customer Profiles to send messages to the
    #            DeadLetterQueue.</p>
    # @option params [Types::MatchingRequest] :matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every 
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the 
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    # @option params [Types::RuleBasedMatchingRequest] :rule_based_matching
    #   <p>The process of matching duplicate profiles using the rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Amazon Connect Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     default_expiration_days: 1,
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"]
    #           ]
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #           source_name: "string1To255"
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     rule_based_matching: {
    #       enabled: false, # required
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         }
    #       ],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "name", # required
    #     default_expiration_days: 1,
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false,
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"]
    #           ]
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #           source_name: "string1To255"
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     rule_based_matching: {
    #       enabled: false,
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         }
    #       ],
    #       status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "ACTIVE"],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"]
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY" # One of: ["RECENCY", "SOURCE"], # required
    #         source_name: "string1To255"
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig"
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     last_updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateDomainResponse]
    def update_domain(params = {}, options = {})
      request = build_request(:update_domain, params)
      request.send_request(options)
    end

    # <p>Updates the layout used to view data for a specific domain. This API can only be invoked
    #          from the Amazon Connect admin website.</p>
    # @param [Hash, Types::UpdateDomainLayoutRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :layout_definition_name
    #   <p>The unique name of the layout.</p>
    # @option params [String] :description
    #   <p>The description of the layout</p>
    # @option params [String] :display_name
    #   <p>The display name of the layout</p>
    # @option params [Boolean] :is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    # @option params [String] :layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    # @option params [String] :layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText",
    #     display_name: "displayName",
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"],
    #     layout: "sensitiveString1To2000000"
    #   }
    #   options = {}
    #   response = client.update_domain_layout(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     layout_definition_name: "name",
    #     description: "sensitiveText",
    #     display_name: "displayName",
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER" # One of: ["PROFILE_EXPLORER"],
    #     layout: "sensitiveString1To2000000",
    #     version: "string1To255",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateDomainLayoutResponse]
    def update_domain_layout(params = {}, options = {})
      request = build_request(:update_domain_layout, params)
      request.send_request(options)
    end

    # <p>Update the properties of an Event Trigger.</p>
    # @param [Hash, Types::UpdateEventTriggerRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    # @option params [String] :object_type_name
    #   <p>The unique name of the object type.</p>
    # @option params [String] :description
    #   <p>The description of the event trigger.</p>
    # @option params [Array<Types::EventTriggerCondition>] :event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    # @option params [String] :segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    # @option params [Types::EventTriggerLimits] :event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #     object_type_name: "typeName",
    #     description: "sensitiveText",
    #     event_trigger_conditions: [
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"], # required
    #                 values: ["string1To255"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         logical_operator: "ANY" # One of: ["ANY", "ALL", "NONE"], # required
    #       }
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS"], # required
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_trigger(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_trigger_name: "name",
    #     object_type_name: "typeName",
    #     description: "sensitiveText",
    #     event_trigger_conditions: [
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE" # One of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"], # required
    #                 values: ["string1To255"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         logical_operator: "ANY" # One of: ["ANY", "ALL", "NONE"], # required
    #       }
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS" # One of: ["HOURS", "DAYS", "WEEKS", "MONTHS"], # required
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false
    #         }
    #       ]
    #     },
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateEventTriggerResponse]
    def update_event_trigger(params = {}, options = {})
      request = build_request(:update_event_trigger, params)
      request.send_request(options)
    end

    # <p>Updates the properties of a profile. The ProfileId is required for updating a customer
    #          profile.</p>
    #          <p>When calling the UpdateProfile API, specifying an empty string value means that any
    #          existing value will be removed. Not specifying a string value means that any value already
    #          there will be kept.</p>
    # @param [Hash, Types::UpdateProfileRequest] params
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    # @option params [String] :additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    # @option params [String] :account_number
    #   <p>An account number that you have assigned to the customer.</p>
    # @option params [String] :party_type
    #   <p>The type of profile used to describe the customer.</p>
    # @option params [String] :business_name
    #   <p>The name of the customer’s business.</p>
    # @option params [String] :first_name
    #   <p>The customer’s first name.</p>
    # @option params [String] :middle_name
    #   <p>The customer’s middle name.</p>
    # @option params [String] :last_name
    #   <p>The customer’s last name.</p>
    # @option params [String] :birth_date
    #   <p>The customer’s birth date. </p>
    # @option params [String] :gender
    #   <p>The gender with which the customer identifies. </p>
    # @option params [String] :phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    # @option params [String] :mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    # @option params [String] :home_phone_number
    #   <p>The customer’s home phone number.</p>
    # @option params [String] :business_phone_number
    #   <p>The customer’s business phone number.</p>
    # @option params [String] :email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    # @option params [String] :personal_email_address
    #   <p>The customer’s personal email address.</p>
    # @option params [String] :business_email_address
    #   <p>The customer’s business email address.</p>
    # @option params [Types::UpdateAddress] :address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    # @option params [Types::UpdateAddress] :shipping_address
    #   <p>The customer’s shipping address.</p>
    # @option params [Types::UpdateAddress] :mailing_address
    #   <p>The customer’s mailing address.</p>
    # @option params [Types::UpdateAddress] :billing_address
    #   <p>The customer’s billing address.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    # @option params [String] :party_type_string
    #   <p>An alternative to <code>PartyType</code> which accepts any string as input.</p>
    # @option params [String] :gender_string
    #   <p>An alternative to <code>Gender</code> which accepts any string as input.</p>
    # @option params [String] :profile_type
    #   <p>Determines the type of the profile.</p>
    # @option params [Types::EngagementPreferences] :engagement_preferences
    #   <p>Object that defines users preferred methods of engagement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     additional_information: "sensitiveString0To1000",
    #     account_number: "sensitiveString0To255",
    #     party_type: "INDIVIDUAL" # One of: ["INDIVIDUAL", "BUSINESS", "OTHER"],
    #     business_name: "sensitiveString0To255",
    #     first_name: "sensitiveString0To255",
    #     middle_name: "sensitiveString0To255",
    #     last_name: "sensitiveString0To255",
    #     birth_date: "sensitiveString0To255",
    #     gender: "MALE" # One of: ["MALE", "FEMALE", "UNSPECIFIED"],
    #     phone_number: "sensitiveString0To255",
    #     mobile_phone_number: "sensitiveString0To255",
    #     home_phone_number: "sensitiveString0To255",
    #     business_phone_number: "sensitiveString0To255",
    #     email_address: "sensitiveString0To255",
    #     personal_email_address: "sensitiveString0To255",
    #     business_email_address: "sensitiveString0To255",
    #     address: {
    #       address1: "string0To255",
    #       address2: "string0To255",
    #       address3: "string0To255",
    #       address4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255"
    #     },
    #     shipping_address: {
    #       address1: "string0To255",
    #       address2: "string0To255",
    #       address3: "string0To255",
    #       address4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255"
    #     },
    #     mailing_address: {
    #       address1: "string0To255",
    #       address2: "string0To255",
    #       address3: "string0To255",
    #       address4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255"
    #     },
    #     billing_address: {
    #       address1: "string0To255",
    #       address2: "string0To255",
    #       address3: "string0To255",
    #       address4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255"
    #     },
    #     attributes: {
    #       "string1To255" => "string0To255"
    #     },
    #     party_type_string: "sensitiveString0To255",
    #     gender_string: "sensitiveString0To255",
    #     profile_type: "ACCOUNT_PROFILE" # One of: ["ACCOUNT_PROFILE", "PROFILE"],
    #     engagement_preferences: {
    #       phone: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #         }
    #       ],
    #       email: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber" # One of: ["PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "uuid", # required
    #   }
    # @return [Types::UpdateProfileResponse]
    def update_profile(params = {}, options = {})
      request = build_request(:update_profile, params)
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
      context[:gem_name] = 'aws-sdk-customerprofiles'
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
