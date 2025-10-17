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

module Aws::Deadline
  # An API client for Aws::Deadline.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Deadline

    add_plugin(::Aws::Deadline::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Deadline::EndpointProvider)
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

    # <p>Assigns a farm membership level to a member.</p>
    # @param [Hash, Types::AssociateMemberToFarmRequest] params
    # @option params [String] :farm_id
    #   <p>The ID of the farm to associate with the member.</p>
    # @option params [String] :principal_id
    #   <p>The member's principal ID to associate with the farm.</p>
    # @option params [String] :principal_type
    #   <p>The principal type of the member to associate with the farm.</p>
    # @option params [String] :identity_store_id
    #   <p>The identity store ID of the member to associate with the farm.</p>
    # @option params [String] :membership_level
    #   <p>The principal's membership level for the associated farm.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #   }
    #   options = {}
    #   response = client.associate_member_to_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMemberToFarmResponse]
    def associate_member_to_farm(params = {}, options = {})
      request = build_request(:associate_member_to_farm, params)
      request.send_request(options)
    end

    # <p>Assigns a fleet membership level to a member.</p>
    # @param [Hash, Types::AssociateMemberToFleetRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the fleet to associate with the member.</p>
    # @option params [String] :fleet_id
    #   <p>The ID of the fleet to associate with a member.</p>
    # @option params [String] :principal_id
    #   <p>The member's principal ID to associate with a fleet.</p>
    # @option params [String] :principal_type
    #   <p>The member's principal type to associate with the fleet.</p>
    # @option params [String] :identity_store_id
    #   <p>The member's identity store ID to associate with the fleet.</p>
    # @option params [String] :membership_level
    #   <p>The principal's membership level for the associated fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #   }
    #   options = {}
    #   response = client.associate_member_to_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMemberToFleetResponse]
    def associate_member_to_fleet(params = {}, options = {})
      request = build_request(:associate_member_to_fleet, params)
      request.send_request(options)
    end

    # <p>Assigns a job membership level to a member</p>
    # @param [Hash, Types::AssociateMemberToJobRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the job to associate with the member.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to associate to the member.</p>
    # @option params [String] :job_id
    #   <p>The job ID to associate with the member.</p>
    # @option params [String] :principal_id
    #   <p>The member's principal ID to associate with the job.</p>
    # @option params [String] :principal_type
    #   <p>The member's principal type to associate with the job.</p>
    # @option params [String] :identity_store_id
    #   <p>The member's identity store ID to associate with the job.</p>
    # @option params [String] :membership_level
    #   <p>The principal's membership level for the associated job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #   }
    #   options = {}
    #   response = client.associate_member_to_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMemberToJobResponse]
    def associate_member_to_job(params = {}, options = {})
      request = build_request(:associate_member_to_job, params)
      request.send_request(options)
    end

    # <p>Assigns a queue membership level to a member</p>
    # @param [Hash, Types::AssociateMemberToQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the queue to associate with the member.</p>
    # @option params [String] :queue_id
    #   <p>The ID of the queue to associate to the member.</p>
    # @option params [String] :principal_id
    #   <p>The member's principal ID to associate with the queue.</p>
    # @option params [String] :principal_type
    #   <p>The member's principal type to associate with the queue.</p>
    # @option params [String] :identity_store_id
    #   <p>The member's identity store ID to associate with the queue.</p>
    # @option params [String] :membership_level
    #   <p>The principal's membership level for the associated queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #   }
    #   options = {}
    #   response = client.associate_member_to_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMemberToQueueResponse]
    def associate_member_to_queue(params = {}, options = {})
      request = build_request(:associate_member_to_queue, params)
      request.send_request(options)
    end

    # <p>Get Amazon Web Services credentials from the fleet role. The IAM permissions of the credentials are
    #          scoped down to have read-only access.</p>
    # @param [Hash, Types::AssumeFleetRoleForReadRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the fleet's farm.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.assume_fleet_role_for_read(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: { # required
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::AssumeFleetRoleForReadResponse]
    def assume_fleet_role_for_read(params = {}, options = {})
      request = build_request(:assume_fleet_role_for_read, params)
      request.send_request(options)
    end

    # <p>Get credentials from the fleet role for a worker.</p>
    # @param [Hash, Types::AssumeFleetRoleForWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the fleet's farm.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID that contains the worker.</p>
    # @option params [String] :worker_id
    #   <p>The ID of the worker assuming the fleet role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   }
    #   options = {}
    #   response = client.assume_fleet_role_for_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: { # required
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::AssumeFleetRoleForWorkerResponse]
    def assume_fleet_role_for_worker(params = {}, options = {})
      request = build_request(:assume_fleet_role_for_worker, params)
      request.send_request(options)
    end

    # <p>Gets Amazon Web Services credentials from the queue role. The IAM permissions of the credentials are
    #          scoped down to have read-only access.</p>
    # @param [Hash, Types::AssumeQueueRoleForReadRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm containing the queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.assume_queue_role_for_read(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: { # required
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::AssumeQueueRoleForReadResponse]
    def assume_queue_role_for_read(params = {}, options = {})
      request = build_request(:assume_queue_role_for_read, params)
      request.send_request(options)
    end

    # <p>Allows a user to assume a role for a queue.</p>
    # @param [Hash, Types::AssumeQueueRoleForUserRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the queue that the user assumes the role for.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue that the user assumes the role for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.assume_queue_role_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: { # required
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::AssumeQueueRoleForUserResponse]
    def assume_queue_role_for_user(params = {}, options = {})
      request = build_request(:assume_queue_role_for_user, params)
      request.send_request(options)
    end

    # <p>Allows a worker to assume a queue role.</p>
    # @param [Hash, Types::AssumeQueueRoleForWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the worker assuming the queue role.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the worker assuming the queue role.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID of the worker assuming the queue role.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the worker assuming the queue role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.assume_queue_role_for_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::AssumeQueueRoleForWorkerResponse]
    def assume_queue_role_for_worker(params = {}, options = {})
      request = build_request(:assume_queue_role_for_worker, params)
      request.send_request(options)
    end

    # <p>Get batched job details for a worker.</p>
    # @param [Hash, Types::BatchGetJobEntityRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the worker that's fetching job details. The worker must have an
    #            assignment on a job to fetch job details.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the worker that's fetching job details. The worker must have an
    #            assignment on a job to fetch job details.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID of the worker containing the job details to get.</p>
    # @option params [Array<Types::JobEntityIdentifiersUnion>] :identifiers
    #   <p>The job identifiers to include within the job entity batch details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     identifiers: [{ # required
    #       # One of:
    #       job_details: {
    #         job_id: "JobId", # required
    #       },
    #       job_attachment_details: {
    #         job_id: "JobId", # required
    #       },
    #       step_details: {
    #         job_id: "JobId", # required
    #         step_id: "StepId", # required
    #       },
    #       environment_details: {
    #         job_id: "JobId", # required
    #         environment_id: "EnvironmentId", # required
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.batch_get_job_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [{ # required
    #       # One of:
    #       job_details: {
    #         job_id: "JobId", # required
    #         job_attachment_settings: {
    #           s3_bucket_name: "S3BucketName", # required
    #           root_prefix: "S3Prefix", # required
    #         },
    #         job_run_as_user: {
    #           posix: {
    #             user: "String", # required
    #             group: "String", # required
    #           },
    #           windows: {
    #             user: "String", # required
    #             password_arn: "String", # required
    #           },
    #           run_as: "QUEUE_CONFIGURED_USER" # One of: ["QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"], # required
    #         },
    #         log_group_name: "String", # required
    #         queue_role_arn: "IamRoleArn",
    #         parameters: {
    #           "String" => {
    #             # One of:
    #             int: "IntString",
    #             float: "FloatString",
    #             string: "ParameterString",
    #             path: "PathString"
    #           }
    #         },
    #         schema_version: "String", # required
    #         path_mapping_rules: [
    #           {
    #             source_path_format: "windows" # One of: ["windows", "posix"], # required
    #             source_path: "String", # required
    #             destination_path: "String", # required
    #           }
    #         ]
    #       },
    #       job_attachment_details: {
    #         job_id: "JobId", # required
    #         attachments: { # required
    #           manifests: [ # required
    #             {
    #               file_system_location_name: "FileSystemLocationName",
    #               root_path: "String", # required
    #               root_path_format: "windows" # One of: ["windows", "posix"], # required
    #               output_relative_directories: ["String"],
    #               input_manifest_path: "String",
    #               input_manifest_hash: "String"
    #             }
    #           ],
    #           file_system: "COPIED" # One of: ["COPIED", "VIRTUAL"]
    #         }
    #       },
    #       step_details: {
    #         job_id: "JobId", # required
    #         step_id: "StepId", # required
    #         schema_version: "String", # required
    #         template: ""null"", # required
    #         dependencies: ["StepId"], # required
    #       },
    #       environment_details: {
    #         job_id: "JobId", # required
    #         environment_id: "EnvironmentId", # required
    #         schema_version: "String", # required
    #         template: ""null"", # required
    #       }
    #     }],
    #     errors: [{ # required
    #       # One of:
    #       job_details: {
    #         job_id: "JobId", # required
    #         code: "AccessDeniedException" # One of: ["AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"], # required
    #         message: "String", # required
    #       },
    #       job_attachment_details: {
    #         job_id: "JobId", # required
    #         code: "AccessDeniedException" # One of: ["AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"], # required
    #         message: "String", # required
    #       },
    #       step_details: {
    #         job_id: "JobId", # required
    #         step_id: "StepId", # required
    #         code: "AccessDeniedException" # One of: ["AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"], # required
    #         message: "String", # required
    #       },
    #       environment_details: {
    #         job_id: "JobId", # required
    #         environment_id: "EnvironmentId", # required
    #         code: "AccessDeniedException" # One of: ["AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"], # required
    #         message: "String", # required
    #       }
    #     }]
    #   }
    # @return [Types::BatchGetJobEntityResponse]
    def batch_get_job_entity(params = {}, options = {})
      request = build_request(:batch_get_job_entity, params)
      request.send_request(options)
    end

    # <p>Copies a job template to an Amazon S3 bucket.</p>
    # @param [Hash, Types::CopyJobTemplateRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to copy.</p>
    # @option params [String] :job_id
    #   <p>The job ID to copy.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to copy.</p>
    # @option params [Types::S3Location] :target_s3_location
    #   <p>The Amazon S3 bucket name and key where you would like to add a copy of the job
    #            template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     job_id: "JobId", # required
    #     queue_id: "QueueId", # required
    #     target_s3_location: { # required
    #       bucket_name: "S3BucketName", # required
    #       key: "S3Key", # required
    #     }
    #   }
    #   options = {}
    #   response = client.copy_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_type: "JSON" # One of: ["JSON", "YAML"], # required
    #   }
    # @return [Types::CopyJobTemplateResponse]
    def copy_job_template(params = {}, options = {})
      request = build_request(:copy_job_template, params)
      request.send_request(options)
    end

    # <p>Creates a budget to set spending thresholds for your rendering activity.</p>
    # @param [Hash, Types::CreateBudgetRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to include in this budget.</p>
    # @option params [Types::UsageTrackingResource] :usage_tracking_resource
    #   <p>The queue ID provided to this budget to track usage.</p>
    # @option params [String] :display_name
    #   <p>The display name of the budget.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the budget.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [Float] :approximate_dollar_limit
    #   <p>The dollar limit based on consumed usage.</p>
    # @option params [Array<Types::BudgetActionToAdd>] :actions
    #   <p>The budget actions to specify what happens when the budget runs out.</p>
    # @option params [Types::BudgetSchedule] :schedule
    #   <p>The schedule to associate with this budget.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     usage_tracking_resource: { # required
    #       # One of:
    #       queue_id: "QueueId"
    #     },
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     approximate_dollar_limit: 1.0, # required
    #     actions: [ # required
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS" # One of: ["STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #         threshold_percentage: 1.0, # required
    #         description: "Description"
    #       }
    #     ],
    #     schedule: { # required
    #       # One of:
    #       fixed: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budget_id: "BudgetId", # required
    #   }
    # @return [Types::CreateBudgetResponse]
    def create_budget(params = {}, options = {})
      request = build_request(:create_budget, params)
      request.send_request(options)
    end

    # <p>Creates a farm to allow space for queues and fleets. Farms are the space where the
    #          components of your renders gather and are pieced together in the cloud. Farms contain
    #          budgets and allow you to enforce permissions. Deadline Cloud farms are a useful container for
    #          large projects.</p>
    # @param [Hash, Types::CreateFarmRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :display_name
    #   <p>The display name of the farm.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the farm.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key to use on the farm.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to your farm. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     farm_id: "FarmId", # required
    #   }
    # @return [Types::CreateFarmResponse]
    def create_farm(params = {}, options = {})
      request = build_request(:create_farm, params)
      request.send_request(options)
    end

    # <p>Creates a fleet. Fleets gather information relating to compute, or capacity, for renders
    #          within your farms. You can choose to manage your own capacity or opt to have fleets fully
    #          managed by Deadline Cloud.</p>
    # @param [Hash, Types::CreateFleetRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the fleet.</p>
    # @option params [String] :display_name
    #   <p>The display name of the fleet.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the fleet.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN for the role that the fleet's workers will use.</p>
    # @option params [Integer] :min_worker_count
    #   <p>The minimum number of workers for the fleet.</p>
    # @option params [Integer] :max_worker_count
    #   <p>The maximum number of workers for the fleet.</p>
    #            <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's
    #            maximum worker count. The service maintains eventual consistency for the worker count. If
    #            you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you
    #            might exceed your fleet's maximum worker count. For example, if your
    #            <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick
    #            <code>CreateWorker</code> calls might successfully create 2 workers instead of 1,
    #            resulting in 11 total workers.</p>
    # @option params [Types::FleetConfiguration] :configuration
    #   <p>The configuration settings for the fleet. Customer managed fleets are self-managed.
    #            Service managed Amazon EC2 fleets are managed by Deadline Cloud.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @option params [Types::HostConfiguration] :host_configuration
    #   <p>Provides a script that runs as a worker is starting up that you can use to provide
    #            additional configuration for workers in your fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     role_arn: "IamRoleArn", # required
    #     min_worker_count: 1,
    #     max_worker_count: 1, # required
    #     configuration: { # required
    #       # One of:
    #       customer_managed: {
    #         mode: "NO_SCALING" # One of: ["NO_SCALING", "EVENT_BASED_AUTO_SCALING"], # required
    #         worker_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_types: ["gpu" # One of: ["gpu"]],
    #           accelerator_count: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_total_memory_mi_b: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         storage_profile_id: "StorageProfileId",
    #         tag_propagation_mode: "NO_PROPAGATION" # One of: ["NO_PROPAGATION", "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"]
    #       },
    #       service_managed_ec2: {
    #         instance_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           root_ebs_volume: {
    #             size_gi_b: 1,
    #             iops: 1,
    #             throughput_mi_b: 1
    #           },
    #           accelerator_capabilities: {
    #             selections: [ # required
    #               {
    #                 name: "t4" # One of: ["t4", "a10g", "l4", "l40s"], # required
    #                 runtime: "AcceleratorRuntime"
    #               }
    #             ],
    #             count: {
    #               min: 1, # required
    #               max: 1
    #             }
    #           },
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"],
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         instance_market_options: { # required
    #           type: "on-demand" # One of: ["on-demand", "spot", "wait-and-save"], # required
    #         },
    #         vpc_configuration: {
    #           resource_configuration_arns: ["VpcResourceConfigurationArn"]
    #         },
    #         storage_profile_id: "StorageProfileId"
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     host_configuration: {
    #       script_body: "HostConfigurationScript", # required
    #       script_timeout_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId", # required
    #   }
    # @return [Types::CreateFleetResponse]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <p>Creates a job. A job is a set of instructions that Deadline Cloud uses to schedule
    #          and run work on available workers. For more information, see <a href="https://docs.aws.amazon.com/deadline-cloud/latest/userguide/deadline-cloud-jobs.html">Deadline Cloud
    #             jobs</a>.</p>
    # @param [Hash, Types::CreateJobRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the job.</p>
    # @option params [String] :queue_id
    #   <p>The ID of the queue that the job is submitted to.</p>
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :template
    #   <p>The job template to use for this job.</p>
    # @option params [String] :template_type
    #   <p>The file type for the job template.</p>
    # @option params [Integer] :priority
    #   <p>The priority of the job. The highest priority (first scheduled) is 100. When two jobs
    #            have the same priority, the oldest job is scheduled first.</p>
    # @option params [Hash<String, Types::JobParameter>] :parameters
    #   <p>The parameters for the job.</p>
    # @option params [Types::Attachments] :attachments
    #   <p>The attachments for the job. Attach files required for the job to run to a render
    #            job.</p>
    # @option params [String] :storage_profile_id
    #   <p>The storage profile ID for the storage profile to connect to the job.</p>
    # @option params [String] :target_task_run_status
    #   <p>The initial job status when it is created. Jobs that are created with a
    #               <code>SUSPENDED</code> status will not run until manually requeued.</p>
    # @option params [Integer] :max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    # @option params [Integer] :max_retries_per_task
    #   <p>The maximum number of retries for each task.</p>
    # @option params [Integer] :max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the
    #               <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the
    #            job, even if the fleets assigned to the job's queue has available workers.</p>
    #            <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no
    #            maximum number of workers.</p>
    #            <p>If you don't specify the <code>maxWorkerCount</code>, Deadline Cloud won't throttle
    #            the number of workers used to process the job.</p>
    # @option params [String] :source_job_id
    #   <p>The job ID for the source job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     client_token: "ClientToken",
    #     template: "JobTemplate",
    #     template_type: "JSON" # One of: ["JSON", "YAML"],
    #     priority: 1, # required
    #     parameters: {
    #       "String" => {
    #         # One of:
    #         int: "IntString",
    #         float: "FloatString",
    #         string: "ParameterString",
    #         path: "PathString"
    #       }
    #     },
    #     attachments: {
    #       manifests: [ # required
    #         {
    #           file_system_location_name: "FileSystemLocationName",
    #           root_path: "String", # required
    #           root_path_format: "windows" # One of: ["windows", "posix"], # required
    #           output_relative_directories: ["String"],
    #           input_manifest_path: "String",
    #           input_manifest_hash: "String"
    #         }
    #       ],
    #       file_system: "COPIED" # One of: ["COPIED", "VIRTUAL"]
    #     },
    #     storage_profile_id: "StorageProfileId",
    #     target_task_run_status: "READY" # One of: ["READY", "SUSPENDED"],
    #     max_failed_tasks_count: 1,
    #     max_retries_per_task: 1,
    #     max_worker_count: 1,
    #     source_job_id: "JobId"
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #   }
    # @return [Types::CreateJobResponse]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>Creates a license endpoint to integrate your various licensed software used for
    #          rendering on Deadline Cloud.</p>
    # @param [Hash, Types::CreateLicenseEndpointRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :vpc_id
    #   <p>The VPC (virtual private cloud) ID to use with the license endpoint.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnet IDs.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_license_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #   }
    # @return [Types::CreateLicenseEndpointResponse]
    def create_license_endpoint(params = {}, options = {})
      request = build_request(:create_license_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a limit that manages the distribution of shared resources, such as floating
    #          licenses. A limit can throttle work assignments, help manage workloads, and track current
    #          usage. Before you use a limit, you must associate the limit with one or more queues. </p>
    #          <p>You must add the <code>amountRequirementName</code> to a step in a job template to
    #          declare the limit requirement.</p>
    # @param [Hash, Types::CreateLimitRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :display_name
    #   <p>The display name of the limit.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :amount_requirement_name
    #   <p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of
    #            the <code>hostRequirements</code> in a step of a job template to declare the limit
    #            requirement.</p>
    # @option params [Integer] :max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are
    #            in use, steps that require the limit won't be scheduled until the resource is
    #            available.</p>
    #            <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on
    #            the number of resources that can be acquired for this limit.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm that contains the limit.</p>
    # @option params [String] :description
    #   <p>A description of the limit. A description helps you identify the purpose of the
    #            limit.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     amount_requirement_name: "AmountRequirementName", # required
    #     max_count: 1, # required
    #     farm_id: "FarmId", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.create_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit_id: "LimitId", # required
    #   }
    # @return [Types::CreateLimitResponse]
    def create_limit(params = {}, options = {})
      request = build_request(:create_limit, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Deadline Cloud monitor that you can use to view your farms, queues, and
    #          fleets. After you submit a job, you can track the progress of the tasks and steps that make
    #          up the job, and then download the job's results. </p>
    # @param [Hash, Types::CreateMonitorRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :display_name
    #   <p>The name that you give the monitor that is displayed in the Deadline Cloud console.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :identity_center_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center instance that authenticates monitor users.</p>
    # @option params [String] :subdomain
    #   <p>The subdomain to use when creating the monitor URL. The full URL of the monitor is
    #            subdomain.Region.deadlinecloud.amazonaws.com.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the monitor uses to connect to Deadline Cloud. Every user
    #            that signs in to the monitor using IAM Identity Center uses this role to access Deadline Cloud
    #            resources.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to your monitor. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     identity_center_instance_arn: "IdentityCenterInstanceArn", # required
    #     subdomain: "Subdomain", # required
    #     role_arn: "IamRoleArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_id: "MonitorId", # required
    #     identity_center_application_arn: "IdentityCenterApplicationArn", # required
    #   }
    # @return [Types::CreateMonitorResponse]
    def create_monitor(params = {}, options = {})
      request = build_request(:create_monitor, params)
      request.send_request(options)
    end

    # <p>Creates a queue to coordinate the order in which jobs run on a farm. A queue can also
    #          specify where to pull resources and indicate where to output completed jobs.</p>
    # @param [Hash, Types::CreateQueueRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the queue.</p>
    # @option params [String] :display_name
    #   <p>The display name of the queue.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the queue.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :default_budget_action
    #   <p>The default action to take on a queue if a budget isn't configured.</p>
    # @option params [Types::JobAttachmentSettings] :job_attachment_settings
    #   <p>The job attachment settings for the queue. These are the Amazon S3 bucket name and the Amazon S3
    #            prefix.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that workers will use while running jobs for this queue.</p>
    # @option params [Types::JobRunAsUser] :job_run_as_user
    #   <p>The jobs in the queue run as the specified POSIX user.</p>
    # @option params [Array<String>] :required_file_system_location_names
    #   <p>The file system location name to include in the queue.</p>
    # @option params [Array<String>] :allowed_storage_profile_ids
    #   <p>The storage profile IDs to include in the queue.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     default_budget_action: "NONE" # One of: ["NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"],
    #     job_attachment_settings: {
    #       s3_bucket_name: "S3BucketName", # required
    #       root_prefix: "S3Prefix", # required
    #     },
    #     role_arn: "IamRoleArn",
    #     job_run_as_user: {
    #       posix: {
    #         user: "String", # required
    #         group: "String", # required
    #       },
    #       windows: {
    #         user: "String", # required
    #         password_arn: "String", # required
    #       },
    #       run_as: "QUEUE_CONFIGURED_USER" # One of: ["QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"], # required
    #     },
    #     required_file_system_location_names: ["FileSystemLocationName"],
    #     allowed_storage_profile_ids: ["StorageProfileId"],
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_id: "QueueId", # required
    #   }
    # @return [Types::CreateQueueResponse]
    def create_queue(params = {}, options = {})
      request = build_request(:create_queue, params)
      request.send_request(options)
    end

    # <p>Creates an environment for a queue that defines how jobs in the queue run.</p>
    # @param [Hash, Types::CreateQueueEnvironmentRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the environment.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to connect the queue and environment.</p>
    # @option params [Integer] :priority
    #   <p>Sets the priority of the environments in the queue from 0 to 10,000, where 0 is the
    #            highest priority (activated first and deactivated last). If two environments share the same
    #            priority value, the environment created first takes higher priority.</p>
    # @option params [String] :template_type
    #   <p>The template's file type, <code>JSON</code> or <code>YAML</code>.</p>
    # @option params [String] :template
    #   <p>The environment template to use in the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     priority: 1, # required
    #     template_type: "JSON" # One of: ["JSON", "YAML"], # required
    #     template: "EnvironmentTemplate", # required
    #   }
    #   options = {}
    #   response = client.create_queue_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_environment_id: "QueueEnvironmentId", # required
    #   }
    # @return [Types::CreateQueueEnvironmentResponse]
    def create_queue_environment(params = {}, options = {})
      request = build_request(:create_queue_environment, params)
      request.send_request(options)
    end

    # <p>Creates an association between a queue and a fleet.</p>
    # @param [Hash, Types::CreateQueueFleetAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The ID of the farm that the queue and fleet belong to.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.create_queue_fleet_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateQueueFleetAssociationResponse]
    def create_queue_fleet_association(params = {}, options = {})
      request = build_request(:create_queue_fleet_association, params)
      request.send_request(options)
    end

    # <p>Associates a limit with a particular queue. After the limit is associated, all workers
    #          for jobs that specify the limit associated with the queue are subject to the limit. You
    #          can't associate two limits with the same <code>amountRequirementName</code> to the same
    #          queue.</p>
    # @param [Hash, Types::CreateQueueLimitAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the queue and limit to associate.</p>
    # @option params [String] :queue_id
    #   <p>The unique identifier of the queue to associate with the limit.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit to associate with the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   }
    #   options = {}
    #   response = client.create_queue_limit_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateQueueLimitAssociationResponse]
    def create_queue_limit_association(params = {}, options = {})
      request = build_request(:create_queue_limit_association, params)
      request.send_request(options)
    end

    # <p>Creates a storage profile that specifies the operating system, file type, and file
    #          location of resources used on a farm.</p>
    # @param [Hash, Types::CreateStorageProfileRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the storage profile.</p>
    # @option params [String] :display_name
    #   <p>The display name of the storage profile.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :os_family
    #   <p>The type of operating system (OS) for the storage profile.</p>
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations
    #   <p>File system paths to include in the storage profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #     file_system_locations: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED" # One of: ["SHARED", "LOCAL"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_storage_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_profile_id: "StorageProfileId", # required
    #   }
    # @return [Types::CreateStorageProfileResponse]
    def create_storage_profile(params = {}, options = {})
      request = build_request(:create_storage_profile, params)
      request.send_request(options)
    end

    # <p>Creates a worker. A worker tells your instance how much processing power (vCPU), and
    #          memory (GiB) you’ll need to assemble the digital assets held within a particular instance.
    #          You can specify certain instance types to use, or let the worker know which instances types
    #          to exclude.</p>
    #          <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's
    #          maximum worker count. The service maintains eventual consistency for the worker count. If
    #          you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you
    #          might exceed your fleet's maximum worker count. For example, if your
    #             <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick
    #             <code>CreateWorker</code> calls might successfully create 2 workers instead of 1,
    #          resulting in 11 total workers.</p>
    # @param [Hash, Types::CreateWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to connect to the worker.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to connect to the worker.</p>
    # @option params [Types::HostPropertiesRequest] :host_properties
    #   <p>The IP address and host name of the worker.</p>
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"]
    #       },
    #       host_name: "HostName"
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     worker_id: "WorkerId", # required
    #   }
    # @return [Types::CreateWorkerResponse]
    def create_worker(params = {}, options = {})
      request = build_request(:create_worker, params)
      request.send_request(options)
    end

    # <p>Deletes a budget.</p>
    # @param [Hash, Types::DeleteBudgetRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to remove from the budget.</p>
    # @option params [String] :budget_id
    #   <p>The budget ID of the budget to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #   }
    #   options = {}
    #   response = client.delete_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBudgetResponse]
    def delete_budget(params = {}, options = {})
      request = build_request(:delete_budget, params)
      request.send_request(options)
    end

    # <p>Deletes a farm.</p>
    # @param [Hash, Types::DeleteFarmRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #   }
    #   options = {}
    #   response = client.delete_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFarmResponse]
    def delete_farm(params = {}, options = {})
      request = build_request(:delete_farm, params)
      request.send_request(options)
    end

    # <p>Deletes a fleet.</p>
    # @param [Hash, Types::DeleteFleetRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to remove from the fleet.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the fleet to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFleetResponse]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <p>Deletes a license endpoint.</p>
    # @param [Hash, Types::DeleteLicenseEndpointRequest] params
    # @option params [String] :license_endpoint_id
    #   <p>The license endpoint ID of the license endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #   }
    #   options = {}
    #   response = client.delete_license_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLicenseEndpointResponse]
    def delete_license_endpoint(params = {}, options = {})
      request = build_request(:delete_license_endpoint, params)
      request.send_request(options)
    end

    # <p>Removes a limit from the specified farm. Before you delete a limit you must use the
    #             <code>DeleteQueueLimitAssociation</code> operation to remove the association with any
    #          queues. </p>
    # @param [Hash, Types::DeleteLimitRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the limit to delete.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #   }
    #   options = {}
    #   response = client.delete_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLimitResponse]
    def delete_limit(params = {}, options = {})
      request = build_request(:delete_limit, params)
      request.send_request(options)
    end

    # <p>Deletes a metered product.</p>
    # @param [Hash, Types::DeleteMeteredProductRequest] params
    # @option params [String] :license_endpoint_id
    #   <p>The ID of the license endpoint from which to remove the metered product.</p>
    # @option params [String] :product_id
    #   <p>The product ID to remove from the license endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     product_id: "MeteredProductId", # required
    #   }
    #   options = {}
    #   response = client.delete_metered_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMeteredProductResponse]
    def delete_metered_product(params = {}, options = {})
      request = build_request(:delete_metered_product, params)
      request.send_request(options)
    end

    # <p>Removes a Deadline Cloud monitor. After you delete a monitor, you can create a new one and
    #          attach farms to the monitor.</p>
    # @param [Hash, Types::DeleteMonitorRequest] params
    # @option params [String] :monitor_id
    #   <p>The unique identifier of the monitor to delete. This ID is returned by the
    #               <code>CreateMonitor</code> operation, and is included in the response to the
    #               <code>GetMonitor</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_id: "MonitorId", # required
    #   }
    #   options = {}
    #   response = client.delete_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMonitorResponse]
    def delete_monitor(params = {}, options = {})
      request = build_request(:delete_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes a queue.</p>
    #          <important>
    #             <p>You can't recover the jobs in a queue if you delete the queue. Deleting the queue
    #             also deletes the jobs in that queue.</p>
    #          </important>
    # @param [Hash, Types::DeleteQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The ID of the farm from which to remove the queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.delete_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueueResponse]
    def delete_queue(params = {}, options = {})
      request = build_request(:delete_queue, params)
      request.send_request(options)
    end

    # <p>Deletes a queue environment.</p>
    # @param [Hash, Types::DeleteQueueEnvironmentRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm from which to remove the queue environment.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue environment to delete.</p>
    # @option params [String] :queue_environment_id
    #   <p>The queue environment ID of the queue environment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_queue_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueueEnvironmentResponse]
    def delete_queue_environment(params = {}, options = {})
      request = build_request(:delete_queue_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a queue-fleet association.</p>
    # @param [Hash, Types::DeleteQueueFleetAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm that holds the queue-fleet association.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue-fleet association.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the queue-fleet association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.delete_queue_fleet_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueueFleetAssociationResponse]
    def delete_queue_fleet_association(params = {}, options = {})
      request = build_request(:delete_queue_fleet_association, params)
      request.send_request(options)
    end

    # <p>Removes the association between a queue and a limit. You must use the
    #             <code>UpdateQueueLimitAssociation</code> operation to set the status to
    #             <code>STOP_LIMIT_USAGE_AND_COMPLETE_TASKS</code> or
    #             <code>STOP_LIMIT_USAGE_AND_CANCEL_TASKS</code>. The status does not change immediately.
    #          Use the <code>GetQueueLimitAssociation</code> operation to see if the status changed to
    #             <code>STOPPED</code> before deleting the association.</p>
    # @param [Hash, Types::DeleteQueueLimitAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the queue and limit to
    #            disassociate.</p>
    # @option params [String] :queue_id
    #   <p>The unique identifier of the queue to disassociate.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit to disassociate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   }
    #   options = {}
    #   response = client.delete_queue_limit_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueueLimitAssociationResponse]
    def delete_queue_limit_association(params = {}, options = {})
      request = build_request(:delete_queue_limit_association, params)
      request.send_request(options)
    end

    # <p>Deletes a storage profile.</p>
    # @param [Hash, Types::DeleteStorageProfileRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm from which to remove the storage profile.</p>
    # @option params [String] :storage_profile_id
    #   <p>The storage profile ID of the storage profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_storage_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStorageProfileResponse]
    def delete_storage_profile(params = {}, options = {})
      request = build_request(:delete_storage_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a worker.</p>
    # @param [Hash, Types::DeleteWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the worker to delete.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the worker to delete.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID of the worker to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   }
    #   options = {}
    #   response = client.delete_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorkerResponse]
    def delete_worker(params = {}, options = {})
      request = build_request(:delete_worker, params)
      request.send_request(options)
    end

    # <p>Disassociates a member from a farm.</p>
    # @param [Hash, Types::DisassociateMemberFromFarmRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm to disassociate from the member.</p>
    # @option params [String] :principal_id
    #   <p>A member's principal ID to disassociate from a farm.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member_from_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberFromFarmResponse]
    def disassociate_member_from_farm(params = {}, options = {})
      request = build_request(:disassociate_member_from_farm, params)
      request.send_request(options)
    end

    # <p>Disassociates a member from a fleet.</p>
    # @param [Hash, Types::DisassociateMemberFromFleetRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the fleet to disassociate a member from.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the fleet to from which to disassociate a member.</p>
    # @option params [String] :principal_id
    #   <p>A member's principal ID to disassociate from a fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member_from_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberFromFleetResponse]
    def disassociate_member_from_fleet(params = {}, options = {})
      request = build_request(:disassociate_member_from_fleet, params)
      request.send_request(options)
    end

    # <p>Disassociates a member from a job.</p>
    # @param [Hash, Types::DisassociateMemberFromJobRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the job to disassociate from the member.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID connected to a job for which you're disassociating a member.</p>
    # @option params [String] :job_id
    #   <p>The job ID to disassociate from a member in a job.</p>
    # @option params [String] :principal_id
    #   <p>A member's principal ID to disassociate from a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member_from_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberFromJobResponse]
    def disassociate_member_from_job(params = {}, options = {})
      request = build_request(:disassociate_member_from_job, params)
      request.send_request(options)
    end

    # <p>Disassociates a member from a queue.</p>
    # @param [Hash, Types::DisassociateMemberFromQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue to disassociate from a member.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue in which you're disassociating from a member.</p>
    # @option params [String] :principal_id
    #   <p>A member's principal ID to disassociate from a queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member_from_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberFromQueueResponse]
    def disassociate_member_from_queue(params = {}, options = {})
      request = build_request(:disassociate_member_from_queue, params)
      request.send_request(options)
    end

    # <p>Get a budget.</p>
    # @param [Hash, Types::GetBudgetRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm connected to the budget.</p>
    # @option params [String] :budget_id
    #   <p>The budget ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #   }
    #   options = {}
    #   response = client.get_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budget_id: "BudgetId", # required
    #     usage_tracking_resource: { # required
    #       # One of:
    #       queue_id: "QueueId"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     approximate_dollar_limit: 1.0, # required
    #     usages: { # required
    #       approximate_dollar_usage: 1.0, # required
    #     },
    #     actions: [ # required
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS" # One of: ["STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #         threshold_percentage: 1.0, # required
    #         description: "Description"
    #       }
    #     ],
    #     schedule: { # required
    #       # One of:
    #       fixed: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #     },
    #     created_by: "CreatedBy", # required
    #     created_at: Time.now, # required
    #     updated_by: "UpdatedBy",
    #     updated_at: Time.now,
    #     queue_stopped_at: Time.now
    #   }
    # @return [Types::GetBudgetResponse]
    def get_budget(params = {}, options = {})
      request = build_request(:get_budget, params)
      request.send_request(options)
    end

    # <p>Get a farm.</p>
    # @param [Hash, Types::GetFarmRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #   }
    #   options = {}
    #   response = client.get_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn", # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetFarmResponse]
    def get_farm(params = {}, options = {})
      request = build_request(:get_farm, params)
      request.send_request(options)
    end

    # <p>Get a fleet.</p>
    # @param [Hash, Types::GetFleetRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm in the fleet.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the fleet to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.get_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId", # required
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_FAILED", "SUSPENDED"], # required
    #     status_message: "String",
    #     auto_scaling_status: "GROWING" # One of: ["GROWING", "STEADY", "SHRINKING"],
    #     target_worker_count: 1,
    #     worker_count: 1, # required
    #     min_worker_count: 1, # required
    #     max_worker_count: 1, # required
    #     configuration: { # required
    #       # One of:
    #       customer_managed: {
    #         mode: "NO_SCALING" # One of: ["NO_SCALING", "EVENT_BASED_AUTO_SCALING"], # required
    #         worker_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_types: ["gpu" # One of: ["gpu"]],
    #           accelerator_count: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_total_memory_mi_b: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         storage_profile_id: "StorageProfileId",
    #         tag_propagation_mode: "NO_PROPAGATION" # One of: ["NO_PROPAGATION", "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"]
    #       },
    #       service_managed_ec2: {
    #         instance_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           root_ebs_volume: {
    #             size_gi_b: 1,
    #             iops: 1,
    #             throughput_mi_b: 1
    #           },
    #           accelerator_capabilities: {
    #             selections: [ # required
    #               {
    #                 name: "t4" # One of: ["t4", "a10g", "l4", "l40s"], # required
    #                 runtime: "AcceleratorRuntime"
    #               }
    #             ],
    #             count: {
    #               min: 1, # required
    #               max: 1
    #             }
    #           },
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"],
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         instance_market_options: { # required
    #           type: "on-demand" # One of: ["on-demand", "spot", "wait-and-save"], # required
    #         },
    #         vpc_configuration: {
    #           resource_configuration_arns: ["VpcResourceConfigurationArn"]
    #         },
    #         storage_profile_id: "StorageProfileId"
    #       }
    #     },
    #     host_configuration: {
    #       script_body: "HostConfigurationScript", # required
    #       script_timeout_seconds: 1
    #     },
    #     capabilities: {
    #       amounts: [
    #         {
    #           name: "AmountCapabilityName", # required
    #           min: 1.0, # required
    #           max: 1.0
    #         }
    #       ],
    #       attributes: [
    #         {
    #           name: "AttributeCapabilityName", # required
    #           values: ["AttributeCapabilityValue"], # required
    #         }
    #       ]
    #     },
    #     role_arn: "IamRoleArn", # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetFleetResponse]
    def get_fleet(params = {}, options = {})
      request = build_request(:get_fleet, params)
      request.send_request(options)
    end

    # <p>Gets a Deadline Cloud job.</p>
    # @param [Hash, Types::GetJobRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm in the job.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID associated with the job.</p>
    # @option params [String] :job_id
    #   <p>The job ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     name: "JobName", # required
    #     lifecycle_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"], # required
    #     lifecycle_status_message: "String", # required
    #     priority: 1, # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"],
    #     target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #     task_run_status_counts: {
    #       "TaskRunStatus" => 1
    #     },
    #     task_failure_retry_count: 1,
    #     storage_profile_id: "StorageProfileId",
    #     max_failed_tasks_count: 1,
    #     max_retries_per_task: 1,
    #     parameters: {
    #       "String" => {
    #         # One of:
    #         int: "IntString",
    #         float: "FloatString",
    #         string: "ParameterString",
    #         path: "PathString"
    #       }
    #     },
    #     attachments: {
    #       manifests: [ # required
    #         {
    #           file_system_location_name: "FileSystemLocationName",
    #           root_path: "String", # required
    #           root_path_format: "windows" # One of: ["windows", "posix"], # required
    #           output_relative_directories: ["String"],
    #           input_manifest_path: "String",
    #           input_manifest_hash: "String"
    #         }
    #       ],
    #       file_system: "COPIED" # One of: ["COPIED", "VIRTUAL"]
    #     },
    #     description: "JobDescription",
    #     max_worker_count: 1,
    #     source_job_id: "JobId"
    #   }
    # @return [Types::GetJobResponse]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>Gets a licence endpoint.</p>
    # @param [Hash, Types::GetLicenseEndpointRequest] params
    # @option params [String] :license_endpoint_id
    #   <p>The license endpoint ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #   }
    #   options = {}
    #   response = client.get_license_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "NOT_READY"], # required
    #     status_message: "StatusMessage", # required
    #     vpc_id: "VpcId",
    #     dns_name: "DnsName",
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"]
    #   }
    # @return [Types::GetLicenseEndpointResponse]
    def get_license_endpoint(params = {}, options = {})
      request = build_request(:get_license_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific limit.</p>
    # @param [Hash, Types::GetLimitRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #   }
    #   options = {}
    #   response = client.get_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     display_name: "ResourceName", # required
    #     amount_requirement_name: "AmountRequirementName", # required
    #     max_count: 1, # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #     current_count: 1, # required
    #     description: "Description"
    #   }
    # @return [Types::GetLimitResponse]
    def get_limit(params = {}, options = {})
      request = build_request(:get_limit, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified monitor.</p>
    # @param [Hash, Types::GetMonitorRequest] params
    # @option params [String] :monitor_id
    #   <p>The unique identifier for the monitor. This ID is returned by the
    #               <code>CreateMonitor</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_id: "MonitorId", # required
    #   }
    #   options = {}
    #   response = client.get_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_id: "MonitorId", # required
    #     display_name: "ResourceName", # required
    #     subdomain: "Subdomain", # required
    #     url: "Url", # required
    #     role_arn: "IamRoleArn", # required
    #     identity_center_instance_arn: "IdentityCenterInstanceArn", # required
    #     identity_center_application_arn: "IdentityCenterApplicationArn", # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetMonitorResponse]
    def get_monitor(params = {}, options = {})
      request = build_request(:get_monitor, params)
      request.send_request(options)
    end

    # <p>Gets a queue.</p>
    # @param [Hash, Types::GetQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm in the queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.get_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_id: "QueueId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     farm_id: "FarmId", # required
    #     status: "IDLE" # One of: ["IDLE", "SCHEDULING", "SCHEDULING_BLOCKED"], # required
    #     default_budget_action: "NONE" # One of: ["NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #     blocked_reason: "NO_BUDGET_CONFIGURED" # One of: ["NO_BUDGET_CONFIGURED", "BUDGET_THRESHOLD_REACHED"],
    #     job_attachment_settings: {
    #       s3_bucket_name: "S3BucketName", # required
    #       root_prefix: "S3Prefix", # required
    #     },
    #     role_arn: "IamRoleArn",
    #     required_file_system_location_names: ["FileSystemLocationName"],
    #     allowed_storage_profile_ids: ["StorageProfileId"],
    #     job_run_as_user: {
    #       posix: {
    #         user: "String", # required
    #         group: "String", # required
    #       },
    #       windows: {
    #         user: "String", # required
    #         password_arn: "String", # required
    #       },
    #       run_as: "QUEUE_CONFIGURED_USER" # One of: ["QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"], # required
    #     },
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetQueueResponse]
    def get_queue(params = {}, options = {})
      request = build_request(:get_queue, params)
      request.send_request(options)
    end

    # <p>Gets a queue environment.</p>
    # @param [Hash, Types::GetQueueEnvironmentRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue environment.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue environment.</p>
    # @option params [String] :queue_environment_id
    #   <p>The queue environment ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_queue_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_environment_id: "QueueEnvironmentId", # required
    #     name: "EnvironmentName", # required
    #     priority: 1, # required
    #     template_type: "JSON" # One of: ["JSON", "YAML"], # required
    #     template: "EnvironmentTemplate", # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetQueueEnvironmentResponse]
    def get_queue_environment(params = {}, options = {})
      request = build_request(:get_queue_environment, params)
      request.send_request(options)
    end

    # <p>Gets a queue-fleet association.</p>
    # @param [Hash, Types::GetQueueFleetAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm that contains the queue-fleet association.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue-fleet association.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID for the queue-fleet association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   }
    #   options = {}
    #   response = client.get_queue_fleet_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS", "STOPPED"], # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetQueueFleetAssociationResponse]
    def get_queue_fleet_association(params = {}, options = {})
      request = build_request(:get_queue_fleet_association, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific association between a queue and a limit.</p>
    # @param [Hash, Types::GetQueueLimitAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the associated queue and limit.</p>
    # @option params [String] :queue_id
    #   <p>The unique identifier of the queue associated with the limit.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit associated with the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   }
    #   options = {}
    #   response = client.get_queue_limit_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", "STOPPED"], # required
    #   }
    # @return [Types::GetQueueLimitAssociationResponse]
    def get_queue_limit_association(params = {}, options = {})
      request = build_request(:get_queue_limit_association, params)
      request.send_request(options)
    end

    # <p>Gets a session.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the session.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the session.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the session.</p>
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     started_at: Time.now, # required
    #     log: { # required
    #       log_driver: "LogDriver", # required
    #       options: {
    #         "String" => "String"
    #       },
    #       parameters: {
    #         "String" => "String"
    #       },
    #       error: "LogError"
    #     },
    #     lifecycle_status: "STARTED" # One of: ["STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"], # required
    #     ended_at: Time.now,
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     target_lifecycle_status: "ENDED" # One of: ["ENDED"],
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"]
    #       },
    #       host_name: "HostName",
    #       ec2_instance_arn: "String",
    #       ec2_instance_type: "InstanceType"
    #     },
    #     worker_log: {
    #       log_driver: "LogDriver", # required
    #       options: {
    #         "String" => "String"
    #       },
    #       parameters: {
    #         "String" => "String"
    #       },
    #       error: "LogError"
    #     }
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Gets a session action for the job.</p>
    # @param [Hash, Types::GetSessionActionRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the session action.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the session action.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the session.</p>
    # @option params [String] :session_action_id
    #   <p>The session action ID for the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_action_id: "SessionActionId", # required
    #   }
    #   options = {}
    #   response = client.get_session_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_action_id: "SessionActionId", # required
    #     status: "ASSIGNED" # One of: ["ASSIGNED", "RUNNING", "CANCELING", "SUCCEEDED", "FAILED", "INTERRUPTED", "CANCELED", "NEVER_ATTEMPTED", "SCHEDULED", "RECLAIMING", "RECLAIMED"], # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     worker_updated_at: Time.now,
    #     progress_percent: 1.0,
    #     session_id: "SessionId", # required
    #     process_exit_code: 1,
    #     progress_message: "SessionActionProgressMessage",
    #     definition: { # required
    #       # One of:
    #       env_enter: {
    #         environment_id: "EnvironmentId", # required
    #       },
    #       env_exit: {
    #         environment_id: "EnvironmentId", # required
    #       },
    #       task_run: {
    #         task_id: "TaskId",
    #         step_id: "StepId", # required
    #         parameters: { # required
    #           "String" => {
    #             # One of:
    #             int: "IntString",
    #             float: "FloatString",
    #             string: "ParameterString",
    #             path: "PathString",
    #             chunk_int: "String"
    #           }
    #         }
    #       },
    #       sync_input_job_attachments: {
    #         step_id: "StepId"
    #       }
    #     },
    #     acquired_limits: [
    #       {
    #         limit_id: "LimitId", # required
    #         count: 1, # required
    #       }
    #     ],
    #     manifests: [
    #       {
    #         output_manifest_path: "String",
    #         output_manifest_hash: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetSessionActionResponse]
    def get_session_action(params = {}, options = {})
      request = build_request(:get_session_action, params)
      request.send_request(options)
    end

    # <p>Gets a set of statistics for queues or farms. Before you can call the
    #             <code>GetSessionStatisticsAggregation</code> operation, you must first call the
    #             <code>StartSessionsStatisticsAggregation</code> operation. Statistics are available for
    #          1 hour after you call the <code>StartSessionsStatisticsAggregation</code> operation.</p>
    # @param [Hash, Types::GetSessionsStatisticsAggregationRequest] params
    # @option params [String] :farm_id
    #   <p>The identifier of the farm to include in the statistics. This should be the same as the
    #            farm ID used in the call to the <code>StartSessionsStatisticsAggregation</code>
    #            operation.</p>
    # @option params [String] :aggregation_id
    #   <p>The identifier returned by the <code>StartSessionsStatisticsAggregation</code> operation
    #            that identifies the aggregated statistics.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     aggregation_id: "AggregationId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_sessions_statistics_aggregation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statistics: [
    #       {
    #         queue_id: "QueueId",
    #         fleet_id: "FleetId",
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         user_id: "UserId",
    #         usage_type: "COMPUTE" # One of: ["COMPUTE", "LICENSE"],
    #         license_product: "LicenseProduct",
    #         instance_type: "InstanceType",
    #         count: 1, # required
    #         cost_in_usd: { # required
    #           min: 1.0,
    #           max: 1.0,
    #           avg: 1.0,
    #           sum: 1.0
    #         },
    #         runtime_in_seconds: { # required
    #           min: 1.0,
    #           max: 1.0,
    #           avg: 1.0,
    #           sum: 1.0
    #         },
    #         aggregation_start_time: Time.now,
    #         aggregation_end_time: Time.now
    #       }
    #     ],
    #     next_token: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "TIMEOUT", "FAILED", "COMPLETED"], # required
    #     status_message: "String"
    #   }
    # @return [Types::GetSessionsStatisticsAggregationResponse]
    def get_sessions_statistics_aggregation(params = {}, options = {})
      request = build_request(:get_sessions_statistics_aggregation, params)
      request.send_request(options)
    end

    # <p>Gets a step.</p>
    # @param [Hash, Types::GetStepRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the step.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the step.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the step.</p>
    # @option params [String] :step_id
    #   <p>The step ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #   }
    #   options = {}
    #   response = client.get_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_id: "StepId", # required
    #     name: "StepName", # required
    #     lifecycle_status: "CREATE_COMPLETE" # One of: ["CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"], # required
    #     lifecycle_status_message: "String",
    #     task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"], # required
    #     task_run_status_counts: { # required
    #       "TaskRunStatus" => 1
    #     },
    #     task_failure_retry_count: 1,
    #     target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     dependency_counts: {
    #       dependencies_resolved: 1, # required
    #       dependencies_unresolved: 1, # required
    #       consumers_resolved: 1, # required
    #       consumers_unresolved: 1, # required
    #     },
    #     required_capabilities: {
    #       attributes: [ # required
    #         {
    #           name: "AttributeCapabilityName", # required
    #           any_of: ["AttributeCapabilityValue"],
    #           all_of: ["AttributeCapabilityValue"]
    #         }
    #       ],
    #       amounts: [ # required
    #         {
    #           name: "AmountCapabilityName", # required
    #           min: 1.0,
    #           max: 1.0,
    #           value: 1.0
    #         }
    #       ]
    #     },
    #     parameter_space: {
    #       parameters: [ # required
    #         {
    #           name: "StepParameterName", # required
    #           type: "INT" # One of: ["INT", "FLOAT", "STRING", "PATH", "CHUNK_INT"], # required
    #         }
    #       ],
    #       combination: "CombinationExpression"
    #     },
    #     description: "StepDescription"
    #   }
    # @return [Types::GetStepResponse]
    def get_step(params = {}, options = {})
      request = build_request(:get_step, params)
      request.send_request(options)
    end

    # <p>Gets a storage profile.</p>
    # @param [Hash, Types::GetStorageProfileRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the storage profile.</p>
    # @option params [String] :storage_profile_id
    #   <p>The storage profile ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_storage_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_profile_id: "StorageProfileId", # required
    #     display_name: "ResourceName", # required
    #     os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     file_system_locations: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED" # One of: ["SHARED", "LOCAL"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetStorageProfileResponse]
    def get_storage_profile(params = {}, options = {})
      request = build_request(:get_storage_profile, params)
      request.send_request(options)
    end

    # <p>Gets a storage profile for a queue.</p>
    # @param [Hash, Types::GetStorageProfileForQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue in storage profile.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID the queue in the storage profile.</p>
    # @option params [String] :storage_profile_id
    #   <p>The storage profile ID for the storage profile in the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_storage_profile_for_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_profile_id: "StorageProfileId", # required
    #     display_name: "ResourceName", # required
    #     os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #     file_system_locations: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED" # One of: ["SHARED", "LOCAL"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetStorageProfileForQueueResponse]
    def get_storage_profile_for_queue(params = {}, options = {})
      request = build_request(:get_storage_profile_for_queue, params)
      request.send_request(options)
    end

    # <p>Gets a task.</p>
    # @param [Hash, Types::GetTaskRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the farm connected to the task.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue connected to the task.</p>
    # @option params [String] :job_id
    #   <p>The job ID of the job connected to the task.</p>
    # @option params [String] :step_id
    #   <p>The step ID for the step connected to the task.</p>
    # @option params [String] :task_id
    #   <p>The task ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.get_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskId", # required
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"], # required
    #     target_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #     failure_retry_count: 1,
    #     parameters: {
    #       "String" => {
    #         # One of:
    #         int: "IntString",
    #         float: "FloatString",
    #         string: "ParameterString",
    #         path: "PathString",
    #         chunk_int: "String"
    #       }
    #     },
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy",
    #     latest_session_action_id: "SessionActionId"
    #   }
    # @return [Types::GetTaskResponse]
    def get_task(params = {}, options = {})
      request = build_request(:get_task, params)
      request.send_request(options)
    end

    # <p>Gets a worker.</p>
    # @param [Hash, Types::GetWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the worker.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the worker.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   }
    #   options = {}
    #   response = client.get_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"]
    #       },
    #       host_name: "HostName",
    #       ec2_instance_arn: "String",
    #       ec2_instance_type: "InstanceType"
    #     },
    #     status: "CREATED" # One of: ["CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"], # required
    #     log: {
    #       log_driver: "LogDriver", # required
    #       options: {
    #         "String" => "String"
    #       },
    #       parameters: {
    #         "String" => "String"
    #       },
    #       error: "LogError"
    #     },
    #     created_at: Time.now, # required
    #     created_by: "CreatedBy", # required
    #     updated_at: Time.now,
    #     updated_by: "UpdatedBy"
    #   }
    # @return [Types::GetWorkerResponse]
    def get_worker(params = {}, options = {})
      request = build_request(:get_worker, params)
      request.send_request(options)
    end

    # <p>A list of the available metered products.</p>
    # @param [Hash, Types::ListAvailableMeteredProductsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_available_metered_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metered_products: [ # required
    #       {
    #         product_id: "MeteredProductId", # required
    #         family: "BoundedString", # required
    #         vendor: "BoundedString", # required
    #         port: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAvailableMeteredProductsResponse]
    def list_available_metered_products(params = {}, options = {})
      request = build_request(:list_available_metered_products, params)
      request.send_request(options)
    end

    # <p>A list of budgets in a farm.</p>
    # @param [Hash, Types::ListBudgetsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID associated with the budgets.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :status
    #   <p>The status to list for the budgets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     farm_id: "FarmId", # required
    #     max_results: 1,
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #   }
    #   options = {}
    #   response = client.list_budgets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     budgets: [ # required
    #       {
    #         budget_id: "BudgetId", # required
    #         usage_tracking_resource: { # required
    #           # One of:
    #           queue_id: "QueueId"
    #         },
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #         display_name: "ResourceName", # required
    #         description: "Description",
    #         approximate_dollar_limit: 1.0, # required
    #         usages: { # required
    #           approximate_dollar_usage: 1.0, # required
    #         },
    #         created_by: "CreatedBy", # required
    #         created_at: Time.now, # required
    #         updated_by: "UpdatedBy",
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListBudgetsResponse]
    def list_budgets(params = {}, options = {})
      request = build_request(:list_budgets, params)
      request.send_request(options)
    end

    # <p>Lists the members of a farm.</p>
    # @param [Hash, Types::ListFarmMembersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_farm_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         principal_id: "IdentityCenterPrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFarmMembersResponse]
    def list_farm_members(params = {}, options = {})
      request = build_request(:list_farm_members, params)
      request.send_request(options)
    end

    # <p>Lists farms.</p>
    # @param [Hash, Types::ListFarmsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [String] :principal_id
    #   <p>The principal ID of the member to list on the farm.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     principal_id: "IdentityCenterPrincipalId",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_farms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     farms: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         display_name: "ResourceName", # required
    #         kms_key_arn: "KmsKeyArn",
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ]
    #   }
    # @return [Types::ListFarmsResponse]
    def list_farms(params = {}, options = {})
      request = build_request(:list_farms, params)
      request.send_request(options)
    end

    # <p>Lists fleet members.</p>
    # @param [Hash, Types::ListFleetMembersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the fleet.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fleet_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         fleet_id: "FleetId", # required
    #         principal_id: "IdentityCenterPrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFleetMembersResponse]
    def list_fleet_members(params = {}, options = {})
      request = build_request(:list_fleet_members, params)
      request.send_request(options)
    end

    # <p>Lists fleets.</p>
    # @param [Hash, Types::ListFleetsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the fleets.</p>
    # @option params [String] :principal_id
    #   <p>The principal ID of the members to include in the fleet.</p>
    # @option params [String] :display_name
    #   <p>The display names of a list of fleets.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :status
    #   <p>The status of the fleet.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     display_name: "ResourceName",
    #     status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_FAILED", "SUSPENDED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleets: [ # required
    #       {
    #         fleet_id: "FleetId", # required
    #         farm_id: "FarmId", # required
    #         display_name: "ResourceName", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_FAILED", "SUSPENDED"], # required
    #         status_message: "String",
    #         auto_scaling_status: "GROWING" # One of: ["GROWING", "STEADY", "SHRINKING"],
    #         target_worker_count: 1,
    #         worker_count: 1, # required
    #         min_worker_count: 1, # required
    #         max_worker_count: 1, # required
    #         configuration: { # required
    #           # One of:
    #           customer_managed: {
    #             mode: "NO_SCALING" # One of: ["NO_SCALING", "EVENT_BASED_AUTO_SCALING"], # required
    #             worker_capabilities: { # required
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               accelerator_types: ["gpu" # One of: ["gpu"]],
    #               accelerator_count: {
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               accelerator_total_memory_mi_b: {
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #               cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #               custom_amounts: [
    #                 {
    #                   name: "AmountCapabilityName", # required
    #                   min: 1.0, # required
    #                   max: 1.0
    #                 }
    #               ],
    #               custom_attributes: [
    #                 {
    #                   name: "AttributeCapabilityName", # required
    #                   values: ["AttributeCapabilityValue"], # required
    #                 }
    #               ]
    #             },
    #             storage_profile_id: "StorageProfileId",
    #             tag_propagation_mode: "NO_PROPAGATION" # One of: ["NO_PROPAGATION", "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"]
    #           },
    #           service_managed_ec2: {
    #             instance_capabilities: { # required
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX"], # required
    #               cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #               root_ebs_volume: {
    #                 size_gi_b: 1,
    #                 iops: 1,
    #                 throughput_mi_b: 1
    #               },
    #               accelerator_capabilities: {
    #                 selections: [ # required
    #                   {
    #                     name: "t4" # One of: ["t4", "a10g", "l4", "l40s"], # required
    #                     runtime: "AcceleratorRuntime"
    #                   }
    #                 ],
    #                 count: {
    #                   min: 1, # required
    #                   max: 1
    #                 }
    #               },
    #               allowed_instance_types: ["InstanceType"],
    #               excluded_instance_types: ["InstanceType"],
    #               custom_amounts: [
    #                 {
    #                   name: "AmountCapabilityName", # required
    #                   min: 1.0, # required
    #                   max: 1.0
    #                 }
    #               ],
    #               custom_attributes: [
    #                 {
    #                   name: "AttributeCapabilityName", # required
    #                   values: ["AttributeCapabilityValue"], # required
    #                 }
    #               ]
    #             },
    #             instance_market_options: { # required
    #               type: "on-demand" # One of: ["on-demand", "spot", "wait-and-save"], # required
    #             },
    #             vpc_configuration: {
    #               resource_configuration_arns: ["VpcResourceConfigurationArn"]
    #             },
    #             storage_profile_id: "StorageProfileId"
    #           }
    #         },
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFleetsResponse]
    def list_fleets(params = {}, options = {})
      request = build_request(:list_fleets, params)
      request.send_request(options)
    end

    # <p>Lists members on a job.</p>
    # @param [Hash, Types::ListJobMembersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the job to list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to include on the list.</p>
    # @option params [String] :job_id
    #   <p>The job ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_job_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         queue_id: "QueueId", # required
    #         job_id: "JobId", # required
    #         principal_id: "IdentityCenterPrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJobMembersResponse]
    def list_job_members(params = {}, options = {})
      request = build_request(:list_job_members, params)
      request.send_request(options)
    end

    # <p>Lists parameter definitions of a job.</p>
    # @param [Hash, Types::ListJobParameterDefinitionsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the job to list.</p>
    # @option params [String] :job_id
    #   <p>The job ID to include on the list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     job_id: "JobId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_job_parameter_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_parameter_definitions: [""null""], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListJobParameterDefinitionsResponse]
    def list_job_parameter_definitions(params = {}, options = {})
      request = build_request(:list_job_parameter_definitions, params)
      request.send_request(options)
    end

    # <p>Lists jobs.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the jobs.</p>
    # @option params [String] :principal_id
    #   <p>The principal ID of the members on the jobs.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the job.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_id: "JobId", # required
    #         name: "JobName", # required
    #         lifecycle_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"], # required
    #         lifecycle_status_message: "String", # required
    #         priority: 1, # required
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"],
    #         target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         task_run_status_counts: {
    #           "TaskRunStatus" => 1
    #         },
    #         task_failure_retry_count: 1,
    #         max_failed_tasks_count: 1,
    #         max_retries_per_task: 1,
    #         max_worker_count: 1,
    #         source_job_id: "JobId"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJobsResponse]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Lists license endpoints.</p>
    # @param [Hash, Types::ListLicenseEndpointsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_license_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_endpoints: [ # required
    #       {
    #         license_endpoint_id: "LicenseEndpointId",
    #         status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "NOT_READY"],
    #         status_message: "StatusMessage",
    #         vpc_id: "VpcId"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseEndpointsResponse]
    def list_license_endpoints(params = {}, options = {})
      request = build_request(:list_license_endpoints, params)
      request.send_request(options)
    end

    # <p>Gets a list of limits defined in the specified farm.</p>
    # @param [Hash, Types::ListLimitsRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the limits.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of limits to return in each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limits: [ # required
    #       {
    #         display_name: "ResourceName", # required
    #         amount_requirement_name: "AmountRequirementName", # required
    #         max_count: 1, # required
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         farm_id: "FarmId", # required
    #         limit_id: "LimitId", # required
    #         current_count: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLimitsResponse]
    def list_limits(params = {}, options = {})
      request = build_request(:list_limits, params)
      request.send_request(options)
    end

    # <p>Lists metered products.</p>
    # @param [Hash, Types::ListMeteredProductsRequest] params
    # @option params [String] :license_endpoint_id
    #   <p>The license endpoint ID to include on the list of metered products.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metered_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metered_products: [ # required
    #       {
    #         product_id: "MeteredProductId", # required
    #         family: "BoundedString", # required
    #         vendor: "BoundedString", # required
    #         port: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMeteredProductsResponse]
    def list_metered_products(params = {}, options = {})
      request = build_request(:list_metered_products, params)
      request.send_request(options)
    end

    # <p>Gets a list of your monitors in Deadline Cloud.</p>
    # @param [Hash, Types::ListMonitorsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     monitors: [ # required
    #       {
    #         monitor_id: "MonitorId", # required
    #         display_name: "ResourceName", # required
    #         subdomain: "Subdomain", # required
    #         url: "Url", # required
    #         role_arn: "IamRoleArn", # required
    #         identity_center_instance_arn: "IdentityCenterInstanceArn", # required
    #         identity_center_application_arn: "IdentityCenterApplicationArn", # required
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ]
    #   }
    # @return [Types::ListMonitorsResponse]
    def list_monitors(params = {}, options = {})
      request = build_request(:list_monitors, params)
      request.send_request(options)
    end

    # <p>Lists queue environments.</p>
    # @param [Hash, Types::ListQueueEnvironmentsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue environment list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue environment list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queue_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [ # required
    #       {
    #         queue_environment_id: "QueueEnvironmentId", # required
    #         name: "EnvironmentName", # required
    #         priority: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueueEnvironmentsResponse]
    def list_queue_environments(params = {}, options = {})
      request = build_request(:list_queue_environments, params)
      request.send_request(options)
    end

    # <p>Lists queue-fleet associations.</p>
    # @param [Hash, Types::ListQueueFleetAssociationsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue-fleet association list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the queue-fleet association list.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID for the queue-fleet association list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId",
    #     fleet_id: "FleetId",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queue_fleet_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_fleet_associations: [ # required
    #       {
    #         queue_id: "QueueId", # required
    #         fleet_id: "FleetId", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS", "STOPPED"], # required
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueueFleetAssociationsResponse]
    def list_queue_fleet_associations(params = {}, options = {})
      request = build_request(:list_queue_fleet_associations, params)
      request.send_request(options)
    end

    # <p>Gets a list of the associations between queues and limits defined in a farm.</p>
    # @param [Hash, Types::ListQueueLimitAssociationsRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the limits and associations.</p>
    # @option params [String] :queue_id
    #   <p>Specifies that the operation should return only the queue limit associations for the
    #            specified queue. If you specify both the <code>queueId</code> and the <code>limitId</code>,
    #            only the specified limit is returned if it exists.</p>
    # @option params [String] :limit_id
    #   <p>Specifies that the operation should return only the queue limit associations for the
    #            specified limit. If you specify both the <code>queueId</code> and the <code>limitId</code>,
    #            only the specified limit is returned if it exists.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of associations to return in each page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId",
    #     limit_id: "LimitId",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queue_limit_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_limit_associations: [ # required
    #       {
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         queue_id: "QueueId", # required
    #         limit_id: "LimitId", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", "STOPPED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueueLimitAssociationsResponse]
    def list_queue_limit_associations(params = {}, options = {})
      request = build_request(:list_queue_limit_associations, params)
      request.send_request(options)
    end

    # <p>Lists the members in a queue.</p>
    # @param [Hash, Types::ListQueueMembersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queue_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         queue_id: "QueueId", # required
    #         principal_id: "IdentityCenterPrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #         identity_store_id: "IdentityStoreId", # required
    #         membership_level: "VIEWER" # One of: ["VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueueMembersResponse]
    def list_queue_members(params = {}, options = {})
      request = build_request(:list_queue_members, params)
      request.send_request(options)
    end

    # <p>Lists queues.</p>
    # @param [Hash, Types::ListQueuesRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the queue.</p>
    # @option params [String] :principal_id
    #   <p>The principal IDs to include in the list of queues.</p>
    # @option params [String] :status
    #   <p>The status of the queues listed.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>–The queues are active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCHEDULING</code>–The queues are scheduling.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCHEDULING_BLOCKED</code>–The queue scheduling is blocked for these
    #                  queues.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     status: "IDLE" # One of: ["IDLE", "SCHEDULING", "SCHEDULING_BLOCKED"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queues: [ # required
    #       {
    #         farm_id: "FarmId", # required
    #         queue_id: "QueueId", # required
    #         display_name: "ResourceName", # required
    #         status: "IDLE" # One of: ["IDLE", "SCHEDULING", "SCHEDULING_BLOCKED"], # required
    #         default_budget_action: "NONE" # One of: ["NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #         blocked_reason: "NO_BUDGET_CONFIGURED" # One of: ["NO_BUDGET_CONFIGURED", "BUDGET_THRESHOLD_REACHED"],
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueuesResponse]
    def list_queues(params = {}, options = {})
      request = build_request(:list_queues, params)
      request.send_request(options)
    end

    # <p>Lists session actions.</p>
    # @param [Hash, Types::ListSessionActionsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the session actions list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the session actions list.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the session actions list.</p>
    # @option params [String] :session_id
    #   <p>The session ID to include on the sessions action list.</p>
    # @option params [String] :task_id
    #   <p>The task ID for the session actions list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId",
    #     task_id: "TaskId",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_session_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_actions: [ # required
    #       {
    #         session_action_id: "SessionActionId", # required
    #         status: "ASSIGNED" # One of: ["ASSIGNED", "RUNNING", "CANCELING", "SUCCEEDED", "FAILED", "INTERRUPTED", "CANCELED", "NEVER_ATTEMPTED", "SCHEDULED", "RECLAIMING", "RECLAIMED"], # required
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         worker_updated_at: Time.now,
    #         progress_percent: 1.0,
    #         definition: { # required
    #           # One of:
    #           env_enter: {
    #             environment_id: "EnvironmentId", # required
    #           },
    #           env_exit: {
    #             environment_id: "EnvironmentId", # required
    #           },
    #           task_run: {
    #             task_id: "TaskId",
    #             step_id: "StepId", # required
    #             parameters: {
    #               "String" => {
    #                 # One of:
    #                 int: "IntString",
    #                 float: "FloatString",
    #                 string: "ParameterString",
    #                 path: "PathString",
    #                 chunk_int: "String"
    #               }
    #             }
    #           },
    #           sync_input_job_attachments: {
    #             step_id: "StepId"
    #           }
    #         },
    #         manifests: [
    #           {
    #             output_manifest_path: "String",
    #             output_manifest_hash: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSessionActionsResponse]
    def list_session_actions(params = {}, options = {})
      request = build_request(:list_session_actions, params)
      request.send_request(options)
    end

    # <p>Lists sessions.</p>
    # @param [Hash, Types::ListSessionsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the list of sessions.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the list of sessions</p>
    # @option params [String] :job_id
    #   <p>The job ID for the list of sessions.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [ # required
    #       {
    #         session_id: "SessionId", # required
    #         fleet_id: "FleetId", # required
    #         worker_id: "WorkerId", # required
    #         started_at: Time.now, # required
    #         lifecycle_status: "STARTED" # One of: ["STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"], # required
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         target_lifecycle_status: "ENDED" # One of: ["ENDED"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSessionsResponse]
    def list_sessions(params = {}, options = {})
      request = build_request(:list_sessions, params)
      request.send_request(options)
    end

    # <p>Lists sessions for a worker.</p>
    # @param [Hash, Types::ListSessionsForWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the session.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID for the session.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID for the session.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_sessions_for_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [ # required
    #       {
    #         session_id: "SessionId", # required
    #         queue_id: "QueueId", # required
    #         job_id: "JobId", # required
    #         started_at: Time.now, # required
    #         lifecycle_status: "STARTED" # One of: ["STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"], # required
    #         ended_at: Time.now,
    #         target_lifecycle_status: "ENDED" # One of: ["ENDED"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSessionsForWorkerResponse]
    def list_sessions_for_worker(params = {}, options = {})
      request = build_request(:list_sessions_for_worker, params)
      request.send_request(options)
    end

    # <p>Lists step consumers.</p>
    # @param [Hash, Types::ListStepConsumersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the list of step consumers.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the step consumer.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the step consumer.</p>
    # @option params [String] :step_id
    #   <p>The step ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_step_consumers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumers: [ # required
    #       {
    #         step_id: "StepId", # required
    #         status: "RESOLVED" # One of: ["RESOLVED", "UNRESOLVED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStepConsumersResponse]
    def list_step_consumers(params = {}, options = {})
      request = build_request(:list_step_consumers, params)
      request.send_request(options)
    end

    # <p>Lists the dependencies for a step.</p>
    # @param [Hash, Types::ListStepDependenciesRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID for the step dependencies list.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the step dependencies list.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the step dependencies list.</p>
    # @option params [String] :step_id
    #   <p>The step ID to include on the list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_step_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dependencies: [ # required
    #       {
    #         step_id: "StepId", # required
    #         status: "RESOLVED" # One of: ["RESOLVED", "UNRESOLVED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStepDependenciesResponse]
    def list_step_dependencies(params = {}, options = {})
      request = build_request(:list_step_dependencies, params)
      request.send_request(options)
    end

    # <p>Lists steps for a job.</p>
    # @param [Hash, Types::ListStepsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to include on the list of steps.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to include on the list of steps.</p>
    # @option params [String] :job_id
    #   <p>The job ID to include on the list of steps.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     steps: [ # required
    #       {
    #         step_id: "StepId", # required
    #         name: "StepName", # required
    #         lifecycle_status: "CREATE_COMPLETE" # One of: ["CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"], # required
    #         lifecycle_status_message: "String",
    #         task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"], # required
    #         task_run_status_counts: { # required
    #           "TaskRunStatus" => 1
    #         },
    #         task_failure_retry_count: 1,
    #         target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         dependency_counts: {
    #           dependencies_resolved: 1, # required
    #           dependencies_unresolved: 1, # required
    #           consumers_resolved: 1, # required
    #           consumers_unresolved: 1, # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStepsResponse]
    def list_steps(params = {}, options = {})
      request = build_request(:list_steps, params)
      request.send_request(options)
    end

    # <p>Lists storage profiles.</p>
    # @param [Hash, Types::ListStorageProfilesRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the storage profile.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_storage_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_profiles: [ # required
    #       {
    #         storage_profile_id: "StorageProfileId", # required
    #         display_name: "ResourceName", # required
    #         os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStorageProfilesResponse]
    def list_storage_profiles(params = {}, options = {})
      request = build_request(:list_storage_profiles, params)
      request.send_request(options)
    end

    # <p>Lists storage profiles for a queue.</p>
    # @param [Hash, Types::ListStorageProfilesForQueueRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the queue's storage profile.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID for the storage profile.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_storage_profiles_for_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_profiles: [ # required
    #       {
    #         storage_profile_id: "StorageProfileId", # required
    #         display_name: "ResourceName", # required
    #         os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStorageProfilesForQueueResponse]
    def list_storage_profiles_for_queue(params = {}, options = {})
      request = build_request(:list_storage_profiles_for_queue, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN to list tags for.</p>
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
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists tasks for a job.</p>
    # @param [Hash, Types::ListTasksRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID connected to the tasks.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID connected to the tasks.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the tasks.</p>
    # @option params [String] :step_id
    #   <p>The step ID for the tasks.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [ # required
    #       {
    #         task_id: "TaskId", # required
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"], # required
    #         target_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         failure_retry_count: 1,
    #         parameters: {
    #           "String" => {
    #             # One of:
    #             int: "IntString",
    #             float: "FloatString",
    #             string: "ParameterString",
    #             path: "PathString",
    #             chunk_int: "String"
    #           }
    #         },
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         latest_session_action_id: "SessionActionId"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTasksResponse]
    def list_tasks(params = {}, options = {})
      request = build_request(:list_tasks, params)
      request.send_request(options)
    end

    # <p>Lists workers.</p>
    # @param [Hash, Types::ListWorkersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID connected to the workers.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID of the workers.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     workers: [ # required
    #       {
    #         worker_id: "WorkerId", # required
    #         farm_id: "FarmId", # required
    #         fleet_id: "FleetId", # required
    #         status: "CREATED" # One of: ["CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"], # required
    #         host_properties: {
    #           ip_addresses: {
    #             ip_v4_addresses: ["IpV4Address"],
    #             ip_v6_addresses: ["IpV6Address"]
    #           },
    #           host_name: "HostName",
    #           ec2_instance_arn: "String",
    #           ec2_instance_type: "InstanceType"
    #         },
    #         log: {
    #           log_driver: "LogDriver", # required
    #           options: {
    #             "String" => "String"
    #           },
    #           parameters: {
    #             "String" => "String"
    #           },
    #           error: "LogError"
    #         },
    #         created_at: Time.now, # required
    #         created_by: "CreatedBy", # required
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkersResponse]
    def list_workers(params = {}, options = {})
      request = build_request(:list_workers, params)
      request.send_request(options)
    end

    # <p>Adds a metered product.</p>
    # @param [Hash, Types::PutMeteredProductRequest] params
    # @option params [String] :license_endpoint_id
    #   <p>The license endpoint ID to add to the metered product.</p>
    # @option params [String] :product_id
    #   <p>The product ID to add to the metered product.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     product_id: "MeteredProductId", # required
    #   }
    #   options = {}
    #   response = client.put_metered_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutMeteredProductResponse]
    def put_metered_product(params = {}, options = {})
      request = build_request(:put_metered_product, params)
      request.send_request(options)
    end

    # <p>Searches for jobs.</p>
    # @param [Hash, Types::SearchJobsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the job.</p>
    # @option params [Array<String>] :queue_ids
    #   <p>The queue ID to use in the job search.</p>
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   <p>The filter expression, <code>AND</code> or <code>OR</code>, to use
    #   when searching among a group of search strings in a resource.
    #   
    #   You can use two groupings per search each within parenthesis <code>()</code>.</p>
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   <p>The search terms for a resource.</p>
    # @option params [Integer] :item_offset
    #   <p>Defines how far into the scrollable list to start the return of results.</p>
    # @option params [Integer] :page_size
    #   <p>Specifies the number of items per page for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     filter_expressions: {
    #       filters: [{ # required
    #         # One of:
    #         date_time_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           date_time: Time.now, # required
    #         },
    #         parameter_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "ParameterValue", # required
    #         },
    #         search_term_filter: {
    #           search_term: "SearchTerm", # required
    #           match_type: "FUZZY_MATCH" # One of: ["FUZZY_MATCH", "CONTAINS"]
    #         },
    #         string_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "StringFilter", # required
    #         },
    #         group_filter: {
    #           # recursive SearchGroupedFilterExpressions
    #         }
    #       }],
    #       operator: "AND" # One of: ["AND", "OR"], # required
    #     },
    #     sort_expressions: [{
    #       # One of:
    #       user_jobs_first: {
    #         user_identity_id: "String", # required
    #       },
    #       field_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       },
    #       parameter_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       }
    #     }],
    #     item_offset: 1, # required
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.search_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         job_id: "JobId",
    #         queue_id: "QueueId",
    #         name: "JobName",
    #         lifecycle_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"],
    #         lifecycle_status_message: "String",
    #         task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"],
    #         target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         task_run_status_counts: {
    #           "TaskRunStatus" => 1
    #         },
    #         task_failure_retry_count: 1,
    #         priority: 1,
    #         max_failed_tasks_count: 1,
    #         max_retries_per_task: 1,
    #         created_by: "CreatedBy",
    #         created_at: Time.now,
    #         ended_at: Time.now,
    #         started_at: Time.now,
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         job_parameters: {
    #           "String" => {
    #             # One of:
    #             int: "IntString",
    #             float: "FloatString",
    #             string: "ParameterString",
    #             path: "PathString"
    #           }
    #         },
    #         max_worker_count: 1,
    #         source_job_id: "JobId"
    #       }
    #     ],
    #     next_item_offset: 1,
    #     total_results: 1, # required
    #   }
    # @return [Types::SearchJobsResponse]
    def search_jobs(params = {}, options = {})
      request = build_request(:search_jobs, params)
      request.send_request(options)
    end

    # <p>Searches for steps.</p>
    # @param [Hash, Types::SearchStepsRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to use for the step search.</p>
    # @option params [Array<String>] :queue_ids
    #   <p>The queue IDs in the step search.</p>
    # @option params [String] :job_id
    #   <p>The job ID to use in the step search.</p>
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   <p>The filter expression, <code>AND</code> or <code>OR</code>, to use
    #   when searching among a group of search strings in a resource.
    #   
    #   You can use two groupings per search each within parenthesis <code>()</code>.</p>
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   <p>The search terms for a resource.</p>
    # @option params [Integer] :item_offset
    #   <p>Defines how far into the scrollable list to start the return of results.</p>
    # @option params [Integer] :page_size
    #   <p>Specifies the number of items per page for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     job_id: "JobId",
    #     filter_expressions: {
    #       filters: [{ # required
    #         # One of:
    #         date_time_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           date_time: Time.now, # required
    #         },
    #         parameter_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "ParameterValue", # required
    #         },
    #         search_term_filter: {
    #           search_term: "SearchTerm", # required
    #           match_type: "FUZZY_MATCH" # One of: ["FUZZY_MATCH", "CONTAINS"]
    #         },
    #         string_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "StringFilter", # required
    #         },
    #         group_filter: {
    #           # recursive SearchGroupedFilterExpressions
    #         }
    #       }],
    #       operator: "AND" # One of: ["AND", "OR"], # required
    #     },
    #     sort_expressions: [{
    #       # One of:
    #       user_jobs_first: {
    #         user_identity_id: "String", # required
    #       },
    #       field_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       },
    #       parameter_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       }
    #     }],
    #     item_offset: 1, # required
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.search_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     steps: [ # required
    #       {
    #         step_id: "StepId",
    #         job_id: "JobId",
    #         queue_id: "QueueId",
    #         name: "StepName",
    #         lifecycle_status: "CREATE_COMPLETE" # One of: ["CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"],
    #         lifecycle_status_message: "String",
    #         task_run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"],
    #         target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         task_run_status_counts: {
    #           "TaskRunStatus" => 1
    #         },
    #         task_failure_retry_count: 1,
    #         created_at: Time.now,
    #         created_by: "CreatedBy",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         parameter_space: {
    #           parameters: [ # required
    #             {
    #               name: "StepParameterName", # required
    #               type: "INT" # One of: ["INT", "FLOAT", "STRING", "PATH", "CHUNK_INT"], # required
    #             }
    #           ],
    #           combination: "CombinationExpression"
    #         }
    #       }
    #     ],
    #     next_item_offset: 1,
    #     total_results: 1, # required
    #   }
    # @return [Types::SearchStepsResponse]
    def search_steps(params = {}, options = {})
      request = build_request(:search_steps, params)
      request.send_request(options)
    end

    # <p>Searches for tasks.</p>
    # @param [Hash, Types::SearchTasksRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID of the task.</p>
    # @option params [Array<String>] :queue_ids
    #   <p>The queue IDs to include in the search.</p>
    # @option params [String] :job_id
    #   <p>The job ID for the task search.</p>
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   <p>The filter expression, <code>AND</code> or <code>OR</code>, to use
    #   when searching among a group of search strings in a resource.
    #   
    #   You can use two groupings per search each within parenthesis <code>()</code>.</p>
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   <p>The search terms for a resource.</p>
    # @option params [Integer] :item_offset
    #   <p>Defines how far into the scrollable list to start the return of results.</p>
    # @option params [Integer] :page_size
    #   <p>Specifies the number of items per page for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     job_id: "JobId",
    #     filter_expressions: {
    #       filters: [{ # required
    #         # One of:
    #         date_time_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           date_time: Time.now, # required
    #         },
    #         parameter_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "ParameterValue", # required
    #         },
    #         search_term_filter: {
    #           search_term: "SearchTerm", # required
    #           match_type: "FUZZY_MATCH" # One of: ["FUZZY_MATCH", "CONTAINS"]
    #         },
    #         string_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "StringFilter", # required
    #         },
    #         group_filter: {
    #           # recursive SearchGroupedFilterExpressions
    #         }
    #       }],
    #       operator: "AND" # One of: ["AND", "OR"], # required
    #     },
    #     sort_expressions: [{
    #       # One of:
    #       user_jobs_first: {
    #         user_identity_id: "String", # required
    #       },
    #       field_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       },
    #       parameter_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       }
    #     }],
    #     item_offset: 1, # required
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.search_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [ # required
    #       {
    #         task_id: "TaskId",
    #         step_id: "StepId",
    #         job_id: "JobId",
    #         queue_id: "QueueId",
    #         run_status: "PENDING" # One of: ["PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"],
    #         target_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #         parameters: {
    #           "String" => {
    #             # One of:
    #             int: "IntString",
    #             float: "FloatString",
    #             string: "ParameterString",
    #             path: "PathString",
    #             chunk_int: "String"
    #           }
    #         },
    #         failure_retry_count: 1,
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         updated_by: "UpdatedBy"
    #       }
    #     ],
    #     next_item_offset: 1,
    #     total_results: 1, # required
    #   }
    # @return [Types::SearchTasksResponse]
    def search_tasks(params = {}, options = {})
      request = build_request(:search_tasks, params)
      request.send_request(options)
    end

    # <p>Searches for workers.</p>
    # @param [Hash, Types::SearchWorkersRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID in the workers search.</p>
    # @option params [Array<String>] :fleet_ids
    #   <p>The fleet ID of the workers to search for.</p>
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   <p>The filter expression, <code>AND</code> or <code>OR</code>, to use
    #   when searching among a group of search strings in a resource.
    #   
    #   You can use two groupings per search each within parenthesis <code>()</code>.</p>
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   <p>The search terms for a resource.</p>
    # @option params [Integer] :item_offset
    #   <p>Defines how far into the scrollable list to start the return of results.</p>
    # @option params [Integer] :page_size
    #   <p>Specifies the number of items per page for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_ids: ["FleetId"], # required
    #     filter_expressions: {
    #       filters: [{ # required
    #         # One of:
    #         date_time_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           date_time: Time.now, # required
    #         },
    #         parameter_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "ParameterValue", # required
    #         },
    #         search_term_filter: {
    #           search_term: "SearchTerm", # required
    #           match_type: "FUZZY_MATCH" # One of: ["FUZZY_MATCH", "CONTAINS"]
    #         },
    #         string_filter: {
    #           name: "String", # required
    #           operator: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "GREATER_THAN_EQUAL_TO", "GREATER_THAN", "LESS_THAN_EQUAL_TO", "LESS_THAN"], # required
    #           value: "StringFilter", # required
    #         },
    #         group_filter: {
    #           # recursive SearchGroupedFilterExpressions
    #         }
    #       }],
    #       operator: "AND" # One of: ["AND", "OR"], # required
    #     },
    #     sort_expressions: [{
    #       # One of:
    #       user_jobs_first: {
    #         user_identity_id: "String", # required
    #       },
    #       field_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       },
    #       parameter_sort: {
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #         name: "String", # required
    #       }
    #     }],
    #     item_offset: 1, # required
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.search_workers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workers: [ # required
    #       {
    #         fleet_id: "FleetId",
    #         worker_id: "WorkerId",
    #         status: "CREATED" # One of: ["CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"],
    #         host_properties: {
    #           ip_addresses: {
    #             ip_v4_addresses: ["IpV4Address"],
    #             ip_v6_addresses: ["IpV6Address"]
    #           },
    #           host_name: "HostName",
    #           ec2_instance_arn: "String",
    #           ec2_instance_type: "InstanceType"
    #         },
    #         created_by: "CreatedBy",
    #         created_at: Time.now,
    #         updated_by: "UpdatedBy",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_item_offset: 1,
    #     total_results: 1, # required
    #   }
    # @return [Types::SearchWorkersResponse]
    def search_workers(params = {}, options = {})
      request = build_request(:search_workers, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous request for getting aggregated statistics about queues and farms.
    #          Get the statistics using the <code>GetSessionsStatisticsAggregation</code> operation. You
    #          can only have one running aggregation for your Deadline Cloud farm. Call the
    #             <code>GetSessionsStatisticsAggregation</code> operation and check the
    #             <code>status</code> field to see if an aggregation is running. Statistics are available
    #          for 1 hour after you call the <code>StartSessionsStatisticsAggregation</code>
    #          operation.</p>
    # @param [Hash, Types::StartSessionsStatisticsAggregationRequest] params
    # @option params [String] :farm_id
    #   <p>The identifier of the farm that contains queues or fleets to return statistics
    #            for.</p>
    # @option params [Types::SessionsStatisticsResources] :resource_ids
    #   <p>A list of fleet IDs or queue IDs to gather statistics for.</p>
    # @option params [Time] :start_time
    #   <p>The Linux timestamp of the date and time that the statistics start.</p>
    # @option params [Time] :end_time
    #   <p>The Linux timestamp of the date and time that the statistics end.</p>
    # @option params [String] :timezone
    #   <p>The timezone to use for the statistics. Use UTC notation such as "UTC+8."</p>
    # @option params [String] :period
    #   <p>The period to aggregate the statistics.</p>
    # @option params [Array<String>] :group_by
    #   <p>The field to use to group the statistics.</p>
    # @option params [Array<String>] :statistics
    #   <p>One to four statistics to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     resource_ids: { # required
    #       # One of:
    #       queue_ids: ["QueueId"],
    #       fleet_ids: ["FleetId"]
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     timezone: "Timezone",
    #     period: "HOURLY" # One of: ["HOURLY", "DAILY", "WEEKLY", "MONTHLY"],
    #     group_by: ["QUEUE_ID" # One of: ["QUEUE_ID", "FLEET_ID", "JOB_ID", "USER_ID", "USAGE_TYPE", "INSTANCE_TYPE", "LICENSE_PRODUCT"]], # required
    #     statistics: ["SUM" # One of: ["SUM", "MIN", "MAX", "AVG"]], # required
    #   }
    #   options = {}
    #   response = client.start_sessions_statistics_aggregation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aggregation_id: "AggregationId", # required
    #   }
    # @return [Types::StartSessionsStatisticsAggregationResponse]
    def start_sessions_statistics_aggregation(params = {}, options = {})
      request = build_request(:start_sessions_statistics_aggregation, params)
      request.send_request(options)
    end

    # <p>Tags a resource using the resource's ARN and desired tags.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to apply tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: {
    #       "String" => "String"
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

    # <p>Removes a tag from a resource using the resource's ARN and tag to remove.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>They keys of the tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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

    # <p>Updates a budget that sets spending thresholds for rendering activity.</p>
    # @param [Hash, Types::UpdateBudgetRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the budget to update.</p>
    # @option params [String] :budget_id
    #   <p>The budget ID to update.</p>
    # @option params [String] :display_name
    #   <p>The display name of the budget to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the budget to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :status
    #   <p>Updates the status of the budget.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>–The budget is being evaluated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code>–The budget is inactive. This can include Expired,
    #                  Canceled, or deleted Deleted statuses.</p>
    #               </li>
    #            </ul>
    # @option params [Float] :approximate_dollar_limit
    #   <p>The dollar limit to update on the budget. Based on consumed usage.</p>
    # @option params [Array<Types::BudgetActionToAdd>] :actions_to_add
    #   <p>The budget actions to add. Budget actions specify what happens when the budget runs
    #            out.</p>
    # @option params [Array<Types::BudgetActionToRemove>] :actions_to_remove
    #   <p>The budget actions to remove from the budget.</p>
    # @option params [Types::BudgetSchedule] :schedule
    #   <p>The schedule to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     approximate_dollar_limit: 1.0,
    #     actions_to_add: [
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS" # One of: ["STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #         threshold_percentage: 1.0, # required
    #         description: "Description"
    #       }
    #     ],
    #     actions_to_remove: [
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS" # One of: ["STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #         threshold_percentage: 1.0, # required
    #       }
    #     ],
    #     schedule: {
    #       # One of:
    #       fixed: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_budget(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateBudgetResponse]
    def update_budget(params = {}, options = {})
      request = build_request(:update_budget, params)
      request.send_request(options)
    end

    # <p>Updates a farm.</p>
    # @param [Hash, Types::UpdateFarmRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :display_name
    #   <p>The display name of the farm to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the farm to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_farm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFarmResponse]
    def update_farm(params = {}, options = {})
      request = build_request(:update_farm, params)
      request.send_request(options)
    end

    # <p>Updates a fleet.</p>
    # @param [Hash, Types::UpdateFleetRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to update.</p>
    # @option params [String] :display_name
    #   <p>The display name of the fleet to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the fleet to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that the fleet's workers assume while running jobs.</p>
    # @option params [Integer] :min_worker_count
    #   <p>The minimum number of workers in the fleet.</p>
    # @option params [Integer] :max_worker_count
    #   <p>The maximum number of workers in the fleet.</p>
    #            <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's
    #            maximum worker count. The service maintains eventual consistency for the worker count. If
    #            you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you
    #            might exceed your fleet's maximum worker count. For example, if your
    #            <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick
    #            <code>CreateWorker</code> calls might successfully create 2 workers instead of 1,
    #            resulting in 11 total workers.</p>
    # @option params [Types::FleetConfiguration] :configuration
    #   <p>The fleet configuration to update.</p>
    # @option params [Types::HostConfiguration] :host_configuration
    #   <p>Provides a script that runs as a worker is starting up that you can use to provide
    #            additional configuration for workers in your fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     role_arn: "IamRoleArn",
    #     min_worker_count: 1,
    #     max_worker_count: 1,
    #     configuration: {
    #       # One of:
    #       customer_managed: {
    #         mode: "NO_SCALING" # One of: ["NO_SCALING", "EVENT_BASED_AUTO_SCALING"], # required
    #         worker_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_types: ["gpu" # One of: ["gpu"]],
    #           accelerator_count: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           accelerator_total_memory_mi_b: {
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         storage_profile_id: "StorageProfileId",
    #         tag_propagation_mode: "NO_PROPAGATION" # One of: ["NO_PROPAGATION", "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"]
    #       },
    #       service_managed_ec2: {
    #         instance_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX"], # required
    #           cpu_architecture_type: "x86_64" # One of: ["x86_64", "arm64"], # required
    #           root_ebs_volume: {
    #             size_gi_b: 1,
    #             iops: 1,
    #             throughput_mi_b: 1
    #           },
    #           accelerator_capabilities: {
    #             selections: [ # required
    #               {
    #                 name: "t4" # One of: ["t4", "a10g", "l4", "l40s"], # required
    #                 runtime: "AcceleratorRuntime"
    #               }
    #             ],
    #             count: {
    #               min: 1, # required
    #               max: 1
    #             }
    #           },
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"],
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0
    #             }
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             }
    #           ]
    #         },
    #         instance_market_options: { # required
    #           type: "on-demand" # One of: ["on-demand", "spot", "wait-and-save"], # required
    #         },
    #         vpc_configuration: {
    #           resource_configuration_arns: ["VpcResourceConfigurationArn"]
    #         },
    #         storage_profile_id: "StorageProfileId"
    #       }
    #     },
    #     host_configuration: {
    #       script_body: "HostConfigurationScript", # required
    #       script_timeout_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFleetResponse]
    def update_fleet(params = {}, options = {})
      request = build_request(:update_fleet, params)
      request.send_request(options)
    end

    # <p>Updates a job. </p>
    #          <p>When you change the status of the job to <code>ARCHIVED</code>, the job can't be
    #          scheduled or archived.</p>
    #          <important>
    #             <p>An archived jobs and its steps and tasks are deleted after 120 days. The job can't be
    #             recovered.</p>
    #          </important>
    # @param [Hash, Types::UpdateJobRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    # @option params [Integer] :priority
    #   <p>The job priority to update.</p>
    # @option params [Integer] :max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    # @option params [Integer] :max_retries_per_task
    #   <p>The maximum number of retries for a job.</p>
    # @option params [String] :lifecycle_status
    #   <p>The status of a job in its lifecycle. When you change the status of the job to
    #               <code>ARCHIVED</code>, the job can't be scheduled or archived.</p>
    #            <important>
    #               <p>An archived jobs and its steps and tasks are deleted after 120 days. The job can't be
    #               recovered.</p>
    #            </important>
    # @option params [Integer] :max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the
    #               <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the
    #            job, even if the fleets assigned to the job's queue has available workers.</p>
    #            <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no
    #            maximum number of workers.</p>
    #            <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>
    #            <p>The maximum number of workers that can process tasks in the job.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the job to update.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the job to update.</p>
    # @option params [String] :job_id
    #   <p>The job ID to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"],
    #     priority: 1,
    #     max_failed_tasks_count: 1,
    #     max_retries_per_task: 1,
    #     lifecycle_status: "ARCHIVED" # One of: ["ARCHIVED"],
    #     max_worker_count: 1,
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.update_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateJobResponse]
    def update_job(params = {}, options = {})
      request = build_request(:update_job, params)
      request.send_request(options)
    end

    # <p>Updates the properties of the specified limit. </p>
    # @param [Hash, Types::UpdateLimitRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit to update.</p>
    # @option params [String] :display_name
    #   <p>The new display name of the limit.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The new description of the limit.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [Integer] :max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are
    #            in use, steps that require the limit won't be scheduled until the resource is
    #            available.</p>
    #            <p>If more than the new maximum number is currently in use, running jobs finish but no new
    #            jobs are started until the number of resources in use is below the new maximum
    #            number.</p>
    #            <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on
    #            the number of resources that can be acquired for this limit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     max_count: 1
    #   }
    #   options = {}
    #   response = client.update_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLimitResponse]
    def update_limit(params = {}, options = {})
      request = build_request(:update_limit, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a Deadline Cloud monitor. You can modify one or all of the settings
    #          when you call <code>UpdateMonitor</code>.</p>
    # @param [Hash, Types::UpdateMonitorRequest] params
    # @option params [String] :monitor_id
    #   <p>The unique identifier of the monitor to update.</p>
    # @option params [String] :subdomain
    #   <p>The new value of the subdomain to use when forming the monitor URL.</p>
    # @option params [String] :display_name
    #   <p>The new value to use for the monitor's display name.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the new IAM role to use with the monitor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_id: "MonitorId", # required
    #     subdomain: "Subdomain",
    #     display_name: "ResourceName",
    #     role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.update_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMonitorResponse]
    def update_monitor(params = {}, options = {})
      request = build_request(:update_monitor, params)
      request.send_request(options)
    end

    # <p>Updates a queue.</p>
    # @param [Hash, Types::UpdateQueueRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token to update in the queue.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update in the queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to update.</p>
    # @option params [String] :display_name
    #   <p>The display name of the queue to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The description of the queue to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :default_budget_action
    #   <p>The default action to take for a queue update if a budget isn't configured.</p>
    # @option params [Types::JobAttachmentSettings] :job_attachment_settings
    #   <p>The job attachment settings to update for the
    #            queue.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that's used to run jobs from this queue.</p>
    # @option params [Types::JobRunAsUser] :job_run_as_user
    #   <p>Update the jobs in the queue to run as a specified POSIX user.</p>
    # @option params [Array<String>] :required_file_system_location_names_to_add
    #   <p>The required file system location names to add to the queue.</p>
    # @option params [Array<String>] :required_file_system_location_names_to_remove
    #   <p>The required file system location names to remove from the queue.</p>
    # @option params [Array<String>] :allowed_storage_profile_ids_to_add
    #   <p>The storage profile IDs to add.</p>
    # @option params [Array<String>] :allowed_storage_profile_ids_to_remove
    #   <p>The storage profile ID to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     default_budget_action: "NONE" # One of: ["NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"],
    #     job_attachment_settings: {
    #       s3_bucket_name: "S3BucketName", # required
    #       root_prefix: "S3Prefix", # required
    #     },
    #     role_arn: "IamRoleArn",
    #     job_run_as_user: {
    #       posix: {
    #         user: "String", # required
    #         group: "String", # required
    #       },
    #       windows: {
    #         user: "String", # required
    #         password_arn: "String", # required
    #       },
    #       run_as: "QUEUE_CONFIGURED_USER" # One of: ["QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"], # required
    #     },
    #     required_file_system_location_names_to_add: ["FileSystemLocationName"],
    #     required_file_system_location_names_to_remove: ["FileSystemLocationName"],
    #     allowed_storage_profile_ids_to_add: ["StorageProfileId"],
    #     allowed_storage_profile_ids_to_remove: ["StorageProfileId"]
    #   }
    #   options = {}
    #   response = client.update_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateQueueResponse]
    def update_queue(params = {}, options = {})
      request = build_request(:update_queue, params)
      request.send_request(options)
    end

    # <p>Updates the queue environment.</p>
    # @param [Hash, Types::UpdateQueueEnvironmentRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID of the queue environment to update.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID of the queue environment to update.</p>
    # @option params [String] :queue_environment_id
    #   <p>The queue environment ID to update.</p>
    # @option params [Integer] :priority
    #   <p>The priority to update.</p>
    # @option params [String] :template_type
    #   <p>The template type to update.</p>
    # @option params [String] :template
    #   <p>The template to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #     priority: 1,
    #     template_type: "JSON" # One of: ["JSON", "YAML"],
    #     template: "EnvironmentTemplate"
    #   }
    #   options = {}
    #   response = client.update_queue_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateQueueEnvironmentResponse]
    def update_queue_environment(params = {}, options = {})
      request = build_request(:update_queue_environment, params)
      request.send_request(options)
    end

    # <p>Updates a queue-fleet association.</p>
    # @param [Hash, Types::UpdateQueueFleetAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to update.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to update.</p>
    # @option params [String] :status
    #   <p>The status to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"], # required
    #   }
    #   options = {}
    #   response = client.update_queue_fleet_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateQueueFleetAssociationResponse]
    def update_queue_fleet_association(params = {}, options = {})
      request = build_request(:update_queue_fleet_association, params)
      request.send_request(options)
    end

    # <p>Updates the status of the queue. If you set the status to one of the
    #             <code>STOP_LIMIT_USAGE*</code> values, there will be a delay before the status
    #          transitions to the <code>STOPPED</code> state. </p>
    # @param [Hash, Types::UpdateQueueLimitAssociationRequest] params
    # @option params [String] :farm_id
    #   <p>The unique identifier of the farm that contains the associated queues and limits.</p>
    # @option params [String] :queue_id
    #   <p>The unique identifier of the queue associated to the limit.</p>
    # @option params [String] :limit_id
    #   <p>The unique identifier of the limit associated to the queue.</p>
    # @option params [String] :status
    #   <p>Sets the status of the limit. You can mark the limit active, or you can stop usage of
    #            the limit and either complete existing tasks or cancel any existing tasks immediately.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"], # required
    #   }
    #   options = {}
    #   response = client.update_queue_limit_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateQueueLimitAssociationResponse]
    def update_queue_limit_association(params = {}, options = {})
      request = build_request(:update_queue_limit_association, params)
      request.send_request(options)
    end

    # <p>Updates a session.</p>
    # @param [Hash, Types::UpdateSessionRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :target_lifecycle_status
    #   <p>The life cycle status to update in the session.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update in the session.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to update in the session.</p>
    # @option params [String] :job_id
    #   <p>The job ID to update in the session.</p>
    # @option params [String] :session_id
    #   <p>The session ID to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     target_lifecycle_status: "ENDED" # One of: ["ENDED"], # required
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.update_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSessionResponse]
    def update_session(params = {}, options = {})
      request = build_request(:update_session, params)
      request.send_request(options)
    end

    # <p>Updates a step.</p>
    # @param [Hash, Types::UpdateStepRequest] params
    # @option params [String] :target_task_run_status
    #   <p>The task status to update the step's tasks to.</p>
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to update.</p>
    # @option params [String] :job_id
    #   <p>The job ID to update.</p>
    # @option params [String] :step_id
    #   <p>The step ID to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_task_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"], # required
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #   }
    #   options = {}
    #   response = client.update_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateStepResponse]
    def update_step(params = {}, options = {})
      request = build_request(:update_step, params)
      request.send_request(options)
    end

    # <p>Updates a storage profile.</p>
    # @param [Hash, Types::UpdateStorageProfileRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :storage_profile_id
    #   <p>The storage profile ID to update.</p>
    # @option params [String] :display_name
    #   <p>The display name of the storage profile to update.</p>
    #            <important>
    #               <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p>
    #            </important>
    # @option params [String] :os_family
    #   <p>The OS system to update.</p>
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations_to_add
    #   <p>The file system location names to add.</p>
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations_to_remove
    #   <p>The file system location names to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #     display_name: "ResourceName",
    #     os_family: "WINDOWS" # One of: ["WINDOWS", "LINUX", "MACOS"],
    #     file_system_locations_to_add: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED" # One of: ["SHARED", "LOCAL"], # required
    #       }
    #     ],
    #     file_system_locations_to_remove: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED" # One of: ["SHARED", "LOCAL"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_storage_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateStorageProfileResponse]
    def update_storage_profile(params = {}, options = {})
      request = build_request(:update_storage_profile, params)
      request.send_request(options)
    end

    # <p>Updates a task.</p>
    # @param [Hash, Types::UpdateTaskRequest] params
    # @option params [String] :client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    # @option params [String] :target_run_status
    #   <p>The run status with which to start the task.</p>
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :queue_id
    #   <p>The queue ID to update.</p>
    # @option params [String] :job_id
    #   <p>The job ID to update.</p>
    # @option params [String] :step_id
    #   <p>The step ID to update.</p>
    # @option params [String] :task_id
    #   <p>The task ID to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     target_run_status: "READY" # One of: ["READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"], # required
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.update_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTaskResponse]
    def update_task(params = {}, options = {})
      request = build_request(:update_task, params)
      request.send_request(options)
    end

    # <p>Updates a worker.</p>
    # @param [Hash, Types::UpdateWorkerRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to update.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID to update.</p>
    # @option params [String] :status
    #   <p>The worker status to update.</p>
    # @option params [Types::WorkerCapabilities] :capabilities
    #   <p>The worker capabilities to update.</p>
    # @option params [Types::HostPropertiesRequest] :host_properties
    #   <p>The host properties to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     status: "STARTED" # One of: ["STARTED", "STOPPING", "STOPPED"],
    #     capabilities: {
    #       amounts: [ # required
    #         {
    #           name: "AmountCapabilityName", # required
    #           value: 1.0, # required
    #         }
    #       ],
    #       attributes: [ # required
    #         {
    #           name: "AttributeCapabilityName", # required
    #           values: ["AttributeCapabilityValue"], # required
    #         }
    #       ]
    #     },
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"]
    #       },
    #       host_name: "HostName"
    #     }
    #   }
    #   options = {}
    #   response = client.update_worker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log: {
    #       log_driver: "LogDriver", # required
    #       options: {
    #         "String" => "String"
    #       },
    #       parameters: {
    #         "String" => "String"
    #       },
    #       error: "LogError"
    #     },
    #     host_configuration: {
    #       script_body: "HostConfigurationScript", # required
    #       script_timeout_seconds: 1
    #     }
    #   }
    # @return [Types::UpdateWorkerResponse]
    def update_worker(params = {}, options = {})
      request = build_request(:update_worker, params)
      request.send_request(options)
    end

    # <p>Updates the schedule for a worker.</p>
    # @param [Hash, Types::UpdateWorkerScheduleRequest] params
    # @option params [String] :farm_id
    #   <p>The farm ID to update.</p>
    # @option params [String] :fleet_id
    #   <p>The fleet ID to update.</p>
    # @option params [String] :worker_id
    #   <p>The worker ID to update.</p>
    # @option params [Hash<String, Types::UpdatedSessionActionInfo>] :updated_session_actions
    #   <p>The session actions associated with the worker schedule to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     updated_session_actions: {
    #       "SessionActionId" => {
    #         completed_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "INTERRUPTED", "CANCELED", "NEVER_ATTEMPTED"],
    #         process_exit_code: 1,
    #         progress_message: "SessionActionProgressMessage",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         progress_percent: 1.0,
    #         manifests: [
    #           {
    #             output_manifest_path: "String",
    #             output_manifest_hash: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_worker_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assigned_sessions: { # required
    #       "SessionId" => {
    #         queue_id: "QueueId", # required
    #         job_id: "JobId", # required
    #         session_actions: [ # required
    #           {
    #             session_action_id: "SessionActionId", # required
    #             definition: { # required
    #               # One of:
    #               env_enter: {
    #                 environment_id: "EnvironmentId", # required
    #               },
    #               env_exit: {
    #                 environment_id: "EnvironmentId", # required
    #               },
    #               task_run: {
    #                 task_id: "TaskId",
    #                 step_id: "StepId", # required
    #                 parameters: { # required
    #                   "String" => {
    #                     # One of:
    #                     int: "IntString",
    #                     float: "FloatString",
    #                     string: "ParameterString",
    #                     path: "PathString",
    #                     chunk_int: "String"
    #                   }
    #                 }
    #               },
    #               sync_input_job_attachments: {
    #                 step_id: "StepId"
    #               }
    #             }
    #           }
    #         ],
    #         log_configuration: { # required
    #           log_driver: "LogDriver", # required
    #           options: {
    #             "String" => "String"
    #           },
    #           parameters: {
    #             "String" => "String"
    #           },
    #           error: "LogError"
    #         }
    #       }
    #     },
    #     cancel_session_actions: { # required
    #       "SessionId" => ["SessionActionId"]
    #     },
    #     desired_worker_status: "STOPPED" # One of: ["STOPPED"],
    #     update_interval_seconds: 1, # required
    #   }
    # @return [Types::UpdateWorkerScheduleResponse]
    def update_worker_schedule(params = {}, options = {})
      request = build_request(:update_worker_schedule, params)
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
      context[:gem_name] = 'aws-sdk-deadline'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        fleet_active: Waiters::FleetActive,
        job_create_complete: Waiters::JobCreateComplete,
        license_endpoint_deleted: Waiters::LicenseEndpointDeleted,
        license_endpoint_valid: Waiters::LicenseEndpointValid,
        queue_fleet_association_stopped: Waiters::QueueFleetAssociationStopped,
        queue_limit_association_stopped: Waiters::QueueLimitAssociationStopped,
        queue_scheduling: Waiters::QueueScheduling,
        queue_scheduling_blocked: Waiters::QueueSchedulingBlocked
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
    end
  end
end
