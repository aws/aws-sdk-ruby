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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:tnb)

module Aws::Tnb
  # An API client for Aws::Tnb.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TNB
    @identifier = :tnb

    add_plugin(::Aws::Tnb::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Tnb::EndpointProvider)
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

    # <p>Cancels a network operation.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @param [Hash, Types::CancelSolNetworkOperationInput] params
    # @option params [String] :ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    # @example Cancel a in-progress Sol Network Operation.
    #   # Example operation for cancel_sol_network_operation
    #   params = {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.cancel_sol_network_operation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #   }
    #   options = {}
    #   response = client.cancel_sol_network_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_sol_network_operation(params = {}, options = {})
      request = build_request(:cancel_sol_network_operation, params)
      request.send_request(options)
    end

    # <p>Creates a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network. For more information, see <a href="https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html">Function packages</a> in the
    #                <i>Amazon Web Services Telco Network Builder User Guide</i>. </p>
    #          <p>Creating a function package is the first step for creating a network in AWS TNB. This
    #          request creates an empty container with an ID. The next step is to upload the actual CSAR
    #          zip file into that empty container. To upload function package content, see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html">PutSolFunctionPackageContent</a>.</p>
    # @param [Hash, Types::CreateSolFunctionPackageInput] params
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Create a Sol function package
    #   # Example operation for create_sol_function_package
    #   params = {
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_function_package(params, options)
    #   response.to_h #=>
    #   {
    #     onboarding_state: CREATED,
    #     operational_state: DISABLED,
    #     usage_state: NOT_IN_USE,
    #     id: "fp-07aa863e53460a2a6",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:function-package/fp-07aa863e53460a2a6",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_function_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "VnfPkgId", # required
    #     arn: "VnfPkgArn", # required
    #     onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #     operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateSolFunctionPackageOutput]
    def create_sol_function_package(params = {}, options = {})
      request = build_request(:create_sol_function_package, params)
      request.send_request(options)
    end

    # <p>Creates a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed. Creating a network instance is the third step after creating a network
    #          package. For more information about network instances, <a href="https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html">Network instances</a> in the
    #                <i>Amazon Web Services Telco Network Builder User Guide</i>.</p>
    #          <p>Once you create a network instance, you can instantiate it. To instantiate a network,
    #          see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html">InstantiateSolNetworkInstance</a>.</p>
    # @param [Hash, Types::CreateSolNetworkInstanceInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID for network service descriptor.</p>
    # @option params [String] :ns_name
    #   <p>Network instance name.</p>
    # @option params [String] :ns_description
    #   <p>Network instance description.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Create a Sol Network Instance
    #   # Example operation for create_sol_network_instance
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     ns_name: "CITY Instance",
    #     ns_description: "Test network for CITY",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     id: "ni-07aa863e53460a2a6",
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-instance/ni-07aa863e53460a2a6",
    #     ns_instance_name: "CITY Instance",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #     ns_name: "String", # required
    #     ns_description: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsInstanceId", # required
    #     arn: "NsInstanceArn", # required
    #     nsd_info_id: "NsdInfoId", # required
    #     ns_instance_name: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateSolNetworkInstanceOutput]
    def create_sol_network_instance(params = {}, options = {})
      request = build_request(:create_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Creates a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on. For more information, see <a href="https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html">Network instances</a> in the
    #                <i>Amazon Web Services Telco Network Builder User Guide</i>. </p>
    #          <p>A network package consists of a network service descriptor (NSD) file (required) and any
    #          additional files (optional), such as scripts specific to your needs. For example, if you
    #          have multiple function packages in your network package, you can use the NSD to define
    #          which network functions should run in certain VPCs, subnets, or EKS clusters.</p>
    #          <p>This request creates an empty network package container with an ID. Once you create a
    #          network package, you can upload the network package content using <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html">PutSolNetworkPackageContent</a>.</p>
    # @param [Hash, Types::CreateSolNetworkPackageInput] params
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Create a Sol network package
    #   # Example operation for create_sol_network_package
    #   params = {
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_network_package(params, options)
    #   response.to_h #=>
    #   {
    #     id: "np-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #     nsd_onboarding_state: CREATED,
    #     nsd_operational_state: DISABLED,
    #     nsd_usage_state: NOT_IN_USE,
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sol_network_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsdInfoId", # required
    #     arn: "NsdInfoArn", # required
    #     nsd_onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #     nsd_operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     nsd_usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateSolNetworkPackageOutput]
    def create_sol_network_package(params = {}, options = {})
      request = build_request(:create_sol_network_package, params)
      request.send_request(options)
    end

    # <p>Deletes a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    #          <p>To delete a function package, the package must be in a disabled state. To disable a
    #          function package, see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html">UpdateSolFunctionPackage</a>. </p>
    # @param [Hash, Types::DeleteSolFunctionPackageInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>ID of the function package.</p>
    # @example Delete a function package
    #   # Example operation for delete_sol_function_package
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.delete_sol_function_package(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #   }
    #   options = {}
    #   response = client.delete_sol_function_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_sol_function_package(params = {}, options = {})
      request = build_request(:delete_sol_function_package, params)
      request.send_request(options)
    end

    # <p>Deletes a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #          <p>To delete a network instance, the instance must be in a stopped or terminated state. To
    #          terminate a network instance, see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html">TerminateSolNetworkInstance</a>.</p>
    # @param [Hash, Types::DeleteSolNetworkInstanceInput] params
    # @option params [String] :ns_instance_id
    #   <p>Network instance ID.</p>
    # @example Delete a Sol Network Instance.
    #   # Example operation for delete_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.delete_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_sol_network_instance(params = {}, options = {})
      request = build_request(:delete_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Deletes network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    #          <p>To delete a network package, the package must be in a disable state. To disable a
    #          network package, see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html">UpdateSolNetworkPackage</a>.</p>
    # @param [Hash, Types::DeleteSolNetworkPackageInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    # @example Delete a Sol network package
    #   # Example operation for delete_sol_network_package
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.delete_sol_network_package(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #   }
    #   options = {}
    #   response = client.delete_sol_network_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_sol_network_package(params = {}, options = {})
      request = build_request(:delete_sol_network_package, params)
      request.send_request(options)
    end

    # <p>Gets the details of a network function instance, including the instantiation state and
    #          metadata from the function package descriptor in the network function package.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @param [Hash, Types::GetSolFunctionInstanceInput] params
    # @option params [String] :vnf_instance_id
    #   <p>ID of the network function.</p>
    # @example Get a Sol Network Function Instance details
    #   # Example operation for get_sol_function_instance
    #   params = {
    #     vnf_instance_id: "fi-b9439c34c1ef86c54"
    #   }
    #   options = {}
    #   response = client.get_sol_function_instance(params, options)
    #   response.to_h #=>
    #   {
    #     id: "fi-b9439c34c1ef86c54",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:function-instance/fi-b9439c34c1ef86c54",
    #     ns_instance_id: "ni-07aa863e53460a2a6",
    #     vnf_pkg_id: "fp-07aa863e53460a2a6",
    #     vnfd_id: "6625a858-2157-4d74-9197-a6ff67d51f3e",
    #     vnf_provider: "VNFBuilder",
    #     vnf_product_name: "VNFBuilder-AMF",
    #     vnfd_version: "1.0",
    #     instantiation_state: INSTANTIATED,
    #     instantiated_vnf_info: {
    #       vnf_state: STARTED,
    #       vnfc_resource_info: [
    #         {
    #           metadata: {
    #             cluster: "TestCluster",
    #             node_group: "Core-EKS-TEST01-EKSNodeGroup-94BNRKWRV6MP",
    #             helm_chart: "VnfHelmChart01"
    #           }
    #         }
    #       ]
    #     },
    #     metadata: {
    #       created_at: Time.parse("2022-06-10T19:48:33Z"),
    #       last_modified: Time.parse("2022-06-10T19:48:33Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_instance_id: "VnfInstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_function_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "VnfInstanceId", # required
    #     arn: "VnfInstanceArn", # required
    #     ns_instance_id: "NsInstanceId", # required
    #     vnf_pkg_id: "VnfPkgId", # required
    #     vnfd_id: "VnfdId", # required
    #     vnf_provider: "String",
    #     vnf_product_name: "String",
    #     vnfd_version: "String",
    #     instantiation_state: "INSTANTIATED" # One of: ["INSTANTIATED", "NOT_INSTANTIATED"], # required
    #     instantiated_vnf_info: {
    #       vnf_state: "STARTED" # One of: ["STARTED", "STOPPED"],
    #       vnfc_resource_info: [
    #         {
    #           metadata: {
    #             node_group: "String",
    #             cluster: "String",
    #             helm_chart: "String"
    #           }
    #         }
    #       ]
    #     },
    #     metadata: { # required
    #       created_at: Time.now, # required
    #       last_modified: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSolFunctionInstanceOutput]
    def get_sol_function_instance(params = {}, options = {})
      request = build_request(:get_sol_function_instance, params)
      request.send_request(options)
    end

    # <p>Gets the details of an individual function package, such as the operational state and
    #          whether the package is in use.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network..</p>
    # @param [Hash, Types::GetSolFunctionPackageInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>ID of the function package.</p>
    # @example Describe a function package with correct vnfPkgId
    #   # Example operation for get_sol_function_package
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.get_sol_function_package(params, options)
    #   response.to_h #=>
    #   {
    #     id: "fp-07aa863e53460a2a6",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:function-package/fp-07aa863e53460a2a6",
    #     onboarding_state: ONBOARDED,
    #     operational_state: ENABLED,
    #     usage_state: IN_USE,
    #     vnfd_id: "eefaac4a-cf5c-4b1f-869e-9d31a9fa6d71",
    #     vnf_provider: "VNFBuilder",
    #     vnf_product_name: "NRF",
    #     vnfd_version: "1.0.0",
    #     metadata: {
    #       created_at: Time.parse("2022-06-10T19:48:34Z"),
    #       last_modified: Time.parse("2022-06-10T21:48:33Z"),
    #       vnfd: {
    #         overrides: [
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_function_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "VnfPkgId", # required
    #     arn: "VnfPkgArn", # required
    #     onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #     operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #     vnfd_id: "String",
    #     vnf_provider: "String",
    #     vnf_product_name: "String",
    #     vnfd_version: "String",
    #     metadata: {
    #       vnfd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       },
    #       created_at: Time.now, # required
    #       last_modified: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSolFunctionPackageOutput]
    def get_sol_function_package(params = {}, options = {})
      request = build_request(:get_sol_function_package, params)
      request.send_request(options)
    end

    # <p>Gets the contents of a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::GetSolFunctionPackageContentInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>ID of the function package.</p>
    # @option params [String] :accept
    #   <p>The format of the package that you want to download from the function packages.</p>
    # @example Get the content of a function package
    #   # Example operation for get_sol_function_package_content
    #   params = {
    #     accept: application/zip,
    #     vnf_pkg_id: "fp-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.get_sol_function_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     content_type: application/zip,
    #     package_content: "dGVzdCBjb250ZW50IGhlcmU="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #     accept: "application/zip" # One of: ["application/zip"], # required
    #   }
    #   options = {}
    #   response = client.get_sol_function_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     package_content: "data"
    #   }
    # @return [Types::GetSolFunctionPackageContentOutput]
    def get_sol_function_package_content(params = {}, options = {})
      request = build_request(:get_sol_function_package_content, params)
      request.send_request(options)
    end

    # <p>Gets a function package descriptor in a function package.</p>
    #          <p>A function package descriptor is a .yaml file in a function package that uses the TOSCA standard to describe how the network function in the function package should run on your network.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::GetSolFunctionPackageDescriptorInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>ID of the function package.</p>
    # @option params [String] :accept
    #   <p>Indicates which content types, expressed as MIME types, the client is able to
    #            understand.</p>
    # @example Get the descriptor of a function package
    #   # Example operation for get_sol_function_package_descriptor
    #   params = {
    #     accept: text/plain,
    #     vnf_pkg_id: "fp-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.get_sol_function_package_descriptor(params, options)
    #   response.to_h #=>
    #   {
    #     content_type: text/plain,
    #     vnfd: "dGVzdCBjb250ZW50IGhlcmU="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #     accept: "text/plain" # One of: ["text/plain"], # required
    #   }
    #   options = {}
    #   response = client.get_sol_function_package_descriptor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "text/plain" # One of: ["text/plain"],
    #     vnfd: "data"
    #   }
    # @return [Types::GetSolFunctionPackageDescriptorOutput]
    def get_sol_function_package_descriptor(params = {}, options = {})
      request = build_request(:get_sol_function_package_descriptor, params)
      request.send_request(options)
    end

    # <p>Gets the details of the network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @param [Hash, Types::GetSolNetworkInstanceInput] params
    # @option params [String] :ns_instance_id
    #   <p>ID of the network instance.</p>
    # @example Get a Sol Network Instance details
    #   # Example operation for get_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-07aa863e53460a2a6"
    #   }
    #   options = {}
    #   response = client.get_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     id: "ni-07aa863e53460a2a6",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-instance/ni-07aa863e53460a2a6",
    #     ns_instance_name: "CITY Instance",
    #     ns_instance_description: "Network service for CITY",
    #     nsd_id: "6625a858-2157-4d74-9197-a6ff67d51f3e",
    #     nsd_info_id: "np-07aa863e53460a2a6",
    #     ns_state: INSTANTIATED,
    #     metadata: {
    #       created_at: Time.parse("2022-06-10T19:48:33Z"),
    #       last_modified: Time.parse("2022-06-10T19:48:33Z")
    #     },
    #     lcm_op_info: {
    #       ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsInstanceId", # required
    #     arn: "NsInstanceArn", # required
    #     ns_instance_name: "String", # required
    #     ns_instance_description: "String", # required
    #     nsd_id: "NsdId", # required
    #     nsd_info_id: "NsdInfoId", # required
    #     ns_state: "INSTANTIATED" # One of: ["INSTANTIATED", "NOT_INSTANTIATED", "UPDATED", "IMPAIRED", "UPDATE_FAILED", "STOPPED", "DELETED", "INSTANTIATE_IN_PROGRESS", "INTENT_TO_UPDATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "TERMINATE_IN_PROGRESS"],
    #     lcm_op_info: {
    #       ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #     },
    #     metadata: { # required
    #       created_at: Time.now, # required
    #       last_modified: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSolNetworkInstanceOutput]
    def get_sol_network_instance(params = {}, options = {})
      request = build_request(:get_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Gets the details of a network operation, including the tasks involved in the network
    #          operation and the status of the tasks.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @param [Hash, Types::GetSolNetworkOperationInput] params
    # @option params [String] :ns_lcm_op_occ_id
    #   <p>The identifier of the network operation.</p>
    # @example Get Sol Network Instantiate operation
    #   # Example operation for get_sol_network_operation
    #   params = {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_operation(params, options)
    #   response.to_h #=>
    #   {
    #     id: "no-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     operation_state: COMPLETED,
    #     lcm_operation_type: INSTANTIATE,
    #     metadata: {
    #       instantiate_metadata: {
    #         nsd_info_id: "np-0d0f3e2eae4fc1ac1",
    #         additional_params_for_ns: {
    #     "cidr_block" => 10.0.0.0/16,
    #     "availability_zone" => us-west-2a
    #   }
    #       },
    #       created_at: Time.parse("2022-06-10T19:48:34Z"),
    #       last_modified: Time.parse("2022-06-10T21:48:33Z")
    #     },
    #     tasks: [
    #       {
    #         task_name: "HookExecution",
    #         task_context: {
    #           "cloudWatchLogsARN" => "arn:aws:logs:us-east-1:123456789000:log-group:/aws/codebuild/TestProject:log-stream:a4dc6b0b-2ea3-48c5-bb30-636c4f376b81"
    #         },
    #         task_status: IN_PROGRESS,
    #         task_start_time: Time.parse("2022-06-10T19:48:34Z"),
    #         task_end_time: Time.parse("2022-06-10T21:48:33Z")
    #       }
    #     ]
    #   }
    # @example Get Sol Network Update operation
    #   # Example operation for get_sol_network_operation
    #   params = {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_operation(params, options)
    #   response.to_h #=>
    #   {
    #     id: "no-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     operation_state: COMPLETED,
    #     lcm_operation_type: UPDATE,
    #     update_type: UPDATE_NS,
    #     metadata: {
    #       update_ns_metadata: {
    #         nsd_info_id: "np-0d0f3e2eae4fc1ac1",
    #         additional_params_for_ns: {
    #     "cidr_block" => 10.0.0.0/16,
    #     "availability_zone" => us-west-2a
    #   }
    #       },
    #       created_at: Time.parse("2022-06-10T19:48:34Z"),
    #       last_modified: Time.parse("2022-06-10T21:48:33Z")
    #     },
    #     tasks: [
    #       {
    #         task_name: "HookExecution",
    #         task_context: {
    #           "cloudWatchLogsARN" => "arn:aws:logs:us-east-1:123456789000:log-group:/aws/codebuild/TestProject:log-stream:a4dc6b0b-2ea3-48c5-bb30-636c4f376b81"
    #         },
    #         task_status: IN_PROGRESS,
    #         task_start_time: Time.parse("2022-06-10T19:48:34Z"),
    #         task_end_time: Time.parse("2022-06-10T21:48:33Z")
    #       }
    #     ]
    #   }
    # @example Get Sol Network Update operation
    #   # Example operation for get_sol_network_operation
    #   params = {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_operation(params, options)
    #   response.to_h #=>
    #   {
    #     id: "no-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     operation_state: COMPLETED,
    #     lcm_operation_type: UPDATE,
    #     update_type: MODIFY_VNF_INFORMATION,
    #     metadata: {
    #       modify_vnf_info_metadata: {
    #         vnf_instance_id: "fi-0d5b823eb5c2a9241",
    #         vnf_configurable_properties: {
    #     "pcf.port" => 8080,
    #     "pcf.pods" => 10
    #   }
    #       },
    #       created_at: Time.parse("2022-06-10T19:48:34Z"),
    #       last_modified: Time.parse("2022-06-10T21:48:33Z")
    #     },
    #     tasks: [
    #       {
    #         task_name: "HookExecution",
    #         task_context: {
    #           "cloudWatchLogsARN" => "arn:aws:logs:us-east-1:123456789000:log-group:/aws/codebuild/TestProject:log-stream:a4dc6b0b-2ea3-48c5-bb30-636c4f376b81"
    #         },
    #         task_status: IN_PROGRESS,
    #         task_start_time: Time.parse("2022-06-10T19:48:34Z"),
    #         task_end_time: Time.parse("2022-06-10T21:48:33Z")
    #       }
    #     ]
    #   }
    # @example Get Sol Network Instantiate operation which has a failure
    #   # Example operation for get_sol_network_operation
    #   params = {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_operation(params, options)
    #   response.to_h #=>
    #   {
    #     id: "no-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     operation_state: FAILED,
    #     lcm_operation_type: INSTANTIATE,
    #     error: {
    #       title: "InternalServerException",
    #       detail: "The service encountered an error. Sorry for the inconvenience."
    #     },
    #     metadata: {
    #       created_at: Time.parse("2022-06-10T19:48:33Z"),
    #       last_modified: Time.parse("2022-06-10T19:48:33Z")
    #     },
    #     tasks: [
    #       {
    #         task_name: "HookExecution",
    #         task_context: {
    #           "cloudWatchLogsARN" => "arn:aws:logs:us-east-1:123456789000:log-group:/aws/codebuild/TestProject:log-stream:a4dc6b0b-2ea3-48c5-bb30-636c4f376b81"
    #         },
    #         task_status: IN_PROGRESS,
    #         task_start_time: Time.parse("2022-06-10T19:48:34Z"),
    #         task_end_time: Time.parse("2022-06-10T21:48:33Z")
    #       },
    #       {
    #         task_name: "HookExecution",
    #         task_error_details: {
    #           cause: "InternalServerException",
    #           details: "The service encountered an error. Sorry for the inconvenience."
    #         },
    #         task_status: ERROR,
    #         task_start_time: Time.parse("2022-06-10T19:48:34Z"),
    #         task_end_time: Time.parse("2022-06-10T21:48:33Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_network_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsLcmOpOccId",
    #     arn: "NsLcmOpOccArn", # required
    #     operation_state: "PROCESSING" # One of: ["PROCESSING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"],
    #     ns_instance_id: "NsInstanceId",
    #     lcm_operation_type: "INSTANTIATE" # One of: ["INSTANTIATE", "UPDATE", "TERMINATE"],
    #     update_type: "MODIFY_VNF_INFORMATION" # One of: ["MODIFY_VNF_INFORMATION", "UPDATE_NS"],
    #     error: {
    #       detail: "String", # required
    #       title: "String"
    #     },
    #     metadata: {
    #       update_ns_metadata: {
    #         nsd_info_id: "NsdInfoId", # required
    #         additional_params_for_ns: ""null""
    #       },
    #       modify_vnf_info_metadata: {
    #         vnf_instance_id: "VnfInstanceId", # required
    #         vnf_configurable_properties: ""null"", # required
    #       },
    #       instantiate_metadata: {
    #         nsd_info_id: "NsdInfoId", # required
    #         additional_params_for_ns: ""null""
    #       },
    #       created_at: Time.now, # required
    #       last_modified: Time.now, # required
    #     },
    #     tasks: [
    #       {
    #         task_name: "String",
    #         task_context: {
    #           "String" => "String"
    #         },
    #         task_error_details: {
    #           cause: "ErrorCause",
    #           details: "ErrorDetails"
    #         },
    #         task_status: "SCHEDULED" # One of: ["SCHEDULED", "STARTED", "IN_PROGRESS", "COMPLETED", "ERROR", "SKIPPED", "CANCELLED"],
    #         task_start_time: Time.now,
    #         task_end_time: Time.now
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSolNetworkOperationOutput]
    def get_sol_network_operation(params = {}, options = {})
      request = build_request(:get_sol_network_operation, params)
      request.send_request(options)
    end

    # <p>Gets the details of a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @param [Hash, Types::GetSolNetworkPackageInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    # @example Describe an individual Sol network package
    #   # Example operation for get_sol_network_package
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_package(params, options)
    #   response.to_h #=>
    #   {
    #     id: "np-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #     nsd_id: "be1abe66-1fcc-11ec-9621-0242ac130002",
    #     nsd_name: "Sample-City",
    #     nsd_version: "1.0",
    #     vnf_pkg_ids: [
    #       "fp-0b627c4a170a97f79",
    #       "fp-8c253b2e898d23f92"
    #     ],
    #     nsd_onboarding_state: ONBOARDED,
    #     nsd_operational_state: ENABLED,
    #     nsd_usage_state: IN_USE,
    #     metadata: {
    #       created_at: Time.parse("2022-06-10T19:48:34Z"),
    #       last_modified: Time.parse("2022-06-10T21:48:33Z"),
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "cidr_block",
    #             default_value: "10.0.0.0/24"
    #           },
    #           {
    #             name: "some_vnf.vnf_prop"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_network_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsdInfoId", # required
    #     arn: "NsdInfoArn", # required
    #     nsd_onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #     nsd_operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     nsd_usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #     nsd_id: "NsdId", # required
    #     nsd_name: "String", # required
    #     nsd_version: "String", # required
    #     vnf_pkg_ids: ["VnfPkgId"], # required
    #     metadata: { # required
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       },
    #       created_at: Time.now, # required
    #       last_modified: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetSolNetworkPackageOutput]
    def get_sol_network_package(params = {}, options = {})
      request = build_request(:get_sol_network_package, params)
      request.send_request(options)
    end

    # <p>Gets the contents of a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @param [Hash, Types::GetSolNetworkPackageContentInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    # @option params [String] :accept
    #   <p>The format of the package you want to download from the network package.</p>
    # @example Get a network package Content
    #   # Example operation for get_sol_network_package_content
    #   params = {
    #     accept: application/zip,
    #     nsd_info_id: "np-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     content_type: application/zip,
    #     nsd_content: "dGVzdCBjb250ZW50IGhlcmU="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #     accept: "application/zip" # One of: ["application/zip"], # required
    #   }
    #   options = {}
    #   response = client.get_sol_network_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     nsd_content: "data"
    #   }
    # @return [Types::GetSolNetworkPackageContentOutput]
    def get_sol_network_package_content(params = {}, options = {})
      request = build_request(:get_sol_network_package_content, params)
      request.send_request(options)
    end

    # <p>Gets the content of the network service descriptor.</p>
    #          <p>A network service descriptor is a .yaml file in a network package that uses the TOSCA standard to describe the network functions you want to deploy and the Amazon Web Services infrastructure you want to deploy the network functions on.</p>
    # @param [Hash, Types::GetSolNetworkPackageDescriptorInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    # @example Get the descriptor of a Network Pacakge
    #   # Example operation for get_sol_network_package_descriptor
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.get_sol_network_package_descriptor(params, options)
    #   response.to_h #=>
    #   {
    #     content_type: text/plain,
    #     nsd: "dGVzdCBjb250ZW50IGhlcmU="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #   }
    #   options = {}
    #   response = client.get_sol_network_package_descriptor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "text/plain" # One of: ["text/plain"],
    #     nsd: "data"
    #   }
    # @return [Types::GetSolNetworkPackageDescriptorOutput]
    def get_sol_network_package_descriptor(params = {}, options = {})
      request = build_request(:get_sol_network_package_descriptor, params)
      request.send_request(options)
    end

    # <p>Instantiates a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #          <p>Before you can instantiate a network instance, you have to create a network instance.
    #          For more information, see <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html">CreateSolNetworkInstance</a>.</p>
    # @param [Hash, Types::InstantiateSolNetworkInstanceInput] params
    # @option params [String] :ns_instance_id
    #   <p>ID of the network instance.</p>
    # @option params [Boolean] :dry_run
    #   <p>A check for whether you have the required permissions for the action without actually making the request 
    #      and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. 
    #      Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    # @option params [JSON] :additional_params_for_ns
    #   <p>Provides values for the configurable properties.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Instantiate a Sol Network Instance
    #   # Example operation for instantiate_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.instantiate_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Instantiate a Sol Network Instance with Overrides
    #   # Example operation for instantiate_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     additional_params_for_ns: {
    #     "cidr_block" => 10.0.0.0/16,
    #     "availability_zone" => us-west-2a
    #   }
    #   }
    #   options = {}
    #   response = client.instantiate_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId", # required
    #     dry_run: false,
    #     additional_params_for_ns: ""null"",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.instantiate_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "NsLcmOpOccId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::InstantiateSolNetworkInstanceOutput]
    def instantiate_sol_network_instance(params = {}, options = {})
      request = build_request(:instantiate_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Lists network function instances.</p>
    #          <p>A network function instance is a function in a function package .</p>
    # @param [Hash, Types::ListSolFunctionInstancesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example List Sol Function instances
    #   # Example operation for list_sol_function_instances
    #   params = {}
    #   options = {}
    #   response = client.list_sol_function_instances(params, options)
    #   response.to_h #=>
    #   {
    #     function_instances: [
    #       {
    #         id: "fi-b9439c34c1ef86c54",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:function-instance/fi-b9439c34c1ef86c54",
    #         ns_instance_id: "ni-07aa863e53460a2a6",
    #         vnf_pkg_id: "fp-07aa863e53460a2a6",
    #         instantiation_state: INSTANTIATED,
    #         instantiated_vnf_info: {
    #           vnf_state: STARTED
    #         },
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       },
    #       {
    #         id: "fi-b9439c34c1efabcd1",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:function-instance/fi-b9439c34c1efabcd1",
    #         ns_instance_id: "ni-07aa863e53460a123",
    #         vnf_pkg_id: "fp-146a863e53460a2a6",
    #         instantiation_state: INSTANTIATED,
    #         instantiated_vnf_info: {
    #           vnf_state: STOPPED
    #         },
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T11:48:34Z"),
    #           last_modified: Time.parse("2023-06-28T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List Sol Function Instances with nextToken and maxResults
    #   # Example operation for list_sol_function_instances
    #   params = {
    #     max_results: 25,
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_sol_function_instances(params, options)
    #   response.to_h #=>
    #   {
    #     function_instances: [
    #       {
    #         id: "fi-b9439c34c1ef86c54",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:function-instance/fi-b9439c34c1ef86c54",
    #         ns_instance_id: "ni-07aa863e53460a2a6",
    #         vnf_pkg_id: "fp-07aa863e53460a2a6",
    #         instantiation_state: INSTANTIATED,
    #         instantiated_vnf_info: {
    #           vnf_state: STARTED
    #         },
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sol_function_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     function_instances: [
    #       {
    #         id: "VnfInstanceId", # required
    #         arn: "VnfInstanceArn", # required
    #         ns_instance_id: "NsInstanceId", # required
    #         vnf_pkg_id: "VnfPkgId", # required
    #         vnf_pkg_name: "String",
    #         instantiation_state: "INSTANTIATED" # One of: ["INSTANTIATED", "NOT_INSTANTIATED"], # required
    #         instantiated_vnf_info: {
    #           vnf_state: "STARTED" # One of: ["STARTED", "STOPPED"]
    #         },
    #         metadata: { # required
    #           created_at: Time.now, # required
    #           last_modified: Time.now, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSolFunctionInstancesOutput]
    def list_sol_function_instances(params = {}, options = {})
      request = build_request(:list_sol_function_instances, params)
      request.send_request(options)
    end

    # <p>Lists information about function packages.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::ListSolFunctionPackagesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example List information about multiple function packages without PaginationToken
    #   # Example operation for list_sol_function_packages
    #   params = {
    #     max_results: 25,
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_sol_function_packages(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "ug2E9SheCpyAmeLItmHF99a8GNI6yAHxXIvgBkdiA2ixKvqdhYpNBLWHDl6vGnWt7Y4CB6m1Dkz86gSwcDouMO1pSrN%2BlGY2kbNtfTeMgnuB6bmwP/UU12r7MkHQyPCWMYG8OuCXkDBOYeX8qjRDTJ5vxAyrwtynaB6XDNDZA2DscCjcD7kpNzf3xlPRCwd6",
    #     function_packages: [
    #       {
    #         id: "fp-07aa863e53460a2a6",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:function-package/fp-07aa863e53460a2a6",
    #         onboarding_state: ONBOARDED,
    #         operational_state: ENABLED,
    #         usage_state: IN_USE,
    #         vnfd_id: "arn:aws:tnb:123456789000:vnf/nrf",
    #         vnf_provider: "VNFBuilder",
    #         vnf_product_name: "NRF",
    #         vnfd_version: "1.0",
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List information about multiple function packages with PaginationToken
    #   # Example operation for list_sol_function_packages
    #   params = {
    #     max_results: 25,
    #     next_token: "ug2E9SheCpyAmeLItmHF99a8GNI6yAHxXIvgBkdiA2ixKvqdhYpNBLWHDl6vGnWt7Y4CB6m1Dkz86gSwcDouMO1pSrN%2BlGY2kbNtfTeMgnuB6bmwP/UU12r7MkHQyPCWMYG8OuCXkDBOYeX8qjRDTJ5vxAyrwtynaB6XDNDZA2DscCjcD7kpNzf3xlPRCwd6"
    #   }
    #   options = {}
    #   response = client.list_sol_function_packages(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "ug2E9SheCpyAmeLItmHF98uvZTosFhZ1wyglENkc3UZ12UuRLmtGtojRynFjRR5zW%2FycBL6QX8AU%2B1IRWL%2BVjNNL7KBiaD87KM9WcUMQzryLtOazGHexujJncJJ0YGsxSLSrmPGx7dM1EoNKX8oxYA%3D%3D",
    #     function_packages: [
    #       {
    #         id: "fp-07aa863e53460a2a6",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:function-package/fp-07aa863e53460a2a6",
    #         onboarding_state: ONBOARDED,
    #         operational_state: ENABLED,
    #         usage_state: IN_USE,
    #         vnfd_id: "arn:aws:tnb:123456789000:vnf/nrf",
    #         vnf_provider: "VNFBuilder",
    #         vnf_product_name: "NRF",
    #         vnfd_version: "1.0",
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example No more function packages to return
    #   # Example operation for list_sol_function_packages
    #   params = {
    #     max_results: 25,
    #     next_token: "ug2E9SheCpyAmeLItmHF98uvZTosFhZ1wyglENkc3UZ12UuRLmtGtojRynFjRR5zW%2FycBL6QX8AU%2B1IRWL%2BVjNNL7KBiaD87KM9WcUMQzryLtOazGHexujJncJJ0YGsxSLSrmPGx7dM1EoNKX8oxYA%3D%3D"
    #   }
    #   options = {}
    #   response = client.list_sol_function_packages(params, options)
    #   response.to_h #=>
    #   {
    #     function_packages: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sol_function_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     function_packages: [ # required
    #       {
    #         id: "VnfPkgId", # required
    #         arn: "VnfPkgArn", # required
    #         onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #         operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #         vnfd_id: "String",
    #         vnf_provider: "String",
    #         vnf_product_name: "String",
    #         vnfd_version: "String",
    #         metadata: {
    #           created_at: Time.now, # required
    #           last_modified: Time.now, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSolFunctionPackagesOutput]
    def list_sol_function_packages(params = {}, options = {})
      request = build_request(:list_sol_function_packages, params)
      request.send_request(options)
    end

    # <p>Lists your network instances.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    # @param [Hash, Types::ListSolNetworkInstancesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example List Sol Network Instantiate instances
    #   # Example operation for list_sol_network_instances
    #   params = {}
    #   options = {}
    #   response = client.list_sol_network_instances(params, options)
    #   response.to_h #=>
    #   {
    #     network_instances: [
    #       {
    #         id: "ni-07aa863e53460a2a6",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-instance/ni-07aa863e53460a2a6",
    #         ns_instance_name: "CITY Instance",
    #         ns_instance_description: "Network service for CITY",
    #         nsd_id: "e851fd14-abe3-4535-85e6-6060636fd519",
    #         nsd_info_id: "np-0d5b823eb5c2a9241",
    #         ns_state: INSTANTIATED,
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List Sol Network Instances with nextToken and maxResults
    #   # Example operation for list_sol_network_instances
    #   params = {
    #     max_results: 25,
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_sol_network_instances(params, options)
    #   response.to_h #=>
    #   {
    #     network_instances: [
    #       {
    #         id: "ni-07aa863e53460a2a6",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-instance/ni-07aa863e53460a2a6",
    #         ns_instance_name: "CITY Instance",
    #         ns_instance_description: "Network service for CITY",
    #         nsd_id: "e851fd14-abe3-4535-85e6-6060636fd519",
    #         nsd_info_id: "np-0d5b823eb5c2a9241",
    #         ns_state: INSTANTIATED,
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sol_network_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     network_instances: [
    #       {
    #         id: "NsInstanceId", # required
    #         arn: "NsInstanceArn", # required
    #         ns_instance_name: "String", # required
    #         ns_instance_description: "String", # required
    #         nsd_id: "NsdId", # required
    #         nsd_info_id: "NsdInfoId", # required
    #         ns_state: "INSTANTIATED" # One of: ["INSTANTIATED", "NOT_INSTANTIATED", "UPDATED", "IMPAIRED", "UPDATE_FAILED", "STOPPED", "DELETED", "INSTANTIATE_IN_PROGRESS", "INTENT_TO_UPDATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "TERMINATE_IN_PROGRESS"], # required
    #         metadata: { # required
    #           created_at: Time.now, # required
    #           last_modified: Time.now, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSolNetworkInstancesOutput]
    def list_sol_network_instances(params = {}, options = {})
      request = build_request(:list_sol_network_instances, params)
      request.send_request(options)
    end

    # <p>Lists details for a network operation, including when the operation started and the
    #          status of the operation.</p>
    #          <p>A network operation is any operation that is done to your network, such as network instance instantiation or termination.</p>
    # @param [Hash, Types::ListSolNetworkOperationsInput] params
    # @option params [String] :ns_instance_id
    #   <p>Network instance id filter, to retrieve network operations associated to a network instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example List Sol Network Instantiate operations
    #   # Example operation for list_sol_network_operations
    #   params = {}
    #   options = {}
    #   response = client.list_sol_network_operations(params, options)
    #   response.to_h #=>
    #   {
    #     network_operations: [
    #       {
    #         id: "no-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #         ns_instance_id: "ni-0d5b823eb5c2a9241",
    #         operation_state: COMPLETED,
    #         lcm_operation_type: INSTANTIATE,
    #         metadata: {
    #           nsd_info_id: "np-0d0f3e2eae4fc1ac1",
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List Sol Network Instantiate operations with nextToken and maxResults
    #   # Example operation for list_sol_network_operations
    #   params = {
    #     max_results: 25,
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_sol_network_operations(params, options)
    #   response.to_h #=>
    #   {
    #     network_operations: [
    #       {
    #         id: "no-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #         ns_instance_id: "ni-0d5b823eb5c2a9241",
    #         operation_state: COMPLETED,
    #         lcm_operation_type: INSTANTIATE,
    #         error: {
    #           title: "InsufficientInstanceCapacity",
    #           detail: "An error occurred (InsufficientInstanceCapacity) when calling the RunInstances operation (reached max retries: 4). We currently do not have sufficient capacity in the Availability Zone you requested"
    #         },
    #         metadata: {
    #           nsd_info_id: "np-0d0f3e2eae4fc1ac1",
    #           created_at: Time.parse("2022-06-10T19:48:33Z"),
    #           last_modified: Time.parse("2022-06-10T19:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List Sol Network Update operations
    #   # Example operation for list_sol_network_operations
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.list_sol_network_operations(params, options)
    #   response.to_h #=>
    #   {
    #     network_operations: [
    #       {
    #         id: "no-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #         ns_instance_id: "ni-0d5b823eb5c2a9241",
    #         operation_state: COMPLETED,
    #         lcm_operation_type: UPDATE,
    #         update_type: MODIFY_VNF_INFORMATION,
    #         metadata: {
    #           vnf_instance_id: "fi-0d5b823eb5c2a9241",
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List Sol Network Update operations
    #   # Example operation for list_sol_network_operations
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241"
    #   }
    #   options = {}
    #   response = client.list_sol_network_operations(params, options)
    #   response.to_h #=>
    #   {
    #     network_operations: [
    #       {
    #         id: "no-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-operation/no-0d5b823eb5c2a9241",
    #         ns_instance_id: "ni-0d5b823eb5c2a9241",
    #         operation_state: COMPLETED,
    #         lcm_operation_type: UPDATE,
    #         update_type: UPDATE_NS,
    #         metadata: {
    #           nsd_info_id: "np-0d0f3e2eae4fc1ac1",
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sol_network_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     network_operations: [
    #       {
    #         id: "NsLcmOpOccId", # required
    #         arn: "NsLcmOpOccArn", # required
    #         operation_state: "PROCESSING" # One of: ["PROCESSING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"], # required
    #         ns_instance_id: "NsInstanceId", # required
    #         lcm_operation_type: "INSTANTIATE" # One of: ["INSTANTIATE", "UPDATE", "TERMINATE"], # required
    #         update_type: "MODIFY_VNF_INFORMATION" # One of: ["MODIFY_VNF_INFORMATION", "UPDATE_NS"],
    #         error: {
    #           detail: "String", # required
    #           title: "String"
    #         },
    #         metadata: {
    #           nsd_info_id: "NsdInfoId",
    #           vnf_instance_id: "VnfInstanceId",
    #           created_at: Time.now, # required
    #           last_modified: Time.now, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSolNetworkOperationsOutput]
    def list_sol_network_operations(params = {}, options = {})
      request = build_request(:list_sol_network_operations, params)
      request.send_request(options)
    end

    # <p>Lists network packages.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @param [Hash, Types::ListSolNetworkPackagesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @example List information about multiple network packages without PaginationToken
    #   # Example operation for list_sol_network_packages
    #   params = {
    #     max_results: 25,
    #     next_token: ""
    #   }
    #   options = {}
    #   response = client.list_sol_network_packages(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "ug2E9SheCpyAmeLItmHF99a8GNI6yAHxXIvgBkdiA2ixKvqdhYpNBLWHDl6vGnWt7Y4CB6m1Dkz86gSwcDouMO1pSrN%2BlGY2kbNtfTeMgnuB6bmwP/UU12r7MkHQyPCWMYG8OuCXkDBOYeX8qjRDTJ5vxAyrwtynaB6XDNDZA2DscCjcD7kpNzf3xlPRCwd6",
    #     network_packages: [
    #       {
    #         id: "np-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #         nsd_id: "be1abe66-1fcc-11ec-9621-0242ac130002",
    #         nsd_name: "Sample-City",
    #         nsd_version: "1.0",
    #         nsd_designer: "Sample",
    #         nsd_invariant_id: "SAMPLE_CITY",
    #         vnf_pkg_ids: [
    #           "fp-0b627c4a170a97f79",
    #           "fp-09a2ba09fad0212cd"
    #         ],
    #         nsd_onboarding_state: ONBOARDED,
    #         nsd_operational_state: ENABLED,
    #         nsd_usage_state: IN_USE,
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       },
    #       {
    #         id: "np-0d5b823eb5c2a9789",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9789",
    #         nsd_onboarding_state: CREATED,
    #         nsd_operational_state: DISABLED,
    #         nsd_usage_state: NOT_IN_USE,
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example List information about multiple network packages with PaginationToken
    #   # Example operation for list_sol_network_packages
    #   params = {
    #     max_results: 25,
    #     next_token: "ug2E9SheCpyAmeLItmHF95t1rBBsFyzy5hsuauDTqaukll3AGHaTz%2B4utHS3OMuMcyKW6Hmk25aB6wtV%2BFxCx9Adw5fDSq9D8lVa6sr0Sq0BF7Fj0mYegd0a/XiFP4j/58ZIrtRl0M3Z55Z/wTqwIietXJVfFX84ZnIMjiEiFb3KIIdrKS8vSgMZ18t3Gj5p"
    #   }
    #   options = {}
    #   response = client.list_sol_network_packages(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "ug2E9SheCpyAmeLItmHF93AYTN36C2xOijk0IW9FbkywwkM3QphGA%2BMbsKhEhOl3nacLxMMiBL9WOhOdo/ZCXfmS2/tHpzuWjvSODvivIJONDw3bUxYqjsT2w/lDWekKm9cRGhLaK6kCr1XBvm3USj/r6dBDL3gHYrwfmEGL7MRffCgc2IqYOL6O2Mhvbn89",
    #     network_packages: [
    #       {
    #         id: "np-0d5b823eb5c2a9241",
    #         arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #         nsd_id: "be1abe66-1fcc-11ec-9621-0242ac130002",
    #         nsd_name: "Sample-City",
    #         nsd_version: "1.0",
    #         nsd_designer: "Sample",
    #         nsd_invariant_id: "SAMPLE_CITY",
    #         vnf_pkg_ids: [
    #           "fp-0b627c4a170a97f79",
    #           "fp-09a2ba09fad0212cd"
    #         ],
    #         nsd_onboarding_state: ONBOARDED,
    #         nsd_operational_state: ENABLED,
    #         nsd_usage_state: IN_USE,
    #         metadata: {
    #           created_at: Time.parse("2022-06-10T19:48:34Z"),
    #           last_modified: Time.parse("2022-06-10T21:48:33Z")
    #         }
    #       }
    #     ]
    #   }
    # @example No more network packages to return
    #   # Example operation for list_sol_network_packages
    #   params = {}
    #   options = {}
    #   response = client.list_sol_network_packages(params, options)
    #   response.to_h #=>
    #   {
    #     network_packages: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sol_network_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     network_packages: [ # required
    #       {
    #         id: "NsdInfoId", # required
    #         arn: "NsdInfoArn", # required
    #         nsd_onboarding_state: "CREATED" # One of: ["CREATED", "ONBOARDED", "ERROR"], # required
    #         nsd_operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         nsd_usage_state: "IN_USE" # One of: ["IN_USE", "NOT_IN_USE"], # required
    #         nsd_id: "String",
    #         nsd_name: "String",
    #         nsd_version: "String",
    #         nsd_designer: "String",
    #         nsd_invariant_id: "String",
    #         vnf_pkg_ids: ["VnfPkgId"],
    #         metadata: { # required
    #           created_at: Time.now, # required
    #           last_modified: Time.now, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListSolNetworkPackagesOutput]
    def list_sol_network_packages(params = {}, options = {})
      request = build_request(:list_sol_network_packages, params)
      request.send_request(options)
    end

    # <p>Lists tags for AWS TNB resources.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Resource ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TNBResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Uploads the contents of a function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::PutSolFunctionPackageContentInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>Function package ID.</p>
    # @option params [String] :content_type
    #   <p>Function package content type.</p>
    # @option params [String] :file
    #   <p>Function package file.</p>
    # @example Upload a function package content
    #   # Example operation for put_sol_function_package_content
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6",
    #     content_type: application/zip,
    #     file: "UEsDBBQAAAAAAPqLiVMAAAAAAAAAAAAAAAAMACAAZnJlZTVnYy1hbWYvVVQNAAcIrrJhBK"
    #   }
    #   options = {}
    #   response = client.put_sol_function_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     id: "fp-07aa863e53460a2a6",
    #     vnfd_id: "0d72acd9-e45d-4644-9bcd-1fe67cd0e2c8",
    #     vnf_product_name: "Sample AMF",
    #     vnf_provider: "Sample",
    #     vnfd_version: "1.0.0",
    #     metadata: {
    #       vnfd: {
    #         overrides: [
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     file: "data", # required
    #   }
    #   options = {}
    #   response = client.put_sol_function_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "VnfPkgId", # required
    #     vnfd_id: "VnfdId", # required
    #     vnf_product_name: "String", # required
    #     vnf_provider: "String", # required
    #     vnfd_version: "String", # required
    #     metadata: { # required
    #       vnfd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::PutSolFunctionPackageContentOutput]
    def put_sol_function_package_content(params = {}, options = {})
      request = build_request(:put_sol_function_package_content, params)
      request.send_request(options)
    end

    # <p>Uploads the contents of a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @param [Hash, Types::PutSolNetworkPackageContentInput] params
    # @option params [String] :nsd_info_id
    #   <p>Network service descriptor info ID.</p>
    # @option params [String] :content_type
    #   <p>Network package content type.</p>
    # @option params [String] :file
    #   <p>Network package file.</p>
    # @example Upload the network package content of an NSD archive
    #   # Example operation for put_sol_network_package_content
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     content_type: application/zip,
    #     file: "UEsDBBQAAAAAAPqLiVMAAAAAAAAAAAAAA"
    #   }
    #   options = {}
    #   response = client.put_sol_network_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     id: "np-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #     nsd_id: "0d72acd9-e45d-4644-9bcd-1fe67cd0e2c8",
    #     nsd_name: "Sample Single Cluster",
    #     nsd_version: "1.0.0",
    #     vnf_pkg_ids: [
    #       "fp-1234567890abcdabc",
    #       "fp-0b627c4a170a97f79"
    #     ],
    #     metadata: {
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "cidr_block",
    #             default_value: "10.0.0.0/24"
    #           },
    #           {
    #             name: "some_vnf.vnf_prop"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     file: "data", # required
    #   }
    #   options = {}
    #   response = client.put_sol_network_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsdInfoId", # required
    #     arn: "NsdInfoArn", # required
    #     nsd_id: "NsdId", # required
    #     nsd_name: "String", # required
    #     nsd_version: "String", # required
    #     vnf_pkg_ids: ["VnfPkgId"], # required
    #     metadata: { # required
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::PutSolNetworkPackageContentOutput]
    def put_sol_network_package_content(params = {}, options = {})
      request = build_request(:put_sol_network_package_content, params)
      request.send_request(options)
    end

    # <p>Tags an AWS TNB resource.</p>
    #          <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Resource ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TNBResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Terminates a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #          <p>You must terminate a network instance before you can delete it.</p>
    # @param [Hash, Types::TerminateSolNetworkInstanceInput] params
    # @option params [String] :ns_instance_id
    #   <p>ID of the network instance.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Terminate a Sol Network Instance
    #   # Example operation for terminate_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.terminate_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.terminate_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "NsLcmOpOccId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::TerminateSolNetworkInstanceOutput]
    def terminate_sol_network_instance(params = {}, options = {})
      request = build_request(:terminate_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Untags an AWS TNB resource.</p>
    #          <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Resource ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TNBResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the operational state of function package.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::UpdateSolFunctionPackageInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>ID of the function package.</p>
    # @option params [String] :operational_state
    #   <p>Operational state of the function package.</p>
    # @example Enable a function package's Operational State
    #   # Example operation for update_sol_function_package
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6",
    #     operational_state: ENABLED
    #   }
    #   options = {}
    #   response = client.update_sol_function_package(params, options)
    #   response.to_h #=>
    #   {
    #     operational_state: ENABLED
    #   }
    # @example Disable a function package's Operational State
    #   # Example operation for update_sol_function_package
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6",
    #     operational_state: DISABLED
    #   }
    #   options = {}
    #   response = client.update_sol_function_package(params, options)
    #   response.to_h #=>
    #   {
    #     operational_state: DISABLED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #     operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_sol_function_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::UpdateSolFunctionPackageOutput]
    def update_sol_function_package(params = {}, options = {})
      request = build_request(:update_sol_function_package, params)
      request.send_request(options)
    end

    # <p>Update a network instance.</p>
    #          <p>A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.</p>
    #          <p>Choose the <i>updateType</i> parameter to target the necessary update of the network instance.</p>
    # @param [Hash, Types::UpdateSolNetworkInstanceInput] params
    # @option params [String] :ns_instance_id
    #   <p>ID of the network instance.</p>
    # @option params [String] :update_type
    #   <p>The type of update.</p>
    #            <ul>
    #               <li>
    #                  <p>Use the <code>MODIFY_VNF_INFORMATION</code> update type, to update a specific network function
    #                  configuration, in the network instance.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>UPDATE_NS</code> update type, to update the network instance to a
    #                  new network service descriptor.</p>
    #               </li>
    #            </ul>
    # @option params [Types::UpdateSolNetworkModify] :modify_vnf_info_data
    #   <p>Identifies the network function information parameters and/or the configurable
    #            properties of the network function to be modified.</p>
    #            <p>Include this property only if the update type is <code>MODIFY_VNF_INFORMATION</code>.</p>
    # @option params [Types::UpdateSolNetworkServiceData] :update_ns
    #   <p>Identifies the network service descriptor and the configurable
    #            properties of the descriptor, to be used for the update.</p>
    #            <p>Include this property only if the update type is <code>UPDATE_NS</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. When you use this API, the tags are only applied to the network operation that is created. These tags are not applied to the network instance. Use tags to search and filter your resources or track your Amazon Web Services costs.</p>
    # @example Update a Sol Network Instance
    #   # Example operation for update_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     update_type: MODIFY_VNF_INFORMATION,
    #     modify_vnf_info_data: {
    #       vnf_instance_id: "fi-0d5b823eb5c2a9241",
    #       vnf_configurable_properties: {
    #     "pcf.port" => 8080,
    #     "pcf.pods" => 10
    #   }
    #     },
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Update a Sol Network Instance
    #   # Example operation for update_sol_network_instance
    #   params = {
    #     ns_instance_id: "ni-0d5b823eb5c2a9241",
    #     update_type: UPDATE_NS,
    #     update_ns: {
    #       nsd_info_id: "np-0d5b823eb5c2a9241",
    #       additional_params_for_ns: {
    #     "cidr_block" => 10.0.0.0/16,
    #     "availability_zone" => us-west-2a
    #   }
    #     },
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sol_network_instance(params, options)
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "no-0d5b823eb5c2a9241",
    #     tags: {
    #       "Name" => "Resource"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ns_instance_id: "NsInstanceId", # required
    #     update_type: "MODIFY_VNF_INFORMATION" # One of: ["MODIFY_VNF_INFORMATION", "UPDATE_NS"], # required
    #     modify_vnf_info_data: {
    #       vnf_instance_id: "VnfInstanceId", # required
    #       vnf_configurable_properties: ""null"", # required
    #     },
    #     update_ns: {
    #       nsd_info_id: "NsdInfoId", # required
    #       additional_params_for_ns: ""null""
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sol_network_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ns_lcm_op_occ_id: "NsLcmOpOccId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateSolNetworkInstanceOutput]
    def update_sol_network_instance(params = {}, options = {})
      request = build_request(:update_sol_network_instance, params)
      request.send_request(options)
    end

    # <p>Updates the operational state of a network package.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    #          <p>A network service descriptor is a .yaml file in a network package that uses the TOSCA standard to describe the network functions you want to deploy and the Amazon Web Services infrastructure you want to deploy the network functions on.</p>
    # @param [Hash, Types::UpdateSolNetworkPackageInput] params
    # @option params [String] :nsd_info_id
    #   <p>ID of the network service descriptor in the network package.</p>
    # @option params [String] :nsd_operational_state
    #   <p>Operational state of the network service descriptor in the network package.</p>
    # @example Enable a network package's Operational State
    #   # Example operation for update_sol_network_package
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     nsd_operational_state: ENABLED
    #   }
    #   options = {}
    #   response = client.update_sol_network_package(params, options)
    #   response.to_h #=>
    #   {
    #     nsd_operational_state: ENABLED
    #   }
    # @example Disable a network package's Operational State
    #   # Example operation for update_sol_network_package
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     nsd_operational_state: DISABLED
    #   }
    #   options = {}
    #   response = client.update_sol_network_package(params, options)
    #   response.to_h #=>
    #   {
    #     nsd_operational_state: DISABLED
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #     nsd_operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_sol_network_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nsd_operational_state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    # @return [Types::UpdateSolNetworkPackageOutput]
    def update_sol_network_package(params = {}, options = {})
      request = build_request(:update_sol_network_package, params)
      request.send_request(options)
    end

    # <p>Validates function package content. This can be used as a dry run before uploading
    #          function package content with <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html">PutSolFunctionPackageContent</a>.</p>
    #          <p>A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.</p>
    # @param [Hash, Types::ValidateSolFunctionPackageContentInput] params
    # @option params [String] :vnf_pkg_id
    #   <p>Function package ID.</p>
    # @option params [String] :content_type
    #   <p>Function package content type.</p>
    # @option params [String] :file
    #   <p>Function package file.</p>
    # @example Validate a Function Package content
    #   # Example operation for validate_sol_function_package_content
    #   params = {
    #     vnf_pkg_id: "fp-07aa863e53460a2a6",
    #     content_type: application/zip,
    #     file: "UEsDBBQAAAAAAPqLiVMAAAAAAAAAAAAAAAAMACAAZnJlZTVnYy1hbWYvVVQNAAcIrrJhBK"
    #   }
    #   options = {}
    #   response = client.validate_sol_function_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     id: "fp-07aa863e53460a2a6",
    #     vnfd_id: "0d72acd9-e45d-4644-9bcd-1fe67cd0e2c8",
    #     vnf_product_name: "Sample AMF",
    #     vnf_provider: "Sample",
    #     vnfd_version: "1.0.0",
    #     metadata: {
    #       vnfd: {
    #         overrides: [
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vnf_pkg_id: "VnfPkgId", # required
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     file: "data", # required
    #   }
    #   options = {}
    #   response = client.validate_sol_function_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "VnfPkgId", # required
    #     vnfd_id: "VnfdId", # required
    #     vnf_product_name: "String", # required
    #     vnf_provider: "String", # required
    #     vnfd_version: "String", # required
    #     metadata: { # required
    #       vnfd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ValidateSolFunctionPackageContentOutput]
    def validate_sol_function_package_content(params = {}, options = {})
      request = build_request(:validate_sol_function_package_content, params)
      request.send_request(options)
    end

    # <p>Validates network package content. This can be used as a dry run before uploading
    #          network package content with <a href="https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html">PutSolNetworkPackageContent</a>.</p>
    #          <p>A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.</p>
    # @param [Hash, Types::ValidateSolNetworkPackageContentInput] params
    # @option params [String] :nsd_info_id
    #   <p>Network service descriptor file.</p>
    # @option params [String] :content_type
    #   <p>Network package content type.</p>
    # @option params [String] :file
    #   <p>Network package file.</p>
    # @example Validate the network package content of a NSD archive
    #   # Example operation for validate_sol_network_package_content
    #   params = {
    #     nsd_info_id: "np-0d5b823eb5c2a9241",
    #     content_type: application/zip,
    #     file: "UEsDBBQAAAAAAPqLiVMAAAAAAAAAAAAAA"
    #   }
    #   options = {}
    #   response = client.validate_sol_network_package_content(params, options)
    #   response.to_h #=>
    #   {
    #     id: "np-0d5b823eb5c2a9241",
    #     arn: "arn:aws:tnb:us-west-2:123456789000:network-package/np-0d5b823eb5c2a9241",
    #     nsd_id: "0d72acd9-e45d-4644-9bcd-1fe67cd0e2c8",
    #     nsd_name: "Sample Single Cluster",
    #     nsd_version: "1.0.0",
    #     vnf_pkg_ids: [
    #       "fp-1234567890abcdabc",
    #       "fp-0b627c4a170a97f79"
    #     ],
    #     metadata: {
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "cidr_block",
    #             default_value: "10.0.0.0/24"
    #           },
    #           {
    #             name: "some_vnf.vnf_prop"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     nsd_info_id: "NsdInfoId", # required
    #     content_type: "application/zip" # One of: ["application/zip"],
    #     file: "data", # required
    #   }
    #   options = {}
    #   response = client.validate_sol_network_package_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NsdInfoId", # required
    #     arn: "NsdInfoArn", # required
    #     nsd_id: "NsdId", # required
    #     nsd_name: "String", # required
    #     nsd_version: "String", # required
    #     vnf_pkg_ids: ["VnfPkgId"], # required
    #     metadata: { # required
    #       nsd: {
    #         overrides: [
    #           {
    #             name: "String",
    #             default_value: "String"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::ValidateSolNetworkPackageContentOutput]
    def validate_sol_network_package_content(params = {}, options = {})
      request = build_request(:validate_sol_network_package_content, params)
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
      context[:gem_name] = 'aws-sdk-tnb'
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
