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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Evs
  # An API client for Aws::Evs.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonElasticVMwareService
    @identifier = :evs

    add_plugin(::Aws::Evs::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Evs::EndpointProvider)
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

    # <p>Associates an Elastic IP address with a public HCX VLAN. This operation is only allowed for public HCX VLANs at this time.</p>
    # @param [Hash, Types::AssociateEipToVlanRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment containing the VLAN that the Elastic IP address associates with.</p>
    # @option params [String] :vlan_name
    #   <p>The name of the VLAN. <code>hcx</code> is the only accepted VLAN name at this time.</p>
    # @option params [String] :allocation_id
    #   <p>The Elastic IP address allocation ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     vlan_name: "String", # required
    #     allocation_id: "AllocationId", # required
    #   }
    #   options = {}
    #   response = client.associate_eip_to_vlan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vlan: {
    #       vlan_id: 1,
    #       cidr: "Cidr",
    #       availability_zone: "String",
    #       function_name: "String",
    #       subnet_id: "SubnetId",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       vlan_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       state_details: "StateDetails",
    #       eip_associations: [
    #         {
    #           association_id: "AssociationId",
    #           allocation_id: "AllocationId",
    #           ip_address: "IpAddress"
    #         }
    #       ],
    #       is_public: false,
    #       network_acl_id: "NetworkAclId"
    #     }
    #   }
    # @return [Types::AssociateEipToVlanResponse]
    def associate_eip_to_vlan(params = {}, options = {})
      request = build_request(:associate_eip_to_vlan, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon EVS environment that runs VCF software, such as SDDC Manager, NSX Manager, and vCenter Server.</p> <p>During environment creation, Amazon EVS performs validations on DNS settings, provisions VLAN subnets and hosts, and deploys the supplied version of VCF.</p> <p>It can take several hours to create an environment. After the deployment completes, you can configure VCF in the vSphere user interface according to your needs.</p> <note> <p>You cannot use the <code>dedicatedHostId</code> and <code>placementGroupId</code> parameters together in the same <code>CreateEnvironment</code> action. This results in a <code>ValidationException</code> response.</p> </note>
    # @param [Hash, Types::CreateEnvironmentRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_name
    #   <p>The name to give to your environment. The name can contain only alphanumeric characters (case-sensitive), hyphens, and underscores. It must start with an alphanumeric character, and can't be longer than 100 characters. The name must be unique within the Amazon Web Services Region and Amazon Web Services account that you're creating the environment in.</p>
    # @option params [String] :kms_key_id
    #   <p>A unique ID for the customer-managed KMS key that is used to encrypt the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter appliances. These credentials are stored in Amazon Web Services Secrets Manager.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [Types::ServiceAccessSecurityGroups] :service_access_security_groups
    #   <p>The security group that controls communication between the Amazon EVS control plane and VPC. The default security group is used if a custom security group isn't specified.</p> <p>The security group should allow access to the following.</p> <ul> <li> <p>TCP/UDP access to the DNS servers</p> </li> <li> <p>HTTPS/SSH access to the host management VLAN subnet</p> </li> <li> <p>HTTPS/SSH access to the Management VM VLAN subnet</p> </li> </ul> <p>You should avoid modifying the security group rules after deployment, as this can break the persistent connection between the Amazon EVS control plane and VPC. This can cause future environment actions like adding or removing hosts to fail.</p>
    # @option params [String] :vpc_id
    #   <p>A unique ID for the VPC that the environment is deployed inside.</p> <p>Amazon EVS requires that all VPC subnets exist in a single Availability Zone in a Region where the service is available.</p> <p>The VPC that you specify must have a valid DHCP option set with domain name, at least two DNS servers, and an NTP server. These settings are used to configure your VCF appliances and hosts. The VPC cannot be used with any other deployed Amazon EVS environment. Amazon EVS does not provide multi-VPC support for environments at this time.</p> <p>Amazon EVS does not support the following Amazon Web Services networking options for NSX overlay connectivity: cross-Region VPC peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct Connect virtual private gateway associations.</p> <note> <p>Ensure that you specify a VPC that is adequately sized to accommodate the {evws} subnets.</p> </note>
    # @option params [String] :service_access_subnet_id
    #   <p>The subnet that is used to establish connectivity between the Amazon EVS control plane and VPC. Amazon EVS uses this subnet to validate mandatory DNS records for your VCF appliances and hosts and create the environment.</p>
    # @option params [String] :vcf_version
    #   <p> The VCF version to use for the environment. Amazon EVS only supports VCF version 5.2.1 at this time.</p>
    # @option params [Boolean] :terms_accepted
    #   <p>Customer confirmation that the customer has purchased and will continue to maintain the required number of VCF software licenses to cover all physical processor cores in the Amazon EVS environment. Information about your VCF software in Amazon EVS will be shared with Broadcom to verify license compliance. Amazon EVS does not validate license keys. To validate license keys, visit the Broadcom support portal.</p>
    # @option params [Array<Types::LicenseInfo>] :license_info
    #   <p>The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key. The VCF solution key must cover a minimum of 256 cores. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p> <p>VCF licenses can be used for only one Amazon EVS environment. Amazon EVS does not support reuse of VCF licenses for multiple environments.</p> <p>VCF license information can be retrieved from the Broadcom portal.</p>
    # @option params [Types::InitialVlans] :initial_vlans
    #   <p>The initial VLAN subnets for the Amazon EVS environment.</p> <note> <p>For each Amazon EVS VLAN subnet, you must specify a non-overlapping CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p> </note>
    # @option params [Array<Types::HostInfoForCreate>] :hosts
    #   <p>The ESXi hosts to add to the environment. Amazon EVS requires that you provide details for a minimum of 4 hosts during environment creation.</p> <p>For each host, you must provide the desired hostname, EC2 SSH keypair name, and EC2 instance type. Optionally, you can also provide a partition or cluster placement group to use, or use Amazon EC2 Dedicated Hosts.</p>
    # @option params [Types::ConnectivityInfo] :connectivity_info
    #   <p> The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX edges over the NSX uplink subnet, providing BGP-based dynamic routing for overlay networks.</p>
    # @option params [Types::VcfHostnames] :vcf_hostnames
    #   <p>The DNS hostnames for the virtual machines that host the VCF management appliances. Amazon EVS requires that you provide DNS hostnames for the following appliances: vCenter, NSX Manager, SDDC Manager, and Cloud Builder.</p>
    # @option params [String] :site_id
    #   <p>The Broadcom Site ID that is allocated to you as part of your electronic software delivery. This ID allows customer access to the Broadcom portal, and is provided to you by Broadcom at the close of your software contract or contract renewal. Amazon EVS uses the Broadcom Site ID that you provide to meet Broadcom VCF license usage reporting requirements for Amazon EVS.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_name: "EnvironmentName",
    #     kms_key_id: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     service_access_security_groups: {
    #       security_groups: ["SecurityGroupId"]
    #     },
    #     vpc_id: "VpcId", # required
    #     service_access_subnet_id: "SubnetId", # required
    #     vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"], # required
    #     terms_accepted: false, # required
    #     license_info: [ # required
    #       {
    #         solution_key: "SolutionKey", # required
    #         vsan_key: "VSanLicenseKey", # required
    #       }
    #     ],
    #     initial_vlans: { # required
    #       vmk_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       vm_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_motion: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_san: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       edge_v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       nsx_uplink: { # required
    #         cidr: "Cidr", # required
    #       },
    #       hcx: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan1: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan2: { # required
    #         cidr: "Cidr", # required
    #       },
    #       is_hcx_public: false,
    #       hcx_network_acl_id: "NetworkAclId"
    #     },
    #     hosts: [ # required
    #       {
    #         host_name: "HostName", # required
    #         key_name: "KeyName", # required
    #         instance_type: "i4i.metal" # One of: ["i4i.metal"], # required
    #         placement_group_id: "PlacementGroupId",
    #         dedicated_host_id: "DedicatedHostId"
    #       }
    #     ],
    #     connectivity_info: { # required
    #       private_route_server_peerings: ["RouteServerPeering"], # required
    #     },
    #     vcf_hostnames: { # required
    #       v_center: "HostName", # required
    #       nsx: "HostName", # required
    #       nsx_manager1: "HostName", # required
    #       nsx_manager2: "HostName", # required
    #       nsx_manager3: "HostName", # required
    #       nsx_edge1: "HostName", # required
    #       nsx_edge2: "HostName", # required
    #       sddc_manager: "HostName", # required
    #       cloud_builder: "HostName", # required
    #     },
    #     site_id: "String", # required
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       environment_id: "EnvironmentId",
    #       environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       state_details: "StateDetails",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       environment_arn: "Arn",
    #       environment_name: "EnvironmentName",
    #       vpc_id: "VpcId",
    #       service_access_subnet_id: "SubnetId",
    #       vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #       terms_accepted: false,
    #       license_info: [
    #         {
    #           solution_key: "SolutionKey", # required
    #           vsan_key: "VSanLicenseKey", # required
    #         }
    #       ],
    #       site_id: "String",
    #       environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #       checks: [
    #         {
    #           type: "KEY_REUSE" # One of: ["KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"],
    #           result: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #           impaired_since: Time.now
    #         }
    #       ],
    #       connectivity_info: {
    #         private_route_server_peerings: ["RouteServerPeering"], # required
    #       },
    #       vcf_hostnames: {
    #         v_center: "HostName", # required
    #         nsx: "HostName", # required
    #         nsx_manager1: "HostName", # required
    #         nsx_manager2: "HostName", # required
    #         nsx_manager3: "HostName", # required
    #         nsx_edge1: "HostName", # required
    #         nsx_edge2: "HostName", # required
    #         sddc_manager: "HostName", # required
    #         cloud_builder: "HostName", # required
    #       },
    #       kms_key_id: "String",
    #       service_access_security_groups: {
    #         security_groups: ["SecurityGroupId"]
    #       },
    #       credentials: [
    #         {
    #           secret_arn: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateEnvironmentResponse]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Creates an ESXi host and adds it to an Amazon EVS environment. Amazon EVS supports 4-16 hosts per environment.</p> <p>This action can only be used after the Amazon EVS environment is deployed.</p> <p>You can use the <code>dedicatedHostId</code> parameter to specify an Amazon EC2 Dedicated Host for ESXi host creation.</p> <p> You can use the <code>placementGroupId</code> parameter to specify a cluster or partition placement group to launch EC2 instances into.</p> <note> <p>You cannot use the <code>dedicatedHostId</code> and <code>placementGroupId</code> parameters together in the same <code>CreateEnvironmentHost</code> action. This results in a <code>ValidationException</code> response.</p> </note>
    # @param [Hash, Types::CreateEnvironmentHostRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment that the host is added to.</p>
    # @option params [Types::HostInfoForCreate] :host
    #   <p>The host that is created and added to the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host: { # required
    #       host_name: "HostName", # required
    #       key_name: "KeyName", # required
    #       instance_type: "i4i.metal" # One of: ["i4i.metal"], # required
    #       placement_group_id: "PlacementGroupId",
    #       dedicated_host_id: "DedicatedHostId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_environment_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_summary: {
    #       environment_id: "EnvironmentId",
    #       environment_name: "EnvironmentName",
    #       vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #       environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #       environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       environment_arn: "Arn"
    #     },
    #     host: {
    #       host_name: "HostName",
    #       ip_address: "IpAddress",
    #       key_name: "KeyName",
    #       instance_type: "i4i.metal" # One of: ["i4i.metal"],
    #       placement_group_id: "PlacementGroupId",
    #       dedicated_host_id: "DedicatedHostId",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       host_state: "CREATING" # One of: ["CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"],
    #       state_details: "StateDetails",
    #       ec2_instance_id: "String",
    #       network_interfaces: [
    #         {
    #           network_interface_id: "NetworkInterfaceId"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateEnvironmentHostResponse]
    def create_environment_host(params = {}, options = {})
      request = build_request(:create_environment_host, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon EVS environment.</p> <p>Amazon EVS environments will only be enabled for deletion once the hosts are deleted. You can delete hosts using the <code>DeleteEnvironmentHost</code> action.</p> <p>Environment deletion also deletes the associated Amazon EVS VLAN subnets and Amazon Web Services Secrets Manager secrets that Amazon EVS created. Amazon Web Services resources that you create are not deleted. These resources may continue to incur costs.</p>
    # @param [Hash, Types::DeleteEnvironmentRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID associated with the environment to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       environment_id: "EnvironmentId",
    #       environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       state_details: "StateDetails",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       environment_arn: "Arn",
    #       environment_name: "EnvironmentName",
    #       vpc_id: "VpcId",
    #       service_access_subnet_id: "SubnetId",
    #       vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #       terms_accepted: false,
    #       license_info: [
    #         {
    #           solution_key: "SolutionKey", # required
    #           vsan_key: "VSanLicenseKey", # required
    #         }
    #       ],
    #       site_id: "String",
    #       environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #       checks: [
    #         {
    #           type: "KEY_REUSE" # One of: ["KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"],
    #           result: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #           impaired_since: Time.now
    #         }
    #       ],
    #       connectivity_info: {
    #         private_route_server_peerings: ["RouteServerPeering"], # required
    #       },
    #       vcf_hostnames: {
    #         v_center: "HostName", # required
    #         nsx: "HostName", # required
    #         nsx_manager1: "HostName", # required
    #         nsx_manager2: "HostName", # required
    #         nsx_manager3: "HostName", # required
    #         nsx_edge1: "HostName", # required
    #         nsx_edge2: "HostName", # required
    #         sddc_manager: "HostName", # required
    #         cloud_builder: "HostName", # required
    #       },
    #       kms_key_id: "String",
    #       service_access_security_groups: {
    #         security_groups: ["SecurityGroupId"]
    #       },
    #       credentials: [
    #         {
    #           secret_arn: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteEnvironmentResponse]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a host from an Amazon EVS environment.</p> <note> <p>Before deleting a host, you must unassign and decommission the host from within the SDDC Manager user interface. Not doing so could impact the availability of your virtual machines or result in data loss.</p> </note>
    # @param [Hash, Types::DeleteEnvironmentHostRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the host's environment.</p>
    # @option params [String] :host_name
    #   <p>The DNS hostname associated with the host to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host_name: "HostName", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_summary: {
    #       environment_id: "EnvironmentId",
    #       environment_name: "EnvironmentName",
    #       vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #       environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #       environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       environment_arn: "Arn"
    #     },
    #     host: {
    #       host_name: "HostName",
    #       ip_address: "IpAddress",
    #       key_name: "KeyName",
    #       instance_type: "i4i.metal" # One of: ["i4i.metal"],
    #       placement_group_id: "PlacementGroupId",
    #       dedicated_host_id: "DedicatedHostId",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       host_state: "CREATING" # One of: ["CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"],
    #       state_details: "StateDetails",
    #       ec2_instance_id: "String",
    #       network_interfaces: [
    #         {
    #           network_interface_id: "NetworkInterfaceId"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteEnvironmentHostResponse]
    def delete_environment_host(params = {}, options = {})
      request = build_request(:delete_environment_host, params)
      request.send_request(options)
    end

    # <p>Disassociates an Elastic IP address from a public HCX VLAN. This operation is only allowed for public HCX VLANs at this time.</p>
    # @param [Hash, Types::DisassociateEipFromVlanRequest] params
    # @option params [String] :client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment containing the VLAN that the Elastic IP address disassociates from.</p>
    # @option params [String] :vlan_name
    #   <p>The name of the VLAN. <code>hcx</code> is the only accepted VLAN name at this time.</p>
    # @option params [String] :association_id
    #   <p> A unique ID for the Elastic IP address association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     vlan_name: "String", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_eip_from_vlan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vlan: {
    #       vlan_id: 1,
    #       cidr: "Cidr",
    #       availability_zone: "String",
    #       function_name: "String",
    #       subnet_id: "SubnetId",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       vlan_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       state_details: "StateDetails",
    #       eip_associations: [
    #         {
    #           association_id: "AssociationId",
    #           allocation_id: "AllocationId",
    #           ip_address: "IpAddress"
    #         }
    #       ],
    #       is_public: false,
    #       network_acl_id: "NetworkAclId"
    #     }
    #   }
    # @return [Types::DisassociateEipFromVlanResponse]
    def disassociate_eip_from_vlan(params = {}, options = {})
      request = build_request(:disassociate_eip_from_vlan, params)
      request.send_request(options)
    end

    # <p>Returns a description of the specified environment.</p>
    # @param [Hash, Types::GetEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       environment_id: "EnvironmentId",
    #       environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #       state_details: "StateDetails",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       environment_arn: "Arn",
    #       environment_name: "EnvironmentName",
    #       vpc_id: "VpcId",
    #       service_access_subnet_id: "SubnetId",
    #       vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #       terms_accepted: false,
    #       license_info: [
    #         {
    #           solution_key: "SolutionKey", # required
    #           vsan_key: "VSanLicenseKey", # required
    #         }
    #       ],
    #       site_id: "String",
    #       environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #       checks: [
    #         {
    #           type: "KEY_REUSE" # One of: ["KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT"],
    #           result: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #           impaired_since: Time.now
    #         }
    #       ],
    #       connectivity_info: {
    #         private_route_server_peerings: ["RouteServerPeering"], # required
    #       },
    #       vcf_hostnames: {
    #         v_center: "HostName", # required
    #         nsx: "HostName", # required
    #         nsx_manager1: "HostName", # required
    #         nsx_manager2: "HostName", # required
    #         nsx_manager3: "HostName", # required
    #         nsx_edge1: "HostName", # required
    #         nsx_edge2: "HostName", # required
    #         sddc_manager: "HostName", # required
    #         cloud_builder: "HostName", # required
    #       },
    #       kms_key_id: "String",
    #       service_access_security_groups: {
    #         security_groups: ["SecurityGroupId"]
    #       },
    #       credentials: [
    #         {
    #           secret_arn: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetEnvironmentResponse]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>List the hosts within an environment.</p>
    # @param [Hash, Types::ListEnvironmentHostsRequest] params
    # @option params [String] :next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.list_environment_hosts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     environment_hosts: [
    #       {
    #         host_name: "HostName",
    #         ip_address: "IpAddress",
    #         key_name: "KeyName",
    #         instance_type: "i4i.metal" # One of: ["i4i.metal"],
    #         placement_group_id: "PlacementGroupId",
    #         dedicated_host_id: "DedicatedHostId",
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         host_state: "CREATING" # One of: ["CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"],
    #         state_details: "StateDetails",
    #         ec2_instance_id: "String",
    #         network_interfaces: [
    #           {
    #             network_interface_id: "NetworkInterfaceId"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentHostsResponse]
    def list_environment_hosts(params = {}, options = {})
      request = build_request(:list_environment_hosts, params)
      request.send_request(options)
    end

    # <p>Lists environment VLANs that are associated with the specified environment.</p>
    # @param [Hash, Types::ListEnvironmentVlansRequest] params
    # @option params [String] :next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    # @option params [String] :environment_id
    #   <p>A unique ID for the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.list_environment_vlans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     environment_vlans: [
    #       {
    #         vlan_id: 1,
    #         cidr: "Cidr",
    #         availability_zone: "String",
    #         function_name: "String",
    #         subnet_id: "SubnetId",
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         vlan_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #         state_details: "StateDetails",
    #         eip_associations: [
    #           {
    #             association_id: "AssociationId",
    #             allocation_id: "AllocationId",
    #             ip_address: "IpAddress"
    #           }
    #         ],
    #         is_public: false,
    #         network_acl_id: "NetworkAclId"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentVlansResponse]
    def list_environment_vlans(params = {}, options = {})
      request = build_request(:list_environment_vlans, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon EVS environments in your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    # @option params [Array<String>] :state
    #   <p>The state of an environment. Used to filter response results to return only environments with the specified <code>environmentState</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     state: ["CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"]]
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     environment_summaries: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_name: "EnvironmentName",
    #         vcf_version: "VCF-5.2.1" # One of: ["VCF-5.2.1"],
    #         environment_status: "PASSED" # One of: ["PASSED", "FAILED", "UNKNOWN"],
    #         environment_state: "CREATING" # One of: ["CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"],
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         environment_arn: "Arn"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentsResponse]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists the tags for an Amazon EVS resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Associates the specified tags to an Amazon EVS resource with the specified <code>resourceArn</code>. If existing tags on a resource are not specified in the request parameters, they aren't changed. When a resource is deleted, the tags associated with that resource are also deleted. Tags that you create for Amazon EVS resources don't propagate to any other resources associated with the environment. For example, if you tag an environment with this operation, that tag doesn't automatically propagate to the VLAN subnets and hosts associated with the environment.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other environment or Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Deletes specified tags from an Amazon EVS resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
      context[:gem_name] = 'aws-sdk-evs'
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
