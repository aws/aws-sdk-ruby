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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:datazone)

module Aws::DataZone
  # An API client for Aws::DataZone.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DataZone
    @identifier = :datazone

    add_plugin(::Aws::DataZone::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DataZone::EndpointProvider)
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Accepts automatically generated business-friendly metadata for your Amazon DataZone assets.</p>
    # @param [Hash, Types::AcceptPredictionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the asset.</p>
    # @option params [String] :revision
    #   <p>The revision that is to be made to the asset.</p>
    # @option params [Types::AcceptRule] :accept_rule
    #   <p>Specifies the rule (or the conditions) under which a prediction can be accepted.</p>
    # @option params [Array<Types::AcceptChoice>] :accept_choices
    #   <p>Specifies the prediction (aka, the automatically generated piece of metadata) and the target (for example, a column name) that can be accepted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is automatically populated if not provided.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #     accept_rule: {
    #       rule: "ALL" # One of: ["ALL", "NONE"],
    #       threshold: 1.0
    #     },
    #     accept_choices: [
    #       {
    #         prediction_target: "String", # required
    #         prediction_choice: 1,
    #         edited_value: "EditedValue"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.accept_predictions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     asset_id: "AssetId", # required
    #     revision: "Revision", # required
    #   }
    # @return [Types::AcceptPredictionsOutput]
    def accept_predictions(params = {}, options = {})
      request = build_request(:accept_predictions, params)
      request.send_request(options)
    end

    # <p>Accepts a subscription request to a specific asset. </p>
    # @param [Hash, Types::AcceptSubscriptionRequestInput] params
    # @option params [String] :domain_identifier
    #   <p>The Amazon DataZone domain where the specified subscription request is being accepted.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the subscription request that is to be accepted.</p>
    # @option params [String] :decision_comment
    #   <p>A description that specifies the reason for accepting the specified subscription request.</p>
    # @option params [Array<Types::AcceptedAssetScope>] :asset_scopes
    #   <p>The asset scopes of the accept subscription request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     decision_comment: "DecisionComment",
    #     asset_scopes: [
    #       {
    #         asset_id: "AssetId", # required
    #         filter_ids: ["FilterId"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.accept_subscription_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionRequestId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     request_reason: "RequestReason", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         id: "ListingId", # required
    #         revision: "Revision",
    #         name: "ListingName", # required
    #         description: "Description", # required
    #         item: { # required
    #           # One of:
    #           asset_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             entity_type: "TypeName",
    #             forms: "Forms",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           },
    #           product_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             name: "String",
    #             description: "String",
    #             asset_listings: [
    #               {
    #                 entity_id: "String",
    #                 entity_revision: "String",
    #                 entity_type: "String"
    #               }
    #             ]
    #           }
    #         },
    #         owner_project_id: "ProjectId", # required
    #         owner_project_name: "String"
    #       }
    #     ],
    #     reviewer_id: "String",
    #     decision_comment: "DecisionComment",
    #     existing_subscription_id: "SubscriptionId",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AcceptSubscriptionRequestOutput]
    def accept_subscription_request(params = {}, options = {})
      request = build_request(:accept_subscription_request, params)
      request.send_request(options)
    end

    # <p>Adds the owner of an entity (a domain unit).</p>
    # @param [Hash, Types::AddEntityOwnerInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which you want to add the entity owner.</p>
    # @option params [String] :entity_type
    #   <p>The type of an entity.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity to which you want to add an owner.</p>
    # @option params [Types::OwnerProperties] :owner
    #   <p>The owner that you want to add to the entity.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"], # required
    #     entity_identifier: "String", # required
    #     owner: { # required
    #       # One of:
    #       user: {
    #         user_identifier: "UserIdentifier", # required
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.add_entity_owner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddEntityOwnerOutput]
    def add_entity_owner(params = {}, options = {})
      request = build_request(:add_entity_owner, params)
      request.send_request(options)
    end

    # <p>Adds a policy grant (an authorization policy) to a specified entity, including domain units, environment blueprint configurations, or environment profiles.</p>
    # @param [Hash, Types::AddPolicyGrantInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to add a policy grant.</p>
    # @option params [String] :entity_type
    #   <p>The type of entity (resource) to which the grant is added.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity (resource) to which you want to add a policy grant.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy that you want to grant.</p>
    # @option params [Types::PolicyGrantPrincipal] :principal
    #   <p>The principal to whom the permissions are granted.</p>
    # @option params [Types::PolicyGrantDetail] :detail
    #   <p>The details of the policy grant.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT", "ENVIRONMENT_BLUEPRINT_CONFIGURATION", "ENVIRONMENT_PROFILE", "ASSET_TYPE"], # required
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT" # One of: ["CREATE_DOMAIN_UNIT", "OVERRIDE_DOMAIN_UNIT_OWNERS", "ADD_TO_PROJECT_MEMBER_POOL", "OVERRIDE_PROJECT_OWNERS", "CREATE_GLOSSARY", "CREATE_FORM_TYPE", "CREATE_ASSET_TYPE", "CREATE_PROJECT", "CREATE_ENVIRONMENT_PROFILE", "DELEGATE_CREATE_ENVIRONMENT_PROFILE", "CREATE_ENVIRONMENT", "CREATE_ENVIRONMENT_FROM_BLUEPRINT", "CREATE_PROJECT_FROM_PROJECT_PROFILE", "USE_ASSET_TYPE"], # required
    #     principal: { # required
    #       # One of:
    #       user: {
    #         # One of:
    #         user_identifier: "UserIdentifier",
    #         all_users_grant_filter: {
    #         }
    #       },
    #       group: {
    #         # One of:
    #         group_identifier: "GroupIdentifier"
    #       },
    #       project: {
    #         project_designation: "OWNER" # One of: ["OWNER", "CONTRIBUTOR", "PROJECT_CATALOG_STEWARD"], # required
    #         project_identifier: "ProjectId",
    #         project_grant_filter: {
    #           # One of:
    #           domain_unit_filter: {
    #             domain_unit: "DomainUnitId", # required
    #             include_child_domain_units: false
    #           }
    #         }
    #       },
    #       domain_unit: {
    #         domain_unit_designation: "OWNER" # One of: ["OWNER"], # required
    #         domain_unit_identifier: "DomainUnitId",
    #         domain_unit_grant_filter: {
    #           # One of:
    #           all_domain_units_grant_filter: {
    #           }
    #         }
    #       }
    #     },
    #     detail: { # required
    #       # One of:
    #       create_domain_unit: {
    #         include_child_domain_units: false
    #       },
    #       override_domain_unit_owners: {
    #         include_child_domain_units: false
    #       },
    #       add_to_project_member_pool: {
    #         include_child_domain_units: false
    #       },
    #       override_project_owners: {
    #         include_child_domain_units: false
    #       },
    #       create_glossary: {
    #         include_child_domain_units: false
    #       },
    #       create_form_type: {
    #         include_child_domain_units: false
    #       },
    #       create_asset_type: {
    #         include_child_domain_units: false
    #       },
    #       create_project: {
    #         include_child_domain_units: false
    #       },
    #       create_environment_profile: {
    #         domain_unit_id: "DomainUnitId"
    #       },
    #       delegate_create_environment_profile: {
    #       },
    #       create_environment: {
    #       },
    #       create_environment_from_blueprint: {
    #       },
    #       create_project_from_project_profile: {
    #         include_child_domain_units: false,
    #         project_profiles: ["String"]
    #       },
    #       use_asset_type: {
    #         domain_unit_id: "DomainUnitId"
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.add_policy_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_id: "GrantIdentifier"
    #   }
    # @return [Types::AddPolicyGrantOutput]
    def add_policy_grant(params = {}, options = {})
      request = build_request(:add_policy_grant, params)
      request.send_request(options)
    end

    # <p>Associates the environment role in Amazon DataZone.</p>
    # @param [Hash, Types::AssociateEnvironmentRoleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment role is associated.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the Amazon DataZone environment.</p>
    # @option params [String] :environment_role_arn
    #   <p>The ARN of the environment role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     environment_role_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_environment_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateEnvironmentRoleOutput]
    def associate_environment_role(params = {}, options = {})
      request = build_request(:associate_environment_role, params)
      request.send_request(options)
    end

    # <p>Associates governed terms with an asset.</p>
    # @param [Hash, Types::AssociateGovernedTermsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where governed terms are to be associated with an asset.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset with which you want to associate a governed term.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset with which you want to associate a governed term.</p>
    # @option params [Array<String>] :governed_glossary_terms
    #   <p>The glossary terms in a restricted glossary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET"], # required
    #     governed_glossary_terms: ["GlossaryTermId"], # required
    #   }
    #   options = {}
    #   response = client.associate_governed_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateGovernedTermsOutput]
    def associate_governed_terms(params = {}, options = {})
      request = build_request(:associate_governed_terms, params)
      request.send_request(options)
    end

    # <p>Cancels the metadata generation run.</p> <p>Prerequisites:</p> <ul> <li> <p>The run must exist and be in a cancelable status (e.g., SUBMITTED, IN_PROGRESS). </p> </li> <li> <p>Runs in SUCCEEDED status cannot be cancelled.</p> </li> <li> <p>User must have access to the run and cancel permissions.</p> </li> </ul>
    # @param [Hash, Types::CancelMetadataGenerationRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the metadata generation run is to be cancelled.</p>
    # @option params [String] :identifier
    #   <p>The ID of the metadata generation run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "MetadataGenerationRunIdentifier", # required
    #   }
    #   options = {}
    #   response = client.cancel_metadata_generation_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelMetadataGenerationRunOutput]
    def cancel_metadata_generation_run(params = {}, options = {})
      request = build_request(:cancel_metadata_generation_run, params)
      request.send_request(options)
    end

    # <p>Cancels the subscription to the specified asset.</p>
    # @param [Hash, Types::CancelSubscriptionInput] params
    # @option params [String] :domain_identifier
    #   <p>The unique identifier of the Amazon DataZone domain where the subscription request is being cancelled.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the subscription that is being cancelled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.cancel_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "APPROVED" # One of: ["APPROVED", "REVOKED", "CANCELLED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscribed_principal: { # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     },
    #     subscribed_listing: { # required
    #       id: "ListingId", # required
    #       revision: "Revision",
    #       name: "ListingName", # required
    #       description: "Description", # required
    #       item: { # required
    #         # One of:
    #         asset_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           entity_type: "TypeName",
    #           forms: "Forms",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           asset_scope: {
    #             asset_id: "AssetId", # required
    #             filter_ids: ["FilterId"], # required
    #             status: "String", # required
    #             error_message: "String"
    #           }
    #         },
    #         product_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           name: "String",
    #           description: "String",
    #           asset_listings: [
    #             {
    #               entity_id: "String",
    #               entity_revision: "String",
    #               entity_type: "String"
    #             }
    #           ]
    #         }
    #       },
    #       owner_project_id: "ProjectId", # required
    #       owner_project_name: "String"
    #     },
    #     subscription_request_id: "SubscriptionRequestId",
    #     retain_permissions: false
    #   }
    # @return [Types::CancelSubscriptionOutput]
    def cancel_subscription(params = {}, options = {})
      request = build_request(:cancel_subscription, params)
      request.send_request(options)
    end

    # <p>Creates an account pool. </p>
    # @param [Hash, Types::CreateAccountPoolInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the account pool is created.</p>
    # @option params [String] :name
    #   <p>The name of the account pool.</p>
    # @option params [String] :description
    #   <p>The description of the account pool.</p>
    # @option params [String] :resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    # @option params [Types::AccountSource] :account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a static list of accounts provided by the customer or a custom Amazon Web Services Lambda handler. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "AccountPoolName", # required
    #     description: "Description",
    #     resolution_strategy: "MANUAL" # One of: ["MANUAL"], # required
    #     account_source: { # required
    #       # One of:
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName"
    #         }
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_account_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     name: "AccountPoolName",
    #     id: "AccountPoolId",
    #     description: "Description",
    #     resolution_strategy: "MANUAL" # One of: ["MANUAL"],
    #     account_source: { # required
    #       # One of:
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName"
    #         }
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn"
    #       }
    #     },
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::CreateAccountPoolOutput]
    def create_account_pool(params = {}, options = {})
      request = build_request(:create_account_pool, params)
      request.send_request(options)
    end

    # <p>Creates an asset in Amazon DataZone catalog.</p> <p>Before creating assets, make sure that the following requirements are met:</p> <ul> <li> <p> <code>--domain-identifier</code> must refer to an existing domain.</p> </li> <li> <p> <code>--owning-project-identifier</code> must be a valid project within the domain.</p> </li> <li> <p>Asset type must be created beforehand using <code>create-asset-type</code>, or be a supported system-defined type. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/reference/datazone/create-asset-type.html">create-asset-type</a>.</p> </li> <li> <p> <code>--type-revision</code> (if used) must match a valid revision of the asset type.</p> </li> <li> <p> <code>formsInput</code> is required when it is associated as required in the <code>asset-type</code>. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/reference/datazone/create-form-type.html">create-form-type</a>.</p> </li> <li> <p>Form content must include all required fields as per the form schema (e.g., <code>bucketArn</code>).</p> </li> </ul> <p>You must invoke the following pre-requisite commands before invoking this API:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html">CreateFormType</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateAssetType.html">CreateAssetType</a> </p> </li> </ul>
    # @param [Hash, Types::CreateAssetInput] params
    # @option params [String] :name
    #   <p>Asset name.</p>
    # @option params [String] :domain_identifier
    #   <p>Amazon DataZone domain where the asset is created.</p>
    # @option params [String] :external_identifier
    #   <p>The external identifier of the asset.</p> <p>If the value for the <code>externalIdentifier</code> parameter is specified, it must be a unique value.</p>
    # @option params [String] :type_identifier
    #   <p>The unique identifier of this asset's type.</p>
    # @option params [String] :type_revision
    #   <p>The revision of this asset's type.</p>
    # @option params [String] :description
    #   <p>Asset description.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>Glossary terms attached to the asset.</p>
    # @option params [Array<Types::FormInput>] :forms_input
    #   <p>Metadata forms attached to the asset.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The unique identifier of the project that owns this asset.</p>
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the asset.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AssetName", # required
    #     domain_identifier: "DomainId", # required
    #     external_identifier: "ExternalIdentifier",
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision",
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     owning_project_identifier: "ProjectId", # required
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AssetId", # required
    #     name: "AssetName", # required
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision", # required
    #     external_identifier: "ExternalIdentifier",
    #     revision: "Revision", # required
    #     description: "Description",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy",
    #     glossary_terms: ["GlossaryTermId"],
    #     governed_glossary_terms: ["GlossaryTermId"],
    #     owning_project_id: "ProjectId", # required
    #     domain_id: "DomainId", # required
    #     listing: {
    #       listing_id: "ListingId", # required
    #       listing_status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE"], # required
    #     },
    #     forms_output: [ # required
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     read_only_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     latest_time_series_data_point_forms_output: [
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content_summary: "String",
    #         id: "DataPointIdentifier"
    #       }
    #     ],
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false
    #       }
    #     }
    #   }
    # @return [Types::CreateAssetOutput]
    def create_asset(params = {}, options = {})
      request = build_request(:create_asset, params)
      request.send_request(options)
    end

    # <p>Creates a data asset filter.</p> <p>Asset filters provide a sophisticated way to create controlled views of data assets by selecting specific columns or applying row-level filters. This capability is crucial for organizations that need to share data while maintaining security and privacy controls. For example, your database might be filtered to show only non-PII fields to certain users, or sales data might be filtered by region for different regional teams. Asset filters enable fine-grained access control while maintaining a single source of truth.</p> <p>Prerequisites:</p> <ul> <li> <p>A valid domain (<code>--domain-identifier</code>) must exist. </p> </li> <li> <p>A data asset (<code>--asset-identifier</code>) must already be created under that domain.</p> </li> <li> <p>The asset must have the referenced columns available in its schema for column-based filtering.</p> </li> <li> <p>You cannot specify both (<code>columnConfiguration</code>, <code>rowConfiguration</code>)at the same time.</p> </li> </ul>
    # @param [Hash, Types::CreateAssetFilterInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which you want to create an asset filter.</p>
    # @option params [String] :asset_identifier
    #   <p>The ID of the data asset.</p>
    # @option params [String] :name
    #   <p>The name of the asset filter.</p>
    # @option params [String] :description
    #   <p>The description of the asset filter.</p>
    # @option params [Types::AssetFilterConfiguration] :configuration
    #   <p>The configuration of the asset filter.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     name: "FilterName", # required
    #     description: "Description",
    #     configuration: { # required
    #       # One of:
    #       column_configuration: {
    #         included_column_names: ["String"]
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           # One of:
    #           expression: {
    #             # One of:
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             }
    #           },
    #           and: [{
    #             # recursive RowFilter
    #           }],
    #           or: [{
    #             # recursive RowFilter
    #           }]
    #         },
    #         sensitive: false
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_asset_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FilterId", # required
    #     domain_id: "DomainId", # required
    #     asset_id: "AssetId", # required
    #     name: "FilterName", # required
    #     description: "Description",
    #     status: "VALID" # One of: ["VALID", "INVALID"],
    #     configuration: { # required
    #       # One of:
    #       column_configuration: {
    #         included_column_names: ["String"]
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           # One of:
    #           expression: {
    #             # One of:
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             }
    #           },
    #           and: [{
    #             # recursive RowFilter
    #           }],
    #           or: [{
    #             # recursive RowFilter
    #           }]
    #         },
    #         sensitive: false
    #       }
    #     },
    #     created_at: Time.now,
    #     error_message: "String",
    #     effective_column_names: ["String"],
    #     effective_row_filter: "String"
    #   }
    # @return [Types::CreateAssetFilterOutput]
    def create_asset_filter(params = {}, options = {})
      request = build_request(:create_asset_filter, params)
      request.send_request(options)
    end

    # <p>Creates a revision of the asset.</p> <p>Asset revisions represent new versions of existing assets, capturing changes to either the underlying data or its metadata. They maintain a historical record of how assets evolve over time, who made changes, and when those changes occurred. This versioning capability is crucial for governance and compliance, allowing organizations to track changes, understand their impact, and roll back if necessary.</p> <p>Prerequisites:</p> <ul> <li> <p>Asset must already exist in the domain with identifier. </p> </li> <li> <p> <code>formsInput</code> is required when asset has the form type. <code>typeRevision</code> should be the latest version of form type. </p> </li> <li> <p>The form content must include all required fields (e.g., <code>bucketArn</code> for <code>S3ObjectCollectionForm</code>).</p> </li> <li> <p>The owning project of the original asset must still exist and be active.</p> </li> <li> <p>User must have write access to the project and domain.</p> </li> </ul>
    # @param [Hash, Types::CreateAssetRevisionInput] params
    # @option params [String] :name
    #   <p>Te revised name of the asset.</p>
    # @option params [String] :domain_identifier
    #   <p>The unique identifier of the domain where the asset is being revised.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the asset.</p>
    # @option params [String] :type_revision
    #   <p>The revision type of the asset.</p>
    # @option params [String] :description
    #   <p>The revised description of the asset.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms to be attached to the asset as part of asset revision.</p>
    # @option params [Array<Types::FormInput>] :forms_input
    #   <p>The metadata forms to be attached to the asset as part of asset revision.</p>
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   <p>The configuration of the automatically generated business-friendly metadata for the asset.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AssetName", # required
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     type_revision: "Revision",
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_asset_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AssetId", # required
    #     name: "AssetName", # required
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision", # required
    #     external_identifier: "ExternalIdentifier",
    #     revision: "Revision", # required
    #     description: "Description",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy",
    #     glossary_terms: ["GlossaryTermId"],
    #     governed_glossary_terms: ["GlossaryTermId"],
    #     owning_project_id: "ProjectId", # required
    #     domain_id: "DomainId", # required
    #     listing: {
    #       listing_id: "ListingId", # required
    #       listing_status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE"], # required
    #     },
    #     forms_output: [ # required
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     read_only_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     latest_time_series_data_point_forms_output: [
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content_summary: "String",
    #         id: "DataPointIdentifier"
    #       }
    #     ],
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false
    #       }
    #     }
    #   }
    # @return [Types::CreateAssetRevisionOutput]
    def create_asset_revision(params = {}, options = {})
      request = build_request(:create_asset_revision, params)
      request.send_request(options)
    end

    # <p>Creates a custom asset type.</p> <p>Prerequisites:</p> <ul> <li> <p>The <code>formsInput</code> field is required, however, can be passed as empty (e.g. <code>-forms-input {})</code>. </p> </li> <li> <p>You must have <code>CreateAssetType</code> permissions.</p> </li> <li> <p>The domain-identifier and owning-project-identifier must be valid and active.</p> </li> <li> <p>The name of the asset type must be unique within the domain — duplicate names will cause failure.</p> </li> <li> <p>JSON input must be valid — incorrect formatting causes Invalid JSON errors.</p> </li> </ul>
    # @param [Hash, Types::CreateAssetTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The unique identifier of the Amazon DataZone domain where the custom asset type is being created.</p>
    # @option params [String] :name
    #   <p>The name of the custom asset type.</p>
    # @option params [String] :description
    #   <p>The descripton of the custom asset type.</p>
    # @option params [Hash<String, Types::FormEntryInput>] :forms_input
    #   <p>The metadata forms that are to be attached to the custom asset type.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The identifier of the Amazon DataZone project that is to own the custom asset type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "TypeName", # required
    #     description: "Description",
    #     forms_input: { # required
    #       "FormName" => {
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision", # required
    #         required: false
    #       }
    #     },
    #     owning_project_identifier: "ProjectId", # required
    #   }
    #   options = {}
    #   response = client.create_asset_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     name: "TypeName", # required
    #     revision: "Revision", # required
    #     description: "Description",
    #     forms_output: { # required
    #       "FormName" => {
    #         type_name: "FormTypeName", # required
    #         type_revision: "Revision", # required
    #         required: false
    #       }
    #     },
    #     owning_project_id: "ProjectId",
    #     origin_domain_id: "DomainId",
    #     origin_project_id: "ProjectId",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::CreateAssetTypeOutput]
    def create_asset_type(params = {}, options = {})
      request = build_request(:create_asset_type, params)
      request.send_request(options)
    end

    # <p>Creates a new connection. In Amazon DataZone, a connection enables you to connect your resources (domains, projects, and environments) to external resources and services.</p>
    # @param [Hash, Types::CreateConnectionInput] params
    # @option params [Types::AwsLocation] :aws_location
    #   <p>The location where the connection is created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>A connection description.</p>
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the connection is created.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment where the connection is created.</p>
    # @option params [String] :name
    #   <p>The connection name.</p>
    # @option params [Types::ConnectionPropertiesInput] :props
    #   <p>The connection props.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aws_location: {
    #       access_role: "String",
    #       aws_account_id: "AwsAccountId",
    #       aws_region: "AwsRegion",
    #       iam_connection_id: "ConnectionId"
    #     },
    #     client_token: "String",
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     name: "ConnectionName", # required
    #     props: {
    #       # One of:
    #       athena_properties: {
    #         workgroup_name: "String"
    #       },
    #       glue_properties: {
    #         glue_connection_input: {
    #           connection_properties: {
    #             "String" => "String"
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "SubnetId",
    #             subnet_id_list: ["SubnetId"],
    #             security_group_id_list: ["String"],
    #             availability_zone: "String"
    #           },
    #           name: "String",
    #           description: "String",
    #           connection_type: "SNOWFLAKE" # One of: ["SNOWFLAKE", "BIGQUERY", "DOCUMENTDB", "DYNAMODB", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "SAPHANA", "SQLSERVER", "TERADATA", "VERTICA"],
    #           match_criteria: "String",
    #           validate_credentials: false,
    #           validate_for_compute_environments: ["SPARK" # One of: ["SPARK", "ATHENA", "PYTHON"]],
    #           spark_properties: {
    #             "String" => "String"
    #           },
    #           athena_properties: {
    #             "String" => "String"
    #           },
    #           python_properties: {
    #             "String" => "String"
    #           },
    #           authentication_configuration: {
    #             authentication_type: "BASIC" # One of: ["BASIC", "OAUTH2", "CUSTOM"],
    #             o_auth2_properties: {
    #               o_auth2_grant_type: "AUTHORIZATION_CODE" # One of: ["AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"],
    #               o_auth2_client_application: {
    #                 user_managed_client_application_client_id: "String",
    #                 a_ws_managed_client_application_reference: "String"
    #               },
    #               token_url: "String",
    #               token_url_parameters_map: {
    #                 "String" => "String"
    #               },
    #               authorization_code_properties: {
    #                 authorization_code: "String",
    #                 redirect_uri: "String"
    #               },
    #               o_auth2_credentials: {
    #                 user_managed_client_application_client_secret: "String",
    #                 access_token: "String",
    #                 refresh_token: "String",
    #                 jwt_token: "String"
    #               }
    #             },
    #             secret_arn: "String",
    #             kms_key_arn: "String",
    #             basic_authentication_credentials: {
    #               user_name: "String",
    #               password: "String"
    #             },
    #             custom_authentication_credentials: {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       },
    #       hyper_pod_properties: {
    #         cluster_name: "String", # required
    #       },
    #       iam_properties: {
    #         glue_lineage_sync_enabled: false
    #       },
    #       redshift_properties: {
    #         storage: {
    #           # One of:
    #           cluster_name: "String",
    #           workgroup_name: "String"
    #         },
    #         database_name: "String",
    #         host: "String",
    #         port: 1,
    #         credentials: {
    #           # One of:
    #           secret_arn: "String",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           }
    #         },
    #         lineage_sync: {
    #           enabled: false,
    #           schedule: {
    #             schedule: "String"
    #           }
    #         }
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "String",
    #         instance_profile_arn: "String",
    #         java_virtual_env: "String",
    #         log_uri: "String",
    #         python_virtual_env: "String",
    #         runtime_role: "String",
    #         trusted_certificates_s3_uri: "String",
    #         managed_endpoint_arn: "String"
    #       },
    #       spark_glue_properties: {
    #         additional_args: {
    #           connection: "String"
    #         },
    #         glue_connection_name: "String",
    #         glue_version: "String",
    #         idle_timeout: 1,
    #         java_virtual_env: "String",
    #         number_of_workers: 1,
    #         python_virtual_env: "String",
    #         worker_type: "String"
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     domain_unit_id: "DomainUnitId", # required
    #     environment_id: "EnvironmentId",
    #     name: "ConnectionName", # required
    #     physical_endpoints: [ # required
    #       {
    #         aws_location: {
    #           access_role: "String",
    #           aws_account_id: "AwsAccountId",
    #           aws_region: "AwsRegion",
    #           iam_connection_id: "ConnectionId"
    #         },
    #         glue_connection_name: "String",
    #         glue_connection: {
    #           name: "String",
    #           description: "String",
    #           connection_type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"],
    #           match_criteria: ["String"],
    #           connection_properties: {
    #             "String" => "String"
    #           },
    #           spark_properties: {
    #             "String" => "String"
    #           },
    #           athena_properties: {
    #             "String" => "String"
    #           },
    #           python_properties: {
    #             "String" => "String"
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "SubnetId",
    #             subnet_id_list: ["SubnetId"],
    #             security_group_id_list: ["String"],
    #             availability_zone: "String"
    #           },
    #           creation_time: Time.now,
    #           last_updated_time: Time.now,
    #           last_updated_by: "String",
    #           status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #           status_reason: "String",
    #           last_connection_validation_time: Time.now,
    #           authentication_configuration: {
    #             authentication_type: "BASIC" # One of: ["BASIC", "OAUTH2", "CUSTOM"],
    #             secret_arn: "String",
    #             o_auth2_properties: {
    #               o_auth2_grant_type: "AUTHORIZATION_CODE" # One of: ["AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"],
    #               o_auth2_client_application: {
    #                 user_managed_client_application_client_id: "String",
    #                 a_ws_managed_client_application_reference: "String"
    #               },
    #               token_url: "String",
    #               token_url_parameters_map: {
    #                 "String" => "String"
    #               },
    #               authorization_code_properties: {
    #                 authorization_code: "String",
    #                 redirect_uri: "String"
    #               },
    #               o_auth2_credentials: {
    #                 user_managed_client_application_client_secret: "String",
    #                 access_token: "String",
    #                 refresh_token: "String",
    #                 jwt_token: "String"
    #               }
    #             }
    #           },
    #           connection_schema_version: 1,
    #           compatible_compute_environments: ["SPARK" # One of: ["SPARK", "ATHENA", "PYTHON"]]
    #         },
    #         host: "String",
    #         port: 1,
    #         protocol: "ATHENA" # One of: ["ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"],
    #         stage: "String"
    #       }
    #     ],
    #     project_id: "ProjectId",
    #     props: {
    #       # One of:
    #       athena_properties: {
    #         workgroup_name: "String"
    #       },
    #       glue_properties: {
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       },
    #       hyper_pod_properties: {
    #         cluster_name: "String", # required
    #         cluster_arn: "String",
    #         orchestrator: "EKS" # One of: ["EKS", "SLURM"]
    #       },
    #       iam_properties: {
    #         environment_id: "String",
    #         glue_lineage_sync_enabled: false
    #       },
    #       redshift_properties: {
    #         storage: {
    #           # One of:
    #           cluster_name: "String",
    #           workgroup_name: "String"
    #         },
    #         credentials: {
    #           # One of:
    #           secret_arn: "String",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           }
    #         },
    #         is_provisioned_secret: false,
    #         jdbc_iam_url: "String",
    #         jdbc_url: "String",
    #         redshift_temp_dir: "String",
    #         lineage_sync: {
    #           lineage_job_id: "String",
    #           enabled: false,
    #           schedule: {
    #             schedule: "String"
    #           }
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         database_name: "String"
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "String",
    #         credentials: {
    #           password: "Password", # required
    #           username: "Username", # required
    #         },
    #         credentials_expiration: Time.now,
    #         governance_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "USER_MANAGED"],
    #         instance_profile_arn: "String",
    #         java_virtual_env: "String",
    #         livy_endpoint: "String",
    #         log_uri: "String",
    #         python_virtual_env: "String",
    #         runtime_role: "String",
    #         trusted_certificates_s3_uri: "String",
    #         certificate_data: "String",
    #         managed_endpoint_arn: "String",
    #         managed_endpoint_credentials: {
    #           id: "String",
    #           token: "String"
    #         }
    #       },
    #       spark_glue_properties: {
    #         additional_args: {
    #           connection: "String"
    #         },
    #         glue_connection_name: "String",
    #         glue_version: "String",
    #         idle_timeout: 1,
    #         java_virtual_env: "String",
    #         number_of_workers: 1,
    #         python_virtual_env: "String",
    #         worker_type: "String"
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       }
    #     },
    #     type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"], # required
    #   }
    # @return [Types::CreateConnectionOutput]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Creates a data product.</p> <p>A data product is a comprehensive package that combines data assets with their associated metadata, documentation, and access controls. It's designed to serve specific business needs or use cases, making it easier for users to find and consume data appropriately. Data products include important information about data quality, freshness, and usage guidelines, effectively bridging the gap between data producers and consumers while ensuring proper governance.</p> <p>Prerequisites:</p> <ul> <li> <p>The domain must exist and be accessible. </p> </li> <li> <p>The owning project must be valid and active.</p> </li> <li> <p>The name must be unique within the domain (no existing data product with the same name).</p> </li> <li> <p>User must have create permissions for data products in the project.</p> </li> </ul>
    # @param [Hash, Types::CreateDataProductInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the data product is created.</p>
    # @option params [String] :name
    #   <p>The name of the data product.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The ID of the owning project of the data product.</p>
    # @option params [String] :description
    #   <p>The description of the data product.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms of the data product.</p>
    # @option params [Array<Types::FormInput>] :forms_input
    #   <p>The metadata forms of the data product.</p>
    # @option params [Array<Types::DataProductItem>] :items
    #   <p>The data assets of the data product.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "DataProductName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     items: [
    #       {
    #         item_type: "ASSET" # One of: ["ASSET"], # required
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"]
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_data_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "DataProductId", # required
    #     revision: "Revision", # required
    #     owning_project_id: "ProjectId", # required
    #     name: "DataProductName", # required
    #     status: "CREATED" # One of: ["CREATED", "CREATING", "CREATE_FAILED"], # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     items: [
    #       {
    #         item_type: "ASSET" # One of: ["ASSET"], # required
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"]
    #       }
    #     ],
    #     forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy"
    #   }
    # @return [Types::CreateDataProductOutput]
    def create_data_product(params = {}, options = {})
      request = build_request(:create_data_product, params)
      request.send_request(options)
    end

    # <p>Creates a data product revision.</p> <p>Prerequisites:</p> <ul> <li> <p>The original data product must exist in the given domain. </p> </li> <li> <p>User must have permissions on the data product.</p> </li> <li> <p>The domain must be valid and accessible.</p> </li> <li> <p>The new revision name must comply with naming constraints (if required).</p> </li> </ul>
    # @param [Hash, Types::CreateDataProductRevisionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the data product revision is created.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data product revision.</p>
    # @option params [String] :name
    #   <p>The name of the data product revision.</p>
    # @option params [String] :description
    #   <p>The description of the data product revision.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms of the data product revision.</p>
    # @option params [Array<Types::DataProductItem>] :items
    #   <p>The data assets of the data product revision.</p>
    # @option params [Array<Types::FormInput>] :forms_input
    #   <p>The metadata forms of the data product revision.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     name: "DataProductName", # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     items: [
    #       {
    #         item_type: "ASSET" # One of: ["ASSET"], # required
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"]
    #       }
    #     ],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_data_product_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "DataProductId", # required
    #     revision: "Revision", # required
    #     owning_project_id: "ProjectId", # required
    #     name: "DataProductName", # required
    #     status: "CREATED" # One of: ["CREATED", "CREATING", "CREATE_FAILED"], # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     items: [
    #       {
    #         item_type: "ASSET" # One of: ["ASSET"], # required
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"]
    #       }
    #     ],
    #     forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy"
    #   }
    # @return [Types::CreateDataProductRevisionOutput]
    def create_data_product_revision(params = {}, options = {})
      request = build_request(:create_data_product_revision, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DataZone data source.</p>
    # @param [Hash, Types::CreateDataSourceInput] params
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    # @option params [String] :description
    #   <p>The description of the data source.</p>
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the data source is created.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the Amazon DataZone project in which you want to add this data source.</p>
    # @option params [String] :environment_identifier
    #   <p>The unique identifier of the Amazon DataZone environment to which the data source publishes assets. </p>
    # @option params [String] :connection_identifier
    #   <p>The ID of the connection.</p>
    # @option params [String] :type
    #   <p>The type of the data source. In Amazon DataZone, you can use data sources to import technical metadata of assets (data) from the source databases or data warehouses into Amazon DataZone. In the current release of Amazon DataZone, you can create and run data sources for Amazon Web Services Glue and Amazon Redshift.</p>
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   <p>Specifies the configuration of the data source. It can be set to either <code>glueRunConfiguration</code> or <code>redshiftRunConfiguration</code>.</p>
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   <p>Specifies whether the business name generation is to be enabled for this data source.</p>
    # @option params [String] :enable_setting
    #   <p>Specifies whether the data source is enabled.</p>
    # @option params [Types::ScheduleConfiguration] :schedule
    #   <p>The schedule of the data source runs.</p>
    # @option params [Boolean] :publish_on_import
    #   <p>Specifies whether the assets that this data source creates in the inventory are to be also automatically published to the catalog.</p>
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   <p>The metadata forms that are to be attached to the assets that this data source works with.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "String", # required
    #     environment_identifier: "String",
    #     connection_identifier: "String",
    #     type: "DataSourceType", # required
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: {
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false
    #     },
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     publish_on_import: false,
    #     asset_forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId", # required
    #     status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"],
    #     type: "DataSourceType",
    #     name: "Name", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId",
    #     connection_id: "String",
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: { # required
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false
    #     },
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     publish_on_import: false,
    #     asset_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     last_run_status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #     last_run_at: Time.now,
    #     last_run_error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateDataSourceOutput]
    def create_data_source(params = {}, options = {})
      request = build_request(:create_data_source, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DataZone domain.</p>
    # @param [Hash, Types::CreateDomainInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon DataZone domain.</p>
    # @option params [String] :description
    #   <p>The description of the Amazon DataZone domain.</p>
    # @option params [Types::SingleSignOn] :single_sign_on
    #   <p>The single-sign on configuration of the Amazon DataZone domain.</p>
    # @option params [String] :domain_execution_role
    #   <p>The domain execution role that is created when an Amazon DataZone domain is created. The domain execution role is created in the Amazon Web Services account that houses the Amazon DataZone domain.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the Amazon Web Services Key Management Service (KMS) key that is used to encrypt the Amazon DataZone domain, metadata, and reporting data. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags specified for the Amazon DataZone domain.</p>
    # @option params [String] :domain_version
    #   <p>The version of the domain that is created.</p>
    # @option params [String] :service_role
    #   <p>The service role of the domain that is created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC" # One of: ["IAM_IDC", "DISABLED"],
    #       user_assignment: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       idc_instance_arn: "String"
    #     },
    #     domain_execution_role: "RoleArn", # required
    #     kms_key_identifier: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     domain_version: "V1" # One of: ["V1", "V2"],
    #     service_role: "RoleArn",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainId", # required
    #     root_domain_unit_id: "DomainUnitId",
    #     name: "String",
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC" # One of: ["IAM_IDC", "DISABLED"],
    #       user_assignment: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       idc_instance_arn: "String"
    #     },
    #     domain_execution_role: "RoleArn",
    #     arn: "String",
    #     kms_key_identifier: "KmsKeyArn",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"],
    #     portal_url: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     domain_version: "V1" # One of: ["V1", "V2"],
    #     service_role: "RoleArn"
    #   }
    # @return [Types::CreateDomainOutput]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates a domain unit in Amazon DataZone.</p>
    # @param [Hash, Types::CreateDomainUnitInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to crate a domain unit.</p>
    # @option params [String] :name
    #   <p>The name of the domain unit.</p>
    # @option params [String] :parent_domain_unit_identifier
    #   <p>The ID of the parent domain unit.</p>
    # @option params [String] :description
    #   <p>The description of the domain unit.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "DomainUnitName", # required
    #     parent_domain_unit_identifier: "DomainUnitId", # required
    #     description: "DomainUnitDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_domain_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainUnitId", # required
    #     domain_id: "DomainId", # required
    #     name: "DomainUnitName", # required
    #     parent_domain_unit_id: "DomainUnitId",
    #     description: "DomainUnitDescription",
    #     owners: [{ # required
    #       # One of:
    #       user: {
    #         user_id: "String"
    #       },
    #       group: {
    #         group_id: "String"
    #       }
    #     }],
    #     ancestor_domain_unit_ids: ["DomainUnitId"], # required
    #     created_at: Time.now,
    #     created_by: "CreatedBy"
    #   }
    # @return [Types::CreateDomainUnitOutput]
    def create_domain_unit(params = {}, options = {})
      request = build_request(:create_domain_unit, params)
      request.send_request(options)
    end

    # <p>Create an Amazon DataZone environment.</p>
    # @param [Hash, Types::CreateEnvironmentInput] params
    # @option params [String] :project_identifier
    #   <p>The identifier of the Amazon DataZone project in which this environment is created.</p>
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the environment is created.</p>
    # @option params [String] :description
    #   <p>The description of the Amazon DataZone environment.</p>
    # @option params [String] :name
    #   <p>The name of the Amazon DataZone environment.</p>
    # @option params [String] :environment_profile_identifier
    #   <p>The identifier of the environment profile that is used to create this Amazon DataZone environment.</p>
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   <p>The user parameters of this Amazon DataZone environment.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms that can be used in this Amazon DataZone environment.</p>
    # @option params [String] :environment_account_identifier
    #   <p>The ID of the account in which the environment is being created.</p>
    # @option params [String] :environment_account_region
    #   <p>The region of the account in which the environment is being created.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The ID of the blueprint with which the environment is being created.</p>
    # @option params [Integer] :deployment_order
    #   <p>The deployment order of the environment.</p>
    # @option params [String] :environment_configuration_id
    #   <p>The configuration ID of the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_identifier: "ProjectId", # required
    #     domain_identifier: "DomainId", # required
    #     description: "String",
    #     name: "String", # required
    #     environment_profile_identifier: "EnvironmentProfileId",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     environment_account_identifier: "String",
    #     environment_account_region: "String",
    #     environment_blueprint_identifier: "String",
    #     deployment_order: 1,
    #     environment_configuration_id: "String"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_id: "ProjectId", # required
    #     id: "EnvironmentId",
    #     domain_id: "DomainId", # required
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     environment_profile_id: "EnvironmentProfileId",
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     provider: "String", # required
    #     provisioned_resources: [
    #       {
    #         provider: "String",
    #         name: "String",
    #         value: "String", # required
    #         type: "String", # required
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"],
    #     environment_actions: [
    #       {
    #         type: "String", # required
    #         auth: "IAM" # One of: ["IAM", "HTTPS"],
    #         parameters: [ # required
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     last_deployment: {
    #       deployment_id: "String",
    #       deployment_type: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"],
    #       deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"],
    #       failure_reason: {
    #         code: "String",
    #         message: "String", # required
    #       },
    #       messages: ["DeploymentMessage"],
    #       is_deployment_complete: false
    #     },
    #     provisioning_properties: {
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     environment_blueprint_id: "EnvironmentBlueprintId",
    #     environment_configuration_id: "EnvironmentConfigurationId"
    #   }
    # @return [Types::CreateEnvironmentOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Creates an action for the environment, for example, creates a console link for an analytics tool that is available in this environment.</p>
    # @param [Hash, Types::CreateEnvironmentActionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment action is created.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the environment action is created.</p>
    # @option params [String] :name
    #   <p>The name of the environment action.</p>
    # @option params [Types::ActionParameters] :parameters
    #   <p>The parameters of the environment action.</p>
    # @option params [String] :description
    #   <p>The description of the environment action that is being created in the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     name: "String", # required
    #     parameters: { # required
    #       # One of:
    #       aws_console_link: {
    #         uri: "String"
    #       }
    #     },
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.create_environment_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     environment_id: "EnvironmentId", # required
    #     id: "EnvironmentActionId", # required
    #     name: "String", # required
    #     parameters: { # required
    #       # One of:
    #       aws_console_link: {
    #         uri: "String"
    #       }
    #     },
    #     description: "String"
    #   }
    # @return [Types::CreateEnvironmentActionOutput]
    def create_environment_action(params = {}, options = {})
      request = build_request(:create_environment_action, params)
      request.send_request(options)
    end

    # <p>Creates a Amazon DataZone blueprint.</p>
    # @param [Hash, Types::CreateEnvironmentBlueprintInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain in which this blueprint is created.</p>
    # @option params [String] :name
    #   <p>The name of this Amazon DataZone blueprint.</p>
    # @option params [String] :description
    #   <p>The description of the Amazon DataZone blueprint.</p>
    # @option params [Types::ProvisioningProperties] :provisioning_properties
    #   <p>The provisioning properties of this Amazon DataZone blueprint.</p>
    # @option params [Array<Types::CustomParameter>] :user_parameters
    #   <p>The user parameters of this Amazon DataZone blueprint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "EnvironmentBlueprintName", # required
    #     description: "Description",
    #     provisioning_properties: { # required
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_environment_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentBlueprintId", # required
    #     name: "EnvironmentBlueprintName", # required
    #     description: "Description",
    #     provider: "String", # required
    #     provisioning_properties: { # required
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::CreateEnvironmentBlueprintOutput]
    def create_environment_blueprint(params = {}, options = {})
      request = build_request(:create_environment_blueprint, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DataZone environment profile.</p>
    # @param [Hash, Types::CreateEnvironmentProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment profile is created.</p>
    # @option params [String] :name
    #   <p>The name of this Amazon DataZone environment profile.</p>
    # @option params [String] :description
    #   <p>The description of this Amazon DataZone environment profile.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The ID of the blueprint with which this environment profile is created.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the project in which to create the environment profile.</p>
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   <p>The user parameters of this Amazon DataZone environment profile.</p>
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account in which the Amazon DataZone environment is created.</p>
    # @option params [String] :aws_account_region
    #   <p>The Amazon Web Services region in which this environment profile is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "EnvironmentProfileName", # required
    #     description: "Description",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     project_identifier: "ProjectId", # required
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion"
    #   }
    #   options = {}
    #   response = client.create_environment_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentProfileId", # required
    #     domain_id: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentProfileName", # required
    #     description: "Description",
    #     environment_blueprint_id: "EnvironmentBlueprintId", # required
    #     project_id: "ProjectId",
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ]
    #   }
    # @return [Types::CreateEnvironmentProfileOutput]
    def create_environment_profile(params = {}, options = {})
      request = build_request(:create_environment_profile, params)
      request.send_request(options)
    end

    # <p>Creates a metadata form type.</p> <p>Prerequisites:</p> <ul> <li> <p>The domain must exist and be in an <code>ENABLED</code> state. </p> </li> <li> <p>The owning project must exist and be accessible.</p> </li> <li> <p>The name must be unique within the domain.</p> </li> </ul> <p>For custom form types, to indicate that a field should be searchable, annotate it with <code>@amazon.datazone#searchable</code>. By default, searchable fields are indexed for semantic search, where related query terms will match the attribute value even if they are not stemmed or keyword matches. To indicate that a field should be indexed for lexical search (which disables semantic search but supports stemmed and partial matches), annotate it with <code>@amazon.datazone#searchable(modes:["LEXICAL"])</code>. To indicate that a field should be indexed for technical identifier search (for more information on technical identifier search, see: <a href="https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/">https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/</a>), annotate it with <code>@amazon.datazone#searchable(modes:["TECHNICAL"])</code>.</p> <p>To denote that a field will store glossary term ids (which are filterable via the Search/SearchListings APIs), annotate it with <code>@amazon.datazone#glossaryterm("${GLOSSARY_ID}")</code>, where <code>${GLOSSARY_ID}</code> is the id of the glossary that the glossary terms stored in the field belong to. </p>
    # @param [Hash, Types::CreateFormTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type is created.</p>
    # @option params [String] :name
    #   <p>The name of this Amazon DataZone metadata form type.</p>
    # @option params [Types::Model] :model
    #   <p>The model of this Amazon DataZone metadata form type.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The ID of the Amazon DataZone project that owns this metadata form type.</p>
    # @option params [String] :status
    #   <p>The status of this Amazon DataZone metadata form type.</p>
    # @option params [String] :description
    #   <p>The description of this Amazon DataZone metadata form type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "FormTypeName", # required
    #     model: { # required
    #       # One of:
    #       smithy: "Smithy"
    #     },
    #     owning_project_identifier: "ProjectId", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.create_form_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     name: "FormTypeName", # required
    #     revision: "Revision", # required
    #     description: "Description",
    #     owning_project_id: "ProjectId",
    #     origin_domain_id: "DomainId",
    #     origin_project_id: "ProjectId"
    #   }
    # @return [Types::CreateFormTypeOutput]
    def create_form_type(params = {}, options = {})
      request = build_request(:create_form_type, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DataZone business glossary.</p> <p>Specifies that this is a create glossary policy.</p> <p>A glossary serves as the central repository for business terminology and definitions within an organization. It helps establish and maintain a common language across different departments and teams, reducing miscommunication and ensuring consistent interpretation of business concepts. Glossaries can include hierarchical relationships between terms, cross-references, and links to actual data assets, making them invaluable for both business users and technical teams trying to understand and use data correctly.</p> <p>Prerequisites:</p> <ul> <li> <p>Domain must exist and be in an active state. </p> </li> <li> <p>Owning project must exist and be accessible by the caller.</p> </li> <li> <p>The glossary name must be unique within the domain.</p> </li> </ul>
    # @param [Hash, Types::CreateGlossaryInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary is created.</p>
    # @option params [String] :name
    #   <p>The name of this business glossary.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The ID of the project that currently owns business glossary.</p>
    # @option params [String] :description
    #   <p>The description of this business glossary.</p>
    # @option params [String] :status
    #   <p>The status of this business glossary.</p>
    # @option params [Array<String>] :usage_restrictions
    #   <p>The usage restriction of the restricted glossary.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "GlossaryName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     description: "GlossaryDescription",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_glossary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "GlossaryId", # required
    #     name: "GlossaryName", # required
    #     owning_project_id: "ProjectId", # required
    #     description: "GlossaryDescription",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::CreateGlossaryOutput]
    def create_glossary(params = {}, options = {})
      request = build_request(:create_glossary, params)
      request.send_request(options)
    end

    # <p>Creates a business glossary term.</p> <p>A glossary term represents an individual entry within the Amazon DataZone glossary, serving as a standardized definition for a specific business concept or data element. Each term can include rich metadata such as detailed definitions, synonyms, related terms, and usage examples. Glossary terms can be linked directly to data assets, providing business context to technical data elements. This linking capability helps users understand the business meaning of data fields and ensures consistent interpretation across different systems and teams. Terms can also have relationships with other terms, creating a semantic network that reflects the complexity of business concepts.</p> <p>Prerequisites:</p> <ul> <li> <p>Domain must exist. </p> </li> <li> <p>Glossary must exist.</p> </li> <li> <p>The term name must be unique within the glossary.</p> </li> <li> <p>Ensure term does not conflict with existing terms in hierarchy.</p> </li> </ul>
    # @param [Hash, Types::CreateGlossaryTermInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term is created.</p>
    # @option params [String] :glossary_identifier
    #   <p>The ID of the business glossary in which this term is created.</p>
    # @option params [String] :name
    #   <p>The name of this business glossary term.</p>
    # @option params [String] :status
    #   <p>The status of this business glossary term.</p>
    # @option params [String] :short_description
    #   <p>The short description of this business glossary term.</p>
    # @option params [String] :long_description
    #   <p>The long description of this business glossary term.</p>
    # @option params [Types::TermRelations] :term_relations
    #   <p>The term relations of this business glossary term.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId", # required
    #     name: "GlossaryTermName", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_glossary_term(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GlossaryTermId", # required
    #     domain_id: "DomainId", # required
    #     glossary_id: "GlossaryId", # required
    #     name: "GlossaryTermName", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"]
    #     },
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::CreateGlossaryTermOutput]
    def create_glossary_term(params = {}, options = {})
      request = build_request(:create_glossary_term, params)
      request.send_request(options)
    end

    # <p>Creates a group profile in Amazon DataZone.</p>
    # @param [Hash, Types::CreateGroupProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the group profile is created.</p>
    # @option params [String] :group_identifier
    #   <p>The identifier of the group for which the group profile is created.</p>
    # @option params [String] :client_token
    #   <p> A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_group_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "GroupProfileId",
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED"],
    #     group_name: "GroupProfileName"
    #   }
    # @return [Types::CreateGroupProfileOutput]
    def create_group_profile(params = {}, options = {})
      request = build_request(:create_group_profile, params)
      request.send_request(options)
    end

    # <p>Publishes a listing (a record of an asset at a given time) or removes a listing from the catalog. </p>
    # @param [Hash, Types::CreateListingChangeSetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset.</p>
    # @option params [String] :entity_type
    #   <p>The type of an entity.</p>
    # @option params [String] :entity_revision
    #   <p>The revision of an asset.</p>
    # @option params [String] :action
    #   <p>Specifies whether to publish or unpublish a listing.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET", "DATA_PRODUCT"], # required
    #     entity_revision: "Revision",
    #     action: "PUBLISH" # One of: ["PUBLISH", "UNPUBLISH"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_listing_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     listing_id: "ListingId", # required
    #     listing_revision: "Revision", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE"], # required
    #   }
    # @return [Types::CreateListingChangeSetOutput]
    def create_listing_change_set(params = {}, options = {})
      request = build_request(:create_listing_change_set, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon DataZone project.</p>
    # @param [Hash, Types::CreateProjectInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this project is created.</p>
    # @option params [String] :name
    #   <p>The name of the Amazon DataZone project.</p>
    # @option params [String] :description
    #   <p>The description of the Amazon DataZone project.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms that can be used in this Amazon DataZone project.</p>
    # @option params [String] :domain_unit_id
    #   <p>The ID of the domain unit. This parameter is not required and if it is not specified, then the project is created at the root domain unit level.</p>
    # @option params [String] :project_profile_id
    #   <p>The ID of the project profile.</p>
    # @option params [Array<Types::EnvironmentConfigurationUserParameter>] :user_parameters
    #   <p>The user parameters of the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectName", # required
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     project_profile_id: "ProjectProfileId",
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId"
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectId", # required
    #     name: "ProjectName", # required
    #     description: "Description",
    #     project_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"],
    #     failure_reasons: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     project_profile_id: "ProjectProfileId",
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId"
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     environment_deployment_details: {
    #       overall_deployment_status: "PENDING_DEPLOYMENT" # One of: ["PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"],
    #       environment_failure_reasons: {
    #         "String" => [
    #           {
    #             code: "String",
    #             message: "String", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateProjectOutput]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Creates a project membership in Amazon DataZone.</p>
    # @param [Hash, Types::CreateProjectMembershipInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which project membership is created.</p>
    # @option params [String] :project_identifier
    #   <p>The ID of the project for which this project membership was created.</p>
    # @option params [Types::Member] :member
    #   <p>The project member whose project membership was created.</p>
    # @option params [String] :designation
    #   <p>The designation of the project membership.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     member: { # required
    #       # One of:
    #       user_identifier: "String",
    #       group_identifier: "String"
    #     },
    #     designation: "PROJECT_OWNER" # One of: ["PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_CATALOG_VIEWER", "PROJECT_CATALOG_CONSUMER", "PROJECT_CATALOG_STEWARD"], # required
    #   }
    #   options = {}
    #   response = client.create_project_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateProjectMembershipOutput]
    def create_project_membership(params = {}, options = {})
      request = build_request(:create_project_membership, params)
      request.send_request(options)
    end

    # <p>Creates a project profile.</p>
    # @param [Hash, Types::CreateProjectProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>A domain ID of the project profile.</p>
    # @option params [String] :name
    #   <p>Project profile name.</p>
    # @option params [String] :description
    #   <p>A description of a project profile.</p>
    # @option params [String] :status
    #   <p>Project profile status.</p>
    # @option params [Array<Types::EnvironmentConfiguration>] :environment_configurations
    #   <p>Environment configurations of the project profile.</p>
    # @option params [String] :domain_unit_identifier
    #   <p>A domain unit ID of the project profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectProfileName", # required
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE" # One of: ["ON_CREATE", "ON_DEMAND"],
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ]
    #         },
    #         aws_account: {
    #           # One of:
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath"
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           # One of:
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath"
    #         },
    #         deployment_order: 1
    #       }
    #     ],
    #     domain_unit_identifier: "DomainUnitId"
    #   }
    #   options = {}
    #   response = client.create_project_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectProfileId", # required
    #     name: "ProjectProfileName", # required
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE" # One of: ["ON_CREATE", "ON_DEMAND"],
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ]
    #         },
    #         aws_account: {
    #           # One of:
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath"
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           # One of:
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath"
    #         },
    #         deployment_order: 1
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::CreateProjectProfileOutput]
    def create_project_profile(params = {}, options = {})
      request = build_request(:create_project_profile, params)
      request.send_request(options)
    end

    # <p>Creates a rule in Amazon DataZone. A rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.</p>
    # @param [Hash, Types::CreateRuleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the rule is created.</p>
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [Types::RuleTarget] :target
    #   <p>The target of the rule.</p>
    # @option params [String] :action
    #   <p>The action of the rule.</p>
    # @option params [Types::RuleScope] :scope
    #   <p>The scope of the rule.</p>
    # @option params [Types::RuleDetail] :detail
    #   <p>The detail of the rule.</p>
    # @option params [String] :description
    #   <p>The description of the rule.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "RuleName", # required
    #     target: { # required
    #       # One of:
    #       domain_unit_target: {
    #         domain_unit_id: "DomainUnitId", # required
    #         include_child_domain_units: false
    #       }
    #     },
    #     action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"], # required
    #     scope: { # required
    #       asset_type: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_asset_types: ["AssetTypeIdentifier"]
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_projects: ["ProjectId"]
    #       }
    #     },
    #     detail: { # required
    #       # One of:
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     },
    #     description: "Description",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleId", # required
    #     name: "RuleName", # required
    #     rule_type: "METADATA_FORM_ENFORCEMENT" # One of: ["METADATA_FORM_ENFORCEMENT"], # required
    #     target: { # required
    #       # One of:
    #       domain_unit_target: {
    #         domain_unit_id: "DomainUnitId", # required
    #         include_child_domain_units: false
    #       }
    #     },
    #     action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"], # required
    #     scope: { # required
    #       asset_type: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_asset_types: ["AssetTypeIdentifier"]
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_projects: ["ProjectId"]
    #       }
    #     },
    #     detail: { # required
    #       # One of:
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     },
    #     target_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"],
    #     description: "Description",
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #   }
    # @return [Types::CreateRuleOutput]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a subsscription grant in Amazon DataZone.</p>
    # @param [Hash, Types::CreateSubscriptionGrantInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant is created.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the subscription grant is created.</p>
    # @option params [String] :subscription_target_identifier
    #   <p>The ID of the subscription target for which the subscription grant is created.</p>
    # @option params [Types::GrantedEntityInput] :granted_entity
    #   <p>The entity to which the subscription is to be granted.</p>
    # @option params [Array<Types::AssetTargetNameMap>] :asset_target_names
    #   <p>The names of the assets for which the subscription grant is created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     subscription_target_identifier: "SubscriptionTargetId",
    #     granted_entity: { # required
    #       # One of:
    #       listing: {
    #         identifier: "ListingId", # required
    #         revision: "Revision", # required
    #       }
    #     },
    #     asset_target_names: [
    #       {
    #         asset_id: "AssetId", # required
    #         target_name: "String", # required
    #       }
    #     ],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_subscription_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionGrantId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscription_target_id: "SubscriptionTargetId", # required
    #     granted_entity: { # required
    #       # One of:
    #       listing: {
    #         id: "ListingId", # required
    #         revision: "Revision", # required
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"], # required
    #     assets: [
    #       {
    #         asset_id: "AssetId", # required
    #         asset_revision: "Revision", # required
    #         status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #         target_name: "String",
    #         failure_cause: {
    #           message: "String"
    #         },
    #         granted_timestamp: Time.now,
    #         failure_timestamp: Time.now,
    #         asset_scope: {
    #           asset_id: "AssetId", # required
    #           filter_ids: ["FilterId"], # required
    #           status: "String", # required
    #           error_message: "String"
    #         }
    #       }
    #     ],
    #     subscription_id: "SubscriptionId"
    #   }
    # @return [Types::CreateSubscriptionGrantOutput]
    def create_subscription_grant(params = {}, options = {})
      request = build_request(:create_subscription_grant, params)
      request.send_request(options)
    end

    # <p>Creates a subscription request in Amazon DataZone.</p>
    # @param [Hash, Types::CreateSubscriptionRequestInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription request is created.</p>
    # @option params [Array<Types::SubscribedPrincipalInput>] :subscribed_principals
    #   <p>The Amazon DataZone principals for whom the subscription request is created.</p>
    # @option params [Array<Types::SubscribedListingInput>] :subscribed_listings
    #   <p>The published asset for which the subscription grant is to be created.</p>
    # @option params [String] :request_reason
    #   <p>The reason for the subscription request.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @option params [Array<Types::FormInput>] :metadata_forms
    #   <p>The metadata form included in the subscription request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         identifier: "ProjectId"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         identifier: "ListingId", # required
    #       }
    #     ],
    #     request_reason: "RequestReason", # required
    #     client_token: "String",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_subscription_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionRequestId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     request_reason: "RequestReason", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         id: "ListingId", # required
    #         revision: "Revision",
    #         name: "ListingName", # required
    #         description: "Description", # required
    #         item: { # required
    #           # One of:
    #           asset_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             entity_type: "TypeName",
    #             forms: "Forms",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           },
    #           product_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             name: "String",
    #             description: "String",
    #             asset_listings: [
    #               {
    #                 entity_id: "String",
    #                 entity_revision: "String",
    #                 entity_type: "String"
    #               }
    #             ]
    #           }
    #         },
    #         owner_project_id: "ProjectId", # required
    #         owner_project_name: "String"
    #       }
    #     ],
    #     reviewer_id: "String",
    #     decision_comment: "DecisionComment",
    #     existing_subscription_id: "SubscriptionId",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreateSubscriptionRequestOutput]
    def create_subscription_request(params = {}, options = {})
      request = build_request(:create_subscription_request, params)
      request.send_request(options)
    end

    # <p>Creates a subscription target in Amazon DataZone.</p>
    # @param [Hash, Types::CreateSubscriptionTargetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which subscription target is created.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which subscription target is created.</p>
    # @option params [String] :name
    #   <p>The name of the subscription target.</p>
    # @option params [String] :type
    #   <p>The type of the subscription target.</p>
    # @option params [Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   <p>The configuration of the subscription target.</p>
    # @option params [Array<String>] :authorized_principals
    #   <p>The authorized principals of the subscription target.</p>
    # @option params [String] :manage_access_role
    #   <p>The manage access role that is used to create the subscription target.</p>
    # @option params [Array<String>] :applicable_asset_types
    #   <p>The asset types that can be included in the subscription target.</p>
    # @option params [String] :provider
    #   <p>The provider of the subscription target.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     name: "SubscriptionTargetName", # required
    #     type: "String", # required
    #     subscription_target_config: [ # required
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       }
    #     ],
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     manage_access_role: "IamRoleArn", # required
    #     applicable_asset_types: ["TypeName"], # required
    #     provider: "String",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_subscription_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionTargetId", # required
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId", # required
    #     name: "SubscriptionTargetName", # required
    #     type: "String", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     created_at: Time.now, # required
    #     updated_at: Time.now,
    #     manage_access_role: "IamRoleArn",
    #     applicable_asset_types: ["TypeName"], # required
    #     subscription_target_config: [ # required
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       }
    #     ],
    #     provider: "String", # required
    #   }
    # @return [Types::CreateSubscriptionTargetOutput]
    def create_subscription_target(params = {}, options = {})
      request = build_request(:create_subscription_target, params)
      request.send_request(options)
    end

    # <p>Creates a user profile in Amazon DataZone.</p>
    # @param [Hash, Types::CreateUserProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is created.</p>
    # @option params [String] :user_identifier
    #   <p>The identifier of the user for which the user profile is created.</p>
    # @option params [String] :user_type
    #   <p>The user type of the user for which the user profile is created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     user_type: "IAM_USER" # One of: ["IAM_USER", "IAM_ROLE", "SSO_USER"],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "UserProfileId",
    #     type: "IAM" # One of: ["IAM", "SSO"],
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"],
    #     details: {
    #       # One of:
    #       iam: {
    #         arn: "String",
    #         principal_id: "String"
    #       },
    #       sso: {
    #         username: "UserProfileName",
    #         first_name: "FirstName",
    #         last_name: "LastName"
    #       }
    #     }
    #   }
    # @return [Types::CreateUserProfileOutput]
    def create_user_profile(params = {}, options = {})
      request = build_request(:create_user_profile, params)
      request.send_request(options)
    end

    # <p>Deletes an account pool.</p>
    # @param [Hash, Types::DeleteAccountPoolInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the account pool is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the account pool to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #   }
    #   options = {}
    #   response = client.delete_account_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccountPoolOutput]
    def delete_account_pool(params = {}, options = {})
      request = build_request(:delete_account_pool, params)
      request.send_request(options)
    end

    # <p>Deletes an asset in Amazon DataZone.</p> <ul> <li> <p>--domain-identifier must refer to a valid and existing domain. </p> </li> <li> <p>--identifier must refer to an existing asset in the specified domain.</p> </li> <li> <p>Asset must not be referenced in any existing asset filters.</p> </li> <li> <p>Asset must not be linked to any draft or published data product.</p> </li> <li> <p>User must have delete permissions for the domain and project.</p> </li> </ul>
    # @param [Hash, Types::DeleteAssetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the asset that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssetOutput]
    def delete_asset(params = {}, options = {})
      request = build_request(:delete_asset, params)
      request.send_request(options)
    end

    # <p>Deletes an asset filter.</p> <p>Prerequisites:</p> <ul> <li> <p>The asset filter must exist. </p> </li> <li> <p>The domain and asset must not have been deleted.</p> </li> <li> <p>Ensure the --identifier refers to a valid filter ID.</p> </li> </ul>
    # @param [Hash, Types::DeleteAssetFilterInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to delete an asset filter.</p>
    # @option params [String] :asset_identifier
    #   <p>The ID of the data asset.</p>
    # @option params [String] :identifier
    #   <p>The ID of the asset filter that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #   }
    #   options = {}
    #   response = client.delete_asset_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_asset_filter(params = {}, options = {})
      request = build_request(:delete_asset_filter, params)
      request.send_request(options)
    end

    # <p>Deletes an asset type in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The asset type must exist in the domain. </p> </li> <li> <p>You must have DeleteAssetType permission.</p> </li> <li> <p>The asset type must not be in use (e.g., assigned to any asset). If used, deletion will fail.</p> </li> <li> <p>You should retrieve the asset type using get-asset-type to confirm its presence before deletion.</p> </li> </ul>
    # @param [Hash, Types::DeleteAssetTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset type is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the asset type that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_asset_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssetTypeOutput]
    def delete_asset_type(params = {}, options = {})
      request = build_request(:delete_asset_type, params)
      request.send_request(options)
    end

    # <p>Deletes and connection. In Amazon DataZone, a connection enables you to connect your resources (domains, projects, and environments) to external resources and services.</p>
    # @param [Hash, Types::DeleteConnectionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the connection is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the connection that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::DeleteConnectionOutput]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Deletes a data product in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The data product must exist and not be deleted or archived. </p> </li> <li> <p>The user must have delete permissions for the data product.</p> </li> <li> <p>Domain and project must be active.</p> </li> </ul>
    # @param [Hash, Types::DeleteDataProductInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data product is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the data product that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #   }
    #   options = {}
    #   response = client.delete_data_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDataProductOutput]
    def delete_data_product(params = {}, options = {})
      request = build_request(:delete_data_product, params)
      request.send_request(options)
    end

    # <p>Deletes a data source in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteDataSourceInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data source is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the data source that is deleted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @option params [Boolean] :retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe functionality failure for a data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #     client_token: "String",
    #     retain_permissions_on_revoke_failure: false
    #   }
    #   options = {}
    #   response = client.delete_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId", # required
    #     status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"],
    #     type: "DataSourceType",
    #     name: "Name", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId",
    #     connection_id: "String",
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: { # required
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     publish_on_import: false,
    #     asset_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     last_run_status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #     last_run_at: Time.now,
    #     last_run_error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     self_grant_status: {
    #       # One of:
    #       glue_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       },
    #       redshift_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       }
    #     },
    #     retain_permissions_on_revoke_failure: false
    #   }
    # @return [Types::DeleteDataSourceOutput]
    def delete_data_source(params = {}, options = {})
      request = build_request(:delete_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes a Amazon DataZone domain.</p>
    # @param [Hash, Types::DeleteDomainInput] params
    # @option params [String] :identifier
    #   <p>The identifier of the Amazon Web Services domain that is to be deleted.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @option params [Boolean] :skip_deletion_check
    #   <p>Specifies the optional flag to delete all child entities within the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DomainId", # required
    #     client_token: "String",
    #     skip_deletion_check: false
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"], # required
    #   }
    # @return [Types::DeleteDomainOutput]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Deletes a domain unit.</p>
    # @param [Hash, Types::DeleteDomainUnitInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to delete a domain unit.</p>
    # @option params [String] :identifier
    #   <p>The ID of the domain unit that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainUnitOutput]
    def delete_domain_unit(params = {}, options = {})
      request = build_request(:delete_domain_unit, params)
      request.send_request(options)
    end

    # <p>Deletes an environment in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteEnvironmentInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the environment that is to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes an action for the environment, for example, deletes a console link for an analytics tool that is available in this environment.</p>
    # @param [Hash, Types::DeleteEnvironmentActionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which an environment action is deleted.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment where an environment action is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the environment action that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment_action(params = {}, options = {})
      request = build_request(:delete_environment_action, params)
      request.send_request(options)
    end

    # <p>Deletes a blueprint in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteEnvironmentBlueprintInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the blueprint is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the blueprint that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment_blueprint(params = {}, options = {})
      request = build_request(:delete_environment_blueprint, params)
      request.send_request(options)
    end

    # <p>Deletes the blueprint configuration in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteEnvironmentBlueprintConfigurationInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the blueprint configuration is deleted.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The ID of the blueprint the configuration of which is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_blueprint_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentBlueprintConfigurationOutput]
    def delete_environment_blueprint_configuration(params = {}, options = {})
      request = build_request(:delete_environment_blueprint_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an environment profile in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteEnvironmentProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment profile is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the environment profile that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment_profile(params = {}, options = {})
      request = build_request(:delete_environment_profile, params)
      request.send_request(options)
    end

    # <p>Deletes and metadata form type in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The form type must exist in the domain. </p> </li> <li> <p>The form type must not be in use by any asset types or assets.</p> </li> <li> <p>The domain must be valid and accessible.</p> </li> <li> <p>User must have delete permissions on the form type.</p> </li> <li> <p>Any dependencies (such as linked asset types) must be removed first.</p> </li> </ul>
    # @param [Hash, Types::DeleteFormTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the metadata form type is deleted.</p>
    # @option params [String] :form_type_identifier
    #   <p>The ID of the metadata form type that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_form_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFormTypeOutput]
    def delete_form_type(params = {}, options = {})
      request = build_request(:delete_form_type, params)
      request.send_request(options)
    end

    # <p>Deletes a business glossary in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The glossary must be in DISABLED state. </p> </li> <li> <p>The glossary must not have any glossary terms associated with it.</p> </li> <li> <p>The glossary must exist in the specified domain.</p> </li> <li> <p>The caller must have the <code>datazone:DeleteGlossary</code> permission in the domain and glossary.</p> </li> <li> <p>Glossary should not be linked to any active metadata forms.</p> </li> </ul>
    # @param [Hash, Types::DeleteGlossaryInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the business glossary is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the business glossary that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   }
    #   options = {}
    #   response = client.delete_glossary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGlossaryOutput]
    def delete_glossary(params = {}, options = {})
      request = build_request(:delete_glossary, params)
      request.send_request(options)
    end

    # <p>Deletes a business glossary term in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>Glossary term must exist and be active. </p> </li> <li> <p>The term must not be linked to other assets or child terms.</p> </li> <li> <p>Caller must have delete permissions in the domain/glossary.</p> </li> <li> <p>Ensure all associations (such as to assets or parent terms) are removed before deletion.</p> </li> </ul>
    # @param [Hash, Types::DeleteGlossaryTermInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the business glossary term is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the business glossary term that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   }
    #   options = {}
    #   response = client.delete_glossary_term(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGlossaryTermOutput]
    def delete_glossary_term(params = {}, options = {})
      request = build_request(:delete_glossary_term, params)
      request.send_request(options)
    end

    # <p>Deletes a listing (a record of an asset at a given time).</p>
    # @param [Hash, Types::DeleteListingInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    # @option params [String] :identifier
    #   <p>The ID of the listing to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #   }
    #   options = {}
    #   response = client.delete_listing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteListingOutput]
    def delete_listing(params = {}, options = {})
      request = build_request(:delete_listing, params)
      request.send_request(options)
    end

    # <p>Deletes a project in Amazon DataZone. </p>
    # @param [Hash, Types::DeleteProjectInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the project is deleted.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the project that is to be deleted.</p>
    # @option params [Boolean] :skip_deletion_check
    #   <p>Specifies the optional flag to delete all child entities within the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #     skip_deletion_check: false
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectOutput]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes project membership in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteProjectMembershipInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where project membership is deleted.</p>
    # @option params [String] :project_identifier
    #   <p>The ID of the Amazon DataZone project the membership to which is deleted.</p>
    # @option params [Types::Member] :member
    #   <p>The project member whose project membership is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     member: { # required
    #       # One of:
    #       user_identifier: "String",
    #       group_identifier: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_project_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectMembershipOutput]
    def delete_project_membership(params = {}, options = {})
      request = build_request(:delete_project_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a project profile.</p>
    # @param [Hash, Types::DeleteProjectProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where a project profile is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the project profile that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_project_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectProfileOutput]
    def delete_project_profile(params = {}, options = {})
      request = build_request(:delete_project_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a rule in Amazon DataZone. A rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.</p>
    # @param [Hash, Types::DeleteRuleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain that where the rule is to be deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the rule that is to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleOutput]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes and subscription grant in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteSubscriptionGrantInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the subscription grant is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription grant that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   }
    #   options = {}
    #   response = client.delete_subscription_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionGrantId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscription_target_id: "SubscriptionTargetId", # required
    #     granted_entity: { # required
    #       # One of:
    #       listing: {
    #         id: "ListingId", # required
    #         revision: "Revision", # required
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"], # required
    #     assets: [
    #       {
    #         asset_id: "AssetId", # required
    #         asset_revision: "Revision", # required
    #         status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #         target_name: "String",
    #         failure_cause: {
    #           message: "String"
    #         },
    #         granted_timestamp: Time.now,
    #         failure_timestamp: Time.now,
    #         asset_scope: {
    #           asset_id: "AssetId", # required
    #           filter_ids: ["FilterId"], # required
    #           status: "String", # required
    #           error_message: "String"
    #         }
    #       }
    #     ],
    #     subscription_id: "SubscriptionId"
    #   }
    # @return [Types::DeleteSubscriptionGrantOutput]
    def delete_subscription_grant(params = {}, options = {})
      request = build_request(:delete_subscription_grant, params)
      request.send_request(options)
    end

    # <p>Deletes a subscription request in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteSubscriptionRequestInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription request is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription request that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   }
    #   options = {}
    #   response = client.delete_subscription_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_subscription_request(params = {}, options = {})
      request = build_request(:delete_subscription_request, params)
      request.send_request(options)
    end

    # <p>Deletes a subscription target in Amazon DataZone.</p>
    # @param [Hash, Types::DeleteSubscriptionTargetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription target is deleted.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the Amazon DataZone environment in which the subscription target is deleted.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription target that is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   }
    #   options = {}
    #   response = client.delete_subscription_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_subscription_target(params = {}, options = {})
      request = build_request(:delete_subscription_target, params)
      request.send_request(options)
    end

    # <p>Deletes the specified time series form for the specified asset. </p>
    # @param [Hash, Types::DeleteTimeSeriesDataPointsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the asset for which you want to delete a time series form.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset for which you want to delete a time series form.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset for which you want to delete a time series form.</p>
    # @option params [String] :form_name
    #   <p>The name of the time series form that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is automatically populated if not provided.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"], # required
    #     form_name: "TimeSeriesFormName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_time_series_data_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTimeSeriesDataPointsOutput]
    def delete_time_series_data_points(params = {}, options = {})
      request = build_request(:delete_time_series_data_points, params)
      request.send_request(options)
    end

    # <p>Disassociates the environment role in Amazon DataZone.</p>
    # @param [Hash, Types::DisassociateEnvironmentRoleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which an environment role is disassociated.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    # @option params [String] :environment_role_arn
    #   <p>The ARN of the environment role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     environment_role_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_environment_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateEnvironmentRoleOutput]
    def disassociate_environment_role(params = {}, options = {})
      request = build_request(:disassociate_environment_role, params)
      request.send_request(options)
    end

    # <p>Disassociates restricted terms from an asset.</p>
    # @param [Hash, Types::DisassociateGovernedTermsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to disassociate restricted terms from an asset.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of an asset from which you want to disassociate restricted terms.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset from which you want to disassociate restricted terms.</p>
    # @option params [Array<String>] :governed_glossary_terms
    #   <p>The restricted glossary terms that you want to disassociate from an asset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET"], # required
    #     governed_glossary_terms: ["GlossaryTermId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_governed_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateGovernedTermsOutput]
    def disassociate_governed_terms(params = {}, options = {})
      request = build_request(:disassociate_governed_terms, params)
      request.send_request(options)
    end

    # <p>Gets the details of the account pool.</p>
    # @param [Hash, Types::GetAccountPoolInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which the account pool lives whose details are to be displayed.</p>
    # @option params [String] :identifier
    #   <p>The ID of the account pool whose details are to be displayed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #   }
    #   options = {}
    #   response = client.get_account_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     name: "AccountPoolName",
    #     id: "AccountPoolId",
    #     description: "Description",
    #     resolution_strategy: "MANUAL" # One of: ["MANUAL"],
    #     account_source: { # required
    #       # One of:
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName"
    #         }
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn"
    #       }
    #     },
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::GetAccountPoolOutput]
    def get_account_pool(params = {}, options = {})
      request = build_request(:get_account_pool, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone asset.</p> <p>An asset is the fundamental building block in Amazon DataZone, representing any data resource that needs to be cataloged and managed. It can take many forms, from Amazon S3 buckets and database tables to dashboards and machine learning models. Each asset contains comprehensive metadata about the resource, including its location, schema, ownership, and lineage information. Assets are essential for organizing and managing data resources across an organization, making them discoverable and usable while maintaining proper governance.</p> <p>Before using the Amazon DataZone GetAsset command, ensure the following prerequisites are met:</p> <ul> <li> <p>Domain identifier must exist and be valid</p> </li> <li> <p>Asset identifier must exist</p> </li> <li> <p>User must have the required permissions to perform the action</p> </li> </ul>
    # @param [Hash, Types::GetAssetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain to which the asset belongs.</p>
    # @option params [String] :identifier
    #   <p>The ID of the Amazon DataZone asset.</p> <p>This parameter supports either the value of <code>assetId</code> or <code>externalIdentifier</code> as input. If you are passing the value of <code>externalIdentifier</code>, you must prefix this value with <code>externalIdentifer%2F</code>.</p>
    # @option params [String] :revision
    #   <p>The revision of the Amazon DataZone asset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AssetId", # required
    #     name: "AssetName", # required
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision", # required
    #     external_identifier: "ExternalIdentifier",
    #     revision: "Revision", # required
    #     description: "Description",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy",
    #     glossary_terms: ["GlossaryTermId"],
    #     governed_glossary_terms: ["GlossaryTermId"],
    #     owning_project_id: "ProjectId", # required
    #     domain_id: "DomainId", # required
    #     listing: {
    #       listing_id: "ListingId", # required
    #       listing_status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE"], # required
    #     },
    #     forms_output: [ # required
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     read_only_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     latest_time_series_data_point_forms_output: [
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content_summary: "String",
    #         id: "DataPointIdentifier"
    #       }
    #     ]
    #   }
    # @return [Types::GetAssetOutput]
    def get_asset(params = {}, options = {})
      request = build_request(:get_asset, params)
      request.send_request(options)
    end

    # <p>Gets an asset filter.</p> <p>Prerequisites:</p> <ul> <li> <p>Domain (<code>--domain-identifier</code>), asset (<code>--asset-identifier</code>), and filter (<code>--identifier</code>) must all exist. </p> </li> <li> <p>The asset filter should not have been deleted.</p> </li> <li> <p>The asset must still exist (since the filter is linked to it).</p> </li> </ul>
    # @param [Hash, Types::GetAssetFilterInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to get an asset filter.</p>
    # @option params [String] :asset_identifier
    #   <p>The ID of the data asset.</p>
    # @option params [String] :identifier
    #   <p>The ID of the asset filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #   }
    #   options = {}
    #   response = client.get_asset_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FilterId", # required
    #     domain_id: "DomainId", # required
    #     asset_id: "AssetId", # required
    #     name: "FilterName", # required
    #     description: "Description",
    #     status: "VALID" # One of: ["VALID", "INVALID"],
    #     configuration: { # required
    #       # One of:
    #       column_configuration: {
    #         included_column_names: ["String"]
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           # One of:
    #           expression: {
    #             # One of:
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             }
    #           },
    #           and: [{
    #             # recursive RowFilter
    #           }],
    #           or: [{
    #             # recursive RowFilter
    #           }]
    #         },
    #         sensitive: false
    #       }
    #     },
    #     created_at: Time.now,
    #     error_message: "String",
    #     effective_column_names: ["String"],
    #     effective_row_filter: "String"
    #   }
    # @return [Types::GetAssetFilterOutput]
    def get_asset_filter(params = {}, options = {})
      request = build_request(:get_asset_filter, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone asset type.</p> <p>Asset types define the categories and characteristics of different kinds of data assets within Amazon DataZone.. They determine what metadata fields are required, what operations are possible, and how the asset integrates with other Amazon Web Services services. Asset types can range from built-in types like Amazon S3 buckets and Amazon Web Services Glue tables to custom types defined for specific organizational needs. Understanding asset types is crucial for properly organizing and managing different kinds of data resources.</p> <p>Prerequisites:</p> <ul> <li> <p>The asset type with identifier must exist in the domain. ResourceNotFoundException.</p> </li> <li> <p>You must have the GetAssetType permission.</p> </li> <li> <p>Ensure the domain-identifier value is correct and accessible.</p> </li> </ul>
    # @param [Hash, Types::GetAssetTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the asset type exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the asset type.</p>
    # @option params [String] :revision
    #   <p>The revision of the asset type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #     revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_asset_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     name: "TypeName", # required
    #     revision: "Revision", # required
    #     description: "Description",
    #     forms_output: { # required
    #       "FormName" => {
    #         type_name: "FormTypeName", # required
    #         type_revision: "Revision", # required
    #         required: false
    #       }
    #     },
    #     owning_project_id: "ProjectId", # required
    #     origin_domain_id: "DomainId",
    #     origin_project_id: "ProjectId",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetAssetTypeOutput]
    def get_asset_type(params = {}, options = {})
      request = build_request(:get_asset_type, params)
      request.send_request(options)
    end

    # <p>Gets a connection. In Amazon DataZone, a connection enables you to connect your resources (domains, projects, and environments) to external resources and services.</p>
    # @param [Hash, Types::GetConnectionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where we get the connection.</p>
    # @option params [String] :identifier
    #   <p>The connection ID.</p>
    # @option params [Boolean] :with_secret
    #   <p>Specifies whether a connection has a secret.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #     with_secret: false
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_credentials: {
    #       access_key_id: "String",
    #       secret_access_key: "String",
    #       session_token: "String",
    #       expiration: Time.now
    #     },
    #     connection_id: "ConnectionId", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     domain_unit_id: "DomainUnitId", # required
    #     environment_id: "EnvironmentId",
    #     environment_user_role: "String",
    #     name: "ConnectionName", # required
    #     physical_endpoints: [ # required
    #       {
    #         aws_location: {
    #           access_role: "String",
    #           aws_account_id: "AwsAccountId",
    #           aws_region: "AwsRegion",
    #           iam_connection_id: "ConnectionId"
    #         },
    #         glue_connection_name: "String",
    #         glue_connection: {
    #           name: "String",
    #           description: "String",
    #           connection_type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"],
    #           match_criteria: ["String"],
    #           connection_properties: {
    #             "String" => "String"
    #           },
    #           spark_properties: {
    #             "String" => "String"
    #           },
    #           athena_properties: {
    #             "String" => "String"
    #           },
    #           python_properties: {
    #             "String" => "String"
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "SubnetId",
    #             subnet_id_list: ["SubnetId"],
    #             security_group_id_list: ["String"],
    #             availability_zone: "String"
    #           },
    #           creation_time: Time.now,
    #           last_updated_time: Time.now,
    #           last_updated_by: "String",
    #           status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #           status_reason: "String",
    #           last_connection_validation_time: Time.now,
    #           authentication_configuration: {
    #             authentication_type: "BASIC" # One of: ["BASIC", "OAUTH2", "CUSTOM"],
    #             secret_arn: "String",
    #             o_auth2_properties: {
    #               o_auth2_grant_type: "AUTHORIZATION_CODE" # One of: ["AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"],
    #               o_auth2_client_application: {
    #                 user_managed_client_application_client_id: "String",
    #                 a_ws_managed_client_application_reference: "String"
    #               },
    #               token_url: "String",
    #               token_url_parameters_map: {
    #                 "String" => "String"
    #               },
    #               authorization_code_properties: {
    #                 authorization_code: "String",
    #                 redirect_uri: "String"
    #               },
    #               o_auth2_credentials: {
    #                 user_managed_client_application_client_secret: "String",
    #                 access_token: "String",
    #                 refresh_token: "String",
    #                 jwt_token: "String"
    #               }
    #             }
    #           },
    #           connection_schema_version: 1,
    #           compatible_compute_environments: ["SPARK" # One of: ["SPARK", "ATHENA", "PYTHON"]]
    #         },
    #         host: "String",
    #         port: 1,
    #         protocol: "ATHENA" # One of: ["ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"],
    #         stage: "String"
    #       }
    #     ],
    #     project_id: "ProjectId",
    #     props: {
    #       # One of:
    #       athena_properties: {
    #         workgroup_name: "String"
    #       },
    #       glue_properties: {
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       },
    #       hyper_pod_properties: {
    #         cluster_name: "String", # required
    #         cluster_arn: "String",
    #         orchestrator: "EKS" # One of: ["EKS", "SLURM"]
    #       },
    #       iam_properties: {
    #         environment_id: "String",
    #         glue_lineage_sync_enabled: false
    #       },
    #       redshift_properties: {
    #         storage: {
    #           # One of:
    #           cluster_name: "String",
    #           workgroup_name: "String"
    #         },
    #         credentials: {
    #           # One of:
    #           secret_arn: "String",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           }
    #         },
    #         is_provisioned_secret: false,
    #         jdbc_iam_url: "String",
    #         jdbc_url: "String",
    #         redshift_temp_dir: "String",
    #         lineage_sync: {
    #           lineage_job_id: "String",
    #           enabled: false,
    #           schedule: {
    #             schedule: "String"
    #           }
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         database_name: "String"
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "String",
    #         credentials: {
    #           password: "Password", # required
    #           username: "Username", # required
    #         },
    #         credentials_expiration: Time.now,
    #         governance_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "USER_MANAGED"],
    #         instance_profile_arn: "String",
    #         java_virtual_env: "String",
    #         livy_endpoint: "String",
    #         log_uri: "String",
    #         python_virtual_env: "String",
    #         runtime_role: "String",
    #         trusted_certificates_s3_uri: "String",
    #         certificate_data: "String",
    #         managed_endpoint_arn: "String",
    #         managed_endpoint_credentials: {
    #           id: "String",
    #           token: "String"
    #         }
    #       },
    #       spark_glue_properties: {
    #         additional_args: {
    #           connection: "String"
    #         },
    #         glue_connection_name: "String",
    #         glue_version: "String",
    #         idle_timeout: 1,
    #         java_virtual_env: "String",
    #         number_of_workers: 1,
    #         python_virtual_env: "String",
    #         worker_type: "String"
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       }
    #     },
    #     type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"], # required
    #   }
    # @return [Types::GetConnectionOutput]
    def get_connection(params = {}, options = {})
      request = build_request(:get_connection, params)
      request.send_request(options)
    end

    # <p>Gets the data product.</p> <p>Prerequisites:</p> <ul> <li> <p>The data product ID must exist. </p> </li> <li> <p>The domain must be valid and accessible.</p> </li> <li> <p>User must have read or discovery permissions for the data product.</p> </li> </ul>
    # @param [Hash, Types::GetDataProductInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the data product lives.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data product.</p>
    # @option params [String] :revision
    #   <p>The revision of the data product.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_data_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "DataProductId", # required
    #     revision: "Revision", # required
    #     owning_project_id: "ProjectId", # required
    #     name: "DataProductName", # required
    #     status: "CREATED" # One of: ["CREATED", "CREATING", "CREATE_FAILED"], # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     items: [
    #       {
    #         item_type: "ASSET" # One of: ["ASSET"], # required
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"]
    #       }
    #     ],
    #     forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     first_revision_created_at: Time.now,
    #     first_revision_created_by: "CreatedBy"
    #   }
    # @return [Types::GetDataProductOutput]
    def get_data_product(params = {}, options = {})
      request = build_request(:get_data_product, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone data source.</p>
    # @param [Hash, Types::GetDataSourceInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the data source exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the Amazon DataZone data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #   }
    #   options = {}
    #   response = client.get_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId", # required
    #     status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"],
    #     type: "DataSourceType",
    #     name: "Name", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId",
    #     connection_id: "String",
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: { # required
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false
    #     },
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     publish_on_import: false,
    #     asset_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     last_run_status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #     last_run_at: Time.now,
    #     last_run_error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     last_run_asset_count: 1,
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     self_grant_status: {
    #       # One of:
    #       glue_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       },
    #       redshift_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetDataSourceOutput]
    def get_data_source(params = {}, options = {})
      request = build_request(:get_data_source, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone data source run.</p>
    # @param [Hash, Types::GetDataSourceRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which this data source run was performed.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data source run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #   }
    #   options = {}
    #   response = client.get_data_source_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     data_source_id: "DataSourceId", # required
    #     id: "DataSourceRunId", # required
    #     project_id: "ProjectId", # required
    #     status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"], # required
    #     type: "PRIORITIZED" # One of: ["PRIORITIZED", "SCHEDULED"], # required
    #     data_source_configuration_snapshot: "String",
    #     run_statistics_for_assets: {
    #       added: 1,
    #       updated: 1,
    #       unchanged: 1,
    #       skipped: 1,
    #       failed: 1
    #     },
    #     lineage_summary: {
    #       import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "PARTIALLY_SUCCEEDED"]
    #     },
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     started_at: Time.now,
    #     stopped_at: Time.now
    #   }
    # @return [Types::GetDataSourceRunOutput]
    def get_data_source_run(params = {}, options = {})
      request = build_request(:get_data_source_run, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone domain.</p>
    # @param [Hash, Types::GetDomainInput] params
    # @option params [String] :identifier
    #   <p>The identifier of the specified Amazon DataZone domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainId", # required
    #     root_domain_unit_id: "DomainUnitId",
    #     name: "String",
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC" # One of: ["IAM_IDC", "DISABLED"],
    #       user_assignment: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       idc_instance_arn: "String"
    #     },
    #     domain_execution_role: "RoleArn", # required
    #     arn: "String",
    #     kms_key_identifier: "KmsKeyArn",
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"], # required
    #     portal_url: "String",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     domain_version: "V1" # One of: ["V1", "V2"],
    #     service_role: "RoleArn"
    #   }
    # @return [Types::GetDomainOutput]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # <p>Gets the details of the specified domain unit.</p>
    # @param [Hash, Types::GetDomainUnitInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to get a domain unit.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the domain unit that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #   }
    #   options = {}
    #   response = client.get_domain_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainUnitId", # required
    #     domain_id: "DomainId", # required
    #     name: "DomainUnitName", # required
    #     parent_domain_unit_id: "DomainUnitId",
    #     description: "DomainUnitDescription",
    #     owners: [{ # required
    #       # One of:
    #       user: {
    #         user_id: "String"
    #       },
    #       group: {
    #         group_id: "String"
    #       }
    #     }],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     created_by: "CreatedBy",
    #     last_updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetDomainUnitOutput]
    def get_domain_unit(params = {}, options = {})
      request = build_request(:get_domain_unit, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone environment.</p>
    # @param [Hash, Types::GetEnvironmentInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where the environment exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the Amazon DataZone environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_id: "ProjectId", # required
    #     id: "EnvironmentId",
    #     domain_id: "DomainId", # required
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     environment_profile_id: "EnvironmentProfileId",
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     provider: "String", # required
    #     provisioned_resources: [
    #       {
    #         provider: "String",
    #         name: "String",
    #         value: "String", # required
    #         type: "String", # required
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"],
    #     environment_actions: [
    #       {
    #         type: "String", # required
    #         auth: "IAM" # One of: ["IAM", "HTTPS"],
    #         parameters: [ # required
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     last_deployment: {
    #       deployment_id: "String",
    #       deployment_type: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"],
    #       deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"],
    #       failure_reason: {
    #         code: "String",
    #         message: "String", # required
    #       },
    #       messages: ["DeploymentMessage"],
    #       is_deployment_complete: false
    #     },
    #     provisioning_properties: {
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     environment_blueprint_id: "EnvironmentBlueprintId",
    #     environment_configuration_id: "EnvironmentConfigurationId"
    #   }
    # @return [Types::GetEnvironmentOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Gets the specified environment action.</p>
    # @param [Hash, Types::GetEnvironmentActionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the <code>GetEnvironmentAction</code> API is invoked. </p>
    # @option params [String] :environment_identifier
    #   <p>The environment ID of the environment action.</p>
    # @option params [String] :identifier
    #   <p>The ID of the environment action</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.get_environment_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     environment_id: "EnvironmentId", # required
    #     id: "EnvironmentActionId", # required
    #     name: "String", # required
    #     parameters: { # required
    #       # One of:
    #       aws_console_link: {
    #         uri: "String"
    #       }
    #     },
    #     description: "String"
    #   }
    # @return [Types::GetEnvironmentActionOutput]
    def get_environment_action(params = {}, options = {})
      request = build_request(:get_environment_action, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon DataZone blueprint.</p>
    # @param [Hash, Types::GetEnvironmentBlueprintInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain in which this blueprint exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of this Amazon DataZone blueprint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #   }
    #   options = {}
    #   response = client.get_environment_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentBlueprintId", # required
    #     name: "EnvironmentBlueprintName", # required
    #     description: "Description",
    #     provider: "String", # required
    #     provisioning_properties: { # required
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetEnvironmentBlueprintOutput]
    def get_environment_blueprint(params = {}, options = {})
      request = build_request(:get_environment_blueprint, params)
      request.send_request(options)
    end

    # <p>Gets the blueprint configuration in Amazon DataZone.</p>
    # @param [Hash, Types::GetEnvironmentBlueprintConfigurationInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where this blueprint exists.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>He ID of the blueprint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   }
    #   options = {}
    #   response = client.get_environment_blueprint_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     environment_blueprint_id: "EnvironmentBlueprintId", # required
    #     provisioning_role_arn: "RoleArn",
    #     environment_role_permission_boundary: "PolicyArn",
    #     manage_access_role_arn: "RoleArn",
    #     enabled_regions: ["RegionName"],
    #     regional_parameters: {
    #       "RegionName" => {
    #         "String" => "String"
    #       }
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     provisioning_configurations: [{
    #       # One of:
    #       lake_formation_configuration: {
    #         location_registration_role: "RoleArn",
    #         location_registration_exclude_s3_locations: ["S3Location"]
    #       }
    #     }]
    #   }
    # @return [Types::GetEnvironmentBlueprintConfigurationOutput]
    def get_environment_blueprint_configuration(params = {}, options = {})
      request = build_request(:get_environment_blueprint_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the credentials of an environment in Amazon DataZone.</p>
    # @param [Hash, Types::GetEnvironmentCredentialsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment and its credentials exist.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment whose credentials this operation gets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key_id: "String",
    #     secret_access_key: "String",
    #     session_token: "String",
    #     expiration: Time.now
    #   }
    # @return [Types::GetEnvironmentCredentialsOutput]
    def get_environment_credentials(params = {}, options = {})
      request = build_request(:get_environment_credentials, params)
      request.send_request(options)
    end

    # <p>Gets an evinronment profile in Amazon DataZone.</p>
    # @param [Hash, Types::GetEnvironmentProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this environment profile exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the environment profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_environment_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentProfileId", # required
    #     domain_id: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentProfileName", # required
    #     description: "Description",
    #     environment_blueprint_id: "EnvironmentBlueprintId", # required
    #     project_id: "ProjectId",
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ]
    #   }
    # @return [Types::GetEnvironmentProfileOutput]
    def get_environment_profile(params = {}, options = {})
      request = build_request(:get_environment_profile, params)
      request.send_request(options)
    end

    # <p>Gets a metadata form type in Amazon DataZone.</p> <p>Form types define the structure and validation rules for collecting metadata about assets in Amazon DataZone. They act as templates that ensure consistent metadata capture across similar types of assets, while allowing for customization to meet specific organizational needs. Form types can include required fields, validation rules, and dependencies, helping maintain high-quality metadata that makes data assets more discoverable and usable.</p> <ul> <li> <p>The form type with the specified identifier must exist in the given domain. </p> </li> <li> <p>The domain must be valid and active.</p> </li> <li> <p>User must have permission on the form type.</p> </li> <li> <p>The form type should not be deleted or in an invalid state.</p> </li> </ul> <p>One use case for this API is to determine whether a form field is indexed for search. </p> <p>A searchable field will be annotated with <code>@amazon.datazone#searchable</code>. By default, searchable fields are indexed for semantic search, where related query terms will match the attribute value even if they are not stemmed or keyword matches. If a field is indexed technical identifier search, it will be annotated with <code>@amazon.datazone#searchable(modes:["TECHNICAL"])</code>. If a field is indexed for lexical search (supports stemmed and prefix matches but not semantic matches), it will be annotated with <code>@amazon.datazone#searchable(modes:["LEXICAL"])</code>.</p> <p>A field storing glossary term IDs (which is filterable) will be annotated with <code>@amazon.datazone#glossaryterm("${glossaryId}")</code>. </p>
    # @param [Hash, Types::GetFormTypeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this metadata form type exists.</p>
    # @option params [String] :form_type_identifier
    #   <p>The ID of the metadata form type.</p>
    # @option params [String] :revision
    #   <p>The revision of this metadata form type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #     revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_form_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     name: "FormTypeName", # required
    #     revision: "Revision", # required
    #     model: { # required
    #       # One of:
    #       smithy: "Smithy"
    #     },
    #     owning_project_id: "ProjectId",
    #     origin_domain_id: "DomainId",
    #     origin_project_id: "ProjectId",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     description: "Description",
    #     imports: [
    #       {
    #         name: "FormTypeName", # required
    #         revision: "Revision", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetFormTypeOutput]
    def get_form_type(params = {}, options = {})
      request = build_request(:get_form_type, params)
      request.send_request(options)
    end

    # <p>Gets a business glossary in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The specified glossary ID must exist and be associated with the given domain. </p> </li> <li> <p>The caller must have the <code>datazone:GetGlossary</code> permission on the domain.</p> </li> </ul>
    # @param [Hash, Types::GetGlossaryInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the business glossary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   }
    #   options = {}
    #   response = client.get_glossary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "GlossaryId", # required
    #     owning_project_id: "ProjectId", # required
    #     name: "GlossaryName", # required
    #     description: "GlossaryDescription",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::GetGlossaryOutput]
    def get_glossary(params = {}, options = {})
      request = build_request(:get_glossary, params)
      request.send_request(options)
    end

    # <p>Gets a business glossary term in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>Glossary term with identifier must exist in the domain. </p> </li> <li> <p>User must have permission on the glossary term.</p> </li> <li> <p>Domain must be accessible and active.</p> </li> </ul>
    # @param [Hash, Types::GetGlossaryTermInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which this business glossary term exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the business glossary term.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   }
    #   options = {}
    #   response = client.get_glossary_term(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     glossary_id: "GlossaryId", # required
    #     id: "GlossaryTermId", # required
    #     name: "GlossaryTermName", # required
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"]
    #     },
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::GetGlossaryTermOutput]
    def get_glossary_term(params = {}, options = {})
      request = build_request(:get_glossary_term, params)
      request.send_request(options)
    end

    # <p>Gets a group profile in Amazon DataZone.</p>
    # @param [Hash, Types::GetGroupProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the group profile exists.</p>
    # @option params [String] :group_identifier
    #   <p>The identifier of the group profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_group_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "GroupProfileId",
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED"],
    #     group_name: "GroupProfileName"
    #   }
    # @return [Types::GetGroupProfileOutput]
    def get_group_profile(params = {}, options = {})
      request = build_request(:get_group_profile, params)
      request.send_request(options)
    end

    # <p>Gets the data portal URL for the specified Amazon DataZone domain.</p>
    # @param [Hash, Types::GetIamPortalLoginUrlInput] params
    # @option params [String] :domain_identifier
    #   <p>the ID of the Amazon DataZone domain the data portal of which you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_iam_portal_login_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_code_url: "String",
    #     user_profile_id: "String", # required
    #   }
    # @return [Types::GetIamPortalLoginUrlOutput]
    def get_iam_portal_login_url(params = {}, options = {})
      request = build_request(:get_iam_portal_login_url, params)
      request.send_request(options)
    end

    # <p>The details of the job run.</p>
    # @param [Hash, Types::GetJobRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain.</p>
    # @option params [String] :identifier
    #   <p>The ID of the job run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "RunIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "String",
    #     job_id: "String",
    #     job_type: "LINEAGE" # One of: ["LINEAGE"],
    #     run_mode: "SCHEDULED" # One of: ["SCHEDULED", "ON_DEMAND"],
    #     details: {
    #       # One of:
    #       lineage_run_details: {
    #         sql_query_run_details: {
    #           query_start_time: Time.now,
    #           query_end_time: Time.now,
    #           total_queries_processed: 1,
    #           num_queries_failed: 1,
    #           error_messages: ["String"]
    #         }
    #       }
    #     },
    #     status: "SCHEDULED" # One of: ["SCHEDULED", "IN_PROGRESS", "SUCCESS", "PARTIALLY_SUCCEEDED", "FAILED", "ABORTED", "TIMED_OUT", "CANCELED"],
    #     error: {
    #       message: "String", # required
    #     },
    #     created_by: "String",
    #     created_at: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::GetJobRunOutput]
    def get_job_run(params = {}, options = {})
      request = build_request(:get_job_run, params)
      request.send_request(options)
    end

    # <p>Describes the lineage event.</p>
    # @param [Hash, Types::GetLineageEventInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain.</p>
    # @option params [String] :identifier
    #   <p>The ID of the lineage event.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "LineageEventIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_lineage_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "LineageEventIdentifier",
    #     event: "data",
    #     created_by: "CreatedBy",
    #     processing_status: "REQUESTED" # One of: ["REQUESTED", "PROCESSING", "SUCCESS", "FAILED"],
    #     event_time: Time.now,
    #     created_at: Time.now
    #   }
    # @return [Types::GetLineageEventOutput]
    def get_lineage_event(params = {}, options = {})
      request = build_request(:get_lineage_event, params)
      request.send_request(options)
    end

    # <p>Gets the data lineage node.</p>
    # @param [Hash, Types::GetLineageNodeInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which you want to get the data lineage node.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data lineage node that you want to get.</p> <p>Both, a lineage node identifier generated by Amazon DataZone and a <code>sourceIdentifier</code> of the lineage node are supported. If <code>sourceIdentifier</code> is greater than 1800 characters, you can use lineage node identifier generated by Amazon DataZone to get the node details.</p>
    # @option params [Time] :event_timestamp
    #   <p>The event time stamp for which you want to get the data lineage node.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "LineageNodeIdentifier", # required
    #     event_timestamp: Time.now
    #   }
    #   options = {}
    #   response = client.get_lineage_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     name: "String",
    #     description: "String",
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     id: "LineageNodeId", # required
    #     type_name: "String", # required
    #     type_revision: "Revision",
    #     source_identifier: "String",
    #     event_timestamp: Time.now,
    #     forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     upstream_nodes: [
    #       {
    #         id: "LineageNodeId",
    #         event_timestamp: Time.now
    #       }
    #     ],
    #     downstream_nodes: [
    #       {
    #         id: "LineageNodeId",
    #         event_timestamp: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetLineageNodeOutput]
    def get_lineage_node(params = {}, options = {})
      request = build_request(:get_lineage_node, params)
      request.send_request(options)
    end

    # <p>Gets a listing (a record of an asset at a given time). If you specify a listing version, only details that are specific to that version are returned.</p>
    # @param [Hash, Types::GetListingInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain.</p>
    # @option params [String] :identifier
    #   <p>The ID of the listing.</p>
    # @option params [String] :listing_revision
    #   <p>The revision of the listing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #     listing_revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_listing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ListingId", # required
    #     listing_revision: "Revision", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     created_by: "CreatedBy",
    #     updated_by: "UpdatedBy",
    #     item: {
    #       # One of:
    #       asset_listing: {
    #         asset_id: "AssetId",
    #         asset_revision: "Revision",
    #         asset_type: "TypeName",
    #         created_at: Time.now,
    #         forms: "Forms",
    #         latest_time_series_data_point_forms: [
    #           {
    #             form_name: "TimeSeriesFormName", # required
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision",
    #             timestamp: Time.now, # required
    #             content_summary: "String",
    #             id: "DataPointIdentifier"
    #           }
    #         ],
    #         glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         governed_glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         owning_project_id: "ProjectId"
    #       },
    #       data_product_listing: {
    #         data_product_id: "DataProductId",
    #         data_product_revision: "Revision",
    #         created_at: Time.now,
    #         forms: "Forms",
    #         glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         owning_project_id: "ProjectId",
    #         items: [
    #           {
    #             listing_id: "ListingId",
    #             listing_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     },
    #     name: "ListingName",
    #     description: "Description",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE"]
    #   }
    # @return [Types::GetListingOutput]
    def get_listing(params = {}, options = {})
      request = build_request(:get_listing, params)
      request.send_request(options)
    end

    # <p>Gets a metadata generation run in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>Valid domain and run identifier. </p> </li> <li> <p>The metadata generation run must exist.</p> </li> <li> <p>User must have read access to the metadata run.</p> </li> </ul>
    # @param [Hash, Types::GetMetadataGenerationRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain the metadata generation run of which you want to get.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the metadata generation run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "MetadataGenerationRunIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_metadata_generation_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "MetadataGenerationRunIdentifier", # required
    #     target: {
    #       type: "ASSET" # One of: ["ASSET"], # required
    #       identifier: "String", # required
    #       revision: "Revision"
    #     },
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"],
    #     type: "BUSINESS_DESCRIPTIONS" # One of: ["BUSINESS_DESCRIPTIONS"],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     owning_project_id: "ProjectId", # required
    #   }
    # @return [Types::GetMetadataGenerationRunOutput]
    def get_metadata_generation_run(params = {}, options = {})
      request = build_request(:get_metadata_generation_run, params)
      request.send_request(options)
    end

    # <p>Gets a project in Amazon DataZone.</p>
    # @param [Hash, Types::GetProjectInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the project exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #   }
    #   options = {}
    #   response = client.get_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectId", # required
    #     name: "ProjectName", # required
    #     description: "Description",
    #     project_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"],
    #     failure_reasons: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     project_profile_id: "ProjectProfileId",
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId"
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     environment_deployment_details: {
    #       overall_deployment_status: "PENDING_DEPLOYMENT" # One of: ["PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"],
    #       environment_failure_reasons: {
    #         "String" => [
    #           {
    #             code: "String",
    #             message: "String", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetProjectOutput]
    def get_project(params = {}, options = {})
      request = build_request(:get_project, params)
      request.send_request(options)
    end

    # <p>The details of the project profile.</p>
    # @param [Hash, Types::GetProjectProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain.</p>
    # @option params [String] :identifier
    #   <p>The ID of the project profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_project_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectProfileId", # required
    #     name: "ProjectProfileName", # required
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE" # One of: ["ON_CREATE", "ON_DEMAND"],
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ]
    #         },
    #         aws_account: {
    #           # One of:
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath"
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           # One of:
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath"
    #         },
    #         deployment_order: 1
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::GetProjectProfileOutput]
    def get_project_profile(params = {}, options = {})
      request = build_request(:get_project_profile, params)
      request.send_request(options)
    end

    # <p>Gets the details of a rule in Amazon DataZone. A rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.</p>
    # @param [Hash, Types::GetRuleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where the <code>GetRule</code> action is to be invoked.</p>
    # @option params [String] :identifier
    #   <p>The ID of the rule.</p>
    # @option params [String] :revision
    #   <p>The revision of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #     revision: "Revision"
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleId", # required
    #     revision: "Revision", # required
    #     name: "RuleName", # required
    #     rule_type: "METADATA_FORM_ENFORCEMENT" # One of: ["METADATA_FORM_ENFORCEMENT"], # required
    #     target: { # required
    #       # One of:
    #       domain_unit_target: {
    #         domain_unit_id: "DomainUnitId", # required
    #         include_child_domain_units: false
    #       }
    #     },
    #     action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"], # required
    #     scope: { # required
    #       asset_type: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_asset_types: ["AssetTypeIdentifier"]
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_projects: ["ProjectId"]
    #       }
    #     },
    #     detail: { # required
    #       # One of:
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     },
    #     target_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"],
    #     description: "Description",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     last_updated_by: "UpdatedBy", # required
    #   }
    # @return [Types::GetRuleOutput]
    def get_rule(params = {}, options = {})
      request = build_request(:get_rule, params)
      request.send_request(options)
    end

    # <p>Gets a subscription in Amazon DataZone.</p>
    # @param [Hash, Types::GetSubscriptionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   }
    #   options = {}
    #   response = client.get_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "APPROVED" # One of: ["APPROVED", "REVOKED", "CANCELLED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscribed_principal: { # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     },
    #     subscribed_listing: { # required
    #       id: "ListingId", # required
    #       revision: "Revision",
    #       name: "ListingName", # required
    #       description: "Description", # required
    #       item: { # required
    #         # One of:
    #         asset_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           entity_type: "TypeName",
    #           forms: "Forms",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           asset_scope: {
    #             asset_id: "AssetId", # required
    #             filter_ids: ["FilterId"], # required
    #             status: "String", # required
    #             error_message: "String"
    #           }
    #         },
    #         product_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           name: "String",
    #           description: "String",
    #           asset_listings: [
    #             {
    #               entity_id: "String",
    #               entity_revision: "String",
    #               entity_type: "String"
    #             }
    #           ]
    #         }
    #       },
    #       owner_project_id: "ProjectId", # required
    #       owner_project_name: "String"
    #     },
    #     subscription_request_id: "SubscriptionRequestId",
    #     retain_permissions: false
    #   }
    # @return [Types::GetSubscriptionOutput]
    def get_subscription(params = {}, options = {})
      request = build_request(:get_subscription, params)
      request.send_request(options)
    end

    # <p>Gets the subscription grant in Amazon DataZone.</p>
    # @param [Hash, Types::GetSubscriptionGrantInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription grant exists.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionGrantId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscription_target_id: "SubscriptionTargetId", # required
    #     granted_entity: { # required
    #       # One of:
    #       listing: {
    #         id: "ListingId", # required
    #         revision: "Revision", # required
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"], # required
    #     assets: [
    #       {
    #         asset_id: "AssetId", # required
    #         asset_revision: "Revision", # required
    #         status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #         target_name: "String",
    #         failure_cause: {
    #           message: "String"
    #         },
    #         granted_timestamp: Time.now,
    #         failure_timestamp: Time.now,
    #         asset_scope: {
    #           asset_id: "AssetId", # required
    #           filter_ids: ["FilterId"], # required
    #           status: "String", # required
    #           error_message: "String"
    #         }
    #       }
    #     ],
    #     subscription_id: "SubscriptionId"
    #   }
    # @return [Types::GetSubscriptionGrantOutput]
    def get_subscription_grant(params = {}, options = {})
      request = build_request(:get_subscription_grant, params)
      request.send_request(options)
    end

    # <p>Gets the details of the specified subscription request.</p>
    # @param [Hash, Types::GetSubscriptionRequestDetailsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to get the subscription request details.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the subscription request the details of which to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_request_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionRequestId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     request_reason: "RequestReason", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         id: "ListingId", # required
    #         revision: "Revision",
    #         name: "ListingName", # required
    #         description: "Description", # required
    #         item: { # required
    #           # One of:
    #           asset_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             entity_type: "TypeName",
    #             forms: "Forms",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           },
    #           product_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             name: "String",
    #             description: "String",
    #             asset_listings: [
    #               {
    #                 entity_id: "String",
    #                 entity_revision: "String",
    #                 entity_type: "String"
    #               }
    #             ]
    #           }
    #         },
    #         owner_project_id: "ProjectId", # required
    #         owner_project_name: "String"
    #       }
    #     ],
    #     reviewer_id: "String",
    #     decision_comment: "DecisionComment",
    #     existing_subscription_id: "SubscriptionId",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetSubscriptionRequestDetailsOutput]
    def get_subscription_request_details(params = {}, options = {})
      request = build_request(:get_subscription_request_details, params)
      request.send_request(options)
    end

    # <p>Gets the subscription target in Amazon DataZone.</p>
    # @param [Hash, Types::GetSubscriptionTargetInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the subscription target exists.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment associated with the subscription target.</p>
    # @option params [String] :identifier
    #   <p>The ID of the subscription target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionTargetId", # required
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId", # required
    #     name: "SubscriptionTargetName", # required
    #     type: "String", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     created_at: Time.now, # required
    #     updated_at: Time.now,
    #     manage_access_role: "IamRoleArn",
    #     applicable_asset_types: ["TypeName"], # required
    #     subscription_target_config: [ # required
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       }
    #     ],
    #     provider: "String", # required
    #   }
    # @return [Types::GetSubscriptionTargetOutput]
    def get_subscription_target(params = {}, options = {})
      request = build_request(:get_subscription_target, params)
      request.send_request(options)
    end

    # <p>Gets the existing data point for the asset.</p>
    # @param [Hash, Types::GetTimeSeriesDataPointInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the asset for which you want to get the data point.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset for which you want to get the data point.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset for which you want to get the data point.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data point that you want to get.</p>
    # @option params [String] :form_name
    #   <p>The name of the time series form that houses the data point that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"], # required
    #     identifier: "TimeSeriesDataPointIdentifier", # required
    #     form_name: "TimeSeriesFormName", # required
    #   }
    #   options = {}
    #   response = client.get_time_series_data_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     entity_id: "EntityId",
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"],
    #     form_name: "TimeSeriesFormName",
    #     form: {
    #       form_name: "TimeSeriesFormName", # required
    #       type_identifier: "FormTypeIdentifier", # required
    #       type_revision: "Revision",
    #       timestamp: Time.now, # required
    #       content: "String",
    #       id: "DataPointIdentifier"
    #     }
    #   }
    # @return [Types::GetTimeSeriesDataPointOutput]
    def get_time_series_data_point(params = {}, options = {})
      request = build_request(:get_time_series_data_point, params)
      request.send_request(options)
    end

    # <p>Gets a user profile in Amazon DataZone.</p>
    # @param [Hash, Types::GetUserProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>the ID of the Amazon DataZone domain the data portal of which you want to get.</p>
    # @option params [String] :user_identifier
    #   <p>The identifier of the user for which you want to get the user profile.</p>
    # @option params [String] :type
    #   <p>The type of the user profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     type: "IAM" # One of: ["IAM", "SSO"]
    #   }
    #   options = {}
    #   response = client.get_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "UserProfileId",
    #     type: "IAM" # One of: ["IAM", "SSO"],
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"],
    #     details: {
    #       # One of:
    #       iam: {
    #         arn: "String",
    #         principal_id: "String"
    #       },
    #       sso: {
    #         username: "UserProfileName",
    #         first_name: "FirstName",
    #         last_name: "LastName"
    #       }
    #     }
    #   }
    # @return [Types::GetUserProfileOutput]
    def get_user_profile(params = {}, options = {})
      request = build_request(:get_user_profile, params)
      request.send_request(options)
    end

    # <p>Lists existing account pools.</p>
    # @param [Hash, Types::ListAccountPoolsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where exsting account pools are to be listed.</p>
    # @option params [String] :name
    #   <p>The name of the account pool to be listed.</p>
    # @option params [String] :sort_by
    #   <p>The sort by mechanism in which the existing account pools are to be listed.</p>
    # @option params [String] :sort_order
    #   <p>The sort order in which the existing account pools are to be listed.</p>
    # @option params [String] :next_token
    #   <p>When the number of account pools is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of account pools, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListAccountPools to list the next set of account pools.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account pools to return in a single call to ListAccountPools. When the number of account pools to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListAccountPools to list the next set of account pools.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "AccountPoolName",
    #     sort_by: "NAME" # One of: ["NAME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_account_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId",
    #         id: "AccountPoolId",
    #         name: "AccountPoolName",
    #         resolution_strategy: "MANUAL" # One of: ["MANUAL"],
    #         domain_unit_id: "DomainUnitId",
    #         created_by: "CreatedBy",
    #         updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAccountPoolsOutput]
    def list_account_pools(params = {}, options = {})
      request = build_request(:list_account_pools, params)
      request.send_request(options)
    end

    # <p>Lists the accounts in the specified account pool.</p>
    # @param [Hash, Types::ListAccountsInAccountPoolInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which the accounts in the specified account pool are to be listed.</p>
    # @option params [String] :identifier
    #   <p>The ID of the account pool whose accounts are to be listed.</p>
    # @option params [String] :next_token
    #   <p>When the number of accounts is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of accounts, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListAccountsInAccountPool to list the next set of accounts.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of accounts to return in a single call to ListAccountsInAccountPool. When the number of accounts to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListAccountsInAccountPool to list the next set of accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_accounts_in_account_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         supported_regions: ["AwsRegion"], # required
    #         aws_account_name: "AwsAccountName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAccountsInAccountPoolOutput]
    def list_accounts_in_account_pool(params = {}, options = {})
      request = build_request(:list_accounts_in_account_pool, params)
      request.send_request(options)
    end

    # <p>Lists asset filters.</p> <p>Prerequisites:</p> <ul> <li> <p>A valid domain and asset must exist. </p> </li> <li> <p>The asset must have at least one filter created to return results. </p> </li> </ul>
    # @param [Hash, Types::ListAssetFiltersInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list asset filters.</p>
    # @option params [String] :asset_identifier
    #   <p>The ID of the data asset.</p>
    # @option params [String] :status
    #   <p>The status of the asset filter.</p>
    # @option params [String] :next_token
    #   <p>When the number of asset filters is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of asset filters, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListAssetFilters</code> to list the next set of asset filters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of asset filters to return in a single call to <code>ListAssetFilters</code>. When the number of asset filters to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListAssetFilters</code> to list the next set of asset filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     status: "VALID" # One of: ["VALID", "INVALID"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "FilterId", # required
    #         domain_id: "DomainId", # required
    #         asset_id: "AssetId", # required
    #         name: "FilterName", # required
    #         description: "Description",
    #         status: "VALID" # One of: ["VALID", "INVALID"],
    #         effective_column_names: ["String"],
    #         effective_row_filter: "String",
    #         created_at: Time.now,
    #         error_message: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssetFiltersOutput]
    def list_asset_filters(params = {}, options = {})
      request = build_request(:list_asset_filters, params)
      request.send_request(options)
    end

    # <p>Lists the revisions for the asset.</p> <p>Prerequisites:</p> <ul> <li> <p>The asset must exist in the domain. </p> </li> <li> <p>There must be at least one revision of the asset (which happens automatically after creation).</p> </li> <li> <p>The domain must be valid and active.</p> </li> <li> <p>User must have permissions on the asset and domain.</p> </li> </ul>
    # @param [Hash, Types::ListAssetRevisionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the asset.</p>
    # @option params [String] :next_token
    #   <p>When the number of revisions is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of revisions, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListAssetRevisions</code> to list the next set of revisions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of revisions to return in a single call to <code>ListAssetRevisions</code>. When the number of revisions to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListAssetRevisions</code> to list the next set of revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_asset_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId",
    #         id: "AssetId",
    #         revision: "Revision",
    #         created_by: "CreatedBy",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssetRevisionsOutput]
    def list_asset_revisions(params = {}, options = {})
      request = build_request(:list_asset_revisions, params)
      request.send_request(options)
    end

    # <p>Lists connections. In Amazon DataZone, a connection enables you to connect your resources (domains, projects, and environments) to external resources and services.</p>
    # @param [Hash, Types::ListConnectionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list connections.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of connections to return in a single call to ListConnections. When the number of connections to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListConnections to list the next set of connections.</p>
    # @option params [String] :next_token
    #   <p>When the number of connections is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of connections, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListConnections to list the next set of connections.</p>
    # @option params [String] :sort_by
    #   <p>Specifies how you want to sort the listed connections.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order for the listed connections.</p>
    # @option params [String] :name
    #   <p>The name of the connection.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment where you want to list connections.</p>
    # @option params [String] :project_identifier
    #   <p>The ID of the project where you want to list connections.</p>
    # @option params [String] :type
    #   <p>The type of connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME" # One of: ["NAME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     name: "ConnectionName",
    #     environment_identifier: "EnvironmentId",
    #     project_identifier: "ProjectId", # required
    #     type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"]
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         connection_id: "ConnectionId", # required
    #         domain_id: "DomainId", # required
    #         domain_unit_id: "DomainUnitId", # required
    #         environment_id: "EnvironmentId",
    #         name: "ConnectionName", # required
    #         physical_endpoints: [ # required
    #           {
    #             aws_location: {
    #               access_role: "String",
    #               aws_account_id: "AwsAccountId",
    #               aws_region: "AwsRegion",
    #               iam_connection_id: "ConnectionId"
    #             },
    #             glue_connection_name: "String",
    #             glue_connection: {
    #               name: "String",
    #               description: "String",
    #               connection_type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"],
    #               match_criteria: ["String"],
    #               connection_properties: {
    #                 "String" => "String"
    #               },
    #               spark_properties: {
    #                 "String" => "String"
    #               },
    #               athena_properties: {
    #                 "String" => "String"
    #               },
    #               python_properties: {
    #                 "String" => "String"
    #               },
    #               physical_connection_requirements: {
    #                 subnet_id: "SubnetId",
    #                 subnet_id_list: ["SubnetId"],
    #                 security_group_id_list: ["String"],
    #                 availability_zone: "String"
    #               },
    #               creation_time: Time.now,
    #               last_updated_time: Time.now,
    #               last_updated_by: "String",
    #               status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #               status_reason: "String",
    #               last_connection_validation_time: Time.now,
    #               authentication_configuration: {
    #                 authentication_type: "BASIC" # One of: ["BASIC", "OAUTH2", "CUSTOM"],
    #                 secret_arn: "String",
    #                 o_auth2_properties: {
    #                   o_auth2_grant_type: "AUTHORIZATION_CODE" # One of: ["AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"],
    #                   o_auth2_client_application: {
    #                     user_managed_client_application_client_id: "String",
    #                     a_ws_managed_client_application_reference: "String"
    #                   },
    #                   token_url: "String",
    #                   token_url_parameters_map: {
    #                     "String" => "String"
    #                   },
    #                   authorization_code_properties: {
    #                     authorization_code: "String",
    #                     redirect_uri: "String"
    #                   },
    #                   o_auth2_credentials: {
    #                     user_managed_client_application_client_secret: "String",
    #                     access_token: "String",
    #                     refresh_token: "String",
    #                     jwt_token: "String"
    #                   }
    #                 }
    #               },
    #               connection_schema_version: 1,
    #               compatible_compute_environments: ["SPARK" # One of: ["SPARK", "ATHENA", "PYTHON"]]
    #             },
    #             host: "String",
    #             port: 1,
    #             protocol: "ATHENA" # One of: ["ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"],
    #             stage: "String"
    #           }
    #         ],
    #         project_id: "ProjectId",
    #         props: {
    #           # One of:
    #           athena_properties: {
    #             workgroup_name: "String"
    #           },
    #           glue_properties: {
    #             status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #             error_message: "String"
    #           },
    #           hyper_pod_properties: {
    #             cluster_name: "String", # required
    #             cluster_arn: "String",
    #             orchestrator: "EKS" # One of: ["EKS", "SLURM"]
    #           },
    #           iam_properties: {
    #             environment_id: "String",
    #             glue_lineage_sync_enabled: false
    #           },
    #           redshift_properties: {
    #             storage: {
    #               # One of:
    #               cluster_name: "String",
    #               workgroup_name: "String"
    #             },
    #             credentials: {
    #               # One of:
    #               secret_arn: "String",
    #               username_password: {
    #                 password: "Password", # required
    #                 username: "Username", # required
    #               }
    #             },
    #             is_provisioned_secret: false,
    #             jdbc_iam_url: "String",
    #             jdbc_url: "String",
    #             redshift_temp_dir: "String",
    #             lineage_sync: {
    #               lineage_job_id: "String",
    #               enabled: false,
    #               schedule: {
    #                 schedule: "String"
    #               }
    #             },
    #             status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #             database_name: "String"
    #           },
    #           spark_emr_properties: {
    #             compute_arn: "String",
    #             credentials: {
    #               password: "Password", # required
    #               username: "Username", # required
    #             },
    #             credentials_expiration: Time.now,
    #             governance_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "USER_MANAGED"],
    #             instance_profile_arn: "String",
    #             java_virtual_env: "String",
    #             livy_endpoint: "String",
    #             log_uri: "String",
    #             python_virtual_env: "String",
    #             runtime_role: "String",
    #             trusted_certificates_s3_uri: "String",
    #             certificate_data: "String",
    #             managed_endpoint_arn: "String",
    #             managed_endpoint_credentials: {
    #               id: "String",
    #               token: "String"
    #             }
    #           },
    #           spark_glue_properties: {
    #             additional_args: {
    #               connection: "String"
    #             },
    #             glue_connection_name: "String",
    #             glue_version: "String",
    #             idle_timeout: 1,
    #             java_virtual_env: "String",
    #             number_of_workers: 1,
    #             python_virtual_env: "String",
    #             worker_type: "String"
    #           },
    #           s3_properties: {
    #             s3_uri: "S3Uri", # required
    #             s3_access_grant_location_id: "S3AccessGrantLocationId",
    #             status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #             error_message: "String"
    #           }
    #         },
    #         type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConnectionsOutput]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>Lists data product revisions.</p> <p>Prerequisites:</p> <ul> <li> <p>The data product ID must exist within the domain. </p> </li> <li> <p>User must have view permissions on the data product.</p> </li> <li> <p>The domain must be in a valid and accessible state.</p> </li> </ul>
    # @param [Hash, Types::ListDataProductRevisionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain of the data product revisions that you want to list.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data product revision.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of asset filters to return in a single call to <code>ListDataProductRevisions</code>. When the number of data product revisions to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListDataProductRevisions</code> to list the next set of data product revisions.</p>
    # @option params [String] :next_token
    #   <p>When the number of data product revisions is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of data product revisions, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListDataProductRevisions</code> to list the next set of data product revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_data_product_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         domain_id: "DomainId",
    #         id: "DataProductId",
    #         revision: "Revision",
    #         created_at: Time.now,
    #         created_by: "CreatedBy"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataProductRevisionsOutput]
    def list_data_product_revisions(params = {}, options = {})
      request = build_request(:list_data_product_revisions, params)
      request.send_request(options)
    end

    # <p>Lists data source run activities.</p>
    # @param [Hash, Types::ListDataSourceRunActivitiesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to list data source run activities.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the data source run.</p>
    # @option params [String] :status
    #   <p>The status of the data source run.</p>
    # @option params [String] :next_token
    #   <p>When the number of activities is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of activities, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListDataSourceRunActivities</code> to list the next set of activities.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of activities to return in a single call to <code>ListDataSourceRunActivities</code>. When the number of activities to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListDataSourceRunActivities</code> to list the next set of activities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #     status: "FAILED" # One of: ["FAILED", "PUBLISHING_FAILED", "SUCCEEDED_CREATED", "SUCCEEDED_UPDATED", "SKIPPED_ALREADY_IMPORTED", "SKIPPED_ARCHIVED", "SKIPPED_NO_ACCESS", "UNCHANGED"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_source_run_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         database: "Name", # required
    #         data_source_run_id: "DataSourceRunId", # required
    #         technical_name: "Name", # required
    #         data_asset_status: "FAILED" # One of: ["FAILED", "PUBLISHING_FAILED", "SUCCEEDED_CREATED", "SUCCEEDED_UPDATED", "SKIPPED_ALREADY_IMPORTED", "SKIPPED_ARCHIVED", "SKIPPED_NO_ACCESS", "UNCHANGED"], # required
    #         project_id: "ProjectId", # required
    #         data_asset_id: "String",
    #         technical_description: "Description",
    #         error_message: {
    #           error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #           error_detail: "String"
    #         },
    #         lineage_summary: {
    #           event_id: "String",
    #           event_status: "REQUESTED" # One of: ["REQUESTED", "PROCESSING", "SUCCESS", "FAILED"],
    #           error_message: "LineageEventErrorMessage"
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataSourceRunActivitiesOutput]
    def list_data_source_run_activities(params = {}, options = {})
      request = build_request(:list_data_source_run_activities, params)
      request.send_request(options)
    end

    # <p>Lists data source runs in Amazon DataZone.</p>
    # @param [Hash, Types::ListDataSourceRunsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to invoke the <code>ListDataSourceRuns</code> action.</p>
    # @option params [String] :data_source_identifier
    #   <p>The identifier of the data source.</p>
    # @option params [String] :status
    #   <p>The status of the data source.</p>
    # @option params [String] :next_token
    #   <p>When the number of runs is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of runs, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of runs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of runs to return in a single call to <code>ListDataSourceRuns</code>. When the number of runs to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListDataSourceRuns</code> to list the next set of runs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     data_source_identifier: "DataSourceId", # required
    #     status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_source_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DataSourceRunId", # required
    #         data_source_id: "DataSourceId", # required
    #         type: "PRIORITIZED" # One of: ["PRIORITIZED", "SCHEDULED"], # required
    #         status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"], # required
    #         project_id: "ProjectId", # required
    #         run_statistics_for_assets: {
    #           added: 1,
    #           updated: 1,
    #           unchanged: 1,
    #           skipped: 1,
    #           failed: 1
    #         },
    #         error_message: {
    #           error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #           error_detail: "String"
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         started_at: Time.now,
    #         stopped_at: Time.now,
    #         lineage_summary: {
    #           import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESS", "FAILED", "PARTIALLY_SUCCEEDED"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataSourceRunsOutput]
    def list_data_source_runs(params = {}, options = {})
      request = build_request(:list_data_source_runs, params)
      request.send_request(options)
    end

    # <p>Lists data sources in Amazon DataZone.</p>
    # @param [Hash, Types::ListDataSourcesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to list the data sources.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the project in which to list data sources.</p>
    # @option params [String] :environment_identifier
    #   <p>The identifier of the environment in which to list the data sources.</p>
    # @option params [String] :connection_identifier
    #   <p>The ID of the connection.</p>
    # @option params [String] :type
    #   <p>The type of the data source.</p>
    # @option params [String] :status
    #   <p>The status of the data source.</p>
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    # @option params [String] :next_token
    #   <p>When the number of data sources is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of data sources, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListDataSources</code> to list the next set of data sources.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data sources to return in a single call to <code>ListDataSources</code>. When the number of data sources to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListDataSources</code> to list the next set of data sources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "String", # required
    #     environment_identifier: "String",
    #     connection_identifier: "String",
    #     type: "DataSourceType",
    #     status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"],
    #     name: "Name",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         environment_id: "String",
    #         connection_id: "String",
    #         data_source_id: "DataSourceId", # required
    #         name: "Name", # required
    #         type: "String", # required
    #         status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"], # required
    #         enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         schedule: {
    #           timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #           schedule: "CronString"
    #         },
    #         last_run_status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #         last_run_at: Time.now,
    #         last_run_error_message: {
    #           error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #           error_detail: "String"
    #         },
    #         last_run_asset_count: 1,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDataSourcesOutput]
    def list_data_sources(params = {}, options = {})
      request = build_request(:list_data_sources, params)
      request.send_request(options)
    end

    # <p>Lists child domain units for the specified parent domain unit.</p>
    # @param [Hash, Types::ListDomainUnitsForParentInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which you want to list domain units for a parent domain unit.</p>
    # @option params [String] :parent_domain_unit_identifier
    #   <p>The ID of the parent domain unit.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of domain units to return in a single call to ListDomainUnitsForParent. When the number of domain units to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListDomainUnitsForParent to list the next set of domain units.</p>
    # @option params [String] :next_token
    #   <p>When the number of domain units is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of domain units, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListDomainUnitsForParent to list the next set of domain units.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     parent_domain_unit_identifier: "DomainUnitId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_domain_units_for_parent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         name: "String", # required
    #         id: "DomainUnitId", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDomainUnitsForParentOutput]
    def list_domain_units_for_parent(params = {}, options = {})
      request = build_request(:list_domain_units_for_parent, params)
      request.send_request(options)
    end

    # <p>Lists Amazon DataZone domains.</p>
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [String] :status
    #   <p>The status of the data source.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of domains to return in a single call to <code>ListDomains</code>. When the number of domains to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListDomains</code> to list the next set of domains.</p>
    # @option params [String] :next_token
    #   <p>When the number of domains is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of domains, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListDomains</code> to list the next set of domains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DomainId", # required
    #         name: "DomainName", # required
    #         description: "DomainDescription",
    #         arn: "String", # required
    #         managed_account_id: "String", # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"], # required
    #         portal_url: "String",
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now,
    #         domain_version: "V1" # One of: ["V1", "V2"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Lists the entity (domain units) owners.</p>
    # @param [Hash, Types::ListEntityOwnersInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list entity owners.</p>
    # @option params [String] :entity_type
    #   <p>The type of the entity that you want to list.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity that you want to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of entities to return in a single call to <code>ListEntityOwners</code>. When the number of entities to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEntityOwners</code> to list the next set of entities.</p>
    # @option params [String] :next_token
    #   <p>When the number of entities is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of entities, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEntityOwners</code> to list the next set of entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"], # required
    #     entity_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_entity_owners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     owners: [{ # required
    #       # One of:
    #       user: {
    #         user_id: "String"
    #       },
    #       group: {
    #         group_id: "String"
    #       }
    #     }],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEntityOwnersOutput]
    def list_entity_owners(params = {}, options = {})
      request = build_request(:list_entity_owners, params)
      request.send_request(options)
    end

    # <p>Lists existing environment actions.</p>
    # @param [Hash, Types::ListEnvironmentActionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which the environment actions are listed.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the envrironment whose environment actions are listed.</p>
    # @option params [String] :next_token
    #   <p>When the number of environment actions is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of environment actions, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentActions</code> to list the next set of environment actions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment actions to return in a single call to <code>ListEnvironmentActions</code>. When the number of environment actions to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEnvironmentActions</code> to list the next set of environment actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environment_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId", # required
    #         environment_id: "EnvironmentId", # required
    #         id: "EnvironmentActionId", # required
    #         name: "String", # required
    #         parameters: { # required
    #           # One of:
    #           aws_console_link: {
    #             uri: "String"
    #           }
    #         },
    #         description: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentActionsOutput]
    def list_environment_actions(params = {}, options = {})
      request = build_request(:list_environment_actions, params)
      request.send_request(options)
    end

    # <p>Lists blueprint configurations for a Amazon DataZone environment.</p>
    # @param [Hash, Types::ListEnvironmentBlueprintConfigurationsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of blueprint configurations to return in a single call to <code>ListEnvironmentBlueprintConfigurations</code>. When the number of configurations to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of configurations.</p>
    # @option params [String] :next_token
    #   <p>When the number of blueprint configurations is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of configurations, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentBlueprintConfigurations</code> to list the next set of configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_environment_blueprint_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId", # required
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         provisioning_role_arn: "RoleArn",
    #         environment_role_permission_boundary: "PolicyArn",
    #         manage_access_role_arn: "RoleArn",
    #         enabled_regions: ["RegionName"],
    #         regional_parameters: {
    #           "RegionName" => {
    #             "String" => "String"
    #           }
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         provisioning_configurations: [{
    #           # One of:
    #           lake_formation_configuration: {
    #             location_registration_role: "RoleArn",
    #             location_registration_exclude_s3_locations: ["S3Location"]
    #           }
    #         }]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentBlueprintConfigurationsOutput]
    def list_environment_blueprint_configurations(params = {}, options = {})
      request = build_request(:list_environment_blueprint_configurations, params)
      request.send_request(options)
    end

    # <p>Lists blueprints in an Amazon DataZone environment.</p>
    # @param [Hash, Types::ListEnvironmentBlueprintsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of blueprints to return in a single call to <code>ListEnvironmentBlueprints</code>. When the number of blueprints to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEnvironmentBlueprints</code> to list the next set of blueprints.</p>
    # @option params [String] :next_token
    #   <p>When the number of blueprints in the environment is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of blueprints in the environment, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentBlueprints</code>to list the next set of blueprints.</p>
    # @option params [String] :name
    #   <p>The name of the Amazon DataZone environment.</p>
    # @option params [Boolean] :managed
    #   <p>Specifies whether the environment blueprint is managed by Amazon DataZone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     name: "EnvironmentBlueprintName",
    #     managed: false
    #   }
    #   options = {}
    #   response = client.list_environment_blueprints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "EnvironmentBlueprintId", # required
    #         name: "EnvironmentBlueprintName", # required
    #         description: "Description",
    #         provider: "String", # required
    #         provisioning_properties: { # required
    #           # One of:
    #           cloud_formation: {
    #             template_url: "String", # required
    #           }
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentBlueprintsOutput]
    def list_environment_blueprints(params = {}, options = {})
      request = build_request(:list_environment_blueprints, params)
      request.send_request(options)
    end

    # <p>Lists Amazon DataZone environment profiles.</p>
    # @param [Hash, Types::ListEnvironmentProfilesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :aws_account_id
    #   <p>The identifier of the Amazon Web Services account where you want to list environment profiles.</p>
    # @option params [String] :aws_account_region
    #   <p>The Amazon Web Services region where you want to list environment profiles.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The identifier of the blueprint that was used to create the environment profiles that you want to list.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the Amazon DataZone project.</p>
    # @option params [String] :name
    #   <p/>
    # @option params [String] :next_token
    #   <p>When the number of environment profiles is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of environment profiles, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEnvironmentProfiles</code> to list the next set of environment profiles.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment profiles to return in a single call to <code>ListEnvironmentProfiles</code>. When the number of environment profiles to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEnvironmentProfiles</code> to list the next set of environment profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     project_identifier: "ProjectId",
    #     name: "EnvironmentProfileName",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environment_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "EnvironmentProfileId", # required
    #         domain_id: "DomainId", # required
    #         aws_account_id: "AwsAccountId",
    #         aws_account_region: "AwsRegion",
    #         created_by: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         name: "EnvironmentProfileName", # required
    #         description: "Description",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         project_id: "ProjectId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentProfilesOutput]
    def list_environment_profiles(params = {}, options = {})
      request = build_request(:list_environment_profiles, params)
      request.send_request(options)
    end

    # <p>Lists Amazon DataZone environments.</p>
    # @param [Hash, Types::ListEnvironmentsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :aws_account_id
    #   <p>The identifier of the Amazon Web Services account where you want to list environments.</p>
    # @option params [String] :status
    #   <p>The status of the environments that you want to list.</p>
    # @option params [String] :aws_account_region
    #   <p>The Amazon Web Services region where you want to list environments.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the Amazon DataZone project.</p>
    # @option params [String] :environment_profile_identifier
    #   <p>The identifier of the environment profile.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The identifier of the Amazon DataZone blueprint.</p>
    # @option params [String] :provider
    #   <p>The provider of the environment.</p>
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to return in a single call to <code>ListEnvironments</code>. When the number of environments to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListEnvironments</code> to list the next set of environments.</p>
    # @option params [String] :next_token
    #   <p>When the number of environments is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of environments, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListEnvironments</code> to list the next set of environments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"],
    #     aws_account_region: "AwsRegion",
    #     project_identifier: "ProjectId", # required
    #     environment_profile_identifier: "EnvironmentProfileId",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     provider: "String",
    #     name: "String",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         project_id: "ProjectId", # required
    #         id: "EnvironmentId",
    #         domain_id: "DomainId", # required
    #         created_by: "String", # required
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         name: "EnvironmentName", # required
    #         description: "Description",
    #         environment_profile_id: "EnvironmentProfileId",
    #         aws_account_id: "AwsAccountId",
    #         aws_account_region: "AwsRegion",
    #         provider: "String", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"],
    #         environment_configuration_id: "EnvironmentConfigurationId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEnvironmentsOutput]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists job runs.</p>
    # @param [Hash, Types::ListJobRunsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list job runs.</p>
    # @option params [String] :job_identifier
    #   <p>The ID of the job run.</p>
    # @option params [String] :status
    #   <p>The status of a job run.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the order in which job runs are to be sorted.</p>
    # @option params [String] :next_token
    #   <p>When the number of job runs is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of job runs, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListJobRuns to list the next set of job runs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of job runs to return in a single call to ListJobRuns. When the number of job runs to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListJobRuns to list the next set of job runs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     job_identifier: "String", # required
    #     status: "SCHEDULED" # One of: ["SCHEDULED", "IN_PROGRESS", "SUCCESS", "PARTIALLY_SUCCEEDED", "FAILED", "ABORTED", "TIMED_OUT", "CANCELED"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_job_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId",
    #         job_id: "String",
    #         job_type: "LINEAGE" # One of: ["LINEAGE"],
    #         run_id: "String",
    #         run_mode: "SCHEDULED" # One of: ["SCHEDULED", "ON_DEMAND"],
    #         status: "SCHEDULED" # One of: ["SCHEDULED", "IN_PROGRESS", "SUCCESS", "PARTIALLY_SUCCEEDED", "FAILED", "ABORTED", "TIMED_OUT", "CANCELED"],
    #         error: {
    #           message: "String", # required
    #         },
    #         created_by: "String",
    #         created_at: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListJobRunsOutput]
    def list_job_runs(params = {}, options = {})
      request = build_request(:list_job_runs, params)
      request.send_request(options)
    end

    # <p>Lists lineage events.</p>
    # @param [Hash, Types::ListLineageEventsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list lineage events.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of lineage events to return in a single call to ListLineageEvents. When the number of lineage events to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListLineageEvents to list the next set of lineage events.</p>
    # @option params [Time] :timestamp_after
    #   <p>The after timestamp of a lineage event.</p>
    # @option params [Time] :timestamp_before
    #   <p>The before timestamp of a lineage event.</p>
    # @option params [String] :processing_status
    #   <p>The processing status of a lineage event.</p>
    # @option params [String] :sort_order
    #   <p>The sort order of the lineage events.</p>
    # @option params [String] :next_token
    #   <p>When the number of lineage events is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of lineage events, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListLineageEvents to list the next set of lineage events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     timestamp_after: Time.now,
    #     timestamp_before: Time.now,
    #     processing_status: "REQUESTED" # One of: ["REQUESTED", "PROCESSING", "SUCCESS", "FAILED"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_lineage_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "LineageEventIdentifier",
    #         domain_id: "DomainId",
    #         processing_status: "REQUESTED" # One of: ["REQUESTED", "PROCESSING", "SUCCESS", "FAILED"],
    #         event_time: Time.now,
    #         event_summary: {
    #           # One of:
    #           open_lineage_run_event_summary: {
    #             event_type: "START" # One of: ["START", "RUNNING", "COMPLETE", "ABORT", "FAIL", "OTHER"],
    #             run_id: "String",
    #             job: {
    #               name: "String",
    #               namespace: "String"
    #             },
    #             inputs: [
    #               {
    #                 name: "String",
    #                 namespace: "String"
    #               }
    #             ],
    #             outputs: [
    #               {
    #                 name: "String",
    #                 namespace: "String"
    #               }
    #             ]
    #           }
    #         },
    #         created_by: "CreatedBy",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLineageEventsOutput]
    def list_lineage_events(params = {}, options = {})
      request = build_request(:list_lineage_events, params)
      request.send_request(options)
    end

    # <p>Lists the history of the specified data lineage node.</p>
    # @param [Hash, Types::ListLineageNodeHistoryInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list the history of the specified data lineage node.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of history items to return in a single call to ListLineageNodeHistory. When the number of memberships to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListLineageNodeHistory to list the next set of items.</p>
    # @option params [String] :next_token
    #   <p>When the number of history items is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of items, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListLineageNodeHistory to list the next set of items.</p>
    # @option params [String] :identifier
    #   <p>The ID of the data lineage node whose history you want to list.</p>
    # @option params [String] :direction
    #   <p>The direction of the data lineage node refers to the lineage node having neighbors in that direction. For example, if direction is <code>UPSTREAM</code>, the <code>ListLineageNodeHistory</code> API responds with historical versions with upstream neighbors only.</p>
    # @option params [Time] :event_timestamp_gte
    #   <p>Specifies whether the action is to return data lineage node history from the time after the event timestamp.</p>
    # @option params [Time] :event_timestamp_lte
    #   <p>Specifies whether the action is to return data lineage node history from the time prior of the event timestamp.</p>
    # @option params [String] :sort_order
    #   <p>The order by which you want data lineage node history to be sorted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     identifier: "LineageNodeIdentifier", # required
    #     direction: "UPSTREAM" # One of: ["UPSTREAM", "DOWNSTREAM"],
    #     event_timestamp_gte: Time.now,
    #     event_timestamp_lte: Time.now,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.list_lineage_node_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         domain_id: "DomainId", # required
    #         name: "String",
    #         description: "String",
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         id: "LineageNodeId", # required
    #         type_name: "String", # required
    #         type_revision: "Revision",
    #         source_identifier: "String",
    #         event_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLineageNodeHistoryOutput]
    def list_lineage_node_history(params = {}, options = {})
      request = build_request(:list_lineage_node_history, params)
      request.send_request(options)
    end

    # <p>Lists all metadata generation runs.</p> <p>Metadata generation runs represent automated processes that leverage AI/ML capabilities to create or enhance asset metadata at scale. This feature helps organizations maintain comprehensive and consistent metadata across large numbers of assets without manual intervention. It can automatically generate business descriptions, tags, and other metadata elements, significantly reducing the time and effort required for metadata management while improving consistency and completeness.</p> <p>Prerequisites:</p> <ul> <li> <p>Valid domain identifier. </p> </li> <li> <p>User must have access to metadata generation runs in the domain.</p> </li> </ul>
    # @param [Hash, Types::ListMetadataGenerationRunsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where you want to list metadata generation runs.</p>
    # @option params [String] :status
    #   <p>The status of the metadata generation runs.</p>
    # @option params [String] :type
    #   <p>The type of the metadata generation runs.</p>
    # @option params [String] :next_token
    #   <p>When the number of metadata generation runs is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of metadata generation runs, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListMetadataGenerationRuns to list the next set of revisions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of metadata generation runs to return in a single call to ListMetadataGenerationRuns. When the number of metadata generation runs to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListMetadataGenerationRuns to list the next set of revisions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"],
    #     type: "BUSINESS_DESCRIPTIONS" # One of: ["BUSINESS_DESCRIPTIONS"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metadata_generation_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId", # required
    #         id: "MetadataGenerationRunIdentifier", # required
    #         target: {
    #           type: "ASSET" # One of: ["ASSET"], # required
    #           identifier: "String", # required
    #           revision: "Revision"
    #         },
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"],
    #         type: "BUSINESS_DESCRIPTIONS" # One of: ["BUSINESS_DESCRIPTIONS"],
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         owning_project_id: "ProjectId", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMetadataGenerationRunsOutput]
    def list_metadata_generation_runs(params = {}, options = {})
      request = build_request(:list_metadata_generation_runs, params)
      request.send_request(options)
    end

    # <p>Lists all Amazon DataZone notifications.</p>
    # @param [Hash, Types::ListNotificationsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :type
    #   <p>The type of notifications.</p>
    # @option params [Time] :after_timestamp
    #   <p>The time after which you want to list notifications.</p>
    # @option params [Time] :before_timestamp
    #   <p>The time before which you want to list notifications.</p>
    # @option params [Array<String>] :subjects
    #   <p>The subjects of notifications.</p>
    # @option params [String] :task_status
    #   <p>The task status of notifications.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of notifications to return in a single call to <code>ListNotifications</code>. When the number of notifications to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListNotifications</code> to list the next set of notifications.</p>
    # @option params [String] :next_token
    #   <p>When the number of notifications is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of notifications, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListNotifications</code> to list the next set of notifications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     type: "TASK" # One of: ["TASK", "EVENT"], # required
    #     after_timestamp: Time.now,
    #     before_timestamp: Time.now,
    #     subjects: ["String"],
    #     task_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notifications: [
    #       {
    #         identifier: "TaskId", # required
    #         domain_identifier: "DomainId", # required
    #         type: "TASK" # One of: ["TASK", "EVENT"], # required
    #         topic: { # required
    #           subject: "String", # required
    #           resource: { # required
    #             type: "PROJECT" # One of: ["PROJECT"], # required
    #             id: "String", # required
    #             name: "String"
    #           },
    #           role: "PROJECT_OWNER" # One of: ["PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_VIEWER", "DOMAIN_OWNER", "PROJECT_SUBSCRIBER"], # required
    #         },
    #         title: "Title", # required
    #         message: "Message", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         action_link: "ActionLink", # required
    #         creation_timestamp: Time.now, # required
    #         last_updated_timestamp: Time.now, # required
    #         metadata: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListNotificationsOutput]
    def list_notifications(params = {}, options = {})
      request = build_request(:list_notifications, params)
      request.send_request(options)
    end

    # <p>Lists policy grants.</p>
    # @param [Hash, Types::ListPolicyGrantsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list policy grants.</p>
    # @option params [String] :entity_type
    #   <p>The type of entity for which you want to list policy grants.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity for which you want to list policy grants.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy that you want to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of grants to return in a single call to <code>ListPolicyGrants</code>. When the number of grants to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListPolicyGrants</code> to list the next set of grants.</p>
    # @option params [String] :next_token
    #   <p>When the number of grants is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of grants, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListPolicyGrants</code> to list the next set of grants.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT", "ENVIRONMENT_BLUEPRINT_CONFIGURATION", "ENVIRONMENT_PROFILE", "ASSET_TYPE"], # required
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT" # One of: ["CREATE_DOMAIN_UNIT", "OVERRIDE_DOMAIN_UNIT_OWNERS", "ADD_TO_PROJECT_MEMBER_POOL", "OVERRIDE_PROJECT_OWNERS", "CREATE_GLOSSARY", "CREATE_FORM_TYPE", "CREATE_ASSET_TYPE", "CREATE_PROJECT", "CREATE_ENVIRONMENT_PROFILE", "DELEGATE_CREATE_ENVIRONMENT_PROFILE", "CREATE_ENVIRONMENT", "CREATE_ENVIRONMENT_FROM_BLUEPRINT", "CREATE_PROJECT_FROM_PROJECT_PROFILE", "USE_ASSET_TYPE"], # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_policy_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_list: [ # required
    #       {
    #         principal: {
    #           # One of:
    #           user: {
    #             # One of:
    #             user_identifier: "UserIdentifier",
    #             all_users_grant_filter: {
    #             }
    #           },
    #           group: {
    #             # One of:
    #             group_identifier: "GroupIdentifier"
    #           },
    #           project: {
    #             project_designation: "OWNER" # One of: ["OWNER", "CONTRIBUTOR", "PROJECT_CATALOG_STEWARD"], # required
    #             project_identifier: "ProjectId",
    #             project_grant_filter: {
    #               # One of:
    #               domain_unit_filter: {
    #                 domain_unit: "DomainUnitId", # required
    #                 include_child_domain_units: false
    #               }
    #             }
    #           },
    #           domain_unit: {
    #             domain_unit_designation: "OWNER" # One of: ["OWNER"], # required
    #             domain_unit_identifier: "DomainUnitId",
    #             domain_unit_grant_filter: {
    #               # One of:
    #               all_domain_units_grant_filter: {
    #               }
    #             }
    #           }
    #         },
    #         detail: {
    #           # One of:
    #           create_domain_unit: {
    #             include_child_domain_units: false
    #           },
    #           override_domain_unit_owners: {
    #             include_child_domain_units: false
    #           },
    #           add_to_project_member_pool: {
    #             include_child_domain_units: false
    #           },
    #           override_project_owners: {
    #             include_child_domain_units: false
    #           },
    #           create_glossary: {
    #             include_child_domain_units: false
    #           },
    #           create_form_type: {
    #             include_child_domain_units: false
    #           },
    #           create_asset_type: {
    #             include_child_domain_units: false
    #           },
    #           create_project: {
    #             include_child_domain_units: false
    #           },
    #           create_environment_profile: {
    #             domain_unit_id: "DomainUnitId"
    #           },
    #           delegate_create_environment_profile: {
    #           },
    #           create_environment: {
    #           },
    #           create_environment_from_blueprint: {
    #           },
    #           create_project_from_project_profile: {
    #             include_child_domain_units: false,
    #             project_profiles: ["String"]
    #           },
    #           use_asset_type: {
    #             domain_unit_id: "DomainUnitId"
    #           }
    #         },
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         grant_id: "GrantIdentifier"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPolicyGrantsOutput]
    def list_policy_grants(params = {}, options = {})
      request = build_request(:list_policy_grants, params)
      request.send_request(options)
    end

    # <p>Lists all members of the specified project.</p>
    # @param [Hash, Types::ListProjectMembershipsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to list project memberships.</p>
    # @option params [String] :project_identifier
    #   <p>The identifier of the project whose memberships you want to list.</p>
    # @option params [String] :sort_by
    #   <p>The method by which you want to sort the project memberships.</p>
    # @option params [String] :sort_order
    #   <p>The sort order of the project memberships.</p>
    # @option params [String] :next_token
    #   <p>When the number of memberships is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of memberships, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListProjectMemberships</code> to list the next set of memberships.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of memberships to return in a single call to <code>ListProjectMemberships</code>. When the number of memberships to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListProjectMemberships</code> to list the next set of memberships.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     sort_by: "NAME" # One of: ["NAME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_project_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         member_details: { # required
    #           # One of:
    #           user: {
    #             user_id: "String", # required
    #           },
    #           group: {
    #             group_id: "String", # required
    #           }
    #         },
    #         designation: "PROJECT_OWNER" # One of: ["PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_CATALOG_VIEWER", "PROJECT_CATALOG_CONSUMER", "PROJECT_CATALOG_STEWARD"], # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProjectMembershipsOutput]
    def list_project_memberships(params = {}, options = {})
      request = build_request(:list_project_memberships, params)
      request.send_request(options)
    end

    # <p>Lists project profiles.</p>
    # @param [Hash, Types::ListProjectProfilesInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to list project profiles.</p>
    # @option params [String] :name
    #   <p>The name of a project profile.</p>
    # @option params [String] :sort_by
    #   <p>Specifies by what to sort project profiles.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order of the project profiles.</p>
    # @option params [String] :next_token
    #   <p>When the number of project profiles is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of project profiles, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListProjectProfiles to list the next set of project profiles.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of project profiles to return in a single call to ListProjectProfiles. When the number of project profiles to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListProjectProfiles to list the next set of project profiles.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectProfileName",
    #     sort_by: "NAME" # One of: ["NAME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_project_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId", # required
    #         id: "ProjectProfileId", # required
    #         name: "ProjectProfileName", # required
    #         description: "Description",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         created_by: "CreatedBy", # required
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         domain_unit_id: "DomainUnitId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProjectProfilesOutput]
    def list_project_profiles(params = {}, options = {})
      request = build_request(:list_project_profiles, params)
      request.send_request(options)
    end

    # <p>Lists Amazon DataZone projects.</p>
    # @param [Hash, Types::ListProjectsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :user_identifier
    #   <p>The identifier of the Amazon DataZone user.</p>
    # @option params [String] :group_identifier
    #   <p>The identifier of a group.</p>
    # @option params [String] :name
    #   <p>The name of the project.</p>
    # @option params [String] :next_token
    #   <p>When the number of projects is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of projects, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListProjects</code> to list the next set of projects.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of projects to return in a single call to <code>ListProjects</code>. When the number of projects to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListProjects</code> to list the next set of projects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "String",
    #     group_identifier: "String",
    #     name: "ProjectName",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId", # required
    #         id: "ProjectId", # required
    #         name: "ProjectName", # required
    #         description: "Description",
    #         project_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"],
    #         failure_reasons: [
    #           {
    #             code: "String",
    #             message: "String"
    #           }
    #         ],
    #         created_by: "CreatedBy", # required
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         domain_unit_id: "DomainUnitId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProjectsOutput]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Lists existing rules. In Amazon DataZone, a rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.</p>
    # @param [Hash, Types::ListRulesInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which the rules are to be listed.</p>
    # @option params [String] :target_type
    #   <p>The target type of the rule.</p>
    # @option params [String] :target_identifier
    #   <p>The target ID of the rule.</p>
    # @option params [String] :rule_type
    #   <p>The type of the rule.</p>
    # @option params [String] :action
    #   <p>The action of the rule.</p>
    # @option params [Array<String>] :project_ids
    #   <p>The IDs of projects in which rules are to be listed.</p>
    # @option params [Array<String>] :asset_types
    #   <p>The asset types of the rule.</p>
    # @option params [Boolean] :data_product
    #   <p>The data product of the rule.</p>
    # @option params [Boolean] :include_cascaded
    #   <p>Specifies whether to include cascading rules in the results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of rules to return in a single call to <code>ListRules</code>. When the number of rules to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListRules</code> to list the next set of rules.</p>
    # @option params [String] :next_token
    #   <p>When the number of rules is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of rules, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListRules</code> to list the next set of rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     target_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"], # required
    #     target_identifier: "String", # required
    #     rule_type: "METADATA_FORM_ENFORCEMENT" # One of: ["METADATA_FORM_ENFORCEMENT"],
    #     action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"],
    #     project_ids: ["ProjectId"],
    #     asset_types: ["AssetTypeIdentifier"],
    #     data_product: false,
    #     include_cascaded: false,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         identifier: "RuleId",
    #         revision: "Revision",
    #         rule_type: "METADATA_FORM_ENFORCEMENT" # One of: ["METADATA_FORM_ENFORCEMENT"],
    #         name: "RuleName",
    #         target_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"],
    #         target: {
    #           # One of:
    #           domain_unit_target: {
    #             domain_unit_id: "DomainUnitId", # required
    #             include_child_domain_units: false
    #           }
    #         },
    #         action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"],
    #         scope: {
    #           asset_type: {
    #             selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #             specific_asset_types: ["AssetTypeIdentifier"]
    #           },
    #           data_product: false,
    #           project: {
    #             selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #             specific_projects: ["ProjectId"]
    #           }
    #         },
    #         updated_at: Time.now,
    #         last_updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRulesOutput]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Lists subscription grants.</p>
    # @param [Hash, Types::ListSubscriptionGrantsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :environment_id
    #   <p>The identifier of the Amazon DataZone environment.</p>
    # @option params [String] :subscription_target_id
    #   <p>The identifier of the subscription target.</p>
    # @option params [String] :subscribed_listing_id
    #   <p>The identifier of the subscribed listing.</p>
    # @option params [String] :subscription_id
    #   <p>The identifier of the subscription.</p>
    # @option params [String] :owning_project_id
    #   <p>The ID of the owning project of the subscription grants.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the way of sorting the results of this action.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order of this action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of subscription grants to return in a single call to <code>ListSubscriptionGrants</code>. When the number of subscription grants to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListSubscriptionGrants</code> to list the next set of subscription grants.</p>
    # @option params [String] :next_token
    #   <p>When the number of subscription grants is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of subscription grants, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionGrants</code> to list the next set of subscription grants.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_id: "EnvironmentId",
    #     subscription_target_id: "SubscriptionTargetId",
    #     subscribed_listing_id: "ListingId",
    #     subscription_id: "SubscriptionId",
    #     owning_project_id: "ProjectId",
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT", "UPDATED_AT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_subscription_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "SubscriptionGrantId", # required
    #         created_by: "CreatedBy", # required
    #         updated_by: "UpdatedBy",
    #         domain_id: "DomainId", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         subscription_target_id: "SubscriptionTargetId", # required
    #         granted_entity: { # required
    #           # One of:
    #           listing: {
    #             id: "ListingId", # required
    #             revision: "Revision", # required
    #           }
    #         },
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"], # required
    #         assets: [
    #           {
    #             asset_id: "AssetId", # required
    #             asset_revision: "Revision", # required
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             target_name: "String",
    #             failure_cause: {
    #               message: "String"
    #             },
    #             granted_timestamp: Time.now,
    #             failure_timestamp: Time.now,
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           }
    #         ],
    #         subscription_id: "SubscriptionId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSubscriptionGrantsOutput]
    def list_subscription_grants(params = {}, options = {})
      request = build_request(:list_subscription_grants, params)
      request.send_request(options)
    end

    # <p>Lists Amazon DataZone subscription requests.</p>
    # @param [Hash, Types::ListSubscriptionRequestsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :status
    #   <p>Specifies the status of the subscription requests.</p> <note> <p>This is not a required parameter, but if not specified, by default, Amazon DataZone returns only <code>PENDING</code> subscription requests. </p> </note>
    # @option params [String] :subscribed_listing_id
    #   <p>The identifier of the subscribed listing.</p>
    # @option params [String] :owning_project_id
    #   <p>The identifier of the project for the subscription requests.</p>
    # @option params [String] :approver_project_id
    #   <p>The identifier of the subscription request approver's project.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the way to sort the results of this action.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of subscription requests to return in a single call to <code>ListSubscriptionRequests</code>. When the number of subscription requests to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListSubscriptionRequests</code> to list the next set of subscription requests.</p>
    # @option params [String] :next_token
    #   <p>When the number of subscription requests is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of subscription requests, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionRequests</code> to list the next set of subscription requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"],
    #     subscribed_listing_id: "ListingId",
    #     owning_project_id: "ProjectId",
    #     approver_project_id: "ProjectId",
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT", "UPDATED_AT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_subscription_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "SubscriptionRequestId", # required
    #         created_by: "CreatedBy", # required
    #         updated_by: "UpdatedBy",
    #         domain_id: "DomainId", # required
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         request_reason: "RequestReason", # required
    #         subscribed_principals: [{ # required
    #           # One of:
    #           project: {
    #             id: "ProjectId",
    #             name: "ProjectName"
    #           }
    #         }],
    #         subscribed_listings: [ # required
    #           {
    #             id: "ListingId", # required
    #             revision: "Revision",
    #             name: "ListingName", # required
    #             description: "Description", # required
    #             item: { # required
    #               # One of:
    #               asset_listing: {
    #                 entity_id: "AssetId",
    #                 entity_revision: "Revision",
    #                 entity_type: "TypeName",
    #                 forms: "Forms",
    #                 glossary_terms: [
    #                   {
    #                     name: "GlossaryTermName",
    #                     short_description: "ShortDescription"
    #                   }
    #                 ],
    #                 asset_scope: {
    #                   asset_id: "AssetId", # required
    #                   filter_ids: ["FilterId"], # required
    #                   status: "String", # required
    #                   error_message: "String"
    #                 }
    #               },
    #               product_listing: {
    #                 entity_id: "AssetId",
    #                 entity_revision: "Revision",
    #                 glossary_terms: [
    #                   {
    #                     name: "GlossaryTermName",
    #                     short_description: "ShortDescription"
    #                   }
    #                 ],
    #                 name: "String",
    #                 description: "String",
    #                 asset_listings: [
    #                   {
    #                     entity_id: "String",
    #                     entity_revision: "String",
    #                     entity_type: "String"
    #                   }
    #                 ]
    #               }
    #             },
    #             owner_project_id: "ProjectId", # required
    #             owner_project_name: "String"
    #           }
    #         ],
    #         reviewer_id: "String",
    #         decision_comment: "DecisionComment",
    #         existing_subscription_id: "SubscriptionId",
    #         metadata_forms_summary: [
    #           {
    #             form_name: "FormName",
    #             type_name: "FormTypeName", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSubscriptionRequestsOutput]
    def list_subscription_requests(params = {}, options = {})
      request = build_request(:list_subscription_requests, params)
      request.send_request(options)
    end

    # <p>Lists subscription targets in Amazon DataZone.</p>
    # @param [Hash, Types::ListSubscriptionTargetsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain where you want to list subscription targets.</p>
    # @option params [String] :environment_identifier
    #   <p>The identifier of the environment where you want to list subscription targets.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the way in which the results of this action are to be sorted.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of subscription targets to return in a single call to <code>ListSubscriptionTargets</code>. When the number of subscription targets to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListSubscriptionTargets</code> to list the next set of subscription targets. </p>
    # @option params [String] :next_token
    #   <p>When the number of subscription targets is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of subscription targets, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListSubscriptionTargets</code> to list the next set of subscription targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT", "UPDATED_AT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_subscription_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "SubscriptionTargetId", # required
    #         authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #         domain_id: "DomainId", # required
    #         project_id: "ProjectId", # required
    #         environment_id: "EnvironmentId", # required
    #         name: "SubscriptionTargetName", # required
    #         type: "String", # required
    #         created_by: "CreatedBy", # required
    #         updated_by: "UpdatedBy",
    #         created_at: Time.now, # required
    #         updated_at: Time.now,
    #         manage_access_role: "IamRoleArn",
    #         applicable_asset_types: ["TypeName"], # required
    #         subscription_target_config: [ # required
    #           {
    #             form_name: "FormName", # required
    #             content: "String", # required
    #           }
    #         ],
    #         provider: "String", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSubscriptionTargetsOutput]
    def list_subscription_targets(params = {}, options = {})
      request = build_request(:list_subscription_targets, params)
      request.send_request(options)
    end

    # <p>Lists subscriptions in Amazon DataZone.</p>
    # @param [Hash, Types::ListSubscriptionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :subscription_request_identifier
    #   <p>The identifier of the subscription request for the subscriptions that you want to list.</p>
    # @option params [String] :status
    #   <p>The status of the subscriptions that you want to list.</p> <note> <p>This is not a required parameter, but if not provided, by default, Amazon DataZone returns only <code>APPROVED</code> subscriptions. </p> </note>
    # @option params [String] :subscribed_listing_id
    #   <p>The identifier of the subscribed listing for the subscriptions that you want to list.</p>
    # @option params [String] :owning_project_id
    #   <p>The identifier of the owning project.</p>
    # @option params [String] :approver_project_id
    #   <p>The identifier of the project for the subscription's approver.</p>
    # @option params [String] :sort_by
    #   <p>Specifies the way in which the results of this action are to be sorted.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order for the results of this action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of subscriptions to return in a single call to <code>ListSubscriptions</code>. When the number of subscriptions to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListSubscriptions</code> to list the next set of Subscriptions. </p>
    # @option params [String] :next_token
    #   <p>When the number of subscriptions is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of subscriptions, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListSubscriptions</code> to list the next set of subscriptions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     subscription_request_identifier: "SubscriptionRequestId",
    #     status: "APPROVED" # One of: ["APPROVED", "REVOKED", "CANCELLED"],
    #     subscribed_listing_id: "ListingId",
    #     owning_project_id: "ProjectId",
    #     approver_project_id: "ProjectId",
    #     sort_by: "CREATED_AT" # One of: ["CREATED_AT", "UPDATED_AT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "SubscriptionId", # required
    #         created_by: "CreatedBy", # required
    #         updated_by: "UpdatedBy",
    #         domain_id: "DomainId", # required
    #         status: "APPROVED" # One of: ["APPROVED", "REVOKED", "CANCELLED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         subscribed_principal: { # required
    #           # One of:
    #           project: {
    #             id: "ProjectId",
    #             name: "ProjectName"
    #           }
    #         },
    #         subscribed_listing: { # required
    #           id: "ListingId", # required
    #           revision: "Revision",
    #           name: "ListingName", # required
    #           description: "Description", # required
    #           item: { # required
    #             # One of:
    #             asset_listing: {
    #               entity_id: "AssetId",
    #               entity_revision: "Revision",
    #               entity_type: "TypeName",
    #               forms: "Forms",
    #               glossary_terms: [
    #                 {
    #                   name: "GlossaryTermName",
    #                   short_description: "ShortDescription"
    #                 }
    #               ],
    #               asset_scope: {
    #                 asset_id: "AssetId", # required
    #                 filter_ids: ["FilterId"], # required
    #                 status: "String", # required
    #                 error_message: "String"
    #               }
    #             },
    #             product_listing: {
    #               entity_id: "AssetId",
    #               entity_revision: "Revision",
    #               glossary_terms: [
    #                 {
    #                   name: "GlossaryTermName",
    #                   short_description: "ShortDescription"
    #                 }
    #               ],
    #               name: "String",
    #               description: "String",
    #               asset_listings: [
    #                 {
    #                   entity_id: "String",
    #                   entity_revision: "String",
    #                   entity_type: "String"
    #                 }
    #               ]
    #             }
    #           },
    #           owner_project_id: "ProjectId", # required
    #           owner_project_name: "String"
    #         },
    #         subscription_request_id: "SubscriptionRequestId",
    #         retain_permissions: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSubscriptionsOutput]
    def list_subscriptions(params = {}, options = {})
      request = build_request(:list_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists tags for the specified resource in Amazon DataZone.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists time series data points.</p>
    # @param [Hash, Types::ListTimeSeriesDataPointsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain that houses the assets for which you want to list time series data points.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset for which you want to list data points.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset for which you want to list data points.</p>
    # @option params [String] :form_name
    #   <p>The name of the time series data points form.</p>
    # @option params [Time] :started_at
    #   <p>The timestamp at which the data points that you want to list started.</p>
    # @option params [Time] :ended_at
    #   <p>The timestamp at which the data points that you wanted to list ended.</p>
    # @option params [String] :next_token
    #   <p>When the number of data points is greater than the default value for the MaxResults parameter, or if you explicitly specify a value for MaxResults that is less than the number of data points, the response includes a pagination token named NextToken. You can specify this NextToken value in a subsequent call to ListTimeSeriesDataPoints to list the next set of data points.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data points to return in a single call to ListTimeSeriesDataPoints. When the number of data points to be listed is greater than the value of MaxResults, the response contains a NextToken value that you can use in a subsequent call to ListTimeSeriesDataPoints to list the next set of data points.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"], # required
    #     form_name: "TimeSeriesFormName", # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_time_series_data_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content_summary: "String",
    #         id: "DataPointIdentifier"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTimeSeriesDataPointsOutput]
    def list_time_series_data_points(params = {}, options = {})
      request = build_request(:list_time_series_data_points, params)
      request.send_request(options)
    end

    # <p>Posts a data lineage event.</p>
    # @param [Hash, Types::PostLineageEventInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to post a data lineage event.</p>
    # @option params [String] :event
    #   <p>The data lineage event that you want to post. Only open-lineage run event are supported as events. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     event: "data", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.post_lineage_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "LineageEventIdentifier",
    #     domain_id: "DomainId"
    #   }
    # @return [Types::PostLineageEventOutput]
    def post_lineage_event(params = {}, options = {})
      request = build_request(:post_lineage_event, params)
      request.send_request(options)
    end

    # <p>Posts time series data points to Amazon DataZone for the specified asset.</p>
    # @param [Hash, Types::PostTimeSeriesDataPointsInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain in which you want to post time series data points.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the asset for which you want to post time series data points.</p>
    # @option params [String] :entity_type
    #   <p>The type of the asset for which you want to post data points.</p>
    # @option params [Array<Types::TimeSeriesDataPointFormInput>] :forms
    #   <p>The forms that contain the data points that you want to post.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"], # required
    #     forms: [ # required
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content: "String"
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.post_time_series_data_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     entity_id: "EntityId",
    #     entity_type: "ASSET" # One of: ["ASSET", "LISTING"],
    #     forms: [
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content: "String",
    #         id: "DataPointIdentifier"
    #       }
    #     ]
    #   }
    # @return [Types::PostTimeSeriesDataPointsOutput]
    def post_time_series_data_points(params = {}, options = {})
      request = build_request(:post_time_series_data_points, params)
      request.send_request(options)
    end

    # <p>Writes the configuration for the specified environment blueprint in Amazon DataZone.</p>
    # @param [Hash, Types::PutEnvironmentBlueprintConfigurationInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :environment_blueprint_identifier
    #   <p>The identifier of the environment blueprint.</p>
    # @option params [String] :provisioning_role_arn
    #   <p>The ARN of the provisioning role.</p>
    # @option params [String] :manage_access_role_arn
    #   <p>The ARN of the manage access role.</p>
    # @option params [String] :environment_role_permission_boundary
    #   <p>The environment role permissions boundary.</p>
    # @option params [Array<String>] :enabled_regions
    #   <p>Specifies the enabled Amazon Web Services Regions.</p>
    # @option params [Hash<String, Hash<String, String>>] :regional_parameters
    #   <p>The regional parameters in the environment blueprint.</p>
    # @option params [Hash<String, String>] :global_parameters
    #   <p>Region-agnostic environment blueprint parameters. </p>
    # @option params [Array<Types::ProvisioningConfiguration>] :provisioning_configurations
    #   <p>The provisioning configuration of a blueprint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     provisioning_role_arn: "RoleArn",
    #     manage_access_role_arn: "RoleArn",
    #     environment_role_permission_boundary: "PolicyArn",
    #     enabled_regions: ["RegionName"], # required
    #     regional_parameters: {
    #       "RegionName" => {
    #         "String" => "String"
    #       }
    #     },
    #     global_parameters: {
    #       "String" => "String"
    #     },
    #     provisioning_configurations: [{
    #       # One of:
    #       lake_formation_configuration: {
    #         location_registration_role: "RoleArn",
    #         location_registration_exclude_s3_locations: ["S3Location"]
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.put_environment_blueprint_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     environment_blueprint_id: "EnvironmentBlueprintId", # required
    #     provisioning_role_arn: "RoleArn",
    #     environment_role_permission_boundary: "PolicyArn",
    #     manage_access_role_arn: "RoleArn",
    #     enabled_regions: ["RegionName"],
    #     regional_parameters: {
    #       "RegionName" => {
    #         "String" => "String"
    #       }
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     provisioning_configurations: [{
    #       # One of:
    #       lake_formation_configuration: {
    #         location_registration_role: "RoleArn",
    #         location_registration_exclude_s3_locations: ["S3Location"]
    #       }
    #     }]
    #   }
    # @return [Types::PutEnvironmentBlueprintConfigurationOutput]
    def put_environment_blueprint_configuration(params = {}, options = {})
      request = build_request(:put_environment_blueprint_configuration, params)
      request.send_request(options)
    end

    # <p>Rejects automatically generated business-friendly metadata for your Amazon DataZone assets.</p>
    # @param [Hash, Types::RejectPredictionsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the prediction.</p>
    # @option params [String] :revision
    #   <p>The revision that is to be made to the asset.</p>
    # @option params [Types::RejectRule] :reject_rule
    #   <p>Specifies the rule (or the conditions) under which a prediction can be rejected.</p>
    # @option params [Array<Types::RejectChoice>] :reject_choices
    #   <p>Specifies the prediction (aka, the automatically generated piece of metadata) and the target (for example, a column name) that can be rejected.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #     reject_rule: {
    #       rule: "ALL" # One of: ["ALL", "NONE"],
    #       threshold: 1.0
    #     },
    #     reject_choices: [
    #       {
    #         prediction_target: "String", # required
    #         prediction_choices: [1]
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.reject_predictions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     asset_id: "AssetId", # required
    #     asset_revision: "Revision", # required
    #   }
    # @return [Types::RejectPredictionsOutput]
    def reject_predictions(params = {}, options = {})
      request = build_request(:reject_predictions, params)
      request.send_request(options)
    end

    # <p>Rejects the specified subscription request.</p>
    # @param [Hash, Types::RejectSubscriptionRequestInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which the subscription request was rejected.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the subscription request that was rejected.</p>
    # @option params [String] :decision_comment
    #   <p>The decision comment of the rejected subscription request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     decision_comment: "DecisionComment"
    #   }
    #   options = {}
    #   response = client.reject_subscription_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionRequestId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     request_reason: "RequestReason", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         id: "ListingId", # required
    #         revision: "Revision",
    #         name: "ListingName", # required
    #         description: "Description", # required
    #         item: { # required
    #           # One of:
    #           asset_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             entity_type: "TypeName",
    #             forms: "Forms",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           },
    #           product_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             name: "String",
    #             description: "String",
    #             asset_listings: [
    #               {
    #                 entity_id: "String",
    #                 entity_revision: "String",
    #                 entity_type: "String"
    #               }
    #             ]
    #           }
    #         },
    #         owner_project_id: "ProjectId", # required
    #         owner_project_name: "String"
    #       }
    #     ],
    #     reviewer_id: "String",
    #     decision_comment: "DecisionComment",
    #     existing_subscription_id: "SubscriptionId",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::RejectSubscriptionRequestOutput]
    def reject_subscription_request(params = {}, options = {})
      request = build_request(:reject_subscription_request, params)
      request.send_request(options)
    end

    # <p>Removes an owner from an entity.</p>
    # @param [Hash, Types::RemoveEntityOwnerInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to remove an owner from an entity.</p>
    # @option params [String] :entity_type
    #   <p>The type of the entity from which you want to remove an owner.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity from which you want to remove an owner.</p>
    # @option params [Types::OwnerProperties] :owner
    #   <p>The owner that you want to remove from an entity.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT"], # required
    #     entity_identifier: "String", # required
    #     owner: { # required
    #       # One of:
    #       user: {
    #         user_identifier: "UserIdentifier", # required
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.remove_entity_owner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveEntityOwnerOutput]
    def remove_entity_owner(params = {}, options = {})
      request = build_request(:remove_entity_owner, params)
      request.send_request(options)
    end

    # <p>Removes a policy grant.</p>
    # @param [Hash, Types::RemovePolicyGrantInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to remove a policy grant.</p>
    # @option params [String] :entity_type
    #   <p>The type of the entity from which you want to remove a policy grant.</p>
    # @option params [String] :entity_identifier
    #   <p>The ID of the entity from which you want to remove a policy grant.</p>
    # @option params [String] :policy_type
    #   <p>The type of the policy that you want to remove.</p>
    # @option params [Types::PolicyGrantPrincipal] :principal
    #   <p>The principal from which you want to remove a policy grant.</p>
    # @option params [String] :grant_identifier
    #   <p>The ID of the policy grant that is to be removed from a specified entity.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT" # One of: ["DOMAIN_UNIT", "ENVIRONMENT_BLUEPRINT_CONFIGURATION", "ENVIRONMENT_PROFILE", "ASSET_TYPE"], # required
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT" # One of: ["CREATE_DOMAIN_UNIT", "OVERRIDE_DOMAIN_UNIT_OWNERS", "ADD_TO_PROJECT_MEMBER_POOL", "OVERRIDE_PROJECT_OWNERS", "CREATE_GLOSSARY", "CREATE_FORM_TYPE", "CREATE_ASSET_TYPE", "CREATE_PROJECT", "CREATE_ENVIRONMENT_PROFILE", "DELEGATE_CREATE_ENVIRONMENT_PROFILE", "CREATE_ENVIRONMENT", "CREATE_ENVIRONMENT_FROM_BLUEPRINT", "CREATE_PROJECT_FROM_PROJECT_PROFILE", "USE_ASSET_TYPE"], # required
    #     principal: { # required
    #       # One of:
    #       user: {
    #         # One of:
    #         user_identifier: "UserIdentifier",
    #         all_users_grant_filter: {
    #         }
    #       },
    #       group: {
    #         # One of:
    #         group_identifier: "GroupIdentifier"
    #       },
    #       project: {
    #         project_designation: "OWNER" # One of: ["OWNER", "CONTRIBUTOR", "PROJECT_CATALOG_STEWARD"], # required
    #         project_identifier: "ProjectId",
    #         project_grant_filter: {
    #           # One of:
    #           domain_unit_filter: {
    #             domain_unit: "DomainUnitId", # required
    #             include_child_domain_units: false
    #           }
    #         }
    #       },
    #       domain_unit: {
    #         domain_unit_designation: "OWNER" # One of: ["OWNER"], # required
    #         domain_unit_identifier: "DomainUnitId",
    #         domain_unit_grant_filter: {
    #           # One of:
    #           all_domain_units_grant_filter: {
    #           }
    #         }
    #       }
    #     },
    #     grant_identifier: "GrantIdentifier",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.remove_policy_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemovePolicyGrantOutput]
    def remove_policy_grant(params = {}, options = {})
      request = build_request(:remove_policy_grant, params)
      request.send_request(options)
    end

    # <p>Revokes a specified subscription in Amazon DataZone.</p>
    # @param [Hash, Types::RevokeSubscriptionInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain where you want to revoke a subscription.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the revoked subscription.</p>
    # @option params [Boolean] :retain_permissions
    #   <p>Specifies whether permissions are retained when the subscription is revoked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #     retain_permissions: false
    #   }
    #   options = {}
    #   response = client.revoke_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "APPROVED" # One of: ["APPROVED", "REVOKED", "CANCELLED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscribed_principal: { # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     },
    #     subscribed_listing: { # required
    #       id: "ListingId", # required
    #       revision: "Revision",
    #       name: "ListingName", # required
    #       description: "Description", # required
    #       item: { # required
    #         # One of:
    #         asset_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           entity_type: "TypeName",
    #           forms: "Forms",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           asset_scope: {
    #             asset_id: "AssetId", # required
    #             filter_ids: ["FilterId"], # required
    #             status: "String", # required
    #             error_message: "String"
    #           }
    #         },
    #         product_listing: {
    #           entity_id: "AssetId",
    #           entity_revision: "Revision",
    #           glossary_terms: [
    #             {
    #               name: "GlossaryTermName",
    #               short_description: "ShortDescription"
    #             }
    #           ],
    #           name: "String",
    #           description: "String",
    #           asset_listings: [
    #             {
    #               entity_id: "String",
    #               entity_revision: "String",
    #               entity_type: "String"
    #             }
    #           ]
    #         }
    #       },
    #       owner_project_id: "ProjectId", # required
    #       owner_project_name: "String"
    #     },
    #     subscription_request_id: "SubscriptionRequestId",
    #     retain_permissions: false
    #   }
    # @return [Types::RevokeSubscriptionOutput]
    def revoke_subscription(params = {}, options = {})
      request = build_request(:revoke_subscription, params)
      request.send_request(options)
    end

    # <p>Searches for assets in Amazon DataZone.</p> <p>Search in Amazon DataZone is a powerful capability that enables users to discover and explore data assets, glossary terms, and data products across their organization. It provides both basic and advanced search functionality, allowing users to find resources based on names, descriptions, metadata, and other attributes. Search can be scoped to specific types of resources (like assets, glossary terms, or data products) and can be filtered using various criteria such as creation date, owner, or status. The search functionality is essential for making the wealth of data resources in an organization discoverable and usable, helping users find the right data for their needs quickly and efficiently.</p> <p>Many search commands in Amazon DataZone are paginated, including <code>search</code> and <code>search-types</code>. When the result set is large, Amazon DataZone returns a <code>nextToken</code> in the response. This token can be used to retrieve the next page of results. </p> <p>Prerequisites:</p> <ul> <li> <p>The --domain-identifier must refer to an existing Amazon DataZone domain. </p> </li> <li> <p>--search-scope must be one of: ASSET, GLOSSARY_TERM, DATA_PRODUCT, or GLOSSARY.</p> </li> <li> <p>The user must have search permissions in the specified domain.</p> </li> <li> <p>If using --filters, ensure that the JSON is well-formed and that each filter includes valid attribute and value keys. </p> </li> <li> <p>For paginated results, be prepared to use --next-token to fetch additional pages.</p> </li> </ul>
    # @param [Hash, Types::SearchInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The identifier of the owning project specified for the search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call to <code>Search</code>. When the number of results to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>Search</code> to list the next set of results.</p>
    # @option params [String] :next_token
    #   <p>When the number of results is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of results, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>Search</code> to list the next set of results.</p>
    # @option params [String] :search_scope
    #   <p>The scope of the search.</p>
    # @option params [String] :search_text
    #   <p>Specifies the text for which to search.</p>
    # @option params [Array<Types::SearchInItem>] :search_in
    #   <p>The details of the search.</p>
    # @option params [Types::FilterClause] :filters
    #   <p>Specifies the search filters.</p>
    # @option params [Types::SearchSort] :sort
    #   <p>Specifies the way in which the search results are to be sorted.</p>
    # @option params [Array<String>] :additional_attributes
    #   <p>Specifies additional attributes for the <code>Search</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     owning_project_identifier: "ProjectId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_scope: "ASSET" # One of: ["ASSET", "GLOSSARY", "GLOSSARY_TERM", "DATA_PRODUCT"], # required
    #     search_text: "SearchText",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       }
    #     ],
    #     filters: {
    #       # One of:
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "String", # required
    #       },
    #       and: [{
    #         # recursive FilterClause
    #       }],
    #       or: [{
    #         # recursive FilterClause
    #       }]
    #     },
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     additional_attributes: ["FORMS" # One of: ["FORMS", "TIME_SERIES_DATA_POINT_FORMS", "TEXT_MATCH_RATIONALE"]]
    #   }
    #   options = {}
    #   response = client.search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [{
    #       # One of:
    #       glossary_item: {
    #         domain_id: "DomainId", # required
    #         id: "GlossaryId", # required
    #         name: "GlossaryName", # required
    #         owning_project_id: "ProjectId", # required
    #         description: "GlossaryDescription",
    #         status: "DISABLED" # One of: ["DISABLED", "ENABLED"], # required
    #         usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]],
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         additional_attributes: {
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }]
    #         }
    #       },
    #       glossary_term_item: {
    #         domain_id: "DomainId", # required
    #         glossary_id: "GlossaryId", # required
    #         id: "GlossaryTermId", # required
    #         name: "GlossaryTermName", # required
    #         short_description: "ShortDescription",
    #         usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]],
    #         long_description: "LongDescription",
    #         term_relations: {
    #           is_a: ["GlossaryTermId"],
    #           classifies: ["GlossaryTermId"]
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         additional_attributes: {
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }]
    #         }
    #       },
    #       asset_item: {
    #         domain_id: "DomainId", # required
    #         identifier: "AssetIdentifier", # required
    #         name: "AssetName", # required
    #         type_identifier: "AssetTypeIdentifier", # required
    #         type_revision: "Revision", # required
    #         external_identifier: "ExternalIdentifier",
    #         description: "Description",
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         first_revision_created_at: Time.now,
    #         first_revision_created_by: "CreatedBy",
    #         glossary_terms: ["GlossaryTermId"],
    #         owning_project_id: "ProjectId", # required
    #         additional_attributes: {
    #           forms_output: [
    #             {
    #               form_name: "FormName", # required
    #               type_name: "FormTypeName",
    #               type_revision: "Revision",
    #               content: "String"
    #             }
    #           ],
    #           read_only_forms_output: [
    #             {
    #               form_name: "FormName", # required
    #               type_name: "FormTypeName",
    #               type_revision: "Revision",
    #               content: "String"
    #             }
    #           ],
    #           latest_time_series_data_point_forms_output: [
    #             {
    #               form_name: "TimeSeriesFormName", # required
    #               type_identifier: "FormTypeIdentifier", # required
    #               type_revision: "Revision",
    #               timestamp: Time.now, # required
    #               content_summary: "String",
    #               id: "DataPointIdentifier"
    #             }
    #           ],
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }]
    #         },
    #         governed_glossary_terms: ["GlossaryTermId"]
    #       },
    #       data_product_item: {
    #         domain_id: "DomainId", # required
    #         id: "DataProductId", # required
    #         name: "DataProductName", # required
    #         owning_project_id: "ProjectId", # required
    #         description: "DataProductDescription",
    #         glossary_terms: ["GlossaryTermId"],
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         first_revision_created_at: Time.now,
    #         first_revision_created_by: "CreatedBy",
    #         additional_attributes: {
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }]
    #         }
    #       }
    #     }],
    #     next_token: "PaginationToken",
    #     total_match_count: 1
    #   }
    # @return [Types::SearchOutput]
    def search(params = {}, options = {})
      request = build_request(:search, params)
      request.send_request(options)
    end

    # <p>Searches group profiles in Amazon DataZone.</p>
    # @param [Hash, Types::SearchGroupProfilesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to search group profiles.</p>
    # @option params [String] :group_type
    #   <p>The group type for which to search.</p>
    # @option params [String] :search_text
    #   <p>Specifies the text for which to search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchGroupProfiles</code>. When the number of results to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>SearchGroupProfiles</code> to list the next set of results. </p>
    # @option params [String] :next_token
    #   <p>When the number of results is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of results, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>SearchGroupProfiles</code> to list the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     group_type: "SSO_GROUP" # One of: ["SSO_GROUP", "DATAZONE_SSO_GROUP"], # required
    #     search_text: "GroupSearchText",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.search_group_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId",
    #         id: "GroupProfileId",
    #         status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED"],
    #         group_name: "GroupProfileName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::SearchGroupProfilesOutput]
    def search_group_profiles(params = {}, options = {})
      request = build_request(:search_group_profiles, params)
      request.send_request(options)
    end

    # <p>Searches listings in Amazon DataZone.</p> <p>SearchListings is a powerful capability that enables users to discover and explore published assets and data products across their organization. It provides both basic and advanced search functionality, allowing users to find resources based on names, descriptions, metadata, and other attributes. SearchListings also supports filtering using various criteria such as creation date, owner, or status. This API is essential for making the wealth of data resources in an organization discoverable and usable, helping users find the right data for their needs quickly and efficiently.</p> <p>SearchListings returns results in a paginated format. When the result set is large, the response will include a nextToken, which can be used to retrieve the next page of results.</p> <p>The SearchListings API gives users flexibility in specifying what kind of search is run.</p> <p>To run a free-text search, the <code>searchText</code> parameter must be supplied. By default, all searchable fields are indexed for semantic search and will return semantic matches for SearchListings queries. To prevent semantic search indexing for a custom form attribute, see the <a href="https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html">CreateFormType API documentation</a>. To run a lexical search query, enclose the query with double quotes (""). This will disable semantic search even for fields that have semantic search enabled and will only return results that contain the keywords wrapped by double quotes (order of tokens in the query is not enforced). Free-text search is supported for all attributes annotated with @amazon.datazone#searchable.</p> <p>To run a filtered search, provide filter clause using the filters parameter. To filter on glossary terms, use the special attribute <code>__DataZoneGlossaryTerms</code>.</p> <p> To find out whether an attribute has been annotated and indexed for a given search type, use the GetFormType API to retrieve the form containing the attribute.</p>
    # @param [Hash, Types::SearchListingsInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain in which to search listings.</p>
    # @option params [String] :search_text
    #   <p>Specifies the text for which to search.</p>
    # @option params [Array<Types::SearchInItem>] :search_in
    #   <p>The details of the search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchListings</code>. When the number of results to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>SearchListings</code> to list the next set of results. </p>
    # @option params [String] :next_token
    #   <p>When the number of results is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of results, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>SearchListings</code> to list the next set of results.</p>
    # @option params [Types::FilterClause] :filters
    #   <p>Specifies the filters for the search of listings.</p>
    # @option params [Array<Types::AggregationListItem>] :aggregations
    #   <p>Enables you to specify one or more attributes to compute and return counts grouped by field values.</p>
    # @option params [Types::SearchSort] :sort
    #   <p>Specifies the way for sorting the search results.</p>
    # @option params [Array<String>] :additional_attributes
    #   <p>Specifies additional attributes for the search.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     search_text: "String",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     filters: {
    #       # One of:
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "String", # required
    #       },
    #       and: [{
    #         # recursive FilterClause
    #       }],
    #       or: [{
    #         # recursive FilterClause
    #       }]
    #     },
    #     aggregations: [
    #       {
    #         attribute: "Attribute", # required
    #         display_value: "AggregationDisplayValue"
    #       }
    #     ],
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     additional_attributes: ["FORMS" # One of: ["FORMS", "TIME_SERIES_DATA_POINT_FORMS", "TEXT_MATCH_RATIONALE"]]
    #   }
    #   options = {}
    #   response = client.search_listings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [{
    #       # One of:
    #       asset_listing: {
    #         listing_id: "ListingId",
    #         listing_revision: "Revision",
    #         name: "AssetName",
    #         entity_id: "AssetId",
    #         entity_revision: "Revision",
    #         entity_type: "TypeName",
    #         description: "Description",
    #         created_at: Time.now,
    #         listing_created_by: "CreatedBy",
    #         listing_updated_by: "UpdatedBy",
    #         glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         governed_glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         owning_project_id: "ProjectId",
    #         additional_attributes: {
    #           forms: "Forms",
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }],
    #           latest_time_series_data_point_forms: [
    #             {
    #               form_name: "TimeSeriesFormName", # required
    #               type_identifier: "FormTypeIdentifier", # required
    #               type_revision: "Revision",
    #               timestamp: Time.now, # required
    #               content_summary: "String",
    #               id: "DataPointIdentifier"
    #             }
    #           ]
    #         }
    #       },
    #       data_product_listing: {
    #         listing_id: "ListingId",
    #         listing_revision: "Revision",
    #         name: "DataProductName",
    #         entity_id: "DataProductId",
    #         entity_revision: "Revision",
    #         description: "Description",
    #         created_at: Time.now,
    #         listing_created_by: "CreatedBy",
    #         listing_updated_by: "UpdatedBy",
    #         glossary_terms: [
    #           {
    #             name: "GlossaryTermName",
    #             short_description: "ShortDescription"
    #           }
    #         ],
    #         owning_project_id: "ProjectId",
    #         additional_attributes: {
    #           forms: "Forms",
    #           match_rationale: [{
    #             # One of:
    #             text_matches: [
    #               {
    #                 attribute: "Attribute",
    #                 text: "String",
    #                 match_offsets: [
    #                   {
    #                     start_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }]
    #         },
    #         items: [
    #           {
    #             listing_id: "ListingId",
    #             listing_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     }],
    #     next_token: "PaginationToken",
    #     total_match_count: 1,
    #     aggregates: [
    #       {
    #         attribute: "Attribute",
    #         display_value: "AggregationDisplayValue",
    #         items: [
    #           {
    #             value: "AggregationAttributeValue",
    #             count: 1,
    #             display_value: "AggregationAttributeDisplayValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::SearchListingsOutput]
    def search_listings(params = {}, options = {})
      request = build_request(:search_listings, params)
      request.send_request(options)
    end

    # <p>Searches for types in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The --domain-identifier must refer to an existing Amazon DataZone domain. </p> </li> <li> <p>--search-scope must be one of the valid values including: ASSET_TYPE, GLOSSARY_TERM_TYPE, DATA_PRODUCT_TYPE.</p> </li> <li> <p>The --managed flag must be present without a value.</p> </li> <li> <p>The user must have permissions for form or asset types in the domain.</p> </li> <li> <p>If using --filters, ensure that the JSON is valid.</p> </li> <li> <p>Filters contain correct structure (attribute, value, operator).</p> </li> </ul>
    # @param [Hash, Types::SearchTypesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to invoke the <code>SearchTypes</code> action.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchTypes</code>. When the number of results to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>SearchTypes</code> to list the next set of results. </p>
    # @option params [String] :next_token
    #   <p>When the number of results is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of results, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>SearchTypes</code> to list the next set of results.</p>
    # @option params [String] :search_scope
    #   <p>Specifies the scope of the search for types.</p>
    # @option params [String] :search_text
    #   <p>Specifies the text for which to search.</p>
    # @option params [Array<Types::SearchInItem>] :search_in
    #   <p>The details of the search.</p>
    # @option params [Types::FilterClause] :filters
    #   <p>The filters for the <code>SearchTypes</code> action.</p>
    # @option params [Types::SearchSort] :sort
    #   <p>The specifies the way to sort the <code>SearchTypes</code> results.</p>
    # @option params [Boolean] :managed
    #   <p>Specifies whether the search is managed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_scope: "ASSET_TYPE" # One of: ["ASSET_TYPE", "FORM_TYPE", "LINEAGE_NODE_TYPE"], # required
    #     search_text: "SearchText",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       }
    #     ],
    #     filters: {
    #       # One of:
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "String", # required
    #       },
    #       and: [{
    #         # recursive FilterClause
    #       }],
    #       or: [{
    #         # recursive FilterClause
    #       }]
    #     },
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     managed: false, # required
    #   }
    #   options = {}
    #   response = client.search_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [{
    #       # One of:
    #       asset_type_item: {
    #         domain_id: "DomainId", # required
    #         name: "TypeName", # required
    #         revision: "Revision", # required
    #         description: "Description",
    #         forms_output: { # required
    #           "FormName" => {
    #             type_name: "FormTypeName", # required
    #             type_revision: "Revision", # required
    #             required: false
    #           }
    #         },
    #         owning_project_id: "ProjectId", # required
    #         origin_domain_id: "DomainId",
    #         origin_project_id: "ProjectId",
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       },
    #       form_type_item: {
    #         domain_id: "DomainId", # required
    #         name: "FormTypeName", # required
    #         revision: "Revision", # required
    #         model: {
    #           # One of:
    #           smithy: "Smithy"
    #         },
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         owning_project_id: "ProjectId",
    #         origin_domain_id: "DomainId",
    #         origin_project_id: "ProjectId",
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         description: "Description",
    #         imports: [
    #           {
    #             name: "FormTypeName", # required
    #             revision: "Revision", # required
    #           }
    #         ]
    #       },
    #       lineage_node_type_item: {
    #         domain_id: "DomainId", # required
    #         name: "String",
    #         description: "String",
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         revision: "Revision", # required
    #         forms_output: { # required
    #           "FormName" => {
    #             type_name: "FormTypeName", # required
    #             type_revision: "Revision", # required
    #             required: false
    #           }
    #         }
    #       }
    #     }],
    #     next_token: "PaginationToken",
    #     total_match_count: 1
    #   }
    # @return [Types::SearchTypesOutput]
    def search_types(params = {}, options = {})
      request = build_request(:search_types, params)
      request.send_request(options)
    end

    # <p>Searches user profiles in Amazon DataZone.</p>
    # @param [Hash, Types::SearchUserProfilesInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which you want to search user profiles.</p>
    # @option params [String] :user_type
    #   <p>Specifies the user type for the <code>SearchUserProfiles</code> action.</p>
    # @option params [String] :search_text
    #   <p>Specifies the text for which to search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call to <code>SearchUserProfiles</code>. When the number of results to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>SearchUserProfiles</code> to list the next set of results. </p>
    # @option params [String] :next_token
    #   <p>When the number of results is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of results, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>SearchUserProfiles</code> to list the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     user_type: "SSO_USER" # One of: ["SSO_USER", "DATAZONE_USER", "DATAZONE_SSO_USER", "DATAZONE_IAM_USER"], # required
    #     search_text: "UserSearchText",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.search_user_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "DomainId",
    #         id: "UserProfileId",
    #         type: "IAM" # One of: ["IAM", "SSO"],
    #         status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"],
    #         details: {
    #           # One of:
    #           iam: {
    #             arn: "String",
    #             principal_id: "String"
    #           },
    #           sso: {
    #             username: "UserProfileName",
    #             first_name: "FirstName",
    #             last_name: "LastName"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::SearchUserProfilesOutput]
    def search_user_profiles(params = {}, options = {})
      request = build_request(:search_user_profiles, params)
      request.send_request(options)
    end

    # <p>Start the run of the specified data source in Amazon DataZone.</p>
    # @param [Hash, Types::StartDataSourceRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which to start a data source run.</p>
    # @option params [String] :data_source_identifier
    #   <p>The identifier of the data source.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     data_source_identifier: "DataSourceId", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.start_data_source_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     data_source_id: "DataSourceId", # required
    #     id: "DataSourceRunId", # required
    #     project_id: "ProjectId", # required
    #     status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"], # required
    #     type: "PRIORITIZED" # One of: ["PRIORITIZED", "SCHEDULED"], # required
    #     data_source_configuration_snapshot: "String",
    #     run_statistics_for_assets: {
    #       added: 1,
    #       updated: 1,
    #       unchanged: 1,
    #       skipped: 1,
    #       failed: 1
    #     },
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     started_at: Time.now,
    #     stopped_at: Time.now
    #   }
    # @return [Types::StartDataSourceRunOutput]
    def start_data_source_run(params = {}, options = {})
      request = build_request(:start_data_source_run, params)
      request.send_request(options)
    end

    # <p>Starts the metadata generation run.</p> <p>Prerequisites:</p> <ul> <li> <p>Asset must be created and belong to the specified domain and project. </p> </li> <li> <p>Asset type must be supported for metadata generation (e.g., Amazon Web Services Glue table).</p> </li> <li> <p>Asset must have a structured schema with valid rows and columns.</p> </li> <li> <p>Valid values for --type: BUSINESS_DESCRIPTIONS, BUSINESS_NAMES.</p> </li> <li> <p>The user must have permission to run metadata generation in the domain/project.</p> </li> </ul>
    # @param [Hash, Types::StartMetadataGenerationRunInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where you want to start a metadata generation run.</p>
    # @option params [String] :type
    #   <p>The type of the metadata generation run.</p>
    # @option params [Types::MetadataGenerationRunTarget] :target
    #   <p>The asset for which you want to start a metadata generation run.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This field is automatically populated if not provided.</p>
    # @option params [String] :owning_project_identifier
    #   <p>The ID of the project that owns the asset for which you want to start a metadata generation run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     type: "BUSINESS_DESCRIPTIONS" # One of: ["BUSINESS_DESCRIPTIONS"], # required
    #     target: { # required
    #       type: "ASSET" # One of: ["ASSET"], # required
    #       identifier: "String", # required
    #       revision: "Revision"
    #     },
    #     client_token: "ClientToken",
    #     owning_project_identifier: "ProjectId", # required
    #   }
    #   options = {}
    #   response = client.start_metadata_generation_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "MetadataGenerationRunIdentifier", # required
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"],
    #     type: "BUSINESS_DESCRIPTIONS" # One of: ["BUSINESS_DESCRIPTIONS"],
    #     created_at: Time.now,
    #     created_by: "CreatedBy",
    #     owning_project_id: "ProjectId"
    #   }
    # @return [Types::StartMetadataGenerationRunOutput]
    def start_metadata_generation_run(params = {}, options = {})
      request = build_request(:start_metadata_generation_run, params)
      request.send_request(options)
    end

    # <p>Tags a resource in Amazon DataZone.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be tagged in Amazon DataZone.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specifies the tags for the <code>TagResource</code> action.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Untags a resource in Amazon DataZone.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be untagged in Amazon DataZone.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the tag keys for the <code>UntagResource</code> action.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the account pool.</p>
    # @param [Hash, Types::UpdateAccountPoolInput] params
    # @option params [String] :domain_identifier
    #   <p>The domain ID where the account pool that is to be updated lives.</p>
    # @option params [String] :identifier
    #   <p>The ID of the account pool that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name of the account pool that is to be updated.</p>
    # @option params [String] :description
    #   <p>The description of the account pool that is to be udpated.</p>
    # @option params [String] :resolution_strategy
    #   <p>The mechanism used to resolve the account selection from the account pool.</p>
    # @option params [Types::AccountSource] :account_source
    #   <p>The source of accounts for the account pool. In the current release, it's either a static list of accounts provided by the customer or a custom Amazon Web Services Lambda handler. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #     name: "AccountPoolName",
    #     description: "Description",
    #     resolution_strategy: "MANUAL" # One of: ["MANUAL"],
    #     account_source: {
    #       # One of:
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName"
    #         }
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     name: "AccountPoolName",
    #     id: "AccountPoolId",
    #     description: "Description",
    #     resolution_strategy: "MANUAL" # One of: ["MANUAL"],
    #     account_source: { # required
    #       # One of:
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName"
    #         }
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn"
    #       }
    #     },
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::UpdateAccountPoolOutput]
    def update_account_pool(params = {}, options = {})
      request = build_request(:update_account_pool, params)
      request.send_request(options)
    end

    # <p>Updates an asset filter.</p> <p>Prerequisites:</p> <ul> <li> <p>The domain, asset, and asset filter identifier must all exist. </p> </li> <li> <p>The asset must contain the columns being referenced in the update.</p> </li> <li> <p>If applying a row filter, ensure the column referenced in the expression exists in the asset schema.</p> </li> </ul>
    # @param [Hash, Types::UpdateAssetFilterInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to update an asset filter.</p>
    # @option params [String] :asset_identifier
    #   <p>The ID of the data asset.</p>
    # @option params [String] :identifier
    #   <p>The ID of the asset filter.</p>
    # @option params [String] :name
    #   <p>The name of the asset filter.</p>
    # @option params [String] :description
    #   <p>The description of the asset filter.</p>
    # @option params [Types::AssetFilterConfiguration] :configuration
    #   <p>The configuration of the asset filter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #     name: "String",
    #     description: "Description",
    #     configuration: {
    #       # One of:
    #       column_configuration: {
    #         included_column_names: ["String"]
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           # One of:
    #           expression: {
    #             # One of:
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             }
    #           },
    #           and: [{
    #             # recursive RowFilter
    #           }],
    #           or: [{
    #             # recursive RowFilter
    #           }]
    #         },
    #         sensitive: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_asset_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "FilterId", # required
    #     domain_id: "DomainId", # required
    #     asset_id: "AssetId", # required
    #     name: "FilterName", # required
    #     description: "Description",
    #     status: "VALID" # One of: ["VALID", "INVALID"],
    #     configuration: { # required
    #       # One of:
    #       column_configuration: {
    #         included_column_names: ["String"]
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           # One of:
    #           expression: {
    #             # One of:
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             }
    #           },
    #           and: [{
    #             # recursive RowFilter
    #           }],
    #           or: [{
    #             # recursive RowFilter
    #           }]
    #         },
    #         sensitive: false
    #       }
    #     },
    #     created_at: Time.now,
    #     error_message: "String",
    #     effective_column_names: ["String"],
    #     effective_row_filter: "String"
    #   }
    # @return [Types::UpdateAssetFilterOutput]
    def update_asset_filter(params = {}, options = {})
      request = build_request(:update_asset_filter, params)
      request.send_request(options)
    end

    # <p>Updates a connection. In Amazon DataZone, a connection enables you to connect your resources (domains, projects, and environments) to external resources and services.</p>
    # @param [Hash, Types::UpdateConnectionInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where a connection is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The ID of the connection to be updated.</p>
    # @option params [String] :description
    #   <p>The description of a connection.</p>
    # @option params [Types::AwsLocation] :aws_location
    #   <p>The location where a connection is to be updated.</p>
    # @option params [Types::ConnectionPropertiesPatch] :props
    #   <p>The connection props.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #     description: "Description",
    #     aws_location: {
    #       access_role: "String",
    #       aws_account_id: "AwsAccountId",
    #       aws_region: "AwsRegion",
    #       iam_connection_id: "ConnectionId"
    #     },
    #     props: {
    #       # One of:
    #       athena_properties: {
    #         workgroup_name: "String"
    #       },
    #       glue_properties: {
    #         glue_connection_input: {
    #           description: "String",
    #           connection_properties: {
    #             "String" => "String"
    #           },
    #           authentication_configuration: {
    #             secret_arn: "String",
    #             basic_authentication_credentials: {
    #               user_name: "String",
    #               password: "String"
    #             }
    #           }
    #         }
    #       },
    #       iam_properties: {
    #         glue_lineage_sync_enabled: false
    #       },
    #       redshift_properties: {
    #         storage: {
    #           # One of:
    #           cluster_name: "String",
    #           workgroup_name: "String"
    #         },
    #         database_name: "String",
    #         host: "String",
    #         port: 1,
    #         credentials: {
    #           # One of:
    #           secret_arn: "String",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           }
    #         },
    #         lineage_sync: {
    #           enabled: false,
    #           schedule: {
    #             schedule: "String"
    #           }
    #         }
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "String",
    #         instance_profile_arn: "String",
    #         java_virtual_env: "String",
    #         log_uri: "String",
    #         python_virtual_env: "String",
    #         runtime_role: "String",
    #         trusted_certificates_s3_uri: "String",
    #         managed_endpoint_arn: "String"
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_id: "ConnectionId", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     domain_unit_id: "DomainUnitId", # required
    #     environment_id: "EnvironmentId",
    #     name: "ConnectionName", # required
    #     physical_endpoints: [ # required
    #       {
    #         aws_location: {
    #           access_role: "String",
    #           aws_account_id: "AwsAccountId",
    #           aws_region: "AwsRegion",
    #           iam_connection_id: "ConnectionId"
    #         },
    #         glue_connection_name: "String",
    #         glue_connection: {
    #           name: "String",
    #           description: "String",
    #           connection_type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"],
    #           match_criteria: ["String"],
    #           connection_properties: {
    #             "String" => "String"
    #           },
    #           spark_properties: {
    #             "String" => "String"
    #           },
    #           athena_properties: {
    #             "String" => "String"
    #           },
    #           python_properties: {
    #             "String" => "String"
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "SubnetId",
    #             subnet_id_list: ["SubnetId"],
    #             security_group_id_list: ["String"],
    #             availability_zone: "String"
    #           },
    #           creation_time: Time.now,
    #           last_updated_time: Time.now,
    #           last_updated_by: "String",
    #           status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #           status_reason: "String",
    #           last_connection_validation_time: Time.now,
    #           authentication_configuration: {
    #             authentication_type: "BASIC" # One of: ["BASIC", "OAUTH2", "CUSTOM"],
    #             secret_arn: "String",
    #             o_auth2_properties: {
    #               o_auth2_grant_type: "AUTHORIZATION_CODE" # One of: ["AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"],
    #               o_auth2_client_application: {
    #                 user_managed_client_application_client_id: "String",
    #                 a_ws_managed_client_application_reference: "String"
    #               },
    #               token_url: "String",
    #               token_url_parameters_map: {
    #                 "String" => "String"
    #               },
    #               authorization_code_properties: {
    #                 authorization_code: "String",
    #                 redirect_uri: "String"
    #               },
    #               o_auth2_credentials: {
    #                 user_managed_client_application_client_secret: "String",
    #                 access_token: "String",
    #                 refresh_token: "String",
    #                 jwt_token: "String"
    #               }
    #             }
    #           },
    #           connection_schema_version: 1,
    #           compatible_compute_environments: ["SPARK" # One of: ["SPARK", "ATHENA", "PYTHON"]]
    #         },
    #         host: "String",
    #         port: 1,
    #         protocol: "ATHENA" # One of: ["ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"],
    #         stage: "String"
    #       }
    #     ],
    #     project_id: "ProjectId",
    #     props: {
    #       # One of:
    #       athena_properties: {
    #         workgroup_name: "String"
    #       },
    #       glue_properties: {
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       },
    #       hyper_pod_properties: {
    #         cluster_name: "String", # required
    #         cluster_arn: "String",
    #         orchestrator: "EKS" # One of: ["EKS", "SLURM"]
    #       },
    #       iam_properties: {
    #         environment_id: "String",
    #         glue_lineage_sync_enabled: false
    #       },
    #       redshift_properties: {
    #         storage: {
    #           # One of:
    #           cluster_name: "String",
    #           workgroup_name: "String"
    #         },
    #         credentials: {
    #           # One of:
    #           secret_arn: "String",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           }
    #         },
    #         is_provisioned_secret: false,
    #         jdbc_iam_url: "String",
    #         jdbc_url: "String",
    #         redshift_temp_dir: "String",
    #         lineage_sync: {
    #           lineage_job_id: "String",
    #           enabled: false,
    #           schedule: {
    #             schedule: "String"
    #           }
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         database_name: "String"
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "String",
    #         credentials: {
    #           password: "Password", # required
    #           username: "Username", # required
    #         },
    #         credentials_expiration: Time.now,
    #         governance_type: "AWS_MANAGED" # One of: ["AWS_MANAGED", "USER_MANAGED"],
    #         instance_profile_arn: "String",
    #         java_virtual_env: "String",
    #         livy_endpoint: "String",
    #         log_uri: "String",
    #         python_virtual_env: "String",
    #         runtime_role: "String",
    #         trusted_certificates_s3_uri: "String",
    #         certificate_data: "String",
    #         managed_endpoint_arn: "String",
    #         managed_endpoint_credentials: {
    #           id: "String",
    #           token: "String"
    #         }
    #       },
    #       spark_glue_properties: {
    #         additional_args: {
    #           connection: "String"
    #         },
    #         glue_connection_name: "String",
    #         glue_version: "String",
    #         idle_timeout: 1,
    #         java_virtual_env: "String",
    #         number_of_workers: 1,
    #         python_virtual_env: "String",
    #         worker_type: "String"
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"],
    #         error_message: "String"
    #       }
    #     },
    #     type: "ATHENA" # One of: ["ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA"], # required
    #   }
    # @return [Types::UpdateConnectionOutput]
    def update_connection(params = {}, options = {})
      request = build_request(:update_connection, params)
      request.send_request(options)
    end

    # <p>Updates the specified data source in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateDataSourceInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain in which to update a data source.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the data source to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [String] :enable_setting
    #   <p>The enable setting to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Boolean] :publish_on_import
    #   <p>The publish on import setting to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   <p>The asset forms to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Types::ScheduleConfiguration] :schedule
    #   <p>The schedule to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   <p>The configuration to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   <p>The recommendation to be updated as part of the <code>UpdateDataSource</code> action.</p>
    # @option params [Boolean] :retain_permissions_on_revoke_failure
    #   <p>Specifies that the granted permissions are retained in case of a self-subscribe functionality failure for a data source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #     name: "Name",
    #     description: "Description",
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     publish_on_import: false,
    #     asset_forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "String"
    #       }
    #     ],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: {
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false
    #     },
    #     retain_permissions_on_revoke_failure: false
    #   }
    #   options = {}
    #   response = client.update_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DataSourceId", # required
    #     status: "CREATING" # One of: ["CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"],
    #     type: "DataSourceType",
    #     name: "Name", # required
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId",
    #     connection_id: "String",
    #     configuration: {
    #       # One of:
    #       glue_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "String"
    #       },
    #       redshift_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         data_access_role: "String",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE" # One of: ["INCLUDE", "EXCLUDE"], # required
    #                 expression: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "String", # required
    #         },
    #         redshift_storage: { # required
    #           # One of:
    #           redshift_cluster_source: {
    #             cluster_name: "String", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "String", # required
    #           }
    #         }
    #       },
    #       sage_maker_run_configuration: {
    #         account_id: "String",
    #         region: "String",
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"]
    #         }
    #       }
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false
    #     },
    #     enable_setting: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     publish_on_import: false,
    #     asset_forms_output: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ],
    #     schedule: {
    #       timezone: "UTC" # One of: ["UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"],
    #       schedule: "CronString"
    #     },
    #     last_run_status: "REQUESTED" # One of: ["REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"],
    #     last_run_at: Time.now,
    #     last_run_error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     error_message: {
    #       error_type: "ACCESS_DENIED_EXCEPTION" # One of: ["ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"], # required
    #       error_detail: "String"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     self_grant_status: {
    #       # One of:
    #       glue_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       },
    #       redshift_self_grant_status: {
    #         self_grant_status_details: [ # required
    #           {
    #             database_name: "String", # required
    #             schema_name: "String",
    #             status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #             failure_cause: "String"
    #           }
    #         ]
    #       }
    #     },
    #     retain_permissions_on_revoke_failure: false
    #   }
    # @return [Types::UpdateDataSourceOutput]
    def update_data_source(params = {}, options = {})
      request = build_request(:update_data_source, params)
      request.send_request(options)
    end

    # <p>Updates a Amazon DataZone domain.</p>
    # @param [Hash, Types::UpdateDomainInput] params
    # @option params [String] :identifier
    #   <p>The ID of the Amazon Web Services domain that is to be updated.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateDomain</code> action.</p>
    # @option params [Types::SingleSignOn] :single_sign_on
    #   <p>The single sign-on option to be updated as part of the <code>UpdateDomain</code> action.</p>
    # @option params [String] :domain_execution_role
    #   <p>The domain execution role to be updated as part of the <code>UpdateDomain</code> action.</p>
    # @option params [String] :service_role
    #   <p>The service role of the domain.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateDomain</code> action.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DomainId", # required
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC" # One of: ["IAM_IDC", "DISABLED"],
    #       user_assignment: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       idc_instance_arn: "String"
    #     },
    #     domain_execution_role: "RoleArn",
    #     service_role: "RoleArn",
    #     name: "String",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainId", # required
    #     root_domain_unit_id: "DomainUnitId",
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC" # One of: ["IAM_IDC", "DISABLED"],
    #       user_assignment: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       idc_instance_arn: "String"
    #     },
    #     domain_execution_role: "RoleArn",
    #     service_role: "RoleArn",
    #     name: "String",
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateDomainOutput]
    def update_domain(params = {}, options = {})
      request = build_request(:update_domain, params)
      request.send_request(options)
    end

    # <p>Updates the domain unit.</p>
    # @param [Hash, Types::UpdateDomainUnitInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where you want to update a domain unit.</p>
    # @option params [String] :identifier
    #   <p>The ID of the domain unit that you want to update.</p>
    # @option params [String] :description
    #   <p>The description of the domain unit that you want to update.</p>
    # @option params [String] :name
    #   <p>The name of the domain unit that you want to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #     description: "DomainUnitDescription",
    #     name: "DomainUnitName"
    #   }
    #   options = {}
    #   response = client.update_domain_unit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DomainUnitId", # required
    #     domain_id: "DomainId", # required
    #     name: "DomainUnitName", # required
    #     owners: [{ # required
    #       # One of:
    #       user: {
    #         user_id: "String"
    #       },
    #       group: {
    #         group_id: "String"
    #       }
    #     }],
    #     description: "DomainUnitDescription",
    #     parent_domain_unit_id: "DomainUnitId",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     created_by: "CreatedBy",
    #     last_updated_by: "UpdatedBy"
    #   }
    # @return [Types::UpdateDomainUnitOutput]
    def update_domain_unit(params = {}, options = {})
      request = build_request(:update_domain_unit, params)
      request.send_request(options)
    end

    # <p>Updates the specified environment in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateEnvironmentInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the domain in which the environment is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the environment that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms to be updated as part of the <code>UpdateEnvironment</code> action.</p>
    # @option params [String] :blueprint_version
    #   <p>The blueprint version to which the environment should be updated. You can only specify the following string for this parameter: <code>latest</code>.</p>
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   <p>The user parameters of the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #     name: "String",
    #     description: "String",
    #     glossary_terms: ["GlossaryTermId"],
    #     blueprint_version: "String",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_id: "ProjectId", # required
    #     id: "EnvironmentId",
    #     domain_id: "DomainId", # required
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     environment_profile_id: "EnvironmentProfileId",
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     provider: "String", # required
    #     provisioned_resources: [
    #       {
    #         provider: "String",
    #         name: "String",
    #         value: "String", # required
    #         type: "String", # required
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"],
    #     environment_actions: [
    #       {
    #         type: "String", # required
    #         auth: "IAM" # One of: ["IAM", "HTTPS"],
    #         parameters: [ # required
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     last_deployment: {
    #       deployment_id: "String",
    #       deployment_type: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"],
    #       deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"],
    #       failure_reason: {
    #         code: "String",
    #         message: "String", # required
    #       },
    #       messages: ["DeploymentMessage"],
    #       is_deployment_complete: false
    #     },
    #     provisioning_properties: {
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     environment_blueprint_id: "EnvironmentBlueprintId",
    #     environment_configuration_id: "EnvironmentConfigurationId"
    #   }
    # @return [Types::UpdateEnvironmentOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>Updates an environment action.</p>
    # @param [Hash, Types::UpdateEnvironmentActionInput] params
    # @option params [String] :domain_identifier
    #   <p>The domain ID of the environment action.</p>
    # @option params [String] :environment_identifier
    #   <p>The environment ID of the environment action.</p>
    # @option params [String] :identifier
    #   <p>The ID of the environment action.</p>
    # @option params [Types::ActionParameters] :parameters
    #   <p>The parameters of the environment action.</p>
    # @option params [String] :name
    #   <p>The name of the environment action.</p>
    # @option params [String] :description
    #   <p>The description of the environment action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #     parameters: {
    #       # One of:
    #       aws_console_link: {
    #         uri: "String"
    #       }
    #     },
    #     name: "String",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_environment_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     environment_id: "EnvironmentId", # required
    #     id: "EnvironmentActionId", # required
    #     name: "String", # required
    #     parameters: { # required
    #       # One of:
    #       aws_console_link: {
    #         uri: "String"
    #       }
    #     },
    #     description: "String"
    #   }
    # @return [Types::UpdateEnvironmentActionOutput]
    def update_environment_action(params = {}, options = {})
      request = build_request(:update_environment_action, params)
      request.send_request(options)
    end

    # <p>Updates an environment blueprint in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateEnvironmentBlueprintInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which an environment blueprint is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the environment blueprint to be updated.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateEnvironmentBlueprint</code> action.</p>
    # @option params [Types::ProvisioningProperties] :provisioning_properties
    #   <p>The provisioning properties to be updated as part of the <code>UpdateEnvironmentBlueprint</code> action.</p>
    # @option params [Array<Types::CustomParameter>] :user_parameters
    #   <p>The user parameters to be updated as part of the <code>UpdateEnvironmentBlueprint</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #     description: "String",
    #     provisioning_properties: {
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_environment_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentBlueprintId", # required
    #     name: "EnvironmentBlueprintName", # required
    #     description: "Description",
    #     provider: "String", # required
    #     provisioning_properties: { # required
    #       # One of:
    #       cloud_formation: {
    #         template_url: "String", # required
    #       }
    #     },
    #     deployment_properties: {
    #       start_timeout_minutes: 1,
    #       end_timeout_minutes: 1
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::UpdateEnvironmentBlueprintOutput]
    def update_environment_blueprint(params = {}, options = {})
      request = build_request(:update_environment_blueprint, params)
      request.send_request(options)
    end

    # <p>Updates the specified environment profile in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateEnvironmentProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which an environment profile is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the environment profile that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateEnvironmentProfile</code> action.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateEnvironmentProfile</code> action.</p>
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   <p>The user parameters to be updated as part of the <code>UpdateEnvironmentProfile</code> action.</p>
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account in which a specified environment profile is to be udpated.</p>
    # @option params [String] :aws_account_region
    #   <p>The Amazon Web Services Region in which a specified environment profile is to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #     name: "EnvironmentProfileName",
    #     description: "String",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion"
    #   }
    #   options = {}
    #   response = client.update_environment_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EnvironmentProfileId", # required
    #     domain_id: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     created_by: "String", # required
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     name: "EnvironmentProfileName", # required
    #     description: "Description",
    #     environment_blueprint_id: "EnvironmentBlueprintId", # required
    #     project_id: "ProjectId",
    #     user_parameters: [
    #       {
    #         key_name: "String", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false
    #       }
    #     ]
    #   }
    # @return [Types::UpdateEnvironmentProfileOutput]
    def update_environment_profile(params = {}, options = {})
      request = build_request(:update_environment_profile, params)
      request.send_request(options)
    end

    # <p>Updates the business glossary in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>The glossary must exist in the given domain. </p> </li> <li> <p>The caller must have the <code>datazone:UpdateGlossary</code> permission to update it.</p> </li> <li> <p>When updating the name, the new name must be unique within the domain.</p> </li> <li> <p>The glossary must not be deleted or in a terminal state.</p> </li> </ul>
    # @param [Hash, Types::UpdateGlossaryInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the business glossary to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateGlossary</code> action.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateGlossary</code> action.</p>
    # @option params [String] :status
    #   <p>The status to be updated as part of the <code>UpdateGlossary</code> action.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that is provided to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #     name: "GlossaryName",
    #     description: "GlossaryDescription",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_glossary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "GlossaryId", # required
    #     name: "GlossaryName", # required
    #     owning_project_id: "ProjectId", # required
    #     description: "GlossaryDescription",
    #     status: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::UpdateGlossaryOutput]
    def update_glossary(params = {}, options = {})
      request = build_request(:update_glossary, params)
      request.send_request(options)
    end

    # <p>Updates a business glossary term in Amazon DataZone.</p> <p>Prerequisites:</p> <ul> <li> <p>Glossary term must exist in the specified domain. </p> </li> <li> <p>New name must not conflict with existing terms in the same glossary.</p> </li> <li> <p>User must have permissions on the term.</p> </li> <li> <p>The term must not be in DELETED status.</p> </li> </ul>
    # @param [Hash, Types::UpdateGlossaryTermInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a business glossary term is to be updated.</p>
    # @option params [String] :glossary_identifier
    #   <p>The identifier of the business glossary in which a term is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the business glossary term that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    # @option params [String] :short_description
    #   <p>The short description to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    # @option params [String] :long_description
    #   <p>The long description to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    # @option params [Types::TermRelations] :term_relations
    #   <p>The term relations to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    # @option params [String] :status
    #   <p>The status to be updated as part of the <code>UpdateGlossaryTerm</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId",
    #     identifier: "GlossaryTermId", # required
    #     name: "GlossaryTermName",
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"]
    #     },
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_glossary_term(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "GlossaryTermId", # required
    #     domain_id: "DomainId", # required
    #     glossary_id: "GlossaryId", # required
    #     name: "GlossaryTermName", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"]
    #     },
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS" # One of: ["ASSET_GOVERNED_TERMS"]]
    #   }
    # @return [Types::UpdateGlossaryTermOutput]
    def update_glossary_term(params = {}, options = {})
      request = build_request(:update_glossary_term, params)
      request.send_request(options)
    end

    # <p>Updates the specified group profile in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateGroupProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a group profile is updated.</p>
    # @option params [String] :group_identifier
    #   <p>The identifier of the group profile that is updated.</p>
    # @option params [String] :status
    #   <p>The status of the group profile that is updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED"], # required
    #   }
    #   options = {}
    #   response = client.update_group_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "GroupProfileId",
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED"],
    #     group_name: "GroupProfileName"
    #   }
    # @return [Types::UpdateGroupProfileOutput]
    def update_group_profile(params = {}, options = {})
      request = build_request(:update_group_profile, params)
      request.send_request(options)
    end

    # <p>Updates the specified project in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateProjectInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the Amazon DataZone domain where a project is being updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the project that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateProject</code> action.</p>
    # @option params [String] :description
    #   <p>The description to be updated as part of the <code>UpdateProject</code> action.</p>
    # @option params [Array<String>] :glossary_terms
    #   <p>The glossary terms to be updated as part of the <code>UpdateProject</code> action.</p>
    # @option params [String] :domain_unit_id
    #   <p>The ID of the domain unit.</p>
    # @option params [Types::EnvironmentDeploymentDetails] :environment_deployment_details
    #   <p>The environment deployment details of the project.</p>
    # @option params [Array<Types::EnvironmentConfigurationUserParameter>] :user_parameters
    #   <p>The user parameters of the project.</p>
    # @option params [String] :project_profile_version
    #   <p>The project profile version to which the project should be updated. You can only specify the following string for this parameter: <code>latest</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #     name: "ProjectName",
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     environment_deployment_details: {
    #       overall_deployment_status: "PENDING_DEPLOYMENT" # One of: ["PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"],
    #       environment_failure_reasons: {
    #         "String" => [
    #           {
    #             code: "String",
    #             message: "String", # required
    #           }
    #         ]
    #       }
    #     },
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId"
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     project_profile_version: "String"
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectId", # required
    #     name: "ProjectName", # required
    #     description: "Description",
    #     project_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"],
    #     failure_reasons: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     project_profile_id: "ProjectProfileId",
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId"
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     environment_deployment_details: {
    #       overall_deployment_status: "PENDING_DEPLOYMENT" # One of: ["PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"],
    #       environment_failure_reasons: {
    #         "String" => [
    #           {
    #             code: "String",
    #             message: "String", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateProjectOutput]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Updates a project profile.</p>
    # @param [Hash, Types::UpdateProjectProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain where a project profile is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The ID of a project profile that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name of a project profile.</p>
    # @option params [String] :description
    #   <p>The description of a project profile.</p>
    # @option params [String] :status
    #   <p>The status of a project profile.</p>
    # @option params [Array<Types::EnvironmentConfiguration>] :environment_configurations
    #   <p>The environment configurations of a project profile.</p>
    # @option params [String] :domain_unit_identifier
    #   <p>The ID of the domain unit where a project profile is to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #     name: "ProjectProfileName",
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE" # One of: ["ON_CREATE", "ON_DEMAND"],
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ]
    #         },
    #         aws_account: {
    #           # One of:
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath"
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           # One of:
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath"
    #         },
    #         deployment_order: 1
    #       }
    #     ],
    #     domain_unit_identifier: "DomainUnitId"
    #   }
    #   options = {}
    #   response = client.update_project_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId", # required
    #     id: "ProjectProfileId", # required
    #     name: "ProjectProfileName", # required
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE" # One of: ["ON_CREATE", "ON_DEMAND"],
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false
    #             }
    #           ]
    #         },
    #         aws_account: {
    #           # One of:
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath"
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           # One of:
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath"
    #         },
    #         deployment_order: 1
    #       }
    #     ],
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     domain_unit_id: "DomainUnitId"
    #   }
    # @return [Types::UpdateProjectProfileOutput]
    def update_project_profile(params = {}, options = {})
      request = build_request(:update_project_profile, params)
      request.send_request(options)
    end

    # <p>Updates a rule. In Amazon DataZone, a rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.</p>
    # @param [Hash, Types::UpdateRuleInput] params
    # @option params [String] :domain_identifier
    #   <p>The ID of the domain in which a rule is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The ID of the rule that is to be updated</p>
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :description
    #   <p>The description of the rule.</p>
    # @option params [Types::RuleScope] :scope
    #   <p>The scrope of the rule.</p>
    # @option params [Types::RuleDetail] :detail
    #   <p>The detail of the rule.</p>
    # @option params [Boolean] :include_child_domain_units
    #   <p>Specifies whether to update this rule in the child domain units.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #     name: "RuleName",
    #     description: "Description",
    #     scope: {
    #       asset_type: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_asset_types: ["AssetTypeIdentifier"]
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_projects: ["ProjectId"]
    #       }
    #     },
    #     detail: {
    #       # One of:
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     },
    #     include_child_domain_units: false
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "RuleId", # required
    #     revision: "Revision", # required
    #     name: "RuleName", # required
    #     rule_type: "METADATA_FORM_ENFORCEMENT" # One of: ["METADATA_FORM_ENFORCEMENT"], # required
    #     target: { # required
    #       # One of:
    #       domain_unit_target: {
    #         domain_unit_id: "DomainUnitId", # required
    #         include_child_domain_units: false
    #       }
    #     },
    #     action: "CREATE_LISTING_CHANGE_SET" # One of: ["CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"], # required
    #     scope: { # required
    #       asset_type: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_asset_types: ["AssetTypeIdentifier"]
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL" # One of: ["ALL", "SPECIFIC"], # required
    #         specific_projects: ["ProjectId"]
    #       }
    #     },
    #     detail: { # required
    #       # One of:
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           }
    #         ]
    #       }
    #     },
    #     description: "Description",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     last_updated_by: "UpdatedBy", # required
    #   }
    # @return [Types::UpdateRuleOutput]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
      request.send_request(options)
    end

    # <p>Updates the status of the specified subscription grant status in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateSubscriptionGrantStatusInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription grant status is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the subscription grant the status of which is to be updated.</p>
    # @option params [String] :asset_identifier
    #   <p>The identifier of the asset the subscription grant status of which is to be updated.</p>
    # @option params [String] :status
    #   <p>The status to be updated as part of the <code>UpdateSubscriptionGrantStatus</code> action.</p>
    # @option params [Types::FailureCause] :failure_cause
    #   <p>Specifies the error message that is returned if the operation cannot be successfully completed.</p>
    # @option params [String] :target_name
    #   <p>The target name to be updated as part of the <code>UpdateSubscriptionGrantStatus</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #     asset_identifier: "AssetId", # required
    #     status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #     failure_cause: {
    #       message: "String"
    #     },
    #     target_name: "String"
    #   }
    #   options = {}
    #   response = client.update_subscription_grant_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionGrantId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     subscription_target_id: "SubscriptionTargetId", # required
    #     granted_entity: { # required
    #       # One of:
    #       listing: {
    #         id: "ListingId", # required
    #         revision: "Revision", # required
    #       }
    #     },
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"], # required
    #     assets: [
    #       {
    #         asset_id: "AssetId", # required
    #         asset_revision: "Revision", # required
    #         status: "GRANT_PENDING" # One of: ["GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"], # required
    #         target_name: "String",
    #         failure_cause: {
    #           message: "String"
    #         },
    #         granted_timestamp: Time.now,
    #         failure_timestamp: Time.now,
    #         asset_scope: {
    #           asset_id: "AssetId", # required
    #           filter_ids: ["FilterId"], # required
    #           status: "String", # required
    #           error_message: "String"
    #         }
    #       }
    #     ],
    #     subscription_id: "SubscriptionId"
    #   }
    # @return [Types::UpdateSubscriptionGrantStatusOutput]
    def update_subscription_grant_status(params = {}, options = {})
      request = build_request(:update_subscription_grant_status, params)
      request.send_request(options)
    end

    # <p>Updates a specified subscription request in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateSubscriptionRequestInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription request is to be updated.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the subscription request that is to be updated.</p>
    # @option params [String] :request_reason
    #   <p>The reason for the <code>UpdateSubscriptionRequest</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     request_reason: "RequestReason", # required
    #   }
    #   options = {}
    #   response = client.update_subscription_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionRequestId", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     domain_id: "DomainId", # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     request_reason: "RequestReason", # required
    #     subscribed_principals: [{ # required
    #       # One of:
    #       project: {
    #         id: "ProjectId",
    #         name: "ProjectName"
    #       }
    #     }],
    #     subscribed_listings: [ # required
    #       {
    #         id: "ListingId", # required
    #         revision: "Revision",
    #         name: "ListingName", # required
    #         description: "Description", # required
    #         item: { # required
    #           # One of:
    #           asset_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             entity_type: "TypeName",
    #             forms: "Forms",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             asset_scope: {
    #               asset_id: "AssetId", # required
    #               filter_ids: ["FilterId"], # required
    #               status: "String", # required
    #               error_message: "String"
    #             }
    #           },
    #           product_listing: {
    #             entity_id: "AssetId",
    #             entity_revision: "Revision",
    #             glossary_terms: [
    #               {
    #                 name: "GlossaryTermName",
    #                 short_description: "ShortDescription"
    #               }
    #             ],
    #             name: "String",
    #             description: "String",
    #             asset_listings: [
    #               {
    #                 entity_id: "String",
    #                 entity_revision: "String",
    #                 entity_type: "String"
    #               }
    #             ]
    #           }
    #         },
    #         owner_project_id: "ProjectId", # required
    #         owner_project_name: "String"
    #       }
    #     ],
    #     reviewer_id: "String",
    #     decision_comment: "DecisionComment",
    #     existing_subscription_id: "SubscriptionId",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_name: "FormTypeName",
    #         type_revision: "Revision",
    #         content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateSubscriptionRequestOutput]
    def update_subscription_request(params = {}, options = {})
      request = build_request(:update_subscription_request, params)
      request.send_request(options)
    end

    # <p>Updates the specified subscription target in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateSubscriptionTargetInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a subscription target is to be updated.</p>
    # @option params [String] :environment_identifier
    #   <p>The identifier of the environment in which a subscription target is to be updated.</p>
    # @option params [String] :identifier
    #   <p>Identifier of the subscription target that is to be updated.</p>
    # @option params [String] :name
    #   <p>The name to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @option params [Array<String>] :authorized_principals
    #   <p>The authorized principals to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @option params [Array<String>] :applicable_asset_types
    #   <p>The applicable asset types to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @option params [Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   <p>The configuration to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @option params [String] :manage_access_role
    #   <p>The manage access role to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @option params [String] :provider
    #   <p>The provider to be updated as part of the <code>UpdateSubscriptionTarget</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #     name: "SubscriptionTargetName",
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"],
    #     applicable_asset_types: ["TypeName"],
    #     subscription_target_config: [
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       }
    #     ],
    #     manage_access_role: "IamRoleArn",
    #     provider: "String"
    #   }
    #   options = {}
    #   response = client.update_subscription_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SubscriptionTargetId", # required
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     domain_id: "DomainId", # required
    #     project_id: "ProjectId", # required
    #     environment_id: "EnvironmentId", # required
    #     name: "SubscriptionTargetName", # required
    #     type: "String", # required
    #     created_by: "CreatedBy", # required
    #     updated_by: "UpdatedBy",
    #     created_at: Time.now, # required
    #     updated_at: Time.now,
    #     manage_access_role: "IamRoleArn",
    #     applicable_asset_types: ["TypeName"], # required
    #     subscription_target_config: [ # required
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       }
    #     ],
    #     provider: "String", # required
    #   }
    # @return [Types::UpdateSubscriptionTargetOutput]
    def update_subscription_target(params = {}, options = {})
      request = build_request(:update_subscription_target, params)
      request.send_request(options)
    end

    # <p>Updates the specified user profile in Amazon DataZone.</p>
    # @param [Hash, Types::UpdateUserProfileInput] params
    # @option params [String] :domain_identifier
    #   <p>The identifier of the Amazon DataZone domain in which a user profile is updated.</p>
    # @option params [String] :user_identifier
    #   <p>The identifier of the user whose user profile is to be updated.</p>
    # @option params [String] :type
    #   <p>The type of the user profile that are to be updated.</p>
    # @option params [String] :status
    #   <p>The status of the user profile that are to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     type: "IAM" # One of: ["IAM", "SSO"],
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"], # required
    #   }
    #   options = {}
    #   response = client.update_user_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     id: "UserProfileId",
    #     type: "IAM" # One of: ["IAM", "SSO"],
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"],
    #     details: {
    #       # One of:
    #       iam: {
    #         arn: "String",
    #         principal_id: "String"
    #       },
    #       sso: {
    #         username: "UserProfileName",
    #         first_name: "FirstName",
    #         last_name: "LastName"
    #       }
    #     }
    #   }
    # @return [Types::UpdateUserProfileOutput]
    def update_user_profile(params = {}, options = {})
      request = build_request(:update_user_profile, params)
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
      context[:gem_name] = 'aws-sdk-datazone'
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
