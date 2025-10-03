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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Appflow
  # An API client for Aws::Appflow.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SandstoneConfigurationServiceLambda

    add_plugin(::Aws::Appflow::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Appflow::EndpointProvider)
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

    # <p>Cancels active runs for a flow.</p>
    #          <p>You can cancel all of the active runs for a flow, or you can cancel specific runs by
    #       providing their IDs.</p>
    #          <p>You can cancel a flow run only when the run is in progress. You can't cancel a run that
    #       has already completed or failed. You also can't cancel a run that's scheduled to occur but
    #       hasn't started yet. To prevent a scheduled run, you can deactivate the flow with the
    #         <code>StopFlow</code> action.</p>
    #          <p>You cannot resume a run after you cancel it.</p>
    #          <p>When you send your request, the status for each run becomes <code>CancelStarted</code>.
    #       When the cancellation completes, the status becomes <code>Canceled</code>.</p>
    #          <note>
    #             <p>When you cancel a run, you still incur charges for any data that the run already
    #         processed before the cancellation. If the run had already written some data to the flow
    #         destination, then that data remains in the destination. If you configured the flow to use a
    #         batch API (such as the Salesforce Bulk API 2.0), then the run will finish reading or writing
    #         its entire batch of data after the cancellation. For these operations, the data processing
    #         charges for Amazon AppFlow apply. For the pricing information, see <a href="http://aws.amazon.com/appflow/pricing/">Amazon AppFlow pricing</a>.</p>
    #          </note>
    # @param [Hash, Types::CancelFlowExecutionsRequest] params
    # @option params [String] :flow_name
    #   <p>The name of a flow with active runs that you want to cancel.</p>
    # @option params [Array<String>] :execution_ids
    #   <p>The ID of each active run to cancel. These runs must belong to the flow you specify in
    #         your request.</p>
    #            <p>If you omit this parameter, your request ends all active runs that belong to the
    #         flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     execution_ids: ["ExecutionId"]
    #   }
    #   options = {}
    #   response = client.cancel_flow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalid_executions: ["ExecutionId"]
    #   }
    # @return [Types::CancelFlowExecutionsResponse]
    def cancel_flow_executions(params = {}, options = {})
      request = build_request(:cancel_flow_executions, params)
      request.send_request(options)
    end

    # <p> Creates a new connector profile associated with your Amazon Web Services account. There is
    #       a soft quota of 100 connector profiles per Amazon Web Services account. If you need more
    #       connector profiles than this quota allows, you can submit a request to the Amazon AppFlow
    #       team through the Amazon AppFlow support channel. In each connector profile that you
    #       create, you can provide the credentials and properties for only one connector.</p>
    # @param [Hash, Types::CreateConnectorProfileRequest] params
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your Amazon Web Services account. </p>
    # @option params [String] :kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    # @option params [String] :connection_mode
    #   <p> Indicates the connection mode and specifies whether it is public or private. Private
    #         flows use Amazon Web Services PrivateLink to route data over Amazon Web Services infrastructure
    #         without exposing it to the public internet. </p>
    # @option params [Types::ConnectorProfileConfig] :connector_profile_config
    #   <p> Defines the connector-specific configuration and credentials. </p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>CreateConnectorProfile</code> request completes only once. You choose the value to
    #         pass. For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>CreateConnectorProfile</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_name: "ConnectorProfileName", # required
    #     kms_arn: "KMSArn",
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #     connector_label: "ConnectorLabel",
    #     connection_mode: "Public" # One of: ["Public", "Private"], # required
    #     connector_profile_config: { # required
    #       connector_profile_properties: { # required
    #         amplitude: {
    #         },
    #         datadog: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         dynatrace: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         google_analytics: {
    #         },
    #         honeycode: {
    #         },
    #         infor_nexus: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         marketo: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         redshift: {
    #           database_url: "DatabaseUrl",
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           role_arn: "RoleArn", # required
    #           data_api_role_arn: "DataApiRoleArn",
    #           is_redshift_serverless: false,
    #           cluster_identifier: "ClusterIdentifier",
    #           workgroup_name: "WorkgroupName",
    #           database_name: "DatabaseName"
    #         },
    #         salesforce: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           use_private_link_for_metadata_and_authorization: false
    #         },
    #         service_now: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         snowflake: {
    #           warehouse: "Warehouse", # required
    #           stage: "Stage", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           account_name: "AccountName",
    #           region: "Region"
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         zendesk: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         sapo_data: {
    #           application_host_url: "ApplicationHostUrl", # required
    #           application_service_path: "ApplicationServicePath", # required
    #           port_number: 1, # required
    #           client_number: "ClientNumber", # required
    #           logon_language: "LogonLanguage",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           o_auth_properties: {
    #             token_url: "TokenUrl", # required
    #             auth_code_url: "AuthCodeUrl", # required
    #             o_auth_scopes: ["OAuthScope"], # required
    #           },
    #           disable_sso: false
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             "ProfilePropertyKey" => "ProfilePropertyValue"
    #           },
    #           o_auth2_properties: {
    #             token_url: "TokenUrl", # required
    #             o_auth2_grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"], # required
    #             token_url_custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue"
    #             }
    #           }
    #         },
    #         pardot: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           business_unit_id: "BusinessUnitId"
    #         }
    #       },
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: "ApiKey", # required
    #           secret_key: "SecretKey", # required
    #         },
    #         datadog: {
    #           api_key: "ApiKey", # required
    #           application_key: "ApplicationKey", # required
    #         },
    #         dynatrace: {
    #           api_token: "ApiToken", # required
    #         },
    #         google_analytics: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         honeycode: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         infor_nexus: {
    #           access_key_id: "AccessKeyId", # required
    #           user_id: "Username", # required
    #           secret_access_key: "Key", # required
    #           datakey: "Key", # required
    #         },
    #         marketo: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         redshift: {
    #           username: "String",
    #           password: "Password"
    #         },
    #         salesforce: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #           o_auth2_grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"],
    #           jwt_token: "JwtToken"
    #         },
    #         service_now: {
    #           username: "Username",
    #           password: "Password",
    #           o_auth2_credentials: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           }
    #         },
    #         singular: {
    #           api_key: "ApiKey", # required
    #         },
    #         slack: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         snowflake: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         trendmicro: {
    #           api_secret_key: "ApiSecretKey", # required
    #         },
    #         veeva: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         zendesk: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           o_auth_credentials: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           }
    #         },
    #         custom_connector: {
    #           authentication_type: "OAUTH2" # One of: ["OAUTH2", "APIKEY", "BASIC", "CUSTOM"], # required
    #           basic: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           oauth2: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           },
    #           api_key: {
    #             api_key: "ApiKey", # required
    #             api_secret_key: "ApiSecretKey"
    #           },
    #           custom: {
    #             custom_authentication_type: "CustomAuthenticationType", # required
    #             credentials_map: {
    #               "CredentialsMapKey" => "CredentialsMapValue"
    #             }
    #           }
    #         },
    #         pardot: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           },
    #           client_credentials_arn: "ClientCredentialsArn"
    #         }
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_connector_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_profile_arn: "ConnectorProfileArn"
    #   }
    # @return [Types::CreateConnectorProfileResponse]
    def create_connector_profile(params = {}, options = {})
      request = build_request(:create_connector_profile, params)
      request.send_request(options)
    end

    # <p> Enables your application to create a new flow using Amazon AppFlow. You must create
    #       a connector profile before calling this API. Please note that the Request Syntax below shows
    #       syntax for multiple destinations, however, you can only transfer data to one item in this list
    #       at a time. Amazon AppFlow does not currently support flows to multiple destinations at
    #       once. </p>
    # @param [Hash, Types::CreateFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @option params [String] :description
    #   <p> A description of the flow you want to create. </p>
    # @option params [String] :kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    # @option params [Types::TriggerConfig] :trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    # @option params [Types::SourceFlowConfig] :source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    # @option params [Array<Types::DestinationFlowConfig>] :destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow places data in the destination
    #         connector. </p>
    # @option params [Array<Types::Task>] :tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow
    #         run. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    # @option params [Types::MetadataCatalogConfig] :metadata_catalog_config
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs the data that's
    #         transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it
    #         stores metadata in a data catalog.</p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>CreateFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>CreateFlow</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     description: "FlowDescription",
    #     kms_arn: "KMSArn",
    #     trigger_config: { # required
    #       trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"], # required
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental" # One of: ["Incremental", "Complete"],
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1
    #         }
    #       }
    #     },
    #     source_flow_config: { # required
    #       connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #       api_version: "ApiVersion",
    #       connector_profile_name: "ConnectorProfileName",
    #       source_connector_properties: { # required
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_input_format_config: {
    #             s3_input_file_type: "CSV" # One of: ["CSV", "JSON"]
    #           }
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #           data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #           document_type: "DocumentType",
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #         sapo_data: {
    #           object_path: "Object",
    #           parallelism_config: {
    #             max_parallelism: 1, # required
    #           },
    #           pagination_config: {
    #             max_page_size: 1, # required
    #           }
    #         },
    #         custom_connector: {
    #           entity_name: "EntityName", # required
    #           custom_properties: {
    #             "CustomPropertyKey" => "CustomPropertyValue"
    #           },
    #           data_transfer_api: {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC" # One of: ["SYNC", "ASYNC", "AUTOMATIC"]
    #           }
    #         },
    #         pardot: {
    #           object: "Object", # required
    #         }
    #       },
    #       incremental_pull_config: {
    #         datetime_type_field_name: "DatetimeTypeFieldName"
    #       }
    #     },
    #     destination_flow_config_list: [ # required
    #       {
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #         api_version: "ApiVersion",
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: {
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               },
    #               preserve_source_data_typing: false
    #             }
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           lookout_metrics: {
    #           },
    #           upsolver: {
    #             bucket_name: "UpsolverBucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: { # required
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: { # required
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               }
    #             }
    #           },
    #           honeycode: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           customer_profiles: {
    #             domain_name: "DomainName", # required
    #             object_type_name: "ObjectTypeName"
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           marketo: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           custom_connector: {
    #             entity_name: "EntityName", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             id_field_names: ["Name"],
    #             custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue"
    #             }
    #           },
    #           sapo_data: {
    #             object_path: "Object", # required
    #             success_response_handling_config: {
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           }
    #         }
    #       }
    #     ],
    #     tasks: [ # required
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN" # One of: ["BETWEEN"],
    #           datadog: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           dynatrace: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           google_analytics: "PROJECTION" # One of: ["PROJECTION", "BETWEEN"],
    #           infor_nexus: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           marketo: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           s3: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           salesforce: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           service_now: "PROJECTION" # One of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           singular: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           slack: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           trendmicro: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           veeva: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           zendesk: "PROJECTION" # One of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           sapo_data: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           custom_connector: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           pardot: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "NO_OP", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC"]
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic" # One of: ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate", "Partition"], # required
    #         task_properties: {
    #           "OperatorPropertiesKeys" => "Property"
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     metadata_catalog_config: {
    #       glue_data_catalog: {
    #         role_arn: "GlueDataCatalogIAMRole", # required
    #         database_name: "GlueDataCatalogDatabaseName", # required
    #         table_prefix: "GlueDataCatalogTablePrefix", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "FlowArn",
    #     flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   }
    # @return [Types::CreateFlowResponse]
    def create_flow(params = {}, options = {})
      request = build_request(:create_flow, params)
      request.send_request(options)
    end

    # <p> Enables you to delete an existing connector profile. </p>
    # @param [Hash, Types::DeleteConnectorProfileRequest] params
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your account. </p>
    # @option params [Boolean] :force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the profile, even if it is currently
    #         in use in one or more flows. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_name: "ConnectorProfileName", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_connector_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectorProfileResponse]
    def delete_connector_profile(params = {}, options = {})
      request = build_request(:delete_connector_profile, params)
      request.send_request(options)
    end

    # <p> Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can
    #       delete flows one at a time. </p>
    # @param [Hash, Types::DeleteFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @option params [Boolean] :force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the flow, even if it is currently in
    #         use. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFlowResponse]
    def delete_flow(params = {}, options = {})
      request = build_request(:delete_flow, params)
      request.send_request(options)
    end

    # <p>Describes the given custom connector registered in your Amazon Web Services account. This
    #       API can be used for custom connectors that are registered in your account and also for Amazon
    #       authored connectors.</p>
    # @param [Hash, Types::DescribeConnectorRequest] params
    # @option params [String] :connector_type
    #   <p>The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo. Please choose
    #         CUSTOMCONNECTOR for Lambda based custom connectors.</p>
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #     connector_label: "ConnectorLabel"
    #   }
    #   options = {}
    #   response = client.describe_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_configuration: {
    #       can_use_as_source: false,
    #       can_use_as_destination: false,
    #       supported_destination_connectors: ["Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"]],
    #       supported_scheduling_frequencies: ["BYMINUTE" # One of: ["BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"]],
    #       is_private_link_enabled: false,
    #       is_private_link_endpoint_url_required: false,
    #       supported_trigger_types: ["Scheduled" # One of: ["Scheduled", "Event", "OnDemand"]],
    #       connector_metadata: {
    #         amplitude: {
    #         },
    #         datadog: {
    #         },
    #         dynatrace: {
    #         },
    #         google_analytics: {
    #           o_auth_scopes: ["OAuthScope"]
    #         },
    #         infor_nexus: {
    #         },
    #         marketo: {
    #         },
    #         redshift: {
    #         },
    #         s3: {
    #         },
    #         salesforce: {
    #           o_auth_scopes: ["OAuthScope"],
    #           data_transfer_apis: ["AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]],
    #           oauth2_grant_types_supported: ["CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"]]
    #         },
    #         service_now: {
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           o_auth_scopes: ["OAuthScope"]
    #         },
    #         snowflake: {
    #           supported_regions: ["Region"]
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #         },
    #         zendesk: {
    #           o_auth_scopes: ["OAuthScope"]
    #         },
    #         event_bridge: {
    #         },
    #         upsolver: {
    #         },
    #         customer_profiles: {
    #         },
    #         honeycode: {
    #           o_auth_scopes: ["OAuthScope"]
    #         },
    #         sapo_data: {
    #         },
    #         pardot: {
    #         }
    #       },
    #       connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #       connector_label: "ConnectorLabel",
    #       connector_description: "ConnectorDescription",
    #       connector_owner: "ConnectorOwner",
    #       connector_name: "ConnectorName",
    #       connector_version: "ConnectorVersion",
    #       connector_arn: "ARN",
    #       connector_modes: ["ConnectorMode"],
    #       authentication_config: {
    #         is_basic_auth_supported: false,
    #         is_api_key_auth_supported: false,
    #         is_o_auth2_supported: false,
    #         is_custom_auth_supported: false,
    #         o_auth2_defaults: {
    #           oauth_scopes: ["OAuthScope"],
    #           token_urls: ["TokenUrl"],
    #           auth_code_urls: ["AuthCodeUrl"],
    #           oauth2_grant_types_supported: ["CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"]],
    #           oauth2_custom_properties: [
    #             {
    #               key: "Key",
    #               is_required: false,
    #               label: "Label",
    #               description: "Description",
    #               is_sensitive_field: false,
    #               connector_supplied_values: ["ConnectorSuppliedValue"],
    #               type: "TOKEN_URL" # One of: ["TOKEN_URL", "AUTH_URL"]
    #             }
    #           ]
    #         },
    #         custom_auth_configs: [
    #           {
    #             custom_authentication_type: "CustomAuthenticationType",
    #             auth_parameters: [
    #               {
    #                 key: "Key",
    #                 is_required: false,
    #                 label: "Label",
    #                 description: "Description",
    #                 is_sensitive_field: false,
    #                 connector_supplied_values: ["ConnectorSuppliedValue"]
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       connector_runtime_settings: [
    #         {
    #           key: "Key",
    #           data_type: "ConnectorRuntimeSettingDataType",
    #           is_required: false,
    #           label: "Label",
    #           description: "Description",
    #           scope: "ConnectorRuntimeSettingScope",
    #           connector_supplied_value_options: ["ConnectorSuppliedValue"]
    #         }
    #       ],
    #       supported_api_versions: ["SupportedApiVersion"],
    #       supported_operators: ["PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]],
    #       supported_write_operations: ["INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]],
    #       connector_provisioning_type: "LAMBDA" # One of: ["LAMBDA"],
    #       connector_provisioning_config: {
    #         lambda: {
    #           lambda_arn: "ARN", # required
    #         }
    #       },
    #       logo_url: "LogoURL",
    #       registered_at: Time.now,
    #       registered_by: "RegisteredBy",
    #       supported_data_transfer_types: ["RECORD" # One of: ["RECORD", "FILE"]],
    #       supported_data_transfer_apis: [
    #         {
    #           name: "DataTransferApiTypeName",
    #           type: "SYNC" # One of: ["SYNC", "ASYNC", "AUTOMATIC"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeConnectorResponse]
    def describe_connector(params = {}, options = {})
      request = build_request(:describe_connector, params)
      request.send_request(options)
    end

    # <p> Provides details regarding the entity used with the connector, with a description of the
    #       data model for each field in that entity. </p>
    # @param [Hash, Types::DescribeConnectorEntityRequest] params
    # @option params [String] :connector_entity_name
    #   <p> The entity name for that connector. </p>
    # @option params [String] :connector_type
    #   <p> The type of connector application, such as Salesforce, Amplitude, and so on. </p>
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    # @option params [String] :api_version
    #   <p>The version of the API that's used by the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_entity_name: "EntityName", # required
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #     connector_profile_name: "ConnectorProfileName",
    #     api_version: "ApiVersion"
    #   }
    #   options = {}
    #   response = client.describe_connector_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_entity_fields: [ # required
    #       {
    #         identifier: "Identifier", # required
    #         parent_identifier: "Identifier",
    #         label: "Label",
    #         is_primary_key: false,
    #         default_value: "String",
    #         is_deprecated: false,
    #         supported_field_type_details: {
    #           v1: { # required
    #             field_type: "FieldType", # required
    #             filter_operators: ["PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]], # required
    #             supported_values: ["Value"],
    #             value_regex_pattern: "String",
    #             supported_date_format: "String",
    #             field_value_range: {
    #               maximum: 1.0,
    #               minimum: 1.0
    #             },
    #             field_length_range: {
    #               maximum: 1.0,
    #               minimum: 1.0
    #             }
    #           }
    #         },
    #         description: "Description",
    #         source_properties: {
    #           is_retrievable: false,
    #           is_queryable: false,
    #           is_timestamp_field_for_incremental_queries: false
    #         },
    #         destination_properties: {
    #           is_creatable: false,
    #           is_nullable: false,
    #           is_upsertable: false,
    #           is_updatable: false,
    #           is_defaulted_on_create: false,
    #           supported_write_operations: ["INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]]
    #         },
    #         custom_properties: {
    #           "CustomPropertyKey" => "CustomPropertyValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConnectorEntityResponse]
    def describe_connector_entity(params = {}, options = {})
      request = build_request(:describe_connector_entity, params)
      request.send_request(options)
    end

    # <p> Returns a list of <code>connector-profile</code> details matching the provided
    #         <code>connector-profile</code> names and <code>connector-types</code>. Both input lists are
    #       optional, and you can use them to filter the result. </p>
    #          <p>If no names or <code>connector-types</code> are provided, returns all connector profiles
    #       in a paginated form. If there is no match, this operation returns an empty list.</p>
    # @param [Hash, Types::DescribeConnectorProfilesRequest] params
    # @option params [Array<String>] :connector_profile_names
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    # @option params [String] :connector_label
    #   <p>The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account. Only needed if calling for CUSTOMCONNECTOR connector
    #         type/.</p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_names: ["ConnectorProfileName"],
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #     connector_label: "ConnectorLabel",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_connector_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_profile_details: [
    #       {
    #         connector_profile_arn: "ConnectorProfileArn",
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         connector_label: "ConnectorLabel",
    #         connection_mode: "Public" # One of: ["Public", "Private"],
    #         credentials_arn: "ARN",
    #         connector_profile_properties: {
    #           amplitude: {
    #           },
    #           datadog: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           dynatrace: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           google_analytics: {
    #           },
    #           honeycode: {
    #           },
    #           infor_nexus: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           marketo: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           redshift: {
    #             database_url: "DatabaseUrl",
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             role_arn: "RoleArn", # required
    #             data_api_role_arn: "DataApiRoleArn",
    #             is_redshift_serverless: false,
    #             cluster_identifier: "ClusterIdentifier",
    #             workgroup_name: "WorkgroupName",
    #             database_name: "DatabaseName"
    #           },
    #           salesforce: {
    #             instance_url: "InstanceUrl",
    #             is_sandbox_environment: false,
    #             use_private_link_for_metadata_and_authorization: false
    #           },
    #           service_now: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           singular: {
    #           },
    #           slack: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           snowflake: {
    #             warehouse: "Warehouse", # required
    #             stage: "Stage", # required
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             private_link_service_name: "PrivateLinkServiceName",
    #             account_name: "AccountName",
    #             region: "Region"
    #           },
    #           trendmicro: {
    #           },
    #           veeva: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           zendesk: {
    #             instance_url: "InstanceUrl", # required
    #           },
    #           sapo_data: {
    #             application_host_url: "ApplicationHostUrl", # required
    #             application_service_path: "ApplicationServicePath", # required
    #             port_number: 1, # required
    #             client_number: "ClientNumber", # required
    #             logon_language: "LogonLanguage",
    #             private_link_service_name: "PrivateLinkServiceName",
    #             o_auth_properties: {
    #               token_url: "TokenUrl", # required
    #               auth_code_url: "AuthCodeUrl", # required
    #               o_auth_scopes: ["OAuthScope"], # required
    #             },
    #             disable_sso: false
    #           },
    #           custom_connector: {
    #             profile_properties: {
    #               "ProfilePropertyKey" => "ProfilePropertyValue"
    #             },
    #             o_auth2_properties: {
    #               token_url: "TokenUrl", # required
    #               o_auth2_grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"], # required
    #               token_url_custom_properties: {
    #                 "CustomPropertyKey" => "CustomPropertyValue"
    #               }
    #             }
    #           },
    #           pardot: {
    #             instance_url: "InstanceUrl",
    #             is_sandbox_environment: false,
    #             business_unit_id: "BusinessUnitId"
    #           }
    #         },
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         private_connection_provisioning_state: {
    #           status: "FAILED" # One of: ["FAILED", "PENDING", "CREATED"],
    #           failure_message: "PrivateConnectionProvisioningFailureMessage",
    #           failure_cause: "CONNECTOR_AUTHENTICATION" # One of: ["CONNECTOR_AUTHENTICATION", "CONNECTOR_SERVER", "INTERNAL_SERVER", "ACCESS_DENIED", "VALIDATION"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConnectorProfilesResponse]
    def describe_connector_profiles(params = {}, options = {})
      request = build_request(:describe_connector_profiles, params)
      request.send_request(options)
    end

    # <p> Describes the connectors vended by Amazon AppFlow for specified connector types. If
    #       you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response
    #       contains a <code>nextToken</code> object, which can be be passed in to the next call to the
    #         <code>DescribeConnectors</code> API operation to retrieve the next page. </p>
    # @param [Hash, Types::DescribeConnectorsRequest] params
    # @option params [Array<String>] :connector_types
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that should be returned in the result set. The default is
    #         20.</p>
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_types: ["Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"]],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_configurations: {
    #       "ConnectorType" => {
    #         can_use_as_source: false,
    #         can_use_as_destination: false,
    #         supported_destination_connectors: ["Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"]],
    #         supported_scheduling_frequencies: ["BYMINUTE" # One of: ["BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"]],
    #         is_private_link_enabled: false,
    #         is_private_link_endpoint_url_required: false,
    #         supported_trigger_types: ["Scheduled" # One of: ["Scheduled", "Event", "OnDemand"]],
    #         connector_metadata: {
    #           amplitude: {
    #           },
    #           datadog: {
    #           },
    #           dynatrace: {
    #           },
    #           google_analytics: {
    #             o_auth_scopes: ["OAuthScope"]
    #           },
    #           infor_nexus: {
    #           },
    #           marketo: {
    #           },
    #           redshift: {
    #           },
    #           s3: {
    #           },
    #           salesforce: {
    #             o_auth_scopes: ["OAuthScope"],
    #             data_transfer_apis: ["AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]],
    #             oauth2_grant_types_supported: ["CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"]]
    #           },
    #           service_now: {
    #           },
    #           singular: {
    #           },
    #           slack: {
    #             o_auth_scopes: ["OAuthScope"]
    #           },
    #           snowflake: {
    #             supported_regions: ["Region"]
    #           },
    #           trendmicro: {
    #           },
    #           veeva: {
    #           },
    #           zendesk: {
    #             o_auth_scopes: ["OAuthScope"]
    #           },
    #           event_bridge: {
    #           },
    #           upsolver: {
    #           },
    #           customer_profiles: {
    #           },
    #           honeycode: {
    #             o_auth_scopes: ["OAuthScope"]
    #           },
    #           sapo_data: {
    #           },
    #           pardot: {
    #           }
    #         },
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         connector_label: "ConnectorLabel",
    #         connector_description: "ConnectorDescription",
    #         connector_owner: "ConnectorOwner",
    #         connector_name: "ConnectorName",
    #         connector_version: "ConnectorVersion",
    #         connector_arn: "ARN",
    #         connector_modes: ["ConnectorMode"],
    #         authentication_config: {
    #           is_basic_auth_supported: false,
    #           is_api_key_auth_supported: false,
    #           is_o_auth2_supported: false,
    #           is_custom_auth_supported: false,
    #           o_auth2_defaults: {
    #             oauth_scopes: ["OAuthScope"],
    #             token_urls: ["TokenUrl"],
    #             auth_code_urls: ["AuthCodeUrl"],
    #             oauth2_grant_types_supported: ["CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"]],
    #             oauth2_custom_properties: [
    #               {
    #                 key: "Key",
    #                 is_required: false,
    #                 label: "Label",
    #                 description: "Description",
    #                 is_sensitive_field: false,
    #                 connector_supplied_values: ["ConnectorSuppliedValue"],
    #                 type: "TOKEN_URL" # One of: ["TOKEN_URL", "AUTH_URL"]
    #               }
    #             ]
    #           },
    #           custom_auth_configs: [
    #             {
    #               custom_authentication_type: "CustomAuthenticationType",
    #               auth_parameters: [
    #                 {
    #                   key: "Key",
    #                   is_required: false,
    #                   label: "Label",
    #                   description: "Description",
    #                   is_sensitive_field: false,
    #                   connector_supplied_values: ["ConnectorSuppliedValue"]
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         connector_runtime_settings: [
    #           {
    #             key: "Key",
    #             data_type: "ConnectorRuntimeSettingDataType",
    #             is_required: false,
    #             label: "Label",
    #             description: "Description",
    #             scope: "ConnectorRuntimeSettingScope",
    #             connector_supplied_value_options: ["ConnectorSuppliedValue"]
    #           }
    #         ],
    #         supported_api_versions: ["SupportedApiVersion"],
    #         supported_operators: ["PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]],
    #         supported_write_operations: ["INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]],
    #         connector_provisioning_type: "LAMBDA" # One of: ["LAMBDA"],
    #         connector_provisioning_config: {
    #           lambda: {
    #             lambda_arn: "ARN", # required
    #           }
    #         },
    #         logo_url: "LogoURL",
    #         registered_at: Time.now,
    #         registered_by: "RegisteredBy",
    #         supported_data_transfer_types: ["RECORD" # One of: ["RECORD", "FILE"]],
    #         supported_data_transfer_apis: [
    #           {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC" # One of: ["SYNC", "ASYNC", "AUTOMATIC"]
    #           }
    #         ]
    #       }
    #     },
    #     connectors: [
    #       {
    #         connector_description: "ConnectorDescription",
    #         connector_name: "ConnectorName",
    #         connector_owner: "ConnectorOwner",
    #         connector_version: "ConnectorVersion",
    #         application_type: "ApplicationType",
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         connector_label: "ConnectorLabel",
    #         registered_at: Time.now,
    #         registered_by: "RegisteredBy",
    #         connector_provisioning_type: "LAMBDA" # One of: ["LAMBDA"],
    #         connector_modes: ["ConnectorMode"],
    #         supported_data_transfer_types: ["RECORD" # One of: ["RECORD", "FILE"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConnectorsResponse]
    def describe_connectors(params = {}, options = {})
      request = build_request(:describe_connectors, params)
      request.send_request(options)
    end

    # <p> Provides a description of the specified flow. </p>
    # @param [Hash, Types::DescribeFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #   }
    #   options = {}
    #   response = client.describe_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "FlowArn",
    #     description: "FlowDescription",
    #     flow_name: "FlowName",
    #     kms_arn: "KMSArn",
    #     flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"],
    #     flow_status_message: "FlowStatusMessage",
    #     source_flow_config: {
    #       connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #       api_version: "ApiVersion",
    #       connector_profile_name: "ConnectorProfileName",
    #       source_connector_properties: { # required
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_input_format_config: {
    #             s3_input_file_type: "CSV" # One of: ["CSV", "JSON"]
    #           }
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #           data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #           document_type: "DocumentType",
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #         sapo_data: {
    #           object_path: "Object",
    #           parallelism_config: {
    #             max_parallelism: 1, # required
    #           },
    #           pagination_config: {
    #             max_page_size: 1, # required
    #           }
    #         },
    #         custom_connector: {
    #           entity_name: "EntityName", # required
    #           custom_properties: {
    #             "CustomPropertyKey" => "CustomPropertyValue"
    #           },
    #           data_transfer_api: {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC" # One of: ["SYNC", "ASYNC", "AUTOMATIC"]
    #           }
    #         },
    #         pardot: {
    #           object: "Object", # required
    #         }
    #       },
    #       incremental_pull_config: {
    #         datetime_type_field_name: "DatetimeTypeFieldName"
    #       }
    #     },
    #     destination_flow_config_list: [
    #       {
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #         api_version: "ApiVersion",
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: {
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               },
    #               preserve_source_data_typing: false
    #             }
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           lookout_metrics: {
    #           },
    #           upsolver: {
    #             bucket_name: "UpsolverBucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: { # required
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: { # required
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               }
    #             }
    #           },
    #           honeycode: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           customer_profiles: {
    #             domain_name: "DomainName", # required
    #             object_type_name: "ObjectTypeName"
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           marketo: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           custom_connector: {
    #             entity_name: "EntityName", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             id_field_names: ["Name"],
    #             custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue"
    #             }
    #           },
    #           sapo_data: {
    #             object_path: "Object", # required
    #             success_response_handling_config: {
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           }
    #         }
    #       }
    #     ],
    #     last_run_execution_details: {
    #       most_recent_execution_message: "MostRecentExecutionMessage",
    #       most_recent_execution_time: Time.now,
    #       most_recent_execution_status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #     },
    #     trigger_config: {
    #       trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"], # required
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental" # One of: ["Incremental", "Complete"],
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1
    #         }
    #       }
    #     },
    #     tasks: [
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN" # One of: ["BETWEEN"],
    #           datadog: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           dynatrace: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           google_analytics: "PROJECTION" # One of: ["PROJECTION", "BETWEEN"],
    #           infor_nexus: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           marketo: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           s3: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           salesforce: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           service_now: "PROJECTION" # One of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           singular: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           slack: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           trendmicro: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           veeva: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           zendesk: "PROJECTION" # One of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           sapo_data: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           custom_connector: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           pardot: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "NO_OP", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC"]
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic" # One of: ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate", "Partition"], # required
    #         task_properties: {
    #           "OperatorPropertiesKeys" => "Property"
    #         }
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     created_by: "CreatedBy",
    #     last_updated_by: "UpdatedBy",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     metadata_catalog_config: {
    #       glue_data_catalog: {
    #         role_arn: "GlueDataCatalogIAMRole", # required
    #         database_name: "GlueDataCatalogDatabaseName", # required
    #         table_prefix: "GlueDataCatalogTablePrefix", # required
    #       }
    #     },
    #     last_run_metadata_catalog_details: [
    #       {
    #         catalog_type: "GLUE" # One of: ["GLUE"],
    #         table_name: "String",
    #         table_registration_output: {
    #           message: "String",
    #           result: "String",
    #           status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #         },
    #         partition_registration_output: {
    #           message: "String",
    #           result: "String",
    #           status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #         }
    #       }
    #     ],
    #     schema_version: 1
    #   }
    # @return [Types::DescribeFlowResponse]
    def describe_flow(params = {}, options = {})
      request = build_request(:describe_flow, params)
      request.send_request(options)
    end

    # <p> Fetches the execution history of the flow. </p>
    # @param [Hash, Types::DescribeFlowExecutionRecordsRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_flow_execution_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_executions: [
    #       {
    #         execution_id: "ExecutionId",
    #         execution_status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"],
    #         execution_result: {
    #           error_info: {
    #             put_failures_count: 1,
    #             execution_message: "ExecutionMessage"
    #           },
    #           bytes_processed: 1,
    #           bytes_written: 1,
    #           records_processed: 1,
    #           num_parallel_processes: 1,
    #           max_page_size: 1
    #         },
    #         started_at: Time.now,
    #         last_updated_at: Time.now,
    #         data_pull_start_time: Time.now,
    #         data_pull_end_time: Time.now,
    #         metadata_catalog_details: [
    #           {
    #             catalog_type: "GLUE" # One of: ["GLUE"],
    #             table_name: "String",
    #             table_registration_output: {
    #               message: "String",
    #               result: "String",
    #               status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #             },
    #             partition_registration_output: {
    #               message: "String",
    #               result: "String",
    #               status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeFlowExecutionRecordsResponse]
    def describe_flow_execution_records(params = {}, options = {})
      request = build_request(:describe_flow_execution_records, params)
      request.send_request(options)
    end

    # <p> Returns the list of available connector entities supported by Amazon AppFlow. For
    #       example, you can query Salesforce for <i>Account</i> and
    #         <i>Opportunity</i> entities, or query ServiceNow for the
    #         <i>Incident</i> entity. </p>
    # @param [Hash, Types::ListConnectorEntitiesRequest] params
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account, and is used to query the
    #         downstream connector. </p>
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    # @option params [String] :entities_path
    #   <p> This optional parameter is specific to connector implementation. Some connectors support
    #         multiple levels or categories of entities. You can find out the list of roots for such
    #         providers by sending a request without the <code>entitiesPath</code> parameter. If the
    #         connector supports entities at different roots, this initial request returns the list of
    #         roots. Otherwise, this request returns all entities supported by the provider. </p>
    # @option params [String] :api_version
    #   <p>The version of the API that's used by the connector.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that the operation returns in the response.</p>
    # @option params [String] :next_token
    #   <p>A token that was provided by your prior <code>ListConnectorEntities</code> operation if
    #         the response was too big for the page size. You specify this token to get the next page of
    #         results in paginated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_name: "ConnectorProfileName",
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #     entities_path: "EntitiesPath",
    #     api_version: "ApiVersion",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connector_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_entity_map: { # required
    #       "Group" => [
    #         {
    #           name: "Name", # required
    #           label: "Label",
    #           has_nested_entities: false
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectorEntitiesResponse]
    def list_connector_entities(params = {}, options = {})
      request = build_request(:list_connector_entities, params)
      request.send_request(options)
    end

    # <p>Returns the list of all registered custom connectors in your Amazon Web Services account.
    #       This API lists only custom connectors registered in this account, not the Amazon Web Services
    #       authored connectors. </p>
    # @param [Hash, Types::ListConnectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations).</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next page of data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connectors: [
    #       {
    #         connector_description: "ConnectorDescription",
    #         connector_name: "ConnectorName",
    #         connector_owner: "ConnectorOwner",
    #         connector_version: "ConnectorVersion",
    #         application_type: "ApplicationType",
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         connector_label: "ConnectorLabel",
    #         registered_at: Time.now,
    #         registered_by: "RegisteredBy",
    #         connector_provisioning_type: "LAMBDA" # One of: ["LAMBDA"],
    #         connector_modes: ["ConnectorMode"],
    #         supported_data_transfer_types: ["RECORD" # One of: ["RECORD", "FILE"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectorsResponse]
    def list_connectors(params = {}, options = {})
      request = build_request(:list_connectors, params)
      request.send_request(options)
    end

    # <p> Lists all of the flows associated with your account. </p>
    # @param [Hash, Types::ListFlowsRequest] params
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. </p>
    # @option params [String] :next_token
    #   <p> The pagination token for next page of data. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flows: [
    #       {
    #         flow_arn: "FlowArn",
    #         description: "FlowDescription",
    #         flow_name: "FlowName",
    #         flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"],
    #         source_connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         source_connector_label: "ConnectorLabel",
    #         destination_connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #         destination_connector_label: "ConnectorLabel",
    #         trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         created_by: "CreatedBy",
    #         last_updated_by: "UpdatedBy",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_run_execution_details: {
    #           most_recent_execution_message: "MostRecentExecutionMessage",
    #           most_recent_execution_time: Time.now,
    #           most_recent_execution_status: "InProgress" # One of: ["InProgress", "Successful", "Error", "CancelStarted", "Canceled"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowsResponse]
    def list_flows(params = {}, options = {})
      request = build_request(:list_flows, params)
      request.send_request(options)
    end

    # <p> Retrieves the tags that are associated with a specified flow. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified flow. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Registers a new custom connector with your Amazon Web Services account. Before you can
    #       register the connector, you must deploy the associated AWS lambda function in your
    #       account.</p>
    # @param [Hash, Types::RegisterConnectorRequest] params
    # @option params [String] :connector_label
    #   <p> The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account.</p>
    # @option params [String] :description
    #   <p>A description about the connector that's being registered.</p>
    # @option params [String] :connector_provisioning_type
    #   <p>The provisioning type of the connector. Currently the only supported value is LAMBDA.
    #       </p>
    # @option params [Types::ConnectorProvisioningConfig] :connector_provisioning_config
    #   <p>The provisioning type of the connector. Currently the only supported value is
    #         LAMBDA.</p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>RegisterConnector</code> request completes only once. You choose the value to pass.
    #         For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>RegisterConnector</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_label: "ConnectorLabel",
    #     description: "Description",
    #     connector_provisioning_type: "LAMBDA" # One of: ["LAMBDA"],
    #     connector_provisioning_config: {
    #       lambda: {
    #         lambda_arn: "ARN", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.register_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "ARN"
    #   }
    # @return [Types::RegisterConnectorResponse]
    def register_connector(params = {}, options = {})
      request = build_request(:register_connector, params)
      request.send_request(options)
    end

    # <p>Resets metadata about your connector entities that Amazon AppFlow stored in its
    #       cache. Use this action when you want Amazon AppFlow to return the latest information
    #       about the data that you have in a source application.</p>
    #          <p>Amazon AppFlow returns metadata about your entities when you use the
    #       ListConnectorEntities or DescribeConnectorEntities actions. Following these actions, Amazon AppFlow caches the metadata to reduce the number of API requests that it must send to
    #       the source application. Amazon AppFlow automatically resets the cache once every hour,
    #       but you can use this action when you want to get the latest metadata right away.</p>
    # @param [Hash, Types::ResetConnectorMetadataCacheRequest] params
    # @option params [String] :connector_profile_name
    #   <p>The name of the connector profile that you want to reset cached metadata for.</p>
    #            <p>You can omit this parameter if you're resetting the cache for any of the following
    #         connectors: Amazon Connect, Amazon EventBridge, Amazon Lookout for Metrics, Amazon S3, or Upsolver. If you're resetting the cache for any other connector, you must include this
    #         parameter in your request.</p>
    # @option params [String] :connector_type
    #   <p>The type of connector to reset cached metadata for.</p>
    #            <p>You must include this parameter in your request if you're resetting the cache for any of
    #         the following connectors: Amazon Connect, Amazon EventBridge, Amazon Lookout for Metrics,
    #           Amazon S3, or Upsolver. If you're resetting the cache for any other connector, you
    #         can omit this parameter from your request. </p>
    # @option params [String] :connector_entity_name
    #   <p>Use this parameter if you want to reset cached metadata about the details for an
    #         individual entity.</p>
    #            <p>If you don't include this parameter in your request, Amazon AppFlow only resets
    #         cached metadata about entity names, not entity details.</p>
    # @option params [String] :entities_path
    #   <p>Use this parameter only if you’re resetting the cached metadata about a nested entity.
    #         Only some connectors support nested entities. A nested entity is one that has another entity
    #         as a parent. To use this parameter, specify the name of the parent entity.</p>
    #            <p>To look up the parent-child relationship of entities, you can send a ListConnectorEntities
    #         request that omits the entitiesPath parameter. Amazon AppFlow will return a list of
    #         top-level entities. For each one, it indicates whether the entity has nested entities. Then,
    #         in a subsequent ListConnectorEntities request, you can specify a parent entity name for the
    #         entitiesPath parameter. Amazon AppFlow will return a list of the child entities for that
    #         parent.</p>
    # @option params [String] :api_version
    #   <p>The API version that you specified in the connector profile that you’re resetting cached
    #         metadata for. You must use this parameter only if the connector supports multiple API versions
    #         or if the connector type is CustomConnector.</p>
    #            <p>To look up how many versions a connector supports, use the DescribeConnectors action. In
    #         the response, find the value that Amazon AppFlow returns for the connectorVersion
    #         parameter.</p>
    #            <p>To look up the connector type, use the DescribeConnectorProfiles action. In the response,
    #         find the value that Amazon AppFlow returns for the connectorType parameter.</p>
    #            <p>To look up the API version that you specified in a connector profile, use the
    #         DescribeConnectorProfiles action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_name: "ConnectorProfileName",
    #     connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"],
    #     connector_entity_name: "EntityName",
    #     entities_path: "EntitiesPath",
    #     api_version: "ApiVersion"
    #   }
    #   options = {}
    #   response = client.reset_connector_metadata_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetConnectorMetadataCacheResponse]
    def reset_connector_metadata_cache(params = {}, options = {})
      request = build_request(:reset_connector_metadata_cache, params)
      request.send_request(options)
    end

    # <p> Activates an existing flow. For on-demand flows, this operation runs the flow
    #       immediately. For schedule and event-triggered flows, this operation activates the flow. </p>
    # @param [Hash, Types::StartFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>StartFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs for
    #         flows that run on a schedule or based on an event. However, the error doesn't occur for flows
    #         that run on demand. You set the conditions that initiate your flow for the
    #           <code>triggerConfig</code> parameter.</p>
    #            <p>If you use a different value for <code>clientToken</code>, Amazon AppFlow considers
    #         it a new call to <code>StartFlow</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "FlowArn",
    #     flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"],
    #     execution_id: "ExecutionId"
    #   }
    # @return [Types::StartFlowResponse]
    def start_flow(params = {}, options = {})
      request = build_request(:start_flow, params)
      request.send_request(options)
    end

    # <p> Deactivates the existing flow. For on-demand flows, this operation returns an
    #         <code>unsupportedOperationException</code> error message. For schedule and event-triggered
    #       flows, this operation deactivates the flow. </p>
    # @param [Hash, Types::StopFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #   }
    #   options = {}
    #   response = client.stop_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_arn: "FlowArn",
    #     flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   }
    # @return [Types::StopFlowResponse]
    def stop_flow(params = {}, options = {})
      request = build_request(:stop_flow, params)
      request.send_request(options)
    end

    # <p> Applies a tag to the specified flow. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to tag. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>Unregisters the custom connector registered in your account that matches the connector
    #       label provided in the request.</p>
    # @param [Hash, Types::UnregisterConnectorRequest] params
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account.</p>
    # @option params [Boolean] :force_delete
    #   <p>Indicates whether Amazon AppFlow should unregister the connector, even if it is
    #         currently in use in one or more connector profiles. The default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_label: "ConnectorLabel", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.unregister_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UnregisterConnectorResponse]
    def unregister_connector(params = {}, options = {})
      request = build_request(:unregister_connector, params)
      request.send_request(options)
    end

    # <p> Removes a tag from the specified flow. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to untag. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> The tag keys associated with the tag that you want to remove from your flow. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p> Updates a given connector profile associated with your account. </p>
    # @param [Hash, Types::UpdateConnectorProfileRequest] params
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile and is unique for each <code>ConnectorProfile</code> in
    #         the Amazon Web Services account. </p>
    # @option params [String] :connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    # @option params [Types::ConnectorProfileConfig] :connector_profile_config
    #   <p> Defines the connector-specific profile configuration and credentials. </p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateConnectorProfile</code> request completes only once. You choose the value to
    #         pass. For example, if you don't receive a response from your request, you can safely retry the
    #         request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateConnectorProfile</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_profile_name: "ConnectorProfileName", # required
    #     connection_mode: "Public" # One of: ["Public", "Private"], # required
    #     connector_profile_config: { # required
    #       connector_profile_properties: { # required
    #         amplitude: {
    #         },
    #         datadog: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         dynatrace: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         google_analytics: {
    #         },
    #         honeycode: {
    #         },
    #         infor_nexus: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         marketo: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         redshift: {
    #           database_url: "DatabaseUrl",
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           role_arn: "RoleArn", # required
    #           data_api_role_arn: "DataApiRoleArn",
    #           is_redshift_serverless: false,
    #           cluster_identifier: "ClusterIdentifier",
    #           workgroup_name: "WorkgroupName",
    #           database_name: "DatabaseName"
    #         },
    #         salesforce: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           use_private_link_for_metadata_and_authorization: false
    #         },
    #         service_now: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         singular: {
    #         },
    #         slack: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         snowflake: {
    #           warehouse: "Warehouse", # required
    #           stage: "Stage", # required
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           account_name: "AccountName",
    #           region: "Region"
    #         },
    #         trendmicro: {
    #         },
    #         veeva: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         zendesk: {
    #           instance_url: "InstanceUrl", # required
    #         },
    #         sapo_data: {
    #           application_host_url: "ApplicationHostUrl", # required
    #           application_service_path: "ApplicationServicePath", # required
    #           port_number: 1, # required
    #           client_number: "ClientNumber", # required
    #           logon_language: "LogonLanguage",
    #           private_link_service_name: "PrivateLinkServiceName",
    #           o_auth_properties: {
    #             token_url: "TokenUrl", # required
    #             auth_code_url: "AuthCodeUrl", # required
    #             o_auth_scopes: ["OAuthScope"], # required
    #           },
    #           disable_sso: false
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             "ProfilePropertyKey" => "ProfilePropertyValue"
    #           },
    #           o_auth2_properties: {
    #             token_url: "TokenUrl", # required
    #             o_auth2_grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"], # required
    #             token_url_custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue"
    #             }
    #           }
    #         },
    #         pardot: {
    #           instance_url: "InstanceUrl",
    #           is_sandbox_environment: false,
    #           business_unit_id: "BusinessUnitId"
    #         }
    #       },
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: "ApiKey", # required
    #           secret_key: "SecretKey", # required
    #         },
    #         datadog: {
    #           api_key: "ApiKey", # required
    #           application_key: "ApplicationKey", # required
    #         },
    #         dynatrace: {
    #           api_token: "ApiToken", # required
    #         },
    #         google_analytics: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         honeycode: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         infor_nexus: {
    #           access_key_id: "AccessKeyId", # required
    #           user_id: "Username", # required
    #           secret_access_key: "Key", # required
    #           datakey: "Key", # required
    #         },
    #         marketo: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         redshift: {
    #           username: "String",
    #           password: "Password"
    #         },
    #         salesforce: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           },
    #           client_credentials_arn: "ClientCredentialsArn",
    #           o_auth2_grant_type: "CLIENT_CREDENTIALS" # One of: ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE", "JWT_BEARER"],
    #           jwt_token: "JwtToken"
    #         },
    #         service_now: {
    #           username: "Username",
    #           password: "Password",
    #           o_auth2_credentials: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           }
    #         },
    #         singular: {
    #           api_key: "ApiKey", # required
    #         },
    #         slack: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         snowflake: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         trendmicro: {
    #           api_secret_key: "ApiSecretKey", # required
    #         },
    #         veeva: {
    #           username: "Username", # required
    #           password: "Password", # required
    #         },
    #         zendesk: {
    #           client_id: "ClientId", # required
    #           client_secret: "ClientSecret", # required
    #           access_token: "AccessToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           }
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           o_auth_credentials: {
    #             client_id: "ClientId", # required
    #             client_secret: "ClientSecret", # required
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           }
    #         },
    #         custom_connector: {
    #           authentication_type: "OAUTH2" # One of: ["OAUTH2", "APIKEY", "BASIC", "CUSTOM"], # required
    #           basic: {
    #             username: "Username", # required
    #             password: "Password", # required
    #           },
    #           oauth2: {
    #             client_id: "ClientId",
    #             client_secret: "ClientSecret",
    #             access_token: "AccessToken",
    #             refresh_token: "RefreshToken",
    #             o_auth_request: {
    #               auth_code: "AuthCode",
    #               redirect_uri: "RedirectUri"
    #             }
    #           },
    #           api_key: {
    #             api_key: "ApiKey", # required
    #             api_secret_key: "ApiSecretKey"
    #           },
    #           custom: {
    #             custom_authentication_type: "CustomAuthenticationType", # required
    #             credentials_map: {
    #               "CredentialsMapKey" => "CredentialsMapValue"
    #             }
    #           }
    #         },
    #         pardot: {
    #           access_token: "AccessToken",
    #           refresh_token: "RefreshToken",
    #           o_auth_request: {
    #             auth_code: "AuthCode",
    #             redirect_uri: "RedirectUri"
    #           },
    #           client_credentials_arn: "ClientCredentialsArn"
    #         }
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_connector_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_profile_arn: "ConnectorProfileArn"
    #   }
    # @return [Types::UpdateConnectorProfileResponse]
    def update_connector_profile(params = {}, options = {})
      request = build_request(:update_connector_profile, params)
      request.send_request(options)
    end

    # <p>Updates a custom connector that you've previously registered. This operation updates the
    #       connector with one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The latest version of the AWS Lambda function that's assigned to the connector</p>
    #             </li>
    #             <li>
    #                <p>A new AWS Lambda function that you specify</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateConnectorRegistrationRequest] params
    # @option params [String] :connector_label
    #   <p>The name of the connector. The name is unique for each connector registration in your AWS
    #         account.</p>
    # @option params [String] :description
    #   <p>A description about the update that you're applying to the connector.</p>
    # @option params [Types::ConnectorProvisioningConfig] :connector_provisioning_config
    #   <p>Contains information about the configuration of the connector being registered.</p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateConnectorRegistration</code> request completes only once. You choose the value
    #         to pass. For example, if you don't receive a response from your request, you can safely retry
    #         the request with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateConnectorRegistration</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_label: "ConnectorLabel", # required
    #     description: "Description",
    #     connector_provisioning_config: {
    #       lambda: {
    #         lambda_arn: "ARN", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_connector_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_arn: "ARN"
    #   }
    # @return [Types::UpdateConnectorRegistrationResponse]
    def update_connector_registration(params = {}, options = {})
      request = build_request(:update_connector_registration, params)
      request.send_request(options)
    end

    # <p> Updates an existing flow. </p>
    # @param [Hash, Types::UpdateFlowRequest] params
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    # @option params [String] :description
    #   <p> A description of the flow. </p>
    # @option params [Types::TriggerConfig] :trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    # @option params [Types::SourceFlowConfig] :source_flow_config
    #   <p> Contains information about the configuration of the source connector used in the flow.
    #       </p>
    # @option params [Array<Types::DestinationFlowConfig>] :destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the destination
    #         connector. </p>
    # @option params [Array<Types::Task>] :tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the flow
    #         run. </p>
    # @option params [Types::MetadataCatalogConfig] :metadata_catalog_config
    #   <p>Specifies the configuration that Amazon AppFlow uses when it catalogs the data that's
    #         transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it
    #         stores metadata in a data catalog.</p>
    # @option params [String] :client_token
    #   <p>The <code>clientToken</code> parameter is an idempotency token. It ensures that your
    #           <code>UpdateFlow</code> request completes only once. You choose the value to pass. For
    #         example, if you don't receive a response from your request, you can safely retry the request
    #         with the same <code>clientToken</code> parameter value.</p>
    #            <p>If you omit a <code>clientToken</code> value, the Amazon Web Services SDK that you are
    #         using inserts a value for you. This way, the SDK can safely retry requests multiple times
    #         after a network error. You must provide your own value for other use cases.</p>
    #            <p>If you specify input parameters that differ from your first request, an error occurs. If
    #         you use a different value for <code>clientToken</code>, Amazon AppFlow considers it a new
    #         call to <code>UpdateFlow</code>. The token is active for 8 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_name: "FlowName", # required
    #     description: "FlowDescription",
    #     trigger_config: { # required
    #       trigger_type: "Scheduled" # One of: ["Scheduled", "Event", "OnDemand"], # required
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental" # One of: ["Incremental", "Complete"],
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1
    #         }
    #       }
    #     },
    #     source_flow_config: { # required
    #       connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #       api_version: "ApiVersion",
    #       connector_profile_name: "ConnectorProfileName",
    #       source_connector_properties: { # required
    #         amplitude: {
    #           object: "Object", # required
    #         },
    #         datadog: {
    #           object: "Object", # required
    #         },
    #         dynatrace: {
    #           object: "Object", # required
    #         },
    #         google_analytics: {
    #           object: "Object", # required
    #         },
    #         infor_nexus: {
    #           object: "Object", # required
    #         },
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #           s3_input_format_config: {
    #             s3_input_file_type: "CSV" # One of: ["CSV", "JSON"]
    #           }
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #           data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         singular: {
    #           object: "Object", # required
    #         },
    #         slack: {
    #           object: "Object", # required
    #         },
    #         trendmicro: {
    #           object: "Object", # required
    #         },
    #         veeva: {
    #           object: "Object", # required
    #           document_type: "DocumentType",
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #         sapo_data: {
    #           object_path: "Object",
    #           parallelism_config: {
    #             max_parallelism: 1, # required
    #           },
    #           pagination_config: {
    #             max_page_size: 1, # required
    #           }
    #         },
    #         custom_connector: {
    #           entity_name: "EntityName", # required
    #           custom_properties: {
    #             "CustomPropertyKey" => "CustomPropertyValue"
    #           },
    #           data_transfer_api: {
    #             name: "DataTransferApiTypeName",
    #             type: "SYNC" # One of: ["SYNC", "ASYNC", "AUTOMATIC"]
    #           }
    #         },
    #         pardot: {
    #           object: "Object", # required
    #         }
    #       },
    #       incremental_pull_config: {
    #         datetime_type_field_name: "DatetimeTypeFieldName"
    #       }
    #     },
    #     destination_flow_config_list: [ # required
    #       {
    #         connector_type: "Salesforce" # One of: ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector", "Pardot"], # required
    #         api_version: "ApiVersion",
    #         connector_profile_name: "ConnectorProfileName",
    #         destination_connector_properties: { # required
    #           redshift: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: {
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: {
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               },
    #               preserve_source_data_typing: false
    #             }
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             data_transfer_api: "AUTOMATIC" # One of: ["AUTOMATIC", "BULKV2", "REST_SYNC"]
    #           },
    #           snowflake: {
    #             object: "Object", # required
    #             intermediate_bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           event_bridge: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           lookout_metrics: {
    #           },
    #           upsolver: {
    #             bucket_name: "UpsolverBucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #             s3_output_format_config: { # required
    #               file_type: "CSV" # One of: ["CSV", "JSON", "PARQUET"],
    #               prefix_config: { # required
    #                 prefix_type: "FILENAME" # One of: ["FILENAME", "PATH", "PATH_AND_FILENAME"],
    #                 prefix_format: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"],
    #                 path_prefix_hierarchy: ["EXECUTION_ID" # One of: ["EXECUTION_ID", "SCHEMA_VERSION"]]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: "None" # One of: ["None", "SingleFile"],
    #                 target_file_size: 1
    #               }
    #             }
    #           },
    #           honeycode: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           customer_profiles: {
    #             domain_name: "DomainName", # required
    #             object_type_name: "ObjectTypeName"
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           marketo: {
    #             object: "Object", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             }
    #           },
    #           custom_connector: {
    #             entity_name: "EntityName", # required
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"],
    #             id_field_names: ["Name"],
    #             custom_properties: {
    #               "CustomPropertyKey" => "CustomPropertyValue"
    #             }
    #           },
    #           sapo_data: {
    #             object_path: "Object", # required
    #             success_response_handling_config: {
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             id_field_names: ["Name"],
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: "BucketPrefix",
    #               bucket_name: "BucketName"
    #             },
    #             write_operation_type: "INSERT" # One of: ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           }
    #         }
    #       }
    #     ],
    #     tasks: [ # required
    #       {
    #         source_fields: ["String"], # required
    #         connector_operator: {
    #           amplitude: "BETWEEN" # One of: ["BETWEEN"],
    #           datadog: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           dynatrace: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           google_analytics: "PROJECTION" # One of: ["PROJECTION", "BETWEEN"],
    #           infor_nexus: "PROJECTION" # One of: ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           marketo: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           s3: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           salesforce: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           service_now: "PROJECTION" # One of: ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           singular: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           slack: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           trendmicro: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           veeva: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           zendesk: "PROJECTION" # One of: ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           sapo_data: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           custom_connector: "PROJECTION" # One of: ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"],
    #           pardot: "PROJECTION" # One of: ["PROJECTION", "EQUAL_TO", "NO_OP", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC"]
    #         },
    #         destination_field: "DestinationField",
    #         task_type: "Arithmetic" # One of: ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate", "Partition"], # required
    #         task_properties: {
    #           "OperatorPropertiesKeys" => "Property"
    #         }
    #       }
    #     ],
    #     metadata_catalog_config: {
    #       glue_data_catalog: {
    #         role_arn: "GlueDataCatalogIAMRole", # required
    #         database_name: "GlueDataCatalogDatabaseName", # required
    #         table_prefix: "GlueDataCatalogTablePrefix", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_status: "Active" # One of: ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   }
    # @return [Types::UpdateFlowResponse]
    def update_flow(params = {}, options = {})
      request = build_request(:update_flow, params)
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
      context[:gem_name] = 'aws-sdk-appflow'
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
