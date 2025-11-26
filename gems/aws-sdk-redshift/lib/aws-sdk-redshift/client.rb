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
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:redshift)

module Aws::Redshift
  # An API client for Aws::Redshift.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RedshiftServiceVersion20121201
    @identifier = :redshift

    add_plugin(::Aws::Redshift::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Redshift::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the
    #             configuration (term, payment type, or number of nodes) and no additional costs.
    #         </p>
    # @param [Hash, Types::AcceptReservedNodeExchangeInputMessage] params
    # @option params [String] :reserved_node_id
    #   <p>A string representing the node identifier of the DC1 Reserved Node to be
    #               exchanged.</p>
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange.
    #               You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_id: "String", # required
    #     target_reserved_node_offering_id: "String", # required
    #   }
    #   options = {}
    #   response = client.accept_reserved_node_exchange(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exchanged_reserved_node: {
    #       reserved_node_id: "String",
    #       reserved_node_offering_id: "String",
    #       node_type: "String",
    #       start_time: Time.now,
    #       duration: 1,
    #       fixed_price: 1.0,
    #       usage_price: 1.0,
    #       currency_code: "String",
    #       node_count: 1,
    #       state: "String",
    #       offering_type: "String",
    #       recurring_charges: [
    #         {
    #           recurring_charge_amount: 1.0,
    #           recurring_charge_frequency: "String"
    #         }
    #       ],
    #       reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #     }
    #   }
    # @return [Types::AcceptReservedNodeExchangeOutputMessage]
    def accept_reserved_node_exchange(params = {}, options = {})
      request = build_request(:accept_reserved_node_exchange, params)
      request.send_request(options)
    end

    # <p>Adds a partner integration to a cluster.
    #             This operation authorizes a partner to push status updates for the specified database. 
    #             To complete the integration, you also set up the integration on the partner website.</p>
    # @param [Hash, Types::AddPartnerInput] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    # @option params [String] :database_name
    #   <p>The name of the database that receives data from the partner.</p>
    # @option params [String] :partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "PartnerIntegrationAccountId", # required
    #     cluster_identifier: "PartnerIntegrationClusterIdentifier", # required
    #     database_name: "PartnerIntegrationDatabaseName", # required
    #     partner_name: "PartnerIntegrationPartnerName", # required
    #   }
    #   options = {}
    #   response = client.add_partner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "PartnerIntegrationDatabaseName",
    #     partner_name: "PartnerIntegrationPartnerName"
    #   }
    # @return [Types::AddPartnerOutput]
    def add_partner(params = {}, options = {})
      request = build_request(:add_partner, params)
      request.send_request(options)
    end

    # <p>From a datashare consumer account, associates a datashare with the
    #             account (AssociateEntireAccount) or the specified namespace (ConsumerArn). If you make this association, the consumer
    #             can consume the datashare.</p>
    # @param [Hash, Types::AssociateDataShareConsumerMessage] params
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>
    # @option params [Boolean] :associate_entire_account
    #   <p>A value that specifies whether the datashare is associated with the entire account.</p>
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer namespace associated with the
    #               datashare.</p>
    # @option params [String] :consumer_region
    #   <p>From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified Amazon Web Services Region.</p>
    # @option params [Boolean] :allow_writes
    #   <p>If set to true, allows write operations for a datashare.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String", # required
    #     associate_entire_account: false,
    #     consumer_arn: "String",
    #     consumer_region: "String",
    #     allow_writes: false
    #   }
    #   options = {}
    #   response = client.associate_data_share_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_share_arn: "String",
    #     producer_arn: "String",
    #     allow_publicly_accessible_consumers: false,
    #     data_share_associations: [
    #       {
    #         consumer_identifier: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #         consumer_region: "String",
    #         created_date: Time.now,
    #         status_change_date: Time.now,
    #         producer_allowed_writes: false,
    #         consumer_accepted_writes: false
    #       }
    #     ],
    #     managed_by: "String",
    #     data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #   }
    # @return [Types::AssociateDataShareConsumerOutput]
    def associate_data_share_consumer(params = {}, options = {})
      request = build_request(:associate_data_share_consumer, params)
      request.send_request(options)
    end

    # <p>Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether
    #             the application accessing your cluster is running on the Internet or an Amazon EC2
    #             instance, you can authorize inbound access to either a Classless Interdomain Routing
    #             (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as
    #             many as 20 ingress rules to an Amazon Redshift security group.</p>
    #          <p>If you authorize access to an Amazon EC2 security group, specify
    #                 <i>EC2SecurityGroupName</i> and
    #                 <i>EC2SecurityGroupOwnerId</i>. The Amazon EC2 security group and
    #             Amazon Redshift cluster must be in the same Amazon Web Services Region. </p>
    #          <p>If you authorize access to a CIDR/IP address range, specify
    #                 <i>CIDRIP</i>. For an overview of CIDR blocks, see the Wikipedia
    #             article on <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
    #          <p>You must also associate the security group with a cluster so that clients running
    #             on these IP addresses or the EC2 instance are authorized to connect to the cluster. For
    #             information about managing security groups, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Working with Security
    #                 Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::AuthorizeClusterSecurityGroupIngressMessage] params
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the security group to which the ingress rule is added.</p>
    # @option params [String] :cidrip
    #   <p>The IP range to be added the Amazon Redshift security group.</p>
    # @option params [String] :ec2_security_group_name
    #   <p>The EC2 security group to be added the Amazon Redshift security group.</p>
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified by the
    #               <i>EC2SecurityGroupName</i> parameter. The Amazon Web Services Access Key ID is not an
    #               acceptable value. </p>
    #            <p>Example: <code>111122223333</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_owner_id: "String"
    #   }
    #   options = {}
    #   response = client.authorize_cluster_security_group_ingress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_security_group: {
    #       cluster_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       ip_ranges: [
    #         {
    #           status: "String",
    #           cidrip: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AuthorizeClusterSecurityGroupIngressResult]
    def authorize_cluster_security_group_ingress(params = {}, options = {})
      request = build_request(:authorize_cluster_security_group_ingress, params)
      request.send_request(options)
    end

    # <p>From a data producer account, authorizes the sharing of a datashare with one or more
    #             consumer accounts or managing entities. To authorize a datashare for a data consumer,
    #             the producer account must have the correct access permissions.</p>
    # @param [Hash, Types::AuthorizeDataShareMessage] params
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare namespace that producers are to authorize
    #               sharing for.</p>
    # @option params [String] :consumer_identifier
    #   <p>The identifier of the data consumer that is authorized to access the datashare. This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    # @option params [Boolean] :allow_writes
    #   <p>If set to true, allows write operations for a datashare.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String", # required
    #     consumer_identifier: "String", # required
    #     allow_writes: false
    #   }
    #   options = {}
    #   response = client.authorize_data_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_share_arn: "String",
    #     producer_arn: "String",
    #     allow_publicly_accessible_consumers: false,
    #     data_share_associations: [
    #       {
    #         consumer_identifier: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #         consumer_region: "String",
    #         created_date: Time.now,
    #         status_change_date: Time.now,
    #         producer_allowed_writes: false,
    #         consumer_accepted_writes: false
    #       }
    #     ],
    #     managed_by: "String",
    #     data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #   }
    # @return [Types::AuthorizeDataShareOutput]
    def authorize_data_share(params = {}, options = {})
      request = build_request(:authorize_data_share, params)
      request.send_request(options)
    end

    # <p>Grants access to a cluster.</p>
    # @param [Hash, Types::AuthorizeEndpointAccessMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to grant access to.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID to grant access to.</p>
    # @option params [Array<String>] :vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers to grant access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     account: "String", # required
    #     vpc_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.authorize_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grantor: "String",
    #     grantee: "String",
    #     cluster_identifier: "String",
    #     authorize_time: Time.now,
    #     cluster_status: "String",
    #     status: "Authorized" # One of: ["Authorized", "Revoking"],
    #     allowed_all_vp_cs: false,
    #     allowed_vp_cs: ["String"],
    #     endpoint_count: 1
    #   }
    # @return [Types::AuthorizeEndpointAccessOutput]
    def authorize_endpoint_access(params = {}, options = {})
      request = build_request(:authorize_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Authorizes the specified Amazon Web Services account to restore the specified
    #             snapshot.</p>
    #          <p>
    # For more information about working with snapshots, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::AuthorizeSnapshotAccessMessage] params
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot the account is authorized to restore.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to authorize access to.</p>
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>If the snapshot to access doesn't exist and the associated IAM policy doesn't allow access to all (*) snapshots</i> -  This parameter is required. Otherwise, permissions 
    #                   aren't available to check if the snapshot exists.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>If the snapshot to access exists</i> - This parameter isn't required. Redshift can retrieve the cluster identifier and use it to 
    #                   validate snapshot authorization.</p>
    #               </li>
    #            </ul>
    # @option params [String] :account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account authorized to restore the specified
    #               snapshot.</p>
    #            <p>To share a snapshot with Amazon Web Services Support, specify amazon-redshift-support.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "String",
    #     snapshot_arn: "String",
    #     snapshot_cluster_identifier: "String",
    #     account_with_restore_access: "String", # required
    #   }
    #   options = {}
    #   response = client.authorize_snapshot_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::AuthorizeSnapshotAccessResult]
    def authorize_snapshot_access(params = {}, options = {})
      request = build_request(:authorize_snapshot_access, params)
      request.send_request(options)
    end

    # <p>Deletes a set of cluster snapshots.</p>
    # @param [Hash, Types::BatchDeleteClusterSnapshotsRequest] params
    # @option params [Array<Types::DeleteClusterSnapshotMessage>] :identifiers
    #   <p>A list of identifiers for the snapshots that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifiers: [ # required
    #       {
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_cluster_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: ["String"],
    #     errors: [
    #       {
    #         snapshot_identifier: "String",
    #         snapshot_cluster_identifier: "String",
    #         failure_code: "String",
    #         failure_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteClusterSnapshotsResult]
    def batch_delete_cluster_snapshots(params = {}, options = {})
      request = build_request(:batch_delete_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a set of cluster snapshots.</p>
    # @param [Hash, Types::BatchModifyClusterSnapshotsMessage] params
    # @option params [Array<String>] :snapshot_identifier_list
    #   <p>A list of snapshot identifiers you want to modify.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If you specify the value -1,
    #               the manual snapshot is retained indefinitely.</p>
    #            <p>The number must be either -1 or an integer between 1 and 3,653.</p>
    #            <p>If you decrease the manual snapshot retention period from its current value, existing
    #               manual snapshots that fall outside of the new retention period will return an error. If
    #               you want to suppress the errors and delete the snapshots, use the force option. </p>
    # @option params [Boolean] :force
    #   <p>A boolean value indicating whether to override an exception if the retention period
    #               has passed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier_list: ["String"], # required
    #     manual_snapshot_retention_period: 1,
    #     force: false
    #   }
    #   options = {}
    #   response = client.batch_modify_cluster_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: ["String"],
    #     errors: [
    #       {
    #         snapshot_identifier: "String",
    #         snapshot_cluster_identifier: "String",
    #         failure_code: "String",
    #         failure_reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchModifyClusterSnapshotsOutputMessage]
    def batch_modify_cluster_snapshots(params = {}, options = {})
      request = build_request(:batch_modify_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Cancels a resize operation for a cluster.</p>
    # @param [Hash, Types::CancelResizeMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster that you want to cancel a resize operation
    #               for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_resize(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_node_type: "String",
    #     target_number_of_nodes: 1,
    #     target_cluster_type: "String",
    #     status: "String",
    #     import_tables_completed: ["String"],
    #     import_tables_in_progress: ["String"],
    #     import_tables_not_started: ["String"],
    #     avg_resize_rate_in_mega_bytes_per_second: 1.0,
    #     total_resize_data_in_mega_bytes: 1,
    #     progress_in_mega_bytes: 1,
    #     elapsed_time_in_seconds: 1,
    #     estimated_time_to_completion_in_seconds: 1,
    #     resize_type: "String",
    #     message: "String",
    #     target_encryption_type: "String",
    #     data_transfer_progress_percent: 1.0
    #   }
    # @return [Types::CancelResizeOutput]
    def cancel_resize(params = {}, options = {})
      request = build_request(:cancel_resize, params)
      request.send_request(options)
    end

    # <p>Copies the specified automated cluster snapshot to a new manual cluster snapshot.
    #             The source must be an automated snapshot and it must be in the available
    #             state.</p>
    #          <p>When you delete a cluster, Amazon Redshift deletes any automated snapshots of the
    #             cluster. Also, when the retention period of the snapshot expires, Amazon Redshift
    #             automatically deletes it. If you want to keep an automated snapshot for a longer period,
    #             you can make a manual copy of the snapshot. Manual snapshots are retained until you
    #             delete them.</p>
    #          <p>
    # For more information about working with snapshots, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CopyClusterSnapshotMessage] params
    # @option params [String] :source_snapshot_identifier
    #   <p>The identifier for the source snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the identifier for a valid automated snapshot whose state is
    #                           <code>available</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_snapshot_cluster_identifier
    #   <p>The identifier of the cluster the source snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the identifier for a valid cluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_snapshot_identifier
    #   <p>The identifier given to the new manual snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for the Amazon Web Services account that is making the request.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #            <p>The default value is -1.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_snapshot_identifier: "String", # required
    #     source_snapshot_cluster_identifier: "String",
    #     target_snapshot_identifier: "String", # required
    #     manual_snapshot_retention_period: 1
    #   }
    #   options = {}
    #   response = client.copy_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::CopyClusterSnapshotResult]
    def copy_cluster_snapshot(params = {}, options = {})
      request = build_request(:copy_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates an authentication profile with the specified parameters.</p>
    # @param [Hash, Types::CreateAuthenticationProfileMessage] params
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to be created.</p>
    # @option params [String] :authentication_profile_content
    #   <p>The content of the authentication profile in JSON format. 
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_name: "AuthenticationProfileNameString", # required
    #     authentication_profile_content: "String", # required
    #   }
    #   options = {}
    #   response = client.create_authentication_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profile_name: "AuthenticationProfileNameString",
    #     authentication_profile_content: "String"
    #   }
    # @return [Types::CreateAuthenticationProfileResult]
    def create_authentication_profile(params = {}, options = {})
      request = build_request(:create_authentication_profile, params)
      request.send_request(options)
    end

    # <p>Creates a new cluster with the specified parameters.</p>
    #          <p>To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster
    #             subnet group name. The cluster subnet group identifies the subnets of your VPC that
    #             Amazon Redshift uses when creating the cluster. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #             you own in a Region from reaching or being reached from the internet through internet
    #             gateways and egress-only internet gateways. If a subnet group for a
    #             provisioned cluster is in an account with VPC BPA turned on, the following capabilities
    #             are blocked:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Restoring a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private cluster to be public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the subnet group when there's at
    #                     least one public cluster within the group</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and
    #             subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @param [Hash, Types::CreateClusterMessage] params
    # @option params [String] :db_name
    #   <p>The name of the first database to be created when the cluster is created.</p>
    #            <p>To create additional databases after the cluster is created, connect to the cluster
    #               with a SQL client and use SQL commands to create a database. For more information, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html">Create
    #                   a Database</a> in the Amazon Redshift Database Developer Guide. </p>
    #            <p>Default: <code>dev</code>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1 to 64 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only lowercase letters.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a word that is reserved by the service. A list of reserved words
    #                       can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the
    #                       Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster. You use this identifier to refer to the
    #               cluster for any subsequent cluster operations such as deleting or modifying. The
    #               identifier also appears in the Amazon Redshift console.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myexamplecluster</code>
    #            </p>
    # @option params [String] :cluster_type
    #   <p>The type of the cluster. When cluster type is specified as</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>single-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is not required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>multi-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is required.</p>
    #               </li>
    #            </ul>
    #            <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
    #            </p>
    #            <p>Default: <code>multi-node</code>
    #            </p>
    # @option params [String] :node_type
    #   <p>The node type to be provisioned for the cluster. For information about node types,
    #               go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #            <p>Valid Values: 
    #               <code>dc2.large</code> | <code>dc2.8xlarge</code> | 
    #               <code>ra3.large</code> |  <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    # @option params [String] :master_username
    #   <p>The user name associated with the admin user account for the cluster that is being
    #               created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 - 128 alphanumeric characters or hyphens. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must not contain a colon (:) or a slash (/).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word. A list of reserved words can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
    #                           Words</a> in the Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    # @option params [String] :master_user_password
    #   <p>The password associated with the admin user account for the cluster that is being
    #               created.</p>
    #            <p>You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is <code>true</code>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                  <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #            <p>Default: The default cluster security group for Amazon Redshift.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #            <p>Default: The default VPC security group is associated with the cluster.</p>
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of a cluster subnet group to be associated with this cluster.</p>
    #            <p>If this parameter is not provided the resulting cluster will be deployed outside
    #               virtual private cloud (VPC).</p>
    # @option params [String] :availability_zone
    #   <p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the
    #               cluster. For example, if you have several EC2 instances running in a specific
    #               Availability Zone, then you might want the cluster to be provisioned in the same zone in
    #               order to decrease network latency.</p>
    #            <p>Default: A random, system-chosen Availability Zone in the region that is specified
    #               by the endpoint.</p>
    #            <p>Example: <code>us-east-2d</code>
    #            </p>
    #            <p>Constraint: The specified Availability Zone must be in the same region as the
    #               current endpoint.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p> Default: A 30-minute window selected at random from an 8-hour block of time per
    #               region, occurring on a random day of the week. For more information about the time
    #               blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #            <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #            <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #            <p>Constraints: Must be a value from 0 to 35.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #            <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of
    #               the connection string requires the port on which the cluster will listen for incoming
    #               connections.</p>
    #            <p>Default: <code>5439</code>
    #            </p>
    #            <p>Valid Values:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>For clusters with ra3 nodes - Select a port within the ranges <code>5431-5455</code> or <code>8191-8215</code>. (If you have an existing cluster 
    #                   with ra3 nodes, it isn't required that you change the port to these ranges.)</p>
    #               </li>
    #               <li>
    #                  <p>For clusters with dc2 nodes - Select a port within the range <code>1150-65535</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :cluster_version
    #   <p>The version of the Amazon Redshift engine software that you want to deploy on the
    #               cluster.</p>
    #            <p>The version selected runs on all the nodes in the cluster.</p>
    #            <p>Constraints: Only version 1.0 is currently available.</p>
    #            <p>Example: <code>1.0</code>
    #            </p>
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster.</p>
    #            <p>When a new major version of the Amazon Redshift engine is released, you can request that
    #               the service automatically apply upgrades during the maintenance window to the Amazon Redshift
    #               engine that is running on your cluster.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Integer] :number_of_nodes
    #   <p>The number of compute nodes in the cluster. This parameter is required when the
    #                   <b>ClusterType</b> parameter is specified as
    #                   <code>multi-node</code>. </p>
    #            <p>For information about determining how many nodes you need, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #            <p>If you don't specify this parameter, you get a single-node cluster. When requesting
    #               a multi-node cluster, you must specify the number of nodes that you want in the
    #               cluster.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #            <p>Constraints: Value must be at least 1 and no more than 100.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #            <p>Default: false</p>
    # @option params [Boolean] :encrypted
    #   <p>If <code>true</code>, the data in the cluster is encrypted at rest. 
    #               If you set the value on this parameter to <code>false</code>, the request will fail.</p>
    #            <p>Default: true</p>
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #            <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. Don't specify the Elastic IP address for a publicly accessible 
    #               cluster with availability zone relocation turned on. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to
    #               use to encrypt data in the cluster.</p>
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #            <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #            <p>Default: false</p>
    # @option params [String] :additional_info
    #   <p>Reserved.</p>
    # @option params [Array<String>] :iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #            <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @option params [String] :maintenance_track_name
    #   <p>An optional parameter for the name of the maintenance track for the cluster. If you
    #               don't provide a maintenance track name, the cluster is assigned to the
    #                   <code>current</code> track.</p>
    # @option params [String] :snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is created.</p>
    # @option params [String] :aqua_configuration_status
    #   <p>This parameter is retired. It does not set the AQUA configuration status. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created. </p>
    # @option params [String] :load_sample_data
    #   <p>A flag that specifies whether to load sample data once the cluster is created.</p>
    # @option params [Boolean] :manage_master_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage this cluster's admin credentials. 
    #               You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is true. 
    #               If <code>ManageMasterPassword</code> is false or not set, Amazon Redshift uses 
    #               <code>MasterUserPassword</code> for the admin user account's password.
    #           </p>
    # @option params [String] :master_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. 
    #               You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address types that the cluster supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    # @option params [Boolean] :multi_az
    #   <p>If true, Amazon Redshift will deploy the cluster in two Availability Zones (AZ).</p>
    # @option params [String] :redshift_idc_application_arn
    #   <p>The Amazon resource name (ARN) of the Amazon Redshift IAM Identity Center application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_name: "String",
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String", # required
    #     master_username: "String", # required
    #     master_user_password: "SensitiveString",
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     cluster_subnet_group_name: "String",
    #     availability_zone: "String",
    #     preferred_maintenance_window: "String",
    #     cluster_parameter_group_name: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     port: 1,
    #     cluster_version: "String",
    #     allow_version_upgrade: false,
    #     number_of_nodes: 1,
    #     publicly_accessible: false,
    #     encrypted: false,
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     elastic_ip: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     kms_key_id: "String",
    #     enhanced_vpc_routing: false,
    #     additional_info: "String",
    #     iam_roles: ["String"],
    #     maintenance_track_name: "String",
    #     snapshot_schedule_identifier: "String",
    #     availability_zone_relocation: false,
    #     aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"],
    #     default_iam_role_arn: "String",
    #     load_sample_data: "String",
    #     manage_master_password: false,
    #     master_password_secret_kms_key_id: "String",
    #     ip_address_type: "String",
    #     multi_az: false,
    #     redshift_idc_application_arn: "String"
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateClusterResult]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Redshift parameter group.</p>
    #          <p>Creating parameter groups is independent of creating clusters. You can associate a
    #             cluster with a parameter group when you create the cluster. You can also associate an
    #             existing cluster with a parameter group after the cluster is created by using <a>ModifyCluster</a>. </p>
    #          <p>Parameters in the parameter group define specific behavior that applies to the
    #             databases you create on the cluster. 
    # For more information about parameters and parameter groups, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CreateClusterParameterGroupMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique withing your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lower-case string.</p>
    #            </note>
    # @option params [String] :parameter_group_family
    #   <p>The Amazon Redshift engine version to which the cluster parameter group applies. The
    #               cluster engine version determines the set of parameters.</p>
    #            <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of
    #               all the parameter groups that are owned by your Amazon Web Services account, including the default
    #               parameter groups for each Amazon Redshift engine version. The parameter group family names
    #               associated with the default parameter groups provide you the valid values. For example,
    #               a valid family name is "redshift-1.0". </p>
    # @option params [String] :description
    #   <p>A description of the parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_parameter_group: {
    #       parameter_group_name: "String",
    #       parameter_group_family: "String",
    #       description: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateClusterParameterGroupResult]
    def create_cluster_parameter_group(params = {}, options = {})
      request = build_request(:create_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Redshift security group. You use security groups to control access
    #             to non-VPC clusters.</p>
    #          <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the 
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CreateClusterSecurityGroupMessage] params
    # @option params [String] :cluster_security_group_name
    #   <p>The name for the security group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all security groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>examplesecuritygroup</code>
    #            </p>
    # @option params [String] :description
    #   <p>A description for the security group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_security_group_name: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cluster_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_security_group: {
    #       cluster_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       ip_ranges: [
    #         {
    #           status: "String",
    #           cidrip: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateClusterSecurityGroupResult]
    def create_cluster_security_group(params = {}, options = {})
      request = build_request(:create_cluster_security_group, params)
      request.send_request(options)
    end

    # <p>Creates a manual snapshot of the specified cluster. The cluster must be in the
    #                 <code>available</code> state. </p>
    #          <p>
    # For more information about working with snapshots, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CreateClusterSnapshotMessage] params
    # @option params [String] :snapshot_identifier
    #   <p>A unique identifier for the snapshot that you are requesting. This identifier must
    #               be unique for all snapshots within the Amazon Web Services account.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier for which you want a snapshot.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #            <p>The default value is -1.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "String", # required
    #     cluster_identifier: "String", # required
    #     manual_snapshot_retention_period: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::CreateClusterSnapshotResult]
    def create_cluster_snapshot(params = {}, options = {})
      request = build_request(:create_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Redshift subnet group. You must provide a list of one or more
    #             subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating
    #             Amazon Redshift subnet group.</p>
    #          <p>
    # For information about subnet groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html">Amazon Redshift Cluster Subnet Groups</a> in the 
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CreateClusterSubnetGroupMessage] params
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name for the subnet group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all subnet groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>examplesubnetgroup</code>
    #            </p>
    # @option params [String] :description
    #   <p>A description for the subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_subnet_group_name: "String", # required
    #     description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cluster_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_subnet_group: {
    #       cluster_subnet_group_name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String",
    #             supported_platforms: [
    #               {
    #                 name: "String"
    #               }
    #             ]
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       supported_cluster_ip_address_types: ["String"]
    #     }
    #   }
    # @return [Types::CreateClusterSubnetGroupResult]
    def create_cluster_subnet_group(params = {}, options = {})
      request = build_request(:create_cluster_subnet_group, params)
      request.send_request(options)
    end

    # <p>Used to create a custom domain name for a cluster. Properties include the custom domain name, the 
    #             cluster the custom domain is associated with, and the certificate Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::CreateCustomDomainAssociationMessage] params
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for a custom domain association.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The certificate Amazon Resource Name (ARN) for the custom domain name association.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier that the custom domain is associated with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_domain_name: "CustomDomainNameString", # required
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.create_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_domain_name: "CustomDomainNameString",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     cluster_identifier: "String",
    #     custom_domain_cert_expiry_time: "String"
    #   }
    # @return [Types::CreateCustomDomainAssociationResult]
    def create_custom_domain_association(params = {}, options = {})
      request = build_request(:create_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Creates a Redshift-managed VPC endpoint.</p>
    # @param [Hash, Types::CreateEndpointAccessMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    # @option params [String] :resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.</p>
    # @option params [String] :endpoint_name
    #   <p>The Redshift-managed VPC endpoint name.</p>
    #            <p>An endpoint name must contain 1-30 characters.
    #             Valid characters are A-Z, a-z, 0-9, and hyphen(-).
    #             The first character must be a letter.
    #             The name can't contain two consecutive hyphens or end with a hyphen.</p>
    # @option params [String] :subnet_group_name
    #   <p>The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     resource_owner: "String",
    #     endpoint_name: "String", # required
    #     subnet_group_name: "String", # required
    #     vpc_security_group_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.create_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "String",
    #     resource_owner: "String",
    #     subnet_group_name: "String",
    #     endpoint_status: "String",
    #     endpoint_name: "String",
    #     endpoint_create_time: Time.now,
    #     port: 1,
    #     address: "String",
    #     vpc_security_groups: [
    #       {
    #         vpc_security_group_id: "String",
    #         status: "String"
    #       }
    #     ],
    #     vpc_endpoint: {
    #       vpc_endpoint_id: "String",
    #       vpc_id: "String",
    #       network_interfaces: [
    #         {
    #           network_interface_id: "String",
    #           subnet_id: "String",
    #           private_ip_address: "String",
    #           availability_zone: "String",
    #           ipv6_address: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateEndpointAccessOutput]
    def create_endpoint_access(params = {}, options = {})
      request = build_request(:create_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Redshift event notification subscription. This action requires an ARN
    #             (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console,
    #             the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you
    #             must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in
    #             the SNS console.</p>
    #          <p>You can specify the source type, and lists of Amazon Redshift source IDs, event
    #             categories, and event severities. Notifications will be sent for all events you want
    #             that match those criteria. For example, you can specify source type = cluster, source ID
    #             = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity =
    #             ERROR. The subscription will only send notifications for those ERROR events in the
    #             Availability and Backup categories for the specified clusters.</p>
    #          <p>If you specify both the source type and source IDs, such as source type = cluster
    #             and source identifier = my-cluster-1, notifications will be sent for all the cluster
    #             events for my-cluster-1. If you specify a source type but do not specify a source
    #             identifier, you will receive notice of the events for the objects of that type in your
    #             Amazon Web Services account. If you do not specify either the SourceType nor the SourceIdentifier, you
    #             will be notified of events generated from all Amazon Redshift sources belonging to your Amazon Web Services account. You must specify a source type if you specify a source ID.</p>
    # @param [Hash, Types::CreateEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the event subscription to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event
    #               notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to
    #               it.</p>
    # @option params [String] :source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #            <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    # @option params [Array<String>] :source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #            <p>Example: my-cluster-1, my-cluster-2</p>
    #            <p>Example: my-snapshot-20131010</p>
    # @option params [Array<String>] :event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #            <p>Values: configuration, management, monitoring, security, pending</p>
    # @option params [String] :severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #            <p>Values: ERROR, INFO</p>
    # @option params [Boolean] :enabled
    #   <p>A boolean value; set to <code>true</code> to activate the subscription, and set to
    #                   <code>false</code> to create the subscription but not activate it. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     source_ids: ["String"],
    #     event_categories: ["String"],
    #     severity: "String",
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: Time.now,
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       severity: "String",
    #       enabled: false,
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateEventSubscriptionResult]
    def create_event_subscription(params = {}, options = {})
      request = build_request(:create_event_subscription, params)
      request.send_request(options)
    end

    # <p>Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to
    #             the client's HSM in order to store and retrieve the keys used to encrypt the cluster
    #             databases.</p>
    #          <p>The command returns a public key, which you must store in the HSM. In addition to
    #             creating the HSM certificate, you must create an Amazon Redshift HSM configuration that
    #             provides a cluster the information needed to store and use encryption keys in the HSM.
    #             For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html#working-with-HSM">Hardware Security Modules</a>
    #             in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::CreateHsmClientCertificateMessage] params
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier to be assigned to the new HSM client certificate that the cluster
    #               will use to connect to the HSM to use the database encryption keys.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_client_certificate_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hsm_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_client_certificate: {
    #       hsm_client_certificate_identifier: "String",
    #       hsm_client_certificate_public_key: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateHsmClientCertificateResult]
    def create_hsm_client_certificate(params = {}, options = {})
      request = build_request(:create_hsm_client_certificate, params)
      request.send_request(options)
    end

    # <p>Creates an HSM configuration that contains the information required by an Amazon Redshift
    #             cluster to store and use database encryption keys in a Hardware Security Module (HSM).
    #             After creating the HSM configuration, you can specify it as a parameter when creating a
    #             cluster. The cluster will then store its encryption keys in the HSM.</p>
    #          <p>In addition to creating an HSM configuration, you must also create an HSM client
    #             certificate. For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a>
    #             in the Amazon Redshift Cluster Management Guide.</p>
    # @param [Hash, Types::CreateHsmConfigurationMessage] params
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>
    # @option params [String] :description
    #   <p>A text description of the HSM configuration to be created.</p>
    # @option params [String] :hsm_ip_address
    #   <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
    # @option params [String] :hsm_partition_name
    #   <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
    #               database encryption keys.</p>
    # @option params [String] :hsm_partition_password
    #   <p>The password required to access the HSM partition.</p>
    # @option params [String] :hsm_server_public_certificate
    #   <p>The HSMs public certificate file. When using Cloud HSM, the file name is
    #               server.pem.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_configuration_identifier: "String", # required
    #     description: "String", # required
    #     hsm_ip_address: "String", # required
    #     hsm_partition_name: "String", # required
    #     hsm_partition_password: "String", # required
    #     hsm_server_public_certificate: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_hsm_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_configuration: {
    #       hsm_configuration_identifier: "String",
    #       description: "String",
    #       hsm_ip_address: "String",
    #       hsm_partition_name: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateHsmConfigurationResult]
    def create_hsm_configuration(params = {}, options = {})
      request = build_request(:create_hsm_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a zero-ETL integration or S3 event integration with Amazon Redshift.</p>
    # @param [Hash, Types::CreateIntegrationMessage] params
    # @option params [String] :source_arn
    #   <p>The Amazon Resource Name (ARN) of the database to use as the source for replication.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>
    # @option params [String] :integration_name
    #   <p>The name of the integration.</p>
    # @option params [String] :kms_key_id
    #   <p>An Key Management Service (KMS) key identifier for the key to use to
    #               encrypt the integration. If you don't specify an encryption key, the default
    #               Amazon Web Services owned key is used.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>A list of tags.</p>
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>An optional set of non-secret key–value pairs that contains additional contextual
    #               information about the data. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
    #                   context</a> in the <i>Amazon Web Services Key Management Service Developer
    #                       Guide</i>.</p>
    #            <p>You can only include this parameter if you specify the <code>KMSKeyId</code> parameter.</p>
    # @option params [String] :description
    #   <p>A description of the integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_arn: "SourceArn", # required
    #     target_arn: "TargetArn", # required
    #     integration_name: "IntegrationName", # required
    #     kms_key_id: "String",
    #     tag_list: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     additional_encryption_context: {
    #       "String" => "String"
    #     },
    #     description: "IntegrationDescription"
    #   }
    #   options = {}
    #   response = client.create_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "IntegrationArn",
    #     integration_name: "IntegrationName",
    #     source_arn: "SourceArn",
    #     target_arn: "TargetArn",
    #     status: "creating" # One of: ["creating", "active", "modifying", "failed", "deleting", "syncing", "needs_attention"],
    #     errors: [
    #       {
    #         error_code: "String", # required
    #         error_message: "String"
    #       }
    #     ],
    #     create_time: Time.now,
    #     description: "Description",
    #     kms_key_id: "String",
    #     additional_encryption_context: {
    #       "String" => "String"
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreateIntegrationOutput]
    def create_integration(params = {}, options = {})
      request = build_request(:create_integration, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Redshift application for use with IAM Identity Center.</p>
    # @param [Hash, Types::CreateRedshiftIdcApplicationMessage] params
    # @option params [String] :idc_instance_arn
    #   <p>The Amazon resource name (ARN) of the IAM Identity Center instance where Amazon Redshift creates a new managed application.</p>
    # @option params [String] :redshift_idc_application_name
    #   <p>The name of the Redshift application in IAM Identity Center.</p>
    # @option params [String] :identity_namespace
    #   <p>The namespace for the Amazon Redshift IAM Identity Center application instance. It determines which managed application 
    #               verifies the connection token.</p>
    # @option params [String] :idc_display_name
    #   <p>The display name for the Amazon Redshift IAM Identity Center application instance. It appears in the console.</p>
    # @option params [String] :iam_role_arn
    #   <p>The IAM role ARN for the Amazon Redshift IAM Identity Center application instance. It has the required permissions 
    #               to be assumed and invoke the IDC Identity Center API.</p>
    # @option params [Array<Types::AuthorizedTokenIssuer>] :authorized_token_issuer_list
    #   <p>The token issuer list for the Amazon Redshift IAM Identity Center application instance.</p>
    # @option params [Array<Types::ServiceIntegrationsUnion>] :service_integrations
    #   <p>A collection of service integrations for the Redshift IAM Identity Center application.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags.</p>
    # @option params [Array<String>] :sso_tag_keys
    #   <p>A list of tags keys that Redshift Identity Center applications copy to IAM Identity
    #               Center. For each input key, the tag corresponding to the key-value pair is
    #               propagated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     idc_instance_arn: "String", # required
    #     redshift_idc_application_name: "RedshiftIdcApplicationName", # required
    #     identity_namespace: "IdentityNamespaceString",
    #     idc_display_name: "IdcDisplayNameString", # required
    #     iam_role_arn: "String", # required
    #     authorized_token_issuer_list: [
    #       {
    #         trusted_token_issuer_arn: "String",
    #         authorized_audiences_list: ["String"]
    #       }
    #     ],
    #     service_integrations: [{
    #       # One of:
    #       lake_formation: [{
    #         # One of:
    #         lake_formation_query: {
    #           authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         }
    #       }],
    #       s3_access_grants: [{
    #         # One of:
    #         read_write_access: {
    #           authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         }
    #       }]
    #     }],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     sso_tag_keys: ["String"]
    #   }
    #   options = {}
    #   response = client.create_redshift_idc_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     redshift_idc_application: {
    #       idc_instance_arn: "String",
    #       redshift_idc_application_name: "RedshiftIdcApplicationName",
    #       redshift_idc_application_arn: "String",
    #       identity_namespace: "IdentityNamespaceString",
    #       idc_display_name: "IdcDisplayNameString",
    #       iam_role_arn: "String",
    #       idc_managed_application_arn: "String",
    #       idc_onboard_status: "String",
    #       authorized_token_issuer_list: [
    #         {
    #           trusted_token_issuer_arn: "String",
    #           authorized_audiences_list: ["String"]
    #         }
    #       ],
    #       service_integrations: [{
    #         # One of:
    #         lake_formation: [{
    #           # One of:
    #           lake_formation_query: {
    #             authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           }
    #         }],
    #         s3_access_grants: [{
    #           # One of:
    #           read_write_access: {
    #             authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           }
    #         }]
    #       }],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       sso_tag_keys: ["String"]
    #     }
    #   }
    # @return [Types::CreateRedshiftIdcApplicationResult]
    def create_redshift_idc_application(params = {}, options = {})
      request = build_request(:create_redshift_idc_application, params)
      request.send_request(options)
    end

    # <p>Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action.
    #             For example, you can create a schedule of when to run the <code>ResizeCluster</code> API operation. 
    #         </p>
    # @param [Hash, Types::CreateScheduledActionMessage] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action. The name must be unique within an account. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [Types::ScheduledActionType] :target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [String] :schedule
    #   <p>The schedule in <code>at( )</code> or <code>cron( )</code> format. 
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    # @option params [String] :iam_role
    #   <p>The IAM role to assume to run the target action. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [String] :scheduled_action_description
    #   <p>The description of the scheduled action. 
    #               </p>
    # @option params [Time] :start_time
    #   <p>The start time in UTC of the scheduled action. 
    #               Before this time, the scheduled action does not trigger.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    # @option params [Time] :end_time
    #   <p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [Boolean] :enable
    #   <p>If true, the schedule is enabled. If false, the scheduled action does not trigger. 
    #               For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "String", # required
    #     target_action: { # required
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: "String",
    #         target_reserved_node_offering_id: "String"
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     schedule: "String", # required
    #     iam_role: "String", # required
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false
    #   }
    #   options = {}
    #   response = client.create_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action_name: "String",
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: "String",
    #         target_reserved_node_offering_id: "String"
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     schedule: "String",
    #     iam_role: "String",
    #     scheduled_action_description: "String",
    #     state: "ACTIVE" # One of: ["ACTIVE", "DISABLED"],
    #     next_invocations: [Time.now],
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::CreateScheduledActionOutput]
    def create_scheduled_action(params = {}, options = {})
      request = build_request(:create_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot copy grant that permits Amazon Redshift to use an encrypted symmetric key
    #             from Key Management Service (KMS) to encrypt copied snapshots in a
    #             destination region.</p>
    #          <p>
    # For more information about managing snapshot copy grants, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    # @param [Hash, Types::CreateSnapshotCopyGrantMessage] params
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant. This name must be unique in the region for the
    #               Amazon Web Services account.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    # @option params [String] :kms_key_id
    #   <p>The unique identifier of the encrypted symmetric key to which to grant Amazon Redshift
    #               permission. If no key is specified, the default key is used.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_copy_grant_name: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot_copy_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_copy_grant: {
    #       snapshot_copy_grant_name: "String",
    #       kms_key_id: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateSnapshotCopyGrantResult]
    def create_snapshot_copy_grant(params = {}, options = {})
      request = build_request(:create_snapshot_copy_grant, params)
      request.send_request(options)
    end

    # <p>Create a snapshot schedule that can be associated to a cluster and which overrides the default system backup schedule. </p>
    # @param [Hash, Types::CreateSnapshotScheduleMessage] params
    # @option params [Array<String>] :schedule_definitions
    #   <p>The definition of the snapshot schedule. The definition is made up of schedule
    #               expressions, for example "cron(30 12 *)" or "rate(12 hours)". </p>
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed
    #               for the identifier.</p>
    # @option params [String] :schedule_description
    #   <p>The description of the snapshot schedule.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional set of tags you can use to search for the schedule.</p>
    # @option params [Boolean] :dry_run
    #   <p></p>
    # @option params [Integer] :next_invocations
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schedule_definitions: ["String"],
    #     schedule_identifier: "String",
    #     schedule_description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     dry_run: false,
    #     next_invocations: 1
    #   }
    #   options = {}
    #   response = client.create_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedule_definitions: ["String"],
    #     schedule_identifier: "String",
    #     schedule_description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_invocations: [Time.now],
    #     associated_cluster_count: 1,
    #     associated_clusters: [
    #       {
    #         cluster_identifier: "String",
    #         schedule_association_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateSnapshotScheduleOutput]
    def create_snapshot_schedule(params = {}, options = {})
      request = build_request(:create_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Adds tags to a cluster.</p>
    #          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a
    #             resource, you will receive an error and the attempt will fail.</p>
    #          <p>If you specify a key that already exists for the resource, the value for that key
    #             will be updated with the new value.</p>
    # @param [Hash, Types::CreateTagsMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more name/value pairs to add as tags to the specified resource. Each tag
    #               name is passed in with the parameter <code>Key</code> and the corresponding value is
    #               passed in with the parameter <code>Value</code>. The <code>Key</code> and
    #                   <code>Value</code> parameters are separated by a comma (,). Separate multiple tags
    #               with a space. For example, <code>--tags "Key"="owner","Value"="admin"
    #                   "Key"="environment","Value"="test" "Key"="version","Value"="1.0"</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_tags(params = {}, options = {})
      request = build_request(:create_tags, params)
      request.send_request(options)
    end

    # <p>Creates a usage limit for a specified Amazon Redshift feature on a cluster.
    #             The usage limit is identified by the returned usage limit identifier.</p>
    # @param [Hash, Types::CreateUsageLimitMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster that you want to limit usage.</p>
    # @option params [String] :feature_type
    #   <p>The Amazon Redshift feature that you want to limit.</p>
    # @option params [String] :limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.
    #               If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #               If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>.
    #               If <code>FeatureType</code> is <code>cross-region-datasharing</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #              </p>
    # @option params [Integer] :amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
    #               The value must be a positive number.
    #               </p>
    # @option params [String] :period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. 
    #               </p>
    # @option params [String] :breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. The default is log. 
    #               For more information about this parameter, see <a>UsageLimit</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     feature_type: "spectrum" # One of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"], # required
    #     limit_type: "time" # One of: ["time", "data-scanned"], # required
    #     amount: 1, # required
    #     period: "daily" # One of: ["daily", "weekly", "monthly"],
    #     breach_action: "log" # One of: ["log", "emit-metric", "disable"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit_id: "String",
    #     cluster_identifier: "String",
    #     feature_type: "spectrum" # One of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"],
    #     limit_type: "time" # One of: ["time", "data-scanned"],
    #     amount: 1,
    #     period: "daily" # One of: ["daily", "weekly", "monthly"],
    #     breach_action: "log" # One of: ["log", "emit-metric", "disable"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreateUsageLimitOutput]
    def create_usage_limit(params = {}, options = {})
      request = build_request(:create_usage_limit, params)
      request.send_request(options)
    end

    # <p>From a datashare producer account, removes authorization from the specified datashare. </p>
    # @param [Hash, Types::DeauthorizeDataShareMessage] params
    # @option params [String] :data_share_arn
    #   <p>The namespace Amazon Resource Name (ARN) of the datashare to remove authorization from.</p>
    # @option params [String] :consumer_identifier
    #   <p>The identifier of the data consumer that is to have authorization removed from the datashare. 
    #               This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String", # required
    #     consumer_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.deauthorize_data_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_share_arn: "String",
    #     producer_arn: "String",
    #     allow_publicly_accessible_consumers: false,
    #     data_share_associations: [
    #       {
    #         consumer_identifier: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #         consumer_region: "String",
    #         created_date: Time.now,
    #         status_change_date: Time.now,
    #         producer_allowed_writes: false,
    #         consumer_accepted_writes: false
    #       }
    #     ],
    #     managed_by: "String",
    #     data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #   }
    # @return [Types::DeauthorizeDataShareOutput]
    def deauthorize_data_share(params = {}, options = {})
      request = build_request(:deauthorize_data_share, params)
      request.send_request(options)
    end

    # <p>Deletes an authentication profile.</p>
    # @param [Hash, Types::DeleteAuthenticationProfileMessage] params
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_name: "AuthenticationProfileNameString", # required
    #   }
    #   options = {}
    #   response = client.delete_authentication_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profile_name: "AuthenticationProfileNameString"
    #   }
    # @return [Types::DeleteAuthenticationProfileResult]
    def delete_authentication_profile(params = {}, options = {})
      request = build_request(:delete_authentication_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web
    #             service indicates that the request was received correctly. Use <a>DescribeClusters</a> to monitor the status of the deletion. The delete
    #             operation cannot be canceled or reverted once submitted. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>If you want to shut down the cluster and retain it for future use, set
    #                 <i>SkipFinalClusterSnapshot</i> to <code>false</code> and specify a
    #             name for <i>FinalClusterSnapshotIdentifier</i>. You can later restore this
    #             snapshot to resume using the cluster. If a final cluster snapshot is requested, the
    #             status of the cluster will be "final-snapshot" while the snapshot is being taken, then
    #             it's "deleting" once Amazon Redshift begins deleting the cluster. </p>
    #          <p>
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DeleteClusterMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be deleted.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain lowercase characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :skip_final_cluster_snapshot
    #   <p>Determines whether a final snapshot of the cluster is created before Amazon Redshift
    #               deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If
    #                   <code>false</code>, a final cluster snapshot is created before the cluster is
    #               deleted. </p>
    #            <note>
    #               <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be
    #                   specified if <i>SkipFinalClusterSnapshot</i> is
    #                   <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :final_cluster_snapshot_identifier
    #   <p>The identifier of the final snapshot that is to be created immediately before
    #               deleting the cluster. If this parameter is provided,
    #                   <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :final_cluster_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #            <p>The default value is -1.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     skip_final_cluster_snapshot: false,
    #     final_cluster_snapshot_identifier: "String",
    #     final_cluster_snapshot_retention_period: 1
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteClusterResult]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a specified Amazon Redshift parameter group.</p>
    #          <note>
    #             <p>You cannot delete a parameter group if it is associated with a
    #                 cluster.</p>
    #          </note>
    # @param [Hash, Types::DeleteClusterParameterGroupMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to be deleted.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot delete a default cluster parameter group.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cluster_parameter_group(params = {}, options = {})
      request = build_request(:delete_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Redshift security group.</p>
    #          <note>
    #             <p>You cannot delete a security group that is associated with any clusters. You
    #                 cannot delete the default security group.</p>
    #          </note>
    #          <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the 
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DeleteClusterSecurityGroupMessage] params
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the cluster security group to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_security_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster_security_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cluster_security_group(params = {}, options = {})
      request = build_request(:delete_cluster_security_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified manual snapshot. The snapshot must be in the
    #                 <code>available</code> state, with no other users authorized to access the snapshot. </p>
    #          <p>Unlike automated snapshots, manual snapshots are retained even after you delete
    #             your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual
    #             snapshot explicitly to avoid getting charged. If other accounts are authorized to access
    #             the snapshot, you must revoke all of the authorizations before you can delete the
    #             snapshot.</p>
    # @param [Hash, Types::DeleteClusterSnapshotInput] params
    # @option params [String] :snapshot_identifier
    #   <p>The unique identifier of the manual snapshot to be deleted.</p>
    #            <p>Constraints: Must be the name of an existing snapshot that is in the
    #                   <code>available</code>, <code>failed</code>, or <code>cancelled</code>
    #               state.</p>
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The unique identifier of the cluster the snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #            <p>Constraints: Must be the name of valid cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "String", # required
    #     snapshot_cluster_identifier: "String"
    #   }
    #   options = {}
    #   response = client.delete_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::DeleteClusterSnapshotResult]
    def delete_cluster_snapshot(params = {}, options = {})
      request = build_request(:delete_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes the specified cluster subnet group.</p>
    # @param [Hash, Types::DeleteClusterSubnetGroupMessage] params
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the cluster subnet group name to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_subnet_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cluster_subnet_group(params = {}, options = {})
      request = build_request(:delete_cluster_subnet_group, params)
      request.send_request(options)
    end

    # <p>Contains information about deleting a custom domain association for a cluster.</p>
    # @param [Hash, Types::DeleteCustomDomainAssociationMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to delete a custom domain association for.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for the custom domain association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     custom_domain_name: "CustomDomainNameString", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_custom_domain_association(params = {}, options = {})
      request = build_request(:delete_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Deletes a Redshift-managed VPC endpoint.</p>
    # @param [Hash, Types::DeleteEndpointAccessMessage] params
    # @option params [String] :endpoint_name
    #   <p>The Redshift-managed VPC endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "String",
    #     resource_owner: "String",
    #     subnet_group_name: "String",
    #     endpoint_status: "String",
    #     endpoint_name: "String",
    #     endpoint_create_time: Time.now,
    #     port: 1,
    #     address: "String",
    #     vpc_security_groups: [
    #       {
    #         vpc_security_group_id: "String",
    #         status: "String"
    #       }
    #     ],
    #     vpc_endpoint: {
    #       vpc_endpoint_id: "String",
    #       vpc_id: "String",
    #       network_interfaces: [
    #         {
    #           network_interface_id: "String",
    #           subnet_id: "String",
    #           private_ip_address: "String",
    #           availability_zone: "String",
    #           ipv6_address: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteEndpointAccessOutput]
    def delete_endpoint_access(params = {}, options = {})
      request = build_request(:delete_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Redshift event notification subscription.</p>
    # @param [Hash, Types::DeleteEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_event_subscription(params = {}, options = {})
      request = build_request(:delete_event_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes the specified HSM client certificate.</p>
    # @param [Hash, Types::DeleteHsmClientCertificateMessage] params
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier of the HSM client certificate to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_client_certificate_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_hsm_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_hsm_client_certificate(params = {}, options = {})
      request = build_request(:delete_hsm_client_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Amazon Redshift HSM configuration.</p>
    # @param [Hash, Types::DeleteHsmConfigurationMessage] params
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_configuration_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_hsm_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_hsm_configuration(params = {}, options = {})
      request = build_request(:delete_hsm_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a zero-ETL integration or S3 event integration with Amazon Redshift.</p>
    # @param [Hash, Types::DeleteIntegrationMessage] params
    # @option params [String] :integration_arn
    #   <p>The unique identifier of the integration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "IntegrationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "IntegrationArn",
    #     integration_name: "IntegrationName",
    #     source_arn: "SourceArn",
    #     target_arn: "TargetArn",
    #     status: "creating" # One of: ["creating", "active", "modifying", "failed", "deleting", "syncing", "needs_attention"],
    #     errors: [
    #       {
    #         error_code: "String", # required
    #         error_message: "String"
    #       }
    #     ],
    #     create_time: Time.now,
    #     description: "Description",
    #     kms_key_id: "String",
    #     additional_encryption_context: {
    #       "String" => "String"
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteIntegrationOutput]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # <p>Deletes a partner integration from a cluster. Data can still flow to the cluster until the integration is deleted at the partner's website.</p>
    # @param [Hash, Types::DeletePartnerInput] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    # @option params [String] :database_name
    #   <p>The name of the database that receives data from the partner.</p>
    # @option params [String] :partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "PartnerIntegrationAccountId", # required
    #     cluster_identifier: "PartnerIntegrationClusterIdentifier", # required
    #     database_name: "PartnerIntegrationDatabaseName", # required
    #     partner_name: "PartnerIntegrationPartnerName", # required
    #   }
    #   options = {}
    #   response = client.delete_partner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "PartnerIntegrationDatabaseName",
    #     partner_name: "PartnerIntegrationPartnerName"
    #   }
    # @return [Types::DeletePartnerOutput]
    def delete_partner(params = {}, options = {})
      request = build_request(:delete_partner, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Redshift IAM Identity Center application.</p>
    # @param [Hash, Types::DeleteRedshiftIdcApplicationMessage] params
    # @option params [String] :redshift_idc_application_arn
    #   <p>The ARN for a deleted Amazon Redshift IAM Identity Center application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     redshift_idc_application_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_redshift_idc_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_redshift_idc_application(params = {}, options = {})
      request = build_request(:delete_redshift_idc_application, params)
      request.send_request(options)
    end

    # <p>Deletes the resource policy for a specified resource.</p>
    # @param [Hash, Types::DeleteResourcePolicyMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource of which its resource policy is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a scheduled action. 
    #              </p>
    # @param [Hash, Types::DeleteScheduledActionMessage] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scheduled_action(params = {}, options = {})
      request = build_request(:delete_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Deletes the specified snapshot copy grant.</p>
    # @param [Hash, Types::DeleteSnapshotCopyGrantMessage] params
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_copy_grant_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot_copy_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_snapshot_copy_grant(params = {}, options = {})
      request = build_request(:delete_snapshot_copy_grant, params)
      request.send_request(options)
    end

    # <p>Deletes a snapshot schedule.</p>
    # @param [Hash, Types::DeleteSnapshotScheduleMessage] params
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier of the snapshot schedule to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schedule_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_snapshot_schedule(params = {}, options = {})
      request = build_request(:delete_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Deletes tags from a resource. You must provide the ARN of the resource
    #             from which you want to delete the tag or tags.</p>
    # @param [Hash, Types::DeleteTagsMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.delete_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_tags(params = {}, options = {})
      request = build_request(:delete_tags, params)
      request.send_request(options)
    end

    # <p>Deletes a usage limit from a cluster.</p>
    # @param [Hash, Types::DeleteUsageLimitMessage] params
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_usage_limit(params = {}, options = {})
      request = build_request(:delete_usage_limit, params)
      request.send_request(options)
    end

    # <p>Deregisters a cluster or serverless namespace from the Amazon Web Services Glue Data Catalog.</p>
    # @param [Hash, Types::DeregisterNamespaceInputMessage] params
    # @option params [Types::NamespaceIdentifierUnion] :namespace_identifier
    #   <p>The unique identifier of the cluster or 
    #               serverless namespace that you want to deregister.</p>
    # @option params [Array<String>] :consumer_identifiers
    #   <p>An array containing the ID of the consumer account 
    #               that you want to deregister the cluster or serverless namespace from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_identifier: { # required
    #       # One of:
    #       serverless_identifier: {
    #         namespace_identifier: "String", # required
    #         workgroup_identifier: "String", # required
    #       },
    #       provisioned_identifier: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     consumer_identifiers: ["String"], # required
    #   }
    #   options = {}
    #   response = client.deregister_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Registering" # One of: ["Registering", "Deregistering"]
    #   }
    # @return [Types::DeregisterNamespaceOutputMessage]
    def deregister_namespace(params = {}, options = {})
      request = build_request(:deregister_namespace, params)
      request.send_request(options)
    end

    # <p>Returns a list of attributes attached to an account</p>
    # @param [Hash, Types::DescribeAccountAttributesMessage] params
    # @option params [Array<String>] :attribute_names
    #   <p>A list of attribute names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_names: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_attributes: [
    #       {
    #         attribute_name: "String",
    #         attribute_values: [
    #           {
    #             attribute_value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAccountAttributesOutput]
    def describe_account_attributes(params = {}, options = {})
      request = build_request(:describe_account_attributes, params)
      request.send_request(options)
    end

    # <p>Describes an authentication profile.</p>
    # @param [Hash, Types::DescribeAuthenticationProfilesMessage] params
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to describe. If not specified then all authentication profiles owned by the account are listed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_name: "AuthenticationProfileNameString"
    #   }
    #   options = {}
    #   response = client.describe_authentication_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profiles: [
    #       {
    #         authentication_profile_name: "AuthenticationProfileNameString",
    #         authentication_profile_content: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAuthenticationProfilesResult]
    def describe_authentication_profiles(params = {}, options = {})
      request = build_request(:describe_authentication_profiles, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>ClusterDbRevision</code> objects.</p>
    # @param [Hash, Types::DescribeClusterDbRevisionsMessage] params
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are
    #               requesting. This parameter is case sensitive. All clusters defined for an account are
    #               returned by default.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified MaxRecords value, a value is returned
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point for returning a set of
    #               response records. When the results of a <code>DescribeClusterDbRevisions</code> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #            <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or
    #               the <code>marker</code> parameter, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cluster_db_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cluster_db_revisions: [
    #       {
    #         cluster_identifier: "String",
    #         current_database_revision: "String",
    #         database_revision_release_date: Time.now,
    #         revision_targets: [
    #           {
    #             database_revision: "String",
    #             description: "String",
    #             database_revision_release_date: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ClusterDbRevisionsMessage]
    def describe_cluster_db_revisions(params = {}, options = {})
      request = build_request(:describe_cluster_db_revisions, params)
      request.send_request(options)
    end

    # <p>Returns a list of Amazon Redshift parameter groups, including parameter groups you
    #             created and the default parameter group. For each parameter group, the response includes
    #             the parameter group name, description, and parameter group family name. You can
    #             optionally specify a name to retrieve the description of a specific parameter
    #             group.</p>
    #          <p>
    # For more information about parameters and parameter groups, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all parameter groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all parameter groups that
    #             have any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, parameter groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeClusterParameterGroupsMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of a specific parameter group for which to return details. By default,
    #               details about all parameter groups and the default parameter group are
    #               returned.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameterGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster parameter
    #               groups that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the parameter groups that have either or both of these
    #               tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster parameter
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the parameter groups that have either or both of these tag
    #               values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_cluster_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     parameter_groups: [
    #       {
    #         parameter_group_name: "String",
    #         parameter_group_family: "String",
    #         description: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ClusterParameterGroupsMessage]
    def describe_cluster_parameter_groups(params = {}, options = {})
      request = build_request(:describe_cluster_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns a detailed list of parameters contained within the specified Amazon Redshift
    #             parameter group. For each parameter the response includes information such as parameter
    #             name, description, data type, value, whether the parameter value is modifiable, and so
    #             on.</p>
    #          <p>You can specify <i>source</i> filter to retrieve parameters of only
    #             specific type. For example, to retrieve parameters that were modified by a user action
    #             such as from <a>ModifyClusterParameterGroup</a>, you can specify
    #                 <i>source</i> equal to <i>user</i>.</p>
    #          <p>
    # For more information about parameters and parameter groups, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DescribeClusterParametersMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of a cluster parameter group for which to return details.</p>
    # @option params [String] :source
    #   <p>The parameter types to return. Specify <code>user</code> to show parameters that
    #               are different form the default. Similarly, specify <code>engine-default</code> to show
    #               parameters that are the same as the default parameter group. </p>
    #            <p>Default: All parameter types returned.</p>
    #            <p>Valid Values: <code>user</code> | <code>engine-default</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameters</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     source: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cluster_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static" # One of: ["static", "dynamic"],
    #         is_modifiable: false,
    #         minimum_engine_version: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeClusterParametersOutput]
    def describe_cluster_parameters(params = {}, options = {})
      request = build_request(:describe_cluster_parameters, params)
      request.send_request(options)
    end

    # <p>Returns information about Amazon Redshift security groups. If the name of a security
    #             group is specified, the response will contain only information about only that security
    #             group.</p>
    #          <p>
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the 
    # <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all security groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all security groups that
    #             have any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, security groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeClusterSecurityGroupsMessage] params
    # @option params [String] :cluster_security_group_name
    #   <p>The name of a cluster security group for which you are requesting details. You must
    #               specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p>
    #            <p> Example: <code>securitygroup1</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSecurityGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #            <p>Constraints: You must specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster security groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               security groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the security groups that have either or both of these
    #               tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster security
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have security groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the security groups that have either or both of these tag values
    #               associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_security_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_cluster_security_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cluster_security_groups: [
    #       {
    #         cluster_security_group_name: "String",
    #         description: "String",
    #         ec2_security_groups: [
    #           {
    #             status: "String",
    #             ec2_security_group_name: "String",
    #             ec2_security_group_owner_id: "String",
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         ip_ranges: [
    #           {
    #             status: "String",
    #             cidrip: "String",
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ClusterSecurityGroupMessage]
    def describe_cluster_security_groups(params = {}, options = {})
      request = build_request(:describe_cluster_security_groups, params)
      request.send_request(options)
    end

    # <p>Returns one or more snapshot objects, which contain metadata about your cluster
    #             snapshots. By default, this operation returns information about all snapshots of all
    #             clusters that are owned by your Amazon Web Services account. No information is returned for
    #             snapshots owned by inactive Amazon Web Services accounts.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all snapshots that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all snapshots that have any
    #             combination of those values are returned. Only snapshots that you own are returned in
    #             the response; shared snapshots are not returned with the tag key and tag value request
    #             parameters.</p>
    #          <p>If both tag keys and values are omitted from the request, snapshots are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    # @param [Hash, Types::DescribeClusterSnapshotsMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster which generated the requested snapshots.</p>
    # @option params [String] :snapshot_identifier
    #   <p>The snapshot identifier of the snapshot about which to return
    #               information.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot associated with the message to describe cluster snapshots.</p>
    # @option params [String] :snapshot_type
    #   <p>The type of snapshots for which you are requesting information. By default,
    #               snapshots of all types are returned.</p>
    #            <p>Valid Values: <code>automated</code> | <code>manual</code>
    #            </p>
    # @option params [Time] :start_time
    #   <p>A value that requests only snapshots created at or after the specified time. The
    #               time value is specified in ISO 8601 format. For more information about ISO 8601, go to
    #               the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: <code>2012-07-16T18:00:00Z</code>
    #            </p>
    # @option params [Time] :end_time
    #   <p>A time value that requests only snapshots created at or before the specified time.
    #               The time value is specified in ISO 8601 format. For more information about ISO 8601, go
    #               to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
    #                   page.</a>
    #            </p>
    #            <p>Example: <code>2012-07-16T18:00:00Z</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSnapshots</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Use this field to
    #               filter the results to snapshots owned by a particular account. To describe snapshots you
    #               own, either specify your Amazon Web Services account, or do not specify the
    #               parameter.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster snapshots that
    #               are associated with the specified key or keys. For example, suppose that you have
    #               snapshots that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the snapshots that have either or both of these tag
    #               keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster snapshots
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have snapshots that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the snapshots that have either or both of these tag values
    #               associated with them.</p>
    # @option params [Boolean] :cluster_exists
    #   <p>A value that indicates whether to return snapshots only for an existing cluster.
    #               You can perform table-level restore only by using a snapshot of an existing cluster,
    #               that is, a cluster that has not been deleted. Values for this parameter work as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ClusterExists</code> is set to <code>true</code>,
    #                           <code>ClusterIdentifier</code> is required.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> isn't specified, all snapshots
    #                       associated with deleted clusters (orphaned snapshots) are returned. </p>
    #               </li>
    #               <li>
    #                  <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots
    #                       associated with that cluster are returned.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for an existing cluster, no
    #                       snapshots are returned. </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::SnapshotSortingEntity>] :sorting_entities
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     snapshot_identifier: "String",
    #     snapshot_arn: "String",
    #     snapshot_type: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     marker: "String",
    #     owner_account: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #     cluster_exists: false,
    #     sorting_entities: [
    #       {
    #         attribute: "SOURCE_TYPE" # One of: ["SOURCE_TYPE", "TOTAL_SIZE", "CREATE_TIME"], # required
    #         sort_order: "ASC" # One of: ["ASC", "DESC"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_cluster_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     snapshots: [
    #       {
    #         snapshot_identifier: "String",
    #         cluster_identifier: "String",
    #         snapshot_create_time: Time.now,
    #         status: "String",
    #         port: 1,
    #         availability_zone: "String",
    #         cluster_create_time: Time.now,
    #         master_username: "String",
    #         cluster_version: "String",
    #         engine_full_version: "String",
    #         snapshot_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         db_name: "String",
    #         vpc_id: "String",
    #         encrypted: false,
    #         kms_key_id: "String",
    #         encrypted_with_hsm: false,
    #         accounts_with_restore_access: [
    #           {
    #             account_id: "String",
    #             account_alias: "String"
    #           }
    #         ],
    #         owner_account: "String",
    #         total_backup_size_in_mega_bytes: 1.0,
    #         actual_incremental_backup_size_in_mega_bytes: 1.0,
    #         backup_progress_in_mega_bytes: 1.0,
    #         current_backup_rate_in_mega_bytes_per_second: 1.0,
    #         estimated_seconds_to_completion: 1,
    #         elapsed_time_in_seconds: 1,
    #         source_region: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ],
    #         restorable_node_types: ["String"],
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         manual_snapshot_retention_period: 1,
    #         manual_snapshot_remaining_days: 1,
    #         snapshot_retention_start_time: Time.now,
    #         master_password_secret_arn: "String",
    #         master_password_secret_kms_key_id: "String",
    #         snapshot_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::SnapshotMessage]
    def describe_cluster_snapshots(params = {}, options = {})
      request = build_request(:describe_cluster_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns one or more cluster subnet group objects, which contain metadata about your
    #             cluster subnet groups. By default, this operation returns information about all cluster
    #             subnet groups that are defined in your Amazon Web Services account.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all subnet groups that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all subnet groups that have
    #             any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, subnet groups are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeClusterSubnetGroupsMessage] params
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the cluster subnet group for which information is requested.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSubnetGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster subnet groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               subnet groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subnet groups that have either or both of these
    #               tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching cluster subnet
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have subnet groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the subnet groups that have either or both of these tag values
    #               associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_subnet_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_cluster_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cluster_subnet_groups: [
    #       {
    #         cluster_subnet_group_name: "String",
    #         description: "String",
    #         vpc_id: "String",
    #         subnet_group_status: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: {
    #               name: "String",
    #               supported_platforms: [
    #                 {
    #                   name: "String"
    #                 }
    #               ]
    #             },
    #             subnet_status: "String"
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ],
    #         supported_cluster_ip_address_types: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::ClusterSubnetGroupMessage]
    def describe_cluster_subnet_groups(params = {}, options = {})
      request = build_request(:describe_cluster_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the available maintenance tracks.</p>
    # @param [Hash, Types::DescribeClusterTracksMessage] params
    # @option params [String] :maintenance_track_name
    #   <p>The name of the maintenance track. </p>
    # @option params [Integer] :max_records
    #   <p>An integer value for the maximum number of maintenance tracks to return.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeClusterTracks</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     maintenance_track_name: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cluster_tracks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     maintenance_tracks: [
    #       {
    #         maintenance_track_name: "String",
    #         database_version: "String",
    #         update_targets: [
    #           {
    #             maintenance_track_name: "String",
    #             database_version: "String",
    #             supported_operations: [
    #               {
    #                 operation_name: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::TrackListMessage]
    def describe_cluster_tracks(params = {}, options = {})
      request = build_request(:describe_cluster_tracks, params)
      request.send_request(options)
    end

    # <p>Returns descriptions of the available Amazon Redshift cluster versions. You can call this
    #             operation even before creating any clusters to learn more about the Amazon Redshift versions.
    #             
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DescribeClusterVersionsMessage] params
    # @option params [String] :cluster_version
    #   <p>The specific cluster version to return.</p>
    #            <p>Example: <code>1.0</code>
    #            </p>
    # @option params [String] :cluster_parameter_group_family
    #   <p>The name of a specific cluster parameter group family to return details
    #               for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterVersions</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_version: "String",
    #     cluster_parameter_group_family: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_cluster_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     cluster_versions: [
    #       {
    #         cluster_version: "String",
    #         cluster_parameter_group_family: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ClusterVersionsMessage]
    def describe_cluster_versions(params = {}, options = {})
      request = build_request(:describe_cluster_versions, params)
      request.send_request(options)
    end

    # <p>Returns properties of provisioned clusters including general cluster properties,
    #             cluster database properties, maintenance and backup properties, and security and access
    #             properties. This operation supports pagination. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all clusters that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all clusters that have any
    #             combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, clusters are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    # @param [Hash, Types::DescribeClustersMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose properties you are requesting. This
    #               parameter is case sensitive.</p>
    #            <p>The default is that all clusters defined for an account are returned.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusters</a> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #            <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching clusters that are
    #               associated with the specified key or keys. For example, suppose that you have clusters
    #               that are tagged with keys called <code>owner</code> and <code>environment</code>. If you
    #               specify both of these tag keys in the request, Amazon Redshift returns a response with the
    #               clusters that have either or both of these tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching clusters that are
    #               associated with the specified tag value or values. For example, suppose that you have
    #               clusters that are tagged with values called <code>admin</code> and <code>test</code>. If
    #               you specify both of these tag values in the request, Amazon Redshift returns a response with
    #               the clusters that have either or both of these tag values associated with
    #               them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     clusters: [
    #       {
    #         cluster_identifier: "String",
    #         node_type: "String",
    #         cluster_status: "String",
    #         cluster_availability_status: "String",
    #         modify_status: "String",
    #         master_username: "String",
    #         db_name: "String",
    #         endpoint: {
    #           address: "String",
    #           port: 1,
    #           vpc_endpoints: [
    #             {
    #               vpc_endpoint_id: "String",
    #               vpc_id: "String",
    #               network_interfaces: [
    #                 {
    #                   network_interface_id: "String",
    #                   subnet_id: "String",
    #                   private_ip_address: "String",
    #                   availability_zone: "String",
    #                   ipv6_address: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         cluster_create_time: Time.now,
    #         automated_snapshot_retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         cluster_security_groups: [
    #           {
    #             cluster_security_group_name: "String",
    #             status: "String"
    #           }
    #         ],
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         cluster_parameter_groups: [
    #           {
    #             parameter_group_name: "String",
    #             parameter_apply_status: "String",
    #             cluster_parameter_status_list: [
    #               {
    #                 parameter_name: "String",
    #                 parameter_apply_status: "String",
    #                 parameter_apply_error_description: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         cluster_subnet_group_name: "String",
    #         vpc_id: "String",
    #         availability_zone: "String",
    #         preferred_maintenance_window: "String",
    #         pending_modified_values: {
    #           master_user_password: "SensitiveString",
    #           node_type: "String",
    #           number_of_nodes: 1,
    #           cluster_type: "String",
    #           cluster_version: "String",
    #           automated_snapshot_retention_period: 1,
    #           cluster_identifier: "String",
    #           publicly_accessible: false,
    #           enhanced_vpc_routing: false,
    #           maintenance_track_name: "String",
    #           encryption_type: "String"
    #         },
    #         cluster_version: "String",
    #         allow_version_upgrade: false,
    #         number_of_nodes: 1,
    #         publicly_accessible: false,
    #         encrypted: false,
    #         restore_status: {
    #           status: "String",
    #           current_restore_rate_in_mega_bytes_per_second: 1.0,
    #           snapshot_size_in_mega_bytes: 1,
    #           progress_in_mega_bytes: 1,
    #           elapsed_time_in_seconds: 1,
    #           estimated_time_to_completion_in_seconds: 1
    #         },
    #         data_transfer_progress: {
    #           status: "String",
    #           current_rate_in_mega_bytes_per_second: 1.0,
    #           total_data_in_mega_bytes: 1,
    #           data_transferred_in_mega_bytes: 1,
    #           estimated_time_to_completion_in_seconds: 1,
    #           elapsed_time_in_seconds: 1
    #         },
    #         hsm_status: {
    #           hsm_client_certificate_identifier: "String",
    #           hsm_configuration_identifier: "String",
    #           status: "String"
    #         },
    #         cluster_snapshot_copy_status: {
    #           destination_region: "String",
    #           retention_period: 1,
    #           manual_snapshot_retention_period: 1,
    #           snapshot_copy_grant_name: "String"
    #         },
    #         cluster_public_key: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ],
    #         elastic_ip_status: {
    #           elastic_ip: "String",
    #           status: "String"
    #         },
    #         cluster_revision_number: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ],
    #         kms_key_id: "String",
    #         enhanced_vpc_routing: false,
    #         iam_roles: [
    #           {
    #             iam_role_arn: "String",
    #             apply_status: "String"
    #           }
    #         ],
    #         pending_actions: ["String"],
    #         maintenance_track_name: "String",
    #         elastic_resize_number_of_node_options: "String",
    #         deferred_maintenance_windows: [
    #           {
    #             defer_maintenance_identifier: "String",
    #             defer_maintenance_start_time: Time.now,
    #             defer_maintenance_end_time: Time.now
    #           }
    #         ],
    #         snapshot_schedule_identifier: "String",
    #         snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #         expected_next_snapshot_schedule_time: Time.now,
    #         expected_next_snapshot_schedule_time_status: "String",
    #         next_maintenance_window_start_time: Time.now,
    #         resize_info: {
    #           resize_type: "String",
    #           allow_cancel_resize: false
    #         },
    #         availability_zone_relocation_status: "String",
    #         cluster_namespace_arn: "String",
    #         total_storage_capacity_in_mega_bytes: 1,
    #         aqua_configuration: {
    #           aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #           aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #         },
    #         default_iam_role_arn: "String",
    #         reserved_node_exchange_status: {
    #           reserved_node_exchange_request_id: "String",
    #           status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #           request_time: Time.now,
    #           source_reserved_node_id: "String",
    #           source_reserved_node_type: "String",
    #           source_reserved_node_count: 1,
    #           target_reserved_node_offering_id: "String",
    #           target_reserved_node_type: "String",
    #           target_reserved_node_count: 1
    #         },
    #         custom_domain_name: "String",
    #         custom_domain_certificate_arn: "String",
    #         custom_domain_certificate_expiry_date: Time.now,
    #         master_password_secret_arn: "String",
    #         master_password_secret_kms_key_id: "String",
    #         ip_address_type: "String",
    #         multi_az: "String",
    #         multi_az_secondary: {
    #           availability_zone: "String",
    #           cluster_nodes: [
    #             {
    #               node_role: "String",
    #               private_ip_address: "String",
    #               public_ip_address: "String"
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ClustersMessage]
    def describe_clusters(params = {}, options = {})
      request = build_request(:describe_clusters, params)
      request.send_request(options)
    end

    # <p>Contains information about custom domain associations for a cluster.</p>
    # @param [Hash, Types::DescribeCustomDomainAssociationsMessage] params
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for the custom domain association.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The certificate Amazon Resource Name (ARN) for the custom domain association.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum records setting for the associated custom domain.</p>
    # @option params [String] :marker
    #   <p>The marker for the custom domain association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_domain_name: "CustomDomainNameString",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_custom_domain_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     associations: [
    #       {
    #         custom_domain_certificate_arn: "String",
    #         custom_domain_certificate_expiry_date: Time.now,
    #         certificate_associations: [
    #           {
    #             custom_domain_name: "String",
    #             cluster_identifier: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::CustomDomainAssociationsMessage]
    def describe_custom_domain_associations(params = {}, options = {})
      request = build_request(:describe_custom_domain_associations, params)
      request.send_request(options)
    end

    # <p>Shows the status of any inbound or outbound datashares available in the specified
    #             account.</p>
    # @param [Hash, Types::DescribeDataSharesMessage] params
    # @option params [String] :data_share_arn
    #   <p>The Amazon resource name (ARN) of the datashare to describe details of.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_data_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_shares: [
    #       {
    #         data_share_arn: "String",
    #         producer_arn: "String",
    #         allow_publicly_accessible_consumers: false,
    #         data_share_associations: [
    #           {
    #             consumer_identifier: "String",
    #             status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #             consumer_region: "String",
    #             created_date: Time.now,
    #             status_change_date: Time.now,
    #             producer_allowed_writes: false,
    #             consumer_accepted_writes: false
    #           }
    #         ],
    #         managed_by: "String",
    #         data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeDataSharesResult]
    def describe_data_shares(params = {}, options = {})
      request = build_request(:describe_data_shares, params)
      request.send_request(options)
    end

    # <p>Returns a list of datashares where the account identifier being called is a consumer account identifier.</p>
    # @param [Hash, Types::DescribeDataSharesForConsumerMessage] params
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer namespace that returns in the list of datashares.</p>
    # @option params [String] :status
    #   <p>An identifier giving the status of a datashare in the consumer cluster. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForConsumer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consumer_arn: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "AVAILABLE"],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_data_shares_for_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_shares: [
    #       {
    #         data_share_arn: "String",
    #         producer_arn: "String",
    #         allow_publicly_accessible_consumers: false,
    #         data_share_associations: [
    #           {
    #             consumer_identifier: "String",
    #             status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #             consumer_region: "String",
    #             created_date: Time.now,
    #             status_change_date: Time.now,
    #             producer_allowed_writes: false,
    #             consumer_accepted_writes: false
    #           }
    #         ],
    #         managed_by: "String",
    #         data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeDataSharesForConsumerResult]
    def describe_data_shares_for_consumer(params = {}, options = {})
      request = build_request(:describe_data_shares_for_consumer, params)
      request.send_request(options)
    end

    # <p>Returns a list of datashares when the account identifier being called is a producer account identifier.</p>
    # @param [Hash, Types::DescribeDataSharesForProducerMessage] params
    # @option params [String] :producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.</p>
    # @option params [String] :status
    #   <p>An identifier giving the status of a datashare in the producer. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForProducer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     producer_arn: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "AUTHORIZED", "PENDING_AUTHORIZATION", "DEAUTHORIZED", "REJECTED"],
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_data_shares_for_producer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_shares: [
    #       {
    #         data_share_arn: "String",
    #         producer_arn: "String",
    #         allow_publicly_accessible_consumers: false,
    #         data_share_associations: [
    #           {
    #             consumer_identifier: "String",
    #             status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #             consumer_region: "String",
    #             created_date: Time.now,
    #             status_change_date: Time.now,
    #             producer_allowed_writes: false,
    #             consumer_accepted_writes: false
    #           }
    #         ],
    #         managed_by: "String",
    #         data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeDataSharesForProducerResult]
    def describe_data_shares_for_producer(params = {}, options = {})
      request = build_request(:describe_data_shares_for_producer, params)
      request.send_request(options)
    end

    # <p>Returns a list of parameter settings for the specified parameter group
    #             family.</p>
    #          <p>
    # For more information about parameters and parameter groups, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DescribeDefaultClusterParametersMessage] params
    # @option params [String] :parameter_group_family
    #   <p>The name of the cluster parameter group family.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDefaultClusterParameters</a>
    #               request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in
    #               the <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_family: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_default_cluster_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_cluster_parameters: {
    #       parameter_group_family: "String",
    #       marker: "String",
    #       parameters: [
    #         {
    #           parameter_name: "String",
    #           parameter_value: "String",
    #           description: "String",
    #           source: "String",
    #           data_type: "String",
    #           allowed_values: "String",
    #           apply_type: "static" # One of: ["static", "dynamic"],
    #           is_modifiable: false,
    #           minimum_engine_version: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeDefaultClusterParametersResult]
    def describe_default_cluster_parameters(params = {}, options = {})
      request = build_request(:describe_default_cluster_parameters, params)
      request.send_request(options)
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    # @param [Hash, Types::DescribeEndpointAccessMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier associated with the described endpoint.</p>
    # @option params [String] :resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to be described.</p>
    # @option params [String] :vpc_id
    #   <p>The virtual private cloud (VPC) identifier with access to the cluster.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     resource_owner: "String",
    #     endpoint_name: "String",
    #     vpc_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_access_list: [
    #       {
    #         cluster_identifier: "String",
    #         resource_owner: "String",
    #         subnet_group_name: "String",
    #         endpoint_status: "String",
    #         endpoint_name: "String",
    #         endpoint_create_time: Time.now,
    #         port: 1,
    #         address: "String",
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         vpc_endpoint: {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           network_interfaces: [
    #             {
    #               network_interface_id: "String",
    #               subnet_id: "String",
    #               private_ip_address: "String",
    #               availability_zone: "String",
    #               ipv6_address: "String"
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeEndpointAccessOutput]
    def describe_endpoint_access(params = {}, options = {})
      request = build_request(:describe_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Describes an endpoint authorization.</p>
    # @param [Hash, Types::DescribeEndpointAuthorizationMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID of either the cluster owner (grantor) or grantee. 
    #          If <code>Grantee</code> parameter is true, then the <code>Account</code> value is of the grantor.</p>
    # @option params [Boolean] :grantee
    #   <p>Indicates whether to check authorization from a grantor or grantee point of view. 
    #              If true, Amazon Redshift returns endpoint authorizations that you've been granted.
    #              If false (default), checks authorization from a grantor point of view.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     account: "String",
    #     grantee: false,
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_endpoint_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_authorization_list: [
    #       {
    #         grantor: "String",
    #         grantee: "String",
    #         cluster_identifier: "String",
    #         authorize_time: Time.now,
    #         cluster_status: "String",
    #         status: "Authorized" # One of: ["Authorized", "Revoking"],
    #         allowed_all_vp_cs: false,
    #         allowed_vp_cs: ["String"],
    #         endpoint_count: 1
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeEndpointAuthorizationOutput]
    def describe_endpoint_authorization(params = {}, options = {})
      request = build_request(:describe_endpoint_authorization, params)
      request.send_request(options)
    end

    # <p>Displays a list of event categories for all event source types, or for a specified
    #             source type. For a list of the event categories and source types, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html">Amazon Redshift Event
    #                 Notifications</a>.</p>
    # @param [Hash, Types::DescribeEventCategoriesMessage] params
    # @option params [String] :source_type
    #   <p>The source type, such as cluster or parameter group, to which the described event
    #               categories apply.</p>
    #            <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "String"
    #   }
    #   options = {}
    #   response = client.describe_event_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_categories_map_list: [
    #       {
    #         source_type: "String",
    #         events: [
    #           {
    #             event_id: "String",
    #             event_categories: ["String"],
    #             event_description: "String",
    #             severity: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::EventCategoriesMessage]
    def describe_event_categories(params = {}, options = {})
      request = build_request(:describe_event_categories, params)
      request.send_request(options)
    end

    # <p>Lists descriptions of all the Amazon Redshift event notification subscriptions for a
    #             customer account. If you specify a subscription name, lists the description for that
    #             subscription.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all event notification subscriptions that match any combination of the specified keys
    #             and values. For example, if you have <code>owner</code> and <code>environment</code> for
    #             tag keys, and <code>admin</code> and <code>test</code> for tag values, all subscriptions
    #             that have any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, subscriptions are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeEventSubscriptionsMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be
    #               described.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a DescribeEventSubscriptions request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching event notification
    #               subscriptions that are associated with the specified key or keys. For example, suppose
    #               that you have subscriptions that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subscriptions that have either or both of these
    #               tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching event notification
    #               subscriptions that are associated with the specified tag value or values. For example,
    #               suppose that you have subscriptions that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the subscriptions that have either or
    #               both of these tag values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_event_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     event_subscriptions_list: [
    #       {
    #         customer_aws_id: "String",
    #         cust_subscription_id: "String",
    #         sns_topic_arn: "String",
    #         status: "String",
    #         subscription_creation_time: Time.now,
    #         source_type: "String",
    #         source_ids_list: ["String"],
    #         event_categories_list: ["String"],
    #         severity: "String",
    #         enabled: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::EventSubscriptionsMessage]
    def describe_event_subscriptions(params = {}, options = {})
      request = build_request(:describe_event_subscriptions, params)
      request.send_request(options)
    end

    # <p>Returns events related to clusters, security groups, snapshots, and parameter
    #             groups for the past 14 days. Events specific to a particular cluster, security group,
    #             snapshot or parameter group can be obtained by providing the name as a parameter. By
    #             default, the past hour of events are returned.</p>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :source_identifier
    #   <p>The identifier of the event source for which events will be returned. If this
    #               parameter is not specified, then all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <p>If <i>SourceIdentifier</i> is supplied,
    #                   <i>SourceType</i> must also be provided.</p>
    #            <ul>
    #               <li>
    #                  <p>Specify a cluster identifier when <i>SourceType</i> is
    #                           <code>cluster</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a cluster security group name when <i>SourceType</i>
    #                       is <code>cluster-security-group</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a cluster parameter group name when <i>SourceType</i>
    #                       is <code>cluster-parameter-group</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a cluster snapshot identifier when <i>SourceType</i>
    #                       is <code>cluster-snapshot</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #            <p>Constraints:</p>
    #            <p>If <i>SourceType</i> is supplied,
    #                   <i>SourceIdentifier</i> must also be provided.</p>
    #            <ul>
    #               <li>
    #                  <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is
    #                       a cluster identifier.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>cluster-security-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster security group
    #                       name.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>cluster-parameter-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster parameter group
    #                       name.</p>
    #               </li>
    #               <li>
    #                  <p>Specify <code>cluster-snapshot</code> when
    #                           <i>SourceIdentifier</i> is a cluster snapshot
    #                       identifier.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: <code>2009-07-08T18:00Z</code>
    #            </p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: <code>2009-07-08T18:00Z</code>
    #            </p>
    # @option params [Integer] :duration
    #   <p>The number of minutes prior to the time of the request for which to retrieve
    #               events. For example, if the request is sent at 18:00 and you specify a duration of 60,
    #               then only events which have occurred after 17:00 will be returned.</p>
    #            <p>Default: <code>60</code>
    #            </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeEvents</a> request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_identifier: "String",
    #     source_type: "cluster" # One of: ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     events: [
    #       {
    #         source_identifier: "String",
    #         source_type: "cluster" # One of: ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"],
    #         message: "String",
    #         event_categories: ["String"],
    #         severity: "String",
    #         date: Time.now,
    #         event_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::EventsMessage]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified HSM client certificate. If no certificate
    #             ID is specified, returns information about all the HSM certificates owned by your Amazon Web Services account.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all HSM client certificates that match any combination of the specified keys and values.
    #             For example, if you have <code>owner</code> and <code>environment</code> for tag keys,
    #             and <code>admin</code> and <code>test</code> for tag values, all HSM client certificates
    #             that have any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, HSM client certificates
    #             are returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeHsmClientCertificatesMessage] params
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>The identifier of a specific HSM client certificate for which you want information.
    #               If no identifier is specified, information is returned for all HSM client certificates
    #               owned by your Amazon Web Services account.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmClientCertificates</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM client certificates
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               HSM client certificates that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM client certificates that have either or both
    #               of these tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching HSM client
    #               certificates that are associated with the specified tag value or values. For example,
    #               suppose that you have HSM client certificates that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the HSM client certificates that have
    #               either or both of these tag values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_client_certificate_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_hsm_client_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     hsm_client_certificates: [
    #       {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_client_certificate_public_key: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::HsmClientCertificateMessage]
    def describe_hsm_client_certificates(params = {}, options = {})
      request = build_request(:describe_hsm_client_certificates, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Amazon Redshift HSM configuration. If no
    #             configuration ID is specified, returns information about all the HSM configurations
    #             owned by your Amazon Web Services account.</p>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all HSM connections that match any combination of the specified keys and values. For
    #             example, if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all HSM connections that
    #             have any combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, HSM connections are
    #             returned regardless of whether they have tag keys or values associated with
    #             them.</p>
    # @param [Hash, Types::DescribeHsmConfigurationsMessage] params
    # @option params [String] :hsm_configuration_identifier
    #   <p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no
    #               identifier is specified, information is returned for all HSM configurations owned by
    #               your Amazon Web Services account.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmConfigurations</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM configurations that
    #               are associated with the specified key or keys. For example, suppose that you have HSM
    #               configurations that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM configurations that have either or both of
    #               these tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching HSM configurations
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have HSM configurations that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the HSM configurations that have either or both of these tag
    #               values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_configuration_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_hsm_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     hsm_configurations: [
    #       {
    #         hsm_configuration_identifier: "String",
    #         description: "String",
    #         hsm_ip_address: "String",
    #         hsm_partition_name: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::HsmConfigurationMessage]
    def describe_hsm_configurations(params = {}, options = {})
      request = build_request(:describe_hsm_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of inbound integrations.</p>
    # @param [Hash, Types::DescribeInboundIntegrationsMessage] params
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the inbound integration.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the target of an inbound integration.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeInboundIntegrations</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "InboundIntegrationArn",
    #     target_arn: "TargetArn",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_inbound_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     inbound_integrations: [
    #       {
    #         integration_arn: "InboundIntegrationArn",
    #         source_arn: "String",
    #         target_arn: "TargetArn",
    #         status: "creating" # One of: ["creating", "active", "modifying", "failed", "deleting", "syncing", "needs_attention"],
    #         errors: [
    #           {
    #             error_code: "String", # required
    #             error_message: "String"
    #           }
    #         ],
    #         create_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::InboundIntegrationsMessage]
    def describe_inbound_integrations(params = {}, options = {})
      request = build_request(:describe_inbound_integrations, params)
      request.send_request(options)
    end

    # <p>Describes one or more zero-ETL or S3 event integrations with Amazon Redshift.</p>
    # @param [Hash, Types::DescribeIntegrationsMessage] params
    # @option params [String] :integration_arn
    #   <p>The unique identifier of the integration.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeIntegrations</code>
    #               request. If this parameter is specified, the response includes only records beyond the
    #               marker, up to the value specified by <code>MaxRecords</code>.</p>
    # @option params [Array<Types::DescribeIntegrationsFilter>] :filters
    #   <p>A filter that specifies one or more resources to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "IntegrationArn",
    #     max_records: 1,
    #     marker: "String",
    #     filters: [
    #       {
    #         name: "integration-arn" # One of: ["integration-arn", "source-arn", "source-types", "status"], # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     integrations: [
    #       {
    #         integration_arn: "IntegrationArn",
    #         integration_name: "IntegrationName",
    #         source_arn: "SourceArn",
    #         target_arn: "TargetArn",
    #         status: "creating" # One of: ["creating", "active", "modifying", "failed", "deleting", "syncing", "needs_attention"],
    #         errors: [
    #           {
    #             error_code: "String", # required
    #             error_message: "String"
    #           }
    #         ],
    #         create_time: Time.now,
    #         description: "Description",
    #         kms_key_id: "String",
    #         additional_encryption_context: {
    #           "String" => "String"
    #         },
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::IntegrationsMessage]
    def describe_integrations(params = {}, options = {})
      request = build_request(:describe_integrations, params)
      request.send_request(options)
    end

    # <p>Describes whether information, such as queries and connection attempts, is being
    #             logged for the specified Amazon Redshift cluster.</p>
    # @param [Hash, Types::DescribeLoggingStatusMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster from which to get the logging status.</p>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_logging_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_enabled: false,
    #     bucket_name: "String",
    #     s3_key_prefix: "S3KeyPrefixValue",
    #     last_successful_delivery_time: Time.now,
    #     last_failure_time: Time.now,
    #     last_failure_message: "String",
    #     log_destination_type: "s3" # One of: ["s3", "cloudwatch"],
    #     log_exports: ["String"]
    #   }
    # @return [Types::DescribeLoggingStatusOutput]
    def describe_logging_status(params = {}, options = {})
      request = build_request(:describe_logging_status, params)
      request.send_request(options)
    end

    # <p>Returns properties of possible node configurations such as node type, number of nodes, and 
    #             disk usage for the specified action type.</p>
    # @param [Hash, Types::DescribeNodeConfigurationOptionsMessage] params
    # @option params [String] :action_type
    #   <p>The action type to evaluate for possible node configurations.
    #               Specify "restore-cluster" to get configuration combinations based on an existing snapshot. 
    #               Specify "recommend-node-config" to get configuration recommendations based on an existing cluster or snapshot. 
    #               Specify "resize-cluster" to get configuration combinations for elastic resize based on an existing cluster.
    #           </p>
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to evaluate for possible node configurations.</p>
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot to evaluate for possible node configurations.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot associated with the message to describe node configuration.</p>
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. 
    #               Required if you are restoring a snapshot you do not own, 
    #               optional if you own the snapshot.</p>
    # @option params [Array<Types::NodeConfigurationOptionsFilter>] :filters
    #   <p>A set of name, operator, and value items to filter the results.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeNodeConfigurationOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>500</code>
    #            </p>
    #            <p>Constraints: minimum 100, maximum 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "restore-cluster" # One of: ["restore-cluster", "recommend-node-config", "resize-cluster"], # required
    #     cluster_identifier: "String",
    #     snapshot_identifier: "String",
    #     snapshot_arn: "String",
    #     owner_account: "String",
    #     filters: [
    #       {
    #         name: "NodeType" # One of: ["NodeType", "NumberOfNodes", "EstimatedDiskUtilizationPercent", "Mode"],
    #         operator: "eq" # One of: ["eq", "lt", "gt", "le", "ge", "in", "between"],
    #         values: ["String"]
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_node_configuration_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_configuration_option_list: [
    #       {
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         estimated_disk_utilization_percent: 1.0,
    #         mode: "standard" # One of: ["standard", "high-performance"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::NodeConfigurationOptionsMessage]
    def describe_node_configuration_options(params = {}, options = {})
      request = build_request(:describe_node_configuration_options, params)
      request.send_request(options)
    end

    # <p>Returns a list of orderable cluster options. Before you create a new cluster you
    #             can use this operation to find what options are available, such as the EC2 Availability
    #             Zones (AZ) in the specific Amazon Web Services Region that you can specify, and the node types you can
    #             request. The node types differ by available storage, memory, CPU and price. With the
    #             cost involved you might want to obtain a list of cluster options in the specific region
    #             and specify values when creating a cluster. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DescribeOrderableClusterOptionsMessage] params
    # @option params [String] :cluster_version
    #   <p>The version filter value. Specify this parameter to show only the available
    #               offerings matching the specified version.</p>
    #            <p>Default: All versions.</p>
    #            <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>
    # @option params [String] :node_type
    #   <p>The node type filter value. Specify this parameter to show only the available
    #               offerings matching the specified node type.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeOrderableClusterOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_version: "String",
    #     node_type: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_orderable_cluster_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     orderable_cluster_options: [
    #       {
    #         cluster_version: "String",
    #         cluster_type: "String",
    #         node_type: "String",
    #         availability_zones: [
    #           {
    #             name: "String",
    #             supported_platforms: [
    #               {
    #                 name: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::OrderableClusterOptionsMessage]
    def describe_orderable_cluster_options(params = {}, options = {})
      request = build_request(:describe_orderable_cluster_options, params)
      request.send_request(options)
    end

    # <p>Returns information about the partner integrations defined for a cluster.</p>
    # @param [Hash, Types::DescribePartnersInputMessage] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration is being described.</p>
    # @option params [String] :database_name
    #   <p>The name of the database whose partner integration is being described. If database name is not specified, then all databases in the cluster are described.</p>
    # @option params [String] :partner_name
    #   <p>The name of the partner that is being described. If partner name is not specified, then all partner integrations are described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "PartnerIntegrationAccountId", # required
    #     cluster_identifier: "PartnerIntegrationClusterIdentifier", # required
    #     database_name: "PartnerIntegrationDatabaseName",
    #     partner_name: "PartnerIntegrationPartnerName"
    #   }
    #   options = {}
    #   response = client.describe_partners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     partner_integration_info_list: [
    #       {
    #         database_name: "PartnerIntegrationDatabaseName",
    #         partner_name: "PartnerIntegrationPartnerName",
    #         status: "Active" # One of: ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"],
    #         status_message: "PartnerIntegrationStatusMessage",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribePartnersOutputMessage]
    def describe_partners(params = {}, options = {})
      request = build_request(:describe_partners, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Redshift IAM Identity Center applications.</p>
    # @param [Hash, Types::DescribeRedshiftIdcApplicationsMessage] params
    # @option params [String] :redshift_idc_application_arn
    #   <p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of remaining response records 
    #               exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve 
    #               the next set of records by retrying the command with the returned marker value.</p>
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a 
    #               value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the Marker parameter
    #               and retrying the command. If the Marker field is empty, all response
    #               records have been retrieved for the request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     redshift_idc_application_arn: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_redshift_idc_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     redshift_idc_applications: [
    #       {
    #         idc_instance_arn: "String",
    #         redshift_idc_application_name: "RedshiftIdcApplicationName",
    #         redshift_idc_application_arn: "String",
    #         identity_namespace: "IdentityNamespaceString",
    #         idc_display_name: "IdcDisplayNameString",
    #         iam_role_arn: "String",
    #         idc_managed_application_arn: "String",
    #         idc_onboard_status: "String",
    #         authorized_token_issuer_list: [
    #           {
    #             trusted_token_issuer_arn: "String",
    #             authorized_audiences_list: ["String"]
    #           }
    #         ],
    #         service_integrations: [{
    #           # One of:
    #           lake_formation: [{
    #             # One of:
    #             lake_formation_query: {
    #               authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             }
    #           }],
    #           s3_access_grants: [{
    #             # One of:
    #             read_write_access: {
    #               authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             }
    #           }]
    #         }],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ],
    #         sso_tag_keys: ["String"]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeRedshiftIdcApplicationsResult]
    def describe_redshift_idc_applications(params = {}, options = {})
      request = build_request(:describe_redshift_idc_applications, params)
      request.send_request(options)
    end

    # <p>Returns exchange status details and associated metadata for a reserved-node
    #             exchange. Statuses include such values as in progress and requested.</p>
    # @param [Hash, Types::DescribeReservedNodeExchangeStatusInputMessage] params
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the source reserved node in a reserved-node exchange request.</p>
    # @option params [String] :reserved_node_exchange_request_id
    #   <p>The identifier of the reserved-node exchange request.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request. If this 
    #               parameter is specified, the response includes only records beyond the marker, up to the value 
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_id: "String",
    #     reserved_node_exchange_request_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_node_exchange_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_node_exchange_status_details: [
    #       {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeReservedNodeExchangeStatusOutputMessage]
    def describe_reserved_node_exchange_status(params = {}, options = {})
      request = build_request(:describe_reserved_node_exchange_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available reserved node offerings by Amazon Redshift with their
    #             descriptions including the node type, the fixed and recurring costs of reserving the
    #             node and duration the node will be reserved for you. These descriptions help you
    #             determine which reserve node offering you want to purchase. You then use the unique
    #             offering ID in you call to <a>PurchaseReservedNodeOffering</a> to reserve one
    #             or more nodes for your Amazon Redshift cluster. </p>
    #          <p>
    # For more information about reserved node offerings, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::DescribeReservedNodeOfferingsMessage] params
    # @option params [String] :reserved_node_offering_id
    #   <p>The unique identifier for the offering.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodeOfferings</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_offering_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_node_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_node_offerings: [
    #       {
    #         reserved_node_offering_id: "String",
    #         node_type: "String",
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         offering_type: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ],
    #         reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #       }
    #     ]
    #   }
    # @return [Types::ReservedNodeOfferingsMessage]
    def describe_reserved_node_offerings(params = {}, options = {})
      request = build_request(:describe_reserved_node_offerings, params)
      request.send_request(options)
    end

    # <p>Returns the descriptions of the reserved nodes.</p>
    # @param [Hash, Types::DescribeReservedNodesMessage] params
    # @option params [String] :reserved_node_id
    #   <p>Identifier for the node reservation.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodes</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_nodes: [
    #       {
    #         reserved_node_id: "String",
    #         reserved_node_offering_id: "String",
    #         node_type: "String",
    #         start_time: Time.now,
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         node_count: 1,
    #         state: "String",
    #         offering_type: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ],
    #         reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #       }
    #     ]
    #   }
    # @return [Types::ReservedNodesMessage]
    def describe_reserved_nodes(params = {}, options = {})
      request = build_request(:describe_reserved_nodes, params)
      request.send_request(options)
    end

    # <p>Returns information about the last resize operation for the specified cluster. If
    #             no resize operation has ever been initiated for the specified cluster, a <code>HTTP
    #                 404</code> error is returned. If a resize operation was initiated and completed, the
    #             status of the resize remains as <code>SUCCEEDED</code> until the next resize. </p>
    #          <p>A resize operation can be requested using <a>ModifyCluster</a> and
    #             specifying a different number or type of nodes for the cluster. </p>
    # @param [Hash, Types::DescribeResizeMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose resize progress you are requesting. This
    #               parameter is case-sensitive.</p>
    #            <p>By default, resize operations for all clusters defined for an Amazon Web Services account are
    #               returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_resize(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_node_type: "String",
    #     target_number_of_nodes: 1,
    #     target_cluster_type: "String",
    #     status: "String",
    #     import_tables_completed: ["String"],
    #     import_tables_in_progress: ["String"],
    #     import_tables_not_started: ["String"],
    #     avg_resize_rate_in_mega_bytes_per_second: 1.0,
    #     total_resize_data_in_mega_bytes: 1,
    #     progress_in_mega_bytes: 1,
    #     elapsed_time_in_seconds: 1,
    #     estimated_time_to_completion_in_seconds: 1,
    #     resize_type: "String",
    #     message: "String",
    #     target_encryption_type: "String",
    #     data_transfer_progress_percent: 1.0
    #   }
    # @return [Types::DescribeResizeOutput]
    def describe_resize(params = {}, options = {})
      request = build_request(:describe_resize, params)
      request.send_request(options)
    end

    # <p>Describes properties of scheduled actions. 
    #              </p>
    # @param [Hash, Types::DescribeScheduledActionsMessage] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to retrieve. </p>
    # @option params [String] :target_action_type
    #   <p>The type of the scheduled actions to retrieve. </p>
    # @option params [Time] :start_time
    #   <p>The start time in UTC of the scheduled actions to retrieve. 
    #               Only active scheduled actions that have invocations after this time are retrieved.</p>
    # @option params [Time] :end_time
    #   <p>The end time in UTC of the scheduled action to retrieve. 
    #               Only active scheduled actions that have invocations before this time are retrieved.</p>
    # @option params [Boolean] :active
    #   <p>If true, retrieve only active scheduled actions. 
    #              If false, retrieve only disabled scheduled actions. </p>
    # @option params [Array<Types::ScheduledActionFilter>] :filters
    #   <p>List of scheduled action filters. </p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeScheduledActions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "String",
    #     target_action_type: "ResizeCluster" # One of: ["ResizeCluster", "PauseCluster", "ResumeCluster"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     active: false,
    #     filters: [
    #       {
    #         name: "cluster-identifier" # One of: ["cluster-identifier", "iam-role"], # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_scheduled_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     scheduled_actions: [
    #       {
    #         scheduled_action_name: "String",
    #         target_action: {
    #           resize_cluster: {
    #             cluster_identifier: "String", # required
    #             cluster_type: "String",
    #             node_type: "String",
    #             number_of_nodes: 1,
    #             classic: false,
    #             reserved_node_id: "String",
    #             target_reserved_node_offering_id: "String"
    #           },
    #           pause_cluster: {
    #             cluster_identifier: "String", # required
    #           },
    #           resume_cluster: {
    #             cluster_identifier: "String", # required
    #           }
    #         },
    #         schedule: "String",
    #         iam_role: "String",
    #         scheduled_action_description: "String",
    #         state: "ACTIVE" # One of: ["ACTIVE", "DISABLED"],
    #         next_invocations: [Time.now],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ScheduledActionsMessage]
    def describe_scheduled_actions(params = {}, options = {})
      request = build_request(:describe_scheduled_actions, params)
      request.send_request(options)
    end

    # <p>Returns a list of snapshot copy grants owned by the Amazon Web Services account in the destination
    #             region.</p>
    #          <p>
    # For more information about managing snapshot copy grants, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    # @param [Hash, Types::DescribeSnapshotCopyGrantsMessage] params
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #            <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_copy_grant_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_snapshot_copy_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     snapshot_copy_grants: [
    #       {
    #         snapshot_copy_grant_name: "String",
    #         kms_key_id: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::SnapshotCopyGrantMessage]
    def describe_snapshot_copy_grants(params = {}, options = {})
      request = build_request(:describe_snapshot_copy_grants, params)
      request.send_request(options)
    end

    # <p>Returns a list of snapshot schedules. </p>
    # @param [Hash, Types::DescribeSnapshotSchedulesMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster whose snapshot schedules you want to
    #               view.</p>
    # @option params [String] :schedule_identifier
    #   <p>A unique identifier for a snapshot schedule.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key value for a snapshot schedule tag.</p>
    # @option params [Array<String>] :tag_values
    #   <p>The value corresponding to the key of the snapshot schedule tag.</p>
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code>
    #               value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     schedule_identifier: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #     marker: "String",
    #     max_records: 1
    #   }
    #   options = {}
    #   response = client.describe_snapshot_schedules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_schedules: [
    #       {
    #         schedule_definitions: ["String"],
    #         schedule_identifier: "String",
    #         schedule_description: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ],
    #         next_invocations: [Time.now],
    #         associated_cluster_count: 1,
    #         associated_clusters: [
    #           {
    #             cluster_identifier: "String",
    #             schedule_association_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"]
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeSnapshotSchedulesOutputMessage]
    def describe_snapshot_schedules(params = {}, options = {})
      request = build_request(:describe_snapshot_schedules, params)
      request.send_request(options)
    end

    # <p>Returns account level backups storage size and provisional storage.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_backup_size_in_mega_bytes: 1.0,
    #     total_provisioned_storage_in_mega_bytes: 1.0
    #   }
    # @return [Types::CustomerStorageMessage]
    def describe_storage(params = {}, options = {})
      request = build_request(:describe_storage, params)
      request.send_request(options)
    end

    # <p>Lists the status of one or more table restore requests made using the <a>RestoreTableFromClusterSnapshot</a> API action. If you don't specify a value
    #             for the <code>TableRestoreRequestId</code> parameter, then
    #                 <code>DescribeTableRestoreStatus</code> returns the status of all table restore
    #             requests ordered by the date and time of the request in ascending order. Otherwise
    #                 <code>DescribeTableRestoreStatus</code> returns the status of the table specified by
    #                 <code>TableRestoreRequestId</code>.</p>
    # @param [Hash, Types::DescribeTableRestoreStatusMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The Amazon Redshift cluster that the table is being restored to.</p>
    # @option params [String] :table_restore_request_id
    #   <p>The identifier of the table restore request to return status for. If you don't
    #               specify a <code>TableRestoreRequestId</code> value, then
    #                   <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table
    #               restore requests.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #               included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous
    #                   <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #                   <code>MaxRecords</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     table_restore_request_id: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.describe_table_restore_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_restore_status_details: [
    #       {
    #         table_restore_request_id: "String",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"],
    #         message: "String",
    #         request_time: Time.now,
    #         progress_in_mega_bytes: 1,
    #         total_data_in_mega_bytes: 1,
    #         cluster_identifier: "String",
    #         snapshot_identifier: "String",
    #         source_database_name: "String",
    #         source_schema_name: "String",
    #         source_table_name: "String",
    #         target_database_name: "String",
    #         target_schema_name: "String",
    #         new_table_name: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::TableRestoreStatusMessage]
    def describe_table_restore_status(params = {}, options = {})
      request = build_request(:describe_table_restore_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags. You can return tags from a specific resource by specifying
    #             an ARN, or you can return all tags for a given type of resource, such as clusters,
    #             snapshots, and so on.</p>
    #          <p>The following are limitations for <code>DescribeTags</code>: </p>
    #          <ul>
    #             <li>
    #                <p>You cannot specify an ARN and a resource-type value together in the same
    #                     request.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use the <code>MaxRecords</code> and <code>Marker</code>
    #                     parameters together with the ARN parameter.</p>
    #             </li>
    #             <li>
    #                <p>The <code>MaxRecords</code> parameter can be a range from 10 to 50 results
    #                     to return in a request.</p>
    #             </li>
    #          </ul>
    #          <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns
    #             all resources that match any combination of the specified keys and values. For example,
    #             if you have <code>owner</code> and <code>environment</code> for tag keys, and
    #                 <code>admin</code> and <code>test</code> for tag values, all resources that have any
    #             combination of those values are returned.</p>
    #          <p>If both tag keys and values are omitted from the request, resources are returned
    #             regardless of whether they have tag keys or values associated with them.</p>
    # @param [Hash, Types::DescribeTagsMessage] params
    # @option params [String] :resource_name
    #   <p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    # @option params [String] :resource_type
    #   <p>The type of resource with which you want to view tags. Valid resource types are: </p>
    #            <ul>
    #               <li>
    #                  <p>Cluster</p>
    #               </li>
    #               <li>
    #                  <p>CIDR/IP</p>
    #               </li>
    #               <li>
    #                  <p>EC2 security group</p>
    #               </li>
    #               <li>
    #                  <p>Snapshot</p>
    #               </li>
    #               <li>
    #                  <p>Cluster security group</p>
    #               </li>
    #               <li>
    #                  <p>Subnet group</p>
    #               </li>
    #               <li>
    #                  <p>HSM connection</p>
    #               </li>
    #               <li>
    #                  <p>HSM certificate</p>
    #               </li>
    #               <li>
    #                  <p>Parameter group</p>
    #               </li>
    #               <li>
    #                  <p>Snapshot copy grant</p>
    #               </li>
    #               <li>
    #                  <p>Integration (zero-ETL integration or S3 event integration)</p>
    #                  <note>
    #                     <p>To describe the tags associated with an <code>integration</code>, don't specify <code>ResourceType</code>, 
    #                       instead specify the <code>ResourceName</code> of the integration.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in
    #               the Amazon Redshift Cluster Management Guide. </p>
    # @option params [Integer] :max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code> value.
    #           </p>
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String",
    #     resource_type: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tagged_resources: [
    #       {
    #         tag: {
    #           key: "String",
    #           value: "String"
    #         },
    #         resource_name: "String",
    #         resource_type: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::TaggedResourceListMessage]
    def describe_tags(params = {}, options = {})
      request = build_request(:describe_tags, params)
      request.send_request(options)
    end

    # <p>Shows usage limits on a cluster.
    #             Results are filtered based on the combination of input usage limit identifier, cluster identifier, and feature type parameters:</p>
    #          <ul>
    #             <li>
    #                <p>If usage limit identifier, cluster identifier, and feature type are not provided, 
    #                 then all usage limit objects for the current account in the current region are returned.</p>
    #             </li>
    #             <li>
    #                <p>If usage limit identifier is provided, 
    #                 then the corresponding usage limit object is returned.</p>
    #             </li>
    #             <li>
    #                <p>If cluster identifier is provided, 
    #                 then all usage limit objects for the specified cluster are returned.</p>
    #             </li>
    #             <li>
    #                <p>If cluster identifier and feature type are provided, 
    #                 then all usage limit objects for the combination of cluster and feature are returned.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeUsageLimitsMessage] params
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to describe.</p>
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster for which you want to describe usage limits.</p>
    # @option params [String] :feature_type
    #   <p>The feature type for which you want to describe usage limits.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: minimum 20, maximum 100.</p>
    # @option params [String] :marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeUsageLimits</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A tag key or keys for which you want to return all matching usage limit objects
    #               that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #               <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the usage limit objects have either or both of these
    #               tag keys associated with them.</p>
    # @option params [Array<String>] :tag_values
    #   <p>A tag value or values for which you want to return all matching usage limit objects
    #               that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #               <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the usage limit objects that have either or both of these tag
    #               values associated with them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String",
    #     cluster_identifier: "String",
    #     feature_type: "spectrum" # One of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"],
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_usage_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limits: [
    #       {
    #         usage_limit_id: "String",
    #         cluster_identifier: "String",
    #         feature_type: "spectrum" # One of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"],
    #         limit_type: "time" # One of: ["time", "data-scanned"],
    #         amount: 1,
    #         period: "daily" # One of: ["daily", "weekly", "monthly"],
    #         breach_action: "log" # One of: ["log", "emit-metric", "disable"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::DescribeUsageLimitsOutput]
    def describe_usage_limits(params = {}, options = {})
      request = build_request(:describe_usage_limits, params)
      request.send_request(options)
    end

    # <p>Stops logging information, such as queries and connection attempts, for the
    #             specified Amazon Redshift cluster.</p>
    # @param [Hash, Types::DisableLoggingMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be stopped.</p>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.disable_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_enabled: false,
    #     bucket_name: "String",
    #     s3_key_prefix: "S3KeyPrefixValue",
    #     last_successful_delivery_time: Time.now,
    #     last_failure_time: Time.now,
    #     last_failure_message: "String",
    #     log_destination_type: "s3" # One of: ["s3", "cloudwatch"],
    #     log_exports: ["String"]
    #   }
    # @return [Types::DisableLoggingOutput]
    def disable_logging(params = {}, options = {})
      request = build_request(:disable_logging, params)
      request.send_request(options)
    end

    # <p>Disables the automatic copying of snapshots from one region to another region for a
    #             specified cluster.</p>
    #          <p>If your cluster and its snapshots are encrypted using an encrypted symmetric key
    #             from Key Management Service, use <a>DeleteSnapshotCopyGrant</a> to delete the grant that
    #             grants Amazon Redshift permission to the key in the destination region. </p>
    # @param [Hash, Types::DisableSnapshotCopyMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the source cluster that you want to disable copying of
    #               snapshots to a destination region.</p>
    #            <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.disable_snapshot_copy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DisableSnapshotCopyResult]
    def disable_snapshot_copy(params = {}, options = {})
      request = build_request(:disable_snapshot_copy, params)
      request.send_request(options)
    end

    # <p>From a datashare consumer account, remove association for the specified datashare.
    #             </p>
    # @param [Hash, Types::DisassociateDataShareConsumerMessage] params
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to remove association for.</p>
    # @option params [Boolean] :disassociate_entire_account
    #   <p>A value that specifies whether association for the datashare is removed from the
    #               entire account.</p>
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer namespace that association for
    #               the datashare is removed from.</p>
    # @option params [String] :consumer_region
    #   <p>From a datashare consumer account, removes association of a datashare from all the existing and future namespaces in the specified Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String", # required
    #     disassociate_entire_account: false,
    #     consumer_arn: "String",
    #     consumer_region: "String"
    #   }
    #   options = {}
    #   response = client.disassociate_data_share_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_share_arn: "String",
    #     producer_arn: "String",
    #     allow_publicly_accessible_consumers: false,
    #     data_share_associations: [
    #       {
    #         consumer_identifier: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #         consumer_region: "String",
    #         created_date: Time.now,
    #         status_change_date: Time.now,
    #         producer_allowed_writes: false,
    #         consumer_accepted_writes: false
    #       }
    #     ],
    #     managed_by: "String",
    #     data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #   }
    # @return [Types::DisassociateDataShareConsumerOutput]
    def disassociate_data_share_consumer(params = {}, options = {})
      request = build_request(:disassociate_data_share_consumer, params)
      request.send_request(options)
    end

    # <p>Starts logging information, such as queries and connection attempts, for the
    #             specified Amazon Redshift cluster.</p>
    # @param [Hash, Types::EnableLoggingMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be started.</p>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @option params [String] :bucket_name
    #   <p>The name of an existing S3 bucket where the log files are to be stored.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the same region as the cluster</p>
    #               </li>
    #               <li>
    #                  <p>The cluster must have read bucket and put object permissions</p>
    #               </li>
    #            </ul>
    # @option params [String] :s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #            <p>Valid characters are any letter from any language, any whitespace character, any numeric character, and the following characters: 
    #               underscore (<code>_</code>), period (<code>.</code>), colon (<code>:</code>), slash (<code>/</code>), equal (<code>=</code>), plus (<code>+</code>), backslash (<code>\</code>),
    #               hyphen (<code>-</code>), at symbol (<code>@</code>).</p>
    # @option params [String] :log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    # @option params [Array<String>] :log_exports
    #   <p>The collection of exported log types. Possible values are <code>connectionlog</code>, <code>useractivitylog</code>, and <code>userlog</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     bucket_name: "String",
    #     s3_key_prefix: "S3KeyPrefixValue",
    #     log_destination_type: "s3" # One of: ["s3", "cloudwatch"],
    #     log_exports: ["String"]
    #   }
    #   options = {}
    #   response = client.enable_logging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_enabled: false,
    #     bucket_name: "String",
    #     s3_key_prefix: "S3KeyPrefixValue",
    #     last_successful_delivery_time: Time.now,
    #     last_failure_time: Time.now,
    #     last_failure_message: "String",
    #     log_destination_type: "s3" # One of: ["s3", "cloudwatch"],
    #     log_exports: ["String"]
    #   }
    # @return [Types::EnableLoggingOutput]
    def enable_logging(params = {}, options = {})
      request = build_request(:enable_logging, params)
      request.send_request(options)
    end

    # <p>Enables the automatic copy of snapshots from one region to another region for a
    #             specified cluster.</p>
    # @param [Hash, Types::EnableSnapshotCopyMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the source cluster to copy snapshots from.</p>
    #            <p>Constraints: Must be the valid name of an existing cluster that does not already
    #               have cross-region snapshot copy enabled.</p>
    # @option params [String] :destination_region
    #   <p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>
    #            <p>Constraints: Must be the name of a valid Amazon Web Services Region. For more information, see
    #                   <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.
    #           </p>
    # @option params [Integer] :retention_period
    #   <p>The number of days to retain automated snapshots in the destination region after
    #               they are copied from the source region.</p>
    #            <p>Default: 7.</p>
    #            <p>Constraints: Must be at least 1 and no more than 35.</p>
    # @option params [String] :snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to use when snapshots of an Amazon Web Services KMS-encrypted
    #               cluster are copied to the destination region.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days to retain newly copied snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     destination_region: "String", # required
    #     retention_period: 1,
    #     snapshot_copy_grant_name: "String",
    #     manual_snapshot_retention_period: 1
    #   }
    #   options = {}
    #   response = client.enable_snapshot_copy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::EnableSnapshotCopyResult]
    def enable_snapshot_copy(params = {}, options = {})
      request = build_request(:enable_snapshot_copy, params)
      request.send_request(options)
    end

    # <p>Fails over the primary compute unit of the specified Multi-AZ cluster to another Availability Zone.</p>
    # @param [Hash, Types::FailoverPrimaryComputeInputMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster for which the primary compute unit will be failed over to another Availability Zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.failover_primary_compute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::FailoverPrimaryComputeResult]
    def failover_primary_compute(params = {}, options = {})
      request = build_request(:failover_primary_compute, params)
      request.send_request(options)
    end

    # <p>Returns a database user name and temporary password with temporary authorization to
    #             log on to an Amazon Redshift database. The action returns the database user name
    #             prefixed with <code>IAM:</code> if <code>AutoCreate</code> is <code>False</code> or
    #                 <code>IAMA:</code> if <code>AutoCreate</code> is <code>True</code>. You can
    #             optionally specify one or more database user groups that the user will join at log on.
    #             By default, the temporary credentials expire in 900 seconds. You can optionally specify
    #             a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more
    #             information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html">Using IAM Authentication
    #                 to Generate Database User Credentials</a> in the Amazon Redshift Cluster Management Guide.</p>
    #          <p>The Identity and Access Management (IAM) user or role that runs
    #             GetClusterCredentials must have an IAM policy attached that allows access to all
    #             necessary actions and resources. For more information about permissions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources">Resource Policies for GetClusterCredentials</a> in the
    #             Amazon Redshift Cluster Management Guide.</p>
    #          <p>If the <code>DbGroups</code> parameter is specified, the IAM policy must allow the
    #                 <code>redshift:JoinGroup</code> action with access to the listed
    #                 <code>dbgroups</code>. </p>
    #          <p>In addition, if the <code>AutoCreate</code> parameter is set to <code>True</code>,
    #             then the policy must include the <code>redshift:CreateClusterUser</code>
    #             permission.</p>
    #          <p>If the <code>DbName</code> parameter is specified, the IAM policy must allow access
    #             to the resource <code>dbname</code> for the specified database name. </p>
    # @param [Hash, Types::GetClusterCredentialsMessage] params
    # @option params [String] :db_user
    #   <p>The name of a database user. If a user name matching <code>DbUser</code> exists in
    #               the database, the temporary user credentials have the same permissions as the existing
    #               user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code>
    #               is <code>True</code>, a new user is created using the value for <code>DbUser</code> with
    #               PUBLIC permissions. If a database user matching the value for <code>DbUser</code>
    #               doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command
    #               succeeds but the connection attempt will fail because the user doesn't exist in the
    #               database.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE USER</a> in the Amazon
    #               Redshift Database Developer Guide. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain uppercase or lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    # @option params [String] :db_name
    #   <p>The name of a database that <code>DbUser</code> is authorized to log on to. If
    #                   <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing
    #               database.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>Must contain uppercase or lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. This parameter is case sensitive.</p>
    # @option params [Integer] :duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #            <p>Constraint: minimum 900, maximum 3600.</p>
    #            <p>Default: 900</p>
    # @option params [Boolean] :auto_create
    #   <p>Create a database user with the name specified for the user named in
    #                   <code>DbUser</code> if one does not exist.</p>
    # @option params [Array<String>] :db_groups
    #   <p>A list of the names of existing database groups that the user named in
    #                   <code>DbUser</code> will join for the current session, in addition to any group
    #               memberships for an existing user. If not specified, a new user is added only to
    #               PUBLIC.</p>
    #            <p>Database group name constraints</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for the cluster credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_user: "String", # required
    #     db_name: "String",
    #     cluster_identifier: "String",
    #     duration_seconds: 1,
    #     auto_create: false,
    #     db_groups: ["String"],
    #     custom_domain_name: "String"
    #   }
    #   options = {}
    #   response = client.get_cluster_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_user: "String",
    #     db_password: "SensitiveString",
    #     expiration: Time.now
    #   }
    # @return [Types::GetClusterCredentialsOutput]
    def get_cluster_credentials(params = {}, options = {})
      request = build_request(:get_cluster_credentials, params)
      request.send_request(options)
    end

    # <p>Returns a database user name and temporary password with temporary authorization to
    #             log in to an Amazon Redshift database.
    #             The database user is mapped 1:1 to the source Identity and Access Management (IAM) identity.
    #             For more information about IAM identities, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html">IAM Identities (users, user groups, and roles)</a> in the
    #             Amazon Web Services Identity and Access Management User Guide.</p>
    #          <p>The Identity and Access Management (IAM) identity that runs
    #             this operation must have an IAM policy attached that allows access to all
    #             necessary actions and resources. 
    #                 For more information about permissions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using identity-based policies (IAM policies)</a> in the
    #             Amazon Redshift Cluster Management Guide. </p>
    # @param [Hash, Types::GetClusterCredentialsWithIAMMessage] params
    # @option params [String] :db_name
    #   <p>The name of the database for which you are requesting credentials.
    #               If the database name is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name.
    #               If the database name is not specified, access to all databases is allowed.</p>
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. </p>
    # @option params [Integer] :duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #            <p>Range: 900-3600. Default: 900.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for the IAM message cluster credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_name: "String",
    #     cluster_identifier: "String",
    #     duration_seconds: 1,
    #     custom_domain_name: "String"
    #   }
    #   options = {}
    #   response = client.get_cluster_credentials_with_iam(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_user: "String",
    #     db_password: "SensitiveString",
    #     expiration: Time.now,
    #     next_refresh_time: Time.now
    #   }
    # @return [Types::GetClusterCredentialsWithIAMOutput]
    def get_cluster_credentials_with_iam(params = {}, options = {})
      request = build_request(:get_cluster_credentials_with_iam, params)
      request.send_request(options)
    end

    # <p>Gets the configuration options for the reserved-node exchange. These options
    #             include information about the source reserved node and target reserved node offering.
    #             Details include the node type, the price, the node count, and the offering type.</p>
    # @param [Hash, Types::GetReservedNodeExchangeConfigurationOptionsInputMessage] params
    # @option params [String] :action_type
    #   <p>The action type of the reserved-node configuration. The action type can be an exchange initiated from either a snapshot or a resize.</p>
    # @option params [String] :cluster_identifier
    #   <p>The identifier for the cluster that is the source for a reserved-node exchange.</p>
    # @option params [String] :snapshot_identifier
    #   <p>The identifier for the snapshot that is the source for the reserved-node exchange.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request. If this 
    #               parameter is specified, the response includes only records beyond the marker, up to the value 
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "restore-cluster" # One of: ["restore-cluster", "resize-cluster"], # required
    #     cluster_identifier: "String",
    #     snapshot_identifier: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.get_reserved_node_exchange_configuration_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_node_configuration_option_list: [
    #       {
    #         source_reserved_node: {
    #           reserved_node_id: "String",
    #           reserved_node_offering_id: "String",
    #           node_type: "String",
    #           start_time: Time.now,
    #           duration: 1,
    #           fixed_price: 1.0,
    #           usage_price: 1.0,
    #           currency_code: "String",
    #           node_count: 1,
    #           state: "String",
    #           offering_type: "String",
    #           recurring_charges: [
    #             {
    #               recurring_charge_amount: 1.0,
    #               recurring_charge_frequency: "String"
    #             }
    #           ],
    #           reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #         },
    #         target_reserved_node_count: 1,
    #         target_reserved_node_offering: {
    #           reserved_node_offering_id: "String",
    #           node_type: "String",
    #           duration: 1,
    #           fixed_price: 1.0,
    #           usage_price: 1.0,
    #           currency_code: "String",
    #           offering_type: "String",
    #           recurring_charges: [
    #             {
    #               recurring_charge_amount: 1.0,
    #               recurring_charge_frequency: "String"
    #             }
    #           ],
    #           reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetReservedNodeExchangeConfigurationOptionsOutputMessage]
    def get_reserved_node_exchange_configuration_options(params = {}, options = {})
      request = build_request(:get_reserved_node_exchange_configuration_options, params)
      request.send_request(options)
    end

    # <p>Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term,
    #             and usage price of the given DC1 reserved node.</p>
    # @param [Hash, Types::GetReservedNodeExchangeOfferingsInputMessage] params
    # @option params [String] :reserved_node_id
    #   <p>A string representing the node identifier for the DC1 Reserved Node to be
    #               exchanged.</p>
    # @option params [Integer] :max_records
    #   <p>An integer setting the maximum number of ReservedNodeOfferings to
    #               retrieve.</p>
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of
    #               ReservedNodeOfferings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_id: "String", # required
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.get_reserved_node_exchange_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "String",
    #     reserved_node_offerings: [
    #       {
    #         reserved_node_offering_id: "String",
    #         node_type: "String",
    #         duration: 1,
    #         fixed_price: 1.0,
    #         usage_price: 1.0,
    #         currency_code: "String",
    #         offering_type: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ],
    #         reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #       }
    #     ]
    #   }
    # @return [Types::GetReservedNodeExchangeOfferingsOutputMessage]
    def get_reserved_node_exchange_offerings(params = {}, options = {})
      request = build_request(:get_reserved_node_exchange_offerings, params)
      request.send_request(options)
    end

    # <p>Get the resource policy for a specified resource.</p>
    # @param [Hash, Types::GetResourcePolicyMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource of which its resource policy is fetched.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_arn: "String",
    #       policy: "String"
    #     }
    #   }
    # @return [Types::GetResourcePolicyResult]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>List the Amazon Redshift Advisor recommendations for one or multiple Amazon Redshift clusters in an Amazon Web Services account.</p>
    # @param [Hash, Types::ListRecommendationsMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the Amazon Redshift cluster for which the list of Advisor recommendations is returned. 
    #             If the neither the cluster identifier and the cluster namespace ARN parameters are specified, then recommendations for all clusters in the account are returned.</p>
    # @option params [String] :namespace_arn
    #   <p>The Amazon Redshift cluster namespace Amazon Resource Name (ARN) for which the list of Advisor recommendations is returned.
    #               If the neither the cluster identifier and the cluster namespace ARN parameters are specified, then recommendations for all clusters in the account are returned.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of response records to return in each call. If the number of remaining response records 
    #               exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve 
    #               the next set of records by retrying the command with the returned marker value.</p>
    # @option params [String] :marker
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a 
    #               value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the Marker parameter
    #               and retrying the command. If the Marker field is empty, all response
    #               records have been retrieved for the request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     namespace_arn: "String",
    #     max_records: 1,
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendations: [
    #       {
    #         id: "String",
    #         cluster_identifier: "String",
    #         namespace_arn: "String",
    #         created_at: Time.now,
    #         recommendation_type: "String",
    #         title: "String",
    #         description: "String",
    #         observation: "String",
    #         impact_ranking: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW"],
    #         recommendation_text: "String",
    #         recommended_actions: [
    #           {
    #             text: "String",
    #             database: "String",
    #             command: "String",
    #             type: "SQL" # One of: ["SQL", "CLI"]
    #           }
    #         ],
    #         reference_links: [
    #           {
    #             text: "String",
    #             link: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::ListRecommendationsResult]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p>This operation is retired. Calling this operation does not change AQUA configuration. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator). </p>
    # @param [Hash, Types::ModifyAquaInputMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be modified.</p>
    # @option params [String] :aqua_configuration_status
    #   <p>This parameter is retired. Amazon Redshift automatically  determines whether to use AQUA (Advanced Query Accelerator).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #   }
    #   options = {}
    #   response = client.modify_aqua_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aqua_configuration: {
    #       aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #       aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #     }
    #   }
    # @return [Types::ModifyAquaOutputMessage]
    def modify_aqua_configuration(params = {}, options = {})
      request = build_request(:modify_aqua_configuration, params)
      request.send_request(options)
    end

    # <p>Modifies an authentication profile.</p>
    # @param [Hash, Types::ModifyAuthenticationProfileMessage] params
    # @option params [String] :authentication_profile_name
    #   <p>The name of the authentication profile to replace.</p>
    # @option params [String] :authentication_profile_content
    #   <p>The new content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_name: "AuthenticationProfileNameString", # required
    #     authentication_profile_content: "String", # required
    #   }
    #   options = {}
    #   response = client.modify_authentication_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profile_name: "AuthenticationProfileNameString",
    #     authentication_profile_content: "String"
    #   }
    # @return [Types::ModifyAuthenticationProfileResult]
    def modify_authentication_profile(params = {}, options = {})
      request = build_request(:modify_authentication_profile, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a cluster.</p>
    #          <p>You can also change node type and the number of nodes to scale up or down the
    #             cluster. When resizing a cluster, you must specify both the number of nodes and the node
    #             type even if one of the parameters does not change.</p>
    #          <p>You can add another security or
    #             parameter group, or change the admin user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #             you own in a Region from reaching or being reached from the internet through internet
    #             gateways and egress-only internet gateways. If a subnet group for a
    #             provisioned cluster is in an account with VPC BPA turned on, the following capabilities
    #             are blocked:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Restoring a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private cluster to be public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the subnet group when there's at
    #                     least one public cluster within the group</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and
    #             subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @param [Hash, Types::ModifyClusterMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster to be modified.</p>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @option params [String] :cluster_type
    #   <p>The new cluster type.</p>
    #            <p>When you submit your cluster resize request, your existing cluster goes into a
    #               read-only mode. After Amazon Redshift provisions a new cluster based on your resize
    #               requirements, there will be outage for a period while the old cluster is deleted and
    #               your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p>
    #            <p>Valid Values: <code> multi-node | single-node </code>
    #            </p>
    # @option params [String] :node_type
    #   <p>The new node type of the cluster. If you specify a new node type, you must also
    #               specify the number of nodes parameter.</p>
    #            <p>
    #   For more information about resizing clusters, go to 
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a> 
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #            <p>Valid Values: 
    #               <code>dc2.large</code> | <code>dc2.8xlarge</code> | 
    #               <code>ra3.large</code> |  <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    # @option params [Integer] :number_of_nodes
    #   <p>The new number of nodes of the cluster. If you specify a new number of nodes, you
    #               must also specify the node type parameter.</p>
    #            <p>
    #   For more information about resizing clusters, go to 
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a> 
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #            <p>Valid Values: Integer greater than <code>0</code>.</p>
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of cluster security groups to be authorized on this cluster. This change is
    #               asynchronously applied as soon as possible.</p>
    #            <p>Security groups currently associated with the cluster, and not in the list of
    #               groups to apply, will be revoked from the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups to be associated with the
    #               cluster. This change is asynchronously applied as soon as possible.</p>
    # @option params [String] :master_user_password
    #   <p>The new password for the cluster admin user. This change is asynchronously applied
    #               as soon as possible. Between the time of the request and the completion of the request,
    #               the <code>MasterUserPassword</code> element exists in the
    #                   <code>PendingModifiedValues</code> element of the operation response. </p>
    #            <p>You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is <code>true</code>.</p>
    #            <note>
    #               <p>Operations never return the password, so this operation provides a way to
    #                   regain access to the admin user account for a cluster if the password is
    #                   lost.</p>
    #            </note>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                  <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to apply to this cluster. This change is
    #               applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Constraints: The cluster parameter group must be in the same parameter group family
    #               that matches the cluster version.</p>
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #            <p>If you decrease the automated snapshot retention period from its current value,
    #               existing automated snapshots that fall outside of the new retention period will be
    #               immediately deleted.</p>
    #            <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Constraints: Must be a value from 0 to 35.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default for number of days that a newly created manual snapshot is retained. If
    #               the value is -1, the manual snapshot is retained indefinitely. This value doesn't
    #               retroactively change the retention periods of existing manual snapshots.</p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #            <p>The default value is -1.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, if
    #               necessary. If system maintenance is necessary during the window, it may result in an
    #               outage.</p>
    #            <p>This maintenance window change is made immediately. If the new maintenance window
    #               indicates the current time, there must be at least 120 minutes between the current time
    #               and end of the window in order to ensure that pending changes are applied.</p>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example
    #               <code>wed:07:30-wed:08:00</code>.</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes.</p>
    # @option params [String] :cluster_version
    #   <p>The new version number of the Amazon Redshift engine to upgrade to.</p>
    #            <p>For major version upgrades, if a non-default cluster parameter group is currently
    #               in use, a new cluster parameter group in the cluster parameter group family for the new
    #               version must be specified. The new cluster parameter group can be the default for that
    #               cluster parameter group family. 
    #   For more information about parameters and parameter groups, go to 
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #            <p>Example: <code>1.0</code>
    #            </p>
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades will be applied automatically to the
    #               cluster during the maintenance window. </p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    # @option params [String] :new_cluster_identifier
    #   <p>The new identifier for the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. Only
    #               clusters in VPCs can be set to be publicly available.</p>
    #            <p>Default: false</p>
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #            <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #            <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #            <p>Default: false</p>
    # @option params [String] :maintenance_track_name
    #   <p>The name for the maintenance track that you want to assign for the cluster. This name
    #               change is asynchronous. The new track name stays in the
    #                   <code>PendingModifiedValues</code> for the cluster until the next maintenance
    #               window. When the maintenance track changes, the cluster is switched to the latest
    #               cluster release available for the maintenance track. At this point, the maintenance
    #               track name is applied.</p>
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you
    #               provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster
    #               with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>,
    #               we encrypt with the default key. </p>
    #            <p>If the value is not encrypted (false), then the cluster is decrypted. </p>
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to use
    #               to encrypt data in the cluster.</p>
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.</p>
    # @option params [String] :availability_zone
    #   <p>The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.</p>
    # @option params [Integer] :port
    #   <p>The option to change the port of an Amazon Redshift cluster.</p>
    #            <p>Valid Values:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>For clusters with ra3 nodes - Select a port within the ranges <code>5431-5455</code> or <code>8191-8215</code>. (If you have an existing cluster 
    #                   with ra3 nodes, it isn't required that you change the port to these ranges.)</p>
    #               </li>
    #               <li>
    #                  <p>For clusters with dc2 nodes - Select a port within the range <code>1150-65535</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :manage_master_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage this cluster's admin credentials. 
    #               You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is true. 
    #               If <code>ManageMasterPassword</code> is false or not set, Amazon Redshift uses 
    #               <code>MasterUserPassword</code> for the admin user account's password.
    #           </p>
    # @option params [String] :master_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. 
    #               You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address types that the cluster supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    # @option params [Boolean] :multi_az
    #   <p>If true and the cluster is currently only deployed in a single Availability Zone, the cluster will be modified to be deployed in two Availability Zones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String",
    #     number_of_nodes: 1,
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     master_user_password: "SensitiveString",
    #     cluster_parameter_group_name: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     preferred_maintenance_window: "String",
    #     cluster_version: "String",
    #     allow_version_upgrade: false,
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     new_cluster_identifier: "String",
    #     publicly_accessible: false,
    #     elastic_ip: "String",
    #     enhanced_vpc_routing: false,
    #     maintenance_track_name: "String",
    #     encrypted: false,
    #     kms_key_id: "String",
    #     availability_zone_relocation: false,
    #     availability_zone: "String",
    #     port: 1,
    #     manage_master_password: false,
    #     master_password_secret_kms_key_id: "String",
    #     ip_address_type: "String",
    #     multi_az: false
    #   }
    #   options = {}
    #   response = client.modify_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ModifyClusterResult]
    def modify_cluster(params = {}, options = {})
      request = build_request(:modify_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the database revision of a cluster. The database revision is a unique
    #             revision of the database running in a cluster.</p>
    # @param [Hash, Types::ModifyClusterDbRevisionMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of a cluster whose database revision you want to modify. </p>
    #            <p>Example: <code>examplecluster</code>
    #            </p>
    # @option params [String] :revision_target
    #   <p>The identifier of the database revision. You can retrieve this value from the
    #               response to the <a>DescribeClusterDbRevisions</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     revision_target: "String", # required
    #   }
    #   options = {}
    #   response = client.modify_cluster_db_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ModifyClusterDbRevisionResult]
    def modify_cluster_db_revision(params = {}, options = {})
      request = build_request(:modify_cluster_db_revision, params)
      request.send_request(options)
    end

    # <p>Modifies the list of Identity and Access Management (IAM) roles that can be
    #             used by the cluster to access other Amazon Web Services services.</p>
    #          <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #             For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #             in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::ModifyClusterIamRolesMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to associate or
    #               disassociate IAM roles.</p>
    # @option params [Array<String>] :add_iam_roles
    #   <p>Zero or more IAM roles to associate with the cluster. The roles must be in their
    #               Amazon Resource Name (ARN) format. </p>
    # @option params [Array<String>] :remove_iam_roles
    #   <p>Zero or more IAM roles in ARN format to disassociate from the cluster. </p>
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     add_iam_roles: ["String"],
    #     remove_iam_roles: ["String"],
    #     default_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.modify_cluster_iam_roles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ModifyClusterIamRolesResult]
    def modify_cluster_iam_roles(params = {}, options = {})
      request = build_request(:modify_cluster_iam_roles, params)
      request.send_request(options)
    end

    # <p>Modifies the maintenance settings of a cluster.</p>
    # @param [Hash, Types::ModifyClusterMaintenanceMessage] params
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster.</p>
    # @option params [Boolean] :defer_maintenance
    #   <p>A boolean indicating whether to enable the deferred maintenance window. </p>
    # @option params [String] :defer_maintenance_identifier
    #   <p>A unique identifier for the deferred maintenance window.</p>
    # @option params [Time] :defer_maintenance_start_time
    #   <p>A timestamp indicating the start time for the deferred maintenance window.</p>
    # @option params [Time] :defer_maintenance_end_time
    #   <p>A timestamp indicating end time for the deferred maintenance window. If you specify an
    #               end time, you can't specify a duration.</p>
    # @option params [Integer] :defer_maintenance_duration
    #   <p>An integer indicating the duration of the maintenance window in days. If you specify a
    #               duration, you can't specify an end time. The duration must be 45 days or less.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     defer_maintenance: false,
    #     defer_maintenance_identifier: "String",
    #     defer_maintenance_start_time: Time.now,
    #     defer_maintenance_end_time: Time.now,
    #     defer_maintenance_duration: 1
    #   }
    #   options = {}
    #   response = client.modify_cluster_maintenance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ModifyClusterMaintenanceResult]
    def modify_cluster_maintenance(params = {}, options = {})
      request = build_request(:modify_cluster_maintenance, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a parameter group. For the parameters parameter, it can't contain ASCII characters.</p>
    #          <p>
    # For more information about parameters and parameter groups, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::ModifyClusterParameterGroupMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to be modified.</p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>An array of parameters to be modified. A maximum of 20 parameters can be modified
    #               in a single request.</p>
    #            <p>For each parameter to be modified, you must supply at least the parameter name and
    #               parameter value; other name-value pairs of the parameter are optional.</p>
    #            <p>For the workload management (WLM) configuration, you must supply all the name-value
    #               pairs in the wlm_json_configuration parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static" # One of: ["static", "dynamic"],
    #         is_modifiable: false,
    #         minimum_engine_version: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group_name: "String",
    #     parameter_group_status: "String"
    #   }
    # @return [Types::ModifyClusterParameterGroupOutput]
    def modify_cluster_parameter_group(params = {}, options = {})
      request = build_request(:modify_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a snapshot.</p>
    #          <p>This exanmple modifies the manual retention period setting for a cluster snapshot.</p>
    # @param [Hash, Types::ModifyClusterSnapshotMessage] params
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot whose setting you want to modify.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #            <p>If the manual snapshot falls outside of the new retention period, you can specify the
    #               force option to immediately delete the snapshot.</p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    # @option params [Boolean] :force
    #   <p>A Boolean option to override an exception if the retention period has already
    #               passed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "String", # required
    #     manual_snapshot_retention_period: 1,
    #     force: false
    #   }
    #   options = {}
    #   response = client.modify_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::ModifyClusterSnapshotResult]
    def modify_cluster_snapshot(params = {}, options = {})
      request = build_request(:modify_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Modifies a snapshot schedule for a cluster.</p>
    # @param [Hash, Types::ModifyClusterSnapshotScheduleMessage] params
    # @option params [String] :cluster_identifier
    #   <p>A unique identifier for the cluster whose snapshot schedule you want to modify.
    #           </p>
    # @option params [String] :schedule_identifier
    #   <p>A unique alphanumeric identifier for the schedule that you want to associate with the
    #               cluster.</p>
    # @option params [Boolean] :disassociate_schedule
    #   <p>A boolean to indicate whether to remove the assoiciation between the cluster and the
    #               schedule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     schedule_identifier: "String",
    #     disassociate_schedule: false
    #   }
    #   options = {}
    #   response = client.modify_cluster_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def modify_cluster_snapshot_schedule(params = {}, options = {})
      request = build_request(:modify_cluster_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Modifies a cluster subnet group to include the specified list of VPC subnets. The
    #             operation replaces the existing list of subnets with the new list of subnets.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #             you own in a Region from reaching or being reached from the internet through internet
    #             gateways and egress-only internet gateways. If a subnet group for a
    #             provisioned cluster is in an account with VPC BPA turned on, the following capabilities
    #             are blocked:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Restoring a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private cluster to be public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the subnet group when there's at
    #                     least one public cluster within the group</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and
    #             subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @param [Hash, Types::ModifyClusterSubnetGroupMessage] params
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the subnet group to be modified.</p>
    # @option params [String] :description
    #   <p>A text description of the subnet group to be modified.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.modify_cluster_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_subnet_group: {
    #       cluster_subnet_group_name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnet_group_status: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: {
    #             name: "String",
    #             supported_platforms: [
    #               {
    #                 name: "String"
    #               }
    #             ]
    #           },
    #           subnet_status: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       supported_cluster_ip_address_types: ["String"]
    #     }
    #   }
    # @return [Types::ModifyClusterSubnetGroupResult]
    def modify_cluster_subnet_group(params = {}, options = {})
      request = build_request(:modify_cluster_subnet_group, params)
      request.send_request(options)
    end

    # <p>Contains information for changing a custom domain association.</p>
    # @param [Hash, Types::ModifyCustomDomainAssociationMessage] params
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name for a changed custom domain association.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The certificate Amazon Resource Name (ARN) for the changed custom domain association.</p>
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to change a custom domain association for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_domain_name: "CustomDomainNameString", # required
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.modify_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_domain_name: "CustomDomainNameString",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     cluster_identifier: "String",
    #     custom_domain_cert_expiry_time: "String"
    #   }
    # @return [Types::ModifyCustomDomainAssociationResult]
    def modify_custom_domain_association(params = {}, options = {})
      request = build_request(:modify_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Modifies a Redshift-managed VPC endpoint.</p>
    # @param [Hash, Types::ModifyEndpointAccessMessage] params
    # @option params [String] :endpoint_name
    #   <p>The endpoint to be modified.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The complete list of VPC security groups associated with the endpoint after the endpoint is modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #     vpc_security_group_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.modify_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "String",
    #     resource_owner: "String",
    #     subnet_group_name: "String",
    #     endpoint_status: "String",
    #     endpoint_name: "String",
    #     endpoint_create_time: Time.now,
    #     port: 1,
    #     address: "String",
    #     vpc_security_groups: [
    #       {
    #         vpc_security_group_id: "String",
    #         status: "String"
    #       }
    #     ],
    #     vpc_endpoint: {
    #       vpc_endpoint_id: "String",
    #       vpc_id: "String",
    #       network_interfaces: [
    #         {
    #           network_interface_id: "String",
    #           subnet_id: "String",
    #           private_ip_address: "String",
    #           availability_zone: "String",
    #           ipv6_address: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ModifyEndpointAccessOutput]
    def modify_endpoint_access(params = {}, options = {})
      request = build_request(:modify_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Modifies an existing Amazon Redshift event notification subscription.</p>
    # @param [Hash, Types::ModifyEventSubscriptionMessage] params
    # @option params [String] :subscription_name
    #   <p>The name of the modified Amazon Redshift event notification subscription.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event
    #               notification subscription.</p>
    # @option params [String] :source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #            <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    # @option params [Array<String>] :source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #            <p>Example: my-cluster-1, my-cluster-2</p>
    #            <p>Example: my-snapshot-20131010</p>
    # @option params [Array<String>] :event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #            <p>Values: configuration, management, monitoring, security, pending</p>
    # @option params [String] :severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #            <p>Values: ERROR, INFO</p>
    # @option params [Boolean] :enabled
    #   <p>A Boolean value indicating if the subscription is enabled. <code>true</code>
    #               indicates the subscription is enabled </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     source_ids: ["String"],
    #     event_categories: ["String"],
    #     severity: "String",
    #     enabled: false
    #   }
    #   options = {}
    #   response = client.modify_event_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_subscription: {
    #       customer_aws_id: "String",
    #       cust_subscription_id: "String",
    #       sns_topic_arn: "String",
    #       status: "String",
    #       subscription_creation_time: Time.now,
    #       source_type: "String",
    #       source_ids_list: ["String"],
    #       event_categories_list: ["String"],
    #       severity: "String",
    #       enabled: false,
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ModifyEventSubscriptionResult]
    def modify_event_subscription(params = {}, options = {})
      request = build_request(:modify_event_subscription, params)
      request.send_request(options)
    end

    # <p>Modifies a zero-ETL integration or S3 event integration with Amazon Redshift.</p>
    # @param [Hash, Types::ModifyIntegrationMessage] params
    # @option params [String] :integration_arn
    #   <p>The unique identifier of the integration to modify.</p>
    # @option params [String] :description
    #   <p>A new description for the integration.</p>
    # @option params [String] :integration_name
    #   <p>A new name for the integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_arn: "IntegrationArn", # required
    #     description: "IntegrationDescription",
    #     integration_name: "IntegrationName"
    #   }
    #   options = {}
    #   response = client.modify_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_arn: "IntegrationArn",
    #     integration_name: "IntegrationName",
    #     source_arn: "SourceArn",
    #     target_arn: "TargetArn",
    #     status: "creating" # One of: ["creating", "active", "modifying", "failed", "deleting", "syncing", "needs_attention"],
    #     errors: [
    #       {
    #         error_code: "String", # required
    #         error_message: "String"
    #       }
    #     ],
    #     create_time: Time.now,
    #     description: "Description",
    #     kms_key_id: "String",
    #     additional_encryption_context: {
    #       "String" => "String"
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ModifyIntegrationOutput]
    def modify_integration(params = {}, options = {})
      request = build_request(:modify_integration, params)
      request.send_request(options)
    end

    # <p>Changes an existing Amazon Redshift IAM Identity Center application.</p>
    # @param [Hash, Types::ModifyRedshiftIdcApplicationMessage] params
    # @option params [String] :redshift_idc_application_arn
    #   <p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>
    # @option params [String] :identity_namespace
    #   <p>The namespace for the Amazon Redshift IAM Identity Center application to change. It determines which managed application 
    #               verifies the connection token.</p>
    # @option params [String] :iam_role_arn
    #   <p>The IAM role ARN associated with the Amazon Redshift IAM Identity Center application to change. It has the required permissions 
    #               to be assumed and invoke the IDC Identity Center API.</p>
    # @option params [String] :idc_display_name
    #   <p>The display name for the Amazon Redshift IAM Identity Center application to change. It appears on the console.</p>
    # @option params [Array<Types::AuthorizedTokenIssuer>] :authorized_token_issuer_list
    #   <p>The authorized token issuer list for the Amazon Redshift IAM Identity Center application to change.</p>
    # @option params [Array<Types::ServiceIntegrationsUnion>] :service_integrations
    #   <p>A collection of service integrations associated with the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     redshift_idc_application_arn: "String", # required
    #     identity_namespace: "IdentityNamespaceString",
    #     iam_role_arn: "String",
    #     idc_display_name: "IdcDisplayNameString",
    #     authorized_token_issuer_list: [
    #       {
    #         trusted_token_issuer_arn: "String",
    #         authorized_audiences_list: ["String"]
    #       }
    #     ],
    #     service_integrations: [{
    #       # One of:
    #       lake_formation: [{
    #         # One of:
    #         lake_formation_query: {
    #           authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         }
    #       }],
    #       s3_access_grants: [{
    #         # One of:
    #         read_write_access: {
    #           authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         }
    #       }]
    #     }]
    #   }
    #   options = {}
    #   response = client.modify_redshift_idc_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     redshift_idc_application: {
    #       idc_instance_arn: "String",
    #       redshift_idc_application_name: "RedshiftIdcApplicationName",
    #       redshift_idc_application_arn: "String",
    #       identity_namespace: "IdentityNamespaceString",
    #       idc_display_name: "IdcDisplayNameString",
    #       iam_role_arn: "String",
    #       idc_managed_application_arn: "String",
    #       idc_onboard_status: "String",
    #       authorized_token_issuer_list: [
    #         {
    #           trusted_token_issuer_arn: "String",
    #           authorized_audiences_list: ["String"]
    #         }
    #       ],
    #       service_integrations: [{
    #         # One of:
    #         lake_formation: [{
    #           # One of:
    #           lake_formation_query: {
    #             authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           }
    #         }],
    #         s3_access_grants: [{
    #           # One of:
    #           read_write_access: {
    #             authorization: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           }
    #         }]
    #       }],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       sso_tag_keys: ["String"]
    #     }
    #   }
    # @return [Types::ModifyRedshiftIdcApplicationResult]
    def modify_redshift_idc_application(params = {}, options = {})
      request = build_request(:modify_redshift_idc_application, params)
      request.send_request(options)
    end

    # <p>Modifies a scheduled action. 
    #             </p>
    # @param [Hash, Types::ModifyScheduledActionMessage] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to modify. </p>
    # @option params [Types::ScheduledActionType] :target_action
    #   <p>A modified JSON format of the scheduled action. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [String] :schedule
    #   <p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format. 
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    # @option params [String] :iam_role
    #   <p>A different IAM role to assume to run the target action. 
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    # @option params [String] :scheduled_action_description
    #   <p>A modified description of the scheduled action. </p>
    # @option params [Time] :start_time
    #   <p>A modified start time of the scheduled action. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [Time] :end_time
    #   <p>A modified end time of the scheduled action. 
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    # @option params [Boolean] :enable
    #   <p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "String", # required
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: "String",
    #         target_reserved_node_offering_id: "String"
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     schedule: "String",
    #     iam_role: "String",
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false
    #   }
    #   options = {}
    #   response = client.modify_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action_name: "String",
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #         reserved_node_id: "String",
    #         target_reserved_node_offering_id: "String"
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     schedule: "String",
    #     iam_role: "String",
    #     scheduled_action_description: "String",
    #     state: "ACTIVE" # One of: ["ACTIVE", "DISABLED"],
    #     next_invocations: [Time.now],
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::ModifyScheduledActionOutput]
    def modify_scheduled_action(params = {}, options = {})
      request = build_request(:modify_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Modifies the number of days to retain snapshots in the destination Amazon Web Services Region after
    #             they are copied from the source Amazon Web Services Region. By default, this operation only changes the
    #             retention period of copied automated snapshots. The retention periods for both new and
    #             existing copied automated snapshots are updated with the new retention period. You can
    #             set the manual option to change only the retention periods of copied manual snapshots.
    #             If you set this option, only newly copied manual snapshots have the new retention
    #             period. </p>
    # @param [Hash, Types::ModifySnapshotCopyRetentionPeriodMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to change the retention
    #               period for either automated or manual snapshots that are copied to a destination Amazon Web Services Region.</p>
    #            <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    # @option params [Integer] :retention_period
    #   <p>The number of days to retain automated snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region.</p>
    #            <p>By default, this only changes the retention period of copied automated snapshots. </p>
    #            <p>If you decrease the retention period for automated snapshots that are copied to a
    #               destination Amazon Web Services Region, Amazon Redshift deletes any existing automated snapshots that were
    #               copied to the destination Amazon Web Services Region and that fall outside of the new retention
    #               period.</p>
    #            <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p>
    #            <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will
    #               have the new retention period. </p>
    #            <p>If you specify the value of -1 newly copied manual snapshots are retained
    #               indefinitely.</p>
    #            <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653
    #               for manual snapshots.</p>
    # @option params [Boolean] :manual
    #   <p>Indicates whether to apply the snapshot retention period to newly copied manual
    #               snapshots instead of automated snapshots.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     retention_period: 1, # required
    #     manual: false
    #   }
    #   options = {}
    #   response = client.modify_snapshot_copy_retention_period(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ModifySnapshotCopyRetentionPeriodResult]
    def modify_snapshot_copy_retention_period(params = {}, options = {})
      request = build_request(:modify_snapshot_copy_retention_period, params)
      request.send_request(options)
    end

    # <p>Modifies a snapshot schedule. Any schedule associated with a cluster is modified
    #             asynchronously.</p>
    # @param [Hash, Types::ModifySnapshotScheduleMessage] params
    # @option params [String] :schedule_identifier
    #   <p>A unique alphanumeric identifier of the schedule to modify.</p>
    # @option params [Array<String>] :schedule_definitions
    #   <p>An updated list of schedule definitions. A schedule definition is made up of schedule
    #               expressions, for example, "cron(30 12 *)" or "rate(12 hours)".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schedule_identifier: "String", # required
    #     schedule_definitions: ["String"], # required
    #   }
    #   options = {}
    #   response = client.modify_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedule_definitions: ["String"],
    #     schedule_identifier: "String",
    #     schedule_description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_invocations: [Time.now],
    #     associated_cluster_count: 1,
    #     associated_clusters: [
    #       {
    #         cluster_identifier: "String",
    #         schedule_association_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::ModifySnapshotScheduleOutput]
    def modify_snapshot_schedule(params = {}, options = {})
      request = build_request(:modify_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Modifies a usage limit in a cluster. 
    #             You can't modify the feature type or period of a usage limit.</p>
    # @param [Hash, Types::ModifyUsageLimitMessage] params
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to modify.</p>
    # @option params [Integer] :amount
    #   <p>The new limit amount. 
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    # @option params [String] :breach_action
    #   <p>The new action that Amazon Redshift takes when the limit is reached. 
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String", # required
    #     amount: 1,
    #     breach_action: "log" # One of: ["log", "emit-metric", "disable"]
    #   }
    #   options = {}
    #   response = client.modify_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit_id: "String",
    #     cluster_identifier: "String",
    #     feature_type: "spectrum" # One of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"],
    #     limit_type: "time" # One of: ["time", "data-scanned"],
    #     amount: 1,
    #     period: "daily" # One of: ["daily", "weekly", "monthly"],
    #     breach_action: "log" # One of: ["log", "emit-metric", "disable"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ModifyUsageLimitOutput]
    def modify_usage_limit(params = {}, options = {})
      request = build_request(:modify_usage_limit, params)
      request.send_request(options)
    end

    # <p>Pauses a cluster.</p>
    # @param [Hash, Types::PauseClusterInput] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be paused.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.pause_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::PauseClusterResult]
    def pause_cluster(params = {}, options = {})
      request = build_request(:pause_cluster, params)
      request.send_request(options)
    end

    # <p>Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of
    #             reserved node offerings. You can purchase one or more of the offerings. You can call the
    #                 <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved
    #             node offerings. You can call this API by providing a specific reserved node offering and
    #             the number of nodes you want to reserve. </p>
    #          <p>
    # For more information about reserved node offerings, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::PurchaseReservedNodeOfferingMessage] params
    # @option params [String] :reserved_node_offering_id
    #   <p>The unique identifier of the reserved node offering you want to purchase.</p>
    # @option params [Integer] :node_count
    #   <p>The number of reserved nodes that you want to purchase.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_node_offering_id: "String", # required
    #     node_count: 1
    #   }
    #   options = {}
    #   response = client.purchase_reserved_node_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_node: {
    #       reserved_node_id: "String",
    #       reserved_node_offering_id: "String",
    #       node_type: "String",
    #       start_time: Time.now,
    #       duration: 1,
    #       fixed_price: 1.0,
    #       usage_price: 1.0,
    #       currency_code: "String",
    #       node_count: 1,
    #       state: "String",
    #       offering_type: "String",
    #       recurring_charges: [
    #         {
    #           recurring_charge_amount: 1.0,
    #           recurring_charge_frequency: "String"
    #         }
    #       ],
    #       reserved_node_offering_type: "Regular" # One of: ["Regular", "Upgradable"]
    #     }
    #   }
    # @return [Types::PurchaseReservedNodeOfferingResult]
    def purchase_reserved_node_offering(params = {}, options = {})
      request = build_request(:purchase_reserved_node_offering, params)
      request.send_request(options)
    end

    # <p>Updates the resource policy for a specified resource.</p>
    # @param [Hash, Types::PutResourcePolicyMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource of which its resource policy is updated.</p>
    # @option params [String] :policy
    #   <p>The content of the resource policy being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     policy: "String", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_arn: "String",
    #       policy: "String"
    #     }
    #   }
    # @return [Types::PutResourcePolicyResult]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Reboots a cluster. This action is taken as soon as possible. It results in a
    #             momentary outage to the cluster, during which the cluster status is set to
    #                 <code>rebooting</code>. A cluster event is created when the reboot is completed. Any
    #             pending cluster modifications (see <a>ModifyCluster</a>) are applied at this
    #             reboot. 
    # For more information about managing clusters, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    # @param [Hash, Types::RebootClusterMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.reboot_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::RebootClusterResult]
    def reboot_cluster(params = {}, options = {})
      request = build_request(:reboot_cluster, params)
      request.send_request(options)
    end

    # <p>Registers a cluster or serverless namespace to the Amazon Web Services Glue Data Catalog.</p>
    # @param [Hash, Types::RegisterNamespaceInputMessage] params
    # @option params [Types::NamespaceIdentifierUnion] :namespace_identifier
    #   <p>The unique identifier of the cluster or 
    #               serverless namespace that you want to register. </p>
    # @option params [Array<String>] :consumer_identifiers
    #   <p>An array containing the ID of the consumer account 
    #               that you want to register the namespace to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_identifier: { # required
    #       # One of:
    #       serverless_identifier: {
    #         namespace_identifier: "String", # required
    #         workgroup_identifier: "String", # required
    #       },
    #       provisioned_identifier: {
    #         cluster_identifier: "String", # required
    #       }
    #     },
    #     consumer_identifiers: ["String"], # required
    #   }
    #   options = {}
    #   response = client.register_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Registering" # One of: ["Registering", "Deregistering"]
    #   }
    # @return [Types::RegisterNamespaceOutputMessage]
    def register_namespace(params = {}, options = {})
      request = build_request(:register_namespace, params)
      request.send_request(options)
    end

    # <p>From a datashare consumer account, rejects the specified datashare.</p>
    # @param [Hash, Types::RejectDataShareMessage] params
    # @option params [String] :data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_share_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.reject_data_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_share_arn: "String",
    #     producer_arn: "String",
    #     allow_publicly_accessible_consumers: false,
    #     data_share_associations: [
    #       {
    #         consumer_identifier: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"],
    #         consumer_region: "String",
    #         created_date: Time.now,
    #         status_change_date: Time.now,
    #         producer_allowed_writes: false,
    #         consumer_accepted_writes: false
    #       }
    #     ],
    #     managed_by: "String",
    #     data_share_type: "INTERNAL" # One of: ["INTERNAL"]
    #   }
    # @return [Types::RejectDataShareOutput]
    def reject_data_share(params = {}, options = {})
      request = build_request(:reject_data_share, params)
      request.send_request(options)
    end

    # <p>Sets one or more parameters of the specified parameter group to their default
    #             values and sets the source values of the parameters to "engine-default". To reset the
    #             entire parameter group specify the <i>ResetAllParameters</i> parameter.
    #             For parameter changes to take effect you must reboot any associated clusters. </p>
    # @param [Hash, Types::ResetClusterParameterGroupMessage] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the cluster parameter group to be reset.</p>
    # @option params [Boolean] :reset_all_parameters
    #   <p>If <code>true</code>, all parameters in the specified parameter group will be reset
    #               to their default values. </p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Array<Types::Parameter>] :parameters
    #   <p>An array of names of parameters to be reset. If
    #                   <i>ResetAllParameters</i> option is not used, then at least one
    #               parameter name must be supplied. </p>
    #            <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static" # One of: ["static", "dynamic"],
    #         is_modifiable: false,
    #         minimum_engine_version: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reset_cluster_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group_name: "String",
    #     parameter_group_status: "String"
    #   }
    # @return [Types::ResetClusterParameterGroupOutput]
    def reset_cluster_parameter_group(params = {}, options = {})
      request = build_request(:reset_cluster_parameter_group, params)
      request.send_request(options)
    end

    # <p>Changes the size of the cluster. You can change the cluster's type, or change the
    #             number or type of nodes. The default behavior is to use the elastic resize method. With
    #             an elastic resize, your cluster is available for read and write operations more quickly
    #             than with the classic resize method. </p>
    #          <p>Elastic resize operations have the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can only resize clusters of the following types:</p>
    #                <ul>
    #                   <li>
    #                      <p>dc2.large</p>
    #                   </li>
    #                   <li>
    #                      <p>dc2.8xlarge</p>
    #                   </li>
    #                   <li>
    #                      <p>ra3.large</p>
    #                   </li>
    #                   <li>
    #                      <p>ra3.xlplus</p>
    #                   </li>
    #                   <li>
    #                      <p>ra3.4xlarge</p>
    #                   </li>
    #                   <li>
    #                      <p>ra3.16xlarge</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>The type of nodes that you add must match the node type for the
    #                     cluster.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ResizeClusterInput] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier for the cluster to resize.</p>
    # @option params [String] :cluster_type
    #   <p>The new cluster type for the specified cluster.</p>
    # @option params [String] :node_type
    #   <p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>
    # @option params [Integer] :number_of_nodes
    #   <p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>
    # @option params [Boolean] :classic
    #   <p>A boolean value indicating whether the resize operation is using the classic resize
    #               process. If you don't provide this parameter or set the value to
    #               <code>false</code>, the resize type is elastic. </p>
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the reserved node.</p>
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String",
    #     number_of_nodes: 1,
    #     classic: false,
    #     reserved_node_id: "String",
    #     target_reserved_node_offering_id: "String"
    #   }
    #   options = {}
    #   response = client.resize_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ResizeClusterResult]
    def resize_cluster(params = {}, options = {})
      request = build_request(:resize_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting
    #             cluster with the same configuration as the original cluster from which the snapshot was
    #             created, except that the new cluster is created with the default cluster security and
    #             parameter groups. After Amazon Redshift creates the cluster, you can use the <a>ModifyCluster</a> API to associate a different security group and different
    #             parameter group with the restored cluster. If you are using a DS node type, you can also
    #             choose to change to another DS node type of the same size during restore.</p>
    #          <p>If you restore a cluster into a VPC, you must provide a cluster subnet group where
    #             you want the cluster restored.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #             you own in a Region from reaching or being reached from the internet through internet
    #             gateways and egress-only internet gateways. If a subnet group for a
    #             provisioned cluster is in an account with VPC BPA turned on, the following capabilities
    #             are blocked:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Restoring a public cluster</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private cluster to be public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the subnet group when there's at
    #                     least one public cluster within the group</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and
    #             subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    #          <p>
    # For more information about working with snapshots, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::RestoreFromClusterSnapshotMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster that will be created from restoring the
    #               snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    # @option params [String] :snapshot_identifier
    #   <p>The name of the snapshot from which to create the new cluster. This parameter isn't
    #               case sensitive. You must specify this parameter or <code>snapshotArn</code>, but not both.</p>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot associated with the message to restore from a cluster. You must specify
    #               this parameter or <code>snapshotIdentifier</code>, but not both.</p>
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The name of the cluster the source snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    # @option params [Integer] :port
    #   <p>The port number on which the cluster accepts connections.</p>
    #            <p>Default: The same port as the original cluster.</p>
    #            <p>Valid values: For clusters with DC2 nodes, must be within the range <code>1150</code>-<code>65535</code>. For clusters with ra3 nodes, must be 
    #               within the ranges <code>5431</code>-<code>5455</code> or <code>8191</code>-<code>8215</code>.</p>
    # @option params [String] :availability_zone
    #   <p>The Amazon EC2 Availability Zone in which to restore the cluster.</p>
    #            <p>Default: A random, system-chosen Availability Zone.</p>
    #            <p>Example: <code>us-east-2a</code>
    #            </p>
    # @option params [Boolean] :allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster. </p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [String] :cluster_subnet_group_name
    #   <p>The name of the subnet group where you want to cluster restored.</p>
    #            <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must
    #               provide subnet group name where you want the cluster restored.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #            <p>Default: false</p>
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Required if you are
    #               restoring a snapshot you do not own, optional if you own the snapshot.</p>
    # @option params [String] :hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    # @option params [String] :hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster. Don't specify the Elastic IP address for a publicly 
    #               accessible cluster with availability zone relocation turned on.</p>
    # @option params [String] :cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #            <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #            <p>Default: The default cluster security group for Amazon Redshift.</p>
    #            <p>Cluster security groups only apply to clusters outside of VPCs.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #            <p>Default: The default VPC security group is associated with the cluster.</p>
    #            <p>VPC security groups only apply to clusters in VPCs.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p> Default: The value selected for the cluster from which the snapshot was taken. For
    #               more information about the time blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    # @option params [Integer] :automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #            <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #            <p>Default: The value selected for the cluster from which the snapshot was
    #               taken.</p>
    #            <p>Constraints: Must be a value from 0 to 35.</p>
    # @option params [Integer] :manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #            <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that encrypts data in the cluster 
    #               restored from a shared snapshot. You can also provide 
    #               the key ID when you restore from an unencrypted snapshot to an encrypted cluster in 
    #               the same account. Additionally, you can specify a new KMS key ID when you restore from an encrypted 
    #               snapshot in the same account in order to change it. In that case, the restored cluster is encrypted 
    #               with the new KMS key ID.</p>
    # @option params [String] :node_type
    #   <p>The node type that the restored cluster will be provisioned with.</p>
    #            <p>If you have a DC instance type, you
    #               must restore into that same instance type and size. In other words, you can only restore
    #               a dc2.large node type into another dc2 type. For more information about node types, see 
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes">
    #                   About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #            <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #            <p>Default: false</p>
    # @option params [String] :additional_info
    #   <p>Reserved.</p>
    # @option params [Array<String>] :iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #            <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @option params [String] :maintenance_track_name
    #   <p>The name of the maintenance track for the restored cluster. When you take a snapshot,
    #               the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The
    #               snapshot might be on a different track than the cluster that was the source for the
    #               snapshot. For example, suppose that you take a snapshot of a cluster that is on the
    #               current track and then change the cluster to be on the trailing track. In this case, the
    #               snapshot and the source cluster are on different tracks.</p>
    # @option params [String] :snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    # @option params [Integer] :number_of_nodes
    #   <p>The number of nodes specified when provisioning the restored cluster.</p>
    # @option params [Boolean] :availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.</p>
    # @option params [String] :aqua_configuration_status
    #   <p>This parameter is retired. It does not set the AQUA configuration status. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified while it was restored from a snapshot.</p>
    # @option params [String] :reserved_node_id
    #   <p>The identifier of the target reserved node offering.</p>
    # @option params [String] :target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    # @option params [Boolean] :encrypted
    #   <p>Enables support for restoring an unencrypted snapshot to a cluster encrypted 
    #               with Key Management Service (KMS) and a customer managed key.</p>
    # @option params [Boolean] :manage_master_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the restored 
    #               cluster's admin credentials. If <code>ManageMasterPassword</code> is false or not set, 
    #               Amazon Redshift uses the admin credentials the cluster had at the time the snapshot was taken.</p>
    # @option params [String] :master_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. 
    #               You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the cluster. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    # @option params [Boolean] :multi_az
    #   <p>If true, the snapshot will be restored to a cluster deployed in two Availability Zones.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     snapshot_identifier: "String",
    #     snapshot_arn: "String",
    #     snapshot_cluster_identifier: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     allow_version_upgrade: false,
    #     cluster_subnet_group_name: "String",
    #     publicly_accessible: false,
    #     owner_account: "String",
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     elastic_ip: "String",
    #     cluster_parameter_group_name: "String",
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     kms_key_id: "String",
    #     node_type: "String",
    #     enhanced_vpc_routing: false,
    #     additional_info: "String",
    #     iam_roles: ["String"],
    #     maintenance_track_name: "String",
    #     snapshot_schedule_identifier: "String",
    #     number_of_nodes: 1,
    #     availability_zone_relocation: false,
    #     aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"],
    #     default_iam_role_arn: "String",
    #     reserved_node_id: "String",
    #     target_reserved_node_offering_id: "String",
    #     encrypted: false,
    #     manage_master_password: false,
    #     master_password_secret_kms_key_id: "String",
    #     ip_address_type: "String",
    #     multi_az: false
    #   }
    #   options = {}
    #   response = client.restore_from_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::RestoreFromClusterSnapshotResult]
    def restore_from_cluster_snapshot(params = {}, options = {})
      request = build_request(:restore_from_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a new table from a table in an Amazon Redshift cluster snapshot. You must
    #             create the new table within the Amazon Redshift cluster that the snapshot was taken
    #             from.</p>
    #          <p>You cannot use <code>RestoreTableFromClusterSnapshot</code> to restore a table with
    #             the same name as an existing table in an Amazon Redshift cluster. That is, you cannot
    #             overwrite an existing table in a cluster with a restored table. If you want to replace
    #             your original table with a new, restored table, then rename or drop your original table
    #             before you call <code>RestoreTableFromClusterSnapshot</code>. When you have renamed your
    #             original table, then you can pass the original name of the table as the
    #                 <code>NewTableName</code> parameter value in the call to
    #                 <code>RestoreTableFromClusterSnapshot</code>. This way, you can replace the original
    #             table with the table created from the snapshot.</p>
    #          <p>You can't use this operation to restore tables with 
    #             <a href="https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved">interleaved sort keys</a>.</p>
    # @param [Hash, Types::RestoreTableFromClusterSnapshotMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the Amazon Redshift cluster to restore the table to.</p>
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot to restore the table from. This snapshot must have
    #               been created from the Amazon Redshift cluster specified by the
    #                   <code>ClusterIdentifier</code> parameter.</p>
    # @option params [String] :source_database_name
    #   <p>The name of the source database that contains the table to restore from.</p>
    # @option params [String] :source_schema_name
    #   <p>The name of the source schema that contains the table to restore from. If you do
    #               not specify a <code>SourceSchemaName</code> value, the default is
    #               <code>public</code>.</p>
    # @option params [String] :source_table_name
    #   <p>The name of the source table to restore from.</p>
    # @option params [String] :target_database_name
    #   <p>The name of the database to restore the table to.</p>
    # @option params [String] :target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    # @option params [String] :new_table_name
    #   <p>The name of the table to create as a result of the current request.</p>
    # @option params [Boolean] :enable_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive. 
    #               If <code>true</code>, the names are case sensitive. 
    #               If <code>false</code> (default), the names are not case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     new_table_name: "String", # required
    #     enable_case_sensitive_identifier: false
    #   }
    #   options = {}
    #   response = client.restore_table_from_cluster_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_restore_status: {
    #       table_restore_request_id: "String",
    #       status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"],
    #       message: "String",
    #       request_time: Time.now,
    #       progress_in_mega_bytes: 1,
    #       total_data_in_mega_bytes: 1,
    #       cluster_identifier: "String",
    #       snapshot_identifier: "String",
    #       source_database_name: "String",
    #       source_schema_name: "String",
    #       source_table_name: "String",
    #       target_database_name: "String",
    #       target_schema_name: "String",
    #       new_table_name: "String"
    #     }
    #   }
    # @return [Types::RestoreTableFromClusterSnapshotResult]
    def restore_table_from_cluster_snapshot(params = {}, options = {})
      request = build_request(:restore_table_from_cluster_snapshot, params)
      request.send_request(options)
    end

    # <p>Resumes a paused cluster.</p>
    # @param [Hash, Types::ResumeClusterInput] params
    # @option params [String] :cluster_identifier
    #   <p>The identifier of the cluster to be resumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.resume_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ResumeClusterResult]
    def resume_cluster(params = {}, options = {})
      request = build_request(:resume_cluster, params)
      request.send_request(options)
    end

    # <p>Revokes an ingress rule in an Amazon Redshift security group for a previously authorized
    #             IP range or Amazon EC2 security group. To add an ingress rule, see <a>AuthorizeClusterSecurityGroupIngress</a>. 
    # For information about managing security groups, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the 
    # <i>Amazon Redshift Cluster Management Guide</i>. </p>
    # @param [Hash, Types::RevokeClusterSecurityGroupIngressMessage] params
    # @option params [String] :cluster_security_group_name
    #   <p>The name of the security Group from which to revoke the ingress rule.</p>
    # @option params [String] :cidrip
    #   <p>The IP range for which to revoke access. This range must be a valid Classless
    #               Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified,
    #                   <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be
    #               provided. </p>
    # @option params [String] :ec2_security_group_name
    #   <p>The name of the EC2 Security Group whose access is to be revoked. If
    #                   <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code>
    #               must also be provided and <code>CIDRIP</code> cannot be provided. </p>
    # @option params [String] :ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified in the
    #                   <code>EC2SecurityGroupName</code> parameter. The Amazon Web Services access key ID is not an
    #               acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified,
    #                   <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code>
    #               cannot be provided. </p>
    #            <p>Example: <code>111122223333</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_owner_id: "String"
    #   }
    #   options = {}
    #   response = client.revoke_cluster_security_group_ingress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_security_group: {
    #       cluster_security_group_name: "String",
    #       description: "String",
    #       ec2_security_groups: [
    #         {
    #           status: "String",
    #           ec2_security_group_name: "String",
    #           ec2_security_group_owner_id: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       ip_ranges: [
    #         {
    #           status: "String",
    #           cidrip: "String",
    #           tags: [
    #             {
    #               key: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::RevokeClusterSecurityGroupIngressResult]
    def revoke_cluster_security_group_ingress(params = {}, options = {})
      request = build_request(:revoke_cluster_security_group_ingress, params)
      request.send_request(options)
    end

    # <p>Revokes access to a cluster.</p>
    # @param [Hash, Types::RevokeEndpointAccessMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster to revoke access from.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID whose access is to be revoked.</p>
    # @option params [Array<String>] :vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers for which access is to be revoked.</p>
    # @option params [Boolean] :force
    #   <p>Indicates whether to force the revoke action. 
    #              If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String",
    #     account: "String",
    #     vpc_ids: ["String"],
    #     force: false
    #   }
    #   options = {}
    #   response = client.revoke_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grantor: "String",
    #     grantee: "String",
    #     cluster_identifier: "String",
    #     authorize_time: Time.now,
    #     cluster_status: "String",
    #     status: "Authorized" # One of: ["Authorized", "Revoking"],
    #     allowed_all_vp_cs: false,
    #     allowed_vp_cs: ["String"],
    #     endpoint_count: 1
    #   }
    # @return [Types::RevokeEndpointAccessOutput]
    def revoke_endpoint_access(params = {}, options = {})
      request = build_request(:revoke_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Removes the ability of the specified  Amazon Web Services account to restore the specified
    #             snapshot. If the account is currently restoring the snapshot, the restore will run to
    #             completion.</p>
    #          <p>
    # For more information about working with snapshots, go to 
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    # @param [Hash, Types::RevokeSnapshotAccessMessage] params
    # @option params [String] :snapshot_identifier
    #   <p>The identifier of the snapshot that the account can no longer access.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot associated with the message to revoke access.</p>
    # @option params [String] :snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    # @option params [String] :account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account that can no longer restore the specified
    #               snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_identifier: "String",
    #     snapshot_arn: "String",
    #     snapshot_cluster_identifier: "String",
    #     account_with_restore_access: "String", # required
    #   }
    #   options = {}
    #   response = client.revoke_snapshot_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       snapshot_identifier: "String",
    #       cluster_identifier: "String",
    #       snapshot_create_time: Time.now,
    #       status: "String",
    #       port: 1,
    #       availability_zone: "String",
    #       cluster_create_time: Time.now,
    #       master_username: "String",
    #       cluster_version: "String",
    #       engine_full_version: "String",
    #       snapshot_type: "String",
    #       node_type: "String",
    #       number_of_nodes: 1,
    #       db_name: "String",
    #       vpc_id: "String",
    #       encrypted: false,
    #       kms_key_id: "String",
    #       encrypted_with_hsm: false,
    #       accounts_with_restore_access: [
    #         {
    #           account_id: "String",
    #           account_alias: "String"
    #         }
    #       ],
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       source_region: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       restorable_node_types: ["String"],
    #       enhanced_vpc_routing: false,
    #       maintenance_track_name: "String",
    #       manual_snapshot_retention_period: 1,
    #       manual_snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       snapshot_arn: "String"
    #     }
    #   }
    # @return [Types::RevokeSnapshotAccessResult]
    def revoke_snapshot_access(params = {}, options = {})
      request = build_request(:revoke_snapshot_access, params)
      request.send_request(options)
    end

    # <p>Rotates the encryption keys for a cluster.</p>
    # @param [Hash, Types::RotateEncryptionKeyMessage] params
    # @option params [String] :cluster_identifier
    #   <p>The unique identifier of the cluster that you want to rotate the encryption keys
    #               for.</p>
    #            <p>Constraints: Must be the name of valid cluster that has encryption
    #               enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.rotate_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_identifier: "String",
    #       node_type: "String",
    #       cluster_status: "String",
    #       cluster_availability_status: "String",
    #       modify_status: "String",
    #       master_username: "String",
    #       db_name: "String",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       cluster_create_time: Time.now,
    #       automated_snapshot_retention_period: 1,
    #       manual_snapshot_retention_period: 1,
    #       cluster_security_groups: [
    #         {
    #           cluster_security_group_name: "String",
    #           status: "String"
    #         }
    #       ],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       cluster_parameter_groups: [
    #         {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           cluster_parameter_status_list: [
    #             {
    #               parameter_name: "String",
    #               parameter_apply_status: "String",
    #               parameter_apply_error_description: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       cluster_subnet_group_name: "String",
    #       vpc_id: "String",
    #       availability_zone: "String",
    #       preferred_maintenance_window: "String",
    #       pending_modified_values: {
    #         master_user_password: "SensitiveString",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_type: "String",
    #         cluster_version: "String",
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "String",
    #         publicly_accessible: false,
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encryption_type: "String"
    #       },
    #       cluster_version: "String",
    #       allow_version_upgrade: false,
    #       number_of_nodes: 1,
    #       publicly_accessible: false,
    #       encrypted: false,
    #       restore_status: {
    #         status: "String",
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         snapshot_size_in_mega_bytes: 1,
    #         progress_in_mega_bytes: 1,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1
    #       },
    #       data_transfer_progress: {
    #         status: "String",
    #         current_rate_in_mega_bytes_per_second: 1.0,
    #         total_data_in_mega_bytes: 1,
    #         data_transferred_in_mega_bytes: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         elapsed_time_in_seconds: 1
    #       },
    #       hsm_status: {
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         status: "String"
    #       },
    #       cluster_snapshot_copy_status: {
    #         destination_region: "String",
    #         retention_period: 1,
    #         manual_snapshot_retention_period: 1,
    #         snapshot_copy_grant_name: "String"
    #       },
    #       cluster_public_key: "String",
    #       cluster_nodes: [
    #         {
    #           node_role: "String",
    #           private_ip_address: "String",
    #           public_ip_address: "String"
    #         }
    #       ],
    #       elastic_ip_status: {
    #         elastic_ip: "String",
    #         status: "String"
    #       },
    #       cluster_revision_number: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       kms_key_id: "String",
    #       enhanced_vpc_routing: false,
    #       iam_roles: [
    #         {
    #           iam_role_arn: "String",
    #           apply_status: "String"
    #         }
    #       ],
    #       pending_actions: ["String"],
    #       maintenance_track_name: "String",
    #       elastic_resize_number_of_node_options: "String",
    #       deferred_maintenance_windows: [
    #         {
    #           defer_maintenance_identifier: "String",
    #           defer_maintenance_start_time: Time.now,
    #           defer_maintenance_end_time: Time.now
    #         }
    #       ],
    #       snapshot_schedule_identifier: "String",
    #       snapshot_schedule_state: "MODIFYING" # One of: ["MODIFYING", "ACTIVE", "FAILED"],
    #       expected_next_snapshot_schedule_time: Time.now,
    #       expected_next_snapshot_schedule_time_status: "String",
    #       next_maintenance_window_start_time: Time.now,
    #       resize_info: {
    #         resize_type: "String",
    #         allow_cancel_resize: false
    #       },
    #       availability_zone_relocation_status: "String",
    #       cluster_namespace_arn: "String",
    #       total_storage_capacity_in_mega_bytes: 1,
    #       aqua_configuration: {
    #         aqua_status: "enabled" # One of: ["enabled", "disabled", "applying"],
    #         aqua_configuration_status: "enabled" # One of: ["enabled", "disabled", "auto"]
    #       },
    #       default_iam_role_arn: "String",
    #       reserved_node_exchange_status: {
    #         reserved_node_exchange_request_id: "String",
    #         status: "REQUESTED" # One of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"],
    #         request_time: Time.now,
    #         source_reserved_node_id: "String",
    #         source_reserved_node_type: "String",
    #         source_reserved_node_count: 1,
    #         target_reserved_node_offering_id: "String",
    #         target_reserved_node_type: "String",
    #         target_reserved_node_count: 1
    #       },
    #       custom_domain_name: "String",
    #       custom_domain_certificate_arn: "String",
    #       custom_domain_certificate_expiry_date: Time.now,
    #       master_password_secret_arn: "String",
    #       master_password_secret_kms_key_id: "String",
    #       ip_address_type: "String",
    #       multi_az: "String",
    #       multi_az_secondary: {
    #         availability_zone: "String",
    #         cluster_nodes: [
    #           {
    #             node_role: "String",
    #             private_ip_address: "String",
    #             public_ip_address: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::RotateEncryptionKeyResult]
    def rotate_encryption_key(params = {}, options = {})
      request = build_request(:rotate_encryption_key, params)
      request.send_request(options)
    end

    # <p>Updates the status of a partner integration.</p>
    # @param [Hash, Types::UpdatePartnerStatusInputMessage] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration status is being updated.</p>
    # @option params [String] :database_name
    #   <p>The name of the database whose partner integration status is being updated.</p>
    # @option params [String] :partner_name
    #   <p>The name of the partner whose integration status is being updated.</p>
    # @option params [String] :status
    #   <p>The value of the updated status.</p>
    # @option params [String] :status_message
    #   <p>The status message provided by the partner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "PartnerIntegrationAccountId", # required
    #     cluster_identifier: "PartnerIntegrationClusterIdentifier", # required
    #     database_name: "PartnerIntegrationDatabaseName", # required
    #     partner_name: "PartnerIntegrationPartnerName", # required
    #     status: "Active" # One of: ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"], # required
    #     status_message: "PartnerIntegrationStatusMessage"
    #   }
    #   options = {}
    #   response = client.update_partner_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "PartnerIntegrationDatabaseName",
    #     partner_name: "PartnerIntegrationPartnerName"
    #   }
    # @return [Types::UpdatePartnerStatusOutput]
    def update_partner_status(params = {}, options = {})
      request = build_request(:update_partner_status, params)
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
      context[:gem_name] = 'aws-sdk-redshift'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        cluster_available: Waiters::ClusterAvailable,
        cluster_deleted: Waiters::ClusterDeleted,
        cluster_restored: Waiters::ClusterRestored,
        snapshot_available: Waiters::SnapshotAvailable
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
