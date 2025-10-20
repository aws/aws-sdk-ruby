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
require 'aws-sdk-core/plugins/rest_xml_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Route53
  # An API client for Aws::Route53.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSDnsV20130401
    @identifier = :route53

    add_plugin(::Aws::Route53::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestXmlProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Route53::EndpointProvider)
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

    # <p>Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC. This
    # 			operation changes the KSK status to <code>ACTIVE</code>.</p>
    # @param [Hash, Types::ActivateKeySigningKeyRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK). <code>Name</code> can include
    #   			numbers, letters, and underscores (_). <code>Name</code> must be unique for each
    #   			key-signing key in the same hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     name: "SigningKeyName", # required
    #   }
    #   options = {}
    #   response = client.activate_key_signing_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::ActivateKeySigningKeyResponse]
    def activate_key_signing_key(params = {}, options = {})
      request = build_request(:activate_key_signing_key, params)
      request.send_request(options)
    end

    # <p>Associates an Amazon VPC with a private hosted zone. </p>
    #          <important>
    #             <p>To perform the association, the VPC and the private hosted zone must already
    # 				exist. You can't convert a public hosted zone into a private hosted zone.</p>
    #          </important>
    #          <note>
    #             <p>If you want to associate a VPC that was created by using one Amazon Web Services account with a private hosted zone that was created by using a
    # 				different account, the Amazon Web Services account that created the private hosted
    # 				zone must first submit a <code>CreateVPCAssociationAuthorization</code> request.
    # 				Then the account that created the VPC must submit an
    # 					<code>AssociateVPCWithHostedZone</code> request.</p>
    #          </note>
    #          <note>
    #             <p>When granting access, the hosted zone and the Amazon VPC must belong to
    # 				the same partition. A partition is a group of Amazon Web Services Regions. Each
    # 					Amazon Web Services account is scoped to one partition.</p>
    #             <p>The following are the supported partitions:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-cn</code> - China Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    #                </li>
    #             </ul>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::AssociateVPCWithHostedZoneRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to associate an Amazon VPC
    #   			with.</p>
    #            <p>Note that you can't associate a VPC with a hosted zone that doesn't have an existing
    #   			VPC association.</p>
    # @option params [Types::VPC] :vpc
    #   <p>A complex type that contains information about the VPC that you want to associate with
    #   			a private hosted zone.</p>
    # @option params [String] :comment
    #   <p>
    #               <i>Optional:</i> A comment about the association request.</p>
    # @example To associate a VPC with a hosted zone
    #   # The following example associates the VPC with ID vpc-1a2b3c4d with the hosted zone with ID Z3M3LMPEXAMPLE.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     vpc: {
    #       vpc_id: "vpc-1a2b3c4d",
    #       vpc_region: us-east-2
    #     },
    #     comment: ""
    #   }
    #   options = {}
    #   response = client.associate_vpc_with_hosted_zone(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       status: INSYNC,
    #       comment: "",
    #       submitted_at: Time.parse("2017-01-31T01:36:41.958Z"),
    #       id: "/change/C3HC6WDB2UANE2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     },
    #     comment: "AssociateVPCComment"
    #   }
    #   options = {}
    #   response = client.associate_vpc_with_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::AssociateVPCWithHostedZoneResponse]
    def associate_vpc_with_hosted_zone(params = {}, options = {})
      request = build_request(:associate_vpc_with_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Creates, changes, or deletes CIDR blocks within a collection. Contains authoritative
    # 			IP information mapping blocks to one or multiple locations.</p>
    #          <p>A change request can update multiple locations in a collection at a time, which is
    # 			helpful if you want to move one or more CIDR blocks from one location to another in one
    # 			transaction, without downtime. </p>
    #          <p>
    #             <b>Limits</b>
    #          </p>
    #          <p>The max number of CIDR blocks included in the request is 1000. As a result, big updates
    # 			require multiple API calls.</p>
    #          <p>
    #             <b> PUT and DELETE_IF_EXISTS</b>
    #          </p>
    #          <p>Use <code>ChangeCidrCollection</code> to perform the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PUT</code>: Create a CIDR block within the specified collection.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code> DELETE_IF_EXISTS</code>: Delete an existing CIDR block from the
    # 					collection.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ChangeCidrCollectionRequest] params
    # @option params [String] :id
    #   <p>The UUID of the CIDR collection to update.</p>
    # @option params [Integer] :collection_version
    #   <p>A sequential counter that Amazon Route 53 sets to 1 when you create a
    #   			collection and increments it by 1 each time you update the collection.</p>
    #            <p>We recommend that you use <code>ListCidrCollection</code> to get the current value of
    #   				<code>CollectionVersion</code> for the collection that you want to update, and then
    #   			include that value with the change request. This prevents Route 53 from
    #   			overwriting an intervening update: </p>
    #            <ul>
    #               <li>
    #                  <p>If the value in the request matches the value of
    #   						<code>CollectionVersion</code> in the collection, Route 53 updates
    #   					the collection.</p>
    #               </li>
    #               <li>
    #                  <p>If the value of <code>CollectionVersion</code> in the collection is greater
    #   					than the value in the request, the collection was changed after you got the
    #   					version number. Route 53 does not update the collection, and it
    #   					returns a <code>CidrCollectionVersionMismatch</code> error. </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::CidrCollectionChange>] :changes
    #   <p> Information about changes to a CIDR collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #     collection_version: 1,
    #     changes: [ # required
    #       {
    #         location_name: "CidrLocationNameDefaultNotAllowed", # required
    #         action: "PUT" # One of: ["PUT", "DELETE_IF_EXISTS"], # required
    #         cidr_list: ["Cidr"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.change_cidr_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ChangeId", # required
    #   }
    # @return [Types::ChangeCidrCollectionResponse]
    def change_cidr_collection(params = {}, options = {})
      request = build_request(:change_cidr_collection, params)
      request.send_request(options)
    end

    # <p>Creates, changes, or deletes a resource record set, which contains authoritative DNS
    # 			information for a specified domain name or subdomain name. For example, you can use
    # 				<code>ChangeResourceRecordSets</code> to create a resource record set that routes
    # 			traffic for test.example.com to a web server that has an IP address of
    # 			192.0.2.44.</p>
    #          <p>
    #             <b>Deleting Resource Record Sets</b>
    #          </p>
    #          <p>To delete a resource record set, you must specify all the same values that you
    # 			specified when you created it.</p>
    #          <p>
    #             <b>Change Batches and Transactional Changes</b>
    #          </p>
    #          <p>The request body must include a document with a
    # 				<code>ChangeResourceRecordSetsRequest</code> element. The request body contains a
    # 			list of change items, known as a change batch. Change batches are considered
    # 			transactional changes. Route 53 validates the changes in the request and then either
    # 			makes all or none of the changes in the change batch request. This ensures that DNS
    # 			routing isn't adversely affected by partial changes to the resource record sets in a
    # 			hosted zone. </p>
    #          <p>For example, suppose a change batch request contains two changes: it deletes the
    # 				<code>CNAME</code> resource record set for www.example.com and creates an alias
    # 			resource record set for www.example.com. If validation for both records succeeds, Route
    # 			53 deletes the first resource record set and creates the second resource record set in a
    # 			single operation. If validation for either the <code>DELETE</code> or the
    # 				<code>CREATE</code> action fails, then the request is canceled, and the original
    # 				<code>CNAME</code> record continues to exist.</p>
    #          <note>
    #             <p>If you try to delete the same resource record set more than once in a single
    # 				change batch, Route 53 returns an <code>InvalidChangeBatch</code> error.</p>
    #          </note>
    #          <p>
    #             <b>Traffic Flow</b>
    #          </p>
    #          <p>To create resource record sets for complex routing configurations, use either the
    # 			traffic flow visual editor in the Route 53 console or the API actions for traffic
    # 			policies and traffic policy instances. Save the configuration as a traffic policy, then
    # 			associate the traffic policy with one or more domain names (such as example.com) or
    # 			subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted
    # 			zones. You can roll back the updates if the new configuration isn't performing as
    # 			expected. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html">Using Traffic Flow to Route
    # 				DNS Traffic</a> in the <i>Amazon Route 53 Developer
    # 			Guide</i>.</p>
    #          <p>
    #             <b>Create, Delete, and Upsert</b>
    #          </p>
    #          <p>Use <code>ChangeResourceRecordsSetsRequest</code> to perform the following
    # 			actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CREATE</code>: Creates a resource record set that has the specified
    # 					values.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DELETE</code>: Deletes an existing resource record set that has the
    # 					specified values.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UPSERT</code>: If a resource set doesn't exist, Route 53 creates it. If a resource
    # 					set exists Route 53 updates it with the values in the request. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Syntaxes for Creating, Updating, and Deleting Resource Record
    # 				Sets</b>
    #          </p>
    #          <p>The syntax for a request depends on the type of resource record set that you want to
    # 			create, delete, or update, such as weighted, alias, or failover. The XML elements in
    # 			your request must appear in the order listed in the syntax. </p>
    #          <p>For an example for each type of resource record set, see "Examples."</p>
    #          <p>Don't refer to the syntax in the "Parameter Syntax" section, which includes
    # 			all of the elements for every kind of resource record set that you can create, delete,
    # 			or update by using <code>ChangeResourceRecordSets</code>. </p>
    #          <p>
    #             <b>Change Propagation to Route 53 DNS Servers</b>
    #          </p>
    #          <p>When you submit a <code>ChangeResourceRecordSets</code> request, Route 53 propagates your
    # 			changes to all of the Route 53 authoritative DNS servers managing the hosted zone. While
    # 			your changes are propagating, <code>GetChange</code> returns a status of
    # 				<code>PENDING</code>. When propagation is complete, <code>GetChange</code> returns a
    # 			status of <code>INSYNC</code>. Changes generally propagate to all Route 53 name servers
    # 			managing the hosted zone within 60 seconds. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html">GetChange</a>.</p>
    #          <p>
    #             <b>Limits on ChangeResourceRecordSets Requests</b>
    #          </p>
    #          <p>For information about the limits on a <code>ChangeResourceRecordSets</code> request,
    # 			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
    # @param [Hash, Types::ChangeResourceRecordSetsRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that contains the resource record sets that you want to
    #   			change.</p>
    # @option params [Types::ChangeBatch] :change_batch
    #   <p>A complex type that contains an optional comment and the <code>Changes</code>
    #   			element.</p>
    # @example To create an alias resource record set
    #   # The following example creates an alias resource record set that routes traffic to a CloudFront distribution.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "CloudFront distribution for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             alias_target: {
    #               hosted_zone_id: "Z2FDTNDATAQYW2",
    #               dns_name: "d123rk29d0stfj.cloudfront.net",
    #               evaluate_target_health: false
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "CloudFront distribution for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create failover alias resource record sets
    #   # The following example creates primary and secondary failover alias resource record sets that route traffic to ELB load balancers. Traffic is generally routed to the primary resource, in the Ohio region. If that resource is unavailable, traffic is routed to the secondary resource, in the Oregon region.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Failover alias configuration for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Ohio region",
    #             failover: PRIMARY,
    #             alias_target: {
    #               hosted_zone_id: "Z3AADJGX6KTTL2",
    #               dns_name: "example-com-123456789.us-east-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Oregon region",
    #             failover: SECONDARY,
    #             alias_target: {
    #               hosted_zone_id: "Z1H1FL5HABSF5",
    #               dns_name: "example-com-987654321.us-west-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Failover alias configuration for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create failover resource record sets
    #   # The following example creates primary and secondary failover resource record sets that route traffic to EC2 instances. Traffic is generally routed to the primary resource, in the Ohio region. If that resource is unavailable, traffic is routed to the secondary resource, in the Oregon region.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Failover configuration for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Ohio region",
    #             failover: PRIMARY,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.44"
    #               }
    #             ],
    #             health_check_id: "abcdef11-2222-3333-4444-555555fedcba"
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Oregon region",
    #             failover: SECONDARY,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.45"
    #               }
    #             ],
    #             health_check_id: "abcdef66-7777-8888-9999-000000fedcba"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Failover configuration for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create geolocation alias resource record sets
    #   # The following example creates four geolocation alias resource record sets that route traffic to ELB load balancers. Traffic is routed to one of four IP addresses, for North America (NA), for South America (SA), for Europe (EU), and for all other locations (*).
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Geolocation alias configuration for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "North America",
    #             geo_location: {
    #               continent_code: "NA"
    #             },
    #             alias_target: {
    #               hosted_zone_id: "Z3AADJGX6KTTL2",
    #               dns_name: "example-com-123456789.us-east-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "South America",
    #             geo_location: {
    #               continent_code: "SA"
    #             },
    #             alias_target: {
    #               hosted_zone_id: "Z2P70J7HTTTPLU",
    #               dns_name: "example-com-234567890.sa-east-1.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Europe",
    #             geo_location: {
    #               continent_code: "EU"
    #             },
    #             alias_target: {
    #               hosted_zone_id: "Z215JYRZR1TBD5",
    #               dns_name: "example-com-234567890.eu-central-1.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Other locations",
    #             geo_location: {
    #               country_code: "*"
    #             },
    #             alias_target: {
    #               hosted_zone_id: "Z1LMS91P8CMLE5",
    #               dns_name: "example-com-234567890.ap-southeast-1.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Geolocation alias configuration for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create geolocation resource record sets
    #   # The following example creates four geolocation resource record sets that use IPv4 addresses to route traffic to resources such as web servers running on EC2 instances. Traffic is routed to one of four IP addresses, for North America (NA), for South America (SA), for Europe (EU), and for all other locations (*).
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Geolocation configuration for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "North America",
    #             geo_location: {
    #               continent_code: "NA"
    #             },
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.44"
    #               }
    #             ]
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "South America",
    #             geo_location: {
    #               continent_code: "SA"
    #             },
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.45"
    #               }
    #             ]
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Europe",
    #             geo_location: {
    #               continent_code: "EU"
    #             },
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.46"
    #               }
    #             ]
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Other locations",
    #             geo_location: {
    #               country_code: "*"
    #             },
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.47"
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Geolocation configuration for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create latency alias resource record sets
    #   # The following example creates two latency alias resource record sets that route traffic for example.com to ELB load balancers. Requests are routed either to the Ohio region or the Oregon region, depending on the latency between the user and those regions.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "ELB load balancers for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Ohio region",
    #             region: us-east-2,
    #             alias_target: {
    #               hosted_zone_id: "Z3AADJGX6KTTL2",
    #               dns_name: "example-com-123456789.us-east-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Oregon region",
    #             region: us-west-2,
    #             alias_target: {
    #               hosted_zone_id: "Z1H1FL5HABSF5",
    #               dns_name: "example-com-987654321.us-west-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "ELB load balancers for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create latency resource record sets
    #   # The following example creates two latency resource record sets that route traffic to EC2 instances. Traffic for example.com is routed either to the Ohio region or the Oregon region, depending on the latency between the user and those regions.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "EC2 instances for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Ohio region",
    #             region: us-east-2,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.44"
    #               }
    #             ],
    #             health_check_id: "abcdef11-2222-3333-4444-555555fedcba"
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Oregon region",
    #             region: us-west-2,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.45"
    #               }
    #             ],
    #             health_check_id: "abcdef66-7777-8888-9999-000000fedcba"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "EC2 instances for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create a basic resource record set
    #   # The following example creates a resource record set that routes Internet traffic to a resource with an IP address of 192.0.2.44.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Web server for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.44"
    #               }
    #             ]
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Web server for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create weighted alias resource record sets
    #   # The following example creates two weighted alias resource record sets that route traffic to ELB load balancers. The resource with a Weight of 100 will get 1/3rd of traffic (100/100+200), and the other resource will get the rest of the traffic for example.com.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "ELB load balancers for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Ohio region",
    #             weight: 100,
    #             alias_target: {
    #               hosted_zone_id: "Z3AADJGX6KTTL2",
    #               dns_name: "example-com-123456789.us-east-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Oregon region",
    #             weight: 200,
    #             alias_target: {
    #               hosted_zone_id: "Z1H1FL5HABSF5",
    #               dns_name: "example-com-987654321.us-west-2.elb.amazonaws.com ",
    #               evaluate_target_health: true
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "ELB load balancers for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example To create weighted resource record sets
    #   # The following example creates two weighted resource record sets. The resource with a Weight of 100 will get 1/3rd of traffic (100/100+200), and the other resource will get the rest of the traffic for example.com.
    #   params = {
    #     hosted_zone_id: "Z3M3LMPEXAMPLE",
    #     change_batch: {
    #       comment: "Web servers for example.com",
    #       changes: [
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Seattle data center",
    #             weight: 100,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.44"
    #               }
    #             ],
    #             health_check_id: "abcdef11-2222-3333-4444-555555fedcba"
    #           }
    #         },
    #         {
    #           action: CREATE,
    #           resource_record_set: {
    #             name: "example.com",
    #             type: A,
    #             set_identifier: "Portland data center",
    #             weight: 200,
    #             ttl: 60,
    #             resource_records: [
    #               {
    #                 value: "192.0.2.45"
    #               }
    #             ],
    #             health_check_id: "abcdef66-7777-8888-9999-000000fedcba"
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    #   response.to_h #=>
    #   {
    #     change_info: {
    #       comment: "Web servers for example.com",
    #       id: "/change/C2682N5HXP0BZ4",
    #       status: PENDING,
    #       submitted_at: Time.parse("2017-02-10T01:36:41.958Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     change_batch: { # required
    #       comment: "ResourceDescription",
    #       changes: [ # required
    #         {
    #           action: "CREATE" # One of: ["CREATE", "DELETE", "UPSERT"], # required
    #           resource_record_set: { # required
    #             name: "DNSName", # required
    #             type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #             set_identifier: "ResourceRecordSetIdentifier",
    #             weight: 1,
    #             region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-north-1", "cn-northwest-1", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "ap-southeast-7", "us-gov-east-1", "us-gov-west-1", "ap-east-2", "ap-southeast-6"],
    #             geo_location: {
    #               continent_code: "GeoLocationContinentCode",
    #               country_code: "GeoLocationCountryCode",
    #               subdivision_code: "GeoLocationSubdivisionCode"
    #             },
    #             failover: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #             multi_value_answer: false,
    #             ttl: 1,
    #             resource_records: [
    #               {
    #                 value: "RData", # required
    #               }
    #             ],
    #             alias_target: {
    #               hosted_zone_id: "ResourceId", # required
    #               dns_name: "DNSName", # required
    #               evaluate_target_health: false, # required
    #             },
    #             health_check_id: "HealthCheckId",
    #             traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #             cidr_routing_config: {
    #               collection_id: "UUID", # required
    #               location_name: "CidrLocationNameDefaultAllowed", # required
    #             },
    #             geo_proximity_location: {
    #               aws_region: "AWSRegion",
    #               local_zone_group: "LocalZoneGroup",
    #               coordinates: {
    #                 latitude: "Latitude", # required
    #                 longitude: "Longitude", # required
    #               },
    #               bias: 1
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.change_resource_record_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::ChangeResourceRecordSetsResponse]
    def change_resource_record_sets(params = {}, options = {})
      request = build_request(:change_resource_record_sets, params)
      request.send_request(options)
    end

    # <p>Adds, edits, or deletes tags for a health check or a hosted zone.</p>
    #          <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    # @param [Hash, Types::ChangeTagsForResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_id
    #   <p>The ID of the resource for which you want to add, change, or delete tags.</p>
    # @option params [Array<Types::Tag>] :add_tags
    #   <p>A complex type that contains a list of the tags that you want to add to the specified
    #   			health check or hosted zone and/or the tags that you want to edit <code>Value</code>
    #   			for.</p>
    #            <p>You can add a maximum of 10 tags to a health check or a hosted zone.</p>
    # @option params [Array<String>] :remove_tag_keys
    #   <p>A complex type that contains a list of the tags that you want to delete from the
    #   			specified health check or hosted zone. You can specify up to 10 keys.</p>
    # @example To add or remove tags from a hosted zone or health check
    #   # The following example adds two tags and removes one tag from the hosted zone with ID Z3M3LMPEXAMPLE.
    #   params = {
    #     resource_type: hostedzone,
    #     resource_id: "Z3M3LMPEXAMPLE",
    #     add_tags: [
    #       {
    #         key: "apex",
    #         value: "3874"
    #       },
    #       {
    #         key: "acme",
    #         value: "4938"
    #       }
    #     ],
    #     remove_tag_keys: [
    #       "Nadir"
    #     ]
    #   }
    #   options = {}
    #   response = client.change_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "healthcheck" # One of: ["healthcheck", "hostedzone"], # required
    #     resource_id: "TagResourceId", # required
    #     add_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     remove_tag_keys: ["TagKey"]
    #   }
    #   options = {}
    #   response = client.change_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ChangeTagsForResourceResponse]
    def change_tags_for_resource(params = {}, options = {})
      request = build_request(:change_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a CIDR collection in the current Amazon Web Services account.</p>
    # @param [Hash, Types::CreateCidrCollectionRequest] params
    # @option params [String] :name
    #   <p>A unique identifier for the account that can be used to reference the collection from
    #   			other API calls.</p>
    # @option params [String] :caller_reference
    #   <p>A client-specific token that allows requests to be securely retried so that the
    #   			intended outcome will only occur once, retries receive a similar response, and there are
    #   			no additional edge cases to handle.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CollectionName", # required
    #     caller_reference: "CidrNonce", # required
    #   }
    #   options = {}
    #   response = client.create_cidr_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection: {
    #       arn: "ARN",
    #       id: "UUID",
    #       name: "CollectionName",
    #       version: 1
    #     },
    #     location: "ResourceURI"
    #   }
    # @return [Types::CreateCidrCollectionResponse]
    def create_cidr_collection(params = {}, options = {})
      request = build_request(:create_cidr_collection, params)
      request.send_request(options)
    end

    # <p>Creates a new health check.</p>
    #          <p>For information about adding health checks to resource record sets, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId">HealthCheckId</a> in <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>. </p>
    #          <p>
    #             <b>ELB Load Balancers</b>
    #          </p>
    #          <p>If you're registering EC2 instances with an Elastic Load Balancing (ELB) load
    # 			balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you
    # 			register an EC2 instance with a load balancer, you configure settings for an ELB health
    # 			check, which performs a similar function to a Route 53 health check.</p>
    #          <p>
    #             <b>Private Hosted Zones</b>
    #          </p>
    #          <p>You can associate health checks with failover resource record sets in a private hosted
    # 			zone. Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>Route 53 health checkers are outside the VPC. To check the health of an
    # 					endpoint within a VPC by IP address, you must assign a public IP address to the
    # 					instance in the VPC.</p>
    #             </li>
    #             <li>
    #                <p>You can configure a health checker to check the health of an external resource
    # 					that the instance relies on, such as a database server.</p>
    #             </li>
    #             <li>
    #                <p>You can create a CloudWatch metric, associate an alarm with the metric, and
    # 					then create a health check that is based on the state of the alarm. For example,
    # 					you might create a CloudWatch metric that checks the status of the Amazon EC2
    # 						<code>StatusCheckFailed</code> metric, add an alarm to the metric, and then
    # 					create a health check that is based on the state of the alarm. For information
    # 					about creating CloudWatch metrics and alarms by using the CloudWatch console,
    # 					see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html">Amazon
    # 						CloudWatch User Guide</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateHealthCheckRequest] params
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request and that allows you to retry a failed
    #   				<code>CreateHealthCheck</code> request without the risk of creating two identical
    #   			health checks:</p>
    #            <ul>
    #               <li>
    #                  <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> and settings as a previous request, and if the
    #   					health check doesn't exist, Amazon Route 53 creates the health check. If the
    #   					health check does exist, Route 53 returns the settings for the existing health
    #   					check.</p>
    #               </li>
    #               <li>
    #                  <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> as a deleted health check, regardless of the
    #   					settings, Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> as an existing health check but with different
    #   					settings, Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>If you send a <code>CreateHealthCheck</code> request with a unique
    #   						<code>CallerReference</code> but settings identical to an existing health
    #   					check, Route 53 creates the health check.</p>
    #               </li>
    #            </ul>
    #            <p> Route 53 does not store the <code>CallerReference</code> for a deleted health check indefinitely. 
    #   			The <code>CallerReference</code> for a deleted health check will be deleted after a number of days.</p>
    # @option params [Types::HealthCheckConfig] :health_check_config
    #   <p>A complex type that contains settings for a new health check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     caller_reference: "HealthCheckNonce", # required
    #     health_check_config: { # required
    #       ip_address: "IPAddress",
    #       port: 1,
    #       type: "HTTP" # One of: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"], # required
    #       resource_path: "ResourcePath",
    #       fully_qualified_domain_name: "FullyQualifiedDomainName",
    #       search_string: "SearchString",
    #       request_interval: 1,
    #       failure_threshold: 1,
    #       measure_latency: false,
    #       inverted: false,
    #       disabled: false,
    #       health_threshold: 1,
    #       child_health_checks: ["HealthCheckId"],
    #       enable_sni: false,
    #       regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #       alarm_identifier: {
    #         region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #         name: "AlarmName", # required
    #       },
    #       insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #       routing_control_arn: "RoutingControlArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check: { # required
    #       id: "HealthCheckId", # required
    #       caller_reference: "HealthCheckNonce", # required
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       },
    #       health_check_config: { # required
    #         ip_address: "IPAddress",
    #         port: 1,
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"], # required
    #         resource_path: "ResourcePath",
    #         fully_qualified_domain_name: "FullyQualifiedDomainName",
    #         search_string: "SearchString",
    #         request_interval: 1,
    #         failure_threshold: 1,
    #         measure_latency: false,
    #         inverted: false,
    #         disabled: false,
    #         health_threshold: 1,
    #         child_health_checks: ["HealthCheckId"],
    #         enable_sni: false,
    #         regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #         alarm_identifier: {
    #           region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #           name: "AlarmName", # required
    #         },
    #         insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #         routing_control_arn: "RoutingControlArn"
    #       },
    #       health_check_version: 1, # required
    #       cloud_watch_alarm_configuration: {
    #         evaluation_periods: 1, # required
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], # required
    #         period: 1, # required
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "Average" # One of: ["Average", "Sum", "SampleCount", "Maximum", "Minimum"], # required
    #         dimensions: [
    #           {
    #             name: "DimensionField", # required
    #             value: "DimensionField", # required
    #           }
    #         ]
    #       }
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateHealthCheckResponse]
    def create_health_check(params = {}, options = {})
      request = build_request(:create_health_check, params)
      request.send_request(options)
    end

    # <p>Creates a new public or private hosted zone. You create records in a public hosted
    # 			zone to define how you want to route traffic on the internet for a domain, such as
    # 			example.com, and its subdomains (apex.example.com, acme.example.com). You create records
    # 			in a private hosted zone to define how you want to route traffic for a domain and its
    # 			subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs). </p>
    #          <important>
    #             <p>You can't convert a public hosted zone to a private hosted zone or vice versa.
    # 				Instead, you must create a new hosted zone with the same name and create new
    # 				resource record sets.</p>
    #          </important>
    #          <p>For more information about charges for hosted zones, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p>
    #          <p>Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>You can't create a hosted zone for a top-level domain (TLD) such as
    # 					.com.</p>
    #             </li>
    #             <li>
    #                <p>For public hosted zones, Route 53 automatically creates a default SOA record
    # 					and four NS records for the zone. For more information about SOA and NS records,
    # 					see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html">NS and SOA Records
    # 						that Route 53 Creates for a Hosted Zone</a> in the
    # 						<i>Amazon Route 53 Developer Guide</i>.</p>
    #                <p>If you want to use the same name servers for multiple public hosted zones, you
    # 					can optionally associate a reusable delegation set with the hosted zone. See the
    # 						<code>DelegationSetId</code> element.</p>
    #             </li>
    #             <li>
    #                <p>If your domain is registered with a registrar other than Route 53,
    # 					you must update the name servers with your registrar to make Route 53 the DNS
    # 					service for the domain. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html">Migrating DNS Service
    # 						for an Existing Domain to Amazon Route 53</a> in the
    # 						<i>Amazon Route 53 Developer Guide</i>. </p>
    #             </li>
    #          </ul>
    #          <p>When you submit a <code>CreateHostedZone</code> request, the initial status of the
    # 			hosted zone is <code>PENDING</code>. For public hosted zones, this means that the NS and
    # 			SOA records are not yet available on all Route 53 DNS servers. When the NS and
    # 			SOA records are available, the status of the zone changes to <code>INSYNC</code>.</p>
    #          <p>The <code>CreateHostedZone</code> request requires the caller to have an
    # 				<code>ec2:DescribeVpcs</code> permission.</p>
    #          <note>
    #             <p>When creating private hosted zones, the Amazon VPC must belong to the same
    # 				partition where the hosted zone is created. A partition is a group of Amazon Web Services Regions. Each Amazon Web Services account is scoped to one
    # 				partition.</p>
    #             <p>The following are the supported partitions:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-cn</code> - China Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    #                </li>
    #             </ul>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateHostedZoneRequest] params
    # @option params [String] :name
    #   <p>The name of the domain. Specify a fully qualified domain name, for example,
    #   				<i>www.example.com</i>. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that
    #   				Route 53 treats <i>www.example.com</i> (without a trailing
    #   			dot) and <i>www.example.com.</i> (with a trailing dot) as
    #   			identical.</p>
    #            <p>If you're creating a public hosted zone, this is the name you have registered with
    #   			your DNS registrar. If your domain name is registered with a registrar other than
    #   				Route 53, change the name servers for your domain to the set of
    #   				<code>NameServers</code> that <code>CreateHostedZone</code> returns in
    #   				<code>DelegationSet</code>.</p>
    # @option params [Types::VPC] :vpc
    #   <p>(Private hosted zones only) A complex type that contains information about the Amazon
    #   			VPC that you're associating with this hosted zone.</p>
    #            <p>You can specify only one Amazon VPC when you create a private hosted zone. If you are
    #   			associating a VPC with a hosted zone with this request, the paramaters
    #   				<code>VPCId</code> and <code>VPCRegion</code> are also required.</p>
    #            <p>To associate additional Amazon VPCs with the hosted zone, use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html">AssociateVPCWithHostedZone</a> after you create a hosted zone.</p>
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request and that allows failed
    #   				<code>CreateHostedZone</code> requests to be retried without the risk of executing
    #   			the operation twice. You must use a unique <code>CallerReference</code> string every
    #   			time you submit a <code>CreateHostedZone</code> request. <code>CallerReference</code>
    #   			can be any unique string, for example, a date/time stamp.</p>
    # @option params [Types::HostedZoneConfig] :hosted_zone_config
    #   <p>(Optional) A complex type that contains the following optional values:</p>
    #            <ul>
    #               <li>
    #                  <p>For public and private hosted zones, an optional comment</p>
    #               </li>
    #               <li>
    #                  <p>For private hosted zones, an optional <code>PrivateZone</code> element</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a comment or the <code>PrivateZone</code> element, omit
    #   				<code>HostedZoneConfig</code> and the other elements.</p>
    # @option params [String] :delegation_set_id
    #   <p>If you want to associate a reusable delegation set with this hosted zone, the ID that
    #   				Amazon Route 53 assigned to the reusable delegation set when you created it.
    #   			For more information about reusable delegation sets, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html">CreateReusableDelegationSet</a>.</p>
    #            <p>If you are using a reusable delegation set to create a public hosted zone for a subdomain,
    #   			make sure that the parent hosted zone doesn't use one or more of the same name servers.
    #   			If you have overlapping nameservers, the operation will cause a
    #   				<code>ConflictingDomainsExist</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DNSName", # required
    #     vpc: {
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     },
    #     caller_reference: "Nonce", # required
    #     hosted_zone_config: {
    #       comment: "ResourceDescription",
    #       private_zone: false
    #     },
    #     delegation_set_id: "ResourceId"
    #   }
    #   options = {}
    #   response = client.create_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone: { # required
    #       id: "ResourceId", # required
    #       name: "DNSName", # required
    #       caller_reference: "Nonce", # required
    #       config: {
    #         comment: "ResourceDescription",
    #         private_zone: false
    #       },
    #       resource_record_set_count: 1,
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       }
    #     },
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     },
    #     delegation_set: { # required
    #       id: "ResourceId",
    #       caller_reference: "Nonce",
    #       name_servers: ["DNSName"], # required
    #     },
    #     vpc: {
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateHostedZoneResponse]
    def create_hosted_zone(params = {}, options = {})
      request = build_request(:create_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Creates a new key-signing key (KSK) associated with a hosted zone. You can only have
    # 			two KSKs per hosted zone.</p>
    # @param [Hash, Types::CreateKeySigningKeyRequest] params
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request.</p>
    # @option params [String] :hosted_zone_id
    #   <p>The unique string (ID) used to identify a hosted zone.</p>
    # @option params [String] :key_management_service_arn
    #   <p>The Amazon resource name (ARN) for a customer managed key in Key Management Service
    #   				(KMS). The <code>KeyManagementServiceArn</code> must be unique for
    #   			each key-signing key (KSK) in a single hosted zone. To see an example of
    #   				<code>KeyManagementServiceArn</code> that grants the correct permissions for DNSSEC,
    #   			scroll down to <b>Example</b>. </p>
    #            <p>You must configure the customer managed customer managed key as follows:</p>
    #            <dl>
    #               <dt>Status</dt>
    #               <dd>
    #                  <p>Enabled</p>
    #               </dd>
    #               <dt>Key spec</dt>
    #               <dd>
    #                  <p>ECC_NIST_P256</p>
    #               </dd>
    #               <dt>Key usage</dt>
    #               <dd>
    #                  <p>Sign and verify</p>
    #               </dd>
    #               <dt>Key policy</dt>
    #               <dd>
    #                  <p>The key policy must give permission for the following actions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>DescribeKey</p>
    #                     </li>
    #                     <li>
    #                        <p>GetPublicKey</p>
    #                     </li>
    #                     <li>
    #                        <p>Sign</p>
    #                     </li>
    #                  </ul>
    #                  <p>The key policy must also include the Amazon Route 53 service in the
    #   						principal for your account. Specify the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"Service": "dnssec-route53.amazonaws.com"</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>For more information about working with a customer managed key in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">Key Management Service concepts</a>.</p>
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK). <code>Name</code> can include
    #   			numbers, letters, and underscores (_). <code>Name</code> must be unique for each
    #   			key-signing key in the same hosted zone.</p>
    # @option params [String] :status
    #   <p>A string specifying the initial status of the key-signing key (KSK). You can set the
    #   			value to <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     caller_reference: "Nonce", # required
    #     hosted_zone_id: "ResourceId", # required
    #     key_management_service_arn: "SigningKeyString", # required
    #     name: "SigningKeyName", # required
    #     status: "SigningKeyStatus", # required
    #   }
    #   options = {}
    #   response = client.create_key_signing_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     },
    #     key_signing_key: { # required
    #       name: "SigningKeyName",
    #       kms_arn: "SigningKeyString",
    #       flag: 1,
    #       signing_algorithm_mnemonic: "SigningKeyString",
    #       signing_algorithm_type: 1,
    #       digest_algorithm_mnemonic: "SigningKeyString",
    #       digest_algorithm_type: 1,
    #       key_tag: 1,
    #       digest_value: "SigningKeyString",
    #       public_key: "SigningKeyString",
    #       ds_record: "SigningKeyString",
    #       dnskey_record: "SigningKeyString",
    #       status: "SigningKeyStatus",
    #       status_message: "SigningKeyStatusMessage",
    #       created_date: Time.now,
    #       last_modified_date: Time.now
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateKeySigningKeyResponse]
    def create_key_signing_key(params = {}, options = {})
      request = build_request(:create_key_signing_key, params)
      request.send_request(options)
    end

    # <p>Creates a configuration for DNS query logging. After you create a query logging
    # 			configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs
    # 			log group.</p>
    #          <p>DNS query logs contain information about the queries that Route 53 receives for a
    # 			specified public hosted zone, such as the following:</p>
    #          <ul>
    #             <li>
    #                <p>Route 53 edge location that responded to the DNS query</p>
    #             </li>
    #             <li>
    #                <p>Domain or subdomain that was requested</p>
    #             </li>
    #             <li>
    #                <p>DNS record type, such as A or AAAA</p>
    #             </li>
    #             <li>
    #                <p>DNS response code, such as <code>NoError</code> or
    # 					<code>ServFail</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <dl>
    #             <dt>Log Group and Resource Policy</dt>
    #             <dd>
    #                <p>Before you create a query logging configuration, perform the following
    # 						operations.</p>
    #                <note>
    #                   <p>If you create a query logging configuration using the Route 53
    # 							console, Route 53 performs these operations automatically.</p>
    #                </note>
    #                <ol>
    #                   <li>
    #                      <p>Create a CloudWatch Logs log group, and make note of the ARN,
    # 								which you specify when you create a query logging configuration.
    # 								Note the following:</p>
    #                      <ul>
    #                         <li>
    #                            <p>You must create the log group in the us-east-1
    # 										region.</p>
    #                         </li>
    #                         <li>
    #                            <p>You must use the same Amazon Web Services account to create
    # 										the log group and the hosted zone that you want to configure
    # 										query logging for.</p>
    #                         </li>
    #                         <li>
    #                            <p>When you create log groups for query logging, we recommend
    # 										that you use a consistent prefix, for example:</p>
    #                            <p>
    #                               <code>/aws/route53/<i>hosted zone
    # 											name</i>
    #                               </code>
    #                            </p>
    #                            <p>In the next step, you'll create a resource policy, which
    # 										controls access to one or more log groups and the associated
    # 											Amazon Web Services resources, such as Route 53 hosted
    # 										zones. There's a limit on the number of resource policies
    # 										that you can create, so we recommend that you use a
    # 										consistent prefix so you can use the same resource policy
    # 										for all the log groups that you create for query
    # 										logging.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>Create a CloudWatch Logs resource policy, and give it the
    # 								permissions that Route 53 needs to create log streams and to send
    # 								query logs to log streams. You must create the CloudWatch Logs resource policy in the us-east-1
    # 									region. For the value of <code>Resource</code>,
    # 								specify the ARN for the log group that you created in the previous
    # 								step. To use the same resource policy for all the CloudWatch Logs
    # 								log groups that you created for query logging configurations,
    # 								replace the hosted zone name with <code>*</code>, for
    # 								example:</p>
    #                      <p>
    #                         <code>arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*</code>
    #                      </p>
    #                      <p>To avoid the confused deputy problem, a security issue where an
    # 								entity without a permission for an action can coerce a
    # 								more-privileged entity to perform it, you can optionally limit the
    # 								permissions that a service has to a resource in a resource-based
    # 								policy by supplying the following values:</p>
    #                      <ul>
    #                         <li>
    #                            <p>For <code>aws:SourceArn</code>, supply the hosted zone ARN
    # 										used in creating the query logging configuration. For
    # 										example, <code>aws:SourceArn:
    # 											arn:aws:route53:::hostedzone/hosted zone
    # 										ID</code>.</p>
    #                         </li>
    #                         <li>
    #                            <p>For <code>aws:SourceAccount</code>, supply the account ID
    # 										for the account that creates the query logging
    # 										configuration. For example,
    # 											<code>aws:SourceAccount:111111111111</code>.</p>
    #                         </li>
    #                      </ul>
    #                      <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html">The confused
    # 									deputy problem</a> in the <i>Amazon Web Services
    # 									IAM User Guide</i>.</p>
    #                      <note>
    #                         <p>You can't use the CloudWatch console to create or edit a
    # 									resource policy. You must use the CloudWatch API, one of the
    # 										Amazon Web Services SDKs, or the CLI.</p>
    #                      </note>
    #                   </li>
    #                </ol>
    #             </dd>
    #             <dt>Log Streams and Edge Locations</dt>
    #             <dd>
    #                <p>When Route 53 finishes creating the configuration for DNS query logging,
    # 						it does the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>Creates a log stream for an edge location the first time that the
    # 								edge location responds to DNS queries for the specified hosted zone.
    # 								That log stream is used to log all queries that Route 53 responds to
    # 								for that edge location.</p>
    #                   </li>
    #                   <li>
    #                      <p>Begins to send query logs to the applicable log stream.</p>
    #                   </li>
    #                </ul>
    #                <p>The name of each log stream is in the following format:</p>
    #                <p>
    #                   <code>
    #                      <i>hosted zone ID</i>/<i>edge location
    # 								code</i>
    #                   </code>
    #                </p>
    #                <p>The edge location code is a three-letter code and an arbitrarily assigned
    # 						number, for example, DFW3. The three-letter code typically corresponds with
    # 						the International Air Transport Association airport code for an airport near
    # 						the edge location. (These abbreviations might change in the future.) For a
    # 						list of edge locations, see "The Route 53 Global Network" on the <a href="http://aws.amazon.com/route53/details/">Route 53 Product Details</a>
    # 						page.</p>
    #             </dd>
    #             <dt>Queries That Are Logged</dt>
    #             <dd>
    #                <p>Query logs contain only the queries that DNS resolvers forward to Route
    # 						53. If a DNS resolver has already cached the response to a query (such as
    # 						the IP address for a load balancer for example.com), the resolver will
    # 						continue to return the cached response. It doesn't forward another query to
    # 						Route 53 until the TTL for the corresponding resource record set expires.
    # 						Depending on how many DNS queries are submitted for a resource record set,
    # 						and depending on the TTL for that resource record set, query logs might
    # 						contain information about only one query out of every several thousand
    # 						queries that are submitted to DNS. For more information about how DNS works,
    # 						see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html">Routing
    # 							Internet Traffic to Your Website or Web Application</a> in the
    # 							<i>Amazon Route 53 Developer Guide</i>.</p>
    #             </dd>
    #             <dt>Log File Format</dt>
    #             <dd>
    #                <p>For a list of the values in each query log and the format of each value,
    # 						see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS
    # 							Queries</a> in the <i>Amazon Route 53 Developer
    # 							Guide</i>.</p>
    #             </dd>
    #             <dt>Pricing</dt>
    #             <dd>
    #                <p>For information about charges for query logs, see <a href="http://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p>
    #             </dd>
    #             <dt>How to Stop Logging</dt>
    #             <dd>
    #                <p>If you want Route 53 to stop sending query logs to CloudWatch Logs, delete
    # 						the query logging configuration. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html">DeleteQueryLoggingConfig</a>.</p>
    #             </dd>
    #          </dl>
    # @param [Hash, Types::CreateQueryLoggingConfigRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to log queries for. You can log queries only
    #   			for public hosted zones.</p>
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>The Amazon Resource Name (ARN) for the log group that you want to Amazon Route 53 to
    #   			send query logs to. This is the format of the ARN:</p>
    #            <p>arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>
    #            </p>
    #            <p>To get the ARN for a log group, you can use the CloudWatch console, the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogGroups.html">DescribeLogGroups</a> API action, the <a href="https://docs.aws.amazon.com/cli/latest/reference/logs/describe-log-groups.html">describe-log-groups</a>
    #   			command, or the applicable command in one of the Amazon Web Services SDKs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn", # required
    #   }
    #   options = {}
    #   response = client.create_query_logging_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_logging_config: { # required
    #       id: "QueryLoggingConfigId", # required
    #       hosted_zone_id: "ResourceId", # required
    #       cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn", # required
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateQueryLoggingConfigResponse]
    def create_query_logging_config(params = {}, options = {})
      request = build_request(:create_query_logging_config, params)
      request.send_request(options)
    end

    # <p>Creates a delegation set (a group of four name servers) that can be reused by multiple
    # 			hosted zones that were created by the same Amazon Web Services account. </p>
    #          <p>You can also create a reusable delegation set that uses the four name servers that are
    # 			associated with an existing hosted zone. Specify the hosted zone ID in the
    # 				<code>CreateReusableDelegationSet</code> request.</p>
    #          <note>
    #             <p>You can't associate a reusable delegation set with a private hosted zone.</p>
    #          </note>
    #          <p>For information about using a reusable delegation set to configure white label name
    # 			servers, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html">Configuring White
    # 				Label Name Servers</a>.</p>
    #          <p>The process for migrating existing hosted zones to use a reusable delegation set is
    # 			comparable to the process for configuring white label name servers. You need to perform
    # 			the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create a reusable delegation set.</p>
    #             </li>
    #             <li>
    #                <p>Recreate hosted zones, and reduce the TTL to 60 seconds or less.</p>
    #             </li>
    #             <li>
    #                <p>Recreate resource record sets in the new hosted zones.</p>
    #             </li>
    #             <li>
    #                <p>Change the registrar's name servers to use the name servers for the new hosted
    # 					zones.</p>
    #             </li>
    #             <li>
    #                <p>Monitor traffic for the website or application.</p>
    #             </li>
    #             <li>
    #                <p>Change TTLs back to their original values.</p>
    #             </li>
    #          </ol>
    #          <p>If you want to migrate existing hosted zones to use a reusable delegation set, the
    # 			existing hosted zones can't use any of the name servers that are assigned to the
    # 			reusable delegation set. If one or more hosted zones do use one or more name servers
    # 			that are assigned to the reusable delegation set, you can do one of the
    # 			following:</p>
    #          <ul>
    #             <li>
    #                <p>For small numbers of hosted zones—up to a few hundred—it's
    # 					relatively easy to create reusable delegation sets until you get one that has
    # 					four name servers that don't overlap with any of the name servers in your hosted
    # 					zones.</p>
    #             </li>
    #             <li>
    #                <p>For larger numbers of hosted zones, the easiest solution is to use more than
    # 					one reusable delegation set.</p>
    #             </li>
    #             <li>
    #                <p>For larger numbers of hosted zones, you can also migrate hosted zones that
    # 					have overlapping name servers to hosted zones that don't have overlapping name
    # 					servers, then migrate the hosted zones again to use the reusable delegation
    # 					set.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateReusableDelegationSetRequest] params
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request, and that allows you to retry failed
    #   				<code>CreateReusableDelegationSet</code> requests without the risk of executing the
    #   			operation twice. You must use a unique <code>CallerReference</code> string every time
    #   			you submit a <code>CreateReusableDelegationSet</code> request.
    #   				<code>CallerReference</code> can be any unique string, for example a date/time
    #   			stamp.</p>
    # @option params [String] :hosted_zone_id
    #   <p>If you want to mark the delegation set for an existing hosted zone as reusable, the ID
    #   			for that hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     caller_reference: "Nonce", # required
    #     hosted_zone_id: "ResourceId"
    #   }
    #   options = {}
    #   response = client.create_reusable_delegation_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegation_set: { # required
    #       id: "ResourceId",
    #       caller_reference: "Nonce",
    #       name_servers: ["DNSName"], # required
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateReusableDelegationSetResponse]
    def create_reusable_delegation_set(params = {}, options = {})
      request = build_request(:create_reusable_delegation_set, params)
      request.send_request(options)
    end

    # <p>Creates a traffic policy, which you use to create multiple DNS resource record sets
    # 			for one domain name (such as example.com) or one subdomain name (such as
    # 			www.example.com).</p>
    # @param [Hash, Types::CreateTrafficPolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the traffic policy.</p>
    # @option params [String] :document
    #   <p>The definition of this traffic policy in JSON format. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
    # @option params [String] :comment
    #   <p>(Optional) Any comments that you want to include about the traffic policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TrafficPolicyName", # required
    #     document: "TrafficPolicyDocument", # required
    #     comment: "TrafficPolicyComment"
    #   }
    #   options = {}
    #   response = client.create_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy: { # required
    #       id: "TrafficPolicyId", # required
    #       version: 1, # required
    #       name: "TrafficPolicyName", # required
    #       type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       document: "TrafficPolicyDocument", # required
    #       comment: "TrafficPolicyComment"
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateTrafficPolicyResponse]
    def create_traffic_policy(params = {}, options = {})
      request = build_request(:create_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Creates resource record sets in a specified hosted zone based on the settings in a
    # 			specified traffic policy version. In addition, <code>CreateTrafficPolicyInstance</code>
    # 			associates the resource record sets with a specified domain name (such as example.com)
    # 			or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for
    # 			the domain or subdomain name by using the resource record sets that
    # 				<code>CreateTrafficPolicyInstance</code> created.</p>
    #          <note>
    #             <p>After you submit an <code>CreateTrafficPolicyInstance</code> request, there's a
    # 				brief delay while Amazon Route 53 creates the resource record sets that are
    # 				specified in the traffic policy definition. 
    # 				Use <code>GetTrafficPolicyInstance</code> with the <code>id</code> of new traffic policy instance to confirm that the <code>CreateTrafficPolicyInstance</code>
    # 				request completed successfully. For more information, see the
    # 				<code>State</code> response element.</p>
    #          </note>
    # @param [Hash, Types::CreateTrafficPolicyInstanceRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want Amazon Route 53 to create resource record sets
    #   			in by using the configuration in a traffic policy.</p>
    # @option params [String] :name
    #   <p>The domain name (such as example.com) or subdomain name (such as www.example.com) for
    #   			which Amazon Route 53 responds to DNS queries by using the resource record sets that
    #   			Route 53 creates for this traffic policy instance.</p>
    # @option params [Integer] :ttl
    #   <p>(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource
    #   			record sets that it creates in the specified hosted zone.</p>
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy that you want to use to create resource record sets in
    #   			the specified hosted zone.</p>
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy that you want to use to create resource record sets
    #   			in the specified hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     name: "DNSName", # required
    #     ttl: 1, # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #   }
    #   options = {}
    #   response = client.create_traffic_policy_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instance: { # required
    #       id: "TrafficPolicyInstanceId", # required
    #       hosted_zone_id: "ResourceId", # required
    #       name: "DNSName", # required
    #       ttl: 1, # required
    #       state: "TrafficPolicyInstanceState", # required
    #       message: "Message", # required
    #       traffic_policy_id: "TrafficPolicyId", # required
    #       traffic_policy_version: 1, # required
    #       traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateTrafficPolicyInstanceResponse]
    def create_traffic_policy_instance(params = {}, options = {})
      request = build_request(:create_traffic_policy_instance, params)
      request.send_request(options)
    end

    # <p>Creates a new version of an existing traffic policy. When you create a new version of
    # 			a traffic policy, you specify the ID of the traffic policy that you want to update and a
    # 			JSON-formatted document that describes the new version. You use traffic policies to
    # 			create multiple DNS resource record sets for one domain name (such as example.com) or
    # 			one subdomain name (such as www.example.com). You can create a maximum of 1000 versions
    # 			of a traffic policy. If you reach the limit and need to create another version, you'll
    # 			need to start a new traffic policy.</p>
    # @param [Hash, Types::CreateTrafficPolicyVersionRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy for which you want to create a new version.</p>
    # @option params [String] :document
    #   <p>The definition of this version of the traffic policy, in JSON format. You specified
    #   			the JSON in the <code>CreateTrafficPolicyVersion</code> request. For more information
    #   			about the JSON format, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html">CreateTrafficPolicy</a>.</p>
    # @option params [String] :comment
    #   <p>The comment that you specified in the <code>CreateTrafficPolicyVersion</code> request,
    #   			if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyId", # required
    #     document: "TrafficPolicyDocument", # required
    #     comment: "TrafficPolicyComment"
    #   }
    #   options = {}
    #   response = client.create_traffic_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy: { # required
    #       id: "TrafficPolicyId", # required
    #       version: 1, # required
    #       name: "TrafficPolicyName", # required
    #       type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       document: "TrafficPolicyDocument", # required
    #       comment: "TrafficPolicyComment"
    #     },
    #     location: "ResourceURI", # required
    #   }
    # @return [Types::CreateTrafficPolicyVersionResponse]
    def create_traffic_policy_version(params = {}, options = {})
      request = build_request(:create_traffic_policy_version, params)
      request.send_request(options)
    end

    # <p>Authorizes the Amazon Web Services account that created a specified VPC to submit an
    # 				<code>AssociateVPCWithHostedZone</code> request to associate the VPC with a
    # 			specified hosted zone that was created by a different account. To submit a
    # 				<code>CreateVPCAssociationAuthorization</code> request, you must use the account
    # 			that created the hosted zone. After you authorize the association, use the account that
    # 			created the VPC to submit an <code>AssociateVPCWithHostedZone</code> request.</p>
    #          <note>
    #             <p>If you want to associate multiple VPCs that you created by using one account with
    # 				a hosted zone that you created by using a different account, you must submit one
    # 				authorization request for each VPC.</p>
    #          </note>
    # @param [Hash, Types::CreateVPCAssociationAuthorizationRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to authorize associating a VPC
    #   			with.</p>
    # @option params [Types::VPC] :vpc
    #   <p>A complex type that contains the VPC ID and region for the VPC that you want to
    #   			authorize associating with your hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_association_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     }
    #   }
    # @return [Types::CreateVPCAssociationAuthorizationResponse]
    def create_vpc_association_authorization(params = {}, options = {})
      request = build_request(:create_vpc_association_authorization, params)
      request.send_request(options)
    end

    # <p>Deactivates a key-signing key (KSK) so that it will not be used for signing by DNSSEC.
    # 			This operation changes the KSK status to <code>INACTIVE</code>.</p>
    # @param [Hash, Types::DeactivateKeySigningKeyRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     name: "SigningKeyName", # required
    #   }
    #   options = {}
    #   response = client.deactivate_key_signing_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::DeactivateKeySigningKeyResponse]
    def deactivate_key_signing_key(params = {}, options = {})
      request = build_request(:deactivate_key_signing_key, params)
      request.send_request(options)
    end

    # <p>Deletes a CIDR collection in the current Amazon Web Services account. The collection
    # 			must be empty before it can be deleted.</p>
    # @param [Hash, Types::DeleteCidrCollectionRequest] params
    # @option params [String] :id
    #   <p>The UUID of the collection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_cidr_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCidrCollectionResponse]
    def delete_cidr_collection(params = {}, options = {})
      request = build_request(:delete_cidr_collection, params)
      request.send_request(options)
    end

    # <p>Deletes a health check.</p>
    #          <important>
    #             <p>Amazon Route 53 does not prevent you from deleting a health check even if the
    # 				health check is associated with one or more resource record sets. If you delete a
    # 				health check and you don't update the associated resource record sets, the future
    # 				status of the health check can't be predicted and may change. This will affect the
    # 				routing of DNS queries for your DNS failover configuration. For more information,
    # 				see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html">Replacing and Deleting Health Checks</a> in the <i>Amazon Route 53
    # 					Developer Guide</i>.</p>
    #          </important>
    #          <p>If you're using Cloud Map and you configured Cloud Map to create a Route 53
    # 			health check when you register an instance, you can't use the Route 53
    # 				<code>DeleteHealthCheck</code> command to delete the health check. The health check
    # 			is deleted automatically when you deregister the instance; there can be a delay of
    # 			several hours before the health check is deleted from Route 53. </p>
    # @param [Hash, Types::DeleteHealthCheckRequest] params
    # @option params [String] :health_check_id
    #   <p>The ID of the health check that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     health_check_id: "HealthCheckId", # required
    #   }
    #   options = {}
    #   response = client.delete_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteHealthCheckResponse]
    def delete_health_check(params = {}, options = {})
      request = build_request(:delete_health_check, params)
      request.send_request(options)
    end

    # <p>Deletes a hosted zone.</p>
    #          <p>If the hosted zone was created by another service, such as Cloud Map, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service">Deleting Public Hosted Zones That Were Created by Another Service</a> in the
    # 					<i>Amazon Route 53 Developer Guide</i> for information
    # 			about how to delete it. (The process is the same for public and private hosted zones
    # 			that were created by another service.)</p>
    #          <p>If you want to keep your domain registration but you want to stop routing internet
    # 			traffic to your website or web application, we recommend that you delete resource record
    # 			sets in the hosted zone instead of deleting the hosted zone.</p>
    #          <important>
    #             <p>If you delete a hosted zone, you can't undelete it. You must create a new hosted
    # 				zone and update the name servers for your domain registration, which can require up
    # 				to 48 hours to take effect. (If you delegated responsibility for a subdomain to a
    # 				hosted zone and you delete the child hosted zone, you must update the name servers
    # 				in the parent hosted zone.) In addition, if you delete a hosted zone, someone could
    # 				hijack the domain and route traffic to their own resources using your domain
    # 				name.</p>
    #          </important>
    #          <p>If you want to avoid the monthly charge for the hosted zone, you can transfer DNS
    # 			service for the domain to a free DNS service. When you transfer DNS service, you have to
    # 			update the name servers for the domain registration. If the domain is registered with
    # 				Route 53, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html">UpdateDomainNameservers</a> for information about how to replace Route 53 name servers with name servers for the new DNS service. If the domain is
    # 			registered with another registrar, use the method provided by the registrar to update
    # 			name servers for the domain registration. For more information, perform an internet
    # 			search on "free DNS service."</p>
    #          <p>You can delete a hosted zone only if it contains only the default SOA record and NS
    # 			resource record sets. If the hosted zone contains other resource record sets, you must
    # 			delete them before you can delete the hosted zone. If you try to delete a hosted zone
    # 			that contains other resource record sets, the request fails, and Route 53
    # 			returns a <code>HostedZoneNotEmpty</code> error. For information about deleting records
    # 			from your hosted zone, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>.</p>
    #          <p>To verify that the hosted zone has been deleted, do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>GetHostedZone</code> action to request information about the
    # 					hosted zone.</p>
    #             </li>
    #             <li>
    #                <p>Use the <code>ListHostedZones</code> action to get a list of the hosted zones
    # 					associated with the current Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteHostedZoneRequest] params
    # @option params [String] :id
    #   <p>The ID of the hosted zone you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::DeleteHostedZoneResponse]
    def delete_hosted_zone(params = {}, options = {})
      request = build_request(:delete_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Deletes a key-signing key (KSK). Before you can delete a KSK, you must deactivate it.
    # 			The KSK must be deactivated before you can delete it regardless of whether the hosted
    # 			zone is enabled for DNSSEC signing.</p>
    #          <p>You can use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeactivateKeySigningKey.html">DeactivateKeySigningKey</a> to deactivate the key before you delete it.</p>
    #          <p>Use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetDNSSEC.html">GetDNSSEC</a> to verify that the KSK is in an <code>INACTIVE</code>
    # 			status.</p>
    # @param [Hash, Types::DeleteKeySigningKeyRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     name: "SigningKeyName", # required
    #   }
    #   options = {}
    #   response = client.delete_key_signing_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::DeleteKeySigningKeyResponse]
    def delete_key_signing_key(params = {}, options = {})
      request = build_request(:delete_key_signing_key, params)
      request.send_request(options)
    end

    # <p>Deletes a configuration for DNS query logging. If you delete a configuration, Amazon
    # 			Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't delete any logs
    # 			that are already in CloudWatch Logs.</p>
    #          <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>.</p>
    # @param [Hash, Types::DeleteQueryLoggingConfigRequest] params
    # @option params [String] :id
    #   <p>The ID of the configuration that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "QueryLoggingConfigId", # required
    #   }
    #   options = {}
    #   response = client.delete_query_logging_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueryLoggingConfigResponse]
    def delete_query_logging_config(params = {}, options = {})
      request = build_request(:delete_query_logging_config, params)
      request.send_request(options)
    end

    # <p>Deletes a reusable delegation set.</p>
    #          <important>
    #             <p>You can delete a reusable delegation set only if it isn't associated with any
    # 				hosted zones.</p>
    #          </important>
    #          <p>To verify that the reusable delegation set is not associated with any hosted zones,
    # 			submit a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html">GetReusableDelegationSet</a> request and specify the ID of the reusable
    # 			delegation set that you want to delete.</p>
    # @param [Hash, Types::DeleteReusableDelegationSetRequest] params
    # @option params [String] :id
    #   <p>The ID of the reusable delegation set that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_reusable_delegation_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReusableDelegationSetResponse]
    def delete_reusable_delegation_set(params = {}, options = {})
      request = build_request(:delete_reusable_delegation_set, params)
      request.send_request(options)
    end

    # <p>Deletes a traffic policy.</p>
    #          <p>When you delete a traffic policy, Route 53 sets a flag on the policy to indicate that
    # 			it has been deleted. However, Route 53 never fully deletes the traffic policy. Note the
    # 			following:</p>
    #          <ul>
    #             <li>
    #                <p>Deleted traffic policies aren't listed if you run <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListTrafficPolicies.html">ListTrafficPolicies</a>.</p>
    #             </li>
    #             <li>
    #                <p> There's no way to get a list of deleted policies.</p>
    #             </li>
    #             <li>
    #                <p>If you retain the ID of the policy, you can get information about the policy,
    # 					including the traffic policy document, by running <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html">GetTrafficPolicy</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteTrafficPolicyRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy that you want to delete.</p>
    # @option params [Integer] :version
    #   <p>The version number of the traffic policy that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrafficPolicyResponse]
    def delete_traffic_policy(params = {}, options = {})
      request = build_request(:delete_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a traffic policy instance and all of the resource record sets that Amazon
    # 			Route 53 created when you created the instance.</p>
    #          <note>
    #             <p>In the Route 53 console, traffic policy instances are known as policy
    # 				records.</p>
    #          </note>
    # @param [Hash, Types::DeleteTrafficPolicyInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to delete. </p>
    #            <important>
    #               <p>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the
    #   				resource record sets that were created when you created the traffic policy
    #   				instance.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyInstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_traffic_policy_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrafficPolicyInstanceResponse]
    def delete_traffic_policy_instance(params = {}, options = {})
      request = build_request(:delete_traffic_policy_instance, params)
      request.send_request(options)
    end

    # <p>Removes authorization to submit an <code>AssociateVPCWithHostedZone</code> request to
    # 			associate a specified VPC with a hosted zone that was created by a different account.
    # 			You must use the account that created the hosted zone to submit a
    # 				<code>DeleteVPCAssociationAuthorization</code> request.</p>
    #          <important>
    #             <p>Sending this request only prevents the Amazon Web Services account that created the
    # 				VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If
    # 				the VPC is already associated with the hosted zone,
    # 					<code>DeleteVPCAssociationAuthorization</code> won't disassociate the VPC from
    # 				the hosted zone. If you want to delete an existing association, use
    # 					<code>DisassociateVPCFromHostedZone</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteVPCAssociationAuthorizationRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>When removing authorization to associate a VPC that was created by one Amazon Web Services account with a hosted zone that was created with a different Amazon Web Services account, the ID of the hosted zone.</p>
    # @option params [Types::VPC] :vpc
    #   <p>When removing authorization to associate a VPC that was created by one Amazon Web Services account with a hosted zone that was created with a different Amazon Web Services account, a complex type that includes the ID and region of the
    #   			VPC.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_vpc_association_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVPCAssociationAuthorizationResponse]
    def delete_vpc_association_authorization(params = {}, options = {})
      request = build_request(:delete_vpc_association_authorization, params)
      request.send_request(options)
    end

    # <p>Disables DNSSEC signing in a specific hosted zone. This action does not deactivate any
    # 			key-signing keys (KSKs) that are active in the hosted zone.</p>
    # @param [Hash, Types::DisableHostedZoneDNSSECRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.disable_hosted_zone_dnssec(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::DisableHostedZoneDNSSECResponse]
    def disable_hosted_zone_dnssec(params = {}, options = {})
      request = build_request(:disable_hosted_zone_dnssec, params)
      request.send_request(options)
    end

    # <p>Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route 53
    # 			private hosted zone. Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>You can't disassociate the last Amazon VPC from a private hosted zone.</p>
    #             </li>
    #             <li>
    #                <p>You can't convert a private hosted zone into a public hosted zone.</p>
    #             </li>
    #             <li>
    #                <p>You can submit a <code>DisassociateVPCFromHostedZone</code> request using
    # 					either the account that created the hosted zone or the account that created the
    # 					Amazon VPC.</p>
    #             </li>
    #             <li>
    #                <p>Some services, such as Cloud Map and Amazon Elastic File System
    # 					(Amazon EFS) automatically create hosted zones and associate VPCs with the
    # 					hosted zones. A service can create a hosted zone using your account or using its
    # 					own account. You can disassociate a VPC from a hosted zone only if the service
    # 					created the hosted zone using your account.</p>
    #                <p>When you run <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html">DisassociateVPCFromHostedZone</a>, if the hosted zone has a value for
    # 						<code>OwningAccount</code>, you can use
    # 						<code>DisassociateVPCFromHostedZone</code>. If the hosted zone has a value
    # 					for <code>OwningService</code>, you can't use
    # 						<code>DisassociateVPCFromHostedZone</code>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>When revoking access, the hosted zone and the Amazon VPC must belong to
    # 				the same partition. A partition is a group of Amazon Web Services Regions. Each
    # 					Amazon Web Services account is scoped to one partition.</p>
    #             <p>The following are the supported partitions:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-cn</code> - China Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    #                </li>
    #             </ul>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::DisassociateVPCFromHostedZoneRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to disassociate a VPC from.</p>
    # @option params [Types::VPC] :vpc
    #   <p>A complex type that contains information about the VPC that you're disassociating from
    #   			the specified hosted zone.</p>
    # @option params [String] :comment
    #   <p>
    #               <i>Optional:</i> A comment about the disassociation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     vpc: { # required
    #       vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #       vpc_id: "VPCId"
    #     },
    #     comment: "DisassociateVPCComment"
    #   }
    #   options = {}
    #   response = client.disassociate_vpc_from_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::DisassociateVPCFromHostedZoneResponse]
    def disassociate_vpc_from_hosted_zone(params = {}, options = {})
      request = build_request(:disassociate_vpc_from_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Enables DNSSEC signing in a specific hosted zone.</p>
    # @param [Hash, Types::EnableHostedZoneDNSSECRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.enable_hosted_zone_dnssec(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::EnableHostedZoneDNSSECResponse]
    def enable_hosted_zone_dnssec(params = {}, options = {})
      request = build_request(:enable_hosted_zone_dnssec, params)
      request.send_request(options)
    end

    # <p>Gets the specified limit for the current account, for example, the maximum number of
    # 			health checks that you can create using the account.</p>
    #          <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    #          <note>
    #             <p>You can also view account limits in Amazon Web Services Trusted Advisor. Sign in to
    # 				the Amazon Web Services Management Console and open the Trusted Advisor console at <a href="https://console.aws.amazon.com/trustedadvisor">https://console.aws.amazon.com/trustedadvisor/</a>. Then choose <b>Service limits</b> in the navigation pane.</p>
    #          </note>
    # @param [Hash, Types::GetAccountLimitRequest] params
    # @option params [String] :type
    #   <p>The limit that you want to get. Valid values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>MAX_HEALTH_CHECKS_BY_OWNER</b>: The maximum
    #   					number of health checks that you can create using the current account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MAX_HOSTED_ZONES_BY_OWNER</b>: The maximum number
    #   					of hosted zones that you can create using the current account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MAX_REUSABLE_DELEGATION_SETS_BY_OWNER</b>: The
    #   					maximum number of reusable delegation sets that you can create using the current
    #   					account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MAX_TRAFFIC_POLICIES_BY_OWNER</b>: The maximum
    #   					number of traffic policies that you can create using the current account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER</b>: The
    #   					maximum number of traffic policy instances that you can create using the current
    #   					account. (Traffic policy instances are referred to as traffic flow policy
    #   					records in the Amazon Route 53 console.)</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "MAX_HEALTH_CHECKS_BY_OWNER" # One of: ["MAX_HEALTH_CHECKS_BY_OWNER", "MAX_HOSTED_ZONES_BY_OWNER", "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER", "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER", "MAX_TRAFFIC_POLICIES_BY_OWNER"], # required
    #   }
    #   options = {}
    #   response = client.get_account_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit: { # required
    #       type: "MAX_HEALTH_CHECKS_BY_OWNER" # One of: ["MAX_HEALTH_CHECKS_BY_OWNER", "MAX_HOSTED_ZONES_BY_OWNER", "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER", "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER", "MAX_TRAFFIC_POLICIES_BY_OWNER"], # required
    #       value: 1, # required
    #     },
    #     count: 1, # required
    #   }
    # @return [Types::GetAccountLimitResponse]
    def get_account_limit(params = {}, options = {})
      request = build_request(:get_account_limit, params)
      request.send_request(options)
    end

    # <p>Returns the current status of a change batch request. The status is one of the
    # 			following values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PENDING</code> indicates that the changes in this request have not
    # 					propagated to all Amazon Route 53 DNS servers managing the hosted zone. This is the initial status of all
    # 					change batch requests.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INSYNC</code> indicates that the changes have propagated to all Route 53
    # 					DNS servers managing the hosted zone. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetChangeRequest] params
    # @option params [String] :id
    #   <p>The ID of the change batch request. The value that you specify here is the value that
    #   				<code>ChangeResourceRecordSets</code> returned in the <code>Id</code> element when
    #   			you submitted the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ChangeId", # required
    #   }
    #   options = {}
    #   response = client.get_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_info: { # required
    #       id: "ResourceId", # required
    #       status: "PENDING" # One of: ["PENDING", "INSYNC"], # required
    #       submitted_at: Time.now, # required
    #       comment: "ResourceDescription"
    #     }
    #   }
    # @return [Types::GetChangeResponse]
    def get_change(params = {}, options = {})
      request = build_request(:get_change, params)
      request.send_request(options)
    end

    # <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    #          <important>
    #             <p>
    #                <code>GetCheckerIpRanges</code> still works, but we recommend that you download
    # 				ip-ranges.json, which includes IP address ranges for all Amazon Web Services
    # 				services. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html">IP Address Ranges
    # 					of Amazon Route 53 Servers</a> in the <i>Amazon Route 53 Developer
    # 					Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::GetCheckerIpRangesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_checker_ip_ranges(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checker_ip_ranges: ["IPAddressCidr"], # required
    #   }
    # @return [Types::GetCheckerIpRangesResponse]
    def get_checker_ip_ranges(params = {}, options = {})
      request = build_request(:get_checker_ip_ranges, params)
      request.send_request(options)
    end

    # <p>Returns information about DNSSEC for a specific hosted zone, including the key-signing
    # 			keys (KSKs) in the hosted zone.</p>
    # @param [Hash, Types::GetDNSSECRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_dnssec(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: { # required
    #       serve_signature: "ServeSignature",
    #       status_message: "SigningKeyStatusMessage"
    #     },
    #     key_signing_keys: [ # required
    #       {
    #         name: "SigningKeyName",
    #         kms_arn: "SigningKeyString",
    #         flag: 1,
    #         signing_algorithm_mnemonic: "SigningKeyString",
    #         signing_algorithm_type: 1,
    #         digest_algorithm_mnemonic: "SigningKeyString",
    #         digest_algorithm_type: 1,
    #         key_tag: 1,
    #         digest_value: "SigningKeyString",
    #         public_key: "SigningKeyString",
    #         ds_record: "SigningKeyString",
    #         dnskey_record: "SigningKeyString",
    #         status: "SigningKeyStatus",
    #         status_message: "SigningKeyStatusMessage",
    #         created_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetDNSSECResponse]
    def get_dnssec(params = {}, options = {})
      request = build_request(:get_dnssec, params)
      request.send_request(options)
    end

    # <p>Gets information about whether a specified geographic location is supported for Amazon
    # 			Route 53 geolocation resource record sets.</p>
    #          <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    #          <p>Use the following syntax to determine whether a continent is supported for
    # 			geolocation:</p>
    #          <p>
    #             <code>GET /2013-04-01/geolocation?continentcode=<i>two-letter abbreviation for
    # 					a continent</i>
    #             </code>
    #          </p>
    #          <p>Use the following syntax to determine whether a country is supported for
    # 			geolocation:</p>
    #          <p>
    #             <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
    # 					code</i>
    #             </code>
    #          </p>
    #          <p>Use the following syntax to determine whether a subdivision of a country is supported
    # 			for geolocation:</p>
    #          <p>
    #             <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
    # 					code</i>&subdivisioncode=<i>subdivision
    # 			code</i>
    #             </code>
    #          </p>
    # @param [Hash, Types::GetGeoLocationRequest] params
    # @option params [String] :continent_code
    #   <p>For geolocation resource record sets, a two-letter abbreviation that identifies a
    #   			continent. Amazon Route 53 supports the following continent codes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AF</b>: Africa</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AN</b>: Antarctica</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AS</b>: Asia</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EU</b>: Europe</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OC</b>: Oceania</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NA</b>: North America</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SA</b>: South America</p>
    #               </li>
    #            </ul>
    # @option params [String] :country_code
    #   <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1
    #   				alpha-2</a>.</p>
    #            <p>Route 53 also supports the country code <b>UA</b> for
    #   			Ukraine.</p>
    # @option params [String] :subdivision_code
    #   <p>The code for the subdivision, such as a particular state within the United States. For
    #   			a list of US state abbreviations, see <a href="https://pe.usps.com/text/pub28/28apb.htm">Appendix B: Two–Letter State and
    #   				Possession Abbreviations</a> on the United States Postal Service website. For a
    #   			list of all supported subdivision codes, use the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html">ListGeoLocations</a>
    #   			API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     continent_code: "GeoLocationContinentCode",
    #     country_code: "GeoLocationCountryCode",
    #     subdivision_code: "GeoLocationSubdivisionCode"
    #   }
    #   options = {}
    #   response = client.get_geo_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_location_details: { # required
    #       continent_code: "GeoLocationContinentCode",
    #       continent_name: "GeoLocationContinentName",
    #       country_code: "GeoLocationCountryCode",
    #       country_name: "GeoLocationCountryName",
    #       subdivision_code: "GeoLocationSubdivisionCode",
    #       subdivision_name: "GeoLocationSubdivisionName"
    #     }
    #   }
    # @return [Types::GetGeoLocationResponse]
    def get_geo_location(params = {}, options = {})
      request = build_request(:get_geo_location, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified health check.</p>
    # @param [Hash, Types::GetHealthCheckRequest] params
    # @option params [String] :health_check_id
    #   <p>The identifier that Amazon Route 53 assigned to the health check when you created it.
    #   			When you add or update a resource record set, you use this value to specify which health
    #   			check to use. The value can be up to 64 characters long.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     health_check_id: "HealthCheckId", # required
    #   }
    #   options = {}
    #   response = client.get_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check: { # required
    #       id: "HealthCheckId", # required
    #       caller_reference: "HealthCheckNonce", # required
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       },
    #       health_check_config: { # required
    #         ip_address: "IPAddress",
    #         port: 1,
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"], # required
    #         resource_path: "ResourcePath",
    #         fully_qualified_domain_name: "FullyQualifiedDomainName",
    #         search_string: "SearchString",
    #         request_interval: 1,
    #         failure_threshold: 1,
    #         measure_latency: false,
    #         inverted: false,
    #         disabled: false,
    #         health_threshold: 1,
    #         child_health_checks: ["HealthCheckId"],
    #         enable_sni: false,
    #         regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #         alarm_identifier: {
    #           region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #           name: "AlarmName", # required
    #         },
    #         insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #         routing_control_arn: "RoutingControlArn"
    #       },
    #       health_check_version: 1, # required
    #       cloud_watch_alarm_configuration: {
    #         evaluation_periods: 1, # required
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], # required
    #         period: 1, # required
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "Average" # One of: ["Average", "Sum", "SampleCount", "Maximum", "Minimum"], # required
    #         dimensions: [
    #           {
    #             name: "DimensionField", # required
    #             value: "DimensionField", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetHealthCheckResponse]
    def get_health_check(params = {}, options = {})
      request = build_request(:get_health_check, params)
      request.send_request(options)
    end

    # <p>Retrieves the number of health checks that are associated with the current Amazon Web Services account.</p>
    # @param [Hash, Types::GetHealthCheckCountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_health_check_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check_count: 1, # required
    #   }
    # @return [Types::GetHealthCheckCountResponse]
    def get_health_check_count(params = {}, options = {})
      request = build_request(:get_health_check_count, params)
      request.send_request(options)
    end

    # <p>Gets the reason that a specified health check failed most recently.</p>
    # @param [Hash, Types::GetHealthCheckLastFailureReasonRequest] params
    # @option params [String] :health_check_id
    #   <p>The ID for the health check for which you want the last failure reason. When you
    #   			created the health check, <code>CreateHealthCheck</code> returned the ID in the
    #   			response, in the <code>HealthCheckId</code> element.</p>
    #            <note>
    #               <p>If you want to get the last failure reason for a calculated health check, you must
    #   				use the Amazon Route 53 console or the CloudWatch console. You can't use
    #   					<code>GetHealthCheckLastFailureReason</code> for a calculated health
    #   				check.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     health_check_id: "HealthCheckId", # required
    #   }
    #   options = {}
    #   response = client.get_health_check_last_failure_reason(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check_observations: [ # required
    #       {
    #         region: "us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"],
    #         ip_address: "IPAddress",
    #         status_report: {
    #           status: "Status",
    #           checked_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetHealthCheckLastFailureReasonResponse]
    def get_health_check_last_failure_reason(params = {}, options = {})
      request = build_request(:get_health_check_last_failure_reason, params)
      request.send_request(options)
    end

    # <p>Gets status of a specified health check. </p>
    #          <important>
    #             <p>This API is intended for use during development to diagnose behavior. It doesn’t
    # 				support production use-cases with high query rates that require immediate and
    # 				actionable responses.</p>
    #          </important>
    # @param [Hash, Types::GetHealthCheckStatusRequest] params
    # @option params [String] :health_check_id
    #   <p>The ID for the health check that you want the current status for. When you created the
    #   			health check, <code>CreateHealthCheck</code> returned the ID in the response, in the
    #   				<code>HealthCheckId</code> element.</p>
    #            <note>
    #               <p>If you want to check the status of a calculated health check, you must use the
    #   				Amazon Route 53 console or the CloudWatch console. You can't use
    #   					<code>GetHealthCheckStatus</code> to get the status of a calculated health
    #   				check.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     health_check_id: "HealthCheckId", # required
    #   }
    #   options = {}
    #   response = client.get_health_check_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check_observations: [ # required
    #       {
    #         region: "us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"],
    #         ip_address: "IPAddress",
    #         status_report: {
    #           status: "Status",
    #           checked_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetHealthCheckStatusResponse]
    def get_health_check_status(params = {}, options = {})
      request = build_request(:get_health_check_status, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified hosted zone including the four name servers
    # 			assigned to the hosted zone.</p>
    #          <p>
    #             <code></code> returns the VPCs associated with the specified hosted zone and does not reflect the VPC
    # 			associations by Route 53 Profiles. To get the associations to a Profile, call the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileAssociations.html">ListProfileAssociations</a> API.</p>
    # @param [Hash, Types::GetHostedZoneRequest] params
    # @option params [String] :id
    #   <p>The ID of the hosted zone that you want to get information about.</p>
    # @example To get information about a hosted zone
    #   # The following example gets information about the Z3M3LMPEXAMPLE hosted zone.
    #   params = {
    #     id: "Z3M3LMPEXAMPLE"
    #   }
    #   options = {}
    #   response = client.get_hosted_zone(params, options)
    #   response.to_h #=>
    #   {
    #     hosted_zone: {
    #       resource_record_set_count: 8,
    #       caller_reference: "C741617D-04E4-F8DE-B9D7-0D150FC61C2E",
    #       config: {
    #         private_zone: false
    #       },
    #       id: "/hostedzone/Z3M3LMPEXAMPLE",
    #       name: "myawsbucket.com."
    #     },
    #     delegation_set: {
    #       name_servers: [
    #         "ns-2048.awsdns-64.com",
    #         "ns-2049.awsdns-65.net",
    #         "ns-2050.awsdns-66.org",
    #         "ns-2051.awsdns-67.co.uk"
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone: { # required
    #       id: "ResourceId", # required
    #       name: "DNSName", # required
    #       caller_reference: "Nonce", # required
    #       config: {
    #         comment: "ResourceDescription",
    #         private_zone: false
    #       },
    #       resource_record_set_count: 1,
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       }
    #     },
    #     delegation_set: {
    #       id: "ResourceId",
    #       caller_reference: "Nonce",
    #       name_servers: ["DNSName"], # required
    #     },
    #     vp_cs: [
    #       {
    #         vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #         vpc_id: "VPCId"
    #       }
    #     ]
    #   }
    # @return [Types::GetHostedZoneResponse]
    def get_hosted_zone(params = {}, options = {})
      request = build_request(:get_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Retrieves the number of hosted zones that are associated with the current Amazon Web Services account.</p>
    # @param [Hash, Types::GetHostedZoneCountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_hosted_zone_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone_count: 1, # required
    #   }
    # @return [Types::GetHostedZoneCountResponse]
    def get_hosted_zone_count(params = {}, options = {})
      request = build_request(:get_hosted_zone_count, params)
      request.send_request(options)
    end

    # <p>Gets the specified limit for a specified hosted zone, for example, the maximum number
    # 			of records that you can create in the hosted zone. </p>
    #          <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    # @param [Hash, Types::GetHostedZoneLimitRequest] params
    # @option params [String] :type
    #   <p>The limit that you want to get. Valid values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>MAX_RRSETS_BY_ZONE</b>: The maximum number of
    #   					records that you can create in the specified hosted zone.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MAX_VPCS_ASSOCIATED_BY_ZONE</b>: The maximum
    #   					number of Amazon VPCs that you can associate with the specified private hosted
    #   					zone.</p>
    #               </li>
    #            </ul>
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to get a limit for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "MAX_RRSETS_BY_ZONE" # One of: ["MAX_RRSETS_BY_ZONE", "MAX_VPCS_ASSOCIATED_BY_ZONE"], # required
    #     hosted_zone_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_hosted_zone_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit: { # required
    #       type: "MAX_RRSETS_BY_ZONE" # One of: ["MAX_RRSETS_BY_ZONE", "MAX_VPCS_ASSOCIATED_BY_ZONE"], # required
    #       value: 1, # required
    #     },
    #     count: 1, # required
    #   }
    # @return [Types::GetHostedZoneLimitResponse]
    def get_hosted_zone_limit(params = {}, options = {})
      request = build_request(:get_hosted_zone_limit, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified configuration for DNS query logging.</p>
    #          <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a> and <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS
    # 			Queries</a>.</p>
    # @param [Hash, Types::GetQueryLoggingConfigRequest] params
    # @option params [String] :id
    #   <p>The ID of the configuration for DNS query logging that you want to get information
    #   			about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "QueryLoggingConfigId", # required
    #   }
    #   options = {}
    #   response = client.get_query_logging_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_logging_config: { # required
    #       id: "QueryLoggingConfigId", # required
    #       hosted_zone_id: "ResourceId", # required
    #       cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn", # required
    #     }
    #   }
    # @return [Types::GetQueryLoggingConfigResponse]
    def get_query_logging_config(params = {}, options = {})
      request = build_request(:get_query_logging_config, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specified reusable delegation set, including the four
    # 			name servers that are assigned to the delegation set.</p>
    # @param [Hash, Types::GetReusableDelegationSetRequest] params
    # @option params [String] :id
    #   <p>The ID of the reusable delegation set that you want to get a list of name servers
    #   			for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_reusable_delegation_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegation_set: { # required
    #       id: "ResourceId",
    #       caller_reference: "Nonce",
    #       name_servers: ["DNSName"], # required
    #     }
    #   }
    # @return [Types::GetReusableDelegationSetResponse]
    def get_reusable_delegation_set(params = {}, options = {})
      request = build_request(:get_reusable_delegation_set, params)
      request.send_request(options)
    end

    # <p>Gets the maximum number of hosted zones that you can associate with the specified
    # 			reusable delegation set.</p>
    #          <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    # @param [Hash, Types::GetReusableDelegationSetLimitRequest] params
    # @option params [String] :type
    #   <p>Specify <code>MAX_ZONES_BY_REUSABLE_DELEGATION_SET</code> to get the maximum number of
    #   			hosted zones that you can associate with the specified reusable delegation set.</p>
    # @option params [String] :delegation_set_id
    #   <p>The ID of the delegation set that you want to get the limit for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "MAX_ZONES_BY_REUSABLE_DELEGATION_SET" # One of: ["MAX_ZONES_BY_REUSABLE_DELEGATION_SET"], # required
    #     delegation_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_reusable_delegation_set_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit: { # required
    #       type: "MAX_ZONES_BY_REUSABLE_DELEGATION_SET" # One of: ["MAX_ZONES_BY_REUSABLE_DELEGATION_SET"], # required
    #       value: 1, # required
    #     },
    #     count: 1, # required
    #   }
    # @return [Types::GetReusableDelegationSetLimitResponse]
    def get_reusable_delegation_set_limit(params = {}, options = {})
      request = build_request(:get_reusable_delegation_set_limit, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific traffic policy version.</p>
    #          <p>For information about how of deleting a traffic policy affects the response from
    # 				<code>GetTrafficPolicy</code>, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html">DeleteTrafficPolicy</a>. </p>
    # @param [Hash, Types::GetTrafficPolicyRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy that you want to get information about.</p>
    # @option params [Integer] :version
    #   <p>The version number of the traffic policy that you want to get information
    #   			about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #   }
    #   options = {}
    #   response = client.get_traffic_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy: { # required
    #       id: "TrafficPolicyId", # required
    #       version: 1, # required
    #       name: "TrafficPolicyName", # required
    #       type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       document: "TrafficPolicyDocument", # required
    #       comment: "TrafficPolicyComment"
    #     }
    #   }
    # @return [Types::GetTrafficPolicyResponse]
    def get_traffic_policy(params = {}, options = {})
      request = build_request(:get_traffic_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified traffic policy instance.</p>
    #          <note>
    #             <p>
    # 				Use <code>GetTrafficPolicyInstance</code> with the <code>id</code> of new traffic policy instance to confirm that the 
    # 				<code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request completed successfully. 
    # 				For more information, see the <code>State</code> response
    # 				element.</p>
    #          </note>
    #          <note>
    #             <p>In the Route 53 console, traffic policy instances are known as policy
    # 				records.</p>
    #          </note>
    # @param [Hash, Types::GetTrafficPolicyInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyInstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_traffic_policy_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instance: { # required
    #       id: "TrafficPolicyInstanceId", # required
    #       hosted_zone_id: "ResourceId", # required
    #       name: "DNSName", # required
    #       ttl: 1, # required
    #       state: "TrafficPolicyInstanceState", # required
    #       message: "Message", # required
    #       traffic_policy_id: "TrafficPolicyId", # required
    #       traffic_policy_version: 1, # required
    #       traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #     }
    #   }
    # @return [Types::GetTrafficPolicyInstanceResponse]
    def get_traffic_policy_instance(params = {}, options = {})
      request = build_request(:get_traffic_policy_instance, params)
      request.send_request(options)
    end

    # <p>Gets the number of traffic policy instances that are associated with the current
    # 				Amazon Web Services account.</p>
    # @param [Hash, Types::GetTrafficPolicyInstanceCountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_traffic_policy_instance_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instance_count: 1, # required
    #   }
    # @return [Types::GetTrafficPolicyInstanceCountResponse]
    def get_traffic_policy_instance_count(params = {}, options = {})
      request = build_request(:get_traffic_policy_instance_count, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of location objects and their CIDR blocks.</p>
    # @param [Hash, Types::ListCidrBlocksRequest] params
    # @option params [String] :collection_id
    #   <p>The UUID of the CIDR collection.</p>
    # @option params [String] :location_name
    #   <p>The name of the CIDR collection location.</p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results you want returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "UUID", # required
    #     location_name: "CidrLocationNameDefaultNotAllowed",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cidr_blocks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     cidr_blocks: [
    #       {
    #         cidr_block: "Cidr",
    #         location_name: "CidrLocationNameDefaultNotAllowed"
    #       }
    #     ]
    #   }
    # @return [Types::ListCidrBlocksResponse]
    def list_cidr_blocks(params = {}, options = {})
      request = build_request(:list_cidr_blocks, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of CIDR collections in the Amazon Web Services account
    # 			(metadata only).</p>
    # @param [Hash, Types::ListCidrCollectionsRequest] params
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    #            <p>If no value is provided, the listing of results starts from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIDR collections to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cidr_collections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     cidr_collections: [
    #       {
    #         arn: "ARN",
    #         id: "UUID",
    #         name: "CollectionName",
    #         version: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListCidrCollectionsResponse]
    def list_cidr_collections(params = {}, options = {})
      request = build_request(:list_cidr_collections, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of CIDR locations for the given collection (metadata only,
    # 			does not include CIDR blocks).</p>
    # @param [Hash, Types::ListCidrLocationsRequest] params
    # @option params [String] :collection_id
    #   <p>The CIDR collection ID.</p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    #            <p>If no value is provided, the listing of results starts from the beginning.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIDR collection locations to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "UUID", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cidr_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     cidr_locations: [
    #       {
    #         location_name: "CidrLocationNameDefaultAllowed"
    #       }
    #     ]
    #   }
    # @return [Types::ListCidrLocationsResponse]
    def list_cidr_locations(params = {}, options = {})
      request = build_request(:list_cidr_locations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of supported geographic locations.</p>
    #          <p>Countries are listed first, and continents are listed last. If Amazon Route 53
    # 			supports subdivisions for a country (for example, states or provinces), the subdivisions
    # 			for that country are listed in alphabetical order immediately after the corresponding
    # 			country.</p>
    #          <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    #          <p>For a list of supported geolocation codes, see the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html">GeoLocation</a> data
    # 			type.</p>
    # @param [Hash, Types::ListGeoLocationsRequest] params
    # @option params [String] :start_continent_code
    #   <p>The code for the continent with which you want to start listing locations that Amazon
    #   			Route 53 supports for geolocation. If Route 53 has already returned a page or more of
    #   			results, if <code>IsTruncated</code> is true, and if <code>NextContinentCode</code> from
    #   			the previous response has a value, enter that value in <code>startcontinentcode</code>
    #   			to return the next page of results.</p>
    #            <p>Include <code>startcontinentcode</code> only if you want to list continents. Don't
    #   			include <code>startcontinentcode</code> when you're listing countries or countries with
    #   			their subdivisions.</p>
    # @option params [String] :start_country_code
    #   <p>The code for the country with which you want to start listing locations that Amazon
    #   			Route 53 supports for geolocation. If Route 53 has already returned a page or more of
    #   			results, if <code>IsTruncated</code> is <code>true</code>, and if
    #   				<code>NextCountryCode</code> from the previous response has a value, enter that
    #   			value in <code>startcountrycode</code> to return the next page of results.</p>
    # @option params [String] :start_subdivision_code
    #   <p>The code for the state of the United States with which you want to start listing
    #   			locations that Amazon Route 53 supports for geolocation. If Route 53 has already
    #   			returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>,
    #   			and if <code>NextSubdivisionCode</code> from the previous response has a value, enter
    #   			that value in <code>startsubdivisioncode</code> to return the next page of
    #   			results.</p>
    #            <p>To list subdivisions (U.S. states), you must include both
    #   				<code>startcountrycode</code> and <code>startsubdivisioncode</code>.</p>
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of geolocations to be included in the response body for this
    #   			request. If more than <code>maxitems</code> geolocations remain to be listed, then the
    #   			value of the <code>IsTruncated</code> element in the response is
    #   			<code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_continent_code: "GeoLocationContinentCode",
    #     start_country_code: "GeoLocationCountryCode",
    #     start_subdivision_code: "GeoLocationSubdivisionCode",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_geo_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_location_details_list: [ # required
    #       {
    #         continent_code: "GeoLocationContinentCode",
    #         continent_name: "GeoLocationContinentName",
    #         country_code: "GeoLocationCountryCode",
    #         country_name: "GeoLocationCountryName",
    #         subdivision_code: "GeoLocationSubdivisionCode",
    #         subdivision_name: "GeoLocationSubdivisionName"
    #       }
    #     ],
    #     is_truncated: false, # required
    #     next_continent_code: "GeoLocationContinentCode",
    #     next_country_code: "GeoLocationCountryCode",
    #     next_subdivision_code: "GeoLocationSubdivisionCode",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListGeoLocationsResponse]
    def list_geo_locations(params = {}, options = {})
      request = build_request(:list_geo_locations, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of the health checks that are associated with the current Amazon Web Services account. </p>
    # @param [Hash, Types::ListHealthChecksRequest] params
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more health checks. To get another group, submit another
    #   				<code>ListHealthChecks</code> request. </p>
    #            <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first health check that Amazon Route
    #   			53 will return if you submit another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more health checks to get.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of health checks that you want <code>ListHealthChecks</code> to
    #   			return in response to the current request. Amazon Route 53 returns a maximum of 1000
    #   			items. If you set <code>MaxItems</code> to a value greater than 1000, Route 53 returns
    #   			only the first 1000 health checks. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "PageMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_health_checks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_checks: [ # required
    #       {
    #         id: "HealthCheckId", # required
    #         caller_reference: "HealthCheckNonce", # required
    #         linked_service: {
    #           service_principal: "ServicePrincipal",
    #           description: "ResourceDescription"
    #         },
    #         health_check_config: { # required
    #           ip_address: "IPAddress",
    #           port: 1,
    #           type: "HTTP" # One of: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"], # required
    #           resource_path: "ResourcePath",
    #           fully_qualified_domain_name: "FullyQualifiedDomainName",
    #           search_string: "SearchString",
    #           request_interval: 1,
    #           failure_threshold: 1,
    #           measure_latency: false,
    #           inverted: false,
    #           disabled: false,
    #           health_threshold: 1,
    #           child_health_checks: ["HealthCheckId"],
    #           enable_sni: false,
    #           regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #           alarm_identifier: {
    #             region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #             name: "AlarmName", # required
    #           },
    #           insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #           routing_control_arn: "RoutingControlArn"
    #         },
    #         health_check_version: 1, # required
    #         cloud_watch_alarm_configuration: {
    #           evaluation_periods: 1, # required
    #           threshold: 1.0, # required
    #           comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], # required
    #           period: 1, # required
    #           metric_name: "MetricName", # required
    #           namespace: "Namespace", # required
    #           statistic: "Average" # One of: ["Average", "Sum", "SampleCount", "Maximum", "Minimum"], # required
    #           dimensions: [
    #             {
    #               name: "DimensionField", # required
    #               value: "DimensionField", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     marker: "PageMarker", # required
    #     is_truncated: false, # required
    #     next_marker: "PageMarker",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListHealthChecksResponse]
    def list_health_checks(params = {}, options = {})
      request = build_request(:list_health_checks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the public and private hosted zones that are associated with the
    # 			current Amazon Web Services account. The response includes a <code>HostedZones</code>
    # 			child element for each hosted zone.</p>
    #          <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of
    # 			hosted zones, you can use the <code>maxitems</code> parameter to list them in groups of
    # 			up to 100.</p>
    # @param [Hash, Types::ListHostedZonesRequest] params
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more hosted zones. To get more hosted zones, submit
    #   			another <code>ListHostedZones</code> request. </p>
    #            <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first hosted zone that Amazon Route
    #   			53 will return if you submit another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more hosted zones to get.</p>
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return.
    #   			If you have more than <code>maxitems</code> hosted zones, the value of
    #   				<code>IsTruncated</code> in the response is <code>true</code>, and the value of
    #   				<code>NextMarker</code> is the hosted zone ID of the first hosted zone that Route 53
    #   			will return if you submit another request.</p>
    # @option params [String] :delegation_set_id
    #   <p>If you're using reusable delegation sets and you want to list all of the hosted zones
    #   			that are associated with a reusable delegation set, specify the ID of that reusable
    #   			delegation set. </p>
    # @option params [String] :hosted_zone_type
    #   <p>
    #   			(Optional) Specifies if the hosted zone is private.
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "PageMarker",
    #     max_items: 1,
    #     delegation_set_id: "ResourceId",
    #     hosted_zone_type: "PrivateHostedZone" # One of: ["PrivateHostedZone"]
    #   }
    #   options = {}
    #   response = client.list_hosted_zones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zones: [ # required
    #       {
    #         id: "ResourceId", # required
    #         name: "DNSName", # required
    #         caller_reference: "Nonce", # required
    #         config: {
    #           comment: "ResourceDescription",
    #           private_zone: false
    #         },
    #         resource_record_set_count: 1,
    #         linked_service: {
    #           service_principal: "ServicePrincipal",
    #           description: "ResourceDescription"
    #         }
    #       }
    #     ],
    #     marker: "PageMarker", # required
    #     is_truncated: false, # required
    #     next_marker: "PageMarker",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListHostedZonesResponse]
    def list_hosted_zones(params = {}, options = {})
      request = build_request(:list_hosted_zones, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of your hosted zones in lexicographic order. The response includes a
    # 				<code>HostedZones</code> child element for each hosted zone created by the current
    # 				Amazon Web Services account. </p>
    #          <p>
    #             <code>ListHostedZonesByName</code> sorts hosted zones by name with the labels
    # 			reversed. For example:</p>
    #          <p>
    #             <code>com.example.www.</code>
    #          </p>
    #          <p>Note the trailing dot, which can change the sort order in some circumstances.</p>
    #          <p>If the domain name includes escape characters or Punycode,
    # 				<code>ListHostedZonesByName</code> alphabetizes the domain name using the escaped or
    # 			Punycoded value, which is the format that Amazon Route 53 saves in its database. For
    # 			example, to create a hosted zone for exämple.com, you specify ex\344mple.com for
    # 			the domain name. <code>ListHostedZonesByName</code> alphabetizes it as:</p>
    #          <p>
    #             <code>com.ex\344mple.</code>
    #          </p>
    #          <p>The labels are reversed and alphabetized using the escaped value. For more information
    # 			about valid domain name formats, including internationalized domain names, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS
    # 				Domain Name Format</a> in the <i>Amazon Route 53 Developer
    # 				Guide</i>.</p>
    #          <p>Route 53 returns up to 100 items in each response. If you have a lot of hosted zones,
    # 			use the <code>MaxItems</code> parameter to list them in groups of up to 100. The
    # 			response includes values that help navigate from one group of <code>MaxItems</code>
    # 			hosted zones to the next:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>DNSName</code> and <code>HostedZoneId</code> elements in the
    # 					response contain the values, if any, specified for the <code>dnsname</code> and
    # 						<code>hostedzoneid</code> parameters in the request that produced the
    # 					current response.</p>
    #             </li>
    #             <li>
    #                <p>The <code>MaxItems</code> element in the response contains the value, if any,
    # 					that you specified for the <code>maxitems</code> parameter in the request that
    # 					produced the current response.</p>
    #             </li>
    #             <li>
    #                <p>If the value of <code>IsTruncated</code> in the response is true, there are
    # 					more hosted zones associated with the current Amazon Web Services account. </p>
    #                <p>If <code>IsTruncated</code> is false, this response includes the last hosted
    # 					zone that is associated with the current account. The <code>NextDNSName</code>
    # 					element and <code>NextHostedZoneId</code> elements are omitted from the
    # 					response.</p>
    #             </li>
    #             <li>
    #                <p>The <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the
    # 					response contain the domain name and the hosted zone ID of the next hosted zone
    # 					that is associated with the current Amazon Web Services account. If you want to
    # 					list more hosted zones, make another call to <code>ListHostedZonesByName</code>,
    # 					and specify the value of <code>NextDNSName</code> and
    # 						<code>NextHostedZoneId</code> in the <code>dnsname</code> and
    # 						<code>hostedzoneid</code> parameters, respectively.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListHostedZonesByNameRequest] params
    # @option params [String] :dns_name
    #   <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, include the
    #   				<code>dnsname</code> parameter only if you want to specify the name of the first
    #   			hosted zone in the response. If you don't include the <code>dnsname</code> parameter,
    #   			Amazon Route 53 returns all of the hosted zones that were created by the current Amazon Web Services account, in ASCII order. For subsequent requests, include both
    #   				<code>dnsname</code> and <code>hostedzoneid</code> parameters. For
    #   				<code>dnsname</code>, specify the value of <code>NextDNSName</code> from the
    #   			previous response.</p>
    # @option params [String] :hosted_zone_id
    #   <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, do not
    #   			include the <code>hostedzoneid</code> parameter.</p>
    #            <p>If you have more hosted zones than the value of <code>maxitems</code>,
    #   				<code>ListHostedZonesByName</code> returns only the first <code>maxitems</code>
    #   			hosted zones. To get the next group of <code>maxitems</code> hosted zones, submit
    #   			another request to <code>ListHostedZonesByName</code> and include both
    #   				<code>dnsname</code> and <code>hostedzoneid</code> parameters. For the value of
    #   				<code>hostedzoneid</code>, specify the value of the <code>NextHostedZoneId</code>
    #   			element from the previous response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of hosted zones to be included in the response body for this
    #   			request. If you have more than <code>maxitems</code> hosted zones, then the value of the
    #   				<code>IsTruncated</code> element in the response is true, and the values of
    #   				<code>NextDNSName</code> and <code>NextHostedZoneId</code> specify the first hosted
    #   			zone in the next group of <code>maxitems</code> hosted zones. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dns_name: "DNSName",
    #     hosted_zone_id: "ResourceId",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_hosted_zones_by_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zones: [ # required
    #       {
    #         id: "ResourceId", # required
    #         name: "DNSName", # required
    #         caller_reference: "Nonce", # required
    #         config: {
    #           comment: "ResourceDescription",
    #           private_zone: false
    #         },
    #         resource_record_set_count: 1,
    #         linked_service: {
    #           service_principal: "ServicePrincipal",
    #           description: "ResourceDescription"
    #         }
    #       }
    #     ],
    #     dns_name: "DNSName",
    #     hosted_zone_id: "ResourceId",
    #     is_truncated: false, # required
    #     next_dns_name: "DNSName",
    #     next_hosted_zone_id: "ResourceId",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListHostedZonesByNameResponse]
    def list_hosted_zones_by_name(params = {}, options = {})
      request = build_request(:list_hosted_zones_by_name, params)
      request.send_request(options)
    end

    # <p>Lists all the private hosted zones that a specified VPC is associated with, regardless
    # 			of which Amazon Web Services account or Amazon Web Services service owns the hosted zones.
    # 			The <code>HostedZoneOwner</code> structure in the response contains one of the following
    # 			values:</p>
    #          <ul>
    #             <li>
    #                <p>An <code>OwningAccount</code> element, which contains the account number of
    # 					either the current Amazon Web Services account or another Amazon Web Services account. Some services, such as Cloud Map, create
    # 					hosted zones using the current account. </p>
    #             </li>
    #             <li>
    #                <p>An <code>OwningService</code> element, which identifies the Amazon Web Services
    # 					service that created and owns the hosted zone. For example, if a hosted zone was
    # 					created by Amazon Elastic File System (Amazon EFS), the value of
    # 						<code>Owner</code> is <code>efs.amazonaws.com</code>. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>ListHostedZonesByVPC</code> returns the hosted zones associated with the specified VPC and does not reflect the hosted zone
    # 			associations to VPCs via Route 53 Profiles. To get the associations to a Profile, call the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileResourceAssociations.html">ListProfileResourceAssociations</a> API.</p>
    #          <note>
    #             <p>When listing private hosted zones, the hosted zone and the Amazon VPC must
    # 				belong to the same partition where the hosted zones were created. A partition is a
    # 				group of Amazon Web Services Regions. Each Amazon Web Services account is scoped to
    # 				one partition.</p>
    #             <p>The following are the supported partitions:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-cn</code> - China Regions</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    #                </li>
    #             </ul>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::ListHostedZonesByVPCRequest] params
    # @option params [String] :vpc_id
    #   <p>The ID of the Amazon VPC that you want to list hosted zones for.</p>
    # @option params [String] :vpc_region
    #   <p>For the Amazon VPC that you specified for <code>VPCId</code>, the Amazon Web Services
    #   			Region that you created the VPC in. </p>
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return.
    #   			If the specified VPC is associated with more than <code>MaxItems</code> hosted zones,
    #   			the response includes a <code>NextToken</code> element. <code>NextToken</code> contains
    #   			an encrypted token that identifies the first hosted zone that Route 53 will return if
    #   			you submit another request.</p>
    # @option params [String] :next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified VPC
    #   			is associated with more hosted zones. To get more hosted zones, submit another
    #   				<code>ListHostedZonesByVPC</code> request. </p>
    #            <p>For the value of <code>NextToken</code>, specify the value of <code>NextToken</code>
    #   			from the previous response.</p>
    #            <p>If the previous response didn't include a <code>NextToken</code> element, there are no
    #   			more hosted zones to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_id: "VPCId", # required
    #     vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #     max_items: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_hosted_zones_by_vpc(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone_summaries: [ # required
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         name: "DNSName", # required
    #         owner: { # required
    #           owning_account: "AWSAccountID",
    #           owning_service: "HostedZoneOwningService"
    #         }
    #       }
    #     ],
    #     max_items: 1, # required
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListHostedZonesByVPCResponse]
    def list_hosted_zones_by_vpc(params = {}, options = {})
      request = build_request(:list_hosted_zones_by_vpc, params)
      request.send_request(options)
    end

    # <p>Lists the configurations for DNS query logging that are associated with the current
    # 				Amazon Web Services account or the configuration that is associated with a specified
    # 			hosted zone.</p>
    #          <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>. Additional information, including the format of
    # 			DNS query logs, appears in <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS Queries</a> in
    # 			the <i>Amazon Route 53 Developer Guide</i>.</p>
    # @param [Hash, Types::ListQueryLoggingConfigsRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>(Optional) If you want to list the query logging configuration that is associated with
    #   			a hosted zone, specify the ID in <code>HostedZoneId</code>. </p>
    #            <p>If you don't specify a hosted zone ID, <code>ListQueryLoggingConfigs</code> returns
    #   			all of the configurations that are associated with the current Amazon Web Services account.</p>
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than
    #   				<code>MaxResults</code> query logging configurations, use <code>NextToken</code> to
    #   			get the second and subsequent pages of results.</p>
    #            <p>For the first <code>ListQueryLoggingConfigs</code> request, omit this value.</p>
    #            <p>For the second and subsequent requests, get the value of <code>NextToken</code> from
    #   			the previous response and specify that value for <code>NextToken</code> in the
    #   			request.</p>
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of query logging configurations that you want Amazon
    #   			Route 53 to return in response to the current request. If the current Amazon Web Services account has more than <code>MaxResults</code> configurations, use the
    #   			value of <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html#API_ListQueryLoggingConfigs_RequestSyntax">NextToken</a> in the response to get the next page of results.</p>
    #            <p>If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100
    #   			configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_query_logging_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_logging_configs: [ # required
    #       {
    #         id: "QueryLoggingConfigId", # required
    #         hosted_zone_id: "ResourceId", # required
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListQueryLoggingConfigsResponse]
    def list_query_logging_configs(params = {}, options = {})
      request = build_request(:list_query_logging_configs, params)
      request.send_request(options)
    end

    # <p>Lists the resource record sets in a specified hosted zone.</p>
    #          <p>
    #             <code>ListResourceRecordSets</code> returns up to 300 resource record sets at a time
    # 			in ASCII order, beginning at a position specified by the <code>name</code> and
    # 				<code>type</code> elements.</p>
    #          <p>
    #             <b>Sort order</b>
    #          </p>
    #          <p>
    #             <code>ListResourceRecordSets</code> sorts results first by DNS name with the labels
    # 			reversed, for example:</p>
    #          <p>
    #             <code>com.example.www.</code>
    #          </p>
    #          <p>Note the trailing dot, which can change the sort order when the record name contains
    # 			characters that appear before <code>.</code> (decimal 46) in the ASCII table. These
    # 			characters include the following: <code>! " # $ % & ' ( ) * + , -</code>
    #          </p>
    #          <p>When multiple records have the same DNS name, <code>ListResourceRecordSets</code>
    # 			sorts results by the record type.</p>
    #          <p>
    #             <b>Specifying where to start listing records</b>
    #          </p>
    #          <p>You can use the name and type elements to specify the resource record set that the
    # 			list begins with:</p>
    #          <dl>
    #             <dt>If you do not specify Name or Type</dt>
    #             <dd>
    #                <p>The results begin with the first resource record set that the hosted zone
    # 						contains.</p>
    #             </dd>
    #             <dt>If you specify Name but not Type</dt>
    #             <dd>
    #                <p>The results begin with the first resource record set in the list whose
    # 						name is greater than or equal to <code>Name</code>.</p>
    #             </dd>
    #             <dt>If you specify Type but not Name</dt>
    #             <dd>
    #                <p>Amazon Route 53 returns the <code>InvalidInput</code> error.</p>
    #             </dd>
    #             <dt>If you specify both Name and Type</dt>
    #             <dd>
    #                <p>The results begin with the first resource record set in the list whose
    # 						name is greater than or equal to <code>Name</code>, and whose type is
    # 						greater than or equal to <code>Type</code>.</p>
    #                <note>
    #                   <p>Type is only used to sort between records with the same record Name.</p>
    #                </note>
    #             </dd>
    #          </dl>
    #          <p>
    #             <b>Resource record sets that are PENDING</b>
    #          </p>
    #          <p>This action returns the most current version of the records. This includes records
    # 			that are <code>PENDING</code>, and that are not yet available on all Route 53 DNS
    # 			servers.</p>
    #          <p>
    #             <b>Changing resource record sets</b>
    #          </p>
    #          <p>To ensure that you get an accurate listing of the resource record sets for a hosted
    # 			zone at a point in time, do not submit a <code>ChangeResourceRecordSets</code> request
    # 			while you're paging through the results of a <code>ListResourceRecordSets</code>
    # 			request. If you do, some pages may display results without the latest changes while
    # 			other pages display results with the latest changes.</p>
    #          <p>
    #             <b>Displaying the next page of results</b>
    #          </p>
    #          <p>If a <code>ListResourceRecordSets</code> command returns more than one page of
    # 			results, the value of <code>IsTruncated</code> is <code>true</code>. To display the next
    # 			page of results, get the values of <code>NextRecordName</code>,
    # 				<code>NextRecordType</code>, and <code>NextRecordIdentifier</code> (if any) from the
    # 			response. Then submit another <code>ListResourceRecordSets</code> request, and specify
    # 			those values for <code>StartRecordName</code>, <code>StartRecordType</code>, and
    # 				<code>StartRecordIdentifier</code>.</p>
    # @param [Hash, Types::ListResourceRecordSetsRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that contains the resource record sets that you want to
    #   			list.</p>
    # @option params [String] :start_record_name
    #   <p>The first name in the lexicographic ordering of resource record sets that you want to
    #   			list. If the specified record name doesn't exist, the results begin with the first
    #   			resource record set that has a name greater than the value of <code>name</code>.</p>
    # @option params [String] :start_record_type
    #   <p>The type of resource record set to begin the record listing from.</p>
    #            <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> |
    #   				<code>CAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> |
    #   				<code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> |
    #   				<code>SRV</code> | <code>TXT</code>
    #            </p>
    #            <p>Values for weighted, latency, geolocation, and failover resource record sets:
    #   				<code>A</code> | <code>AAAA</code> | <code>CAA</code> | <code>CNAME</code> |
    #   				<code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> |
    #   				<code>SRV</code> | <code>TXT</code>
    #            </p>
    #            <p>Values for alias resource record sets: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>API Gateway custom regional API or edge-optimized
    #   						API</b>: A</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CloudFront distribution</b>: A or AAAA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Elastic Beanstalk environment that has a regionalized
    #   						subdomain</b>: A</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Elastic Load Balancing load balancer</b>: A |
    #   					AAAA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>S3 bucket</b>: A</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>VPC interface VPC endpoint</b>: A</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Another resource record set in this hosted
    #   						zone:</b> The type of the resource record set that the alias
    #   					references.</p>
    #               </li>
    #            </ul>
    #            <p>Constraint: Specifying <code>type</code> without specifying <code>name</code> returns
    #   			an <code>InvalidInput</code> error.</p>
    # @option params [String] :start_record_identifier
    #   <p>
    #               <i>Resource record sets that have a routing policy other than
    #   				simple:</i> If results were truncated for a given DNS name and type, specify
    #   			the value of <code>NextRecordIdentifier</code> from the previous response to get the
    #   			next resource record set that has the current DNS name and type.</p>
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of resource records sets to include in the response body
    #   			for this request. If the response includes more than <code>maxitems</code> resource
    #   			record sets, the value of the <code>IsTruncated</code> element in the response is
    #   				<code>true</code>, and the values of the <code>NextRecordName</code> and
    #   				<code>NextRecordType</code> elements in the response identify the first resource
    #   			record set in the next group of <code>maxitems</code> resource record sets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     start_record_name: "DNSName",
    #     start_record_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     start_record_identifier: "ResourceRecordSetIdentifier",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_resource_record_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_record_sets: [ # required
    #       {
    #         name: "DNSName", # required
    #         type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #         set_identifier: "ResourceRecordSetIdentifier",
    #         weight: 1,
    #         region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-north-1", "cn-northwest-1", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "ap-southeast-7", "us-gov-east-1", "us-gov-west-1", "ap-east-2", "ap-southeast-6"],
    #         geo_location: {
    #           continent_code: "GeoLocationContinentCode",
    #           country_code: "GeoLocationCountryCode",
    #           subdivision_code: "GeoLocationSubdivisionCode"
    #         },
    #         failover: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #         multi_value_answer: false,
    #         ttl: 1,
    #         resource_records: [
    #           {
    #             value: "RData", # required
    #           }
    #         ],
    #         alias_target: {
    #           hosted_zone_id: "ResourceId", # required
    #           dns_name: "DNSName", # required
    #           evaluate_target_health: false, # required
    #         },
    #         health_check_id: "HealthCheckId",
    #         traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #         cidr_routing_config: {
    #           collection_id: "UUID", # required
    #           location_name: "CidrLocationNameDefaultAllowed", # required
    #         },
    #         geo_proximity_location: {
    #           aws_region: "AWSRegion",
    #           local_zone_group: "LocalZoneGroup",
    #           coordinates: {
    #             latitude: "Latitude", # required
    #             longitude: "Longitude", # required
    #           },
    #           bias: 1
    #         }
    #       }
    #     ],
    #     is_truncated: false, # required
    #     next_record_name: "DNSName",
    #     next_record_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     next_record_identifier: "ResourceRecordSetIdentifier",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListResourceRecordSetsResponse]
    def list_resource_record_sets(params = {}, options = {})
      request = build_request(:list_resource_record_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the reusable delegation sets that are associated with the current
    # 				Amazon Web Services account.</p>
    # @param [Hash, Types::ListReusableDelegationSetsRequest] params
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more reusable delegation sets. To get another group,
    #   			submit another <code>ListReusableDelegationSets</code> request. </p>
    #            <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first reusable delegation set that
    #   			Amazon Route 53 will return if you submit another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more reusable delegation sets to get.</p>
    # @option params [Integer] :max_items
    #   <p>The number of reusable delegation sets that you want Amazon Route 53 to return in the
    #   			response to this request. If you specify a value greater than 100, Route 53 returns only
    #   			the first 100 reusable delegation sets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "PageMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_reusable_delegation_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegation_sets: [ # required
    #       {
    #         id: "ResourceId",
    #         caller_reference: "Nonce",
    #         name_servers: ["DNSName"], # required
    #       }
    #     ],
    #     marker: "PageMarker", # required
    #     is_truncated: false, # required
    #     next_marker: "PageMarker",
    #     max_items: 1, # required
    #   }
    # @return [Types::ListReusableDelegationSetsResponse]
    def list_reusable_delegation_sets(params = {}, options = {})
      request = build_request(:list_reusable_delegation_sets, params)
      request.send_request(options)
    end

    # <p>Lists tags for one health check or hosted zone. </p>
    #          <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_id
    #   <p>The ID of the resource for which you want to retrieve tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "healthcheck" # One of: ["healthcheck", "hostedzone"], # required
    #     resource_id: "TagResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tag_set: { # required
    #       resource_type: "healthcheck" # One of: ["healthcheck", "hostedzone"],
    #       resource_id: "TagResourceId",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists tags for up to 10 health checks or hosted zones.</p>
    #          <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourcesRequest] params
    # @option params [String] :resource_type
    #   <p>The type of the resources.</p>
    #            <ul>
    #               <li>
    #                  <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :resource_ids
    #   <p>A complex type that contains the ResourceId element for each resource for which you
    #   			want to get a list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "healthcheck" # One of: ["healthcheck", "hostedzone"], # required
    #     resource_ids: ["TagResourceId"], # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tag_sets: [ # required
    #       {
    #         resource_type: "healthcheck" # One of: ["healthcheck", "hostedzone"],
    #         resource_id: "TagResourceId",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourcesResponse]
    def list_tags_for_resources(params = {}, options = {})
      request = build_request(:list_tags_for_resources, params)
      request.send_request(options)
    end

    # <p>Gets information about the latest version for every traffic policy that is associated
    # 			with the current Amazon Web Services account. Policies are listed in the order that they
    # 			were created in. </p>
    #          <p>For information about how of deleting a traffic policy affects the response from
    # 				<code>ListTrafficPolicies</code>, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html">DeleteTrafficPolicy</a>. </p>
    # @param [Hash, Types::ListTrafficPoliciesRequest] params
    # @option params [String] :traffic_policy_id_marker
    #   <p>(Conditional) For your first request to <code>ListTrafficPolicies</code>, don't
    #   			include the <code>TrafficPolicyIdMarker</code> parameter.</p>
    #            <p>If you have more traffic policies than the value of <code>MaxItems</code>,
    #   				<code>ListTrafficPolicies</code> returns only the first <code>MaxItems</code>
    #   			traffic policies. To get the next group of policies, submit another request to
    #   				<code>ListTrafficPolicies</code>. For the value of
    #   				<code>TrafficPolicyIdMarker</code>, specify the value of
    #   				<code>TrafficPolicyIdMarker</code> that was returned in the previous
    #   			response.</p>
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of traffic policies that you want Amazon Route 53 to
    #   			return in response to this request. If you have more than <code>MaxItems</code> traffic
    #   			policies, the value of <code>IsTruncated</code> in the response is <code>true</code>,
    #   			and the value of <code>TrafficPolicyIdMarker</code> is the ID of the first traffic
    #   			policy that Route 53 will return if you submit another request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_policy_id_marker: "TrafficPolicyId",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_traffic_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_summaries: [ # required
    #       {
    #         id: "TrafficPolicyId", # required
    #         name: "TrafficPolicyName", # required
    #         type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #         latest_version: 1, # required
    #         traffic_policy_count: 1, # required
    #       }
    #     ],
    #     is_truncated: false, # required
    #     traffic_policy_id_marker: "TrafficPolicyId", # required
    #     max_items: 1, # required
    #   }
    # @return [Types::ListTrafficPoliciesResponse]
    def list_traffic_policies(params = {}, options = {})
      request = build_request(:list_traffic_policies, params)
      request.send_request(options)
    end

    # <p>Gets information about the traffic policy instances that you created by using the
    # 			current Amazon Web Services account.</p>
    #          <note>
    #             <p>After you submit an <code>UpdateTrafficPolicyInstance</code> request, there's a
    # 				brief delay while Amazon Route 53 creates the resource record sets that are
    # 				specified in the traffic policy definition. For more information, see the
    # 					<code>State</code> response element.</p>
    #          </note>
    #          <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    # @param [Hash, Types::ListTrafficPolicyInstancesRequest] params
    # @option params [String] :hosted_zone_id_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>HostedZoneId</code>, specify the value of
    #   				<code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone
    #   			ID of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the type of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances that you want Amazon Route 53 to return
    #   			in response to a <code>ListTrafficPolicyInstances</code> request. If you have more than
    #   				<code>MaxItems</code> traffic policy instances, the value of the
    #   				<code>IsTruncated</code> element in the response is <code>true</code>, and the
    #   			values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>,
    #   			and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_traffic_policy_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instances: [ # required
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #         hosted_zone_id: "ResourceId", # required
    #         name: "DNSName", # required
    #         ttl: 1, # required
    #         state: "TrafficPolicyInstanceState", # required
    #         message: "Message", # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #         traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       }
    #     ],
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     is_truncated: false, # required
    #     max_items: 1, # required
    #   }
    # @return [Types::ListTrafficPolicyInstancesResponse]
    def list_traffic_policy_instances(params = {}, options = {})
      request = build_request(:list_traffic_policy_instances, params)
      request.send_request(options)
    end

    # <p>Gets information about the traffic policy instances that you created in a specified
    # 			hosted zone.</p>
    #          <note>
    #             <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an
    # 					<code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while
    # 				Amazon Route 53 creates the resource record sets that are specified in the traffic
    # 				policy definition. For more information, see the <code>State</code> response
    # 				element.</p>
    #          </note>
    #          <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    # @param [Hash, Types::ListTrafficPolicyInstancesByHostedZoneRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to list traffic policy instances for.</p>
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response is true, you have
    #   			more traffic policy instances. To get more traffic policy instances, submit another
    #   				<code>ListTrafficPolicyInstances</code> request. For the value of
    #   				<code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response is true, you have
    #   			more traffic policy instances. To get more traffic policy instances, submit another
    #   				<code>ListTrafficPolicyInstances</code> request. For the value of
    #   				<code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the type of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances to be included in the response body for
    #   			this request. If you have more than <code>MaxItems</code> traffic policy instances, the
    #   			value of the <code>IsTruncated</code> element in the response is <code>true</code>, and
    #   			the values of <code>HostedZoneIdMarker</code>,
    #   				<code>TrafficPolicyInstanceNameMarker</code>, and
    #   				<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance that Amazon Route 53 will return if you submit another request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_traffic_policy_instances_by_hosted_zone(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instances: [ # required
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #         hosted_zone_id: "ResourceId", # required
    #         name: "DNSName", # required
    #         ttl: 1, # required
    #         state: "TrafficPolicyInstanceState", # required
    #         message: "Message", # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #         traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       }
    #     ],
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     is_truncated: false, # required
    #     max_items: 1, # required
    #   }
    # @return [Types::ListTrafficPolicyInstancesByHostedZoneResponse]
    def list_traffic_policy_instances_by_hosted_zone(params = {}, options = {})
      request = build_request(:list_traffic_policy_instances_by_hosted_zone, params)
      request.send_request(options)
    end

    # <p>Gets information about the traffic policy instances that you created by using a
    # 			specify traffic policy version.</p>
    #          <note>
    #             <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an
    # 					<code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while
    # 				Amazon Route 53 creates the resource record sets that are specified in the traffic
    # 				policy definition. For more information, see the <code>State</code> response
    # 				element.</p>
    #          </note>
    #          <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    # @param [Hash, Types::ListTrafficPolicyInstancesByPolicyRequest] params
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy for which you want to list traffic policy
    #   			instances.</p>
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy for which you want to list traffic policy instances.
    #   			The version must be associated with the traffic policy that is specified by
    #   				<code>TrafficPolicyId</code>.</p>
    # @option params [String] :hosted_zone_id_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request. </p>
    #            <p>For the value of <code>hostedzoneid</code>, specify the value of
    #   				<code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone
    #   			ID of the first traffic policy instance that Amazon Route 53 will return if you submit
    #   			another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request.</p>
    #            <p>For the value of <code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance that Amazon Route 53 will return if you
    #   			submit another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request.</p>
    #            <p>For the value of <code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance that Amazon Route 53 will return if you
    #   			submit another request.</p>
    #            <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances to be included in the response body for
    #   			this request. If you have more than <code>MaxItems</code> traffic policy instances, the
    #   			value of the <code>IsTruncated</code> element in the response is <code>true</code>, and
    #   			the values of <code>HostedZoneIdMarker</code>,
    #   				<code>TrafficPolicyInstanceNameMarker</code>, and
    #   				<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance that Amazon Route 53 will return if you submit another request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_traffic_policy_instances_by_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instances: [ # required
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #         hosted_zone_id: "ResourceId", # required
    #         name: "DNSName", # required
    #         ttl: 1, # required
    #         state: "TrafficPolicyInstanceState", # required
    #         message: "Message", # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #         traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       }
    #     ],
    #     hosted_zone_id_marker: "ResourceId",
    #     traffic_policy_instance_name_marker: "DNSName",
    #     traffic_policy_instance_type_marker: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"],
    #     is_truncated: false, # required
    #     max_items: 1, # required
    #   }
    # @return [Types::ListTrafficPolicyInstancesByPolicyResponse]
    def list_traffic_policy_instances_by_policy(params = {}, options = {})
      request = build_request(:list_traffic_policy_instances_by_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about all of the versions for a specified traffic policy.</p>
    #          <p>Traffic policy versions are listed in numerical order by
    # 			<code>VersionNumber</code>.</p>
    # @param [Hash, Types::ListTrafficPolicyVersionsRequest] params
    # @option params [String] :id
    #   <p>Specify the value of <code>Id</code> of the traffic policy for which you want to list
    #   			all versions.</p>
    # @option params [String] :traffic_policy_version_marker
    #   <p>For your first request to <code>ListTrafficPolicyVersions</code>, don't include the
    #   				<code>TrafficPolicyVersionMarker</code> parameter.</p>
    #            <p>If you have more traffic policy versions than the value of <code>MaxItems</code>,
    #   				<code>ListTrafficPolicyVersions</code> returns only the first group of
    #   				<code>MaxItems</code> versions. To get more traffic policy versions, submit another
    #   				<code>ListTrafficPolicyVersions</code> request. For the value of
    #   				<code>TrafficPolicyVersionMarker</code>, specify the value of
    #   				<code>TrafficPolicyVersionMarker</code> in the previous response.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy versions that you want Amazon Route 53 to include
    #   			in the response body for this request. If the specified traffic policy has more than
    #   				<code>MaxItems</code> versions, the value of <code>IsTruncated</code> in the
    #   			response is <code>true</code>, and the value of the
    #   				<code>TrafficPolicyVersionMarker</code> element is the ID of the first version that
    #   			Route 53 will return if you submit another request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyId", # required
    #     traffic_policy_version_marker: "TrafficPolicyVersionMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_traffic_policy_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policies: [ # required
    #       {
    #         id: "TrafficPolicyId", # required
    #         version: 1, # required
    #         name: "TrafficPolicyName", # required
    #         type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #         document: "TrafficPolicyDocument", # required
    #         comment: "TrafficPolicyComment"
    #       }
    #     ],
    #     is_truncated: false, # required
    #     traffic_policy_version_marker: "TrafficPolicyVersionMarker", # required
    #     max_items: 1, # required
    #   }
    # @return [Types::ListTrafficPolicyVersionsResponse]
    def list_traffic_policy_versions(params = {}, options = {})
      request = build_request(:list_traffic_policy_versions, params)
      request.send_request(options)
    end

    # <p>Gets a list of the VPCs that were created by other accounts and that can be associated
    # 			with a specified hosted zone because you've submitted one or more
    # 				<code>CreateVPCAssociationAuthorization</code> requests. </p>
    #          <p>The response includes a <code>VPCs</code> element with a <code>VPC</code> child
    # 			element for each VPC that can be associated with the hosted zone.</p>
    # @param [Hash, Types::ListVPCAssociationAuthorizationsRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone for which you want a list of VPCs that can be associated
    #   			with the hosted zone.</p>
    # @option params [String] :next_token
    #   <p>
    #               <i>Optional</i>: If a response includes a <code>NextToken</code>
    #   			element, there are more VPCs that can be associated with the specified hosted zone. To
    #   			get the next page of results, submit another request, and include the value of
    #   				<code>NextToken</code> from the response in the <code>nexttoken</code> parameter in
    #   			another <code>ListVPCAssociationAuthorizations</code> request.</p>
    # @option params [Integer] :max_results
    #   <p>
    #               <i>Optional</i>: An integer that specifies the maximum number of VPCs
    #   			that you want Amazon Route 53 to return. If you don't specify a value for
    #   				<code>MaxResults</code>, Route 53 returns up to 50 VPCs per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_vpc_association_authorizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone_id: "ResourceId", # required
    #     next_token: "PaginationToken",
    #     vp_cs: [ # required
    #       {
    #         vpc_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "eu-central-2", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "me-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-south-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "cn-northwest-1", "af-south-1", "eu-south-1", "eu-south-2", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"],
    #         vpc_id: "VPCId"
    #       }
    #     ]
    #   }
    # @return [Types::ListVPCAssociationAuthorizationsResponse]
    def list_vpc_association_authorizations(params = {}, options = {})
      request = build_request(:list_vpc_association_authorizations, params)
      request.send_request(options)
    end

    # <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a
    # 			specified record name and type. You can optionally specify the IP address of a DNS
    # 			resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
    #          <p>This call only supports querying public hosted zones.</p>
    #          <note>
    #             <p>The <code>TestDnsAnswer </code> returns information similar to what you would expect from the answer
    # 			section of the <code>dig</code> command. Therefore, if you query for the name
    # 			servers of a subdomain that point to the parent name servers, those will not be
    # 			returned.</p>
    #          </note>
    # @param [Hash, Types::TestDNSAnswerRequest] params
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want Amazon Route 53 to simulate a query
    #   			for.</p>
    # @option params [String] :record_name
    #   <p>The name of the resource record set that you want Amazon Route 53 to simulate a query
    #   			for.</p>
    # @option params [String] :record_type
    #   <p>The type of the resource record set.</p>
    # @option params [String] :resolver_ip
    #   <p>If you want to simulate a request from a specific DNS resolver, specify the IP address
    #   			for that resolver. If you omit this value, <code>TestDnsAnswer</code> uses the IP
    #   			address of a DNS resolver in the Amazon Web Services US East (N. Virginia) Region
    #   				(<code>us-east-1</code>).</p>
    # @option params [String] :edns0_client_subnet_ip
    #   <p>If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or
    #   			IPv6 address of a client in the applicable location, for example,
    #   				<code>192.0.2.44</code> or <code>2001:db8:85a3::8a2e:370:7334</code>.</p>
    # @option params [String] :edns0_client_subnet_mask
    #   <p>If you specify an IP address for <code>edns0clientsubnetip</code>, you can optionally
    #   			specify the number of bits of the IP address that you want the checking tool to include
    #   			in the DNS query. For example, if you specify <code>192.0.2.44</code> for
    #   				<code>edns0clientsubnetip</code> and <code>24</code> for
    #   				<code>edns0clientsubnetmask</code>, the checking tool will simulate a request from
    #   			192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6
    #   			addresses.</p>
    #            <p>The range of valid values depends on whether <code>edns0clientsubnetip</code> is an
    #   			IPv4 or an IPv6 address:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>IPv4</b>: Specify a value between 0 and 32</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IPv6</b>: Specify a value between 0 and
    #   					128</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     hosted_zone_id: "ResourceId", # required
    #     record_name: "DNSName", # required
    #     record_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #     resolver_ip: "IPAddress",
    #     edns0_client_subnet_ip: "IPAddress",
    #     edns0_client_subnet_mask: "SubnetMask"
    #   }
    #   options = {}
    #   response = client.test_dns_answer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nameserver: "Nameserver", # required
    #     record_name: "DNSName", # required
    #     record_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #     record_data: ["RecordDataEntry"], # required
    #     response_code: "DNSRCode", # required
    #     protocol: "TransportProtocol", # required
    #   }
    # @return [Types::TestDNSAnswerResponse]
    def test_dns_answer(params = {}, options = {})
      request = build_request(:test_dns_answer, params)
      request.send_request(options)
    end

    # <p>Updates an existing health check. Note that some values can't be updated. </p>
    #          <p>For more information about updating health checks, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html">Creating,
    # 				Updating, and Deleting Health Checks</a> in the <i>Amazon Route 53
    # 				Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateHealthCheckRequest] params
    # @option params [String] :health_check_id
    #   <p>The ID for the health check for which you want detailed information. When you created
    #   			the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the
    #   				<code>HealthCheckId</code> element.</p>
    # @option params [Integer] :health_check_version
    #   <p>A sequential counter that Amazon Route 53 sets to <code>1</code> when you create a
    #   			health check and increments by 1 each time you update settings for the health
    #   			check.</p>
    #            <p>We recommend that you use <code>GetHealthCheck</code> or <code>ListHealthChecks</code>
    #   			to get the current value of <code>HealthCheckVersion</code> for the health check that
    #   			you want to update, and that you include that value in your
    #   				<code>UpdateHealthCheck</code> request. This prevents Route 53 from overwriting an
    #   			intervening update:</p>
    #            <ul>
    #               <li>
    #                  <p>If the value in the <code>UpdateHealthCheck</code> request matches the value
    #   					of <code>HealthCheckVersion</code> in the health check, Route 53 updates the
    #   					health check with the new settings.</p>
    #               </li>
    #               <li>
    #                  <p>If the value of <code>HealthCheckVersion</code> in the health check is
    #   					greater, the health check was changed after you got the version number. Route 53
    #   					does not update the health check, and it returns a
    #   						<code>HealthCheckVersionMismatch</code> error.</p>
    #               </li>
    #            </ul>
    # @option params [String] :ip_address
    #   <p>The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform
    #   			health checks on. If you don't specify a value for <code>IPAddress</code>, Route 53
    #   			sends a DNS request to resolve the domain name that you specify in
    #   				<code>FullyQualifiedDomainName</code> at the interval that you specify in
    #   				<code>RequestInterval</code>. Using an IP address that is returned by DNS, Route 53
    #   			then checks the health of the endpoint.</p>
    #            <p>Use one of the following formats for the value of <code>IPAddress</code>: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>IPv4 address</b>: four values between 0 and 255,
    #   					separated by periods (.), for example, <code>192.0.2.44</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IPv6 address</b>: eight groups of four
    #   					hexadecimal values, separated by colons (:), for example,
    #   						<code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten
    #   					IPv6 addresses as described in RFC 5952, for example,
    #   						<code>2001:db8:85a3::abcd:1:2345</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP
    #   			address, associate it with your EC2 instance, and specify the Elastic IP address for
    #   				<code>IPAddress</code>. This ensures that the IP address of your instance never
    #   			changes. For more information, see the applicable documentation:</p>
    #            <ul>
    #               <li>
    #                  <p>Linux: <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #   						Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Linux
    #   						Instances</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Windows: <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html">Elastic IP
    #   						Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Windows
    #   						Instances</i>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If a health check already has a value for <code>IPAddress</code>, you can change
    #   				the value. However, you can't update an existing health check to add or remove the
    #   				value of <code>IPAddress</code>. </p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>. </p>
    #            <p>Constraints: Route 53 can't check the health of endpoints for which the IP address is
    #   			in local, private, non-routable, or multicast ranges. For more information about IP
    #   			addresses for which you can't create health checks, see the following documents:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4
    #   						Addresses</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4
    #   						Prefix for Shared Address Space</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6
    #   						Addresses</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :port
    #   <p>The port on the endpoint that you want Amazon Route 53 to perform health checks
    #   			on.</p>
    #            <note>
    #               <p>Don't specify a value for <code>Port</code> when you specify a value for
    #   					<code>Type</code> of <code>CLOUDWATCH_METRIC</code> or
    #   				<code>CALCULATED</code>.</p>
    #            </note>
    # @option params [String] :resource_path
    #   <p>The path that you want Amazon Route 53 to request when performing health checks. The
    #   			path can be any value for which your endpoint will return an HTTP status code of 2xx or
    #   			3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.
    #   			You can also include query string parameters, for example,
    #   				<code>/welcome.html?language=jp&login=y</code>. </p>
    #            <p>Specify this value only if you want to change it.</p>
    # @option params [String] :fully_qualified_domain_name
    #   <p>Amazon Route 53 behavior depends on whether you specify a value for
    #   				<code>IPAddress</code>.</p>
    #            <note>
    #               <p>If a health check already has a value for <code>IPAddress</code>, you can change
    #   				the value. However, you can't update an existing health check to add or remove the
    #   				value of <code>IPAddress</code>. </p>
    #            </note>
    #            <p>
    #               <b>If you specify a value for</b>
    #               <code>IPAddress</code>:</p>
    #            <p>Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes
    #   			the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for
    #   			all health checks except TCP health checks. This is typically the fully qualified DNS
    #   			name of the endpoint on which you want Route 53 to perform health checks.</p>
    #            <p>When Route 53 checks the health of an endpoint, here is how it constructs the
    #   				<code>Host</code> header:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify a value of <code>80</code> for <code>Port</code> and
    #   						<code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>,
    #   					Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the
    #   					endpoint in the <code>Host</code> header.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a value of <code>443</code> for <code>Port</code> and
    #   						<code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>,
    #   					Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the
    #   					endpoint in the <code>Host</code> header.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify another value for <code>Port</code> and any value except
    #   						<code>TCP</code> for <code>Type</code>, Route 53 passes
    #   							<i>
    #                        <code>FullyQualifiedDomainName</code>:<code>Port</code>
    #                     </i>
    #   					to the endpoint in the <code>Host</code> header.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Route 53
    #   			substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each
    #   			of the above cases.</p>
    #            <p>
    #               <b>If you don't specify a value for</b>
    #               <code>IPAddress</code>:</p>
    #            <p>If you don't specify a value for <code>IPAddress</code>, Route 53 sends a DNS request
    #   			to the domain that you specify in <code>FullyQualifiedDomainName</code> at the interval
    #   			you specify in <code>RequestInterval</code>. Using an IPv4 address that is returned by
    #   			DNS, Route 53 then checks the health of the endpoint.</p>
    #            <p>If you don't specify a value for <code>IPAddress</code>, you can’t update the health check to remove the <code>FullyQualifiedDomainName</code>; if you don’t specify a value for <code>IPAddress</code> on creation, a 
    #   			<code>FullyQualifiedDomainName</code> is required.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>IPAddress</code>, Route 53 uses only IPv4
    #   				to send health checks to the endpoint. If there's no resource record set with a type
    #   				of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the
    #   				health check fails with a "DNS resolution failed" error.</p>
    #            </note>
    #            <p>If you want to check the health of weighted, latency, or failover resource record sets
    #   			and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we
    #   			recommend that you create a separate health check for each endpoint. For example, create
    #   			a health check for each HTTP server that is serving content for www.example.com. For the
    #   			value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server
    #   			(such as <code>us-east-2-www.example.com</code>), not the name of the resource record
    #   			sets (www.example.com).</p>
    #            <important>
    #               <p>In this configuration, if the value of <code>FullyQualifiedDomainName</code>
    #   				matches the name of the resource record sets and you then associate the health check
    #   				with those resource record sets, health check results will be unpredictable.</p>
    #            </important>
    #            <p>In addition, if the value of <code>Type</code> is <code>HTTP</code>,
    #   				<code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>,
    #   			Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the
    #   				<code>Host</code> header, as it does when you specify a value for
    #   				<code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Route
    #   			53 doesn't pass a <code>Host</code> header.</p>
    # @option params [String] :search_string
    #   <p>If the value of <code>Type</code> is <code>HTTP_STR_MATCH</code> or
    #   				<code>HTTPS_STR_MATCH</code>, the string that you want Amazon Route 53 to search for
    #   			in the response body from the specified resource. If the string appears in the response
    #   			body, Route 53 considers the resource healthy. (You can't change the value of
    #   				<code>Type</code> when you update a health check.)</p>
    # @option params [Integer] :failure_threshold
    #   <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon
    #   			Route 53 to change the current status of the endpoint from unhealthy to healthy or vice
    #   			versa. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the
    #   				<i>Amazon Route 53 Developer Guide</i>.</p>
    #            <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is
    #   			three health checks.</p>
    # @option params [Boolean] :inverted
    #   <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for
    #   			example, to consider a health check unhealthy when it otherwise would be considered
    #   			healthy.</p>
    # @option params [Boolean] :disabled
    #   <p>Stops Route 53 from performing health checks. When you disable a health check, here's
    #   			what happens:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Health checks that check the health of
    #   						endpoints:</b> Route 53 stops submitting requests to your
    #   					application, server, or other resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Calculated health checks:</b> Route 53 stops
    #   					aggregating the status of the referenced health checks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Health checks that monitor CloudWatch alarms:</b>
    #   					Route 53 stops monitoring the corresponding CloudWatch metrics.</p>
    #               </li>
    #            </ul>
    #            <p>After you disable a health check, Route 53 considers the status of the health check to
    #   			always be healthy. If you configured DNS failover, Route 53 continues to route traffic
    #   			to the corresponding resources. Additionally, in disabled state, you can also invert the
    #   			status of the health check to route traffic differently. For more information, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-Inverted">Inverted</a>. </p>
    #            <p>Charges for a health check still apply when the health check is disabled. For more
    #   			information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53
    #   				Pricing</a>.</p>
    # @option params [Integer] :health_threshold
    #   <p>The number of child health checks that are associated with a <code>CALCULATED</code>
    #   			health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health
    #   			check to be considered healthy. To specify the child health checks that you want to
    #   			associate with a <code>CALCULATED</code> health check, use the
    #   				<code>ChildHealthChecks</code> and <code>ChildHealthCheck</code> elements.</p>
    #            <p>Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify a number greater than the number of child health checks, Route
    #   					53 always considers this health check to be unhealthy.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>0</code>, Route 53 always considers this health check to
    #   					be healthy.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :child_health_checks
    #   <p>A complex type that contains one <code>ChildHealthCheck</code> element for each health
    #   			check that you want to associate with a <code>CALCULATED</code> health check.</p>
    # @option params [Boolean] :enable_sni
    #   <p>Specify whether you want Amazon Route 53 to send the value of
    #   				<code>FullyQualifiedDomainName</code> to the endpoint in the
    #   				<code>client_hello</code> message during <code>TLS</code> negotiation. This allows
    #   			the endpoint to respond to <code>HTTPS</code> health check requests with the applicable
    #   			SSL/TLS certificate.</p>
    #            <p>Some endpoints require that HTTPS requests include the host name in the
    #   				<code>client_hello</code> message. If you don't enable SNI, the status of the health
    #   			check will be SSL alert <code>handshake_failure</code>. A health check can also have
    #   			that status for other reasons. If SNI is enabled and you're still getting the error,
    #   			check the SSL/TLS configuration on your endpoint and confirm that your certificate is
    #   			valid.</p>
    #            <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common
    #   				Name</code> field and possibly several more in the <code>Subject Alternative
    #   				Names</code> field. One of the domain names in the certificate should match the
    #   			value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint
    #   			responds to the <code>client_hello</code> message with a certificate that does not
    #   			include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a
    #   			health checker will retry the handshake. In the second attempt, the health checker will
    #   			omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code>
    #   			message.</p>
    # @option params [Array<String>] :regions
    #   <p>A complex type that contains one <code>Region</code> element for each region that you
    #   			want Amazon Route 53 health checkers to check the specified endpoint from.</p>
    # @option params [Types::AlarmIdentifier] :alarm_identifier
    #   <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53
    #   			health checkers to use to determine whether the specified health check is
    #   			healthy.</p>
    # @option params [String] :insufficient_data_health_status
    #   <p>When CloudWatch has insufficient data about the metric to determine the alarm state,
    #   			the status that you want Amazon Route 53 to assign to the health check:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Healthy</code>: Route 53 considers the health check to be
    #   					healthy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unhealthy</code>: Route 53 considers the health check to be
    #   					unhealthy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LastKnownStatus</code>: By default, Route 53 uses the status of the
    #   					health check from the last time CloudWatch had sufficient data to determine the
    #   					alarm state. For new health checks that have no last known status, the status
    #   					for the health check is healthy.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :reset_elements
    #   <p>A complex type that contains one <code>ResettableElementName</code> element for each
    #   			element that you want to reset to the default value. Valid values for
    #   				<code>ResettableElementName</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ChildHealthChecks</code>: Amazon Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ChildHealthChecks">ChildHealthChecks</a> to null.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FullyQualifiedDomainName</code>: Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>. to null.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Regions</code>: Route 53 resets the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a> list to the default set of regions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourcePath</code>: Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ResourcePath">ResourcePath</a> to null.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     health_check_id: "HealthCheckId", # required
    #     health_check_version: 1,
    #     ip_address: "IPAddress",
    #     port: 1,
    #     resource_path: "ResourcePath",
    #     fully_qualified_domain_name: "FullyQualifiedDomainName",
    #     search_string: "SearchString",
    #     failure_threshold: 1,
    #     inverted: false,
    #     disabled: false,
    #     health_threshold: 1,
    #     child_health_checks: ["HealthCheckId"],
    #     enable_sni: false,
    #     regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #     alarm_identifier: {
    #       region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #       name: "AlarmName", # required
    #     },
    #     insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #     reset_elements: ["FullyQualifiedDomainName" # One of: ["FullyQualifiedDomainName", "Regions", "ResourcePath", "ChildHealthChecks"]]
    #   }
    #   options = {}
    #   response = client.update_health_check(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_check: { # required
    #       id: "HealthCheckId", # required
    #       caller_reference: "HealthCheckNonce", # required
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       },
    #       health_check_config: { # required
    #         ip_address: "IPAddress",
    #         port: 1,
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"], # required
    #         resource_path: "ResourcePath",
    #         fully_qualified_domain_name: "FullyQualifiedDomainName",
    #         search_string: "SearchString",
    #         request_interval: 1,
    #         failure_threshold: 1,
    #         measure_latency: false,
    #         inverted: false,
    #         disabled: false,
    #         health_threshold: 1,
    #         child_health_checks: ["HealthCheckId"],
    #         enable_sni: false,
    #         regions: ["us-east-1" # One of: ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]],
    #         alarm_identifier: {
    #           region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "me-central-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "eu-south-2", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-4", "il-central-1", "ca-west-1", "ap-southeast-5", "mx-central-1", "us-isof-south-1", "us-isof-east-1", "ap-southeast-7", "ap-east-2", "eu-isoe-west-1", "ap-southeast-6"], # required
    #           name: "AlarmName", # required
    #         },
    #         insufficient_data_health_status: "Healthy" # One of: ["Healthy", "Unhealthy", "LastKnownStatus"],
    #         routing_control_arn: "RoutingControlArn"
    #       },
    #       health_check_version: 1, # required
    #       cloud_watch_alarm_configuration: {
    #         evaluation_periods: 1, # required
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], # required
    #         period: 1, # required
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "Average" # One of: ["Average", "Sum", "SampleCount", "Maximum", "Minimum"], # required
    #         dimensions: [
    #           {
    #             name: "DimensionField", # required
    #             value: "DimensionField", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateHealthCheckResponse]
    def update_health_check(params = {}, options = {})
      request = build_request(:update_health_check, params)
      request.send_request(options)
    end

    # <p>Updates the comment for a specified hosted zone.</p>
    # @param [Hash, Types::UpdateHostedZoneCommentRequest] params
    # @option params [String] :id
    #   <p>The ID for the hosted zone that you want to update the comment for.</p>
    # @option params [String] :comment
    #   <p>The new comment for the hosted zone. If you don't specify a value for
    #   				<code>Comment</code>, Amazon Route 53 deletes the existing value of the
    #   				<code>Comment</code> element, if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     comment: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_hosted_zone_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosted_zone: { # required
    #       id: "ResourceId", # required
    #       name: "DNSName", # required
    #       caller_reference: "Nonce", # required
    #       config: {
    #         comment: "ResourceDescription",
    #         private_zone: false
    #       },
    #       resource_record_set_count: 1,
    #       linked_service: {
    #         service_principal: "ServicePrincipal",
    #         description: "ResourceDescription"
    #       }
    #     }
    #   }
    # @return [Types::UpdateHostedZoneCommentResponse]
    def update_hosted_zone_comment(params = {}, options = {})
      request = build_request(:update_hosted_zone_comment, params)
      request.send_request(options)
    end

    # <p>Updates the comment for a specified traffic policy version.</p>
    # @param [Hash, Types::UpdateTrafficPolicyCommentRequest] params
    # @option params [String] :id
    #   <p>The value of <code>Id</code> for the traffic policy that you want to update the
    #   			comment for.</p>
    # @option params [Integer] :version
    #   <p>The value of <code>Version</code> for the traffic policy that you want to update the
    #   			comment for.</p>
    # @option params [String] :comment
    #   <p>The new comment for the specified traffic policy and version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyId", # required
    #     version: 1, # required
    #     comment: "TrafficPolicyComment", # required
    #   }
    #   options = {}
    #   response = client.update_traffic_policy_comment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy: { # required
    #       id: "TrafficPolicyId", # required
    #       version: 1, # required
    #       name: "TrafficPolicyName", # required
    #       type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #       document: "TrafficPolicyDocument", # required
    #       comment: "TrafficPolicyComment"
    #     }
    #   }
    # @return [Types::UpdateTrafficPolicyCommentResponse]
    def update_traffic_policy_comment(params = {}, options = {})
      request = build_request(:update_traffic_policy_comment, params)
      request.send_request(options)
    end

    # <note>
    #             <p>After you submit a <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Route 53 creates the resource record sets 
    # 			that are specified in the traffic policy definition. Use <code>GetTrafficPolicyInstance</code> with the <code>id</code> of updated traffic policy instance confirm 
    # 			that the 
    # 			<code>UpdateTrafficPolicyInstance</code> request completed successfully. For more information, see the <code>State</code> response element.</p>
    #          </note>
    #          <p>Updates the resource record sets in a specified hosted zone that were created based on
    # 			the settings in a specified traffic policy version.</p>
    #          <p>When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS
    # 			queries for the root resource record set name (such as example.com) while it replaces
    # 			one group of resource record sets with another. Route 53 performs the following
    # 			operations:</p>
    #          <ol>
    #             <li>
    #                <p>Route 53 creates a new group of resource record sets based on the specified
    # 					traffic policy. This is true regardless of how significant the differences are
    # 					between the existing resource record sets and the new resource record sets.
    # 				</p>
    #             </li>
    #             <li>
    #                <p>When all of the new resource record sets have been created, Route 53 starts to
    # 					respond to DNS queries for the root resource record set name (such as
    # 					example.com) by using the new resource record sets.</p>
    #             </li>
    #             <li>
    #                <p>Route 53 deletes the old group of resource record sets that are associated
    # 					with the root resource record set name.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::UpdateTrafficPolicyInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to update.</p>
    # @option params [Integer] :ttl
    #   <p>The TTL that you want Amazon Route 53 to assign to all of the updated resource record
    #   			sets.</p>
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy that you want Amazon Route 53 to use to update resource
    #   			record sets for the specified traffic policy instance.</p>
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy that you want Amazon Route 53 to use to update
    #   			resource record sets for the specified traffic policy instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficPolicyInstanceId", # required
    #     ttl: 1, # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_version: 1, # required
    #   }
    #   options = {}
    #   response = client.update_traffic_policy_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_policy_instance: { # required
    #       id: "TrafficPolicyInstanceId", # required
    #       hosted_zone_id: "ResourceId", # required
    #       name: "DNSName", # required
    #       ttl: 1, # required
    #       state: "TrafficPolicyInstanceState", # required
    #       message: "Message", # required
    #       traffic_policy_id: "TrafficPolicyId", # required
    #       traffic_policy_version: 1, # required
    #       traffic_policy_type: "SOA" # One of: ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS", "TLSA", "SSHFP", "SVCB", "HTTPS"], # required
    #     }
    #   }
    # @return [Types::UpdateTrafficPolicyInstanceResponse]
    def update_traffic_policy_instance(params = {}, options = {})
      request = build_request(:update_traffic_policy_instance, params)
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
      context[:gem_name] = 'aws-sdk-route53'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        resource_record_sets_changed: Waiters::ResourceRecordSetsChanged
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
