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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Lightsail
  # An API client for Aws::Lightsail.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Lightsail20161128

    add_plugin(::Aws::Lightsail::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Lightsail::EndpointProvider)
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

    # <p>Allocates a static IP address.</p>
    # @param [Hash, Types::AllocateStaticIpRequest] params
    # @option params [String] :static_ip_name
    #   <p>The name of the static IP address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     static_ip_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.allocate_static_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::AllocateStaticIpResult]
    def allocate_static_ip(params = {}, options = {})
      request = build_request(:allocate_static_ip, params)
      request.send_request(options)
    end

    # <p>Attaches an SSL/TLS certificate to your Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>After the certificate is attached, your distribution accepts HTTPS traffic for all of the
    #       domains that are associated with the certificate.</p>
    #          <p>Use the <code>CreateCertificate</code> action to create a certificate that you can attach
    #       to your distribution.</p>
    #          <important>
    #             <p>Only certificates created in the <code>us-east-1</code>
    #         Amazon Web Services Region can be attached to Lightsail distributions. Lightsail
    #         distributions are global resources that can reference an origin in any Amazon Web Services
    #         Region, and distribute its content globally. However, all distributions are located in the
    #           <code>us-east-1</code> Region.</p>
    #          </important>
    # @param [Hash, Types::AttachCertificateToDistributionRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution that the certificate will be attached to.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @option params [String] :certificate_name
    #   <p>The name of the certificate to attach to a distribution.</p>
    #            <p>Only certificates with a status of <code>ISSUED</code> can be attached to a
    #         distribution.</p>
    #            <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
    #         can specify.</p>
    #            <note>
    #               <p>This is the name of the certificate resource type and is used only to reference the
    #           certificate in other API actions. It can be different than the domain name of the
    #           certificate. For example, your certificate name might be
    #             <code>WordPress-Blog-Certificate</code> and the domain name of the certificate might be
    #             <code>example.com</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.attach_certificate_to_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::AttachCertificateToDistributionResult]
    def attach_certificate_to_distribution(params = {}, options = {})
      request = build_request(:attach_certificate_to_distribution, params)
      request.send_request(options)
    end

    # <p>Attaches a block storage disk to a running or stopped Lightsail instance and exposes it
    #       to the instance with the specified disk name.</p>
    #          <p>The <code>attach disk</code> operation supports tag-based access control via resource tags
    #       applied to the resource identified by <code>disk name</code>. For more information, see the
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::AttachDiskRequest] params
    # @option params [String] :disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    # @option params [String] :instance_name
    #   <p>The name of the Lightsail instance where you want to utilize the storage disk.</p>
    # @option params [String] :disk_path
    #   <p>The disk path to expose to the instance (<code>/dev/xvdf</code>).</p>
    # @option params [Boolean] :auto_mounting
    #   <p>A Boolean value used to determine the automatic mounting of a storage volume to a virtual
    #         computer. The default value is <code>False</code>.</p>
    #            <important>
    #               <p>This value only applies to Lightsail for Research resources.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #     disk_path: "NonEmptyString", # required
    #     auto_mounting: false
    #   }
    #   options = {}
    #   response = client.attach_disk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::AttachDiskResult]
    def attach_disk(params = {}, options = {})
      request = build_request(:attach_disk, params)
      request.send_request(options)
    end

    # <p>Attaches one or more Lightsail instances to a load balancer.</p>
    #          <p>After some time, the instances are attached to the load balancer and the health check
    #       status is available.</p>
    #          <p>The <code>attach instances to load balancer</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::AttachInstancesToLoadBalancerRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [Array<String>] :instance_names
    #   <p>An array of strings representing the instance name(s) you want to attach to your load
    #         balancer.</p>
    #            <p>An instance must be <code>running</code> before you can attach it to your load
    #         balancer.</p>
    #            <p>There are no additional limits on the number of instances you can attach to your load
    #         balancer, aside from the limit of Lightsail instances you can create in your account
    #         (20).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     instance_names: ["ResourceName"], # required
    #   }
    #   options = {}
    #   response = client.attach_instances_to_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::AttachInstancesToLoadBalancerResult]
    def attach_instances_to_load_balancer(params = {}, options = {})
      request = build_request(:attach_instances_to_load_balancer, params)
      request.send_request(options)
    end

    # <p>Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just
    #       an updated, more secure version of Secure Socket Layer (SSL).</p>
    #          <p>Once you create and validate your certificate, you can attach it to your load balancer.
    #       You can also use this API to rotate the certificates on your account. Use the
    #         <code>AttachLoadBalancerTlsCertificate</code> action with the non-attached certificate, and
    #       it will replace the existing one and become the attached certificate.</p>
    #          <p>The <code>AttachLoadBalancerTlsCertificate</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::AttachLoadBalancerTlsCertificateRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer to which you want to associate the SSL/TLS
    #         certificate.</p>
    # @option params [String] :certificate_name
    #   <p>The name of your SSL/TLS certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.attach_load_balancer_tls_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::AttachLoadBalancerTlsCertificateResult]
    def attach_load_balancer_tls_certificate(params = {}, options = {})
      request = build_request(:attach_load_balancer_tls_certificate, params)
      request.send_request(options)
    end

    # <p>Attaches a static IP address to a specific Amazon Lightsail instance.</p>
    # @param [Hash, Types::AttachStaticIpRequest] params
    # @option params [String] :static_ip_name
    #   <p>The name of the static IP.</p>
    # @option params [String] :instance_name
    #   <p>The instance name to which you want to attach the static IP address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     static_ip_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.attach_static_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::AttachStaticIpResult]
    def attach_static_ip(params = {}, options = {})
      request = build_request(:attach_static_ip, params)
      request.send_request(options)
    end

    # <p>Closes ports for a specific Amazon Lightsail instance.</p>
    #          <p>The <code>CloseInstancePublicPorts</code> action supports tag-based access control via
    #       resource tags applied to the resource identified by <code>instanceName</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CloseInstancePublicPortsRequest] params
    # @option params [Types::PortInfo] :port_info
    #   <p>An object to describe the ports to close for the specified instance.</p>
    # @option params [String] :instance_name
    #   <p>The name of the instance for which to close ports.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #       cidrs: ["string"],
    #       ipv6_cidrs: ["string"],
    #       cidr_list_aliases: ["string"]
    #     },
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.close_instance_public_ports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::CloseInstancePublicPortsResult]
    def close_instance_public_ports(params = {}, options = {})
      request = build_request(:close_instance_public_ports, params)
      request.send_request(options)
    end

    # <p>Copies a manual snapshot of an instance or disk as another manual snapshot, or copies an
    #       automatic snapshot of an instance or disk as a manual snapshot. This operation can also be
    #       used to copy a manual or automatic snapshot of an instance or a disk from one Amazon Web Services Region to another in Amazon Lightsail.</p>
    #          <p>When copying a <i>manual snapshot</i>, be sure to define the <code>source
    #         region</code>, <code>source snapshot name</code>, and <code>target snapshot name</code>
    #       parameters.</p>
    #          <p>When copying an <i>automatic snapshot</i>, be sure to define the
    #         <code>source region</code>, <code>source resource name</code>, <code>target snapshot
    #         name</code>, and either the <code>restore date</code> or the <code>use latest restorable
    #         auto snapshot</code> parameters.</p>
    # @param [Hash, Types::CopySnapshotRequest] params
    # @option params [String] :source_snapshot_name
    #   <p>The name of the source manual snapshot to copy.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>Define this parameter only when copying a manual snapshot as another manual
    #             snapshot.</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_resource_name
    #   <p>The name of the source instance or disk from which the source automatic snapshot was
    #         created.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :restore_date
    #   <p>The date of the source automatic snapshot to copy. Use the <code>get auto snapshots</code>
    #         operation to identify the dates of the available automatic snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot of the
    #         specified source instance or disk.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :target_snapshot_name
    #   <p>The name of the new manual snapshot to be created as a copy.</p>
    # @option params [String] :source_region
    #   <p>The Amazon Web Services Region where the source manual or automatic snapshot is
    #         located.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_snapshot_name: "ResourceName",
    #     source_resource_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false,
    #     target_snapshot_name: "ResourceName", # required
    #     source_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"], # required
    #   }
    #   options = {}
    #   response = client.copy_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CopySnapshotResult]
    def copy_snapshot(params = {}, options = {})
      request = build_request(:copy_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Lightsail bucket.</p>
    #          <p>A bucket is a cloud storage resource available in the Lightsail object storage service.
    #       Use buckets to store objects such as data and its descriptive metadata. For more information
    #       about buckets, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail">Buckets in Amazon Lightsail</a> in the <i>Amazon Lightsail Developer
    #         Guide</i>.</p>
    # @param [Hash, Types::CreateBucketRequest] params
    # @option params [String] :bucket_name
    #   <p>The name for the bucket.</p>
    #            <p>For more information about bucket names, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/bucket-naming-rules-in-amazon-lightsail">Bucket naming rules in Amazon Lightsail</a> in the <i>Amazon Lightsail Developer
    #           Guide</i>.</p>
    # @option params [String] :bundle_id
    #   <p>The ID of the bundle to use for the bucket.</p>
    #            <p>A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a
    #         bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html">GetBucketBundles</a> action to get a list of
    #         bundle IDs that you can specify.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html">UpdateBucketBundle</a> action to change the
    #         bundle after the bucket is created.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the bucket during creation.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_TagResource.html">TagResource</a> action to tag the bucket after it's
    #         created.</p>
    # @option params [Boolean] :enable_object_versioning
    #   <p>A Boolean value that indicates whether to enable versioning of objects in the
    #         bucket.</p>
    #            <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-managing-bucket-object-versioning">Enabling and suspending object versioning in a bucket in Amazon Lightsail</a> in the
    #           <i>Amazon Lightsail Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     bundle_id: "NonEmptyString", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     enable_object_versioning: false
    #   }
    #   options = {}
    #   response = client.create_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bucket: {
    #       resource_type: "NonEmptyString",
    #       access_rules: {
    #         get_object: "public" # One of: ["public", "private"],
    #         allow_public_overrides: false
    #       },
    #       arn: "NonEmptyString",
    #       bundle_id: "NonEmptyString",
    #       created_at: Time.now,
    #       url: "NonEmptyString",
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       name: "BucketName",
    #       support_code: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       object_versioning: "NonEmptyString",
    #       able_to_update_bundle: false,
    #       readonly_access_accounts: ["NonEmptyString"],
    #       resources_receiving_access: [
    #         {
    #           name: "NonEmptyString",
    #           resource_type: "NonEmptyString"
    #         }
    #       ],
    #       state: {
    #         code: "NonEmptyString",
    #         message: "string"
    #       },
    #       access_log_config: {
    #         enabled: false, # required
    #         destination: "BucketName",
    #         prefix: "BucketAccessLogPrefix"
    #       }
    #     },
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateBucketResult]
    def create_bucket(params = {}, options = {})
      request = build_request(:create_bucket, params)
      request.send_request(options)
    end

    # <p>Creates a new access key for the specified Amazon Lightsail bucket. Access keys consist of
    #       an access key ID and corresponding secret access key.</p>
    #          <p>Access keys grant full programmatic access to the specified bucket and its objects. You
    #       can have a maximum of two access keys per bucket. Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html">GetBucketAccessKeys</a> action to get a list of current access keys for a specific bucket. For more
    #       information about access keys, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys">Creating access keys for a bucket in Amazon Lightsail</a> in the
    #         <i>Amazon Lightsail Developer Guide</i>.</p>
    #          <important>
    #             <p>The <code>secretAccessKey</code> value is returned only in response to the
    #           <code>CreateBucketAccessKey</code> action. You can get a secret access key only when you
    #         first create an access key; you cannot get the secret access key later. If you lose the
    #         secret access key, you must create a new access key.</p>
    #          </important>
    # @param [Hash, Types::CreateBucketAccessKeyRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket that the new access key will belong to, and grant access to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.create_bucket_access_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key: {
    #       access_key_id: "IAMAccessKeyId",
    #       secret_access_key: "NonEmptyString",
    #       status: "Active" # One of: ["Active", "Inactive"],
    #       created_at: Time.now,
    #       last_used: {
    #         last_used_date: Time.now,
    #         region: "string",
    #         service_name: "string"
    #       }
    #     },
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateBucketAccessKeyResult]
    def create_bucket_access_key(params = {}, options = {})
      request = build_request(:create_bucket_access_key, params)
      request.send_request(options)
    end

    # <p>Creates an SSL/TLS certificate for an Amazon Lightsail content delivery network (CDN)
    #       distribution and a container service.</p>
    #          <p>After the certificate is valid, use the <code>AttachCertificateToDistribution</code>
    #       action to use the certificate and its domains with your distribution. Or use the
    #         <code>UpdateContainerService</code> action to use the certificate and its domains with your
    #       container service.</p>
    #          <important>
    #             <p>Only certificates created in the <code>us-east-1</code>
    #         Amazon Web Services Region can be attached to Lightsail distributions. Lightsail
    #         distributions are global resources that can reference an origin in any Amazon Web Services
    #         Region, and distribute its content globally. However, all distributions are located in the
    #           <code>us-east-1</code> Region.</p>
    #          </important>
    # @param [Hash, Types::CreateCertificateRequest] params
    # @option params [String] :certificate_name
    #   <p>The name for the certificate.</p>
    # @option params [String] :domain_name
    #   <p>The domain name (<code>example.com</code>) for the certificate.</p>
    # @option params [Array<String>] :subject_alternative_names
    #   <p>An array of strings that specify the alternate domains (<code>example2.com</code>) and
    #         subdomains (<code>blog.example.com</code>) for the certificate.</p>
    #            <p>You can specify a maximum of nine alternate domains (in addition to the primary domain
    #         name).</p>
    #            <p>Wildcard domain entries (<code>*.example.com</code>) are not supported.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the certificate during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_name: "CertificateName", # required
    #     domain_name: "DomainName", # required
    #     subject_alternative_names: ["DomainName"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_arn: "NonEmptyString",
    #       certificate_name: "CertificateName",
    #       domain_name: "DomainName",
    #       certificate_detail: {
    #         arn: "NonEmptyString",
    #         name: "CertificateName",
    #         domain_name: "DomainName",
    #         status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #         serial_number: "SerialNumber",
    #         subject_alternative_names: ["DomainName"],
    #         domain_validation_records: [
    #           {
    #             domain_name: "DomainName",
    #             resource_record: {
    #               name: "string",
    #               type: "string",
    #               value: "string"
    #             },
    #             dns_record_creation_state: {
    #               code: "SUCCEEDED" # One of: ["SUCCEEDED", "STARTED", "FAILED"],
    #               message: "string"
    #             },
    #             validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"]
    #           }
    #         ],
    #         request_failure_reason: "RequestFailureReason",
    #         in_use_resource_count: 1,
    #         key_algorithm: "KeyAlgorithm",
    #         created_at: Time.now,
    #         issued_at: Time.now,
    #         issuer_ca: "IssuerCA",
    #         not_before: Time.now,
    #         not_after: Time.now,
    #         eligible_to_renew: "EligibleToRenew",
    #         renewal_summary: {
    #           domain_validation_records: [
    #             {
    #               domain_name: "DomainName",
    #               resource_record: {
    #                 name: "string",
    #                 type: "string",
    #                 value: "string"
    #               },
    #               dns_record_creation_state: {
    #                 code: "SUCCEEDED" # One of: ["SUCCEEDED", "STARTED", "FAILED"],
    #                 message: "string"
    #               },
    #               validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"]
    #             }
    #           ],
    #           renewal_status: "PendingAutoRenewal" # One of: ["PendingAutoRenewal", "PendingValidation", "Success", "Failed"],
    #           renewal_status_reason: "RenewalStatusReason",
    #           updated_at: Time.now
    #         },
    #         revoked_at: Time.now,
    #         revocation_reason: "RevocationReason",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         support_code: "string"
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ]
    #     },
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateCertificateResult]
    def create_certificate(params = {}, options = {})
      request = build_request(:create_certificate, params)
      request.send_request(options)
    end

    # <p>Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported
    #       Amazon Lightsail snapshot. This operation results in a CloudFormation stack record that can be
    #       used to track the AWS CloudFormation stack created. Use the <code>get cloud formation stack
    #         records</code> operation to get a list of the CloudFormation stacks created.</p>
    #          <important>
    #             <p>Wait until after your new Amazon EC2 instance is created before running the <code>create
    #           cloud formation stack</code> operation again with the same export snapshot record.</p>
    #          </important>
    # @param [Hash, Types::CreateCloudFormationStackRequest] params
    # @option params [Array<Types::InstanceEntry>] :instances
    #   <p>An array of parameters that will be used to create the new Amazon EC2 instance. You can only
    #         pass one instance entry at a time in this array. You will get an invalid parameter error if
    #         you pass more than one instance entry in this array.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instances: [ # required
    #       {
    #         source_name: "ResourceName", # required
    #         instance_type: "NonEmptyString", # required
    #         port_info_source: "DEFAULT" # One of: ["DEFAULT", "INSTANCE", "NONE", "CLOSED"], # required
    #         user_data: "string",
    #         availability_zone: "string", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cloud_formation_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateCloudFormationStackResult]
    def create_cloud_formation_stack(params = {}, options = {})
      request = build_request(:create_cloud_formation_stack, params)
      request.send_request(options)
    end

    # <p>Creates an email or SMS text message contact method.</p>
    #          <p>A contact method is used to send you notifications about your Amazon Lightsail resources.
    #       You can add one email address and one mobile phone number contact method in each Amazon Web Services Region. However, SMS text messaging is not supported in some Amazon Web Services
    #       Regions, and SMS text messages cannot be sent to some countries/regions. For more information,
    #       see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::CreateContactMethodRequest] params
    # @option params [String] :protocol
    #   <p>The protocol of the contact method, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    #            <p>The <code>SMS</code> protocol is supported only in the following Amazon Web Services
    #         Regions.</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (<code>us-east-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (<code>us-west-2</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Europe (Ireland) (<code>eu-west-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Tokyo) (<code>ap-northeast-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Singapore) (<code>ap-southeast-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (<code>ap-southeast-2</code>)</p>
    #               </li>
    #            </ul>
    #            <p>For a list of countries/regions where SMS text messages can be sent, and the latest
    #           Amazon Web Services Regions where SMS text messaging is supported, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html">Supported Regions and Countries</a> in the <i>Amazon SNS Developer
    #           Guide</i>.</p>
    #            <p>For more information about notifications in Amazon Lightsail, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    # @option params [String] :contact_endpoint
    #   <p>The destination of the contact method, such as an email address or a mobile phone
    #         number.</p>
    #            <p>Use the E.164 format when specifying a mobile phone number. E.164 is a standard for the
    #         phone number structure used for international telecommunication. Phone numbers that follow
    #         this format can have a maximum of 15 digits, and they are prefixed with the plus character (+)
    #         and the country code. For example, a U.S. phone number in E.164 format would be specified as
    #         +1XXX5550100. For more information, see <a href="https://en.wikipedia.org/wiki/E.164">E.164</a> on <i>Wikipedia</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocol: "Email" # One of: ["Email", "SMS"], # required
    #     contact_endpoint: "StringMax256", # required
    #   }
    #   options = {}
    #   response = client.create_contact_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateContactMethodResult]
    def create_contact_method(params = {}, options = {})
      request = build_request(:create_contact_method, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Lightsail container service.</p>
    #          <p>A Lightsail container service is a compute resource to which you can deploy containers.
    #       For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-services">Container services in Amazon Lightsail</a> in the <i>Lightsail Dev
    #         Guide</i>.</p>
    # @param [Hash, Types::CreateContainerServiceRequest] params
    # @option params [String] :service_name
    #   <p>The name for the container service.</p>
    #            <p>The name that you specify for your container service will make up part of its default
    #         domain. The default domain of a container service is typically
    #           <code>https://<ServiceName>.<RandomGUID>.<AWSRegion>.cs.amazonlightsail.com</code>.
    #         If the name of your container service is <code>container-service-1</code>, and it's located in
    #         the US East (Ohio) Amazon Web Services Region (<code>us-east-2</code>), then the domain for
    #         your container service will be like the following example:
    #           <code>https://container-service-1.ur4EXAMPLE2uq.us-east-2.cs.amazonlightsail.com</code>
    #            </p>
    #            <p>The following are the requirements for container service names:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be unique within each Amazon Web Services Region in your Lightsail
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain 1 to 63 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only alphanumeric characters and hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>A hyphen (-) can separate words but cannot be at the start or end of the name.</p>
    #               </li>
    #            </ul>
    # @option params [String] :power
    #   <p>The power specification for the container service.</p>
    #            <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
    #         container service. The <code>power</code> and <code>scale</code> of a container service makes
    #         up its configured capacity. To determine the monthly price of your container service, multiply
    #         the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
    #         the service.</p>
    #            <p>Use the <code>GetContainerServicePowers</code> action to get a list of power options that
    #         you can specify using this parameter, and their base monthly cost.</p>
    # @option params [Integer] :scale
    #   <p>The scale specification for the container service.</p>
    #            <p>The scale specifies the allocated compute nodes of the container service. The
    #           <code>power</code> and <code>scale</code> of a container service makes up its configured
    #         capacity. To determine the monthly price of your container service, multiply the base price of
    #         the <code>power</code> with the <code>scale</code> (the number of nodes) of the
    #         service.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the container service during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #            <p>For more information about tags in Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @option params [Hash<String, Array<String>>] :public_domain_names
    #   <p>The public domain names to use with the container service, such as
    #           <code>example.com</code> and <code>www.example.com</code>.</p>
    #            <p>You can specify up to four public domain names for a container service. The domain names
    #         that you specify are used when you create a deployment with a container configured as the
    #         public endpoint of your container service.</p>
    #            <p>If you don't specify public domain names, then you can use the default domain of the
    #         container service.</p>
    #            <important>
    #               <p>You must create and validate an SSL/TLS certificate before you can use public domain
    #           names with your container service. Use the <code>CreateCertificate</code> action to create a
    #           certificate for the public domain names you want to use with your container service.</p>
    #            </important>
    #            <p>You can specify public domain names using a string to array map as shown in the example
    #         later on this page.</p>
    # @option params [Types::ContainerServiceDeploymentRequest] :deployment
    #   <p>An object that describes a deployment for the container service.</p>
    #            <p>A deployment specifies the containers that will be launched on the container service and
    #         their settings, such as the ports to open, the environment variables to apply, and the launch
    #         command to run. It also specifies the container that will serve as the public endpoint of the
    #         deployment and its settings, such as the HTTP or HTTPS port to use, and the health check
    #         configuration.</p>
    # @option params [Types::PrivateRegistryAccessRequest] :private_registry_access
    #   <p>An object to describe the configuration for the container service to access private
    #         container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private
    #         repositories.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"], # required
    #     scale: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     public_domain_names: {
    #       "string" => ["string"]
    #     },
    #     deployment: {
    #       containers: {
    #         "ContainerName" => {
    #           image: "string",
    #           command: ["string"],
    #           environment: {
    #             "string" => "string"
    #           },
    #           ports: {
    #             "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #           }
    #         }
    #       },
    #       public_endpoint: {
    #         container_name: "string", # required
    #         container_port: 1, # required
    #         health_check: {
    #           healthy_threshold: 1,
    #           unhealthy_threshold: 1,
    #           timeout_seconds: 1,
    #           interval_seconds: 1,
    #           path: "string",
    #           success_codes: "string"
    #         }
    #       }
    #     },
    #     private_registry_access: {
    #       ecr_image_puller_role: {
    #         is_active: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_container_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_service: {
    #       container_service_name: "ContainerServiceName",
    #       arn: "NonEmptyString",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"],
    #       power_id: "string",
    #       state: "PENDING" # One of: ["PENDING", "READY", "RUNNING", "UPDATING", "DELETING", "DISABLED", "DEPLOYING"],
    #       state_detail: {
    #         code: "CREATING_SYSTEM_RESOURCES" # One of: ["CREATING_SYSTEM_RESOURCES", "CREATING_NETWORK_INFRASTRUCTURE", "PROVISIONING_CERTIFICATE", "PROVISIONING_SERVICE", "CREATING_DEPLOYMENT", "EVALUATING_HEALTH_CHECK", "ACTIVATING_DEPLOYMENT", "CERTIFICATE_LIMIT_EXCEEDED", "UNKNOWN_ERROR"],
    #         message: "string"
    #       },
    #       scale: 1,
    #       current_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       next_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       is_disabled: false,
    #       principal_arn: "string",
    #       private_domain_name: "string",
    #       public_domain_names: {
    #         "string" => ["string"]
    #       },
    #       url: "string",
    #       private_registry_access: {
    #         ecr_image_puller_role: {
    #           is_active: false,
    #           principal_arn: "string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateContainerServiceResult]
    def create_container_service(params = {}, options = {})
      request = build_request(:create_container_service, params)
      request.send_request(options)
    end

    # <p>Creates a deployment for your Amazon Lightsail container service.</p>
    #          <p>A deployment specifies the containers that will be launched on the container service and
    #       their settings, such as the ports to open, the environment variables to apply, and the launch
    #       command to run. It also specifies the container that will serve as the public endpoint of the
    #       deployment and its settings, such as the HTTP or HTTPS port to use, and the health check
    #       configuration.</p>
    #          <p>You can deploy containers to your container service using container images from a public
    #       registry such as Amazon ECR Public, or from your local machine. For more information, see
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-container-images">Creating container images for your Amazon Lightsail container services</a> in the
    #         <i>Amazon Lightsail Developer Guide</i>.</p>
    # @param [Hash, Types::CreateContainerServiceDeploymentRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to create the deployment.</p>
    # @option params [Hash<String, Types::Container>] :containers
    #   <p>An object that describes the settings of the containers that will be launched on the
    #         container service.</p>
    # @option params [Types::EndpointRequest] :public_endpoint
    #   <p>An object that describes the settings of the public endpoint for the container
    #         service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     containers: {
    #       "ContainerName" => {
    #         image: "string",
    #         command: ["string"],
    #         environment: {
    #           "string" => "string"
    #         },
    #         ports: {
    #           "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #         }
    #       }
    #     },
    #     public_endpoint: {
    #       container_name: "string", # required
    #       container_port: 1, # required
    #       health_check: {
    #         healthy_threshold: 1,
    #         unhealthy_threshold: 1,
    #         timeout_seconds: 1,
    #         interval_seconds: 1,
    #         path: "string",
    #         success_codes: "string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_container_service_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_service: {
    #       container_service_name: "ContainerServiceName",
    #       arn: "NonEmptyString",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"],
    #       power_id: "string",
    #       state: "PENDING" # One of: ["PENDING", "READY", "RUNNING", "UPDATING", "DELETING", "DISABLED", "DEPLOYING"],
    #       state_detail: {
    #         code: "CREATING_SYSTEM_RESOURCES" # One of: ["CREATING_SYSTEM_RESOURCES", "CREATING_NETWORK_INFRASTRUCTURE", "PROVISIONING_CERTIFICATE", "PROVISIONING_SERVICE", "CREATING_DEPLOYMENT", "EVALUATING_HEALTH_CHECK", "ACTIVATING_DEPLOYMENT", "CERTIFICATE_LIMIT_EXCEEDED", "UNKNOWN_ERROR"],
    #         message: "string"
    #       },
    #       scale: 1,
    #       current_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       next_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       is_disabled: false,
    #       principal_arn: "string",
    #       private_domain_name: "string",
    #       public_domain_names: {
    #         "string" => ["string"]
    #       },
    #       url: "string",
    #       private_registry_access: {
    #         ecr_image_puller_role: {
    #           is_active: false,
    #           principal_arn: "string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateContainerServiceDeploymentResult]
    def create_container_service_deployment(params = {}, options = {})
      request = build_request(:create_container_service_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a temporary set of log in credentials that you can use to log in to the Docker
    #       process on your local machine. After you're logged in, you can use the native Docker commands
    #       to push your local container images to the container image registry of your Amazon Lightsail
    #       account so that you can use them with your Lightsail container service. The log in
    #       credentials expire 12 hours after they are created, at which point you will need to create a
    #       new set of log in credentials.</p>
    #          <note>
    #             <p>You can only push container images to the container service registry of your Lightsail
    #         account. You cannot pull container images or perform any other container image management
    #         actions on the container service registry.</p>
    #          </note>
    #          <p>After you push your container images to the container image registry of your Lightsail
    #       account, use the <code>RegisterContainerImage</code> action to register the pushed images to a
    #       specific Lightsail container service.</p>
    #          <note>
    #             <p>This action is not required if you install and use the Lightsail Control
    #         (lightsailctl) plugin to push container images to your Lightsail container service. For
    #         more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images">Pushing and managing container images on your Amazon Lightsail container services</a>
    #         in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateContainerServiceRegistryLoginRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.create_container_service_registry_login(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registry_login: {
    #       username: "string",
    #       password: "string",
    #       expires_at: Time.now,
    #       registry: "string"
    #     }
    #   }
    # @return [Types::CreateContainerServiceRegistryLoginResult]
    def create_container_service_registry_login(params = {}, options = {})
      request = build_request(:create_container_service_registry_login, params)
      request.send_request(options)
    end

    # <p>Creates a block storage disk that can be attached to an Amazon Lightsail instance in the
    #       same Availability Zone (<code>us-east-2a</code>).</p>
    #          <p>The <code>create disk</code> operation supports tag-based access control via request tags.
    #       For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateDiskRequest] params
    # @option params [String] :disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you want to create the disk (<code>us-east-2a</code>). Use the
    #         same Availability Zone as the Lightsail instance to which you want to attach the
    #         disk.</p>
    #            <p>Use the <code>get regions</code> operation to list the Availability Zones where
    #         Lightsail is currently available.</p>
    # @option params [Integer] :size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   <p>An array of objects that represent the add-ons to enable for the new disk.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #     availability_zone: "NonEmptyString", # required
    #     size_in_gb: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay"
    #         },
    #         stop_instance_on_idle_request: {
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_disk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateDiskResult]
    def create_disk(params = {}, options = {})
      request = build_request(:create_disk, params)
      request.send_request(options)
    end

    # <p>Creates a block storage disk from a manual or automatic snapshot of a disk. The resulting
    #       disk can be attached to an Amazon Lightsail instance in the same Availability Zone
    #         (<code>us-east-2a</code>).</p>
    #          <p>The <code>create disk from snapshot</code> operation supports tag-based access control via
    #       request tags and resource tags applied to the resource identified by <code>disk snapshot
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateDiskFromSnapshotRequest] params
    # @option params [String] :disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    # @option params [String] :disk_snapshot_name
    #   <p>The name of the disk snapshot (<code>my-snapshot</code>) from which to create the new
    #         storage disk.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>source disk name</code>
    #             parameter. The <code>disk snapshot name</code> and <code>source disk name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #            </ul>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you want to create the disk (<code>us-east-2a</code>). Choose
    #         the same Availability Zone as the Lightsail instance where you want to create the
    #         disk.</p>
    #            <p>Use the GetRegions operation to list the Availability Zones where Lightsail is currently
    #         available.</p>
    # @option params [Integer] :size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   <p>An array of objects that represent the add-ons to enable for the new disk.</p>
    # @option params [String] :source_disk_name
    #   <p>The name of the source disk from which the source automatic snapshot was created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>disk snapshot name</code>
    #             parameter. The <code>source disk name</code> and <code>disk snapshot name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :restore_date
    #   <p>The date of the automatic snapshot to use for the new disk. Use the <code>get auto
    #           snapshots</code> operation to identify the dates of the available automatic
    #         snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #     disk_snapshot_name: "ResourceName",
    #     availability_zone: "NonEmptyString", # required
    #     size_in_gb: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay"
    #         },
    #         stop_instance_on_idle_request: {
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       }
    #     ],
    #     source_disk_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false
    #   }
    #   options = {}
    #   response = client.create_disk_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateDiskFromSnapshotResult]
    def create_disk_from_snapshot(params = {}, options = {})
      request = build_request(:create_disk_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of a block storage disk. You can use snapshots for backups, to make
    #       copies of disks, and to save data before shutting down a Lightsail instance.</p>
    #          <p>You can take a snapshot of an attached disk that is in use; however, snapshots only
    #       capture data that has been written to your disk at the time the snapshot command is issued.
    #       This may exclude any data that has been cached by any applications or the operating system. If
    #       you can pause any file systems on the disk long enough to take a snapshot, your snapshot
    #       should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should
    #       unmount the disk from within the Lightsail instance, issue the create disk snapshot command,
    #       and then remount the disk to ensure a consistent and complete snapshot. You may remount and
    #       use your disk while the snapshot status is pending.</p>
    #          <p>You can also use this operation to create a snapshot of an instance's system volume. You
    #       might want to do this, for example, to recover data from the system volume of a botched
    #       instance or to create a backup of the system volume like you would for a block storage disk.
    #       To create a snapshot of a system volume, just define the <code>instance name</code> parameter
    #       when issuing the snapshot command, and a snapshot of the defined instance's system volume will
    #       be created. After the snapshot is available, you can create a block storage disk from the
    #       snapshot and attach it to a running instance to access the data on the disk.</p>
    #          <p>The <code>create disk snapshot</code> operation supports tag-based access control via
    #       request tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateDiskSnapshotRequest] params
    # @option params [String] :disk_name
    #   <p>The unique name of the source disk (<code>Disk-Virginia-1</code>).</p>
    #            <note>
    #               <p>This parameter cannot be defined together with the <code>instance name</code> parameter.
    #           The <code>disk name</code> and <code>instance name</code> parameters are mutually
    #           exclusive.</p>
    #            </note>
    # @option params [String] :disk_snapshot_name
    #   <p>The name of the destination disk snapshot (<code>my-disk-snapshot</code>) based on the
    #         source disk.</p>
    # @option params [String] :instance_name
    #   <p>The unique name of the source instance (<code>Amazon_Linux-512MB-Virginia-1</code>). When
    #         this is defined, a snapshot of the instance's system volume is created.</p>
    #            <note>
    #               <p>This parameter cannot be defined together with the <code>disk name</code> parameter. The
    #             <code>instance name</code> and <code>disk name</code> parameters are mutually
    #           exclusive.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName",
    #     disk_snapshot_name: "ResourceName", # required
    #     instance_name: "ResourceName",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_disk_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateDiskSnapshotResult]
    def create_disk_snapshot(params = {}, options = {})
      request = build_request(:create_disk_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Lightsail content delivery network (CDN) distribution.</p>
    #          <p>A distribution is a globally distributed network of caching servers that improve the
    #       performance of your website or web application hosted on a Lightsail instance. For more
    #       information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-content-delivery-network-distributions">Content delivery networks in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::CreateDistributionRequest] params
    # @option params [String] :distribution_name
    #   <p>The name for the distribution.</p>
    # @option params [Types::InputOrigin] :origin
    #   <p>An object that describes the origin resource for the distribution, such as a Lightsail
    #         instance, bucket, or load balancer.</p>
    #            <p>The distribution pulls, caches, and serves content from the origin.</p>
    # @option params [Types::CacheBehavior] :default_cache_behavior
    #   <p>An object that describes the default cache behavior for the distribution.</p>
    # @option params [Types::CacheSettings] :cache_behavior_settings
    #   <p>An object that describes the cache behavior settings for the distribution.</p>
    # @option params [Array<Types::CacheBehaviorPerPath>] :cache_behaviors
    #   <p>An array of objects that describe the per-path cache behavior for the distribution.</p>
    # @option params [String] :bundle_id
    #   <p>The bundle ID to use for the distribution.</p>
    #            <p>A distribution bundle describes the specifications of your distribution, such as the
    #         monthly cost and monthly network transfer quota.</p>
    #            <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
    #         IDs that you can specify.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the distribution.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
    #         IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the distribution during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [String] :certificate_name
    #   <p>The name of the SSL/TLS certificate that you want to attach to the distribution.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html">GetCertificates</a>
    #         action to get a list of certificate names that you can specify.</p>
    # @option params [String] :viewer_minimum_tls_protocol_version
    #   <p>The minimum TLS protocol version for the SSL/TLS certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName", # required
    #     origin: { # required
    #       name: "ResourceName",
    #       region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"],
    #       protocol_policy: "http-only" # One of: ["http-only", "https-only"],
    #       response_timeout: 1
    #     },
    #     default_cache_behavior: { # required
    #       behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #     },
    #     cache_behavior_settings: {
    #       default_ttl: 1,
    #       minimum_ttl: 1,
    #       maximum_ttl: 1,
    #       allowed_http_methods: "NonEmptyString",
    #       cached_http_methods: "NonEmptyString",
    #       forwarded_cookies: {
    #         option: "none" # One of: ["none", "allow-list", "all"],
    #         cookies_allow_list: ["string"]
    #       },
    #       forwarded_headers: {
    #         option: "none" # One of: ["none", "allow-list", "all"],
    #         headers_allow_list: ["Accept" # One of: ["Accept", "Accept-Charset", "Accept-Datetime", "Accept-Encoding", "Accept-Language", "Authorization", "CloudFront-Forwarded-Proto", "CloudFront-Is-Desktop-Viewer", "CloudFront-Is-Mobile-Viewer", "CloudFront-Is-SmartTV-Viewer", "CloudFront-Is-Tablet-Viewer", "CloudFront-Viewer-Country", "Host", "Origin", "Referer"]]
    #       },
    #       forwarded_query_strings: {
    #         option: false,
    #         query_strings_allow_list: ["string"]
    #       }
    #     },
    #     cache_behaviors: [
    #       {
    #         path: "string",
    #         behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #       }
    #     ],
    #     bundle_id: "string", # required
    #     ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     certificate_name: "ResourceName",
    #     viewer_minimum_tls_protocol_version: "TLSv1.1_2016" # One of: ["TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"]
    #   }
    #   options = {}
    #   response = client.create_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distribution: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       alternative_domain_names: ["string"],
    #       status: "string",
    #       is_enabled: false,
    #       domain_name: "string",
    #       bundle_id: "string",
    #       certificate_name: "ResourceName",
    #       origin: {
    #         name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"],
    #         protocol_policy: "http-only" # One of: ["http-only", "https-only"],
    #         response_timeout: 1
    #       },
    #       origin_public_dns: "string",
    #       default_cache_behavior: {
    #         behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #       },
    #       cache_behavior_settings: {
    #         default_ttl: 1,
    #         minimum_ttl: 1,
    #         maximum_ttl: 1,
    #         allowed_http_methods: "NonEmptyString",
    #         cached_http_methods: "NonEmptyString",
    #         forwarded_cookies: {
    #           option: "none" # One of: ["none", "allow-list", "all"],
    #           cookies_allow_list: ["string"]
    #         },
    #         forwarded_headers: {
    #           option: "none" # One of: ["none", "allow-list", "all"],
    #           headers_allow_list: ["Accept" # One of: ["Accept", "Accept-Charset", "Accept-Datetime", "Accept-Encoding", "Accept-Language", "Authorization", "CloudFront-Forwarded-Proto", "CloudFront-Is-Desktop-Viewer", "CloudFront-Is-Mobile-Viewer", "CloudFront-Is-SmartTV-Viewer", "CloudFront-Is-Tablet-Viewer", "CloudFront-Viewer-Country", "Host", "Origin", "Referer"]]
    #         },
    #         forwarded_query_strings: {
    #           option: false,
    #           query_strings_allow_list: ["string"]
    #         }
    #       },
    #       cache_behaviors: [
    #         {
    #           path: "string",
    #           behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #         }
    #       ],
    #       able_to_update_bundle: false,
    #       ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       viewer_minimum_tls_protocol_version: "string"
    #     },
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::CreateDistributionResult]
    def create_distribution(params = {}, options = {})
      request = build_request(:create_distribution, params)
      request.send_request(options)
    end

    # <p>Creates a domain resource for the specified domain (example.com).</p>
    #          <p>The <code>create domain</code> operation supports tag-based access control via request
    #       tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name to manage (<code>example.com</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::CreateDomainResult]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates one of the following domain name system (DNS) records in a domain DNS zone:
    #       Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority
    #       (SOA), service locator (SRV), or text (TXT).</p>
    #          <p>The <code>create domain entry</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>domain name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateDomainEntryRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name (<code>example.com</code>) for which you want to create the domain
    #         entry.</p>
    # @option params [Types::DomainEntry] :domain_entry
    #   <p>An array of key-value pairs containing information about the domain entry request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::CreateDomainEntryResult]
    def create_domain_entry(params = {}, options = {})
      request = build_request(:create_domain_entry, params)
      request.send_request(options)
    end

    # <p>Creates two URLs that are used to access a virtual computer’s graphical user interface
    #       (GUI) session. The primary URL initiates a web-based Amazon DCV session to the virtual
    #       computer's application. The secondary URL initiates a web-based Amazon DCV session to the
    #       virtual computer's operating session. </p>
    #          <p>Use <code>StartGUISession</code> to open the session.</p>
    # @param [Hash, Types::CreateGUISessionAccessDetailsRequest] params
    # @option params [String] :resource_name
    #   <p>The resource name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.create_gui_session_access_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_name: "ResourceName",
    #     status: "startExpired" # One of: ["startExpired", "notStarted", "started", "starting", "stopped", "stopping", "settingUpInstance", "failedInstanceCreation", "failedStartingGUISession", "failedStoppingGUISession"],
    #     percentage_complete: 1,
    #     failure_reason: "string",
    #     sessions: [
    #       {
    #         name: "NonEmptyString",
    #         url: "SensitiveNonEmptyString",
    #         is_primary: false
    #       }
    #     ]
    #   }
    # @return [Types::CreateGUISessionAccessDetailsResult]
    def create_gui_session_access_details(params = {}, options = {})
      request = build_request(:create_gui_session_access_details, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of a specific virtual private server, or <i>instance</i>.
    #       You can use a snapshot to create a new instance that is based on that snapshot.</p>
    #          <p>The <code>create instance snapshot</code> operation supports tag-based access control via
    #       request tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateInstanceSnapshotRequest] params
    # @option params [String] :instance_snapshot_name
    #   <p>The name for your new snapshot.</p>
    # @option params [String] :instance_name
    #   <p>The Lightsail instance on which to base your snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_snapshot_name: "ResourceName", # required
    #     instance_name: "ResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_instance_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateInstanceSnapshotResult]
    def create_instance_snapshot(params = {}, options = {})
      request = build_request(:create_instance_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates one or more Amazon Lightsail instances.</p>
    #          <p>The <code>create instances</code> operation supports tag-based access control via request
    #       tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateInstancesRequest] params
    # @option params [Array<String>] :instance_names
    #   <p>The names to use for your new Lightsail instances. Separate multiple values using
    #         quotation marks and commas, for example:
    #         <code>["MyFirstInstance","MySecondInstance"]</code>
    #            </p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone in which to create your instance. Use the following format:
    #           <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones by using
    #         the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
    #           regions</a> operation. Be sure to add the <code>include Availability Zones</code>
    #         parameter to your request.</p>
    # @option params [String] :custom_image_name
    #   <p>(Discontinued) The name for your custom image.</p>
    #            <note>
    #               <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now
    #           discontinued.</p>
    #            </note>
    # @option params [String] :blueprint_id
    #   <p>The ID for a virtual private server image (<code>app_wordpress_x_x</code> or
    #           <code>app_lamp_x_x</code>). Use the <code>get blueprints</code> operation to return a list
    #         of available images (or <i>blueprints</i>).</p>
    #            <note>
    #               <p>Use active blueprints when creating new instances. Inactive blueprints are listed to
    #           support customers with existing instances and are not necessarily available to create new
    #           instances. Blueprints are marked inactive when they become outdated due to operating system
    #           updates or new application releases.</p>
    #            </note>
    # @option params [String] :bundle_id
    #   <p>The bundle of specification information for your virtual private server (or
    #           <i>instance</i>), including the pricing plan (<code>medium_x_x</code>).</p>
    # @option params [String] :user_data
    #   <p>A launch script you can create that configures a server with additional user data. For
    #         example, you might want to run <code>apt-get -y update</code>.</p>
    #            <note>
    #               <p>Depending on the machine image you choose, the command to get software on your instance
    #           varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
    #             <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
    #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image">Amazon Lightsail Developer Guide</a>.</p>
    #            </note>
    # @option params [String] :key_pair_name
    #   <p>The name of your key pair.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   <p>An array of objects representing the add-ons to enable for the new instance.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the instance.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_names: ["string"], # required
    #     availability_zone: "string", # required
    #     custom_image_name: "ResourceName",
    #     blueprint_id: "NonEmptyString", # required
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay"
    #         },
    #         stop_instance_on_idle_request: {
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       }
    #     ],
    #     ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"]
    #   }
    #   options = {}
    #   response = client.create_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateInstancesResult]
    def create_instances(params = {}, options = {})
      request = build_request(:create_instances, params)
      request.send_request(options)
    end

    # <p>Creates one or more new instances from a manual or automatic snapshot of an
    #       instance.</p>
    #          <p>The <code>create instances from snapshot</code> operation supports tag-based access
    #       control via request tags and resource tags applied to the resource identified by
    #         <code>instance snapshot name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateInstancesFromSnapshotRequest] params
    # @option params [Array<String>] :instance_names
    #   <p>The names for your new instances.</p>
    # @option params [Hash<String, Array<Types::DiskMap>>] :attached_disk_mapping
    #   <p>An object containing information about one or more disk mappings.</p>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you want to create your instances. Use the following
    #         formatting: <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones
    #         by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
    #           regions</a> operation. Be sure to add the <code>include Availability Zones</code>
    #         parameter to your request.</p>
    # @option params [String] :instance_snapshot_name
    #   <p>The name of the instance snapshot on which you are basing your new instances. Use the get
    #         instance snapshots operation to return information about your existing snapshots.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>source instance name</code>
    #             parameter. The <code>instance snapshot name</code> and <code>source instance name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #            </ul>
    # @option params [String] :bundle_id
    #   <p>The bundle of specification information for your virtual private server (or
    #           <i>instance</i>), including the pricing plan (<code>micro_x_x</code>).</p>
    # @option params [String] :user_data
    #   <p>You can create a launch script that configures a server with additional user data. For
    #         example, <code>apt-get -y update</code>.</p>
    #            <note>
    #               <p>Depending on the machine image you choose, the command to get software on your instance
    #           varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
    #             <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
    #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image">Amazon Lightsail Developer Guide</a>.</p>
    #            </note>
    # @option params [String] :key_pair_name
    #   <p>The name for your key pair.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [Array<Types::AddOnRequest>] :add_ons
    #   <p>An array of objects representing the add-ons to enable for the new instance.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the instance.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    # @option params [String] :source_instance_name
    #   <p>The name of the source instance from which the source automatic snapshot was
    #         created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>instance snapshot name</code>
    #             parameter. The <code>source instance name</code> and <code>instance snapshot name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :restore_date
    #   <p>The date of the automatic snapshot to use for the new instance. Use the <code>get auto
    #           snapshots</code> operation to identify the dates of the available automatic
    #         snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_names: ["string"], # required
    #     attached_disk_mapping: {
    #       "ResourceName" => [
    #         {
    #           original_disk_path: "NonEmptyString",
    #           new_disk_name: "ResourceName"
    #         }
    #       ]
    #     },
    #     availability_zone: "string", # required
    #     instance_snapshot_name: "ResourceName",
    #     bundle_id: "NonEmptyString", # required
    #     user_data: "string",
    #     key_pair_name: "ResourceName",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     add_ons: [
    #       {
    #         add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay"
    #         },
    #         stop_instance_on_idle_request: {
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       }
    #     ],
    #     ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #     source_instance_name: "string",
    #     restore_date: "string",
    #     use_latest_restorable_auto_snapshot: false
    #   }
    #   options = {}
    #   response = client.create_instances_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateInstancesFromSnapshotResult]
    def create_instances_from_snapshot(params = {}, options = {})
      request = build_request(:create_instances_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a custom SSH key pair that you can use with an Amazon Lightsail
    #       instance.</p>
    #          <note>
    #             <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html">DownloadDefaultKeyPair</a> action to create a Lightsail default key
    #         pair in an Amazon Web Services Region where a default key pair does not currently
    #         exist.</p>
    #          </note>
    #          <p>The <code>create key pair</code> operation supports tag-based access control via request
    #       tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateKeyPairRequest] params
    # @option params [String] :key_pair_name
    #   <p>The name for your new key pair.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_pair_name: "ResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pair: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fingerprint: "Base64"
    #     },
    #     public_key_base64: "Base64",
    #     private_key_base64: "Base64",
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::CreateKeyPairResult]
    def create_key_pair(params = {}, options = {})
      request = build_request(:create_key_pair, params)
      request.send_request(options)
    end

    # <p>Creates a Lightsail load balancer. To learn more about deciding whether to load balance
    #       your application, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/configure-lightsail-instances-for-load-balancing">Configure your Lightsail instances for load balancing</a>. You can create up to 5
    #       load balancers per AWS Region in your account.</p>
    #          <p>When you create a load balancer, you can specify a unique name and port settings. To
    #       change additional load balancer settings, use the <code>UpdateLoadBalancerAttribute</code>
    #       operation.</p>
    #          <p>The <code>create load balancer</code> operation supports tag-based access control via
    #       request tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateLoadBalancerRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of your load balancer.</p>
    # @option params [Integer] :instance_port
    #   <p>The instance port where you're creating your load balancer.</p>
    # @option params [String] :health_check_path
    #   <p>The path you provided to perform the load balancer health check. If you didn't specify a
    #         health check path, Lightsail uses the root path of your website (<code>"/"</code>).</p>
    #            <p>You may want to specify a custom health check path other than the root of your application
    #         if your home page loads slowly or has a lot of media or scripting on it.</p>
    # @option params [String] :certificate_name
    #   <p>The name of the SSL/TLS certificate.</p>
    #            <p>If you specify <code>certificateName</code>, then <code>certificateDomainName</code> is
    #         required (and vice-versa).</p>
    # @option params [String] :certificate_domain_name
    #   <p>The domain name with which your certificate is associated
    #         (<code>example.com</code>).</p>
    #            <p>If you specify <code>certificateDomainName</code>, then <code>certificateName</code> is
    #         required (and vice-versa).</p>
    # @option params [Array<String>] :certificate_alternative_names
    #   <p>The optional alternative domains and subdomains to use with your SSL/TLS certificate
    #           (<code>www.example.com</code>, <code>example.com</code>, <code>m.example.com</code>,
    #           <code>blog.example.com</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type for the load balancer.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    # @option params [String] :tls_policy_name
    #   <p>The name of the TLS policy to apply to the load balancer.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html">GetLoadBalancerTlsPolicies</a> action to get a list of TLS policy names that you can
    #         specify.</p>
    #            <p>For more information about load balancer TLS policies, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy">Configuring TLS security policies on your Amazon Lightsail load
    #           balancers</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     instance_port: 1, # required
    #     health_check_path: "string",
    #     certificate_name: "ResourceName",
    #     certificate_domain_name: "DomainName",
    #     certificate_alternative_names: ["DomainName"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #     tls_policy_name: "string"
    #   }
    #   options = {}
    #   response = client.create_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateLoadBalancerResult]
    def create_load_balancer(params = {}, options = {})
      request = build_request(:create_load_balancer, params)
      request.send_request(options)
    end

    # <p>Creates an SSL/TLS certificate for an Amazon Lightsail load balancer.</p>
    #          <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>
    #          <p>The <code>CreateLoadBalancerTlsCertificate</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateLoadBalancerTlsCertificateRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The load balancer name where you want to create the SSL/TLS certificate.</p>
    # @option params [String] :certificate_name
    #   <p>The SSL/TLS certificate name.</p>
    #            <p>You can have up to 10 certificates in your account at one time. Each Lightsail load
    #         balancer can have up to 2 certificates associated with it at one time. There is also an
    #         overall limit to the number of certificates that can be issue in a 365-day period. For more
    #         information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p>
    # @option params [String] :certificate_domain_name
    #   <p>The domain name (<code>example.com</code>) for your SSL/TLS certificate.</p>
    # @option params [Array<String>] :certificate_alternative_names
    #   <p>An array of strings listing alternative domains and subdomains for your SSL/TLS
    #         certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9
    #         alternative names (in addition to the 1 primary domain). We do not support wildcards
    #           (<code>*.example.com</code>).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #     certificate_domain_name: "DomainName", # required
    #     certificate_alternative_names: ["DomainName"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_load_balancer_tls_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateLoadBalancerTlsCertificateResult]
    def create_load_balancer_tls_certificate(params = {}, options = {})
      request = build_request(:create_load_balancer_tls_certificate, params)
      request.send_request(options)
    end

    # <p>Creates a new database in Amazon Lightsail.</p>
    #          <p>The <code>create relational database</code> operation supports tag-based access control
    #       via request tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name to use for your new Lightsail database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone in which to create your new database. Use the
    #           <code>us-east-2a</code> case-sensitive format.</p>
    #            <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
    #         Be sure to add the <code>include relational database Availability Zones</code> parameter to
    #         your request.</p>
    # @option params [String] :relational_database_blueprint_id
    #   <p>The blueprint ID for your new database. A blueprint describes the major engine version of
    #         a database.</p>
    #            <p>You can get a list of database blueprints IDs by using the <code>get relational database
    #           blueprints</code> operation.</p>
    # @option params [String] :relational_database_bundle_id
    #   <p>The bundle ID for your new database. A bundle describes the performance specifications for
    #         your database.</p>
    #            <p>You can get a list of database bundle IDs by using the <code>get relational database
    #           bundles</code> operation.</p>
    # @option params [String] :master_database_name
    #   <p>The meaning of this parameter differs according to the database engine you use.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>The name of the database to create when the Lightsail database resource is created. If
    #         this parameter isn't specified, no database is created in the database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1 to 64 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
    #             (0- 9).</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a word reserved by the specified database engine.</p>
    #                  <p>For more information about reserved words in MySQL, see the Keywords and Reserved
    #             Words articles for <a href="https://dev.mysql.com/doc/refman/5.6/en/keywords.html">MySQL 5.6</a>, <a href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL 5.7</a>, and <a href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL 8.0</a>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>The name of the database to create when the Lightsail database resource is created. If
    #         this parameter isn't specified, a database named <code>postgres</code> is created in the
    #         database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
    #             (0- 9).</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a word reserved by the specified database engine.</p>
    #                  <p>For more information about reserved words in PostgreSQL, see the SQL Key Words
    #             articles for <a href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL 9.6</a>, <a href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL
    #               10</a>, <a href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL 11</a>, and <a href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
    #               12</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :master_username
    #   <p>The name for the master user.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Required for MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>Must be 1 to 16 letters or numbers. Can contain underscores.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a reserved word for the chosen database engine.</p>
    #                  <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
    #             Reserved Words articles for <a href="https://dev.mysql.com/doc/refman/5.6/en/keywords.html">MySQL 5.6</a>, <a href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL 5.7</a>, or <a href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL 8.0</a>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Required for PostgreSQL.</p>
    #               </li>
    #               <li>
    #                  <p>Must be 1 to 63 letters or numbers. Can contain underscores.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a reserved word for the chosen database engine.</p>
    #                  <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
    #             Reserved Words articles for <a href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL
    #               9.6</a>, <a href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL 10</a>, <a href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL
    #               11</a>, and <a href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
    #               12</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :master_user_password
    #   <p>The password for the master user. The password can include any printable ASCII character
    #         except "/", """, or "@". It cannot contain spaces.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 41 characters.</p>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 128 characters.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created for your new database if
    #         automated backups are enabled.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         AWS Region. For more information about the preferred backup window time blocks for each
    #         region, see the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Working With Backups</a> guide in the Amazon Relational Database Service documentation.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
    #                  <p>Example: <code>16:00-16:30</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur on your new
    #         database.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         AWS Region, occurring on a random day of the week.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>Tue:17:00-Tue:17:30</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies the accessibility options for your new database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     availability_zone: "string",
    #     relational_database_blueprint_id: "string", # required
    #     relational_database_bundle_id: "string", # required
    #     master_database_name: "string", # required
    #     master_username: "string", # required
    #     master_user_password: "SensitiveString",
    #     preferred_backup_window: "string",
    #     preferred_maintenance_window: "string",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateRelationalDatabaseResult]
    def create_relational_database(params = {}, options = {})
      request = build_request(:create_relational_database, params)
      request.send_request(options)
    end

    # <p>Creates a new database from an existing database snapshot in Amazon Lightsail.</p>
    #          <p>You can create a new database from a snapshot in if something goes wrong with your
    #       original database, or to change it to a different plan, such as a high availability or
    #       standard plan.</p>
    #          <p>The <code>create relational database from snapshot</code> operation supports tag-based
    #       access control via request tags and resource tags applied to the resource identified by
    #       relationalDatabaseSnapshotName. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRelationalDatabaseFromSnapshotRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name to use for your new Lightsail database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    # @option params [String] :availability_zone
    #   <p>The Availability Zone in which to create your new database. Use the
    #           <code>us-east-2a</code> case-sensitive format.</p>
    #            <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
    #         Be sure to add the <code>include relational database Availability Zones</code> parameter to
    #         your request.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies the accessibility options for your new database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    # @option params [String] :relational_database_snapshot_name
    #   <p>The name of the database snapshot from which to create your new database.</p>
    # @option params [String] :relational_database_bundle_id
    #   <p>The bundle ID for your new database. A bundle describes the performance specifications for
    #         your database.</p>
    #            <p>You can get a list of database bundle IDs by using the <code>get relational database
    #           bundles</code> operation.</p>
    #            <p>When creating a new database from a snapshot, you cannot choose a bundle that is smaller
    #         than the bundle of the source database.</p>
    # @option params [String] :source_relational_database_name
    #   <p>The name of the source database.</p>
    # @option params [Time] :restore_time
    #   <p>The date and time to restore your database from.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the database.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>use latest restorable time</code> parameter is
    #               <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then
    #             you input <code>1538424000</code> as the restore time.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>Specifies whether your database is restored from the latest backup time. A value of
    #           <code>true</code> restores from the latest backup time. </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if the <code>restore time</code> parameter is
    #         provided.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     availability_zone: "string",
    #     publicly_accessible: false,
    #     relational_database_snapshot_name: "ResourceName",
    #     relational_database_bundle_id: "string",
    #     source_relational_database_name: "ResourceName",
    #     restore_time: Time.now,
    #     use_latest_restorable_time: false,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_relational_database_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateRelationalDatabaseFromSnapshotResult]
    def create_relational_database_from_snapshot(params = {}, options = {})
      request = build_request(:create_relational_database_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of your database in Amazon Lightsail. You can use snapshots for backups,
    #       to make copies of a database, and to save data before deleting a database.</p>
    #          <p>The <code>create relational database snapshot</code> operation supports tag-based access
    #       control via request tags. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRelationalDatabaseSnapshotRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of the database on which to base your new snapshot.</p>
    # @option params [String] :relational_database_snapshot_name
    #   <p>The name for your new database snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     relational_database_snapshot_name: "ResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_relational_database_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::CreateRelationalDatabaseSnapshotResult]
    def create_relational_database_snapshot(params = {}, options = {})
      request = build_request(:create_relational_database_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes an alarm.</p>
    #          <p>An alarm is used to monitor a single metric for one of your resources. When a metric
    #       condition is met, the alarm can notify you by email, SMS text message, and a banner displayed
    #       on the Amazon Lightsail console. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms
    #         in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::DeleteAlarmRequest] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteAlarmResult]
    def delete_alarm(params = {}, options = {})
      request = build_request(:delete_alarm, params)
      request.send_request(options)
    end

    # <p>Deletes an automatic snapshot of an instance or disk. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteAutoSnapshotRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the source instance or disk from which to delete the automatic
    #         snapshot.</p>
    # @option params [String] :date
    #   <p>The date of the automatic snapshot to delete in <code>YYYY-MM-DD</code> format. Use the
    #           <code>get auto snapshots</code> operation to get the available automatic snapshots for a
    #         resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     date: "AutoSnapshotDate", # required
    #   }
    #   options = {}
    #   response = client.delete_auto_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteAutoSnapshotResult]
    def delete_auto_snapshot(params = {}, options = {})
      request = build_request(:delete_auto_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes a Amazon Lightsail bucket.</p>
    #          <note>
    #             <p>When you delete your bucket, the bucket name is released and can be reused for a new
    #         bucket in your account or another Amazon Web Services account.</p>
    #          </note>
    # @param [Hash, Types::DeleteBucketRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket to delete.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html">GetBuckets</a> action to get a list of bucket names
    #         that you can specify.</p>
    # @option params [Boolean] :force_delete
    #   <p>A Boolean value that indicates whether to force delete the bucket.</p>
    #            <p>You must force delete the bucket if it has one of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The bucket is the origin of a distribution.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has instances that were granted access to it using the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html">SetResourceAccessForBucket</a> action.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has objects.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has access keys.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Force deleting a bucket might impact other resources that rely on the bucket, such as
    #           instances, distributions, or software that use the issued access keys.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteBucketResult]
    def delete_bucket(params = {}, options = {})
      request = build_request(:delete_bucket, params)
      request.send_request(options)
    end

    # <p>Deletes an access key for the specified Amazon Lightsail bucket.</p>
    #          <p>We recommend that you delete an access key if the secret access key is compromised.</p>
    #          <p>For more information about access keys, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys">Creating access keys for a bucket in Amazon Lightsail</a> in the
    #         <i>Amazon Lightsail Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteBucketAccessKeyRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket that the access key belongs to.</p>
    # @option params [String] :access_key_id
    #   <p>The ID of the access key to delete.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html">GetBucketAccessKeys</a> action to get a
    #         list of access key IDs that you can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     access_key_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket_access_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteBucketAccessKeyResult]
    def delete_bucket_access_key(params = {}, options = {})
      request = build_request(:delete_bucket_access_key, params)
      request.send_request(options)
    end

    # <p>Deletes an SSL/TLS certificate for your Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>Certificates that are currently attached to a distribution cannot be deleted. Use the
    #         <code>DetachCertificateFromDistribution</code> action to detach a certificate from a
    #       distribution.</p>
    # @param [Hash, Types::DeleteCertificateRequest] params
    # @option params [String] :certificate_name
    #   <p>The name of the certificate to delete.</p>
    #            <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
    #         can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_name: "CertificateName", # required
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteCertificateResult]
    def delete_certificate(params = {}, options = {})
      request = build_request(:delete_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes a contact method.</p>
    #          <p>A contact method is used to send you notifications about your Amazon Lightsail resources.
    #       You can add one email address and one mobile phone number contact method in each Amazon Web Services Region. However, SMS text messaging is not supported in some Amazon Web Services
    #       Regions, and SMS text messages cannot be sent to some countries/regions. For more information,
    #       see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::DeleteContactMethodRequest] params
    # @option params [String] :protocol
    #   <p>The protocol that will be deleted, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    #            <note>
    #               <p>To delete an <code>Email</code> and an <code>SMS</code> contact method if you added
    #           both, you must run separate <code>DeleteContactMethod</code> actions to delete each
    #           protocol.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocol: "Email" # One of: ["Email", "SMS"], # required
    #   }
    #   options = {}
    #   response = client.delete_contact_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteContactMethodResult]
    def delete_contact_method(params = {}, options = {})
      request = build_request(:delete_contact_method, params)
      request.send_request(options)
    end

    # <p>Deletes a container image that is registered to your Amazon Lightsail container
    #       service.</p>
    # @param [Hash, Types::DeleteContainerImageRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to delete a registered container image.</p>
    # @option params [String] :image
    #   <p>The name of the container image to delete from the container service.</p>
    #            <p>Use the <code>GetContainerImages</code> action to get the name of the container images
    #         that are registered to a container service.</p>
    #            <note>
    #               <p>Container images sourced from your Lightsail container service, that are registered
    #           and stored on your service, start with a colon (<code>:</code>). For example,
    #             <code>:container-service-1.mystaticwebsite.1</code>. Container images sourced from a
    #           public registry like Docker Hub don't start with a colon. For example,
    #             <code>nginx:latest</code> or <code>nginx</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     image: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_container_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerImageResult]
    def delete_container_image(params = {}, options = {})
      request = build_request(:delete_container_image, params)
      request.send_request(options)
    end

    # <p>Deletes your Amazon Lightsail container service.</p>
    # @param [Hash, Types::DeleteContainerServiceRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #   }
    #   options = {}
    #   response = client.delete_container_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerServiceResult]
    def delete_container_service(params = {}, options = {})
      request = build_request(:delete_container_service, params)
      request.send_request(options)
    end

    # <p>Deletes the specified block storage disk. The disk must be in the <code>available</code>
    #       state (not attached to a Lightsail instance).</p>
    #          <note>
    #             <p>The disk may remain in the <code>deleting</code> state for several minutes.</p>
    #          </note>
    #          <p>The <code>delete disk</code> operation supports tag-based access control via resource tags
    #       applied to the resource identified by <code>disk name</code>. For more information, see the
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteDiskRequest] params
    # @option params [String] :disk_name
    #   <p>The unique name of the disk you want to delete (<code>my-disk</code>).</p>
    # @option params [Boolean] :force_delete_add_ons
    #   <p>A Boolean value to indicate whether to delete all add-ons for the disk.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #     force_delete_add_ons: false
    #   }
    #   options = {}
    #   response = client.delete_disk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteDiskResult]
    def delete_disk(params = {}, options = {})
      request = build_request(:delete_disk, params)
      request.send_request(options)
    end

    # <p>Deletes the specified disk snapshot.</p>
    #          <p>When you make periodic snapshots of a disk, the snapshots are incremental, and only the
    #       blocks on the device that have changed since your last snapshot are saved in the new snapshot.
    #       When you delete a snapshot, only the data not needed for any other snapshot is removed. So
    #       regardless of which prior snapshots have been deleted, all active snapshots will have access
    #       to all the information needed to restore the disk.</p>
    #          <p>The <code>delete disk snapshot</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>disk snapshot name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteDiskSnapshotRequest] params
    # @option params [String] :disk_snapshot_name
    #   <p>The name of the disk snapshot you want to delete (<code>my-disk-snapshot</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_disk_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteDiskSnapshotResult]
    def delete_disk_snapshot(params = {}, options = {})
      request = build_request(:delete_disk_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes your Amazon Lightsail content delivery network (CDN) distribution.</p>
    # @param [Hash, Types::DeleteDistributionRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution to delete.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.delete_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::DeleteDistributionResult]
    def delete_distribution(params = {}, options = {})
      request = build_request(:delete_distribution, params)
      request.send_request(options)
    end

    # <p>Deletes the specified domain recordset and all of its domain records.</p>
    #          <p>The <code>delete domain</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>domain name</code>. For more information, see
    #       the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The specific domain name to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::DeleteDomainResult]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Deletes a specific domain entry.</p>
    #          <p>The <code>delete domain entry</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>domain name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteDomainEntryRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain entry to delete.</p>
    # @option params [Types::DomainEntry] :domain_entry
    #   <p>An array of key-value pairs containing information about your domain entries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.delete_domain_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::DeleteDomainEntryResult]
    def delete_domain_entry(params = {}, options = {})
      request = build_request(:delete_domain_entry, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Lightsail instance.</p>
    #          <p>The <code>delete instance</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>instance name</code>. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance to delete.</p>
    # @option params [Boolean] :force_delete_add_ons
    #   <p>A Boolean value to indicate whether to delete all add-ons for the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     force_delete_add_ons: false
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInstanceResult]
    def delete_instance(params = {}, options = {})
      request = build_request(:delete_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a specific snapshot of a virtual private server (or
    #       <i>instance</i>).</p>
    #          <p>The <code>delete instance snapshot</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>instance snapshot name</code>. For
    #       more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteInstanceSnapshotRequest] params
    # @option params [String] :instance_snapshot_name
    #   <p>The name of the snapshot to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInstanceSnapshotResult]
    def delete_instance_snapshot(params = {}, options = {})
      request = build_request(:delete_instance_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes the specified key pair by removing the public key from Amazon Lightsail.</p>
    #          <p>You can delete key pairs that were created using the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_ImportKeyPair.html">ImportKeyPair</a> and
    #         <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateKeyPair.html">CreateKeyPair</a> actions, as well as the Lightsail default key pair. A new default
    #       key pair will not be created unless you launch an instance without specifying a custom key
    #       pair, or you call the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html">DownloadDefaultKeyPair</a> API. </p>
    #          <p>The <code>delete key pair</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>key pair name</code>. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteKeyPairRequest] params
    # @option params [String] :key_pair_name
    #   <p>The name of the key pair to delete.</p>
    # @option params [String] :expected_fingerprint
    #   <p>The RSA fingerprint of the Lightsail default key pair to delete.</p>
    #            <note>
    #               <p>The <code>expectedFingerprint</code> parameter is required only when specifying to
    #           delete a Lightsail default key pair.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_pair_name: "ResourceName", # required
    #     expected_fingerprint: "string"
    #   }
    #   options = {}
    #   response = client.delete_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::DeleteKeyPairResult]
    def delete_key_pair(params = {}, options = {})
      request = build_request(:delete_key_pair, params)
      request.send_request(options)
    end

    # <p>Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or
    #       RDP clients to authenticate an instance. This operation enables the Lightsail browser-based
    #       SSH or RDP clients to connect to the instance after a host key mismatch.</p>
    #          <important>
    #             <p>Perform this operation only if you were expecting the host key or certificate mismatch
    #         or if you are familiar with the new host key or certificate on the instance. For more
    #         information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection">Troubleshooting connection issues when using the Amazon Lightsail browser-based SSH or RDP
    #           client</a>.</p>
    #          </important>
    # @param [Hash, Types::DeleteKnownHostKeysRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance for which you want to reset the host key or certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_known_host_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteKnownHostKeysResult]
    def delete_known_host_keys(params = {}, options = {})
      request = build_request(:delete_known_host_keys, params)
      request.send_request(options)
    end

    # <p>Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the
    #       load balancer is deleted, you will need to create a new load balancer, create a new
    #       certificate, and verify domain ownership again.</p>
    #          <p>The <code>delete load balancer</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>load balancer name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteLoadBalancerRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteLoadBalancerResult]
    def delete_load_balancer(params = {}, options = {})
      request = build_request(:delete_load_balancer, params)
      request.send_request(options)
    end

    # <p>Deletes an SSL/TLS certificate associated with a Lightsail load balancer.</p>
    #          <p>The <code>DeleteLoadBalancerTlsCertificate</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteLoadBalancerTlsCertificateRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The load balancer name.</p>
    # @option params [String] :certificate_name
    #   <p>The SSL/TLS certificate name.</p>
    # @option params [Boolean] :force
    #   <p>When <code>true</code>, forces the deletion of an SSL/TLS certificate.</p>
    #            <p>There can be two certificates associated with a Lightsail load balancer: the primary and
    #         the backup. The <code>force</code> parameter is required when the primary SSL/TLS certificate
    #         is in use by an instance attached to the load balancer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     certificate_name: "ResourceName", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_load_balancer_tls_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteLoadBalancerTlsCertificateResult]
    def delete_load_balancer_tls_certificate(params = {}, options = {})
      request = build_request(:delete_load_balancer_tls_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes a database in Amazon Lightsail.</p>
    #          <p>The <code>delete relational database</code> operation supports tag-based access control
    #       via resource tags applied to the resource identified by relationalDatabaseName. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of the database that you are deleting.</p>
    # @option params [Boolean] :skip_final_snapshot
    #   <p>Determines whether a final database snapshot is created before your database is deleted.
    #         If <code>true</code> is specified, no database snapshot is created. If <code>false</code> is
    #         specified, a database snapshot is created before your database is deleted.</p>
    #            <p>You must specify the <code>final relational database snapshot name</code> parameter if the
    #           <code>skip final snapshot</code> parameter is <code>false</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :final_relational_database_snapshot_name
    #   <p>The name of the database snapshot created if <code>skip final snapshot</code> is
    #           <code>false</code>, which is the default value for that parameter.</p>
    #            <note>
    #               <p>Specifying this parameter and also specifying the <code>skip final snapshot</code>
    #           parameter to <code>true</code> results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     skip_final_snapshot: false,
    #     final_relational_database_snapshot_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.delete_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteRelationalDatabaseResult]
    def delete_relational_database(params = {}, options = {})
      request = build_request(:delete_relational_database, params)
      request.send_request(options)
    end

    # <p>Deletes a database snapshot in Amazon Lightsail.</p>
    #          <p>The <code>delete relational database snapshot</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by relationalDatabaseName. For
    #       more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DeleteRelationalDatabaseSnapshotRequest] params
    # @option params [String] :relational_database_snapshot_name
    #   <p>The name of the database snapshot that you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_relational_database_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteRelationalDatabaseSnapshotResult]
    def delete_relational_database_snapshot(params = {}, options = {})
      request = build_request(:delete_relational_database_snapshot, params)
      request.send_request(options)
    end

    # <p>Detaches an SSL/TLS certificate from your Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>After the certificate is detached, your distribution stops accepting traffic for all of
    #       the domains that are associated with the certificate.</p>
    # @param [Hash, Types::DetachCertificateFromDistributionRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution from which to detach the certificate.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.detach_certificate_from_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::DetachCertificateFromDistributionResult]
    def detach_certificate_from_distribution(params = {}, options = {})
      request = build_request(:detach_certificate_from_distribution, params)
      request.send_request(options)
    end

    # <p>Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount
    #       any file systems on the device within your operating system before stopping the instance and
    #       detaching the disk.</p>
    #          <p>The <code>detach disk</code> operation supports tag-based access control via resource tags
    #       applied to the resource identified by <code>disk name</code>. For more information, see the
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DetachDiskRequest] params
    # @option params [String] :disk_name
    #   <p>The unique name of the disk you want to detach from your instance
    #         (<code>my-disk</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.detach_disk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DetachDiskResult]
    def detach_disk(params = {}, options = {})
      request = build_request(:detach_disk, params)
      request.send_request(options)
    end

    # <p>Detaches the specified instances from a Lightsail load balancer.</p>
    #          <p>This operation waits until the instances are no longer needed before they are detached
    #       from the load balancer.</p>
    #          <p>The <code>detach instances from load balancer</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DetachInstancesFromLoadBalancerRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the Lightsail load balancer.</p>
    # @option params [Array<String>] :instance_names
    #   <p>An array of strings containing the names of the instances you want to detach from the load
    #         balancer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     instance_names: ["ResourceName"], # required
    #   }
    #   options = {}
    #   response = client.detach_instances_from_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DetachInstancesFromLoadBalancerResult]
    def detach_instances_from_load_balancer(params = {}, options = {})
      request = build_request(:detach_instances_from_load_balancer, params)
      request.send_request(options)
    end

    # <p>Detaches a static IP from the Amazon Lightsail instance to which it is attached.</p>
    # @param [Hash, Types::DetachStaticIpRequest] params
    # @option params [String] :static_ip_name
    #   <p>The name of the static IP to detach from the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     static_ip_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.detach_static_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DetachStaticIpResult]
    def detach_static_ip(params = {}, options = {})
      request = build_request(:detach_static_ip, params)
      request.send_request(options)
    end

    # <p>Disables an add-on for an Amazon Lightsail resource. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::DisableAddOnRequest] params
    # @option params [String] :add_on_type
    #   <p>The add-on type to disable.</p>
    # @option params [String] :resource_name
    #   <p>The name of the source resource for which to disable the add-on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.disable_add_on(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::DisableAddOnResult]
    def disable_add_on(params = {}, options = {})
      request = build_request(:disable_add_on, params)
      request.send_request(options)
    end

    # <p>Downloads the regional Amazon Lightsail default key pair.</p>
    #          <p>This action also creates a Lightsail default key pair if a default key pair
    #       does not currently exist in the Amazon Web Services Region.</p>
    # @param [Hash, Types::DownloadDefaultKeyPairRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.download_default_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key_base64: "Base64",
    #     private_key_base64: "Base64",
    #     created_at: Time.now
    #   }
    # @return [Types::DownloadDefaultKeyPairResult]
    def download_default_key_pair(params = {}, options = {})
      request = build_request(:download_default_key_pair, params)
      request.send_request(options)
    end

    # <p>Enables or modifies an add-on for an Amazon Lightsail resource. For more information, see
    #       the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::EnableAddOnRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the source resource for which to enable or modify the add-on.</p>
    # @option params [Types::AddOnRequest] :add_on_request
    #   <p>An array of strings representing the add-on to enable or modify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     add_on_request: { # required
    #       add_on_type: "AutoSnapshot" # One of: ["AutoSnapshot", "StopInstanceOnIdle"], # required
    #       auto_snapshot_add_on_request: {
    #         snapshot_time_of_day: "TimeOfDay"
    #       },
    #       stop_instance_on_idle_request: {
    #         threshold: "string",
    #         duration: "string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.enable_add_on(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::EnableAddOnResult]
    def enable_add_on(params = {}, options = {})
      request = build_request(:enable_add_on, params)
      request.send_request(options)
    end

    # <p>Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2).
    #       This operation results in an export snapshot record that can be used with the <code>create
    #         cloud formation stack</code> operation to create new Amazon EC2 instances.</p>
    #          <p>Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images (AMIs), and the
    #       instance system disk appears as an Amazon Elastic Block Store (Amazon EBS) volume. Exported disk snapshots appear in
    #       Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services Region in
    #       Amazon EC2 as the source Lightsail snapshot.</p>
    #          <p></p>
    #          <p>The <code>export snapshot</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>source snapshot name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    #          <note>
    #             <p>Use the <code>get instance snapshots</code> or <code>get disk snapshots</code>
    #         operations to get a list of snapshots that you can export to Amazon EC2.</p>
    #          </note>
    # @param [Hash, Types::ExportSnapshotRequest] params
    # @option params [String] :source_snapshot_name
    #   <p>The name of the instance or disk snapshot to be exported to Amazon EC2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.export_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ExportSnapshotResult]
    def export_snapshot(params = {}, options = {})
      request = build_request(:export_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns the names of all active (not deleted) resources.</p>
    # @param [Hash, Types::GetActiveNamesRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetActiveNames</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_active_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     active_names: ["string"],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetActiveNamesResult]
    def get_active_names(params = {}, options = {})
      request = build_request(:get_active_names, params)
      request.send_request(options)
    end

    # <p>Returns information about the configured alarms. Specify an alarm name in your request to
    #       return information about a specific alarm, or specify a monitored resource name to return
    #       information about all alarms for a specific resource.</p>
    #          <p>An alarm is used to monitor a single metric for one of your resources. When a metric
    #       condition is met, the alarm can notify you by email, SMS text message, and a banner displayed
    #       on the Amazon Lightsail console. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms
    #         in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::GetAlarmsRequest] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm.</p>
    #            <p>Specify an alarm name to return information about a specific alarm.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetAlarms</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @option params [String] :monitored_resource_name
    #   <p>The name of the Lightsail resource being monitored by the alarm.</p>
    #            <p>Specify a monitored resource name to return information about all alarms for a specific
    #         resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "ResourceName",
    #     page_token: "string",
    #     monitored_resource_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.get_alarms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarms: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         support_code: "string",
    #         monitored_resource_info: {
    #           arn: "ResourceArn",
    #           name: "ResourceName",
    #           resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"]
    #         },
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"],
    #         evaluation_periods: 1,
    #         period: 1,
    #         threshold: 1.0,
    #         datapoints_to_alarm: 1,
    #         treat_missing_data: "breaching" # One of: ["breaching", "notBreaching", "ignore", "missing"],
    #         statistic: "Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"],
    #         metric_name: "CPUUtilization" # One of: ["CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "BurstCapacityTime", "BurstCapacityPercentage"],
    #         state: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #         contact_protocols: ["Email" # One of: ["Email", "SMS"]],
    #         notification_triggers: ["OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"]],
    #         notification_enabled: false
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetAlarmsResult]
    def get_alarms(params = {}, options = {})
      request = build_request(:get_alarms, params)
      request.send_request(options)
    end

    # <p>Returns the available automatic snapshots for an instance or disk. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::GetAutoSnapshotsRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the source instance or disk from which to get automatic snapshot
    #         information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_auto_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_name: "ResourceName",
    #     resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #     auto_snapshots: [
    #       {
    #         date: "string",
    #         created_at: Time.now,
    #         status: "Success" # One of: ["Success", "Failed", "InProgress", "NotFound"],
    #         from_attached_disks: [
    #           {
    #             path: "string",
    #             size_in_gb: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetAutoSnapshotsResult]
    def get_auto_snapshots(params = {}, options = {})
      request = build_request(:get_auto_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns the list of available instance images, or <i>blueprints</i>. You can
    #       use a blueprint to create a new instance already running a specific operating system, as well
    #       as a preinstalled app or development stack. The software each instance is running depends on
    #       the blueprint image you choose.</p>
    #          <note>
    #             <p>Use active blueprints when creating new instances. Inactive blueprints are listed to
    #         support customers with existing instances and are not necessarily available to create new
    #         instances. Blueprints are marked inactive when they become outdated due to operating system
    #         updates or new application releases.</p>
    #          </note>
    # @param [Hash, Types::GetBlueprintsRequest] params
    # @option params [Boolean] :include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) blueprints in the
    #         response of your request.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBlueprints</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @option params [String] :app_category
    #   <p>Returns a list of blueprints that are specific to Lightsail for Research.</p>
    #            <important>
    #               <p>You must use this parameter to view Lightsail for Research blueprints.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_inactive: false,
    #     page_token: "string",
    #     app_category: "LfR" # One of: ["LfR"]
    #   }
    #   options = {}
    #   response = client.get_blueprints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprints: [
    #       {
    #         blueprint_id: "NonEmptyString",
    #         name: "ResourceName",
    #         group: "NonEmptyString",
    #         type: "os" # One of: ["os", "app"],
    #         description: "string",
    #         is_active: false,
    #         min_power: 1,
    #         version: "string",
    #         version_code: "string",
    #         product_url: "string",
    #         license_url: "string",
    #         platform: "LINUX_UNIX" # One of: ["LINUX_UNIX", "WINDOWS"],
    #         app_category: "LfR" # One of: ["LfR"]
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetBlueprintsResult]
    def get_blueprints(params = {}, options = {})
      request = build_request(:get_blueprints, params)
      request.send_request(options)
    end

    # <p>Returns the existing access key IDs for the specified Amazon Lightsail bucket.</p>
    #          <important>
    #             <p>This action does not return the secret access key value of an access key. You can get a
    #         secret access key only when you create it from the response of the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html">CreateBucketAccessKey</a> action. If you lose the secret access key, you must create
    #         a new access key.</p>
    #          </important>
    # @param [Hash, Types::GetBucketAccessKeysRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket for which to return access keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_access_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_keys: [
    #       {
    #         access_key_id: "IAMAccessKeyId",
    #         secret_access_key: "NonEmptyString",
    #         status: "Active" # One of: ["Active", "Inactive"],
    #         created_at: Time.now,
    #         last_used: {
    #           last_used_date: Time.now,
    #           region: "string",
    #           service_name: "string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketAccessKeysResult]
    def get_bucket_access_keys(params = {}, options = {})
      request = build_request(:get_bucket_access_keys, params)
      request.send_request(options)
    end

    # <p>Returns the bundles that you can apply to a Amazon Lightsail bucket.</p>
    #          <p>The bucket bundle specifies the monthly cost, storage quota, and data transfer quota for a
    #       bucket.</p>
    #          <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html">UpdateBucketBundle</a> action to update the
    #       bundle for a bucket.</p>
    # @param [Hash, Types::GetBucketBundlesRequest] params
    # @option params [Boolean] :include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_inactive: false
    #   }
    #   options = {}
    #   response = client.get_bucket_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [
    #       {
    #         bundle_id: "NonEmptyString",
    #         name: "NonEmptyString",
    #         price: 1.0,
    #         storage_per_month_in_gb: 1,
    #         transfer_per_month_in_gb: 1,
    #         is_active: false
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketBundlesResult]
    def get_bucket_bundles(params = {}, options = {})
      request = build_request(:get_bucket_bundles, params)
      request.send_request(options)
    end

    # <p>Returns the data points of a specific metric for an Amazon Lightsail bucket.</p>
    #          <p>Metrics report the utilization of a bucket. View and collect metric data regularly to
    #       monitor the number of objects stored in a bucket (including object versions) and the storage
    #       space used by those objects.</p>
    # @param [Hash, Types::GetBucketMetricDataRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket for which to get metric data.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid bucket metric names are listed below, along with the most useful statistics to
    #         include in your request, and the published unit value.</p>
    #            <note>
    #               <p>These bucket metrics are reported once per day.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BucketSizeBytes</code>
    #                     </b> - The amount of data in
    #             bytes stored in a bucket. This value is calculated by summing the size of all objects in
    #             the bucket (including object versions), including the size of all parts for all incomplete
    #             multipart uploads to the bucket.</p>
    #                  <p>Statistics: The most useful statistic is <code>Maximum</code>.</p>
    #                  <p>Unit: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NumberOfObjects</code>
    #                     </b> - The total number of
    #             objects stored in a bucket. This value is calculated by counting all objects in the bucket
    #             (including object versions) and the total number of parts for all incomplete multipart
    #             uploads to the bucket.</p>
    #                  <p>Statistics: The most useful statistic is <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :start_time
    #   <p>The timestamp indicating the earliest data to be returned.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp indicating the latest data to be returned.</p>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <note>
    #               <p>Bucket storage metrics are reported once per day. Therefore, you should specify a period
    #           of 86400 seconds, which is the number of seconds in a day.</p>
    #            </note>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - The sum of all values submitted for the matching metric. You can
    #             use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of <code>Sum</code> / <code>SampleCount</code> during
    #             the specified period. By comparing this statistic with the <code>Minimum</code> and
    #               <code>Maximum</code> values, you can determine the full scope of a metric and how close
    #             the average use is to the <code>Minimum</code> and <code>Maximum</code> values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @option params [String] :unit
    #   <p>The unit for the metric data request.</p>
    #            <p>Valid units depend on the metric data being requested. For the valid units with each
    #         available metric, see the <code>metricName</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     metric_name: "BucketSizeBytes" # One of: ["BucketSizeBytes", "NumberOfObjects"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #   }
    #   options = {}
    #   response = client.get_bucket_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "BucketSizeBytes" # One of: ["BucketSizeBytes", "NumberOfObjects"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketMetricDataResult]
    def get_bucket_metric_data(params = {}, options = {})
      request = build_request(:get_bucket_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more Amazon Lightsail buckets. The information returned
    #       includes the synchronization status of the Amazon Simple Storage Service (Amazon S3)
    #       account-level block public access feature for your Lightsail buckets.</p>
    #          <p>For more information about buckets, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail">Buckets in Amazon Lightsail</a> in the <i>Amazon Lightsail Developer
    #         Guide</i>.</p>
    # @param [Hash, Types::GetBucketsRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket for which to return information.</p>
    #            <p>When omitted, the response includes all of your buckets in the Amazon Web Services Region
    #         where the request is made.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBuckets</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @option params [Boolean] :include_connected_resources
    #   <p>A Boolean value that indicates whether to include Lightsail instances that were given
    #         access to the bucket using the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html">SetResourceAccessForBucket</a>
    #         action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName",
    #     page_token: "string",
    #     include_connected_resources: false
    #   }
    #   options = {}
    #   response = client.get_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     buckets: [
    #       {
    #         resource_type: "NonEmptyString",
    #         access_rules: {
    #           get_object: "public" # One of: ["public", "private"],
    #           allow_public_overrides: false
    #         },
    #         arn: "NonEmptyString",
    #         bundle_id: "NonEmptyString",
    #         created_at: Time.now,
    #         url: "NonEmptyString",
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         name: "BucketName",
    #         support_code: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         object_versioning: "NonEmptyString",
    #         able_to_update_bundle: false,
    #         readonly_access_accounts: ["NonEmptyString"],
    #         resources_receiving_access: [
    #           {
    #             name: "NonEmptyString",
    #             resource_type: "NonEmptyString"
    #           }
    #         ],
    #         state: {
    #           code: "NonEmptyString",
    #           message: "string"
    #         },
    #         access_log_config: {
    #           enabled: false, # required
    #           destination: "BucketName",
    #           prefix: "BucketAccessLogPrefix"
    #         }
    #       }
    #     ],
    #     next_page_token: "string",
    #     account_level_bpa_sync: {
    #       status: "InSync" # One of: ["InSync", "Failed", "NeverSynced", "Defaulted"],
    #       last_synced_at: Time.now,
    #       message: "DEFAULTED_FOR_SLR_MISSING" # One of: ["DEFAULTED_FOR_SLR_MISSING", "SYNC_ON_HOLD", "DEFAULTED_FOR_SLR_MISSING_ON_HOLD", "Unknown"],
    #       bpa_impacts_lightsail: false
    #     }
    #   }
    # @return [Types::GetBucketsResult]
    def get_buckets(params = {}, options = {})
      request = build_request(:get_buckets, params)
      request.send_request(options)
    end

    # <p>Returns the bundles that you can apply to an Amazon Lightsail instance when you create
    #       it.</p>
    #          <p>A bundle describes the specifications of an instance, such as the monthly cost, amount of
    #       memory, the number of vCPUs, amount of storage space, and monthly network data transfer
    #       quota.</p>
    #          <note>
    #             <p>Bundles are referred to as <i>instance plans</i> in the Lightsail
    #         console.</p>
    #          </note>
    # @param [Hash, Types::GetBundlesRequest] params
    # @option params [Boolean] :include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBundles</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @option params [String] :app_category
    #   <p>Returns a list of bundles that are specific to Lightsail for Research.</p>
    #            <important>
    #               <p>You must use this parameter to view Lightsail for Research bundles.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_inactive: false,
    #     page_token: "string",
    #     app_category: "LfR" # One of: ["LfR"]
    #   }
    #   options = {}
    #   response = client.get_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [
    #       {
    #         price: 1.0,
    #         cpu_count: 1,
    #         disk_size_in_gb: 1,
    #         bundle_id: "NonEmptyString",
    #         instance_type: "string",
    #         is_active: false,
    #         name: "string",
    #         power: 1,
    #         ram_size_in_gb: 1.0,
    #         transfer_per_month_in_gb: 1,
    #         supported_platforms: ["LINUX_UNIX" # One of: ["LINUX_UNIX", "WINDOWS"]],
    #         supported_app_categories: ["LfR" # One of: ["LfR"]],
    #         public_ipv4_address_count: 1
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetBundlesResult]
    def get_bundles(params = {}, options = {})
      request = build_request(:get_bundles, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more Amazon Lightsail SSL/TLS certificates.</p>
    #          <note>
    #             <p>To get a summary of a certificate, omit <code>includeCertificateDetails</code> from your
    #         request. The response will include only the certificate Amazon Resource Name (ARN),
    #         certificate name, domain name, and tags.</p>
    #          </note>
    # @param [Hash, Types::GetCertificatesRequest] params
    # @option params [Array<String>] :certificate_statuses
    #   <p>The status of the certificates for which to return information.</p>
    #            <p>For example, specify <code>ISSUED</code> to return only certificates with an
    #           <code>ISSUED</code> status.</p>
    #            <p>When omitted, the response includes all of your certificates in the Amazon Web Services
    #         Region where the request is made, regardless of their current status.</p>
    # @option params [Boolean] :include_certificate_details
    #   <p>Indicates whether to include detailed information about the certificates in the
    #         response.</p>
    #            <p>When omitted, the response includes only the certificate names, Amazon Resource Names
    #         (ARNs), domain names, and tags.</p>
    # @option params [String] :certificate_name
    #   <p>The name for the certificate for which to return information.</p>
    #            <p>When omitted, the response includes all of your certificates in the Amazon Web Services
    #         Region where the request is made.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetCertificates</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_statuses: ["PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]],
    #     include_certificate_details: false,
    #     certificate_name: "CertificateName",
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "NonEmptyString",
    #         certificate_name: "CertificateName",
    #         domain_name: "DomainName",
    #         certificate_detail: {
    #           arn: "NonEmptyString",
    #           name: "CertificateName",
    #           domain_name: "DomainName",
    #           status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"],
    #           serial_number: "SerialNumber",
    #           subject_alternative_names: ["DomainName"],
    #           domain_validation_records: [
    #             {
    #               domain_name: "DomainName",
    #               resource_record: {
    #                 name: "string",
    #                 type: "string",
    #                 value: "string"
    #               },
    #               dns_record_creation_state: {
    #                 code: "SUCCEEDED" # One of: ["SUCCEEDED", "STARTED", "FAILED"],
    #                 message: "string"
    #               },
    #               validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"]
    #             }
    #           ],
    #           request_failure_reason: "RequestFailureReason",
    #           in_use_resource_count: 1,
    #           key_algorithm: "KeyAlgorithm",
    #           created_at: Time.now,
    #           issued_at: Time.now,
    #           issuer_ca: "IssuerCA",
    #           not_before: Time.now,
    #           not_after: Time.now,
    #           eligible_to_renew: "EligibleToRenew",
    #           renewal_summary: {
    #             domain_validation_records: [
    #               {
    #                 domain_name: "DomainName",
    #                 resource_record: {
    #                   name: "string",
    #                   type: "string",
    #                   value: "string"
    #                 },
    #                 dns_record_creation_state: {
    #                   code: "SUCCEEDED" # One of: ["SUCCEEDED", "STARTED", "FAILED"],
    #                   message: "string"
    #                 },
    #                 validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"]
    #               }
    #             ],
    #             renewal_status: "PendingAutoRenewal" # One of: ["PendingAutoRenewal", "PendingValidation", "Success", "Failed"],
    #             renewal_status_reason: "RenewalStatusReason",
    #             updated_at: Time.now
    #           },
    #           revoked_at: Time.now,
    #           revocation_reason: "RevocationReason",
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           support_code: "string"
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetCertificatesResult]
    def get_certificates(params = {}, options = {})
      request = build_request(:get_certificates, params)
      request.send_request(options)
    end

    # <p>Returns the CloudFormation stack record created as a result of the <code>create cloud
    #         formation stack</code> operation.</p>
    #          <p>An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail
    #       snapshot.</p>
    # @param [Hash, Types::GetCloudFormationStackRecordsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetClouFormationStackRecords</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_cloud_formation_stack_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_formation_stack_records: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         state: "Started" # One of: ["Started", "Succeeded", "Failed"],
    #         source_info: [
    #           {
    #             resource_type: "ExportSnapshotRecord" # One of: ["ExportSnapshotRecord"],
    #             name: "NonEmptyString",
    #             arn: "NonEmptyString"
    #           }
    #         ],
    #         destination_info: {
    #           id: "NonEmptyString",
    #           service: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetCloudFormationStackRecordsResult]
    def get_cloud_formation_stack_records(params = {}, options = {})
      request = build_request(:get_cloud_formation_stack_records, params)
      request.send_request(options)
    end

    # <p>Returns information about the configured contact methods. Specify a protocol in your
    #       request to return information about a specific contact method.</p>
    #          <p>A contact method is used to send you notifications about your Amazon Lightsail resources.
    #       You can add one email address and one mobile phone number contact method in each Amazon Web Services Region. However, SMS text messaging is not supported in some Amazon Web Services
    #       Regions, and SMS text messages cannot be sent to some countries/regions. For more information,
    #       see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::GetContactMethodsRequest] params
    # @option params [Array<String>] :protocols
    #   <p>The protocols used to send notifications, such as <code>Email</code>, or <code>SMS</code>
    #         (text messaging).</p>
    #            <p>Specify a protocol in your request to return information about a specific contact method
    #         protocol.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocols: ["Email" # One of: ["Email", "SMS"]]
    #   }
    #   options = {}
    #   response = client.get_contact_methods(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_methods: [
    #       {
    #         contact_endpoint: "NonEmptyString",
    #         status: "PendingVerification" # One of: ["PendingVerification", "Valid", "Invalid"],
    #         protocol: "Email" # One of: ["Email", "SMS"],
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         support_code: "string"
    #       }
    #     ]
    #   }
    # @return [Types::GetContactMethodsResult]
    def get_contact_methods(params = {}, options = {})
      request = build_request(:get_contact_methods, params)
      request.send_request(options)
    end

    # <p>Returns information about Amazon Lightsail containers, such as the current version of the
    #       Lightsail Control (lightsailctl) plugin.</p>
    # @param [Hash, Types::GetContainerAPIMetadataRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_container_api_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: [
    #       {
    #         "string" => "string"
    #       }
    #     ]
    #   }
    # @return [Types::GetContainerAPIMetadataResult]
    def get_container_api_metadata(params = {}, options = {})
      request = build_request(:get_container_api_metadata, params)
      request.send_request(options)
    end

    # <p>Returns the container images that are registered to your Amazon Lightsail container
    #       service.</p>
    #          <note>
    #             <p>If you created a deployment on your Lightsail container service that uses container
    #         images from a public registry like Docker Hub, those images are not returned as part of this
    #         action. Those images are not registered to your Lightsail container service.</p>
    #          </note>
    # @param [Hash, Types::GetContainerImagesRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to return registered container images.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #   }
    #   options = {}
    #   response = client.get_container_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_images: [
    #       {
    #         image: "string",
    #         digest: "string",
    #         created_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetContainerImagesResult]
    def get_container_images(params = {}, options = {})
      request = build_request(:get_container_images, params)
      request.send_request(options)
    end

    # <p>Returns the log events of a container of your Amazon Lightsail container service.</p>
    #          <p>If your container service has more than one node (i.e., a scale greater than 1), then the
    #       log events that are returned for the specified container are merged from all nodes on your
    #       container service.</p>
    #          <note>
    #             <p>Container logs are retained for a certain amount of time. For more information, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/lightsail.html">Amazon Lightsail
    #           endpoints and quotas</a> in the <i>Amazon Web Services General
    #           Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::GetContainerLogRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to get a container log.</p>
    # @option params [String] :container_name
    #   <p>The name of the container that is either running or previously ran on the container
    #         service for which to return a log.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time interval for which to get log data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to get log data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @option params [String] :filter_pattern
    #   <p>The pattern to use to filter the returned log events to a specific term.</p>
    #            <p>The following are a few examples of filter patterns that you can specify:</p>
    #            <ul>
    #               <li>
    #                  <p>To return all log events, specify a filter pattern of <code>""</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To exclude log events that contain the <code>ERROR</code> term, and return all other
    #             log events, specify a filter pattern of <code>"-ERROR"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain the <code>ERROR</code> term, specify a filter
    #             pattern of <code>"ERROR"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain both the <code>ERROR</code> and
    #               <code>Exception</code> terms, specify a filter pattern of <code>"ERROR
    #             Exception"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain the <code>ERROR</code>
    #                     <i>or</i> the <code>Exception</code> term, specify a filter pattern of
    #               <code>"?ERROR ?Exception"</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetContainerLog</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     container_name: "string", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     filter_pattern: "string",
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_container_log(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_events: [
    #       {
    #         created_at: Time.now,
    #         message: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetContainerLogResult]
    def get_container_log(params = {}, options = {})
      request = build_request(:get_container_log, params)
      request.send_request(options)
    end

    # <p>Returns the deployments for your Amazon Lightsail container service</p>
    #          <p>A deployment specifies the settings, such as the ports and launch command, of containers
    #       that are deployed to your container service.</p>
    #          <p>The deployments are ordered by version in ascending order. The newest version is listed at
    #       the top of the response.</p>
    #          <note>
    #             <p>A set number of deployments are kept before the oldest one is replaced with the newest
    #         one. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/lightsail.html">Amazon Lightsail
    #           endpoints and quotas</a> in the <i>Amazon Web Services General
    #           Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::GetContainerServiceDeploymentsRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to return deployments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #   }
    #   options = {}
    #   response = client.get_container_service_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetContainerServiceDeploymentsResult]
    def get_container_service_deployments(params = {}, options = {})
      request = build_request(:get_container_service_deployments, params)
      request.send_request(options)
    end

    # <p>Returns the data points of a specific metric of your Amazon Lightsail container
    #       service.</p>
    #          <p>Metrics report the utilization of your resources. Monitor and collect metric data
    #       regularly to maintain the reliability, availability, and performance of your resources.</p>
    # @param [Hash, Types::GetContainerServiceMetricDataRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to get metric data.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid container service metric names are listed below, along with the most useful
    #         statistics to include in your request, and the published unit value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CPUUtilization</code> - The average percentage of compute units that are
    #             currently in use across all nodes of the container service. This metric identifies the
    #             processing power required to run containers on each node of the container service.</p>
    #                  <p>Statistics: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MemoryUtilization</code> - The average percentage of available memory that is
    #             currently in use across all nodes of the container service. This metric identifies the
    #             memory required to run containers on each node of the container service.</p>
    #                  <p>Statistics: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Percent</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :start_time
    #   <p>The start time of the time period.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the time period.</p>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>All container service metric data is available in 5-minute (300 seconds)
    #         granularity.</p>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of <code>Sum</code> / <code>SampleCount</code> during
    #             the specified period. By comparing this statistic with the <code>Minimum</code> and
    #               <code>Maximum</code> values, you can determine the full scope of a metric and how close
    #             the average use is to the <code>Minimum</code> and <code>Maximum</code> values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "MemoryUtilization"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #   }
    #   options = {}
    #   response = client.get_container_service_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "MemoryUtilization"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetContainerServiceMetricDataResult]
    def get_container_service_metric_data(params = {}, options = {})
      request = build_request(:get_container_service_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns the list of powers that can be specified for your Amazon Lightsail container
    #       services.</p>
    #          <p>The power specifies the amount of memory, the number of vCPUs, and the base price of the
    #       container service.</p>
    # @param [Hash, Types::GetContainerServicePowersRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_container_service_powers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     powers: [
    #       {
    #         power_id: "string",
    #         price: 1.0,
    #         cpu_count: 1.0,
    #         ram_size_in_gb: 1.0,
    #         name: "string",
    #         is_active: false
    #       }
    #     ]
    #   }
    # @return [Types::GetContainerServicePowersResult]
    def get_container_service_powers(params = {}, options = {})
      request = build_request(:get_container_service_powers, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more of your Amazon Lightsail container services.</p>
    # @param [Hash, Types::GetContainerServicesRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to return information.</p>
    #            <p>When omitted, the response includes all of your container services in the Amazon Web Services Region where the request is made.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName"
    #   }
    #   options = {}
    #   response = client.get_container_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_services: [
    #       {
    #         container_service_name: "ContainerServiceName",
    #         arn: "NonEmptyString",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"],
    #         power_id: "string",
    #         state: "PENDING" # One of: ["PENDING", "READY", "RUNNING", "UPDATING", "DELETING", "DISABLED", "DEPLOYING"],
    #         state_detail: {
    #           code: "CREATING_SYSTEM_RESOURCES" # One of: ["CREATING_SYSTEM_RESOURCES", "CREATING_NETWORK_INFRASTRUCTURE", "PROVISIONING_CERTIFICATE", "PROVISIONING_SERVICE", "CREATING_DEPLOYMENT", "EVALUATING_HEALTH_CHECK", "ACTIVATING_DEPLOYMENT", "CERTIFICATE_LIMIT_EXCEEDED", "UNKNOWN_ERROR"],
    #           message: "string"
    #         },
    #         scale: 1,
    #         current_deployment: {
    #           version: 1,
    #           state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #           containers: {
    #             "ContainerName" => {
    #               image: "string",
    #               command: ["string"],
    #               environment: {
    #                 "string" => "string"
    #               },
    #               ports: {
    #                 "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #               }
    #             }
    #           },
    #           public_endpoint: {
    #             container_name: "string",
    #             container_port: 1,
    #             health_check: {
    #               healthy_threshold: 1,
    #               unhealthy_threshold: 1,
    #               timeout_seconds: 1,
    #               interval_seconds: 1,
    #               path: "string",
    #               success_codes: "string"
    #             }
    #           },
    #           created_at: Time.now
    #         },
    #         next_deployment: {
    #           version: 1,
    #           state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #           containers: {
    #             "ContainerName" => {
    #               image: "string",
    #               command: ["string"],
    #               environment: {
    #                 "string" => "string"
    #               },
    #               ports: {
    #                 "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #               }
    #             }
    #           },
    #           public_endpoint: {
    #             container_name: "string",
    #             container_port: 1,
    #             health_check: {
    #               healthy_threshold: 1,
    #               unhealthy_threshold: 1,
    #               timeout_seconds: 1,
    #               interval_seconds: 1,
    #               path: "string",
    #               success_codes: "string"
    #             }
    #           },
    #           created_at: Time.now
    #         },
    #         is_disabled: false,
    #         principal_arn: "string",
    #         private_domain_name: "string",
    #         public_domain_names: {
    #           "string" => ["string"]
    #         },
    #         url: "string",
    #         private_registry_access: {
    #           ecr_image_puller_role: {
    #             is_active: false,
    #             principal_arn: "string"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ContainerServicesListResult]
    def get_container_services(params = {}, options = {})
      request = build_request(:get_container_services, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the cost estimate for a specified resource. A cost estimate
    #       will not generate for a resource that has been deleted.</p>
    # @param [Hash, Types::GetCostEstimateRequest] params
    # @option params [String] :resource_name
    #   <p>The resource name.</p>
    # @option params [Time] :start_time
    #   <p>The cost estimate start time.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you want to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @option params [Time] :end_time
    #   <p>The cost estimate end time.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you want to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_cost_estimate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources_budget_estimate: [
    #       {
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         cost_estimates: [
    #           {
    #             usage_type: "NonEmptyString",
    #             results_by_time: [
    #               {
    #                 usage_cost: 1.0,
    #                 pricing_unit: "GB" # One of: ["GB", "Hrs", "GB-Mo", "Bundles", "Queries"],
    #                 unit: 1.0,
    #                 currency: "USD" # One of: ["USD"],
    #                 time_period: {
    #                   start: Time.now,
    #                   end: Time.now
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetCostEstimateResult]
    def get_cost_estimate(params = {}, options = {})
      request = build_request(:get_cost_estimate, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific block storage disk.</p>
    # @param [Hash, Types::GetDiskRequest] params
    # @option params [String] :disk_name
    #   <p>The name of the disk (<code>my-disk</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_disk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disk: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       add_ons: [
    #         {
    #           name: "string",
    #           status: "string",
    #           snapshot_time_of_day: "TimeOfDay",
    #           next_snapshot_time_of_day: "TimeOfDay",
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       ],
    #       size_in_gb: 1,
    #       is_system_disk: false,
    #       iops: 1,
    #       path: "string",
    #       state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #       attached_to: "ResourceName",
    #       is_attached: false,
    #       attachment_state: "string",
    #       gb_in_use: 1,
    #       auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #     }
    #   }
    # @return [Types::GetDiskResult]
    def get_disk(params = {}, options = {})
      request = build_request(:get_disk, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific block storage disk snapshot.</p>
    # @param [Hash, Types::GetDiskSnapshotRequest] params
    # @option params [String] :disk_snapshot_name
    #   <p>The name of the disk snapshot (<code>my-disk-snapshot</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disk_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_disk_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disk_snapshot: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       size_in_gb: 1,
    #       state: "pending" # One of: ["pending", "completed", "error", "unknown"],
    #       progress: "string",
    #       from_disk_name: "ResourceName",
    #       from_disk_arn: "NonEmptyString",
    #       from_instance_name: "ResourceName",
    #       from_instance_arn: "NonEmptyString",
    #       is_from_auto_snapshot: false
    #     }
    #   }
    # @return [Types::GetDiskSnapshotResult]
    def get_disk_snapshot(params = {}, options = {})
      request = build_request(:get_disk_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns information about all block storage disk snapshots in your AWS account and
    #       region.</p>
    # @param [Hash, Types::GetDiskSnapshotsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDiskSnapshots</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_disk_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disk_snapshots: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         size_in_gb: 1,
    #         state: "pending" # One of: ["pending", "completed", "error", "unknown"],
    #         progress: "string",
    #         from_disk_name: "ResourceName",
    #         from_disk_arn: "NonEmptyString",
    #         from_instance_name: "ResourceName",
    #         from_instance_arn: "NonEmptyString",
    #         is_from_auto_snapshot: false
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetDiskSnapshotsResult]
    def get_disk_snapshots(params = {}, options = {})
      request = build_request(:get_disk_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about all block storage disks in your AWS account and region.</p>
    # @param [Hash, Types::GetDisksRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDisks</code> request. If your results are
    #         paginated, the response will return a next page token that you can specify as the page token
    #         in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_disks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disks: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         add_ons: [
    #           {
    #             name: "string",
    #             status: "string",
    #             snapshot_time_of_day: "TimeOfDay",
    #             next_snapshot_time_of_day: "TimeOfDay",
    #             threshold: "string",
    #             duration: "string"
    #           }
    #         ],
    #         size_in_gb: 1,
    #         is_system_disk: false,
    #         iops: 1,
    #         path: "string",
    #         state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #         attached_to: "ResourceName",
    #         is_attached: false,
    #         attachment_state: "string",
    #         gb_in_use: 1,
    #         auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetDisksResult]
    def get_disks(params = {}, options = {})
      request = build_request(:get_disks, params)
      request.send_request(options)
    end

    # <p>Returns the bundles that can be applied to your Amazon Lightsail content delivery network
    #       (CDN) distributions.</p>
    #          <p>A distribution bundle specifies the monthly network transfer quota and monthly cost of
    #       your distribution.</p>
    # @param [Hash, Types::GetDistributionBundlesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_distribution_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [
    #       {
    #         bundle_id: "string",
    #         name: "string",
    #         price: 1.0,
    #         transfer_per_month_in_gb: 1,
    #         is_active: false
    #       }
    #     ]
    #   }
    # @return [Types::GetDistributionBundlesResult]
    def get_distribution_bundles(params = {}, options = {})
      request = build_request(:get_distribution_bundles, params)
      request.send_request(options)
    end

    # <p>Returns the timestamp and status of the last cache reset of a specific Amazon Lightsail
    #       content delivery network (CDN) distribution.</p>
    # @param [Hash, Types::GetDistributionLatestCacheResetRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution for which to return the timestamp of the last cache
    #         reset.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #            <p>When omitted, the response includes the latest cache reset timestamp of all your
    #         distributions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.get_distribution_latest_cache_reset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "string",
    #     create_time: Time.now
    #   }
    # @return [Types::GetDistributionLatestCacheResetResult]
    def get_distribution_latest_cache_reset(params = {}, options = {})
      request = build_request(:get_distribution_latest_cache_reset, params)
      request.send_request(options)
    end

    # <p>Returns the data points of a specific metric for an Amazon Lightsail content delivery
    #       network (CDN) distribution.</p>
    #          <p>Metrics report the utilization of your resources, and the error counts generated by them.
    #       Monitor and collect metric data regularly to maintain the reliability, availability, and
    #       performance of your resources.</p>
    # @param [Hash, Types::GetDistributionMetricDataRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution for which to get metric data.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid distribution metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Requests</code>
    #                     </b> - The total number of viewer
    #             requests received by your Lightsail distribution, for all HTTP methods, and for both
    #             HTTP and HTTPS requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BytesDownloaded</code>
    #                     </b> - The number of bytes
    #             downloaded by viewers for GET, HEAD, and OPTIONS requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BytesUploaded </code>
    #                     </b> - The number of bytes
    #             uploaded to your origin by your Lightsail distribution, using POST and PUT
    #             requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TotalErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status code was 4xx or 5xx.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>4xxErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status cod was 4xx. In these cases, the
    #             client or client viewer may have made an error. For example, a status code of 404 (Not
    #             Found) means that the client requested an object that could not be found.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>5xxErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status code was 5xx. In these cases, the
    #             origin server did not satisfy the requests. For example, a status code of 503 (Service
    #             Unavailable) means that the origin server is currently unavailable.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :start_time
    #   <p>The start of the time interval for which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, for the metric data points that will be returned.</p>
    # @option params [String] :unit
    #   <p>The unit for the metric data request.</p>
    #            <p>Valid units depend on the metric data being requested. For the valid units with each
    #         available metric, see the <code>metricName</code> parameter.</p>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName", # required
    #     metric_name: "Requests" # One of: ["Requests", "BytesDownloaded", "BytesUploaded", "TotalErrorRate", "Http4xxErrorRate", "Http5xxErrorRate"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #   }
    #   options = {}
    #   response = client.get_distribution_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "Requests" # One of: ["Requests", "BytesDownloaded", "BytesUploaded", "TotalErrorRate", "Http4xxErrorRate", "Http5xxErrorRate"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetDistributionMetricDataResult]
    def get_distribution_metric_data(params = {}, options = {})
      request = build_request(:get_distribution_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns information about one or more of your Amazon Lightsail content delivery network
    #       (CDN) distributions.</p>
    # @param [Hash, Types::GetDistributionsRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution for which to return information.</p>
    #            <p>When omitted, the response includes all of your distributions in the Amazon Web Services
    #         Region where the request is made.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDistributions</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName",
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_distributions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     distributions: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         alternative_domain_names: ["string"],
    #         status: "string",
    #         is_enabled: false,
    #         domain_name: "string",
    #         bundle_id: "string",
    #         certificate_name: "ResourceName",
    #         origin: {
    #           name: "ResourceName",
    #           resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"],
    #           protocol_policy: "http-only" # One of: ["http-only", "https-only"],
    #           response_timeout: 1
    #         },
    #         origin_public_dns: "string",
    #         default_cache_behavior: {
    #           behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #         },
    #         cache_behavior_settings: {
    #           default_ttl: 1,
    #           minimum_ttl: 1,
    #           maximum_ttl: 1,
    #           allowed_http_methods: "NonEmptyString",
    #           cached_http_methods: "NonEmptyString",
    #           forwarded_cookies: {
    #             option: "none" # One of: ["none", "allow-list", "all"],
    #             cookies_allow_list: ["string"]
    #           },
    #           forwarded_headers: {
    #             option: "none" # One of: ["none", "allow-list", "all"],
    #             headers_allow_list: ["Accept" # One of: ["Accept", "Accept-Charset", "Accept-Datetime", "Accept-Encoding", "Accept-Language", "Authorization", "CloudFront-Forwarded-Proto", "CloudFront-Is-Desktop-Viewer", "CloudFront-Is-Mobile-Viewer", "CloudFront-Is-SmartTV-Viewer", "CloudFront-Is-Tablet-Viewer", "CloudFront-Viewer-Country", "Host", "Origin", "Referer"]]
    #           },
    #           forwarded_query_strings: {
    #             option: false,
    #             query_strings_allow_list: ["string"]
    #           }
    #         },
    #         cache_behaviors: [
    #           {
    #             path: "string",
    #             behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #           }
    #         ],
    #         able_to_update_bundle: false,
    #         ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         viewer_minimum_tls_protocol_version: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetDistributionsResult]
    def get_distributions(params = {}, options = {})
      request = build_request(:get_distributions, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific domain recordset.</p>
    # @param [Hash, Types::GetDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name for which your want to return information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       domain_entries: [
    #         {
    #           id: "NonEmptyString",
    #           name: "DomainName",
    #           target: "string",
    #           is_alias: false,
    #           type: "DomainEntryType",
    #           options: {
    #             "DomainEntryOptionsKeys" => "string"
    #           }
    #         }
    #       ],
    #       registered_domain_delegation_info: {
    #         name_servers_update_state: {
    #           code: "SUCCEEDED" # One of: ["SUCCEEDED", "PENDING", "FAILED", "STARTED"],
    #           message: "string"
    #         },
    #         r53_hosted_zone_deletion_state: {
    #           code: "SUCCEEDED" # One of: ["SUCCEEDED", "PENDING", "FAILED", "STARTED"],
    #           message: "string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetDomainResult]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # <p>Returns a list of all domains in the user's account.</p>
    # @param [Hash, Types::GetDomainsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDomains</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         domain_entries: [
    #           {
    #             id: "NonEmptyString",
    #             name: "DomainName",
    #             target: "string",
    #             is_alias: false,
    #             type: "DomainEntryType",
    #             options: {
    #               "DomainEntryOptionsKeys" => "string"
    #             }
    #           }
    #         ],
    #         registered_domain_delegation_info: {
    #           name_servers_update_state: {
    #             code: "SUCCEEDED" # One of: ["SUCCEEDED", "PENDING", "FAILED", "STARTED"],
    #             message: "string"
    #           },
    #           r53_hosted_zone_deletion_state: {
    #             code: "SUCCEEDED" # One of: ["SUCCEEDED", "PENDING", "FAILED", "STARTED"],
    #             message: "string"
    #           }
    #         }
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetDomainsResult]
    def get_domains(params = {}, options = {})
      request = build_request(:get_domains, params)
      request.send_request(options)
    end

    # <p>Returns all export snapshot records created as a result of the <code>export
    #         snapshot</code> operation.</p>
    #          <p>An export snapshot record can be used to create a new Amazon EC2 instance and its related
    #       resources with the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateCloudFormationStack.html">CreateCloudFormationStack</a>
    #       action.</p>
    # @param [Hash, Types::GetExportSnapshotRecordsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetExportSnapshotRecords</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_export_snapshot_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_snapshot_records: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         state: "Started" # One of: ["Started", "Succeeded", "Failed"],
    #         source_info: {
    #           resource_type: "InstanceSnapshot" # One of: ["InstanceSnapshot", "DiskSnapshot"],
    #           created_at: Time.now,
    #           name: "NonEmptyString",
    #           arn: "NonEmptyString",
    #           from_resource_name: "NonEmptyString",
    #           from_resource_arn: "NonEmptyString",
    #           instance_snapshot_info: {
    #             from_bundle_id: "NonEmptyString",
    #             from_blueprint_id: "NonEmptyString",
    #             from_disk_info: [
    #               {
    #                 name: "string",
    #                 path: "NonEmptyString",
    #                 size_in_gb: 1,
    #                 is_system_disk: false
    #               }
    #             ]
    #           },
    #           disk_snapshot_info: {
    #             size_in_gb: 1
    #           }
    #         },
    #         destination_info: {
    #           id: "NonEmptyString",
    #           service: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetExportSnapshotRecordsResult]
    def get_export_snapshot_records(params = {}, options = {})
      request = build_request(:get_export_snapshot_records, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific Amazon Lightsail instance, which is a virtual private
    #       server.</p>
    # @param [Hash, Types::GetInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       blueprint_id: "NonEmptyString",
    #       blueprint_name: "NonEmptyString",
    #       bundle_id: "NonEmptyString",
    #       add_ons: [
    #         {
    #           name: "string",
    #           status: "string",
    #           snapshot_time_of_day: "TimeOfDay",
    #           next_snapshot_time_of_day: "TimeOfDay",
    #           threshold: "string",
    #           duration: "string"
    #         }
    #       ],
    #       is_static_ip: false,
    #       private_ip_address: "IpAddress",
    #       public_ip_address: "IpAddress",
    #       ipv6_addresses: ["Ipv6Address"],
    #       ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #       hardware: {
    #         cpu_count: 1,
    #         disks: [
    #           {
    #             name: "ResourceName",
    #             arn: "NonEmptyString",
    #             support_code: "string",
    #             created_at: Time.now,
    #             location: {
    #               availability_zone: "string",
    #               region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #             },
    #             resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #             tags: [
    #               {
    #                 key: "TagKey",
    #                 value: "TagValue"
    #               }
    #             ],
    #             add_ons: [
    #               {
    #                 name: "string",
    #                 status: "string",
    #                 snapshot_time_of_day: "TimeOfDay",
    #                 next_snapshot_time_of_day: "TimeOfDay",
    #                 threshold: "string",
    #                 duration: "string"
    #               }
    #             ],
    #             size_in_gb: 1,
    #             is_system_disk: false,
    #             iops: 1,
    #             path: "string",
    #             state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #             attached_to: "ResourceName",
    #             is_attached: false,
    #             attachment_state: "string",
    #             gb_in_use: 1,
    #             auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #           }
    #         ],
    #         ram_size_in_gb: 1.0
    #       },
    #       networking: {
    #         monthly_transfer: {
    #           gb_per_month_allocated: 1
    #         },
    #         ports: [
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #             protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #             access_from: "string",
    #             access_type: "Public" # One of: ["Public", "Private"],
    #             common_name: "string",
    #             access_direction: "inbound" # One of: ["inbound", "outbound"],
    #             cidrs: ["string"],
    #             ipv6_cidrs: ["string"],
    #             cidr_list_aliases: ["string"]
    #           }
    #         ]
    #       },
    #       state: {
    #         code: 1,
    #         name: "string"
    #       },
    #       username: "NonEmptyString",
    #       ssh_key_name: "ResourceName",
    #       metadata_options: {
    #         state: "pending" # One of: ["pending", "applied"],
    #         http_tokens: "optional" # One of: ["optional", "required"],
    #         http_endpoint: "disabled" # One of: ["disabled", "enabled"],
    #         http_put_response_hop_limit: 1,
    #         http_protocol_ipv6: "disabled" # One of: ["disabled", "enabled"]
    #       }
    #     }
    #   }
    # @return [Types::GetInstanceResult]
    def get_instance(params = {}, options = {})
      request = build_request(:get_instance, params)
      request.send_request(options)
    end

    # <p>Returns temporary SSH keys you can use to connect to a specific virtual private server, or
    #         <i>instance</i>.</p>
    #          <p>The <code>get instance access details</code> operation supports tag-based access control
    #       via resource tags applied to the resource identified by <code>instance name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::GetInstanceAccessDetailsRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance to access.</p>
    # @option params [String] :protocol
    #   <p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     protocol: "ssh" # One of: ["ssh", "rdp"]
    #   }
    #   options = {}
    #   response = client.get_instance_access_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_details: {
    #       cert_key: "string",
    #       expires_at: Time.now,
    #       ip_address: "IpAddress",
    #       ipv6_addresses: ["Ipv6Address"],
    #       password: "string",
    #       password_data: {
    #         ciphertext: "string",
    #         key_pair_name: "ResourceName"
    #       },
    #       private_key: "string",
    #       protocol: "ssh" # One of: ["ssh", "rdp"],
    #       instance_name: "ResourceName",
    #       username: "string",
    #       host_keys: [
    #         {
    #           algorithm: "string",
    #           public_key: "string",
    #           witnessed_at: Time.now,
    #           fingerprint_sha1: "string",
    #           fingerprint_sha256: "string",
    #           not_valid_before: Time.now,
    #           not_valid_after: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInstanceAccessDetailsResult]
    def get_instance_access_details(params = {}, options = {})
      request = build_request(:get_instance_access_details, params)
      request.send_request(options)
    end

    # <p>Returns the data points for the specified Amazon Lightsail instance metric, given an
    #       instance name.</p>
    #          <p>Metrics report the utilization of your resources, and the error counts generated by them.
    #       Monitor and collect metric data regularly to maintain the reliability, availability, and
    #       performance of your resources.</p>
    # @param [Hash, Types::GetInstanceMetricDataRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance for which you want to get metrics data.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid instance metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BurstCapacityPercentage</code>
    #                     </b> - The percentage
    #             of CPU performance available for your instance to burst above its baseline. Your instance
    #             continuously accrues and consumes burst capacity. Burst capacity stops accruing when your
    #             instance's <code>BurstCapacityPercentage</code> reaches 100%. For more information, see
    #               <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BurstCapacityTime</code>
    #                     </b> - The available amount
    #             of time for your instance to burst at 100% CPU utilization. Your instance continuously
    #             accrues and consumes burst capacity. Burst capacity time stops accruing when your
    #             instance's <code>BurstCapacityPercentage</code> metric reaches 100%.</p>
    #                  <p>Burst capacity time is consumed at the full rate only when your instance operates at
    #             100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the
    #             burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50%
    #             rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity
    #             minutes in the 5-minute period. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUtilization</code>
    #                     </b> - The percentage of
    #             allocated compute units that are currently in use on the instance. This metric identifies
    #             the processing power to run the applications on the instance. Tools in your operating
    #             system can show a lower percentage than Lightsail when the instance is not allocated a
    #             full processor core.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkIn</code>
    #                     </b> - The number of bytes received
    #             on all network interfaces by the instance. This metric identifies the volume of incoming
    #             network traffic to the instance. The number reported is the number of bytes received
    #             during the period. Because this metric is reported in 5-minute intervals, divide the
    #             reported number by 300 to find Bytes/second.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkOut</code>
    #                     </b> - The number of bytes sent
    #             out on all network interfaces by the instance. This metric identifies the volume of
    #             outgoing network traffic from the instance. The number reported is the number of bytes
    #             sent during the period. Because this metric is reported in 5-minute intervals, divide the
    #             reported number by 300 to find Bytes/second.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed</code>
    #                     </b> - Reports whether the
    #             instance passed or failed both the instance status check and the system status check. This
    #             metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute
    #             (60 seconds) granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed_Instance</code>
    #                     </b> - Reports
    #             whether the instance passed or failed the instance status check. This metric can be either
    #             0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
    #             granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed_System</code>
    #                     </b> - Reports
    #             whether the instance passed or failed the system status check. This metric can be either 0
    #             (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
    #             granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MetadataNoToken</code>
    #                     </b> - Reports the number of
    #             times that the instance metadata service was successfully accessed without a token. This
    #             metric determines if there are any processes accessing instance metadata by using Instance
    #             Metadata Service Version 1, which doesn't use a token. If all requests use token-backed
    #             sessions, such as Instance Metadata Service Version 2, then the value is 0.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>The <code>StatusCheckFailed</code>, <code>StatusCheckFailed_Instance</code>, and
    #           <code>StatusCheckFailed_System</code> instance metric data is available in 1-minute (60
    #         seconds) granularity. All other instance metric data is available in 5-minute (300 seconds)
    #         granularity.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the time period.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the time period.</p>
    # @option params [String] :unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units to specify with each available metric, see the
    #           <code>metricName</code> parameter.</p>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "BurstCapacityTime", "BurstCapacityPercentage", "MetadataNoToken"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #   }
    #   options = {}
    #   response = client.get_instance_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "BurstCapacityTime", "BurstCapacityPercentage", "MetadataNoToken"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetInstanceMetricDataResult]
    def get_instance_metric_data(params = {}, options = {})
      request = build_request(:get_instance_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns the firewall port states for a specific Amazon Lightsail instance, the IP addresses
    #       allowed to connect to the instance through the ports, and the protocol.</p>
    # @param [Hash, Types::GetInstancePortStatesRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance for which to return firewall port states.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_instance_port_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     port_states: [
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #         state: "open" # One of: ["open", "closed"],
    #         cidrs: ["string"],
    #         ipv6_cidrs: ["string"],
    #         cidr_list_aliases: ["string"]
    #       }
    #     ]
    #   }
    # @return [Types::GetInstancePortStatesResult]
    def get_instance_port_states(params = {}, options = {})
      request = build_request(:get_instance_port_states, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific instance snapshot.</p>
    # @param [Hash, Types::GetInstanceSnapshotRequest] params
    # @option params [String] :instance_snapshot_name
    #   <p>The name of the snapshot for which you are requesting information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_instance_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_snapshot: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       state: "pending" # One of: ["pending", "error", "available"],
    #       progress: "string",
    #       from_attached_disks: [
    #         {
    #           name: "ResourceName",
    #           arn: "NonEmptyString",
    #           support_code: "string",
    #           created_at: Time.now,
    #           location: {
    #             availability_zone: "string",
    #             region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #           },
    #           resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           add_ons: [
    #             {
    #               name: "string",
    #               status: "string",
    #               snapshot_time_of_day: "TimeOfDay",
    #               next_snapshot_time_of_day: "TimeOfDay",
    #               threshold: "string",
    #               duration: "string"
    #             }
    #           ],
    #           size_in_gb: 1,
    #           is_system_disk: false,
    #           iops: 1,
    #           path: "string",
    #           state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #           attached_to: "ResourceName",
    #           is_attached: false,
    #           attachment_state: "string",
    #           gb_in_use: 1,
    #           auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #         }
    #       ],
    #       from_instance_name: "ResourceName",
    #       from_instance_arn: "NonEmptyString",
    #       from_blueprint_id: "string",
    #       from_bundle_id: "string",
    #       is_from_auto_snapshot: false,
    #       size_in_gb: 1
    #     }
    #   }
    # @return [Types::GetInstanceSnapshotResult]
    def get_instance_snapshot(params = {}, options = {})
      request = build_request(:get_instance_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns all instance snapshots for the user's account.</p>
    # @param [Hash, Types::GetInstanceSnapshotsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetInstanceSnapshots</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_instance_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_snapshots: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         state: "pending" # One of: ["pending", "error", "available"],
    #         progress: "string",
    #         from_attached_disks: [
    #           {
    #             name: "ResourceName",
    #             arn: "NonEmptyString",
    #             support_code: "string",
    #             created_at: Time.now,
    #             location: {
    #               availability_zone: "string",
    #               region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #             },
    #             resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #             tags: [
    #               {
    #                 key: "TagKey",
    #                 value: "TagValue"
    #               }
    #             ],
    #             add_ons: [
    #               {
    #                 name: "string",
    #                 status: "string",
    #                 snapshot_time_of_day: "TimeOfDay",
    #                 next_snapshot_time_of_day: "TimeOfDay",
    #                 threshold: "string",
    #                 duration: "string"
    #               }
    #             ],
    #             size_in_gb: 1,
    #             is_system_disk: false,
    #             iops: 1,
    #             path: "string",
    #             state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #             attached_to: "ResourceName",
    #             is_attached: false,
    #             attachment_state: "string",
    #             gb_in_use: 1,
    #             auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #           }
    #         ],
    #         from_instance_name: "ResourceName",
    #         from_instance_arn: "NonEmptyString",
    #         from_blueprint_id: "string",
    #         from_bundle_id: "string",
    #         is_from_auto_snapshot: false,
    #         size_in_gb: 1
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetInstanceSnapshotsResult]
    def get_instance_snapshots(params = {}, options = {})
      request = build_request(:get_instance_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns the state of a specific instance. Works on one instance at a time.</p>
    # @param [Hash, Types::GetInstanceStateRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance to get state information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_instance_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: {
    #       code: 1,
    #       name: "string"
    #     }
    #   }
    # @return [Types::GetInstanceStateResult]
    def get_instance_state(params = {}, options = {})
      request = build_request(:get_instance_state, params)
      request.send_request(options)
    end

    # <p>Returns information about all Amazon Lightsail virtual private servers, or
    #         <i>instances</i>.</p>
    # @param [Hash, Types::GetInstancesRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetInstances</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         blueprint_id: "NonEmptyString",
    #         blueprint_name: "NonEmptyString",
    #         bundle_id: "NonEmptyString",
    #         add_ons: [
    #           {
    #             name: "string",
    #             status: "string",
    #             snapshot_time_of_day: "TimeOfDay",
    #             next_snapshot_time_of_day: "TimeOfDay",
    #             threshold: "string",
    #             duration: "string"
    #           }
    #         ],
    #         is_static_ip: false,
    #         private_ip_address: "IpAddress",
    #         public_ip_address: "IpAddress",
    #         ipv6_addresses: ["Ipv6Address"],
    #         ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #         hardware: {
    #           cpu_count: 1,
    #           disks: [
    #             {
    #               name: "ResourceName",
    #               arn: "NonEmptyString",
    #               support_code: "string",
    #               created_at: Time.now,
    #               location: {
    #                 availability_zone: "string",
    #                 region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #               },
    #               resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue"
    #                 }
    #               ],
    #               add_ons: [
    #                 {
    #                   name: "string",
    #                   status: "string",
    #                   snapshot_time_of_day: "TimeOfDay",
    #                   next_snapshot_time_of_day: "TimeOfDay",
    #                   threshold: "string",
    #                   duration: "string"
    #                 }
    #               ],
    #               size_in_gb: 1,
    #               is_system_disk: false,
    #               iops: 1,
    #               path: "string",
    #               state: "pending" # One of: ["pending", "error", "available", "in-use", "unknown"],
    #               attached_to: "ResourceName",
    #               is_attached: false,
    #               attachment_state: "string",
    #               gb_in_use: 1,
    #               auto_mount_status: "Failed" # One of: ["Failed", "Pending", "Mounted", "NotMounted"]
    #             }
    #           ],
    #           ram_size_in_gb: 1.0
    #         },
    #         networking: {
    #           monthly_transfer: {
    #             gb_per_month_allocated: 1
    #           },
    #           ports: [
    #             {
    #               from_port: 1,
    #               to_port: 1,
    #               protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #               access_from: "string",
    #               access_type: "Public" # One of: ["Public", "Private"],
    #               common_name: "string",
    #               access_direction: "inbound" # One of: ["inbound", "outbound"],
    #               cidrs: ["string"],
    #               ipv6_cidrs: ["string"],
    #               cidr_list_aliases: ["string"]
    #             }
    #           ]
    #         },
    #         state: {
    #           code: 1,
    #           name: "string"
    #         },
    #         username: "NonEmptyString",
    #         ssh_key_name: "ResourceName",
    #         metadata_options: {
    #           state: "pending" # One of: ["pending", "applied"],
    #           http_tokens: "optional" # One of: ["optional", "required"],
    #           http_endpoint: "disabled" # One of: ["disabled", "enabled"],
    #           http_put_response_hop_limit: 1,
    #           http_protocol_ipv6: "disabled" # One of: ["disabled", "enabled"]
    #         }
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetInstancesResult]
    def get_instances(params = {}, options = {})
      request = build_request(:get_instances, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific key pair.</p>
    # @param [Hash, Types::GetKeyPairRequest] params
    # @option params [String] :key_pair_name
    #   <p>The name of the key pair for which you are requesting information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_pair_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pair: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fingerprint: "Base64"
    #     }
    #   }
    # @return [Types::GetKeyPairResult]
    def get_key_pair(params = {}, options = {})
      request = build_request(:get_key_pair, params)
      request.send_request(options)
    end

    # <p>Returns information about all key pairs in the user's account.</p>
    # @param [Hash, Types::GetKeyPairsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetKeyPairs</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @option params [Boolean] :include_default_key_pair
    #   <p>A Boolean value that indicates whether to include the default key pair in the response of
    #         your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string",
    #     include_default_key_pair: false
    #   }
    #   options = {}
    #   response = client.get_key_pairs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pairs: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         fingerprint: "Base64"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetKeyPairsResult]
    def get_key_pairs(params = {}, options = {})
      request = build_request(:get_key_pairs, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Lightsail load balancer.</p>
    # @param [Hash, Types::GetLoadBalancerRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_load_balancer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancer: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       dns_name: "NonEmptyString",
    #       state: "active" # One of: ["active", "provisioning", "active_impaired", "failed", "unknown"],
    #       protocol: "HTTP_HTTPS" # One of: ["HTTP_HTTPS", "HTTP"],
    #       public_ports: [1],
    #       health_check_path: "NonEmptyString",
    #       instance_port: 1,
    #       instance_health_summary: [
    #         {
    #           instance_name: "ResourceName",
    #           instance_health: "initial" # One of: ["initial", "healthy", "unhealthy", "unused", "draining", "unavailable"],
    #           instance_health_reason: "Lb.RegistrationInProgress" # One of: ["Lb.RegistrationInProgress", "Lb.InitialHealthChecking", "Lb.InternalError", "Instance.ResponseCodeMismatch", "Instance.Timeout", "Instance.FailedHealthChecks", "Instance.NotRegistered", "Instance.NotInUse", "Instance.DeregistrationInProgress", "Instance.InvalidState", "Instance.IpUnusable"]
    #         }
    #       ],
    #       tls_certificate_summaries: [
    #         {
    #           name: "ResourceName",
    #           is_attached: false
    #         }
    #       ],
    #       configuration_options: {
    #         "LoadBalancerAttributeName" => "string"
    #       },
    #       ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #       https_redirection_enabled: false,
    #       tls_policy_name: "ResourceName"
    #     }
    #   }
    # @return [Types::GetLoadBalancerResult]
    def get_load_balancer(params = {}, options = {})
      request = build_request(:get_load_balancer, params)
      request.send_request(options)
    end

    # <p>Returns information about health metrics for your Lightsail load balancer.</p>
    #          <p>Metrics report the utilization of your resources, and the error counts generated by them.
    #       Monitor and collect metric data regularly to maintain the reliability, availability, and
    #       performance of your resources.</p>
    # @param [Hash, Types::GetLoadBalancerMetricDataRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid load balancer metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ClientTLSNegotiationErrorCount</code>
    #                     </b> - The
    #             number of TLS connections initiated by the client that did not establish a session with
    #             the load balancer due to a TLS error generated by the load balancer. Possible causes
    #             include a mismatch of ciphers or protocols.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HealthyHostCount</code>
    #                     </b> - The number of target
    #             instances that are considered healthy.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic are <code>Average</code>,
    #               <code>Minimum</code>, and <code>Maximum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_2XX_Count</code>
    #                     </b> - The number
    #             of HTTP 2XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_3XX_Count</code>
    #                     </b> - The number
    #             of HTTP 3XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_4XX_Count</code>
    #                     </b> - The number
    #             of HTTP 4XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_5XX_Count</code>
    #                     </b> - The number
    #             of HTTP 5XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_LB_4XX_Count</code>
    #                     </b> - The number of
    #             HTTP 4XX client error codes that originated from the load balancer. Client errors are
    #             generated when requests are malformed or incomplete. These requests were not received by
    #             the target instance. This count does not include response codes generated by the target
    #             instances.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_LB_5XX_Count</code>
    #                     </b> - The number of
    #             HTTP 5XX server error codes that originated from the load balancer. This does not include
    #             any response codes generated by the target instance. This metric is reported if there are
    #             no healthy instances attached to the load balancer, or if the request rate exceeds the
    #             capacity of the instances (spillover) or the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>InstanceResponseTime</code>
    #                     </b> - The time elapsed,
    #             in seconds, after the request leaves the load balancer until a response from the target
    #             instance is received.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RejectedConnectionCount</code>
    #                     </b> - The number of
    #             connections that were rejected because the load balancer had reached its maximum number of
    #             connections.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RequestCount</code>
    #                     </b> - The number of requests
    #             processed over IPv4. This count includes only the requests with a response generated by a
    #             target instance of the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>UnhealthyHostCount</code>
    #                     </b> - The number of
    #             target instances that are considered unhealthy.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic are <code>Average</code>,
    #               <code>Minimum</code>, and <code>Maximum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the period.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the period.</p>
    # @option params [String] :unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units with each available metric, see the <code>metricName</code>
    #         parameter.</p>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     metric_name: "ClientTLSNegotiationErrorCount" # One of: ["ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #   }
    #   options = {}
    #   response = client.get_load_balancer_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "ClientTLSNegotiationErrorCount" # One of: ["ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetLoadBalancerMetricDataResult]
    def get_load_balancer_metric_data(params = {}, options = {})
      request = build_request(:get_load_balancer_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns information about the TLS certificates that are associated with the specified
    #       Lightsail load balancer.</p>
    #          <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>
    #          <p>You can have a maximum of 2 certificates associated with a Lightsail load balancer. One
    #       is active and the other is inactive.</p>
    # @param [Hash, Types::GetLoadBalancerTlsCertificatesRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer you associated with your SSL/TLS certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_load_balancer_tls_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tls_certificates: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         load_balancer_name: "ResourceName",
    #         is_attached: false,
    #         status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED", "UNKNOWN"],
    #         domain_name: "DomainName",
    #         domain_validation_records: [
    #           {
    #             name: "NonEmptyString",
    #             type: "NonEmptyString",
    #             value: "NonEmptyString",
    #             validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"],
    #             domain_name: "DomainName",
    #             dns_record_creation_state: {
    #               code: "SUCCEEDED" # One of: ["SUCCEEDED", "STARTED", "FAILED"],
    #               message: "string"
    #             }
    #           }
    #         ],
    #         failure_reason: "NO_AVAILABLE_CONTACTS" # One of: ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "OTHER"],
    #         issued_at: Time.now,
    #         issuer: "NonEmptyString",
    #         key_algorithm: "NonEmptyString",
    #         not_after: Time.now,
    #         not_before: Time.now,
    #         renewal_summary: {
    #           renewal_status: "PENDING_AUTO_RENEWAL" # One of: ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"],
    #           domain_validation_options: [
    #             {
    #               domain_name: "DomainName",
    #               validation_status: "PENDING_VALIDATION" # One of: ["PENDING_VALIDATION", "FAILED", "SUCCESS"]
    #             }
    #           ]
    #         },
    #         revocation_reason: "UNSPECIFIED" # One of: ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"],
    #         revoked_at: Time.now,
    #         serial: "NonEmptyString",
    #         signature_algorithm: "NonEmptyString",
    #         subject: "NonEmptyString",
    #         subject_alternative_names: ["string"]
    #       }
    #     ]
    #   }
    # @return [Types::GetLoadBalancerTlsCertificatesResult]
    def get_load_balancer_tls_certificates(params = {}, options = {})
      request = build_request(:get_load_balancer_tls_certificates, params)
      request.send_request(options)
    end

    # <p>Returns a list of TLS security policies that you can apply to Lightsail load
    #       balancers.</p>
    #          <p>For more information about load balancer TLS security policies, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy">Configuring TLS security policies on your Amazon Lightsail load
    #         balancers</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @param [Hash, Types::GetLoadBalancerTlsPoliciesRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetLoadBalancerTlsPolicies</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_load_balancer_tls_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tls_policies: [
    #       {
    #         name: "ResourceName",
    #         is_default: false,
    #         description: "string",
    #         protocols: ["string"],
    #         ciphers: ["string"]
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetLoadBalancerTlsPoliciesResult]
    def get_load_balancer_tls_policies(params = {}, options = {})
      request = build_request(:get_load_balancer_tls_policies, params)
      request.send_request(options)
    end

    # <p>Returns information about all load balancers in an account.</p>
    # @param [Hash, Types::GetLoadBalancersRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetLoadBalancers</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_load_balancers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     load_balancers: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         dns_name: "NonEmptyString",
    #         state: "active" # One of: ["active", "provisioning", "active_impaired", "failed", "unknown"],
    #         protocol: "HTTP_HTTPS" # One of: ["HTTP_HTTPS", "HTTP"],
    #         public_ports: [1],
    #         health_check_path: "NonEmptyString",
    #         instance_port: 1,
    #         instance_health_summary: [
    #           {
    #             instance_name: "ResourceName",
    #             instance_health: "initial" # One of: ["initial", "healthy", "unhealthy", "unused", "draining", "unavailable"],
    #             instance_health_reason: "Lb.RegistrationInProgress" # One of: ["Lb.RegistrationInProgress", "Lb.InitialHealthChecking", "Lb.InternalError", "Instance.ResponseCodeMismatch", "Instance.Timeout", "Instance.FailedHealthChecks", "Instance.NotRegistered", "Instance.NotInUse", "Instance.DeregistrationInProgress", "Instance.InvalidState", "Instance.IpUnusable"]
    #           }
    #         ],
    #         tls_certificate_summaries: [
    #           {
    #             name: "ResourceName",
    #             is_attached: false
    #           }
    #         ],
    #         configuration_options: {
    #           "LoadBalancerAttributeName" => "string"
    #         },
    #         ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"],
    #         https_redirection_enabled: false,
    #         tls_policy_name: "ResourceName"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetLoadBalancersResult]
    def get_load_balancers(params = {}, options = {})
      request = build_request(:get_load_balancers, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific operation. Operations include events such as when you
    #       create an instance, allocate a static IP, attach a static IP, and so on.</p>
    # @param [Hash, Types::GetOperationRequest] params
    # @option params [String] :operation_id
    #   <p>A GUID used to identify the operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::GetOperationResult]
    def get_operation(params = {}, options = {})
      request = build_request(:get_operation, params)
      request.send_request(options)
    end

    # <p>Returns information about all operations.</p>
    #          <p>Results are returned from oldest to newest, up to a maximum of 200. Results can be paged
    #       by making each subsequent call to <code>GetOperations</code> use the maximum (last)
    #         <code>statusChangedAt</code> value from the previous request.</p>
    # @param [Hash, Types::GetOperationsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetOperations</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetOperationsResult]
    def get_operations(params = {}, options = {})
      request = build_request(:get_operations, params)
      request.send_request(options)
    end

    # <p>Gets operations for a specific resource (an instance or a static IP).</p>
    # @param [Hash, Types::GetOperationsForResourceRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the resource for which you are requesting information.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetOperationsForResource</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_operations_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ],
    #     next_page_count: "string",
    #     next_page_token: "string"
    #   }
    # @return [Types::GetOperationsForResourceResult]
    def get_operations_for_resource(params = {}, options = {})
      request = build_request(:get_operations_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of all valid regions for Amazon Lightsail. Use the <code>include
    #         availability zones</code> parameter to also return the Availability Zones in a
    #       region.</p>
    # @param [Hash, Types::GetRegionsRequest] params
    # @option params [Boolean] :include_availability_zones
    #   <p>A Boolean value indicating whether to also include Availability Zones in your get regions
    #         request. Availability Zones are indicated with a letter: <code>us-east-2a</code>.</p>
    # @option params [Boolean] :include_relational_database_availability_zones
    #   <p>A Boolean value indicating whether to also include Availability Zones for databases in
    #         your get regions request. Availability Zones are indicated with a letter
    #           (<code>us-east-2a</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_availability_zones: false,
    #     include_relational_database_availability_zones: false
    #   }
    #   options = {}
    #   response = client.get_regions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regions: [
    #       {
    #         continent_code: "string",
    #         description: "string",
    #         display_name: "string",
    #         name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"],
    #         availability_zones: [
    #           {
    #             zone_name: "NonEmptyString",
    #             state: "NonEmptyString"
    #           }
    #         ],
    #         relational_database_availability_zones: [
    #           {
    #             zone_name: "NonEmptyString",
    #             state: "NonEmptyString"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetRegionsResult]
    def get_regions(params = {}, options = {})
      request = build_request(:get_regions, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific database in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of the database that you are looking up.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relational_database: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       relational_database_blueprint_id: "NonEmptyString",
    #       relational_database_bundle_id: "NonEmptyString",
    #       master_database_name: "string",
    #       hardware: {
    #         cpu_count: 1,
    #         disk_size_in_gb: 1,
    #         ram_size_in_gb: 1.0
    #       },
    #       state: "NonEmptyString",
    #       secondary_availability_zone: "string",
    #       backup_retention_enabled: false,
    #       pending_modified_values: {
    #         master_user_password: "string",
    #         engine_version: "string",
    #         backup_retention_enabled: false
    #       },
    #       engine: "NonEmptyString",
    #       engine_version: "NonEmptyString",
    #       latest_restorable_time: Time.now,
    #       master_username: "NonEmptyString",
    #       parameter_apply_status: "NonEmptyString",
    #       preferred_backup_window: "NonEmptyString",
    #       preferred_maintenance_window: "NonEmptyString",
    #       publicly_accessible: false,
    #       master_endpoint: {
    #         port: 1,
    #         address: "NonEmptyString"
    #       },
    #       pending_maintenance_actions: [
    #         {
    #           action: "NonEmptyString",
    #           description: "NonEmptyString",
    #           current_apply_date: Time.now
    #         }
    #       ],
    #       ca_certificate_identifier: "string"
    #     }
    #   }
    # @return [Types::GetRelationalDatabaseResult]
    def get_relational_database(params = {}, options = {})
      request = build_request(:get_relational_database, params)
      request.send_request(options)
    end

    # <p>Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes
    #       the major engine version of a database.</p>
    #          <p>You can use a blueprint ID to create a new database that runs a specific database
    #       engine.</p>
    # @param [Hash, Types::GetRelationalDatabaseBlueprintsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseBlueprints</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_database_blueprints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprints: [
    #       {
    #         blueprint_id: "string",
    #         engine: "mysql" # One of: ["mysql"],
    #         engine_version: "string",
    #         engine_description: "string",
    #         engine_version_description: "string",
    #         is_engine_default: false
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseBlueprintsResult]
    def get_relational_database_blueprints(params = {}, options = {})
      request = build_request(:get_relational_database_blueprints, params)
      request.send_request(options)
    end

    # <p>Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the
    #       performance specifications for a database.</p>
    #          <p>You can use a bundle ID to create a new database with explicit performance
    #       specifications.</p>
    # @param [Hash, Types::GetRelationalDatabaseBundlesRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseBundles</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    # @option params [Boolean] :include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string",
    #     include_inactive: false
    #   }
    #   options = {}
    #   response = client.get_relational_database_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bundles: [
    #       {
    #         bundle_id: "string",
    #         name: "string",
    #         price: 1.0,
    #         ram_size_in_gb: 1.0,
    #         disk_size_in_gb: 1,
    #         transfer_per_month_in_gb: 1,
    #         cpu_count: 1,
    #         is_encrypted: false,
    #         is_active: false
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseBundlesResult]
    def get_relational_database_bundles(params = {}, options = {})
      request = build_request(:get_relational_database_bundles, params)
      request.send_request(options)
    end

    # <p>Returns a list of events for a specific database in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseEventsRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of the database from which to get events.</p>
    # @option params [Integer] :duration_in_minutes
    #   <p>The number of minutes in the past from which to retrieve events. For example, to get all
    #         events from the past 2 hours, enter 120.</p>
    #            <p>Default: <code>60</code>
    #            </p>
    #            <p>The minimum is 1 and the maximum is 14 days (20160 minutes).</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseEvents</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     duration_in_minutes: 1,
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_database_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relational_database_events: [
    #       {
    #         resource: "ResourceName",
    #         created_at: Time.now,
    #         message: "string",
    #         event_categories: ["string"]
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseEventsResult]
    def get_relational_database_events(params = {}, options = {})
      request = build_request(:get_relational_database_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of log events for a database in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseLogEventsRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database for which to get log events.</p>
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    #            <p>Use the <code>get relational database log streams</code> operation to get a list of
    #         available log streams.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time interval from which to get log events.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :end_time
    #   <p>The end of the time interval from which to get log events.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the end time.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :start_from_head
    #   <p>Parameter to specify if the log should start from head or tail. If <code>true</code> is
    #         specified, the log event starts from the head of the log. If <code>false</code> is specified,
    #         the log event starts from the tail of the log.</p>
    #            <note>
    #               <p>For PostgreSQL, the default value of <code>false</code> is the only option
    #           available.</p>
    #            </note>
    # @option params [String] :page_token
    #   <p>The token to advance to the next or previous page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseLogEvents</code>
    #         request. If your results are paginated, the response will return a next forward token and/or
    #         next backward token that you can specify as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     log_stream_name: "string", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     start_from_head: false,
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_database_log_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_log_events: [
    #       {
    #         created_at: Time.now,
    #         message: "string"
    #       }
    #     ],
    #     next_backward_token: "string",
    #     next_forward_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseLogEventsResult]
    def get_relational_database_log_events(params = {}, options = {})
      request = build_request(:get_relational_database_log_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of available log streams for a specific database in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseLogStreamsRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database for which to get log streams.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_relational_database_log_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_streams: ["string"]
    #   }
    # @return [Types::GetRelationalDatabaseLogStreamsResult]
    def get_relational_database_log_streams(params = {}, options = {})
      request = build_request(:get_relational_database_log_streams, params)
      request.send_request(options)
    end

    # <p>Returns the current, previous, or pending versions of the master user password for a
    #       Lightsail database.</p>
    #          <p>The <code>GetRelationalDatabaseMasterUserPassword</code> operation supports tag-based
    #       access control via resource tags applied to the resource identified by
    #       relationalDatabaseName.</p>
    # @param [Hash, Types::GetRelationalDatabaseMasterUserPasswordRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database for which to get the master user password.</p>
    # @option params [String] :password_version
    #   <p>The password version to return.</p>
    #            <p>Specifying <code>CURRENT</code> or <code>PREVIOUS</code> returns the current or previous
    #         passwords respectively. Specifying <code>PENDING</code> returns the newest version of the
    #         password that will rotate to <code>CURRENT</code>. After the <code>PENDING</code> password
    #         rotates to <code>CURRENT</code>, the <code>PENDING</code> password is no longer
    #         available.</p>
    #            <p>Default: <code>CURRENT</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     password_version: "CURRENT" # One of: ["CURRENT", "PREVIOUS", "PENDING"]
    #   }
    #   options = {}
    #   response = client.get_relational_database_master_user_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     master_user_password: "SensitiveString",
    #     created_at: Time.now
    #   }
    # @return [Types::GetRelationalDatabaseMasterUserPasswordResult]
    def get_relational_database_master_user_password(params = {}, options = {})
      request = build_request(:get_relational_database_master_user_password, params)
      request.send_request(options)
    end

    # <p>Returns the data points of the specified metric for a database in Amazon Lightsail.</p>
    #          <p>Metrics report the utilization of your resources, and the error counts generated by them.
    #       Monitor and collect metric data regularly to maintain the reliability, availability, and
    #       performance of your resources.</p>
    # @param [Hash, Types::GetRelationalDatabaseMetricDataRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database from which to get metric data.</p>
    # @option params [String] :metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid relational database metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value. All relational database metric data is available in 1-minute (60 seconds)
    #         granularity.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUtilization</code>
    #                     </b> - The percentage of CPU
    #             utilization currently in use on the database.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DatabaseConnections</code>
    #                     </b> - The number of
    #             database connections in use.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskQueueDepth</code>
    #                     </b> - The number of
    #             outstanding IOs (read/write requests) that are waiting to access the disk.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>FreeStorageSpace</code>
    #                     </b> - The amount of
    #             available storage space.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkReceiveThroughput</code>
    #                     </b> - The incoming
    #             (Receive) network traffic on the database, including both customer database traffic and
    #             AWS traffic used for monitoring and replication.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkTransmitThroughput</code>
    #                     </b> - The outgoing
    #             (Transmit) network traffic on the database, including both customer database traffic and
    #             AWS traffic used for monitoring and replication.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>All relational database metric data is available in 1-minute (60 seconds)
    #         granularity.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time interval from which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :end_time
    #   <p>The end of the time interval from which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the end time.</p>
    #               </li>
    #            </ul>
    # @option params [String] :unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units with each available metric, see the <code>metricName</code>
    #         parameter.</p>
    # @option params [Array<String>] :statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #     statistics: ["Minimum" # One of: ["Minimum", "Maximum", "Sum", "Average", "SampleCount"]], # required
    #   }
    #   options = {}
    #   response = client.get_relational_database_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput"],
    #     metric_data: [
    #       {
    #         average: 1.0,
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1.0,
    #         sum: 1.0,
    #         timestamp: Time.now,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ]
    #   }
    # @return [Types::GetRelationalDatabaseMetricDataResult]
    def get_relational_database_metric_data(params = {}, options = {})
      request = build_request(:get_relational_database_metric_data, params)
      request.send_request(options)
    end

    # <p>Returns all of the runtime parameters offered by the underlying database software, or
    #       engine, for a specific database in Amazon Lightsail.</p>
    #          <p>In addition to the parameter names and values, this operation returns other information
    #       about each parameter. This information includes whether changes require a reboot, whether the
    #       parameter is modifiable, the allowed values, and the data types.</p>
    # @param [Hash, Types::GetRelationalDatabaseParametersRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database for which to get parameters.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseParameters</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_database_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         allowed_values: "string",
    #         apply_method: "string",
    #         apply_type: "string",
    #         data_type: "string",
    #         description: "string",
    #         is_modifiable: false,
    #         parameter_name: "string",
    #         parameter_value: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseParametersResult]
    def get_relational_database_parameters(params = {}, options = {})
      request = build_request(:get_relational_database_parameters, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific database snapshot in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseSnapshotRequest] params
    # @option params [String] :relational_database_snapshot_name
    #   <p>The name of the database snapshot for which to get information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_snapshot_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_relational_database_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relational_database_snapshot: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       engine: "NonEmptyString",
    #       engine_version: "NonEmptyString",
    #       size_in_gb: 1,
    #       state: "NonEmptyString",
    #       from_relational_database_name: "NonEmptyString",
    #       from_relational_database_arn: "NonEmptyString",
    #       from_relational_database_bundle_id: "string",
    #       from_relational_database_blueprint_id: "string"
    #     }
    #   }
    # @return [Types::GetRelationalDatabaseSnapshotResult]
    def get_relational_database_snapshot(params = {}, options = {})
      request = build_request(:get_relational_database_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns information about all of your database snapshots in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabaseSnapshotsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseSnapshots</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_database_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relational_database_snapshots: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         engine: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         size_in_gb: 1,
    #         state: "NonEmptyString",
    #         from_relational_database_name: "NonEmptyString",
    #         from_relational_database_arn: "NonEmptyString",
    #         from_relational_database_bundle_id: "string",
    #         from_relational_database_blueprint_id: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabaseSnapshotsResult]
    def get_relational_database_snapshots(params = {}, options = {})
      request = build_request(:get_relational_database_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about all of your databases in Amazon Lightsail.</p>
    # @param [Hash, Types::GetRelationalDatabasesRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabases</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_relational_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relational_databases: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         relational_database_blueprint_id: "NonEmptyString",
    #         relational_database_bundle_id: "NonEmptyString",
    #         master_database_name: "string",
    #         hardware: {
    #           cpu_count: 1,
    #           disk_size_in_gb: 1,
    #           ram_size_in_gb: 1.0
    #         },
    #         state: "NonEmptyString",
    #         secondary_availability_zone: "string",
    #         backup_retention_enabled: false,
    #         pending_modified_values: {
    #           master_user_password: "string",
    #           engine_version: "string",
    #           backup_retention_enabled: false
    #         },
    #         engine: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         latest_restorable_time: Time.now,
    #         master_username: "NonEmptyString",
    #         parameter_apply_status: "NonEmptyString",
    #         preferred_backup_window: "NonEmptyString",
    #         preferred_maintenance_window: "NonEmptyString",
    #         publicly_accessible: false,
    #         master_endpoint: {
    #           port: 1,
    #           address: "NonEmptyString"
    #         },
    #         pending_maintenance_actions: [
    #           {
    #             action: "NonEmptyString",
    #             description: "NonEmptyString",
    #             current_apply_date: Time.now
    #           }
    #         ],
    #         ca_certificate_identifier: "string"
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetRelationalDatabasesResult]
    def get_relational_databases(params = {}, options = {})
      request = build_request(:get_relational_databases, params)
      request.send_request(options)
    end

    # <p>Returns detailed information for five of the most recent <code>SetupInstanceHttps</code>
    #       requests that were ran on the target instance.</p>
    # @param [Hash, Types::GetSetupHistoryRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the resource for which you are requesting information.</p>
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetSetupHistory</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     page_token: "SetupHistoryPageToken"
    #   }
    #   options = {}
    #   response = client.get_setup_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     setup_history: [
    #       {
    #         operation_id: "NonEmptyString",
    #         request: {
    #           instance_name: "ResourceName",
    #           domain_names: ["SetupDomainName"],
    #           certificate_provider: "LetsEncrypt" # One of: ["LetsEncrypt"]
    #         },
    #         resource: {
    #           name: "ResourceName",
    #           arn: "NonEmptyString",
    #           created_at: Time.now,
    #           location: {
    #             availability_zone: "string",
    #             region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #           },
    #           resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"]
    #         },
    #         execution_details: [
    #           {
    #             command: "string",
    #             date_time: Time.now,
    #             name: "NonEmptyString",
    #             status: "succeeded" # One of: ["succeeded", "failed", "inProgress"],
    #             standard_error: "string",
    #             standard_output: "string",
    #             version: "string"
    #           }
    #         ],
    #         status: "succeeded" # One of: ["succeeded", "failed", "inProgress"]
    #       }
    #     ],
    #     next_page_token: "SetupHistoryPageToken"
    #   }
    # @return [Types::GetSetupHistoryResult]
    def get_setup_history(params = {}, options = {})
      request = build_request(:get_setup_history, params)
      request.send_request(options)
    end

    # <p>Returns information about an Amazon Lightsail static IP.</p>
    # @param [Hash, Types::GetStaticIpRequest] params
    # @option params [String] :static_ip_name
    #   <p>The name of the static IP in Lightsail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     static_ip_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_static_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     static_ip: {
    #       name: "ResourceName",
    #       arn: "NonEmptyString",
    #       support_code: "string",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       ip_address: "IpAddress",
    #       attached_to: "ResourceName",
    #       is_attached: false
    #     }
    #   }
    # @return [Types::GetStaticIpResult]
    def get_static_ip(params = {}, options = {})
      request = build_request(:get_static_ip, params)
      request.send_request(options)
    end

    # <p>Returns information about all static IPs in the user's account.</p>
    # @param [Hash, Types::GetStaticIpsRequest] params
    # @option params [String] :page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetStaticIps</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_token: "string"
    #   }
    #   options = {}
    #   response = client.get_static_ips(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     static_ips: [
    #       {
    #         name: "ResourceName",
    #         arn: "NonEmptyString",
    #         support_code: "string",
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         ip_address: "IpAddress",
    #         attached_to: "ResourceName",
    #         is_attached: false
    #       }
    #     ],
    #     next_page_token: "string"
    #   }
    # @return [Types::GetStaticIpsResult]
    def get_static_ips(params = {}, options = {})
      request = build_request(:get_static_ips, params)
      request.send_request(options)
    end

    # <p>Imports a public SSH key from a specific key pair.</p>
    # @param [Hash, Types::ImportKeyPairRequest] params
    # @option params [String] :key_pair_name
    #   <p>The name of the key pair for which you want to import the public key.</p>
    # @option params [String] :public_key_base64
    #   <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_pair_name: "ResourceName", # required
    #     public_key_base64: "Base64", # required
    #   }
    #   options = {}
    #   response = client.import_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::ImportKeyPairResult]
    def import_key_pair(params = {}, options = {})
      request = build_request(:import_key_pair, params)
      request.send_request(options)
    end

    # <p>Returns a Boolean value indicating whether your Lightsail VPC is peered.</p>
    # @param [Hash, Types::IsVpcPeeredRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.is_vpc_peered(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_peered: false
    #   }
    # @return [Types::IsVpcPeeredResult]
    def is_vpc_peered(params = {}, options = {})
      request = build_request(:is_vpc_peered, params)
      request.send_request(options)
    end

    # <p>Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses
    #       allowed to connect to the instance through the ports, and the protocol.</p>
    #          <p>The <code>OpenInstancePublicPorts</code> action supports tag-based access control via
    #       resource tags applied to the resource identified by <code>instanceName</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::OpenInstancePublicPortsRequest] params
    # @option params [Types::PortInfo] :port_info
    #   <p>An object to describe the ports to open for the specified instance.</p>
    # @option params [String] :instance_name
    #   <p>The name of the instance for which to open ports.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     port_info: { # required
    #       from_port: 1,
    #       to_port: 1,
    #       protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #       cidrs: ["string"],
    #       ipv6_cidrs: ["string"],
    #       cidr_list_aliases: ["string"]
    #     },
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.open_instance_public_ports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::OpenInstancePublicPortsResult]
    def open_instance_public_ports(params = {}, options = {})
      request = build_request(:open_instance_public_ports, params)
      request.send_request(options)
    end

    # <p>Peers the Lightsail VPC with the user's default VPC.</p>
    # @param [Hash, Types::PeerVpcRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.peer_vpc(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::PeerVpcResult]
    def peer_vpc(params = {}, options = {})
      request = build_request(:peer_vpc, params)
      request.send_request(options)
    end

    # <p>Creates or updates an alarm, and associates it with the specified metric.</p>
    #          <p>An alarm is used to monitor a single metric for one of your resources. When a metric
    #       condition is met, the alarm can notify you by email, SMS text message, and a banner displayed
    #       on the Amazon Lightsail console. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms
    #         in Amazon Lightsail</a>.</p>
    #          <p>When this action creates an alarm, the alarm state is immediately set to
    #         <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set
    #       appropriately. Any actions associated with the new state are then executed.</p>
    #          <p>When you update an existing alarm, its state is left unchanged, but the update completely
    #       overwrites the previous configuration of the alarm. The alarm is then evaluated with the
    #       updated configuration.</p>
    # @param [Hash, Types::PutAlarmRequest] params
    # @option params [String] :alarm_name
    #   <p>The name for the alarm. Specify the name of an existing alarm to update, and overwrite the
    #         previous configuration of the alarm.</p>
    # @option params [String] :metric_name
    #   <p>The name of the metric to associate with the alarm.</p>
    #            <p>You can configure up to two alarms per metric.</p>
    #            <p>The following metrics are available for each resource type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Instances</b>: <code>BurstCapacityPercentage</code>,
    #               <code>BurstCapacityTime</code>, <code>CPUUtilization</code>, <code>NetworkIn</code>,
    #               <code>NetworkOut</code>, <code>StatusCheckFailed</code>,
    #               <code>StatusCheckFailed_Instance</code>, and
    #             <code>StatusCheckFailed_System</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Load balancers</b>:
    #               <code>ClientTLSNegotiationErrorCount</code>, <code>HealthyHostCount</code>,
    #               <code>UnhealthyHostCount</code>, <code>HTTPCode_LB_4XX_Count</code>,
    #               <code>HTTPCode_LB_5XX_Count</code>, <code>HTTPCode_Instance_2XX_Count</code>,
    #               <code>HTTPCode_Instance_3XX_Count</code>, <code>HTTPCode_Instance_4XX_Count</code>,
    #               <code>HTTPCode_Instance_5XX_Count</code>, <code>InstanceResponseTime</code>,
    #               <code>RejectedConnectionCount</code>, and <code>RequestCount</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Relational databases</b>: <code>CPUUtilization</code>,
    #               <code>DatabaseConnections</code>, <code>DiskQueueDepth</code>,
    #               <code>FreeStorageSpace</code>, <code>NetworkReceiveThroughput</code>, and
    #               <code>NetworkTransmitThroughput</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about these metrics, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-resource-health-metrics#available-metrics">Metrics available in Lightsail</a>.</p>
    # @option params [String] :monitored_resource_name
    #   <p>The name of the Lightsail resource that will be monitored.</p>
    #            <p>Instances, load balancers, and relational databases are the only Lightsail resources
    #         that can currently be monitored by alarms.</p>
    # @option params [String] :comparison_operator
    #   <p>The arithmetic operation to use when comparing the specified statistic to the threshold.
    #         The specified statistic value is used as the first operand.</p>
    # @option params [Float] :threshold
    #   <p>The value against which the specified statistic is compared.</p>
    # @option params [Integer] :evaluation_periods
    #   <p>The number of most recent periods over which data is compared to the specified threshold.
    #         If you are setting an "M out of N" alarm, this value (<code>evaluationPeriods</code>) is the
    #         N.</p>
    #            <p>If you are setting an alarm that requires that a number of consecutive data points be
    #         breaching to trigger the alarm, this value specifies the rolling period of time in which data
    #         points are evaluated.</p>
    #            <p>Each evaluation period is five minutes long. For example, specify an evaluation period of
    #         24 to evaluate a metric over a rolling period of two hours.</p>
    #            <p>You can specify a minimum valuation period of 1 (5 minutes), and a maximum evaluation
    #         period of 288 (24 hours).</p>
    # @option params [Integer] :datapoints_to_alarm
    #   <p>The number of data points that must be not within the specified threshold to trigger the
    #         alarm. If you are setting an "M out of N" alarm, this value (<code>datapointsToAlarm</code>)
    #         is the M.</p>
    # @option params [String] :treat_missing_data
    #   <p>Sets how this alarm will handle missing data points.</p>
    #            <p>An alarm can treat missing data in the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>breaching</code> - Assume the missing data is not within the threshold. Missing
    #             data counts towards the number of times the metric is not within the threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
    #             data does not count towards the number of times the metric is not within the
    #             threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ignore</code> - Ignore the missing data. Maintains the current alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>missing</code> - Missing data is treated as missing.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>treatMissingData</code> is not specified, the default behavior of
    #           <code>missing</code> is used.</p>
    # @option params [Array<String>] :contact_protocols
    #   <p>The contact protocols to use for the alarm, such as <code>Email</code>, <code>SMS</code>
    #         (text messaging), or both.</p>
    #            <p>A notification is sent via the specified contact protocol if notifications are enabled for
    #         the alarm, and when the alarm is triggered.</p>
    #            <p>A notification is not sent if a contact protocol is not specified, if the specified
    #         contact protocol is not configured in the Amazon Web Services Region, or if notifications are
    #         not enabled for the alarm using the <code>notificationEnabled</code> paramater.</p>
    #            <p>Use the <code>CreateContactMethod</code> action to configure a contact protocol in an
    #           Amazon Web Services Region.</p>
    # @option params [Array<String>] :notification_triggers
    #   <p>The alarm states that trigger a notification.</p>
    #            <p>An alarm has the following possible states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    #             available, or not enough data is available for the metric to determine the alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The metric is within the defined threshold.</p>
    #               </li>
    #            </ul>
    #            <p>When you specify a notification trigger, the <code>ALARM</code> state must be specified.
    #         The <code>INSUFFICIENT_DATA</code> and <code>OK</code> states can be specified in addition to
    #         the <code>ALARM</code> state.</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>OK</code> as an alarm trigger, a notification is sent when the
    #             alarm switches from an <code>ALARM</code> or <code>INSUFFICIENT_DATA</code> alarm state to
    #             an <code>OK</code> state. This can be thought of as an <i>all clear</i>
    #             alarm notification.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>INSUFFICIENT_DATA</code> as the alarm trigger, a notification is
    #             sent when the alarm switches from an <code>OK</code> or <code>ALARM</code> alarm state to
    #             an <code>INSUFFICIENT_DATA</code> state.</p>
    #               </li>
    #            </ul>
    #            <p>The notification trigger defaults to <code>ALARM</code> if you don't specify this
    #         parameter.</p>
    # @option params [Boolean] :notification_enabled
    #   <p>Indicates whether the alarm is enabled.</p>
    #            <p>Notifications are enabled by default if you don't specify this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "ResourceName", # required
    #     metric_name: "CPUUtilization" # One of: ["CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance", "StatusCheckFailed_System", "ClientTLSNegotiationErrorCount", "HealthyHostCount", "UnhealthyHostCount", "HTTPCode_LB_4XX_Count", "HTTPCode_LB_5XX_Count", "HTTPCode_Instance_2XX_Count", "HTTPCode_Instance_3XX_Count", "HTTPCode_Instance_4XX_Count", "HTTPCode_Instance_5XX_Count", "InstanceResponseTime", "RejectedConnectionCount", "RequestCount", "DatabaseConnections", "DiskQueueDepth", "FreeStorageSpace", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "BurstCapacityTime", "BurstCapacityPercentage"], # required
    #     monitored_resource_name: "ResourceName", # required
    #     comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], # required
    #     threshold: 1.0, # required
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     treat_missing_data: "breaching" # One of: ["breaching", "notBreaching", "ignore", "missing"],
    #     contact_protocols: ["Email" # One of: ["Email", "SMS"]],
    #     notification_triggers: ["OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"]],
    #     notification_enabled: false
    #   }
    #   options = {}
    #   response = client.put_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::PutAlarmResult]
    def put_alarm(params = {}, options = {})
      request = build_request(:put_alarm, params)
      request.send_request(options)
    end

    # <p>Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses
    #       allowed to connect to the instance through the ports, and the protocol. This action also
    #       closes all currently open ports that are not included in the request. Include all of the ports
    #       and the protocols you want to open in your <code>PutInstancePublicPorts</code>request. Or use
    #       the <code>OpenInstancePublicPorts</code> action to open ports without closing currently open
    #       ports.</p>
    #          <p>The <code>PutInstancePublicPorts</code> action supports tag-based access control via
    #       resource tags applied to the resource identified by <code>instanceName</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::PutInstancePublicPortsRequest] params
    # @option params [Array<Types::PortInfo>] :port_infos
    #   <p>An array of objects to describe the ports to open for the specified instance.</p>
    # @option params [String] :instance_name
    #   <p>The name of the instance for which to open ports.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     port_infos: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp" # One of: ["tcp", "all", "udp", "icmp", "icmpv6"],
    #         cidrs: ["string"],
    #         ipv6_cidrs: ["string"],
    #         cidr_list_aliases: ["string"]
    #       }
    #     ],
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.put_instance_public_ports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::PutInstancePublicPortsResult]
    def put_instance_public_ports(params = {}, options = {})
      request = build_request(:put_instance_public_ports, params)
      request.send_request(options)
    end

    # <p>Restarts a specific instance.</p>
    #          <p>The <code>reboot instance</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>instance name</code>. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::RebootInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance to reboot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.reboot_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::RebootInstanceResult]
    def reboot_instance(params = {}, options = {})
      request = build_request(:reboot_instance, params)
      request.send_request(options)
    end

    # <p>Restarts a specific database in Amazon Lightsail.</p>
    #          <p>The <code>reboot relational database</code> operation supports tag-based access control
    #       via resource tags applied to the resource identified by relationalDatabaseName. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::RebootRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database to reboot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.reboot_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::RebootRelationalDatabaseResult]
    def reboot_relational_database(params = {}, options = {})
      request = build_request(:reboot_relational_database, params)
      request.send_request(options)
    end

    # <p>Registers a container image to your Amazon Lightsail container service.</p>
    #          <note>
    #             <p>This action is not required if you install and use the Lightsail Control
    #         (lightsailctl) plugin to push container images to your Lightsail container service. For
    #         more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images">Pushing and managing container images on your Amazon Lightsail container services</a>
    #         in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::RegisterContainerImageRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service for which to register a container image.</p>
    # @option params [String] :label
    #   <p>The label for the container image when it's registered to the container service.</p>
    #            <p>Use a descriptive label that you can use to track the different versions of your
    #         registered container images.</p>
    #            <p>Use the <code>GetContainerImages</code> action to return the container images registered
    #         to a Lightsail container service. The label is the <code><imagelabel></code> portion
    #         of the following image name example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>:container-service-1.<imagelabel>.1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If the name of your container service is <code>mycontainerservice</code>, and the label
    #         that you specify is <code>mystaticwebsite</code>, then the name of the registered container
    #         image will be <code>:mycontainerservice.mystaticwebsite.1</code>.</p>
    #            <p>The number at the end of these image name examples represents the version of the
    #         registered container image. If you push and register another container image to the same
    #         Lightsail container service, with the same label, then the version number for the new
    #         registered container image will be <code>2</code>. If you push and register another container
    #         image, the version number will be <code>3</code>, and so on.</p>
    # @option params [String] :digest
    #   <p>The digest of the container image to be registered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     label: "ContainerLabel", # required
    #     digest: "string", # required
    #   }
    #   options = {}
    #   response = client.register_container_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_image: {
    #       image: "string",
    #       digest: "string",
    #       created_at: Time.now
    #     }
    #   }
    # @return [Types::RegisterContainerImageResult]
    def register_container_image(params = {}, options = {})
      request = build_request(:register_container_image, params)
      request.send_request(options)
    end

    # <p>Deletes a specific static IP from your account.</p>
    # @param [Hash, Types::ReleaseStaticIpRequest] params
    # @option params [String] :static_ip_name
    #   <p>The name of the static IP to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     static_ip_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.release_static_ip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ReleaseStaticIpResult]
    def release_static_ip(params = {}, options = {})
      request = build_request(:release_static_ip, params)
      request.send_request(options)
    end

    # <p>Deletes currently cached content from your Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>After resetting the cache, the next time a content request is made, your distribution
    #       pulls, serves, and caches it from the origin.</p>
    # @param [Hash, Types::ResetDistributionCacheRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution for which to reset cache.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.reset_distribution_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "string",
    #     create_time: Time.now,
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::ResetDistributionCacheResult]
    def reset_distribution_cache(params = {}, options = {})
      request = build_request(:reset_distribution_cache, params)
      request.send_request(options)
    end

    # <p>Sends a verification request to an email contact method to ensure it's owned by the
    #       requester. SMS contact methods don't need to be verified.</p>
    #          <p>A contact method is used to send you notifications about your Amazon Lightsail resources.
    #       You can add one email address and one mobile phone number contact method in each Amazon Web Services Region. However, SMS text messaging is not supported in some Amazon Web Services
    #       Regions, and SMS text messages cannot be sent to some countries/regions. For more information,
    #       see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    #          <p>A verification request is sent to the contact method when you initially create it. Use
    #       this action to send another verification request if a previous verification request was
    #       deleted, or has expired.</p>
    #          <important>
    #             <p>Notifications are not sent to an email contact method until after it is verified, and
    #         confirmed as valid.</p>
    #          </important>
    # @param [Hash, Types::SendContactMethodVerificationRequest] params
    # @option params [String] :protocol
    #   <p>The protocol to verify, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocol: "Email" # One of: ["Email"], # required
    #   }
    #   options = {}
    #   response = client.send_contact_method_verification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::SendContactMethodVerificationResult]
    def send_contact_method_verification(params = {}, options = {})
      request = build_request(:send_contact_method_verification, params)
      request.send_request(options)
    end

    # <p>Sets the IP address type for an Amazon Lightsail resource.</p>
    #          <p>Use this action to enable dual-stack for a resource, which enables IPv4 and IPv6 for the
    #       specified resource. Alternately, you can use this action to disable dual-stack, and enable
    #       IPv4 only.</p>
    # @param [Hash, Types::SetIpAddressTypeRequest] params
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The resource values are <code>Distribution</code>, <code>Instance</code>, and
    #           <code>LoadBalancer</code>.</p>
    #            <note>
    #               <p>Distribution-related APIs are available only in the N. Virginia (<code>us-east-1</code>)
    #             Amazon Web Services Region. Set your Amazon Web Services Region configuration to
    #             <code>us-east-1</code> to create, view, or edit distributions.</p>
    #            </note>
    # @option params [String] :resource_name
    #   <p>The name of the resource for which to set the IP address type.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type to set for the specified resource.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    # @option params [Boolean] :accept_bundle_update
    #   <p>Required parameter to accept the instance bundle update when changing to, and from,
    #         IPv6-only.</p>
    #            <note>
    #               <p>An instance bundle will change when switching from <code>dual-stack</code> or
    #             <code>ipv4</code>, to <code>ipv6</code>. It also changes when switching from
    #             <code>ipv6</code>, to <code>dual-stack</code> or <code>ipv4</code>.</p>
    #               <p>You must include this parameter in the command to update the bundle. For example, if you
    #           switch from <code>dual-stack</code> to <code>ipv6</code>, the bundle will be updated, and
    #           billing for the IPv6-only instance bundle begins immediately.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"], # required
    #     resource_name: "ResourceName", # required
    #     ip_address_type: "dualstack" # One of: ["dualstack", "ipv4", "ipv6"], # required
    #     accept_bundle_update: false
    #   }
    #   options = {}
    #   response = client.set_ip_address_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::SetIpAddressTypeResult]
    def set_ip_address_type(params = {}, options = {})
      request = build_request(:set_ip_address_type, params)
      request.send_request(options)
    end

    # <p>Sets the Amazon Lightsail resources that can access the specified Lightsail
    #       bucket.</p>
    #          <p>Lightsail buckets currently support setting access for Lightsail instances in the same
    #         Amazon Web Services Region.</p>
    # @param [Hash, Types::SetResourceAccessForBucketRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the Lightsail instance for which to set bucket access. The instance must be
    #         in a running or stopped state.</p>
    # @option params [String] :bucket_name
    #   <p>The name of the bucket for which to set access to another Lightsail resource.</p>
    # @option params [String] :access
    #   <p>The access setting.</p>
    #            <p>The following access settings are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>allow</code> - Allows access to the bucket and its objects.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deny</code> - Denies access to the bucket and its objects. Use this setting to
    #             remove access for a resource previously set to <code>allow</code>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     bucket_name: "BucketName", # required
    #     access: "allow" # One of: ["allow", "deny"], # required
    #   }
    #   options = {}
    #   response = client.set_resource_access_for_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::SetResourceAccessForBucketResult]
    def set_resource_access_for_bucket(params = {}, options = {})
      request = build_request(:set_resource_access_for_bucket, params)
      request.send_request(options)
    end

    # <p>Creates an SSL/TLS certificate that secures traffic for your website. After the
    #       certificate is created, it is installed on the specified Lightsail instance.</p>
    #          <p>If you provide more than one domain name in the request, at least one name must be less
    #       than or equal to 63 characters in length.</p>
    # @param [Hash, Types::SetupInstanceHttpsRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the Lightsail instance.</p>
    # @option params [String] :email_address
    #   <p>The contact method for SSL/TLS certificate renewal alerts. You can enter one email
    #         address. </p>
    # @option params [Array<String>] :domain_names
    #   <p>The name of the domain and subdomains that were specified for the SSL/TLS
    #         certificate.</p>
    # @option params [String] :certificate_provider
    #   <p>The certificate authority that issues the SSL/TLS certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     email_address: "EmailAddress", # required
    #     domain_names: ["SetupDomainName"], # required
    #     certificate_provider: "LetsEncrypt" # One of: ["LetsEncrypt"], # required
    #   }
    #   options = {}
    #   response = client.setup_instance_https(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::SetupInstanceHttpsResult]
    def setup_instance_https(params = {}, options = {})
      request = build_request(:setup_instance_https, params)
      request.send_request(options)
    end

    # <p>Initiates a graphical user interface (GUI) session that’s used to access a virtual
    #       computer’s operating system and application. The session will be active for 1 hour. Use this
    #       action to resume the session after it expires. </p>
    # @param [Hash, Types::StartGUISessionRequest] params
    # @option params [String] :resource_name
    #   <p>The resource name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.start_gui_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StartGUISessionResult]
    def start_gui_session(params = {}, options = {})
      request = build_request(:start_gui_session, params)
      request.send_request(options)
    end

    # <p>Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance,
    #       use the <code>reboot instance</code> operation.</p>
    #          <note>
    #             <p>When you start a stopped instance, Lightsail assigns a new public IP address to the
    #         instance. To use the same IP address after stopping and starting an instance, create a
    #         static IP address and attach it to the instance. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip">Amazon Lightsail Developer Guide</a>.</p>
    #          </note>
    #          <p>The <code>start instance</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>instance name</code>. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::StartInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance (a virtual private server) to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.start_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StartInstanceResult]
    def start_instance(params = {}, options = {})
      request = build_request(:start_instance, params)
      request.send_request(options)
    end

    # <p>Starts a specific database from a stopped state in Amazon Lightsail. To restart a database,
    #       use the <code>reboot relational database</code> operation.</p>
    #          <p>The <code>start relational database</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by relationalDatabaseName. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::StartRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.start_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StartRelationalDatabaseResult]
    def start_relational_database(params = {}, options = {})
      request = build_request(:start_relational_database, params)
      request.send_request(options)
    end

    # <p>Terminates a web-based Amazon DCV session that’s used to access a virtual computer’s
    #       operating system or application. The session will close and any unsaved data will be
    #       lost.</p>
    # @param [Hash, Types::StopGUISessionRequest] params
    # @option params [String] :resource_name
    #   <p>The resource name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_gui_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StopGUISessionResult]
    def stop_gui_session(params = {}, options = {})
      request = build_request(:stop_gui_session, params)
      request.send_request(options)
    end

    # <p>Stops a specific Amazon Lightsail instance that is currently running.</p>
    #          <note>
    #             <p>When you start a stopped instance, Lightsail assigns a new public IP address to the
    #         instance. To use the same IP address after stopping and starting an instance, create a
    #         static IP address and attach it to the instance. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip">Amazon Lightsail Developer Guide</a>.</p>
    #          </note>
    #          <p>The <code>stop instance</code> operation supports tag-based access control via resource
    #       tags applied to the resource identified by <code>instance name</code>. For more information,
    #       see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::StopInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance (a virtual private server) to stop.</p>
    # @option params [Boolean] :force
    #   <p>When set to <code>True</code>, forces a Lightsail instance that is stuck in a
    #           <code>stopping</code> state to stop.</p>
    #            <important>
    #               <p>Only use the <code>force</code> parameter if your instance is stuck in the
    #             <code>stopping</code> state. In any other state, your instance should stop normally
    #           without adding this parameter to your API request.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.stop_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StopInstanceResult]
    def stop_instance(params = {}, options = {})
      request = build_request(:stop_instance, params)
      request.send_request(options)
    end

    # <p>Stops a specific database that is currently running in Amazon Lightsail.</p>
    #          <note>
    #             <p>If you don't manually start your database instance after it has been stopped for seven
    #         consecutive days, Amazon Lightsail automatically starts it for you. This action helps ensure
    #         that your database instance doesn't fall behind on any required maintenance updates.</p>
    #          </note>
    #          <p>The <code>stop relational database</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by relationalDatabaseName. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::StopRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database to stop.</p>
    # @option params [String] :relational_database_snapshot_name
    #   <p>The name of your new database snapshot to be created before stopping your database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     relational_database_snapshot_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.stop_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::StopRelationalDatabaseResult]
    def stop_relational_database(params = {}, options = {})
      request = build_request(:stop_relational_database, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified Amazon Lightsail resource. Each resource can have a
    #       maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys must be unique
    #       per resource. For more information about tags, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #          <p>The <code>tag resource</code> operation supports tag-based access control via request tags
    #       and resource tags applied to the resource identified by <code>resource name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the resource to which you are adding tags.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add a tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key and optional value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     resource_arn: "ResourceArn",
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Tests an alarm by displaying a banner on the Amazon Lightsail console. If a notification
    #       trigger is configured for the specified alarm, the test also sends a notification to the
    #       notification protocol (<code>Email</code> and/or <code>SMS</code>) configured for the
    #       alarm.</p>
    #          <p>An alarm is used to monitor a single metric for one of your resources. When a metric
    #       condition is met, the alarm can notify you by email, SMS text message, and a banner displayed
    #       on the Amazon Lightsail console. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms
    #         in Amazon Lightsail</a>.</p>
    # @param [Hash, Types::TestAlarmRequest] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm to test.</p>
    # @option params [String] :state
    #   <p>The alarm state to test.</p>
    #            <p>An alarm has the following possible states that can be tested:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    #             available, or not enough data is available for the metric to determine the alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The metric is within the defined threshold.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "ResourceName", # required
    #     state: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"], # required
    #   }
    #   options = {}
    #   response = client.test_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::TestAlarmResult]
    def test_alarm(params = {}, options = {})
      request = build_request(:test_alarm, params)
      request.send_request(options)
    end

    # <p>Unpeers the Lightsail VPC from the user's default VPC.</p>
    # @param [Hash, Types::UnpeerVpcRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.unpeer_vpc(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::UnpeerVpcResult]
    def unpeer_vpc(params = {}, options = {})
      request = build_request(:unpeer_vpc, params)
      request.send_request(options)
    end

    # <p>Deletes the specified set of tag keys and their values from the specified Amazon Lightsail
    #       resource.</p>
    #          <p>The <code>untag resource</code> operation supports tag-based access control via request
    #       tags and resource tags applied to the resource identified by <code>resource name</code>. For
    #       more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the resource from which you are removing a tag.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove a tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to delete from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     resource_arn: "ResourceArn",
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Lightsail bucket.</p>
    #          <p>Use this action to update the configuration of an existing bucket, such as versioning,
    #       public accessibility, and the Amazon Web Services accounts that can access the bucket.</p>
    # @param [Hash, Types::UpdateBucketRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket to update.</p>
    # @option params [Types::AccessRules] :access_rules
    #   <p>An object that sets the public accessibility of objects in the specified bucket.</p>
    # @option params [String] :versioning
    #   <p>Specifies whether to enable or suspend versioning of objects in the bucket.</p>
    #            <p>The following options can be specified:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Enabled</code> - Enables versioning of objects in the specified bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Suspended</code> - Suspends versioning of objects in the specified bucket.
    #             Existing object versions are retained.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :readonly_access_accounts
    #   <p>An array of strings to specify the Amazon Web Services account IDs that can access the
    #         bucket.</p>
    #            <p>You can give a maximum of 10 Amazon Web Services accounts access to a bucket.</p>
    # @option params [Types::BucketAccessLogConfig] :access_log_config
    #   <p>An object that describes the access log configuration for the bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     access_rules: {
    #       get_object: "public" # One of: ["public", "private"],
    #       allow_public_overrides: false
    #     },
    #     versioning: "NonEmptyString",
    #     readonly_access_accounts: ["NonEmptyString"],
    #     access_log_config: {
    #       enabled: false, # required
    #       destination: "BucketName",
    #       prefix: "BucketAccessLogPrefix"
    #     }
    #   }
    #   options = {}
    #   response = client.update_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bucket: {
    #       resource_type: "NonEmptyString",
    #       access_rules: {
    #         get_object: "public" # One of: ["public", "private"],
    #         allow_public_overrides: false
    #       },
    #       arn: "NonEmptyString",
    #       bundle_id: "NonEmptyString",
    #       created_at: Time.now,
    #       url: "NonEmptyString",
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       name: "BucketName",
    #       support_code: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       object_versioning: "NonEmptyString",
    #       able_to_update_bundle: false,
    #       readonly_access_accounts: ["NonEmptyString"],
    #       resources_receiving_access: [
    #         {
    #           name: "NonEmptyString",
    #           resource_type: "NonEmptyString"
    #         }
    #       ],
    #       state: {
    #         code: "NonEmptyString",
    #         message: "string"
    #       },
    #       access_log_config: {
    #         enabled: false, # required
    #         destination: "BucketName",
    #         prefix: "BucketAccessLogPrefix"
    #       }
    #     },
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateBucketResult]
    def update_bucket(params = {}, options = {})
      request = build_request(:update_bucket, params)
      request.send_request(options)
    end

    # <p>Updates the bundle, or storage plan, of an existing Amazon Lightsail bucket.</p>
    #          <p>A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a
    #       bucket. You can update a bucket's bundle only one time within a monthly Amazon Web Services
    #       billing cycle. To determine if you can update a bucket's bundle, use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html">GetBuckets</a> action. The
    #         <code>ableToUpdateBundle</code> parameter in the response will indicate whether you can
    #       currently update a bucket's bundle.</p>
    #          <p>Update a bucket's bundle if it's consistently going over its storage space or data
    #       transfer quota, or if a bucket's usage is consistently in the lower range of its storage space
    #       or data transfer quota. Due to the unpredictable usage fluctuations that a bucket might
    #       experience, we strongly recommend that you update a bucket's bundle only as a long-term
    #       strategy, instead of as a short-term, monthly cost-cutting measure. Choose a bucket bundle
    #       that will provide the bucket with ample storage space and data transfer for a long time to
    #       come.</p>
    # @param [Hash, Types::UpdateBucketBundleRequest] params
    # @option params [String] :bucket_name
    #   <p>The name of the bucket for which to update the bundle.</p>
    # @option params [String] :bundle_id
    #   <p>The ID of the new bundle to apply to the bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html">GetBucketBundles</a> action to get a list of
    #         bundle IDs that you can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "BucketName", # required
    #     bundle_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.update_bucket_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateBucketBundleResult]
    def update_bucket_bundle(params = {}, options = {})
      request = build_request(:update_bucket_bundle, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of your Amazon Lightsail container service, such as its power,
    #       scale, and public domain names.</p>
    # @param [Hash, Types::UpdateContainerServiceRequest] params
    # @option params [String] :service_name
    #   <p>The name of the container service to update.</p>
    # @option params [String] :power
    #   <p>The power for the container service.</p>
    #            <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
    #         container service. The <code>power</code> and <code>scale</code> of a container service makes
    #         up its configured capacity. To determine the monthly price of your container service, multiply
    #         the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
    #         the service.</p>
    #            <p>Use the <code>GetContainerServicePowers</code> action to view the specifications of each
    #         power option.</p>
    # @option params [Integer] :scale
    #   <p>The scale for the container service.</p>
    #            <p>The scale specifies the allocated compute nodes of the container service. The
    #           <code>power</code> and <code>scale</code> of a container service makes up its configured
    #         capacity. To determine the monthly price of your container service, multiply the base price of
    #         the <code>power</code> with the <code>scale</code> (the number of nodes) of the
    #         service.</p>
    # @option params [Boolean] :is_disabled
    #   <p>A Boolean value to indicate whether the container service is disabled.</p>
    # @option params [Hash<String, Array<String>>] :public_domain_names
    #   <p>The public domain names to use with the container service, such as
    #           <code>example.com</code> and <code>www.example.com</code>.</p>
    #            <p>You can specify up to four public domain names for a container service. The domain names
    #         that you specify are used when you create a deployment with a container configured as the
    #         public endpoint of your container service.</p>
    #            <p>If you don't specify public domain names, then you can use the default domain of the
    #         container service.</p>
    #            <important>
    #               <p>You must create and validate an SSL/TLS certificate before you can use public domain
    #           names with your container service. Use the <code>CreateCertificate</code> action to create a
    #           certificate for the public domain names you want to use with your container service.</p>
    #            </important>
    #            <p>You can specify public domain names using a string to array map as shown in the example
    #         later on this page.</p>
    # @option params [Types::PrivateRegistryAccessRequest] :private_registry_access
    #   <p>An object to describe the configuration for the container service to access private
    #         container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private
    #         repositories.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ContainerServiceName", # required
    #     power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"],
    #     scale: 1,
    #     is_disabled: false,
    #     public_domain_names: {
    #       "string" => ["string"]
    #     },
    #     private_registry_access: {
    #       ecr_image_puller_role: {
    #         is_active: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_container_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_service: {
    #       container_service_name: "ContainerServiceName",
    #       arn: "NonEmptyString",
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       power: "nano" # One of: ["nano", "micro", "small", "medium", "large", "xlarge"],
    #       power_id: "string",
    #       state: "PENDING" # One of: ["PENDING", "READY", "RUNNING", "UPDATING", "DELETING", "DISABLED", "DEPLOYING"],
    #       state_detail: {
    #         code: "CREATING_SYSTEM_RESOURCES" # One of: ["CREATING_SYSTEM_RESOURCES", "CREATING_NETWORK_INFRASTRUCTURE", "PROVISIONING_CERTIFICATE", "PROVISIONING_SERVICE", "CREATING_DEPLOYMENT", "EVALUATING_HEALTH_CHECK", "ACTIVATING_DEPLOYMENT", "CERTIFICATE_LIMIT_EXCEEDED", "UNKNOWN_ERROR"],
    #         message: "string"
    #       },
    #       scale: 1,
    #       current_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       next_deployment: {
    #         version: 1,
    #         state: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "INACTIVE", "FAILED"],
    #         containers: {
    #           "ContainerName" => {
    #             image: "string",
    #             command: ["string"],
    #             environment: {
    #               "string" => "string"
    #             },
    #             ports: {
    #               "string" => "HTTP" # One of: ["HTTP", "HTTPS", "TCP", "UDP"]
    #             }
    #           }
    #         },
    #         public_endpoint: {
    #           container_name: "string",
    #           container_port: 1,
    #           health_check: {
    #             healthy_threshold: 1,
    #             unhealthy_threshold: 1,
    #             timeout_seconds: 1,
    #             interval_seconds: 1,
    #             path: "string",
    #             success_codes: "string"
    #           }
    #         },
    #         created_at: Time.now
    #       },
    #       is_disabled: false,
    #       principal_arn: "string",
    #       private_domain_name: "string",
    #       public_domain_names: {
    #         "string" => ["string"]
    #       },
    #       url: "string",
    #       private_registry_access: {
    #         ecr_image_puller_role: {
    #           is_active: false,
    #           principal_arn: "string"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateContainerServiceResult]
    def update_container_service(params = {}, options = {})
      request = build_request(:update_container_service, params)
      request.send_request(options)
    end

    # <p>Updates an existing Amazon Lightsail content delivery network (CDN) distribution.</p>
    #          <p>Use this action to update the configuration of your existing distribution.</p>
    # @param [Hash, Types::UpdateDistributionRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution to update.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @option params [Types::InputOrigin] :origin
    #   <p>An object that describes the origin resource for the distribution, such as a Lightsail
    #         instance, bucket, or load balancer.</p>
    #            <p>The distribution pulls, caches, and serves content from the origin.</p>
    # @option params [Types::CacheBehavior] :default_cache_behavior
    #   <p>An object that describes the default cache behavior for the distribution.</p>
    # @option params [Types::CacheSettings] :cache_behavior_settings
    #   <p>An object that describes the cache behavior settings for the distribution.</p>
    #            <note>
    #               <p>The <code>cacheBehaviorSettings</code> specified in your
    #             <code>UpdateDistributionRequest</code> will replace your distribution's existing
    #           settings.</p>
    #            </note>
    # @option params [Array<Types::CacheBehaviorPerPath>] :cache_behaviors
    #   <p>An array of objects that describe the per-path cache behavior for the distribution.</p>
    # @option params [Boolean] :is_enabled
    #   <p>Indicates whether to enable the distribution.</p>
    # @option params [String] :viewer_minimum_tls_protocol_version
    #   <p>Use this parameter to update the minimum TLS protocol version for the SSL/TLS certificate
    #         that's attached to the distribution.</p>
    # @option params [String] :certificate_name
    #   <p>The name of the SSL/TLS certificate that you want to attach to the distribution.</p>
    #            <p>Only certificates with a status of <code>ISSUED</code> can be attached to a
    #         distribution.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html">GetCertificates</a>
    #         action to get a list of certificate names that you can specify.</p>
    # @option params [Boolean] :use_default_certificate
    #   <p>Indicates whether the default SSL/TLS certificate is attached to the distribution. The
    #         default value is <code>true</code>. When <code>true</code>, the distribution uses the default
    #         domain name such as <code>d111111abcdef8.cloudfront.net</code>.</p>
    #            <p> Set this value to <code>false</code> to attach a new certificate to the
    #         distribution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName", # required
    #     origin: {
    #       name: "ResourceName",
    #       region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"],
    #       protocol_policy: "http-only" # One of: ["http-only", "https-only"],
    #       response_timeout: 1
    #     },
    #     default_cache_behavior: {
    #       behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #     },
    #     cache_behavior_settings: {
    #       default_ttl: 1,
    #       minimum_ttl: 1,
    #       maximum_ttl: 1,
    #       allowed_http_methods: "NonEmptyString",
    #       cached_http_methods: "NonEmptyString",
    #       forwarded_cookies: {
    #         option: "none" # One of: ["none", "allow-list", "all"],
    #         cookies_allow_list: ["string"]
    #       },
    #       forwarded_headers: {
    #         option: "none" # One of: ["none", "allow-list", "all"],
    #         headers_allow_list: ["Accept" # One of: ["Accept", "Accept-Charset", "Accept-Datetime", "Accept-Encoding", "Accept-Language", "Authorization", "CloudFront-Forwarded-Proto", "CloudFront-Is-Desktop-Viewer", "CloudFront-Is-Mobile-Viewer", "CloudFront-Is-SmartTV-Viewer", "CloudFront-Is-Tablet-Viewer", "CloudFront-Viewer-Country", "Host", "Origin", "Referer"]]
    #       },
    #       forwarded_query_strings: {
    #         option: false,
    #         query_strings_allow_list: ["string"]
    #       }
    #     },
    #     cache_behaviors: [
    #       {
    #         path: "string",
    #         behavior: "dont-cache" # One of: ["dont-cache", "cache"]
    #       }
    #     ],
    #     is_enabled: false,
    #     viewer_minimum_tls_protocol_version: "TLSv1.1_2016" # One of: ["TLSv1.1_2016", "TLSv1.2_2018", "TLSv1.2_2019", "TLSv1.2_2021"],
    #     certificate_name: "ResourceName",
    #     use_default_certificate: false
    #   }
    #   options = {}
    #   response = client.update_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::UpdateDistributionResult]
    def update_distribution(params = {}, options = {})
      request = build_request(:update_distribution, params)
      request.send_request(options)
    end

    # <p>Updates the bundle of your Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>A distribution bundle specifies the monthly network transfer quota and monthly cost of
    #       your distribution.</p>
    #          <p>Update your distribution's bundle if your distribution is going over its monthly network
    #       transfer quota and is incurring an overage fee.</p>
    #          <p>You can update your distribution's bundle only one time within your monthly Amazon Web Services billing cycle. To determine if you can update your distribution's bundle, use the
    #         <code>GetDistributions</code> action. The <code>ableToUpdateBundle</code> parameter in the
    #       result will indicate whether you can currently update your distribution's bundle.</p>
    # @param [Hash, Types::UpdateDistributionBundleRequest] params
    # @option params [String] :distribution_name
    #   <p>The name of the distribution for which to update the bundle.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    # @option params [String] :bundle_id
    #   <p>The bundle ID of the new bundle to apply to your distribution.</p>
    #            <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
    #         IDs that you can specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     distribution_name: "ResourceName",
    #     bundle_id: "string"
    #   }
    #   options = {}
    #   response = client.update_distribution_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::UpdateDistributionBundleResult]
    def update_distribution_bundle(params = {}, options = {})
      request = build_request(:update_distribution_bundle, params)
      request.send_request(options)
    end

    # <p>Updates a domain recordset after it is created.</p>
    #          <p>The <code>update domain entry</code> operation supports tag-based access control via
    #       resource tags applied to the resource identified by <code>domain name</code>. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateDomainEntryRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain recordset to update.</p>
    # @option params [Types::DomainEntry] :domain_entry
    #   <p>An array of key-value pairs containing information about the domain entry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     domain_entry: { # required
    #       id: "NonEmptyString",
    #       name: "DomainName",
    #       target: "string",
    #       is_alias: false,
    #       type: "DomainEntryType",
    #       options: {
    #         "DomainEntryOptionsKeys" => "string"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateDomainEntryResult]
    def update_domain_entry(params = {}, options = {})
      request = build_request(:update_domain_entry, params)
      request.send_request(options)
    end

    # <p>Modifies the Amazon Lightsail instance metadata parameters on a running or stopped
    #       instance. When you modify the parameters on a running instance, the <code>GetInstance</code>
    #       or <code>GetInstances</code> API operation initially responds with a state of
    #         <code>pending</code>. After the parameter modifications are successfully applied, the state
    #       changes to <code>applied</code> in subsequent <code>GetInstance</code> or
    #         <code>GetInstances</code> API calls. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-instance-metadata-service">Use IMDSv2 with an Amazon Lightsail instance</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateInstanceMetadataOptionsRequest] params
    # @option params [String] :instance_name
    #   <p>The name of the instance for which to update metadata parameters.</p>
    # @option params [String] :http_tokens
    #   <p>The state of token usage for your instance metadata requests. If the parameter is not
    #         specified in the request, the default state is <code>optional</code>.</p>
    #            <p>If the state is <code>optional</code>, you can choose whether to retrieve instance
    #         metadata with a signed token header on your request. If you retrieve the IAM role credentials
    #         without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role
    #         credentials by using a valid signed token, the version 2.0 role credentials are
    #         returned.</p>
    #            <p>If the state is <code>required</code>, you must send a signed token header with all
    #         instance metadata retrieval requests. In this state, retrieving the IAM role credential always
    #         returns the version 2.0 credentials. The version 1.0 credentials are not available.</p>
    # @option params [String] :http_endpoint
    #   <p>Enables or disables the HTTP metadata endpoint on your instances. If this parameter is not
    #         specified, the existing state is maintained.</p>
    #            <p>If you specify a value of <code>disabled</code>, you cannot access your instance
    #         metadata.</p>
    # @option params [Integer] :http_put_response_hop_limit
    #   <p>The desired HTTP PUT response hop limit for instance metadata requests. A larger number
    #         means that the instance metadata requests can travel farther. If no parameter is specified,
    #         the existing state is maintained.</p>
    # @option params [String] :http_protocol_ipv6
    #   <p>Enables or disables the IPv6 endpoint for the instance metadata service. This setting
    #         applies only when the HTTP metadata endpoint is enabled.</p>
    #            <note>
    #               <p>This parameter is available only for instances in the Europe (Stockholm) Amazon Web Services Region (<code>eu-north-1</code>).</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "ResourceName", # required
    #     http_tokens: "optional" # One of: ["optional", "required"],
    #     http_endpoint: "disabled" # One of: ["disabled", "enabled"],
    #     http_put_response_hop_limit: 1,
    #     http_protocol_ipv6: "disabled" # One of: ["disabled", "enabled"]
    #   }
    #   options = {}
    #   response = client.update_instance_metadata_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "NonEmptyString",
    #       resource_name: "ResourceName",
    #       resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #       created_at: Time.now,
    #       location: {
    #         availability_zone: "string",
    #         region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #       },
    #       is_terminal: false,
    #       operation_details: "string",
    #       operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #       status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #       status_changed_at: Time.now,
    #       error_code: "string",
    #       error_details: "string"
    #     }
    #   }
    # @return [Types::UpdateInstanceMetadataOptionsResult]
    def update_instance_metadata_options(params = {}, options = {})
      request = build_request(:update_instance_metadata_options, params)
      request.send_request(options)
    end

    # <p>Updates the specified attribute for a load balancer. You can only update one attribute at
    #       a time.</p>
    #          <p>The <code>update load balancer attribute</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by <code>load balancer
    #         name</code>. For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateLoadBalancerAttributeRequest] params
    # @option params [String] :load_balancer_name
    #   <p>The name of the load balancer that you want to modify
    #         (<code>my-load-balancer</code>.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the attribute you want to update.</p>
    # @option params [String] :attribute_value
    #   <p>The value that you want to specify for the attribute name.</p>
    #            <p>The following values are supported depending on what you specify for the
    #           <code>attributeName</code> request parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>HealthCheckPath</code> for the <code>attributeName</code> request
    #             parameter, then the <code>attributeValue</code> request parameter must be the path to ping
    #             on the target (for example, <code>/weather/us/wa/seattle</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>SessionStickinessEnabled</code> for the
    #               <code>attributeName</code> request parameter, then the <code>attributeValue</code>
    #             request parameter must be <code>true</code> to activate session stickiness or
    #               <code>false</code> to deactivate session stickiness.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>SessionStickiness_LB_CookieDurationSeconds</code> for the
    #               <code>attributeName</code> request parameter, then the <code>attributeValue</code>
    #             request parameter must be an interger that represents the cookie duration in
    #             seconds.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>HttpsRedirectionEnabled</code> for the <code>attributeName</code>
    #             request parameter, then the <code>attributeValue</code> request parameter must be
    #               <code>true</code> to activate HTTP to HTTPS redirection or <code>false</code> to
    #             deactivate HTTP to HTTPS redirection.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>TlsPolicyName</code> for the <code>attributeName</code> request
    #             parameter, then the <code>attributeValue</code> request parameter must be the name of the
    #             TLS policy.</p>
    #                  <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html">GetLoadBalancerTlsPolicies</a> action to get a list of TLS policy names that you
    #             can specify.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_balancer_name: "ResourceName", # required
    #     attribute_name: "HealthCheckPath" # One of: ["HealthCheckPath", "SessionStickinessEnabled", "SessionStickiness_LB_CookieDurationSeconds", "HttpsRedirectionEnabled", "TlsPolicyName"], # required
    #     attribute_value: "StringMax256", # required
    #   }
    #   options = {}
    #   response = client.update_load_balancer_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateLoadBalancerAttributeResult]
    def update_load_balancer_attribute(params = {}, options = {})
      request = build_request(:update_load_balancer_attribute, params)
      request.send_request(options)
    end

    # <p>Allows the update of one or more attributes of a database in Amazon Lightsail.</p>
    #          <p>Updates are applied immediately, or in cases where the updates could result in an outage,
    #       are applied during the database's predefined maintenance window.</p>
    #          <p>The <code>update relational database</code> operation supports tag-based access control
    #       via resource tags applied to the resource identified by relationalDatabaseName. For more
    #       information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRelationalDatabaseRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your Lightsail database resource to update.</p>
    # @option params [String] :master_user_password
    #   <p>The password for the master user. The password can include any printable ASCII character
    #         except "/", """, or "@".</p>
    #            <p>My<b>SQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 41 characters.</p>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 128 characters.</p>
    # @option params [Boolean] :rotate_master_user_password
    #   <p>When <code>true</code>, the master user password is changed to a new strong password
    #         generated by Lightsail.</p>
    #            <p>Use the <code>get relational database master user password</code> operation to get the new
    #         password.</p>
    # @option params [String] :preferred_backup_window
    #   <p>The daily time range during which automated backups are created for your database if
    #         automated backups are enabled.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
    #                  <p>Example: <code>16:00-16:30</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur on your database.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #           Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>Tue:17:00-Tue:17:30</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :enable_backup_retention
    #   <p>When <code>true</code>, enables automated backup retention for your database.</p>
    #            <p>Updates are applied during the next maintenance window because this can result in an
    #         outage.</p>
    # @option params [Boolean] :disable_backup_retention
    #   <p>When <code>true</code>, disables automated backup retention for your database.</p>
    #            <p>Disabling backup retention deletes all automated database backups. Before disabling this,
    #         you may want to create a snapshot of your database using the <code>create relational database
    #           snapshot</code> operation.</p>
    #            <p>Updates are applied during the next maintenance window because this can result in an
    #         outage.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies the accessibility options for your database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    # @option params [Boolean] :apply_immediately
    #   <p>When <code>true</code>, applies changes immediately. When <code>false</code>, applies
    #         changes during the preferred maintenance window. Some changes may cause an outage.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    # @option params [String] :ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the database.</p>
    # @option params [String] :relational_database_blueprint_id
    #   <p>This parameter is used to update the major version of the database. Enter the
    #           <code>blueprintId</code> for the major version that you want to update to.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRelationalDatabaseBlueprints.html">GetRelationalDatabaseBlueprints</a> action to get a list of available blueprint
    #         IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     master_user_password: "SensitiveString",
    #     rotate_master_user_password: false,
    #     preferred_backup_window: "string",
    #     preferred_maintenance_window: "string",
    #     enable_backup_retention: false,
    #     disable_backup_retention: false,
    #     publicly_accessible: false,
    #     apply_immediately: false,
    #     ca_certificate_identifier: "string",
    #     relational_database_blueprint_id: "string"
    #   }
    #   options = {}
    #   response = client.update_relational_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateRelationalDatabaseResult]
    def update_relational_database(params = {}, options = {})
      request = build_request(:update_relational_database, params)
      request.send_request(options)
    end

    # <p>Allows the update of one or more parameters of a database in Amazon Lightsail.</p>
    #          <p>Parameter updates don't cause outages; therefore, their application is not subject to the
    #       preferred maintenance window. However, there are two ways in which parameter updates are
    #       applied: <code>dynamic</code> or <code>pending-reboot</code>. Parameters marked with a
    #         <code>dynamic</code> apply type are applied immediately. Parameters marked with a
    #         <code>pending-reboot</code> apply type are applied only after the database is rebooted using
    #       the <code>reboot relational database</code> operation.</p>
    #          <p>The <code>update relational database parameters</code> operation supports tag-based access
    #       control via resource tags applied to the resource identified by relationalDatabaseName. For
    #       more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRelationalDatabaseParametersRequest] params
    # @option params [String] :relational_database_name
    #   <p>The name of your database for which to update parameters.</p>
    # @option params [Array<Types::RelationalDatabaseParameter>] :parameters
    #   <p>The database parameters to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     relational_database_name: "ResourceName", # required
    #     parameters: [ # required
    #       {
    #         allowed_values: "string",
    #         apply_method: "string",
    #         apply_type: "string",
    #         data_type: "string",
    #         description: "string",
    #         is_modifiable: false,
    #         parameter_name: "string",
    #         parameter_value: "string"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_relational_database_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "NonEmptyString",
    #         resource_name: "ResourceName",
    #         resource_type: "ContainerService" # One of: ["ContainerService", "Instance", "StaticIp", "KeyPair", "InstanceSnapshot", "Domain", "PeeredVpc", "LoadBalancer", "LoadBalancerTlsCertificate", "Disk", "DiskSnapshot", "RelationalDatabase", "RelationalDatabaseSnapshot", "ExportSnapshotRecord", "CloudFormationStackRecord", "Alarm", "ContactMethod", "Distribution", "Certificate", "Bucket"],
    #         created_at: Time.now,
    #         location: {
    #           availability_zone: "string",
    #           region_name: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ca-central-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "eu-north-1", "ap-southeast-3"]
    #         },
    #         is_terminal: false,
    #         operation_details: "string",
    #         operation_type: "DeleteKnownHostKeys" # One of: ["DeleteKnownHostKeys", "DeleteInstance", "CreateInstance", "StopInstance", "StartInstance", "RebootInstance", "OpenInstancePublicPorts", "PutInstancePublicPorts", "CloseInstancePublicPorts", "AllocateStaticIp", "ReleaseStaticIp", "AttachStaticIp", "DetachStaticIp", "UpdateDomainEntry", "DeleteDomainEntry", "CreateDomain", "DeleteDomain", "CreateInstanceSnapshot", "DeleteInstanceSnapshot", "CreateInstancesFromSnapshot", "CreateLoadBalancer", "DeleteLoadBalancer", "AttachInstancesToLoadBalancer", "DetachInstancesFromLoadBalancer", "UpdateLoadBalancerAttribute", "CreateLoadBalancerTlsCertificate", "DeleteLoadBalancerTlsCertificate", "AttachLoadBalancerTlsCertificate", "CreateDisk", "DeleteDisk", "AttachDisk", "DetachDisk", "CreateDiskSnapshot", "DeleteDiskSnapshot", "CreateDiskFromSnapshot", "CreateRelationalDatabase", "UpdateRelationalDatabase", "DeleteRelationalDatabase", "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteRelationalDatabaseSnapshot", "UpdateRelationalDatabaseParameters", "StartRelationalDatabase", "RebootRelationalDatabase", "StopRelationalDatabase", "EnableAddOn", "DisableAddOn", "PutAlarm", "GetAlarms", "DeleteAlarm", "TestAlarm", "CreateContactMethod", "GetContactMethods", "SendContactMethodVerification", "DeleteContactMethod", "CreateDistribution", "UpdateDistribution", "DeleteDistribution", "ResetDistributionCache", "AttachCertificateToDistribution", "DetachCertificateFromDistribution", "UpdateDistributionBundle", "SetIpAddressType", "CreateCertificate", "DeleteCertificate", "CreateContainerService", "UpdateContainerService", "DeleteContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin", "RegisterContainerImage", "DeleteContainerImage", "CreateBucket", "DeleteBucket", "CreateBucketAccessKey", "DeleteBucketAccessKey", "UpdateBucketBundle", "UpdateBucket", "SetResourceAccessForBucket", "UpdateInstanceMetadataOptions", "StartGUISession", "StopGUISession", "SetupInstanceHttps"],
    #         status: "NotStarted" # One of: ["NotStarted", "Started", "Failed", "Completed", "Succeeded"],
    #         status_changed_at: Time.now,
    #         error_code: "string",
    #         error_details: "string"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateRelationalDatabaseParametersResult]
    def update_relational_database_parameters(params = {}, options = {})
      request = build_request(:update_relational_database_parameters, params)
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
      context[:gem_name] = 'aws-sdk-lightsail'
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
