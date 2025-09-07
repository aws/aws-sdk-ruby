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
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::StorageGateway
  # An API client for Aws::StorageGateway.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::StorageGateway20130630

    add_plugin(::Aws::StorageGateway::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::StorageGateway::EndpointProvider] :endpoint_provider
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

    # <p>Activates the gateway you previously deployed on your host. In the activation process,
    #          you specify information such as the Amazon Web Services Region that you want to use for
    #          storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot
    #          schedule window, an activation key, and a name for your gateway. The activation process
    #          also associates your gateway with your account. For more information, see <a>UpdateGatewayInformation</a>.</p>
    #          <note>
    #             <p>You must turn on the gateway VM before you can activate your gateway.</p>
    #          </note>
    # @param [Hash, Types::ActivateGatewayInput] params
    # @option params [String] :activation_key
    #   <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET
    #            request with redirects enabled to the gateway IP address (port 80). The redirect URL
    #            returned in the response provides you the activation key for your gateway in the query
    #            string parameter <code>activationKey</code>. It may also include other activation-related
    #            parameters, however, these are merely defaults -- the arguments you pass to the
    #               <code>ActivateGateway</code> API call determine the actual configuration of your
    #            gateway.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html">Getting activation
    #               key</a> in the <i>Storage Gateway User Guide</i>.</p>
    # @option params [String] :gateway_name
    #   <p>The name you configured for your gateway.</p>
    # @option params [String] :gateway_timezone
    #   <p>A value that indicates the time zone you want to set for the gateway. The time zone is
    #            of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, GMT indicates Greenwich Mean
    #            Time without any offset. GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00
    #            indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for
    #            scheduling snapshots and your gateway's maintenance schedule.</p>
    # @option params [String] :gateway_region
    #   <p>A value that indicates the Amazon Web Services Region where you want to store your data.
    #            The gateway Amazon Web Services Region specified must be the same Amazon Web Services Region
    #            as the Amazon Web Services Region in your <code>Host</code> header in the request. For more
    #            information about available Amazon Web Services Regions and endpoints for Storage Gateway, see <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.</p>
    #            <p>Valid Values: See <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.
    #            
    #         </p>
    # @option params [String] :gateway_type
    #   <p>A value that defines the type of gateway to activate. The type specified is critical to
    #            all later functions of the gateway and cannot be changed after activation. The default
    #            value is <code>CACHED</code>.</p>
    #            <important>
    #               <p>Amazon FSx File Gateway is no longer available to new customers. Existing
    #               customers of FSx File Gateway can continue to use the service normally. For
    #               capabilities similar to FSx File Gateway, visit <a href="https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/">this blog post</a>.</p>
    #            </important>
    #            <p>Valid Values: <code>STORED</code> | <code>CACHED</code> | <code>VTL</code>
    #            | <code>FILE_S3</code> |
    #            <code>FILE_FSX_SMB</code>
    #            </p>
    # @option params [String] :tape_drive_type
    #   <p>The value that indicates the type of tape drive to use for tape gateway. This field is
    #            optional.</p>
    #            <p>Valid Values: <code>IBM-ULT3580-TD5</code>
    #            </p>
    # @option params [String] :medium_changer_type
    #   <p>The value that indicates the type of medium changer to use for tape gateway. This field
    #            is optional.</p>
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that can be
    #               represented in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    # @example To activate the gateway
    #   # Activates the gateway you previously deployed on your host.
    #   params = {
    #     activation_key: "29AV1-3OFV9-VVIUB-NKT0I-LRO6V",
    #     gateway_name: "My_Gateway",
    #     gateway_timezone: "GMT-12:00",
    #     gateway_region: "us-east-1",
    #     gateway_type: "STORED",
    #     tape_drive_type: "IBM-ULT3580-TD5",
    #     medium_changer_type: "AWS-Gateway-VTL"
    #   }
    #   options = {}
    #   response = client.activate_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     activation_key: "ActivationKey", # required
    #     gateway_name: "GatewayName", # required
    #     gateway_timezone: "GatewayTimezone", # required
    #     gateway_region: "RegionId", # required
    #     gateway_type: "GatewayType",
    #     tape_drive_type: "TapeDriveType",
    #     medium_changer_type: "MediumChangerType",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.activate_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::ActivateGatewayOutput]
    def activate_gateway(params = {}, options = {})
      request = build_request(:activate_gateway, params)
      request.send_request(options)
    end

    # <p>Configures one or more gateway local disks as cache for a gateway. This operation is
    #          only supported in the cached volume, tape, and file gateway type (see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">How Storage Gateway works (architecture)</a>.</p>
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add cache, and one or more disk IDs that you want to configure as cache.</p>
    # @param [Hash, Types::AddCacheInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    # @example To add a cache
    #   # The following example shows a request that activates a gateway-stored volume.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:03:00.0-scsi-0:0:1:0"
    #     ]
    #   }
    #   options = {}
    #   response = client.add_cache(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   }
    #   options = {}
    #   response = client.add_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::AddCacheOutput]
    def add_cache(params = {}, options = {})
      request = build_request(:add_cache, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource. You use tags to add metadata to
    #          resources, which you can use to categorize these resources. For example, you can categorize
    #          resources by purpose, owner, environment, or team. Each tag consists of a key and a value,
    #          which you define. You can add tags to the following Storage Gateway resources:</p>
    #          <ul>
    #             <li>
    #                <p>Storage gateways of all types</p>
    #             </li>
    #             <li>
    #                <p>Storage volumes</p>
    #             </li>
    #             <li>
    #                <p>Virtual tapes</p>
    #             </li>
    #             <li>
    #                <p>NFS and SMB file shares</p>
    #             </li>
    #             <li>
    #                <p>File System associations</p>
    #             </li>
    #          </ul>
    #          <p>You can create a maximum of 50 tags for each resource. Virtual tapes and storage volumes
    #          that are recovered to a new gateway maintain their tags.</p>
    # @param [Hash, Types::AddTagsToResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair that represents the tag you want to add to the resource. The value
    #            can be an empty string.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To add tags to resource
    #   # Adds one or more tags to the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    #     tags: [
    #       {
    #         key: "Dev Gatgeway Region",
    #         value: "East Coast"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceARN"
    #   }
    # @return [Types::AddTagsToResourceOutput]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Configures one or more gateway local disks as upload buffer for a specified gateway.
    #          This operation is supported for the stored volume, cached volume, and tape gateway
    #          types.</p>
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add upload buffer, and one or more disk IDs that you want to configure as upload
    #          buffer.</p>
    # @param [Hash, Types::AddUploadBufferInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    # @example To add upload buffer on local disk
    #   # Configures one or more gateway local disks as upload buffer for a specified gateway.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:03:00.0-scsi-0:0:1:0"
    #     ]
    #   }
    #   options = {}
    #   response = client.add_upload_buffer(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   }
    #   options = {}
    #   response = client.add_upload_buffer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::AddUploadBufferOutput]
    def add_upload_buffer(params = {}, options = {})
      request = build_request(:add_upload_buffer, params)
      request.send_request(options)
    end

    # <p>Configures one or more gateway local disks as working storage for a gateway. This
    #          operation is only supported in the stored volume gateway type. This operation is deprecated
    #          in cached volume API version 20120630. Use <a>AddUploadBuffer</a>
    #          instead.</p>
    #          <note>
    #             <p>Working storage is also referred to as upload buffer. You can also use the <a>AddUploadBuffer</a> operation to add upload buffer to a stored volume
    #             gateway.</p>
    #          </note>
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add working storage, and one or more disk IDs that you want to configure as working
    #          storage.</p>
    # @param [Hash, Types::AddWorkingStorageInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    # @example To add storage on local disk
    #   # Configures one or more gateway local disks as working storage for a gateway. (Working storage is also referred to as upload buffer.)
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:03:00.0-scsi-0:0:1:0"
    #     ]
    #   }
    #   options = {}
    #   response = client.add_working_storage(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   }
    #   options = {}
    #   response = client.add_working_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::AddWorkingStorageOutput]
    def add_working_storage(params = {}, options = {})
      request = build_request(:add_working_storage, params)
      request.send_request(options)
    end

    # <p>Assigns a tape to a tape pool for archiving. The tape assigned to a pool is archived in
    #          the S3 storage class that is associated with the pool. When you use your backup application
    #          to eject the tape, the tape is archived directly into the S3 storage class (S3 Glacier or
    #          S3 Glacier Deep Archive) that corresponds to the pool.</p>
    # @param [Hash, Types::AssignTapePoolInput] params
    # @option params [String] :tape_arn
    #   <p>The unique Amazon Resource Name (ARN) of the virtual tape that you want to add to the
    #            tape pool.</p>
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set permissions to bypass governance retention. If the lock type of the archived tape is
    #               <code>Governance</code>, the tape's archived age is not older than
    #               <code>RetentionLockInDays</code>, and the user does not already have
    #               <code>BypassGovernanceRetention</code>, setting this to TRUE enables the user to bypass
    #            the retention lock. This parameter is set to true by default for calls from the
    #            console.</p>
    #            <p>Valid values: <code>TRUE</code> | <code>FALSE</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_arn: "TapeARN", # required
    #     pool_id: "PoolId", # required
    #     bypass_governance_retention: false
    #   }
    #   options = {}
    #   response = client.assign_tape_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::AssignTapePoolOutput]
    def assign_tape_pool(params = {}, options = {})
      request = build_request(:assign_tape_pool, params)
      request.send_request(options)
    end

    # <p>Associate an Amazon FSx file system with the FSx File Gateway. After the
    #          association process is complete, the file shares on the Amazon FSx file system are
    #          available for access through the gateway. This operation only supports the FSx File Gateway
    #          type.</p>
    # @param [Hash, Types::AssociateFileSystemInput] params
    # @option params [String] :user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    # @option params [String] :password
    #   <p>The password of the user credential.</p>
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by the FSx File Gateway to ensure
    #            idempotent file system association creation.</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with
    #            the FSx File Gateway.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the file system association. Each tag is
    #            a key-value pair.</p>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    # @option params [Types::EndpointNetworkConfiguration] :endpoint_network_configuration
    #   <p>Specifies the network configuration information for the gateway associated with the
    #               Amazon FSx file system.</p>
    #            <note>
    #               <p>If multiple file systems are associated with this gateway, this parameter's
    #                  <code>IpAddresses</code> field is required.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "DomainUserName", # required
    #     password: "DomainUserPassword", # required
    #     client_token: "ClientToken", # required
    #     gateway_arn: "GatewayARN", # required
    #     location_arn: "FileSystemLocationARN", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     audit_destination_arn: "AuditDestinationARN",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     endpoint_network_configuration: {
    #       ip_addresses: ["IPV4Address"]
    #     }
    #   }
    #   options = {}
    #   response = client.associate_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_association_arn: "FileSystemAssociationARN"
    #   }
    # @return [Types::AssociateFileSystemOutput]
    def associate_file_system(params = {}, options = {})
      request = build_request(:associate_file_system, params)
      request.send_request(options)
    end

    # <p>Connects a volume to an iSCSI connection and then attaches the volume to the specified
    #          gateway. Detaching and attaching a volume enables you to recover your data from one gateway
    #          to a different gateway without creating a snapshot. It also makes it easier to move your
    #          volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.</p>
    # @param [Hash, Types::AttachVolumeInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that you want to attach the volume
    #            to.</p>
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.</p>
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    # @option params [String] :disk_id
    #   <p>The unique device ID or other distinguishing data that identifies the local disk used to
    #            create the volume. This value is only required when you are attaching a stored
    #            volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     target_name: "TargetName",
    #     volume_arn: "VolumeARN", # required
    #     network_interface_id: "NetworkInterfaceId", # required
    #     disk_id: "DiskId"
    #   }
    #   options = {}
    #   response = client.attach_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN",
    #     target_arn: "TargetARN"
    #   }
    # @return [Types::AttachVolumeOutput]
    def attach_volume(params = {}, options = {})
      request = build_request(:attach_volume, params)
      request.send_request(options)
    end

    # <p>Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving
    #          process is initiated. This operation is only supported in the tape gateway type.</p>
    # @param [Hash, Types::CancelArchivalInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving
    #            for.</p>
    # @example To cancel virtual tape archiving
    #   # Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    #   }
    #   options = {}
    #   response = client.cancel_archival(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   }
    #   options = {}
    #   response = client.cancel_archival(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::CancelArchivalOutput]
    def cancel_archival(params = {}, options = {})
      request = build_request(:cancel_archival, params)
      request.send_request(options)
    end

    # <p>Cancels generation of a specified cache report. You can use this operation to manually
    #          cancel an IN-PROGRESS report for any reason. This action changes the report status from
    #          IN-PROGRESS to CANCELLED. You can only cancel in-progress reports. If the the report you
    #          attempt to cancel is in FAILED, ERROR, or COMPLETED state, the cancel operation returns an
    #          error.</p>
    # @param [Hash, Types::CancelCacheReportInput] params
    # @option params [String] :cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_report_arn: "CacheReportARN", # required
    #   }
    #   options = {}
    #   response = client.cancel_cache_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_report_arn: "CacheReportARN"
    #   }
    # @return [Types::CancelCacheReportOutput]
    def cancel_cache_report(params = {}, options = {})
      request = build_request(:cancel_cache_report, params)
      request.send_request(options)
    end

    # <p>Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after
    #          the retrieval process is initiated. The virtual tape is returned to the VTS. This operation
    #          is only supported in the tape gateway type.</p>
    # @param [Hash, Types::CancelRetrievalInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval
    #            for.</p>
    # @example To cancel virtual tape retrieval
    #   # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    #   }
    #   options = {}
    #   response = client.cancel_retrieval(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   }
    #   options = {}
    #   response = client.cancel_retrieval(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::CancelRetrievalOutput]
    def cancel_retrieval(params = {}, options = {})
      request = build_request(:cancel_retrieval, params)
      request.send_request(options)
    end

    # <p>Creates a cached volume on a specified cached volume gateway. This operation is only
    #          supported in the cached volume gateway type.</p>
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create a cached volume.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    #          <p>In the request, you must specify the gateway, size of the volume in bytes, the iSCSI
    #          target name, an IP address on which to expose the target, and a unique client token. In
    #          response, the gateway creates the volume and returns information about it. This information
    #          includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
    #          initiators can use to connect to the volume target.</p>
    #          <p>Optionally, you can provide the ARN for an existing volume as the
    #             <code>SourceVolumeARN</code> for this cached volume, which creates an exact copy of the
    #          existing volume’s latest recovery point. The <code>VolumeSizeInBytes</code> value must be
    #          equal to or larger than the size of the copied volume, in bytes.</p>
    # @param [Hash, Types::CreateCachediSCSIVolumeInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    # @option params [String] :source_volume_arn
    #   <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact
    #            copy of the specified existing volume's latest recovery point. The
    #               <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than
    #            the size of the existing volume, in bytes.</p>
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that you can
    #               represent in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    # @example To create a cached iSCSI volume
    #   # Creates a cached volume on a specified cached gateway.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     volume_size_in_bytes: 536870912000,
    #     snapshot_id: "snap-f47b7b94",
    #     target_name: "my-volume",
    #     network_interface_id: "10.1.1.1",
    #     client_token: "cachedvol112233"
    #   }
    #   options = {}
    #   response = client.create_cachedi_scsi_volume(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     volume_size_in_bytes: 1, # required
    #     snapshot_id: "SnapshotId",
    #     target_name: "TargetName", # required
    #     source_volume_arn: "VolumeARN",
    #     network_interface_id: "NetworkInterfaceId", # required
    #     client_token: "ClientToken", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cachedi_scsi_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN",
    #     target_arn: "TargetARN"
    #   }
    # @return [Types::CreateCachediSCSIVolumeOutput]
    def create_cachedi_scsi_volume(params = {}, options = {})
      request = build_request(:create_cachedi_scsi_volume, params)
      request.send_request(options)
    end

    # <p>Creates a Network File System (NFS) file share on an existing S3 File Gateway. In
    #          Storage Gateway, a file share is a file system mount point backed by Amazon S3
    #          cloud storage. Storage Gateway exposes file shares using an NFS interface. This operation
    #          is only supported for S3 File Gateways.</p>
    #          <important>
    #             <p>S3 File gateway requires Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure Amazon Web Services STS is
    #             activated in the Amazon Web Services Region you are creating your S3 File Gateway in. If
    #                Amazon Web Services STS is not activated in the Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #             <p>S3 File Gateways do not support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    # @param [Hash, Types::CreateNFSFileShareInput] params
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   <p>File share default values. Optional.</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway on which you want to create a file
    #            share.</p>
    # @option params [String] :encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    # @option params [String] :role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    # @option params [String] :location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    # @option params [Array<String>] :client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>
    # @option params [String] :squash
    #   <p>A value that maps a user to anonymous user.</p>
    #            <p>Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid NFS file share name can only contain the following characters:
    #                  <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,
    #                  <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and
    #               <code>_</code>.</p>
    #            </note>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    # @option params [String] :vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    # @option params [String] :bucket_region
    #   <p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1
    #     },
    #     gateway_arn: "GatewayARN", # required
    #     encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     default_storage_class: "StorageClass",
    #     object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #     client_list: ["Ipv4OrIpv6AddressCIDR"],
    #     squash: "Squash",
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: "NotificationPolicy",
    #     vpc_endpoint_dns_name: "DNSHostName",
    #     bucket_region: "RegionId",
    #     audit_destination_arn: "AuditDestinationARN"
    #   }
    #   options = {}
    #   response = client.create_nfs_file_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN"
    #   }
    # @return [Types::CreateNFSFileShareOutput]
    def create_nfs_file_share(params = {}, options = {})
      request = build_request(:create_nfs_file_share, params)
      request.send_request(options)
    end

    # <p>Creates a Server Message Block (SMB) file share on an existing S3 File Gateway. In
    #          Storage Gateway, a file share is a file system mount point backed by Amazon S3
    #          cloud storage. Storage Gateway exposes file shares using an SMB interface. This operation
    #          is only supported for S3 File Gateways.</p>
    #          <important>
    #             <p>S3 File Gateways require Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure that Amazon Web Services STS
    #             is activated in the Amazon Web Services Region you are creating your S3 File Gateway in.
    #             If Amazon Web Services STS is not activated in this Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #             <p>File gateways don't support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    # @param [Hash, Types::CreateSMBFileShareInput] params
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    # @option params [String] :gateway_arn
    #   <p>The ARN of the S3 File Gateway on which you want to create a file share.</p>
    # @option params [String] :encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    # @option params [String] :role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    # @option params [String] :location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::amzn-s3-demo-bucket/prefix/</code>
    #               </p>
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html">Using Windows ACLs to limit SMB file share
    #               access</a> in the <i>Amazon S3 File Gateway User
    #            Guide</i>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    # @option params [Array<String>] :admin_user_list
    #   <p>A list of users or groups in the Active Directory that will be granted administrator
    #            privileges on the file share. These users can do all file operations as the super-user.
    #            Acceptable formats include: <code>DOMAIN\User1</code>, <code>user1</code>,
    #               <code>@group1</code>, and <code>@DOMAIN\group1</code>.</p>
    #            <important>
    #               <p>Use this option very carefully, because any user in this list can do anything they
    #               like on the file share, regardless of file permissions.</p>
    #            </important>
    # @option params [Array<String>] :valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #               <a href=""></a> share. A group must be prefixed with the @ character. Acceptable formats
    #            include: <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    # @option params [Array<String>] :invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    # @option params [String] :authentication
    #   <p>The authentication method that users use to access the file share. The default is
    #               <code>ActiveDirectory</code>.</p>
    #            <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
    #            </p>
    # @option params [String] :case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid SMB file share name cannot contain the following characters:
    #                  <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>"</code>,<code>\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,
    #               or ASCII control characters <code>1-31</code>.</p>
    #            </note>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    # @option params [String] :vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    # @option params [String] :bucket_region
    #   <p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    # @option params [Boolean] :oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     gateway_arn: "GatewayARN", # required
    #     encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     default_storage_class: "StorageClass",
    #     object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     access_based_enumeration: false,
    #     admin_user_list: ["UserListUser"],
    #     valid_user_list: ["UserListUser"],
    #     invalid_user_list: ["UserListUser"],
    #     audit_destination_arn: "AuditDestinationARN",
    #     authentication: "Authentication",
    #     case_sensitivity: "ClientSpecified" # One of: ["ClientSpecified", "CaseSensitive"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: "NotificationPolicy",
    #     vpc_endpoint_dns_name: "DNSHostName",
    #     bucket_region: "RegionId",
    #     oplocks_enabled: false
    #   }
    #   options = {}
    #   response = client.create_smb_file_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN"
    #   }
    # @return [Types::CreateSMBFileShareOutput]
    def create_smb_file_share(params = {}, options = {})
      request = build_request(:create_smb_file_share, params)
      request.send_request(options)
    end

    # <p>Initiates a snapshot of a volume.</p>
    #          <p>Storage Gateway provides the ability to back up point-in-time snapshots of your
    #          data to Amazon Simple Storage (Amazon S3) for durable off-site recovery, and also
    #          import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute
    #          Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad hoc basis.
    #          This API enables you to take an ad hoc snapshot. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot">Editing a
    #             snapshot schedule</a>.</p>
    #          <p>In the <code>CreateSnapshot</code> request, you identify the volume by providing its
    #          Amazon Resource Name (ARN). You must also provide description for the snapshot. When
    #             Storage Gateway takes the snapshot of specified volume, the snapshot and
    #          description appears in the Storage Gateway console. In response, Storage Gateway
    #          returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or
    #          later use it when you want to create a volume from a snapshot. This operation is only
    #          supported in stored and cached volume gateway type.</p>
    #          <note>
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html">DeleteSnapshot</a> in the <i>Amazon Elastic Compute Cloud API
    #                Reference</i>.</p>
    #          </note>
    #          <important>
    #             <p>Volume and snapshot IDs are changing to a longer length ID format. For more
    #             information, see the important note on the <a href="https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html">Welcome</a> page.</p>
    #          </important>
    # @param [Hash, Types::CreateSnapshotInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    # @option params [String] :snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To create a snapshot of a gateway volume
    #   # Initiates an ad-hoc snapshot of a gateway volume.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     snapshot_description: "My root volume snapshot as of 10/03/2017"
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     snapshot_id: "snap-78e22663"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN",
    #     snapshot_id: "SnapshotId"
    #   }
    # @return [Types::CreateSnapshotOutput]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Initiates a snapshot of a gateway from a volume recovery point. This operation is only
    #          supported in the cached volume gateway type.</p>
    #          <p>A volume recovery point is a point in time at which all data of the volume is consistent
    #          and from which you can create a snapshot. To get a list of volume recovery point for cached
    #          volume gateway, use <a>ListVolumeRecoveryPoints</a>.</p>
    #          <p>In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you identify the
    #          volume by providing its Amazon Resource Name (ARN). You must also provide a description for
    #          the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and
    #          its description appear in the Storage Gateway console.
    #           In response, the gateway returns
    #          you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use
    #          it when you want to create a volume from a snapshot.</p>
    #          <note>
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html">DeleteSnapshot</a> in the <i>Amazon Elastic Compute Cloud API
    #                Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateSnapshotFromVolumeRecoveryPointInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    # @option params [String] :snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To create a snapshot of a gateway volume
    #   # Initiates a snapshot of a gateway from a volume recovery point.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     snapshot_description: "My root volume snapshot as of 2017-06-30T10:10:10.000Z"
    #   }
    #   options = {}
    #   response = client.create_snapshot_from_volume_recovery_point(params, options)
    #   response.to_h #=>
    #   {
    #     snapshot_id: "snap-78e22663",
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     volume_recovery_point_time: "2017-06-30T10:10:10.000Z"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot_from_volume_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_id: "SnapshotId",
    #     volume_arn: "VolumeARN",
    #     volume_recovery_point_time: "string"
    #   }
    # @return [Types::CreateSnapshotFromVolumeRecoveryPointOutput]
    def create_snapshot_from_volume_recovery_point(params = {}, options = {})
      request = build_request(:create_snapshot_from_volume_recovery_point, params)
      request.send_request(options)
    end

    # <p>Creates a volume on a specified gateway. This operation is only supported in the stored
    #          volume gateway type.</p>
    #          <p>The size of the volume to create is inferred from the disk size. You can choose to
    #          preserve existing data on the disk, create volume from an existing snapshot, or create an
    #          empty volume. If you choose to create an empty gateway volume, then any existing data on
    #          the disk is erased.</p>
    #          <p>In the request, you must specify the gateway and the disk information on which you are
    #          creating the volume. In response, the gateway creates the volume and returns volume
    #          information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target
    #          ARN that initiators can use to connect to the volume target.</p>
    # @param [Hash, Types::CreateStorediSCSIVolumeInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :disk_id
    #   <p>The unique identifier for the gateway local disk that is configured as a stored volume.
    #            Use <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to
    #            list disk IDs for a gateway.</p>
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID (e.g., "snap-1122aabb") of the snapshot to restore as the new stored
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    # @option params [Boolean] :preserve_existing_data
    #   <p>Set to <code>true</code> if you want to preserve the data on the local disk. Otherwise,
    #            set to <code>false</code> to create an empty volume.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Accepts IPv4
    #            and IPv6 addresses. Use <a>DescribeGatewayInformation</a> to get a list of the
    #            network interfaces available on a gateway.</p>
    #            <p>Valid Values: A valid IP address.</p>
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To create a stored iSCSI volume
    #   # Creates a stored volume on a specified stored gateway.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_id: "pci-0000:03:00.0-scsi-0:0:0:0",
    #     snapshot_id: "snap-f47b7b94",
    #     preserve_existing_data: true,
    #     target_name: "my-volume",
    #     network_interface_id: "10.1.1.1"
    #   }
    #   options = {}
    #   response = client.create_storedi_scsi_volume(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     volume_size_in_bytes: 1099511627776,
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     disk_id: "DiskId", # required
    #     snapshot_id: "SnapshotId",
    #     preserve_existing_data: false, # required
    #     target_name: "TargetName", # required
    #     network_interface_id: "NetworkInterfaceId", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_storedi_scsi_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN",
    #     volume_size_in_bytes: 1,
    #     target_arn: "TargetARN"
    #   }
    # @return [Types::CreateStorediSCSIVolumeOutput]
    def create_storedi_scsi_volume(params = {}, options = {})
      request = build_request(:create_storedi_scsi_volume, params)
      request.send_request(options)
    end

    # <p>Creates a new custom tape pool. You can use custom tape pool to enable tape retention
    #          lock on tapes that are archived in the custom pool.</p>
    # @param [Hash, Types::CreateTapePoolInput] params
    # @option params [String] :pool_name
    #   <p>The name of the new custom tape pool.</p>
    # @option params [String] :storage_class
    #   <p>The storage class that is associated with the new custom pool. When you use your backup
    #            application to eject the tape, the tape is archived directly into the storage class (S3
    #            Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    # @option params [String] :retention_lock_type
    #   <p>Tape retention lock can be configured in two modes. When configured in governance mode,
    #               Amazon Web Services accounts with specific IAM permissions are authorized to remove the
    #            tape retention lock from archived virtual tapes. When configured in compliance mode, the
    #            tape retention lock cannot be removed by any user, including the root Amazon Web Services account.</p>
    # @option params [Integer] :retention_lock_time_in_days
    #   <p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
    #            100 years (36,500 days).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to tape pool. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "PoolName", # required
    #     storage_class: "DEEP_ARCHIVE" # One of: ["DEEP_ARCHIVE", "GLACIER"], # required
    #     retention_lock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE", "NONE"],
    #     retention_lock_time_in_days: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tape_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "PoolARN"
    #   }
    # @return [Types::CreateTapePoolOutput]
    def create_tape_pool(params = {}, options = {})
      request = build_request(:create_tape_pool, params)
      request.send_request(options)
    end

    # <p>Creates a virtual tape by using your own barcode. You write data to the virtual tape and
    #          then archive the tape. A barcode is unique and cannot be reused if it has already been used
    #          on a tape. This applies to barcodes used on deleted tapes. This operation is only supported
    #          in the tape gateway type.</p>
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create a virtual tape.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    # @param [Hash, Types::CreateTapeWithBarcodeInput] params
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tape with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tape that you want to create.</p>
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    # @option params [String] :tape_barcode
    #   <p>The barcode that you want to assign to the tape.</p>
    #            <note>
    #               <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been
    #               deleted.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p>
    # @option params [Boolean] :worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape that has a barcode. Each
    #            tag is a key-value pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To create a virtual tape using a barcode
    #   # Creates a virtual tape by using your own barcode.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     tape_size_in_bytes: 107374182400,
    #     tape_barcode: "TEST12345"
    #   }
    #   options = {}
    #   response = client.create_tape_with_barcode(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST12345"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     tape_barcode: "TapeBarcode", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     pool_id: "PoolId",
    #     worm: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tape_with_barcode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::CreateTapeWithBarcodeOutput]
    def create_tape_with_barcode(params = {}, options = {})
      request = build_request(:create_tape_with_barcode, params)
      request.send_request(options)
    end

    # <p>Creates one or more virtual tapes. You write data to the virtual tapes and then archive
    #          the tapes. This operation is only supported in the tape gateway type.</p>
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create virtual tapes.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    # @param [Hash, Types::CreateTapesInput] params
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tapes with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tapes that you want to create.</p>
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    #            <note>
    #               <p>Using the same <code>ClientToken</code> prevents creating the tape multiple
    #               times.</p>
    #            </note>
    # @option params [Integer] :num_tapes_to_create
    #   <p>The number of virtual tapes that you want to create.</p>
    # @option params [String] :tape_barcode_prefix
    #   <p>A prefix that you append to the barcode of the virtual tape you are creating. This
    #            prefix makes the barcode unique.</p>
    #            <note>
    #               <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
    #               from A to Z.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    # @option params [Boolean] :worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To create a virtual tape
    #   # Creates one or more virtual tapes.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     tape_size_in_bytes: 107374182400,
    #     client_token: "77777",
    #     num_tapes_to_create: 3,
    #     tape_barcode_prefix: "TEST"
    #   }
    #   options = {}
    #   response = client.create_tapes(params, options)
    #   response.to_h #=>
    #   {
    #     tape_ar_ns: [
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST38A29D",
    #       "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3AA29F",
    #       "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3BA29E"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     client_token: "ClientToken", # required
    #     num_tapes_to_create: 1, # required
    #     tape_barcode_prefix: "TapeBarcodePrefix", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     pool_id: "PoolId",
    #     worm: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_tapes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_ar_ns: ["TapeARN"]
    #   }
    # @return [Types::CreateTapesOutput]
    def create_tapes(params = {}, options = {})
      request = build_request(:create_tapes, params)
      request.send_request(options)
    end

    # <p>Deletes the automatic tape creation policy of a gateway. If you delete this policy, new
    #          virtual tapes must be created manually. Use the Amazon Resource Name (ARN) of the gateway
    #          in your request to remove the policy.</p>
    # @param [Hash, Types::DeleteAutomaticTapeCreationPolicyInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.delete_automatic_tape_creation_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::DeleteAutomaticTapeCreationPolicyOutput]
    def delete_automatic_tape_creation_policy(params = {}, options = {})
      request = build_request(:delete_automatic_tape_creation_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the bandwidth rate limits of a gateway. You can delete either the upload and
    #          download bandwidth rate limit, or you can delete both. If you delete only one of the
    #          limits, the other limit remains unchanged. To specify which gateway to work with, use the
    #          Amazon Resource Name (ARN) of the gateway in your request. This operation is supported only
    #          for the stored volume, cached volume, and tape gateway types.</p>
    # @param [Hash, Types::DeleteBandwidthRateLimitInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :bandwidth_type
    #   <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to
    #            delete.</p>
    #            <p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> | <code>ALL</code>
    #            </p>
    # @example To delete bandwidth rate limits of gateway
    #   # Deletes the bandwidth rate limits of a gateway; either the upload or download limit, or both.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     bandwidth_type: "All"
    #   }
    #   options = {}
    #   response = client.delete_bandwidth_rate_limit(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     bandwidth_type: "BandwidthType", # required
    #   }
    #   options = {}
    #   response = client.delete_bandwidth_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::DeleteBandwidthRateLimitOutput]
    def delete_bandwidth_rate_limit(params = {}, options = {})
      request = build_request(:delete_bandwidth_rate_limit, params)
      request.send_request(options)
    end

    # <p>Deletes the specified cache report and any associated tags from the Storage Gateway database. You can only delete completed reports. If the status of the
    #          report you attempt to delete still IN-PROGRESS, the delete operation returns an error. You
    #          can use <code>CancelCacheReport</code> to cancel an IN-PROGRESS report.</p>
    #          <note>
    #             <p>
    #                <code>DeleteCacheReport</code> does not delete the report object from your Amazon S3 bucket.</p>
    #          </note>
    # @param [Hash, Types::DeleteCacheReportInput] params
    # @option params [String] :cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_report_arn: "CacheReportARN", # required
    #   }
    #   options = {}
    #   response = client.delete_cache_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_report_arn: "CacheReportARN"
    #   }
    # @return [Types::DeleteCacheReportOutput]
    def delete_cache_report(params = {}, options = {})
      request = build_request(:delete_cache_report, params)
      request.send_request(options)
    end

    # <p>Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified
    #          iSCSI target and initiator pair. This operation is supported in volume and tape gateway
    #          types.</p>
    # @param [Hash, Types::DeleteChapCredentialsInput] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    # @option params [String] :initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    # @example To delete CHAP credentials
    #   # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.
    #   params = {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com"
    #   }
    #   options = {}
    #   response = client.delete_chap_credentials(params, options)
    #   response.to_h #=>
    #   {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetARN", # required
    #     initiator_name: "IqnName", # required
    #   }
    #   options = {}
    #   response = client.delete_chap_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_arn: "TargetARN",
    #     initiator_name: "IqnName"
    #   }
    # @return [Types::DeleteChapCredentialsOutput]
    def delete_chap_credentials(params = {}, options = {})
      request = build_request(:delete_chap_credentials, params)
      request.send_request(options)
    end

    # <p>Deletes a file share from an S3 File Gateway. This operation is only supported for S3
    #          File Gateways.</p>
    # @param [Hash, Types::DeleteFileShareInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be deleted.</p>
    # @option params [Boolean] :force_delete
    #   <p>If this value is set to <code>true</code>, the operation deletes a file share
    #            immediately and aborts all data uploads to Amazon Web Services. Otherwise, the file share is
    #            not deleted until all data is uploaded to Amazon Web Services. This process aborts the data
    #            upload process, and the file share enters the <code>FORCE_DELETING</code> status.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_file_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN"
    #   }
    # @return [Types::DeleteFileShareOutput]
    def delete_file_share(params = {}, options = {})
      request = build_request(:delete_file_share, params)
      request.send_request(options)
    end

    # <p>Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name
    #          (ARN) of the gateway in your request. The operation deletes the gateway; however, it does
    #          not delete the gateway virtual machine (VM) from your host computer.</p>
    #          <p>After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway
    #          volumes are not deleted upon deleting the gateway, however, pending snapshots will not
    #          complete. After you delete a gateway, your next step is to remove it from your
    #          environment.</p>
    #          <important>
    #             <p>You no longer pay software charges after the gateway is deleted; however, your
    #             existing Amazon EBS snapshots persist and you will continue to be billed for these
    #             snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your
    #             Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you
    #             can delete your snapshots using the Amazon EC2 console. For more information, see the
    #                <a href="http://aws.amazon.com/storagegateway">Storage Gateway detail
    #             page</a>.</p>
    #          </important>
    # @param [Hash, Types::DeleteGatewayInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To delete a gatgeway
    #   # This operation deletes the gateway, but not the gateway's VM from the host computer.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.delete_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::DeleteGatewayOutput]
    def delete_gateway(params = {}, options = {})
      request = build_request(:delete_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes a snapshot of a volume.</p>
    #          <p>You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API
    #          action enables you to delete a snapshot schedule for a volume. For more information, see
    #             <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html">Backing up your
    #             volumes</a>. In the <code>DeleteSnapshotSchedule</code> request, you identify the
    #          volume by providing its Amazon Resource Name (ARN). This operation is only supported for
    #          cached volume gateway types.</p>
    #          <note>
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             go to <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
    #          </note>
    # @param [Hash, Types::DeleteSnapshotScheduleInput] params
    # @option params [String] :volume_arn
    #   <p>The volume which snapshot schedule to delete.</p>
    # @example To delete a snapshot of a volume
    #   # This action enables you to delete a snapshot schedule for a volume.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    #   options = {}
    #   response = client.delete_snapshot_schedule(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN"
    #   }
    # @return [Types::DeleteSnapshotScheduleOutput]
    def delete_snapshot_schedule(params = {}, options = {})
      request = build_request(:delete_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified virtual tape. This operation is only supported in the tape gateway
    #          type.</p>
    # @param [Hash, Types::DeleteTapeInput] params
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is
    #            associated with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    # @example To delete a virtual tape
    #   # This example deletes the specified virtual tape.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:204469490176:gateway/sgw-12A3456B",
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    #   }
    #   options = {}
    #   response = client.delete_tape(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #     bypass_governance_retention: false
    #   }
    #   options = {}
    #   response = client.delete_tape(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::DeleteTapeOutput]
    def delete_tape(params = {}, options = {})
      request = build_request(:delete_tape, params)
      request.send_request(options)
    end

    # <p>Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is
    #          only supported in the tape gateway type.</p>
    # @param [Hash, Types::DeleteTapeArchiveInput] params
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf
    #            (VTS).</p>
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    # @example To delete a virtual tape from the shelf (VTS)
    #   # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    #   params = {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    #   }
    #   options = {}
    #   response = client.delete_tape_archive(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_arn: "TapeARN", # required
    #     bypass_governance_retention: false
    #   }
    #   options = {}
    #   response = client.delete_tape_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::DeleteTapeArchiveOutput]
    def delete_tape_archive(params = {}, options = {})
      request = build_request(:delete_tape_archive, params)
      request.send_request(options)
    end

    # <p>Delete a custom tape pool. A custom tape pool can only be deleted if there are no tapes
    #          in the pool and if there are no automatic tape creation policies that reference the custom
    #          tape pool.</p>
    # @param [Hash, Types::DeleteTapePoolInput] params
    # @option params [String] :pool_arn
    #   <p>The Amazon Resource Name (ARN) of the custom tape pool to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_arn: "PoolARN", # required
    #   }
    #   options = {}
    #   response = client.delete_tape_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "PoolARN"
    #   }
    # @return [Types::DeleteTapePoolOutput]
    def delete_tape_pool(params = {}, options = {})
      request = build_request(:delete_tape_pool, params)
      request.send_request(options)
    end

    # <p>Deletes the specified storage volume that you previously created using the <a>CreateCachediSCSIVolume</a> or <a>CreateStorediSCSIVolume</a> API.
    #          This operation is only supported in the cached volume and stored volume types. For stored
    #          volume gateways, the local disk that was configured as the storage volume is not deleted.
    #          You can reuse the local disk to create another storage volume.</p>
    #          <p>Before you delete a volume, make sure there are no iSCSI connections to the volume you
    #          are deleting. You should also make sure there is no snapshot in progress. You can use the
    #          Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are
    #          deleting and check the snapshot status. For more information, go to <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #             Reference</i>.</p>
    #          <p>In the request, you must provide the Amazon Resource Name (ARN) of the storage volume
    #          you want to delete.</p>
    # @param [Hash, Types::DeleteVolumeInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    # @example To delete a gateway volume
    #   # Deletes the specified gateway volume that you previously created using the CreateCachediSCSIVolume or CreateStorediSCSIVolume API.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    #   options = {}
    #   response = client.delete_volume(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #   }
    #   options = {}
    #   response = client.delete_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN"
    #   }
    # @return [Types::DeleteVolumeOutput]
    def delete_volume(params = {}, options = {})
      request = build_request(:delete_volume, params)
      request.send_request(options)
    end

    # <p>Returns information about the most recent high availability monitoring test that was
    #          performed on the host in a cluster. If a test isn't performed, the status and start
    #          time in the response would be null.</p>
    # @param [Hash, Types::DescribeAvailabilityMonitorTestInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_availability_monitor_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     status: "COMPLETE" # One of: ["COMPLETE", "FAILED", "PENDING"],
    #     start_time: Time.now
    #   }
    # @return [Types::DescribeAvailabilityMonitorTestOutput]
    def describe_availability_monitor_test(params = {}, options = {})
      request = build_request(:describe_availability_monitor_test, params)
      request.send_request(options)
    end

    # <p>Returns the bandwidth rate limits of a gateway. By default, these limits are not set,
    #          which means no bandwidth rate limiting is in effect. This operation is supported only for
    #          the stored volume, cached volume, and tape gateway types. To describe bandwidth rate limits
    #          for S3 file gateways, use <a>DescribeBandwidthRateLimitSchedule</a>.</p>
    #          <p>This operation returns a value for a bandwidth rate limit only if the limit is set. If
    #          no limits are set for the gateway, then this operation returns only the gateway ARN in the
    #          response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of
    #          the gateway in your request.</p>
    # @param [Hash, Types::DescribeBandwidthRateLimitInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe the bandwidth rate limits of a gateway
    #   # Returns a value for a bandwidth rate limit if set. If not set, then only the gateway ARN is returned.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_bandwidth_rate_limit(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     average_upload_rate_limit_in_bits_per_sec: 102400,
    #     average_download_rate_limit_in_bits_per_sec: 204800
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_bandwidth_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     average_upload_rate_limit_in_bits_per_sec: 1,
    #     average_download_rate_limit_in_bits_per_sec: 1
    #   }
    # @return [Types::DescribeBandwidthRateLimitOutput]
    def describe_bandwidth_rate_limit(params = {}, options = {})
      request = build_request(:describe_bandwidth_rate_limit, params)
      request.send_request(options)
    end

    # <p> Returns information about the bandwidth rate limit schedule of a gateway. By default,
    #          gateways do not have bandwidth rate limit schedules, which means no bandwidth rate limiting
    #          is in effect. This operation is supported only for volume, tape and S3 file gateways. FSx
    #          file gateways do not support bandwidth rate limits.</p>
    #          <p>This operation returns information about a gateway's bandwidth rate limit schedule. A
    #          bandwidth rate limit schedule consists of one or more bandwidth rate limit intervals. A
    #          bandwidth rate limit interval defines a period of time on one or more days of the week,
    #          during which bandwidth rate limits are specified for uploading, downloading, or both. </p>
    #          <p> A bandwidth rate limit interval consists of one or more days of the week, a start hour
    #          and minute, an ending hour and minute, and bandwidth rate limits for uploading and
    #          downloading </p>
    #          <p> If no bandwidth rate limit schedule intervals are set for the gateway, this operation
    #          returns an empty response. To specify which gateway to describe, use the Amazon Resource
    #          Name (ARN) of the gateway in your request.</p>
    # @param [Hash, Types::DescribeBandwidthRateLimitScheduleInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_bandwidth_rate_limit_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     bandwidth_rate_limit_intervals: [
    #       {
    #         start_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #         end_hour_of_day: 1, # required
    #         end_minute_of_hour: 1, # required
    #         days_of_week: [1], # required
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         average_download_rate_limit_in_bits_per_sec: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeBandwidthRateLimitScheduleOutput]
    def describe_bandwidth_rate_limit_schedule(params = {}, options = {})
      request = build_request(:describe_bandwidth_rate_limit_schedule, params)
      request.send_request(options)
    end

    # <p>Returns information about the cache of a gateway. This operation is only supported in
    #          the cached volume, tape, and file gateway types.</p>
    #          <p>The response includes disk IDs that are configured as cache, and it includes the amount
    #          of cache allocated and used.</p>
    # @param [Hash, Types::DescribeCacheInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe cache information
    #   # Returns information about the cache of a gateway.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_cache(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:04:00.0-scsi-0:1:0:0"
    #     ],
    #     cache_allocated_in_bytes: 2199023255552,
    #     cache_used_percentage: 0.07,
    #     cache_dirty_percentage: 0.07,
    #     cache_hit_percentage: 99.68,
    #     cache_miss_percentage: 0.32
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     disk_ids: ["DiskId"],
    #     cache_allocated_in_bytes: 1,
    #     cache_used_percentage: 1.0,
    #     cache_dirty_percentage: 1.0,
    #     cache_hit_percentage: 1.0,
    #     cache_miss_percentage: 1.0
    #   }
    # @return [Types::DescribeCacheOutput]
    def describe_cache(params = {}, options = {})
      request = build_request(:describe_cache, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified cache report, including completion status and
    #          generation progress.</p>
    # @param [Hash, Types::DescribeCacheReportInput] params
    # @option params [String] :cache_report_arn
    #   <p>The Amazon Resource Name (ARN) of the cache report you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_report_arn: "CacheReportARN", # required
    #   }
    #   options = {}
    #   response = client.describe_cache_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_report_info: {
    #       cache_report_arn: "CacheReportARN",
    #       cache_report_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELED", "FAILED", "ERROR"],
    #       report_completion_percent: 1,
    #       end_time: Time.now,
    #       role: "Role",
    #       file_share_arn: "FileShareARN",
    #       location_arn: "LocationARN",
    #       start_time: Time.now,
    #       inclusion_filters: [
    #         {
    #           name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #           values: ["CacheReportFilterValue"], # required
    #         }
    #       ],
    #       exclusion_filters: [
    #         {
    #           name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #           values: ["CacheReportFilterValue"], # required
    #         }
    #       ],
    #       report_name: "CacheReportName",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeCacheReportOutput]
    def describe_cache_report(params = {}, options = {})
      request = build_request(:describe_cache_report, params)
      request.send_request(options)
    end

    # <p>Returns a description of the gateway volumes specified in the request. This operation is
    #          only supported in the cached volume gateway types.</p>
    #          <p>The list of gateway volumes in the request must be from one gateway. In the response,
    #             Storage Gateway returns volume information sorted by volume Amazon Resource Name
    #          (ARN).</p>
    # @param [Hash, Types::DescribeCachediSCSIVolumesInput] params
    # @option params [Array<String>] :volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            cached volume. All of the specified cached volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    # @example To describe gateway cached iSCSI volumes
    #   # Returns a description of the gateway cached iSCSI volumes specified in the request.
    #   params = {
    #     volume_ar_ns: [
    #       "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_cachedi_scsi_volumes(params, options)
    #   response.to_h #=>
    #   {
    #     cachedi_scsi_volumes: [
    #       {
    #         volumei_scsi_attributes: {
    #           chap_enabled: true,
    #           lun_number: 1,
    #           network_interface_id: "10.243.43.207",
    #           network_interface_port: 3260,
    #           target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
    #         },
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #         volume_id: "vol-1122AABB",
    #         volume_size_in_bytes: 1099511627776,
    #         volume_status: "AVAILABLE",
    #         volume_type: "CACHED iSCSI"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_ar_ns: ["VolumeARN"], # required
    #   }
    #   options = {}
    #   response = client.describe_cachedi_scsi_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cachedi_scsi_volumes: [
    #       {
    #         volume_arn: "VolumeARN",
    #         volume_id: "VolumeId",
    #         volume_type: "VolumeType",
    #         volume_status: "VolumeStatus",
    #         volume_attachment_status: "VolumeAttachmentStatus",
    #         volume_size_in_bytes: 1,
    #         volume_progress: 1.0,
    #         source_snapshot_id: "SnapshotId",
    #         volumei_scsi_attributes: {
    #           target_arn: "TargetARN",
    #           network_interface_id: "NetworkInterfaceId",
    #           network_interface_port: 1,
    #           lun_number: 1,
    #           chap_enabled: false
    #         },
    #         created_date: Time.now,
    #         volume_used_in_bytes: 1,
    #         kms_key: "KMSKey",
    #         target_name: "TargetName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCachediSCSIVolumesOutput]
    def describe_cachedi_scsi_volumes(params = {}, options = {})
      request = build_request(:describe_cachedi_scsi_volumes, params)
      request.send_request(options)
    end

    # <p>Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials
    #          information for a specified iSCSI target, one for each target-initiator pair. This
    #          operation is supported in the volume and tape gateway types.</p>
    # @param [Hash, Types::DescribeChapCredentialsInput] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    # @example To describe CHAP credetnitals for an iSCSI
    #   # Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.
    #   params = {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
    #   }
    #   options = {}
    #   response = client.describe_chap_credentials(params, options)
    #   response.to_h #=>
    #   {
    #     chap_credentials: [
    #       {
    #         target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    #         secret_to_authenticate_initiator: "111111111111",
    #         initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com",
    #         secret_to_authenticate_target: "222222222222"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetARN", # required
    #   }
    #   options = {}
    #   response = client.describe_chap_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     chap_credentials: [
    #       {
    #         target_arn: "TargetARN",
    #         secret_to_authenticate_initiator: "ChapSecret",
    #         initiator_name: "IqnName",
    #         secret_to_authenticate_target: "ChapSecret"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeChapCredentialsOutput]
    def describe_chap_credentials(params = {}, options = {})
      request = build_request(:describe_chap_credentials, params)
      request.send_request(options)
    end

    # <p>Gets the file system association information. This operation is only supported for FSx
    #          File Gateways.</p>
    # @param [Hash, Types::DescribeFileSystemAssociationsInput] params
    # @option params [Array<String>] :file_system_association_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file system association to be
    #            described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_association_arn_list: ["FileSystemAssociationARN"], # required
    #   }
    #   options = {}
    #   response = client.describe_file_system_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_association_info_list: [
    #       {
    #         file_system_association_arn: "FileSystemAssociationARN",
    #         location_arn: "FileSystemLocationARN",
    #         file_system_association_status: "FileSystemAssociationStatus",
    #         audit_destination_arn: "AuditDestinationARN",
    #         gateway_arn: "GatewayARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         cache_attributes: {
    #           cache_stale_timeout_in_seconds: 1
    #         },
    #         endpoint_network_configuration: {
    #           ip_addresses: ["IPV4Address"]
    #         },
    #         file_system_association_status_details: [
    #           {
    #             error_code: "FileSystemAssociationSyncErrorCode"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeFileSystemAssociationsOutput]
    def describe_file_system_associations(params = {}, options = {})
      request = build_request(:describe_file_system_associations, params)
      request.send_request(options)
    end

    # <p>Returns metadata about a gateway such as its name, network interfaces, time zone,
    #          status, and software version. To specify which gateway to describe, use the Amazon Resource
    #          Name (ARN) of the gateway in your request.</p>
    # @param [Hash, Types::DescribeGatewayInformationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe metadata about the gateway
    #   # Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not).
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_gateway_information(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     gateway_id: "sgw-AABB1122",
    #     gateway_name: "My_Gateway",
    #     gateway_timezone: "GMT-8:00",
    #     gateway_state: "STATE_RUNNING",
    #     gateway_network_interfaces: [
    #       {
    #         ipv4_address: "10.35.69.216"
    #       }
    #     ],
    #     gateway_type: "STORED",
    #     next_update_availability_date: "2017-01-02T16:00:00",
    #     last_software_update: "2016-01-02T16:00:00"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_gateway_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     gateway_id: "GatewayId",
    #     gateway_name: "string",
    #     gateway_timezone: "GatewayTimezone",
    #     gateway_state: "GatewayState",
    #     gateway_network_interfaces: [
    #       {
    #         ipv4_address: "string",
    #         mac_address: "string",
    #         ipv6_address: "string"
    #       }
    #     ],
    #     gateway_type: "GatewayType",
    #     next_update_availability_date: "NextUpdateAvailabilityDate",
    #     last_software_update: "LastSoftwareUpdate",
    #     ec2_instance_id: "Ec2InstanceId",
    #     ec2_instance_region: "Ec2InstanceRegion",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     vpc_endpoint: "string",
    #     cloud_watch_log_group_arn: "CloudWatchLogGroupARN",
    #     host_environment: "VMWARE" # One of: ["VMWARE", "HYPER-V", "EC2", "KVM", "OTHER", "SNOWBALL"],
    #     endpoint_type: "EndpointType",
    #     software_updates_end_date: "SoftwareUpdatesEndDate",
    #     deprecation_date: "DeprecationDate",
    #     gateway_capacity: "Small" # One of: ["Small", "Medium", "Large"],
    #     supported_gateway_capacities: ["Small" # One of: ["Small", "Medium", "Large"]],
    #     host_environment_id: "HostEnvironmentId",
    #     software_version: "SoftwareVersion"
    #   }
    # @return [Types::DescribeGatewayInformationOutput]
    def describe_gateway_information(params = {}, options = {})
      request = build_request(:describe_gateway_information, params)
      request.send_request(options)
    end

    # <p>Returns your gateway's maintenance window schedule information, with values for
    #          monthly or weekly cadence, specific day and time to begin maintenance, and which types of
    #          updates to apply. Time values returned are for the gateway's time zone.</p>
    # @param [Hash, Types::DescribeMaintenanceStartTimeInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe gateway's maintenance start time
    #   # Returns your gateway's weekly maintenance start time including the day and time of the week.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_start_time(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     hour_of_day: 15,
    #     minute_of_hour: 35,
    #     day_of_week: 2,
    #     timezone: "GMT+7:00"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_maintenance_start_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     hour_of_day: 1,
    #     minute_of_hour: 1,
    #     day_of_week: 1,
    #     day_of_month: 1,
    #     timezone: "GatewayTimezone",
    #     software_update_preferences: {
    #       automatic_update_policy: "ALL_VERSIONS" # One of: ["ALL_VERSIONS", "EMERGENCY_VERSIONS_ONLY"]
    #     }
    #   }
    # @return [Types::DescribeMaintenanceStartTimeOutput]
    def describe_maintenance_start_time(params = {}, options = {})
      request = build_request(:describe_maintenance_start_time, params)
      request.send_request(options)
    end

    # <p>Gets a description for one or more Network File System (NFS) file shares from an S3 File
    #          Gateway. This operation is only supported for S3 File Gateways.</p>
    # @param [Hash, Types::DescribeNFSFileSharesInput] params
    # @option params [Array<String>] :file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn_list: ["FileShareARN"], # required
    #   }
    #   options = {}
    #   response = client.describe_nfs_file_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nfs_file_share_info_list: [
    #       {
    #         nfs_file_share_defaults: {
    #           file_mode: "PermissionMode",
    #           directory_mode: "PermissionMode",
    #           group_id: 1,
    #           owner_id: 1
    #         },
    #         file_share_arn: "FileShareARN",
    #         file_share_id: "FileShareId",
    #         file_share_status: "FileShareStatus",
    #         gateway_arn: "GatewayARN",
    #         encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #         kms_encrypted: false,
    #         kms_key: "KMSKey",
    #         path: "Path",
    #         role: "Role",
    #         location_arn: "LocationARN",
    #         default_storage_class: "StorageClass",
    #         object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #         client_list: ["Ipv4OrIpv6AddressCIDR"],
    #         squash: "Squash",
    #         read_only: false,
    #         guess_mime_type_enabled: false,
    #         requester_pays: false,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         file_share_name: "FileShareName",
    #         cache_attributes: {
    #           cache_stale_timeout_in_seconds: 1
    #         },
    #         notification_policy: "NotificationPolicy",
    #         vpc_endpoint_dns_name: "DNSHostName",
    #         bucket_region: "RegionId",
    #         audit_destination_arn: "AuditDestinationARN"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeNFSFileSharesOutput]
    def describe_nfs_file_shares(params = {}, options = {})
      request = build_request(:describe_nfs_file_shares, params)
      request.send_request(options)
    end

    # <p>Gets a description for one or more Server Message Block (SMB) file shares from a S3 File
    #          Gateway. This operation is only supported for S3 File Gateways.</p>
    # @param [Hash, Types::DescribeSMBFileSharesInput] params
    # @option params [Array<String>] :file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn_list: ["FileShareARN"], # required
    #   }
    #   options = {}
    #   response = client.describe_smb_file_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     smb_file_share_info_list: [
    #       {
    #         file_share_arn: "FileShareARN",
    #         file_share_id: "FileShareId",
    #         file_share_status: "FileShareStatus",
    #         gateway_arn: "GatewayARN",
    #         encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #         kms_encrypted: false,
    #         kms_key: "KMSKey",
    #         path: "Path",
    #         role: "Role",
    #         location_arn: "LocationARN",
    #         default_storage_class: "StorageClass",
    #         object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #         read_only: false,
    #         guess_mime_type_enabled: false,
    #         requester_pays: false,
    #         smbacl_enabled: false,
    #         access_based_enumeration: false,
    #         admin_user_list: ["UserListUser"],
    #         valid_user_list: ["UserListUser"],
    #         invalid_user_list: ["UserListUser"],
    #         audit_destination_arn: "AuditDestinationARN",
    #         authentication: "Authentication",
    #         case_sensitivity: "ClientSpecified" # One of: ["ClientSpecified", "CaseSensitive"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         file_share_name: "FileShareName",
    #         cache_attributes: {
    #           cache_stale_timeout_in_seconds: 1
    #         },
    #         notification_policy: "NotificationPolicy",
    #         vpc_endpoint_dns_name: "DNSHostName",
    #         bucket_region: "RegionId",
    #         oplocks_enabled: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSMBFileSharesOutput]
    def describe_smb_file_shares(params = {}, options = {})
      request = build_request(:describe_smb_file_shares, params)
      request.send_request(options)
    end

    # <p>Gets a description of a Server Message Block (SMB) file share settings from a file
    #          gateway. This operation is only supported for file gateways.</p>
    # @param [Hash, Types::DescribeSMBSettingsInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_smb_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     domain_name: "DomainName",
    #     active_directory_status: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR", "INSUFFICIENT_PERMISSIONS"],
    #     smb_guest_password_set: false,
    #     smb_security_strategy: "ClientSpecified" # One of: ["ClientSpecified", "MandatorySigning", "MandatoryEncryption", "MandatoryEncryptionNoAes128"],
    #     file_shares_visible: false,
    #     smb_local_groups: {
    #       gateway_admins: ["UserListUser"]
    #     }
    #   }
    # @return [Types::DescribeSMBSettingsOutput]
    def describe_smb_settings(params = {}, options = {})
      request = build_request(:describe_smb_settings, params)
      request.send_request(options)
    end

    # <p>Describes the snapshot schedule for the specified gateway volume. The snapshot schedule
    #          information includes intervals at which snapshots are automatically initiated on the
    #          volume. This operation is only supported in the cached volume and stored volume
    #          types.</p>
    # @param [Hash, Types::DescribeSnapshotScheduleInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    # @example To describe snapshot schedule for gateway volume
    #   # Describes the snapshot schedule for the specified gateway volume including intervals at which snapshots are automatically initiated.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    #   options = {}
    #   response = client.describe_snapshot_schedule(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     start_at: 6,
    #     recurrence_in_hours: 24,
    #     description: "sgw-AABB1122:vol-AABB1122:Schedule",
    #     timezone: "GMT+7:00"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #   }
    #   options = {}
    #   response = client.describe_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN",
    #     start_at: 1,
    #     recurrence_in_hours: 1,
    #     description: "Description",
    #     timezone: "GatewayTimezone",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSnapshotScheduleOutput]
    def describe_snapshot_schedule(params = {}, options = {})
      request = build_request(:describe_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Returns the description of the gateway volumes specified in the request. The list of
    #          gateway volumes in the request must be from one gateway. In the response, Storage Gateway returns volume information sorted by volume ARNs. This operation is only
    #          supported in stored volume gateway type.</p>
    # @param [Hash, Types::DescribeStorediSCSIVolumesInput] params
    # @option params [Array<String>] :volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            stored volume. All of the specified stored volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    # @example To describe the volumes of a gateway
    #   # Returns the description of the gateway volumes specified in the request belonging to the same gateway.
    #   params = {
    #     volume_ar_ns: [
    #       "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_storedi_scsi_volumes(params, options)
    #   response.to_h #=>
    #   {
    #     storedi_scsi_volumes: [
    #       {
    #         volumei_scsi_attributes: {
    #           chap_enabled: true,
    #           network_interface_id: "10.243.43.207",
    #           network_interface_port: 3260,
    #           target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
    #         },
    #         preserved_existing_data: false,
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #         volume_disk_id: "pci-0000:03:00.0-scsi-0:0:0:0",
    #         volume_id: "vol-1122AABB",
    #         volume_progress: 23.7,
    #         volume_size_in_bytes: 1099511627776,
    #         volume_status: "BOOTSTRAPPING"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_ar_ns: ["VolumeARN"], # required
    #   }
    #   options = {}
    #   response = client.describe_storedi_scsi_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storedi_scsi_volumes: [
    #       {
    #         volume_arn: "VolumeARN",
    #         volume_id: "VolumeId",
    #         volume_type: "VolumeType",
    #         volume_status: "VolumeStatus",
    #         volume_attachment_status: "VolumeAttachmentStatus",
    #         volume_size_in_bytes: 1,
    #         volume_progress: 1.0,
    #         volume_disk_id: "DiskId",
    #         source_snapshot_id: "SnapshotId",
    #         preserved_existing_data: false,
    #         volumei_scsi_attributes: {
    #           target_arn: "TargetARN",
    #           network_interface_id: "NetworkInterfaceId",
    #           network_interface_port: 1,
    #           lun_number: 1,
    #           chap_enabled: false
    #         },
    #         created_date: Time.now,
    #         volume_used_in_bytes: 1,
    #         kms_key: "KMSKey",
    #         target_name: "TargetName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeStorediSCSIVolumesOutput]
    def describe_storedi_scsi_volumes(params = {}, options = {})
      request = build_request(:describe_storedi_scsi_volumes, params)
      request.send_request(options)
    end

    # <p>Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This
    #          operation is only supported in the tape gateway type.</p>
    #          <p>If a specific <code>TapeARN</code> is not specified, Storage Gateway returns a
    #          description of all virtual tapes found in the VTS associated with your account.</p>
    # @param [Hash, Types::DescribeTapeArchivesInput] params
    # @option params [Array<String>] :tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe.</p>
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing virtual
    #            tapes.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_ar_ns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_tape_archives(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_archives: [
    #       {
    #         tape_arn: "TapeARN",
    #         tape_barcode: "TapeBarcode",
    #         tape_created_date: Time.now,
    #         tape_size_in_bytes: 1,
    #         completion_time: Time.now,
    #         retrieved_to: "GatewayARN",
    #         tape_status: "TapeArchiveStatus",
    #         tape_used_in_bytes: 1,
    #         kms_key: "KMSKey",
    #         pool_id: "PoolId",
    #         worm: false,
    #         retention_start_date: Time.now,
    #         pool_entry_date: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::DescribeTapeArchivesOutput]
    def describe_tape_archives(params = {}, options = {})
      request = build_request(:describe_tape_archives, params)
      request.send_request(options)
    end

    # <p>Returns a list of virtual tape recovery points that are available for the specified tape
    #          gateway.</p>
    #          <p>A recovery point is a point-in-time view of a virtual tape at which all the data on the
    #          virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery
    #          points can be recovered to a new gateway. This operation is only supported in the tape
    #          gateway type.</p>
    # @param [Hash, Types::DescribeTapeRecoveryPointsInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing the virtual
    #            tape recovery points.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tape recovery points that are described be limited
    #            to the specified number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_tape_recovery_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     tape_recovery_point_infos: [
    #       {
    #         tape_arn: "TapeARN",
    #         tape_recovery_point_time: Time.now,
    #         tape_size_in_bytes: 1,
    #         tape_status: "TapeRecoveryPointStatus"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::DescribeTapeRecoveryPointsOutput]
    def describe_tape_recovery_points(params = {}, options = {})
      request = build_request(:describe_tape_recovery_points, params)
      request.send_request(options)
    end

    # <p>Returns a description of virtual tapes that correspond to the specified Amazon Resource
    #          Names (ARNs). If <code>TapeARN</code> is not specified, returns a description of the
    #          virtual tapes associated with the specified gateway. This operation is only supported for
    #          the tape gateway type.</p>
    #          <p>The operation supports pagination. By default, the operation returns a maximum of up to
    #          100 tapes. You can optionally specify the <code>Limit</code> field in the body to limit the
    #          number of tapes in the response. If the number of tapes returned in the response is
    #          truncated, the response includes a <code>Marker</code> field. You can use this
    #             <code>Marker</code> value in your subsequent request to retrieve the next set of
    #          tapes.</p>
    # @param [Hash, Types::DescribeTapesInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<String>] :tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe. If this parameter is not specified, Tape gateway returns a
    #            description of all virtual tapes associated with the specified gateway.</p>
    # @option params [String] :marker
    #   <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker
    #            indicates which page of results to retrieve.</p>
    #            <p>If not specified, the first page of results is retrieved.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    #            <note>
    #               <p>Amazon Web Services may impose its own limit, if this field is not set.</p>
    #            </note>
    # @example To describe virtual tape(s) associated with gateway
    #   # Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified, returns a description of all virtual tapes.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     tape_ar_ns: [
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1",
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0"
    #     ],
    #     marker: "1",
    #     limit: 2
    #   }
    #   options = {}
    #   response = client.describe_tapes(params, options)
    #   response.to_h #=>
    #   {
    #     tapes: [
    #       {
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1",
    #         tape_barcode: "TEST04A2A1",
    #         tape_size_in_bytes: 107374182400,
    #         tape_status: "AVAILABLE"
    #       },
    #       {
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0",
    #         tape_barcode: "TEST05A2A0",
    #         tape_size_in_bytes: 107374182400,
    #         tape_status: "AVAILABLE"
    #       }
    #     ],
    #     marker: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     tape_ar_ns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_tapes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tapes: [
    #       {
    #         tape_arn: "TapeARN",
    #         tape_barcode: "TapeBarcode",
    #         tape_created_date: Time.now,
    #         tape_size_in_bytes: 1,
    #         tape_status: "TapeStatus",
    #         vtl_device: "VTLDeviceARN",
    #         progress: 1.0,
    #         tape_used_in_bytes: 1,
    #         kms_key: "KMSKey",
    #         pool_id: "PoolId",
    #         worm: false,
    #         retention_start_date: Time.now,
    #         pool_entry_date: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::DescribeTapesOutput]
    def describe_tapes(params = {}, options = {})
      request = build_request(:describe_tapes, params)
      request.send_request(options)
    end

    # <p>Returns information about the upload buffer of a gateway. This operation is supported
    #          for the stored volume, cached volume, and tape gateway types.</p>
    #          <p>The response includes disk IDs that are configured as upload buffer space, and it
    #          includes the amount of upload buffer space allocated and used.</p>
    # @param [Hash, Types::DescribeUploadBufferInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe upload buffer of a gateway
    #   # Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space allocated and used.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_upload_buffer(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:04:00.0-scsi-0:1:0:0"
    #     ],
    #     upload_buffer_used_in_bytes: 0,
    #     upload_buffer_allocated_in_bytes: 161061273600
    #   }
    # @example To describe upload buffer of gateway
    #   # Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space allocated/used.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_upload_buffer(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:04:00.0-scsi-0:1:0:0"
    #     ],
    #     upload_buffer_used_in_bytes: 161061273600,
    #     upload_buffer_allocated_in_bytes: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_upload_buffer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     disk_ids: ["DiskId"],
    #     upload_buffer_used_in_bytes: 1,
    #     upload_buffer_allocated_in_bytes: 1
    #   }
    # @return [Types::DescribeUploadBufferOutput]
    def describe_upload_buffer(params = {}, options = {})
      request = build_request(:describe_upload_buffer, params)
      request.send_request(options)
    end

    # <p>Returns a description of virtual tape library (VTL) devices for the specified tape
    #          gateway. In the response, Storage Gateway returns VTL device information.</p>
    #          <p>This operation is only supported in the tape gateway type.</p>
    # @param [Hash, Types::DescribeVTLDevicesInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<String>] :vtl_device_ar_ns
    #   <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a
    #            VTL device.</p>
    #            <note>
    #               <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are
    #               specified, the result will contain all devices on the specified gateway.</p>
    #            </note>
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing the VTL
    #            devices.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the number of VTL devices described be limited to the specified
    #            number.</p>
    # @example To describe virtual tape library (VTL) devices of a single gateway
    #   # Returns a description of virtual tape library (VTL) devices for the specified gateway.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     vtl_device_ar_ns: [
    #     ],
    #     marker: "1",
    #     limit: 123
    #   }
    #   options = {}
    #   response = client.describe_vtl_devices(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     vtl_devices: [
    #       {
    #         devicei_scsi_attributes: {
    #           chap_enabled: false,
    #           network_interface_id: "10.243.43.207",
    #           network_interface_port: 3260,
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-mediachanger"
    #         },
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001",
    #         vtl_device_product_identifier: "L700",
    #         vtl_device_type: "Medium Changer",
    #         vtl_device_vendor: "STK"
    #       },
    #       {
    #         devicei_scsi_attributes: {
    #           chap_enabled: false,
    #           network_interface_id: "10.243.43.209",
    #           network_interface_port: 3260,
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-01"
    #         },
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00001",
    #         vtl_device_product_identifier: "ULT3580-TD5",
    #         vtl_device_type: "Tape Drive",
    #         vtl_device_vendor: "IBM"
    #       },
    #       {
    #         devicei_scsi_attributes: {
    #           chap_enabled: false,
    #           network_interface_id: "10.243.43.209",
    #           network_interface_port: 3260,
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-02"
    #         },
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00002",
    #         vtl_device_product_identifier: "ULT3580-TD5",
    #         vtl_device_type: "Tape Drive",
    #         vtl_device_vendor: "IBM"
    #       }
    #     ],
    #     marker: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     vtl_device_ar_ns: ["VTLDeviceARN"],
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.describe_vtl_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     vtl_devices: [
    #       {
    #         vtl_device_arn: "VTLDeviceARN",
    #         vtl_device_type: "VTLDeviceType",
    #         vtl_device_vendor: "VTLDeviceVendor",
    #         vtl_device_product_identifier: "VTLDeviceProductIdentifier",
    #         devicei_scsi_attributes: {
    #           target_arn: "TargetARN",
    #           network_interface_id: "NetworkInterfaceId",
    #           network_interface_port: 1,
    #           chap_enabled: false
    #         }
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::DescribeVTLDevicesOutput]
    def describe_vtl_devices(params = {}, options = {})
      request = build_request(:describe_vtl_devices, params)
      request.send_request(options)
    end

    # <p>Returns information about the working storage of a gateway. This operation is only
    #          supported in the stored volumes gateway type. This operation is deprecated in cached
    #          volumes API version (20120630). Use DescribeUploadBuffer instead.</p>
    #          <note>
    #             <p>Working storage is also referred to as upload buffer. You can also use the
    #             DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.</p>
    #          </note>
    #          <p>The response includes disk IDs that are configured as working storage, and it includes
    #          the amount of working storage allocated and used.</p>
    # @param [Hash, Types::DescribeWorkingStorageInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To describe the working storage of a gateway [Depreciated]
    #   # This operation is supported only for the gateway-stored volume architecture. This operation is deprecated in cached-volumes API version (20120630). Use DescribeUploadBuffer instead.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.describe_working_storage(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0",
    #       "pci-0000:03:00.0-scsi-0:0:1:0"
    #     ],
    #     working_storage_used_in_bytes: 789207040,
    #     working_storage_allocated_in_bytes: 2199023255552
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.describe_working_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     disk_ids: ["DiskId"],
    #     working_storage_used_in_bytes: 1,
    #     working_storage_allocated_in_bytes: 1
    #   }
    # @return [Types::DescribeWorkingStorageOutput]
    def describe_working_storage(params = {}, options = {})
      request = build_request(:describe_working_storage, params)
      request.send_request(options)
    end

    # <p>Disconnects a volume from an iSCSI connection and then detaches the volume from the
    #          specified gateway. Detaching and attaching a volume enables you to recover your data from
    #          one gateway to a different gateway without creating a snapshot. It also makes it easier to
    #          move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2
    #          instance. This operation is only supported in the volume gateway type.</p>
    # @param [Hash, Types::DetachVolumeInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>
    # @option params [Boolean] :force_detach
    #   <p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume
    #            and detach the volume. The default is <code>false</code>. If this value is set to
    #               <code>false</code>, you must manually disconnect the iSCSI connection from the target
    #            volume.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #     force_detach: false
    #   }
    #   options = {}
    #   response = client.detach_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN"
    #   }
    # @return [Types::DetachVolumeOutput]
    def detach_volume(params = {}, options = {})
      request = build_request(:detach_volume, params)
      request.send_request(options)
    end

    # <p>Disables a tape gateway when the gateway is no longer functioning. For example, if your
    #          gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.</p>
    #          <p>Use this operation for a tape gateway that is not reachable or not functioning. This
    #          operation is only supported in the tape gateway type.</p>
    #          <important>
    #             <p>After a gateway is disabled, it cannot be enabled.</p>
    #          </important>
    # @param [Hash, Types::DisableGatewayInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To disable a gateway when it is no longer functioning
    #   # Disables a gateway when the gateway is no longer functioning. Use this operation for a gateway-VTL that is not reachable or not functioning.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.disable_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.disable_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::DisableGatewayOutput]
    def disable_gateway(params = {}, options = {})
      request = build_request(:disable_gateway, params)
      request.send_request(options)
    end

    # <p>Disassociates an Amazon FSx file system from the specified gateway. After the
    #          disassociation process finishes, the gateway can no longer access the Amazon FSx
    #          file system. This operation is only supported in the FSx File Gateway type.</p>
    # @param [Hash, Types::DisassociateFileSystemInput] params
    # @option params [String] :file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association to be deleted.</p>
    # @option params [Boolean] :force_delete
    #   <p>If this value is set to true, the operation disassociates an Amazon FSx file
    #            system immediately. It ends all data uploads to the file system, and the file system
    #            association enters the <code>FORCE_DELETING</code> status. If this value is set to false,
    #            the Amazon FSx file system does not disassociate until all data is uploaded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_association_arn: "FileSystemAssociationARN", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.disassociate_file_system(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_association_arn: "FileSystemAssociationARN"
    #   }
    # @return [Types::DisassociateFileSystemOutput]
    def disassociate_file_system(params = {}, options = {})
      request = build_request(:disassociate_file_system, params)
      request.send_request(options)
    end

    # <p>Starts a process that cleans the specified file share's cache of file entries that are
    #          failing upload to Amazon S3. This API operation reports success if the request is
    #          received with valid arguments, and there are no other cache clean operations currently
    #          in-progress for the specified file share. After a successful request, the cache clean
    #          operation occurs asynchronously and reports progress using CloudWatch logs and
    #          notifications.</p>
    #          <important>
    #             <p>If <code>ForceRemove</code> is set to <code>True</code>, the cache clean operation
    #             will delete file data from the gateway which might otherwise be recoverable. We
    #             recommend using this operation only after all other methods to clear files failing
    #             upload have been exhausted, and if your business need outweighs the potential data
    #             loss.</p>
    #          </important>
    # @param [Hash, Types::EvictFilesFailingUploadInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share for which you want to start the cache
    #            clean operation.</p>
    # @option params [Boolean] :force_remove
    #   <p>Specifies whether cache entries with full or partial file data currently stored on the
    #            gateway will be forcibly removed by the cache clean operation.</p>
    #            <p>Valid arguments:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>False</code> - The cache clean operation skips cache entries failing upload
    #                  if they are associated with data currently stored on the gateway. This preserves the
    #                  cached data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>True</code> - The cache clean operation removes cache entries failing upload
    #                  even if they are associated with data currently stored on the gateway. This deletes
    #                  the cached data.</p>
    #                  <important>
    #                     <p>If <code>ForceRemove</code> is set to <code>True</code>, the cache clean
    #                     operation will delete file data from the gateway which might otherwise be
    #                     recoverable.</p>
    #                  </important>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     force_remove: false
    #   }
    #   options = {}
    #   response = client.evict_files_failing_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_id: "string"
    #   }
    # @return [Types::EvictFilesFailingUploadOutput]
    def evict_files_failing_upload(params = {}, options = {})
      request = build_request(:evict_files_failing_upload, params)
      request.send_request(options)
    end

    # <p>Adds a file gateway to an Active Directory domain. This operation is only supported for
    #          file gateways that support the SMB file protocol.</p>
    #          <note>
    #             <p>Joining a domain creates an Active Directory computer account in the default
    #             organizational unit, using the gateway's <b>Gateway ID</b> as
    #             the account name (for example, SGW-1234ADE). If your Active Directory environment
    #             requires that you pre-stage accounts to facilitate the join domain process, you will
    #             need to create this account ahead of time.</p>
    #             <p>To create the gateway's computer account in an organizational unit other than the
    #             default, you must specify the organizational unit when joining the domain.</p>
    #          </note>
    # @param [Hash, Types::JoinDomainInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want the gateway to join.</p>
    # @option params [String] :organizational_unit
    #   <p>The organizational unit (OU) is a container in an Active Directory that can hold users,
    #            groups, computers, and other OUs and this parameter specifies the OU that the gateway will
    #            join within the AD domain.</p>
    # @option params [Array<String>] :domain_controllers
    #   <p>List of IP addresses, NetBIOS names, or host names of your domain server. If you need to
    #            specify the port number include it after the colon (“:”). For example,
    #               <code>mydc.mydomain.com:389</code>.</p>
    #            <note>
    #               <p>S3 File Gateway supports IPv6 addresses in addition to IPv4 and other existing
    #               formats.</p>
    #               <p>FSx File Gateway does not support IPv6.</p>
    #            </note>
    # @option params [Integer] :timeout_in_seconds
    #   <p>Specifies the time in seconds, in which the <code>JoinDomain</code> operation must
    #            complete. The default is 20 seconds.</p>
    # @option params [String] :user_name
    #   <p>Sets the user name of user who has permission to add the gateway to the Active Directory
    #            domain. The domain user account should be enabled to join computers to the domain. For
    #            example, you can use the domain administrator account or an account with delegated
    #            permissions to join computers to the domain.</p>
    # @option params [String] :password
    #   <p>Sets the password of the user who has permission to add the gateway to the Active
    #            Directory domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     domain_name: "DomainName", # required
    #     organizational_unit: "OrganizationalUnit",
    #     domain_controllers: ["Host"],
    #     timeout_in_seconds: 1,
    #     user_name: "DomainUserName", # required
    #     password: "DomainUserPassword", # required
    #   }
    #   options = {}
    #   response = client.join_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     active_directory_status: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR", "INSUFFICIENT_PERMISSIONS"]
    #   }
    # @return [Types::JoinDomainOutput]
    def join_domain(params = {}, options = {})
      request = build_request(:join_domain, params)
      request.send_request(options)
    end

    # <p>Lists the automatic tape creation policies for a gateway. If there are no automatic tape
    #          creation policies for the gateway, it returns an empty list.</p>
    #          <p>This operation is only supported for tape gateways.</p>
    # @param [Hash, Types::ListAutomaticTapeCreationPoliciesInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN"
    #   }
    #   options = {}
    #   response = client.list_automatic_tape_creation_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automatic_tape_creation_policy_infos: [
    #       {
    #         automatic_tape_creation_rules: [
    #           {
    #             tape_barcode_prefix: "TapeBarcodePrefix", # required
    #             pool_id: "PoolId", # required
    #             tape_size_in_bytes: 1, # required
    #             minimum_num_tapes: 1, # required
    #             worm: false
    #           }
    #         ],
    #         gateway_arn: "GatewayARN"
    #       }
    #     ]
    #   }
    # @return [Types::ListAutomaticTapeCreationPoliciesOutput]
    def list_automatic_tape_creation_policies(params = {}, options = {})
      request = build_request(:list_automatic_tape_creation_policies, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing cache reports for all file shares associated with your
    #             Amazon Web Services account. This list includes all information provided by the
    #             <code>DescribeCacheReport</code> action, such as report name, status, completion
    #          progress, start time, end time, filters, and tags.</p>
    # @param [Hash, Types::ListCacheReportsInput] params
    # @option params [String] :marker
    #   <p>Opaque pagination token returned from a previous <code>ListCacheReports</code>
    #            operation. If present, <code>Marker</code> specifies where to continue the list from after
    #            a previous call to <code>ListCacheReports</code>. Optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_cache_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_report_list: [
    #       {
    #         cache_report_arn: "CacheReportARN",
    #         cache_report_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELED", "FAILED", "ERROR"],
    #         report_completion_percent: 1,
    #         end_time: Time.now,
    #         role: "Role",
    #         file_share_arn: "FileShareARN",
    #         location_arn: "LocationARN",
    #         start_time: Time.now,
    #         inclusion_filters: [
    #           {
    #             name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #             values: ["CacheReportFilterValue"], # required
    #           }
    #         ],
    #         exclusion_filters: [
    #           {
    #             name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #             values: ["CacheReportFilterValue"], # required
    #           }
    #         ],
    #         report_name: "CacheReportName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListCacheReportsOutput]
    def list_cache_reports(params = {}, options = {})
      request = build_request(:list_cache_reports, params)
      request.send_request(options)
    end

    # <p>Gets a list of the file shares for a specific S3 File Gateway, or the list of file
    #          shares that belong to the calling Amazon Web Services account. This operation is only
    #          supported for S3 File Gateways.</p>
    # @param [Hash, Types::ListFileSharesInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If
    #            this field is not present, all file shares under your account are listed.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of file shares to return in the response. The value must be an
    #            integer with a value greater than zero. Optional.</p>
    # @option params [String] :marker
    #   <p>Opaque pagination token returned from a previous ListFileShares operation. If present,
    #               <code>Marker</code> specifies where to continue the list from after a previous call to
    #            ListFileShares. Optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN",
    #     limit: 1,
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_file_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "Marker",
    #     next_marker: "Marker",
    #     file_share_info_list: [
    #       {
    #         file_share_type: "NFS" # One of: ["NFS", "SMB"],
    #         file_share_arn: "FileShareARN",
    #         file_share_id: "FileShareId",
    #         file_share_status: "FileShareStatus",
    #         gateway_arn: "GatewayARN"
    #       }
    #     ]
    #   }
    # @return [Types::ListFileSharesOutput]
    def list_file_shares(params = {}, options = {})
      request = build_request(:list_file_shares, params)
      request.send_request(options)
    end

    # <p>Gets a list of <code>FileSystemAssociationSummary</code> objects. Each object contains a
    #          summary of a file system association. This operation is only supported for FSx File
    #          Gateways.</p>
    # @param [Hash, Types::ListFileSystemAssociationsInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of file system associations to return in the response. If present,
    #               <code>Limit</code> must be an integer with a value greater than zero. Optional.</p>
    # @option params [String] :marker
    #   <p>Opaque pagination token returned from a previous <code>ListFileSystemAssociations</code>
    #            operation. If present, <code>Marker</code> specifies where to continue the list from after
    #            a previous call to <code>ListFileSystemAssociations</code>. Optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN",
    #     limit: 1,
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_file_system_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     marker: "Marker",
    #     next_marker: "Marker",
    #     file_system_association_summary_list: [
    #       {
    #         file_system_association_id: "FileSystemAssociationId",
    #         file_system_association_arn: "FileSystemAssociationARN",
    #         file_system_association_status: "FileSystemAssociationStatus",
    #         gateway_arn: "GatewayARN"
    #       }
    #     ]
    #   }
    # @return [Types::ListFileSystemAssociationsOutput]
    def list_file_system_associations(params = {}, options = {})
      request = build_request(:list_file_system_associations, params)
      request.send_request(options)
    end

    # <p>Lists gateways owned by an Amazon Web Services account in an Amazon Web Services Region
    #          specified in the request. The returned list is ordered by gateway Amazon Resource Name
    #          (ARN).</p>
    #          <p>By default, the operation returns a maximum of 100 gateways. This operation supports
    #          pagination that allows you to optionally reduce the number of gateways returned in a
    #          response.</p>
    #          <p>If you have more gateways than are returned in a response (that is, the response returns
    #          only a truncated list of your gateways), the response contains a marker that you can
    #          specify in your next request to fetch the next page of gateways.</p>
    # @param [Hash, Types::ListGatewaysInput] params
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin the returned list of
    #            gateways.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the list of gateways returned be limited to the specified number of
    #            items.</p>
    # @example To lists region specific gateways per AWS account
    #   # Lists gateways owned by an AWS account in a specified region as requested. Results are sorted by gateway ARN up to a maximum of 100 gateways.
    #   params = {
    #     marker: "1",
    #     limit: 2
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    #   response.to_h #=>
    #   {
    #     gateways: [
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #       },
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-23A4567C"
    #       }
    #     ],
    #     marker: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateways: [
    #       {
    #         gateway_id: "GatewayId",
    #         gateway_arn: "GatewayARN",
    #         gateway_type: "GatewayType",
    #         gateway_operational_state: "GatewayOperationalState",
    #         gateway_name: "string",
    #         ec2_instance_id: "Ec2InstanceId",
    #         ec2_instance_region: "Ec2InstanceRegion",
    #         host_environment: "VMWARE" # One of: ["VMWARE", "HYPER-V", "EC2", "KVM", "OTHER", "SNOWBALL"],
    #         host_environment_id: "HostEnvironmentId",
    #         deprecation_date: "DeprecationDate",
    #         software_version: "SoftwareVersion"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListGatewaysOutput]
    def list_gateways(params = {}, options = {})
      request = build_request(:list_gateways, params)
      request.send_request(options)
    end

    # <p>Returns a list of the gateway's local disks. To specify which gateway to describe,
    #          you use the Amazon Resource Name (ARN) of the gateway in the body of the request.</p>
    #          <p>The request returns a list of all disks, specifying which are configured as working
    #          storage, cache storage, or stored volume or not configured at all. The response includes a
    #             <code>DiskStatus</code> field. This field can have a value of present (the disk is
    #          available to use), missing (the disk is no longer connected to the gateway), or mismatch
    #          (the disk node is occupied by a disk that has incorrect metadata or the disk content is
    #          corrupted).</p>
    # @param [Hash, Types::ListLocalDisksInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To list the gateway's local disks
    #   # The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.list_local_disks(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     disks: [
    #       {
    #         disk_allocation_type: "CACHE_STORAGE",
    #         disk_id: "pci-0000:03:00.0-scsi-0:0:0:0",
    #         disk_node: "SCSI(0:0)",
    #         disk_path: "/dev/sda",
    #         disk_size_in_bytes: 1099511627776,
    #         disk_status: "missing"
    #       },
    #       {
    #         disk_allocation_type: "UPLOAD_BUFFER",
    #         disk_allocation_resource: "",
    #         disk_id: "pci-0000:03:00.0-scsi-0:0:1:0",
    #         disk_node: "SCSI(0:1)",
    #         disk_path: "/dev/sdb",
    #         disk_size_in_bytes: 1099511627776,
    #         disk_status: "present"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.list_local_disks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     disks: [
    #       {
    #         disk_id: "DiskId",
    #         disk_path: "string",
    #         disk_node: "string",
    #         disk_status: "string",
    #         disk_size_in_bytes: 1,
    #         disk_allocation_type: "DiskAllocationType",
    #         disk_allocation_resource: "string",
    #         disk_attribute_list: ["DiskAttribute"]
    #       }
    #     ]
    #   }
    # @return [Types::ListLocalDisksOutput]
    def list_local_disks(params = {}, options = {})
      request = build_request(:list_local_disks, params)
      request.send_request(options)
    end

    # <p>Lists the tags that have been added to the specified resource. This operation is
    #          supported in storage gateways of all types.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin returning the list of
    #            tags.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the list of tags returned be limited to the specified number of
    #            items.</p>
    # @example To list tags that have been added to a resource
    #   # Lists the tags that have been added to the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    #     marker: "1",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    #     marker: "1",
    #     tags: [
    #       {
    #         key: "Dev Gatgeway Region",
    #         value: "East Coast"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceARN",
    #     marker: "Marker",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists custom tape pools. You specify custom tape pools to list by specifying one or more
    #          custom tape pool Amazon Resource Names (ARNs). If you don't specify a custom tape pool ARN,
    #          the operation lists all custom tape pools.</p>
    #          <p>This operation supports pagination. You can optionally specify the <code>Limit</code>
    #          parameter in the body to limit the number of tape pools in the response. If the number of
    #          tape pools returned in the response is truncated, the response includes a
    #             <code>Marker</code> element that you can use in your subsequent request to retrieve the
    #          next set of tape pools.</p>
    # @param [Hash, Types::ListTapePoolsInput] params
    # @option params [Array<String>] :pool_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you
    #            don't specify a custom tape pool ARN, the response lists all custom tape pools. </p>
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of tape
    #            pools.</p>
    # @option params [Integer] :limit
    #   <p>An optional number limit for the tape pools in the list returned by this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_ar_ns: ["PoolARN"],
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tape_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_infos: [
    #       {
    #         pool_arn: "PoolARN",
    #         pool_name: "PoolName",
    #         storage_class: "DEEP_ARCHIVE" # One of: ["DEEP_ARCHIVE", "GLACIER"],
    #         retention_lock_type: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE", "NONE"],
    #         retention_lock_time_in_days: 1,
    #         pool_status: "ACTIVE" # One of: ["ACTIVE", "DELETED"]
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListTapePoolsOutput]
    def list_tape_pools(params = {}, options = {})
      request = build_request(:list_tape_pools, params)
      request.send_request(options)
    end

    # <p>Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf
    #          (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names
    #          (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both
    #          your VTL and VTS.</p>
    #          <p>This operation supports pagination. By default, the operation returns a maximum of up to
    #          100 tapes. You can optionally specify the <code>Limit</code> parameter in the body to limit
    #          the number of tapes in the response. If the number of tapes returned in the response is
    #          truncated, the response includes a <code>Marker</code> element that you can use in your
    #          subsequent request to retrieve the next set of tapes. This operation is only supported in
    #          the tape gateway type.</p>
    # @param [Hash, Types::ListTapesInput] params
    # @option params [Array<String>] :tape_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't
    #            specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of
    #            tapes.</p>
    # @option params [Integer] :limit
    #   <p>An optional number limit for the tapes in the list returned by this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_ar_ns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tapes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_infos: [
    #       {
    #         tape_arn: "TapeARN",
    #         tape_barcode: "TapeBarcode",
    #         tape_size_in_bytes: 1,
    #         tape_status: "TapeStatus",
    #         gateway_arn: "GatewayARN",
    #         pool_id: "PoolId",
    #         retention_start_date: Time.now,
    #         pool_entry_date: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListTapesOutput]
    def list_tapes(params = {}, options = {})
      request = build_request(:list_tapes, params)
      request.send_request(options)
    end

    # <p>Lists iSCSI initiators that are connected to a volume. You can use this operation to
    #          determine whether a volume is being used or not. This operation is only supported in the
    #          cached volume and stored volume gateway types.</p>
    # @param [Hash, Types::ListVolumeInitiatorsInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes for the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #   }
    #   options = {}
    #   response = client.list_volume_initiators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     initiators: ["Initiator"]
    #   }
    # @return [Types::ListVolumeInitiatorsOutput]
    def list_volume_initiators(params = {}, options = {})
      request = build_request(:list_volume_initiators, params)
      request.send_request(options)
    end

    # <p>Lists the recovery points for a specified gateway. This operation is only supported in
    #          the cached volume gateway type.</p>
    #          <p>Each cache volume has one recovery point. A volume recovery point is a point in time at
    #          which all data of the volume is consistent and from which you can create a snapshot or
    #          clone a new cached volume from a source volume. To create a snapshot from a volume recovery
    #          point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a> operation.</p>
    # @param [Hash, Types::ListVolumeRecoveryPointsInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To list recovery points for a gateway
    #   # Lists the recovery points for a specified gateway in which all data of the volume is consistent and can be used to create a snapshot.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.list_volume_recovery_points(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     volume_recovery_point_infos: [
    #       {
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #         volume_recovery_point_time: "2012-09-04T21:08:44.627Z",
    #         volume_size_in_bytes: 536870912000
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.list_volume_recovery_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     volume_recovery_point_infos: [
    #       {
    #         volume_arn: "VolumeARN",
    #         volume_size_in_bytes: 1,
    #         volume_usage_in_bytes: 1,
    #         volume_recovery_point_time: "string"
    #       }
    #     ]
    #   }
    # @return [Types::ListVolumeRecoveryPointsOutput]
    def list_volume_recovery_points(params = {}, options = {})
      request = build_request(:list_volume_recovery_points, params)
      request.send_request(options)
    end

    # <p>Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The
    #          response includes only the volume ARNs. If you want additional volume information, use the
    #             <a>DescribeStorediSCSIVolumes</a> or the <a>DescribeCachediSCSIVolumes</a> API.</p>
    #          <p>The operation supports pagination. By default, the operation returns a maximum of up to
    #          100 volumes. You can optionally specify the <code>Limit</code> field in the body to limit
    #          the number of volumes in the response. If the number of volumes returned in the response is
    #          truncated, the response includes a Marker field. You can use this Marker value in your
    #          subsequent request to retrieve the next set of volumes. This operation is only supported in
    #          the cached volume and stored volume gateway types.</p>
    # @param [Hash, Types::ListVolumesInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of volumes.
    #            Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
    # @option params [Integer] :limit
    #   <p>Specifies that the list of volumes returned be limited to the specified number of
    #            items.</p>
    # @example To list the iSCSI stored volumes of a gateway
    #   # Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN up to a maximum of 100 volumes.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     marker: "1",
    #     limit: 2
    #   }
    #   options = {}
    #   response = client.list_volumes(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     marker: "1",
    #     volume_infos: [
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #         gateway_id: "sgw-12A3456B",
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #         volume_id: "vol-1122AABB",
    #         volume_size_in_bytes: 107374182400,
    #         volume_type: "STORED"
    #       },
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C",
    #         gateway_id: "sgw-gw-13B4567C",
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C/volume/vol-3344CCDD",
    #         volume_id: "vol-1122AABB",
    #         volume_size_in_bytes: 107374182400,
    #         volume_type: "STORED"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN",
    #     marker: "Marker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     marker: "Marker",
    #     volume_infos: [
    #       {
    #         volume_arn: "VolumeARN",
    #         volume_id: "VolumeId",
    #         gateway_arn: "GatewayARN",
    #         gateway_id: "GatewayId",
    #         volume_type: "VolumeType",
    #         volume_size_in_bytes: 1,
    #         volume_attachment_status: "VolumeAttachmentStatus"
    #       }
    #     ]
    #   }
    # @return [Types::ListVolumesOutput]
    def list_volumes(params = {}, options = {})
      request = build_request(:list_volumes, params)
      request.send_request(options)
    end

    # <p>Sends you notification through Amazon EventBridge when all files written to your file
    #          share have been uploaded to Amazon S3.</p>
    #          <p>Storage Gateway can send a notification through Amazon EventBridge when all
    #          files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the file share up to the time that you
    #          make a request for notification. When the upload is done, Storage Gateway sends you
    #          notification through EventBridge. You can configure EventBridge to send the
    #          notification through event targets such as Amazon SNS or Lambda
    #          function. This operation is only supported for S3 File Gateways.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification">Getting
    #             file upload notification</a> in the <i>Amazon S3 File Gateway User
    #             Guide</i>.</p>
    # @param [Hash, Types::NotifyWhenUploadedInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #   }
    #   options = {}
    #   response = client.notify_when_uploaded(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN",
    #     notification_id: "NotificationId"
    #   }
    # @return [Types::NotifyWhenUploadedOutput]
    def notify_when_uploaded(params = {}, options = {})
      request = build_request(:notify_when_uploaded, params)
      request.send_request(options)
    end

    # <p>Refreshes the cached inventory of objects for the specified file share. This operation
    #          finds objects in the Amazon S3 bucket that were added, removed, or replaced since
    #          the gateway last listed the bucket's contents and cached the results. This operation
    #          does not import files into the S3 File Gateway cache storage. It only updates the cached
    #          inventory to reflect changes in the inventory of the objects in the S3 bucket. This
    #          operation is only supported in the S3 File Gateway types.</p>
    #          <p>You can subscribe to be notified through an Amazon CloudWatch event when your
    #             <code>RefreshCache</code> operation completes. For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification">Getting
    #             notified about file operations</a> in the <i>Amazon S3 File Gateway User
    #             Guide</i>. This operation is Only supported for S3 File Gateways.</p>
    #          <p>When this API is called, it only initiates the refresh operation. When the API call
    #          completes and returns a success code, it doesn't necessarily mean that the file
    #          refresh has completed. You should use the refresh-complete notification to determine that
    #          the operation has completed before you check for new files on the gateway file share. You
    #          can subscribe to be notified through a CloudWatch event when your <code>RefreshCache</code>
    #          operation completes.</p>
    #          <p>Throttle limit: This API is asynchronous, so the gateway will accept no more than two
    #          refreshes at any time. We recommend using the refresh-complete CloudWatch event
    #          notification before issuing additional requests. For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification">Getting
    #             notified about file operations</a> in the <i>Amazon S3 File Gateway User
    #             Guide</i>.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>Wait at least 60 seconds between consecutive RefreshCache API requests.</p>
    #                </li>
    #                <li>
    #                   <p>If you invoke the RefreshCache API when two requests are already being
    #                   processed, any new request will cause an
    #                      <code>InvalidGatewayRequestException</code> error because too many requests
    #                   were sent to the server.</p>
    #                </li>
    #             </ul>
    #          </important>
    #          <note>
    #             <p>The S3 bucket name does not need to be included when entering the list of folders in
    #             the FolderList parameter.</p>
    #          </note>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification">Getting
    #             notified about file operations</a> in the <i>Amazon S3 File Gateway User
    #             Guide</i>.</p>
    # @param [Hash, Types::RefreshCacheInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share you want to refresh.</p>
    # @option params [Array<String>] :folder_list
    #   <p>A comma-separated list of the paths of folders to refresh in the cache. The default is
    #               [<code>"/"</code>]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If <code>Recursive</code> is set to <code>true</code>, the entire S3
    #            bucket that the file share has access to is refreshed.</p>
    #            <p>Do not include <code>/</code> when specifying folder names. For example, you would
    #            specify <code>samplefolder</code> rather than <code>samplefolder/</code>.</p>
    # @option params [Boolean] :recursive
    #   <p>A value that specifies whether to recursively refresh folders in the cache. The refresh
    #            includes folders that were in the cache the last time the gateway listed the folder's
    #            contents. If this value set to <code>true</code>, each folder that is listed in
    #               <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in
    #               <code>FolderList</code> are not refreshed. Only objects that are in folders listed
    #            directly under <code>FolderList</code> are found and used for the update. The default is
    #               <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     folder_list: ["Folder"],
    #     recursive: false
    #   }
    #   options = {}
    #   response = client.refresh_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN",
    #     notification_id: "NotificationId"
    #   }
    # @return [Types::RefreshCacheOutput]
    def refresh_cache(params = {}, options = {})
      request = build_request(:refresh_cache, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource. This operation is supported in
    #          storage gateways of all types.</p>
    # @param [Hash, Types::RemoveTagsFromResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags you want to remove from the specified resource. A tag is composed
    #            of a key-value pair.</p>
    # @example To remove tags from a resource
    #   # Lists the iSCSI stored volumes of a gateway. Removes one or more tags from the specified resource.
    #   params = {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    #     tag_keys: [
    #       "Dev Gatgeway Region",
    #       "East Coast"
    #     ]
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceARN"
    #   }
    # @return [Types::RemoveTagsFromResourceOutput]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <p>Resets all cache disks that have encountered an error and makes the disks available for
    #          reconfiguration as cache storage. If your cache disk encounters an error, the gateway
    #          prevents read and write operations on virtual tapes in the gateway. For example, an error
    #          can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the
    #          gateway loses its cache storage. At this point, you can reconfigure the disks as cache
    #          disks. This operation is only supported in the cached volume and tape types.</p>
    #          <important>
    #             <p>If the cache disk you are resetting contains data that has not been uploaded to
    #                Amazon S3 yet, that data can be lost. After you reset cache disks, there will
    #             be no configured cache disks left in the gateway, so you must configure at least one new
    #             cache disk for your gateway to function properly.</p>
    #          </important>
    # @param [Hash, Types::ResetCacheInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To reset cache disks in error status
    #   # Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C"
    #   }
    #   options = {}
    #   response = client.reset_cache(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.reset_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::ResetCacheOutput]
    def reset_cache(params = {}, options = {})
      request = build_request(:reset_cache, params)
      request.send_request(options)
    end

    # <p>Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway.
    #          Virtual tapes archived in the VTS are not associated with any gateway. However after a tape
    #          is retrieved, it is associated with a gateway, even though it is also listed in the VTS,
    #          that is, archive. This operation is only supported in the tape gateway type.</p>
    #          <p>Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to
    #          another gateway. You must archive the tape again before you can retrieve it to another
    #          gateway. This operation is only supported in the tape gateway type.</p>
    # @param [Hash, Types::RetrieveTapeArchiveInput] params
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual
    #            tape shelf (VTS).</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to.
    #            Use the <a>ListGateways</a> operation to return a list of gateways for your
    #            account and Amazon Web Services Region.</p>
    #            <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape
    #            gateway.</p>
    # @example To retrieve an archived tape from the VTS
    #   # Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a gateway-VTL. Virtual tapes archived in the VTS are not associated with any gateway.
    #   params = {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF",
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.retrieve_tape_archive(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.retrieve_tape_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::RetrieveTapeArchiveOutput]
    def retrieve_tape_archive(params = {}, options = {})
      request = build_request(:retrieve_tape_archive, params)
      request.send_request(options)
    end

    # <p>Retrieves the recovery point for the specified virtual tape. This operation is only
    #          supported in the tape gateway type.</p>
    #          <p>A recovery point is a point in time view of a virtual tape at which all the data on the
    #          tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be
    #          recovered to a new gateway.</p>
    #          <note>
    #             <p>The virtual tape can be retrieved to only one gateway. The retrieved tape is
    #             read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge
    #             for retrieving recovery points.</p>
    #          </note>
    # @param [Hash, Types::RetrieveTapeRecoveryPointInput] params
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the
    #            recovery point.</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To retrieve the recovery point of a virtual tape
    #   # Retrieves the recovery point for the specified virtual tape.
    #   params = {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF",
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.retrieve_tape_recovery_point(params, options)
    #   response.to_h #=>
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.retrieve_tape_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tape_arn: "TapeARN"
    #   }
    # @return [Types::RetrieveTapeRecoveryPointOutput]
    def retrieve_tape_recovery_point(params = {}, options = {})
      request = build_request(:retrieve_tape_recovery_point, params)
      request.send_request(options)
    end

    # <p>Sets the password for your VM local console. When you log in to the local console for
    #          the first time, you log in to the VM with the default credentials. We recommend that you
    #          set a new password. You don't need to know the default password to set a new
    #          password.</p>
    # @param [Hash, Types::SetLocalConsolePasswordInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :local_console_password
    #   <p>The password you want to set for your VM local console.</p>
    # @example To set a password for your VM
    #   # Sets the password for your VM local console.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    #     local_console_password: "PassWordMustBeAtLeast6Chars."
    #   }
    #   options = {}
    #   response = client.set_local_console_password(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     local_console_password: "LocalConsolePassword", # required
    #   }
    #   options = {}
    #   response = client.set_local_console_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::SetLocalConsolePasswordOutput]
    def set_local_console_password(params = {}, options = {})
      request = build_request(:set_local_console_password, params)
      request.send_request(options)
    end

    # <p>Sets the password for the guest user <code>smbguest</code>. The <code>smbguest</code>
    #          user is the user when the authentication method for the file share is set to
    #             <code>GuestAccess</code>. This operation only supported for S3 File Gateways</p>
    # @param [Hash, Types::SetSMBGuestPasswordInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway the SMB file share is associated
    #            with.</p>
    # @option params [String] :password
    #   <p>The password that you want to set for your SMB server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     password: "SMBGuestPassword", # required
    #   }
    #   options = {}
    #   response = client.set_smb_guest_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::SetSMBGuestPasswordOutput]
    def set_smb_guest_password(params = {}, options = {})
      request = build_request(:set_smb_guest_password, params)
      request.send_request(options)
    end

    # <p>Shuts down a Tape Gateway or Volume Gateway. To specify which gateway to shut down, use
    #          the Amazon Resource Name (ARN) of the gateway in the body of your request.</p>
    #          <note>
    #             <p>This API action cannot be used to shut down S3 File Gateway or FSx File
    #             Gateway.</p>
    #          </note>
    #          <p>The operation shuts down the gateway service component running in the gateway's
    #          virtual machine (VM) and not the host VM.</p>
    #          <note>
    #             <p>If you want to shut down the VM, it is recommended that you first shut down the
    #             gateway component in the VM to avoid unpredictable conditions.</p>
    #          </note>
    #          <p>After the gateway is shutdown, you cannot call any other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>, and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>.
    #          Your applications cannot read from or write to the gateway's storage volumes, and
    #          there are no snapshots taken.</p>
    #          <note>
    #             <p>When you make a shutdown request, you will get a <code>200 OK</code> success response
    #             immediately. However, it might take some time for the gateway to shut down. You can call
    #             the <a>DescribeGatewayInformation</a> API to check the status. For more
    #             information, see <a>ActivateGateway</a>.</p>
    #          </note>
    #          <p>If do not intend to use the gateway again, you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay software charges associated with the
    #          gateway.</p>
    # @param [Hash, Types::ShutdownGatewayInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To shut down a gateway service
    #   # This operation shuts down the gateway service component running in the storage gateway's virtual machine (VM) and not the VM.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.shutdown_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.shutdown_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::ShutdownGatewayOutput]
    def shutdown_gateway(params = {}, options = {})
      request = build_request(:shutdown_gateway, params)
      request.send_request(options)
    end

    # <p>Start a test that verifies that the specified gateway is configured for High
    #          Availability monitoring in your host environment. This request only initiates the test and
    #          that a successful response only indicates that the test was started. It doesn't
    #          indicate that the test passed. For the status of the test, invoke the
    #             <code>DescribeAvailabilityMonitorTest</code> API.</p>
    #          <note>
    #             <p>Starting this test will cause your gateway to go offline for a brief period.</p>
    #          </note>
    # @param [Hash, Types::StartAvailabilityMonitorTestInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.start_availability_monitor_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::StartAvailabilityMonitorTestOutput]
    def start_availability_monitor_test(params = {}, options = {})
      request = build_request(:start_availability_monitor_test, params)
      request.send_request(options)
    end

    # <p>Starts generating a report of the file metadata currently cached by an S3 File Gateway for a specific file share. You can use this report to identify and resolve
    #          issues if you have files failing upload from your gateway to Amazon S3. The report
    #          is a CSV file containing a list of files which match the set of filter parameters you
    #          specify in the request.</p>
    #          <note>
    #             <p>The <b>Files Failing Upload</b> flag is reset every 24
    #             hours and during gateway reboot. If this report captures the files after the reset, but
    #             before they become flagged again, they will not be reported as <b>Files Failing Upload</b>.</p>
    #          </note>
    #          <p>The following requirements must be met to successfully generate a cache report:</p>
    #          <ul>
    #             <li>
    #                <p>You must have <code>s3:PutObject</code> and <code>s3:AbortMultipartUpload</code>
    #                permissions for the Amazon S3 bucket where you want to store the cache
    #                report.</p>
    #             </li>
    #             <li>
    #                <p>No other cache reports can currently be in-progress for the specified file
    #                share.</p>
    #             </li>
    #             <li>
    #                <p>There must be fewer than 10 existing cache reports for the specified file
    #                share.</p>
    #             </li>
    #             <li>
    #                <p>The gateway must be online and connected to Amazon Web Services.</p>
    #             </li>
    #             <li>
    #                <p>The root disk must have at least 20GB of free space when report generation
    #                starts.</p>
    #             </li>
    #             <li>
    #                <p>You must specify at least one value for <code>InclusionFilters</code> or
    #                   <code>ExclusionFilters</code> in the request.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartCacheReportInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    # @option params [String] :role
    #   <p>The ARN of the IAM role used when saving the cache report to Amazon S3.</p>
    # @option params [String] :location_arn
    #   <p>The ARN of the Amazon S3 bucket where you want to save the cache report.</p>
    #            <note>
    #               <p>We do not recommend saving the cache report to the same Amazon S3 bucket for
    #               which you are generating the report.</p>
    #               <p>This field does not accept access point ARNs.</p>
    #            </note>
    # @option params [String] :bucket_region
    #   <p>The Amazon Web Services Region of the Amazon S3 bucket where you want to save the
    #            cache report.</p>
    # @option params [String] :vpc_endpoint_dns_name
    #   <p>The DNS name of the VPC endpoint associated with the Amazon S3 where you want to
    #            save the cache report. Optional.</p>
    # @option params [Array<Types::CacheReportFilter>] :inclusion_filters
    #   <p>The list of filters and parameters that determine which files are included in the
    #            report. You must specify at least one value for <code>InclusionFilters</code> or
    #               <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>
    # @option params [Array<Types::CacheReportFilter>] :exclusion_filters
    #   <p>The list of filters and parameters that determine which files are excluded from the
    #            report. You must specify at least one value for <code>InclusionFilters</code> or
    #               <code>ExclusionFilters</code> in a <code>StartCacheReport</code> request.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier that you use to ensure idempotent report generation if you need to
    #            retry an unsuccessful <code>StartCacheReport</code> request. If you retry a request, use
    #            the same <code>ClientToken</code> you specified in the initial request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 key/value tags that you can assign to the cache report. Using tags
    #            can help you categorize your reports and more easily locate them in search results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     bucket_region: "RegionId", # required
    #     vpc_endpoint_dns_name: "DNSHostName",
    #     inclusion_filters: [
    #       {
    #         name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #         values: ["CacheReportFilterValue"], # required
    #       }
    #     ],
    #     exclusion_filters: [
    #       {
    #         name: "UploadState" # One of: ["UploadState", "UploadFailureReason"], # required
    #         values: ["CacheReportFilterValue"], # required
    #       }
    #     ],
    #     client_token: "ClientToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_cache_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cache_report_arn: "CacheReportARN"
    #   }
    # @return [Types::StartCacheReportOutput]
    def start_cache_report(params = {}, options = {})
      request = build_request(:start_cache_report, params)
      request.send_request(options)
    end

    # <p>Starts a gateway that you previously shut down (see <a>ShutdownGateway</a>).
    #          After the gateway starts, you can then make other API calls, your applications can read
    #          from or write to the gateway's storage volumes and you will be able to take snapshot
    #          backups.</p>
    #          <note>
    #             <p>When you make a request, you will get a 200 OK success response immediately. However,
    #             it might take some time for the gateway to be ready. You should call <a>DescribeGatewayInformation</a> and check the status before making any
    #             additional API calls. For more information, see <a>ActivateGateway</a>.</p>
    #          </note>
    #          <p>To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in
    #          your request.</p>
    # @param [Hash, Types::StartGatewayInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To start a gateway service
    #   # Starts a gateway service that was previously shut down.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.start_gateway(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.start_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::StartGatewayOutput]
    def start_gateway(params = {}, options = {})
      request = build_request(:start_gateway, params)
      request.send_request(options)
    end

    # <p>Updates the automatic tape creation policy of a gateway. Use this to update the policy
    #          with a new set of automatic tape creation rules. This is only supported for tape
    #          gateways.</p>
    #          <p>By default, there is no automatic tape creation policy.</p>
    #          <note>
    #             <p>A gateway can have only one automatic tape creation policy.</p>
    #          </note>
    # @param [Hash, Types::UpdateAutomaticTapeCreationPolicyInput] params
    # @option params [Array<Types::AutomaticTapeCreationRule>] :automatic_tape_creation_rules
    #   <p>An automatic tape creation policy consists of a list of automatic tape creation rules.
    #            The rules determine when and how to automatically create new tapes.</p>
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     automatic_tape_creation_rules: [ # required
    #       {
    #         tape_barcode_prefix: "TapeBarcodePrefix", # required
    #         pool_id: "PoolId", # required
    #         tape_size_in_bytes: 1, # required
    #         minimum_num_tapes: 1, # required
    #         worm: false
    #       }
    #     ],
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.update_automatic_tape_creation_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateAutomaticTapeCreationPolicyOutput]
    def update_automatic_tape_creation_policy(params = {}, options = {})
      request = build_request(:update_automatic_tape_creation_policy, params)
      request.send_request(options)
    end

    # <p>Updates the bandwidth rate limits of a gateway. You can update both the upload and
    #          download bandwidth rate limit or specify only one of the two. If you don't set a
    #          bandwidth rate limit, the existing rate limit remains. This operation is supported only for
    #          the stored volume, cached volume, and tape gateway types. To update bandwidth rate limits
    #          for S3 file gateways, use <a>UpdateBandwidthRateLimitSchedule</a>.</p>
    #          <p>By default, a gateway's bandwidth rate limits are not set. If you don't set
    #          any limit, the gateway does not have any limitations on its bandwidth usage and could
    #          potentially use the maximum available bandwidth.</p>
    #          <p>To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in
    #          your request.</p>
    # @param [Hash, Types::UpdateBandwidthRateLimitInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :average_upload_rate_limit_in_bits_per_sec
    #   <p>The average upload bandwidth rate limit in bits per second.</p>
    # @option params [Integer] :average_download_rate_limit_in_bits_per_sec
    #   <p>The average download bandwidth rate limit in bits per second.</p>
    # @example To update the bandwidth rate limits of a gateway
    #   # Updates the bandwidth rate limits of a gateway. Both the upload and download bandwidth rate limit can be set, or either one of the two. If a new limit is not set, the existing rate limit remains.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     average_upload_rate_limit_in_bits_per_sec: 51200,
    #     average_download_rate_limit_in_bits_per_sec: 102400
    #   }
    #   options = {}
    #   response = client.update_bandwidth_rate_limit(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     average_upload_rate_limit_in_bits_per_sec: 1,
    #     average_download_rate_limit_in_bits_per_sec: 1
    #   }
    #   options = {}
    #   response = client.update_bandwidth_rate_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateBandwidthRateLimitOutput]
    def update_bandwidth_rate_limit(params = {}, options = {})
      request = build_request(:update_bandwidth_rate_limit, params)
      request.send_request(options)
    end

    # <p> Updates the bandwidth rate limit schedule for a specified gateway. By default, gateways
    #          do not have bandwidth rate limit schedules, which means no bandwidth rate limiting is in
    #          effect. Use this to initiate or update a gateway's bandwidth rate limit schedule. This
    #          operation is supported for volume, tape, and S3 file gateways. S3 file gateways support
    #          bandwidth rate limits for upload only. FSx file gateways do not support bandwidth rate
    #          limits.</p>
    # @param [Hash, Types::UpdateBandwidthRateLimitScheduleInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Array<Types::BandwidthRateLimitInterval>] :bandwidth_rate_limit_intervals
    #   <p> An array containing bandwidth rate limit schedule intervals for a gateway. When no
    #            bandwidth rate limit intervals have been scheduled, the array is empty. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     bandwidth_rate_limit_intervals: [ # required
    #       {
    #         start_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #         end_hour_of_day: 1, # required
    #         end_minute_of_hour: 1, # required
    #         days_of_week: [1], # required
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         average_download_rate_limit_in_bits_per_sec: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_bandwidth_rate_limit_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateBandwidthRateLimitScheduleOutput]
    def update_bandwidth_rate_limit_schedule(params = {}, options = {})
      request = build_request(:update_bandwidth_rate_limit_schedule, params)
      request.send_request(options)
    end

    # <p>Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a
    #          specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for
    #          added security, you might use it. This operation is supported in the volume and tape
    #          gateway types.</p>
    #          <important>
    #             <p>When you update CHAP credentials, all existing connections on the target are closed
    #             and initiators must reconnect with the new credentials.</p>
    #          </important>
    # @param [Hash, Types::UpdateChapCredentialsInput] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified
    #            VolumeARN.</p>
    # @option params [String] :secret_to_authenticate_initiator
    #   <p>The secret key that the initiator (for example, the Windows client) must provide to
    #            participate in mutual CHAP with the target.</p>
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    # @option params [String] :initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    # @option params [String] :secret_to_authenticate_target
    #   <p>The secret key that the target must provide to participate in mutual CHAP with the
    #            initiator (e.g. Windows client).</p>
    #            <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    # @example To update CHAP credentials for an iSCSI target
    #   # Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target.
    #   params = {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    #     secret_to_authenticate_initiator: "111111111111",
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com",
    #     secret_to_authenticate_target: "222222222222"
    #   }
    #   options = {}
    #   response = client.update_chap_credentials(params, options)
    #   response.to_h #=>
    #   {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetARN", # required
    #     secret_to_authenticate_initiator: "ChapSecret", # required
    #     initiator_name: "IqnName", # required
    #     secret_to_authenticate_target: "ChapSecret"
    #   }
    #   options = {}
    #   response = client.update_chap_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_arn: "TargetARN",
    #     initiator_name: "IqnName"
    #   }
    # @return [Types::UpdateChapCredentialsOutput]
    def update_chap_credentials(params = {}, options = {})
      request = build_request(:update_chap_credentials, params)
      request.send_request(options)
    end

    # <p>Updates a file system association. This operation is only supported in the FSx File
    #          Gateways.</p>
    # @param [Hash, Types::UpdateFileSystemAssociationInput] params
    # @option params [String] :file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association that you want to
    #            update.</p>
    # @option params [String] :user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    # @option params [String] :password
    #   <p>The password of the user credential.</p>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_system_association_arn: "FileSystemAssociationARN", # required
    #     user_name: "DomainUserName",
    #     password: "DomainUserPassword",
    #     audit_destination_arn: "AuditDestinationARN",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_file_system_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_system_association_arn: "FileSystemAssociationARN"
    #   }
    # @return [Types::UpdateFileSystemAssociationOutput]
    def update_file_system_association(params = {}, options = {})
      request = build_request(:update_file_system_association, params)
      request.send_request(options)
    end

    # <p>Updates a gateway's metadata, which includes the gateway's name, time zone,
    #          and metadata cache size. To specify which gateway to update, use the Amazon Resource Name
    #          (ARN) of the gateway in your request.</p>
    #          <note>
    #             <p>For gateways activated after September 2, 2015, the gateway's ARN contains the
    #             gateway ID rather than the gateway name. However, changing the name of the gateway has
    #             no effect on the gateway's ARN.</p>
    #          </note>
    # @param [Hash, Types::UpdateGatewayInformationInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :gateway_name
    #   <p>The name you configured for your gateway.</p>
    # @option params [String] :gateway_timezone
    #   <p>A value that indicates the time zone of the gateway.</p>
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that you want to use
    #            to monitor and log events in the gateway.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch
    #               Logs?</a>
    #            </p>
    # @option params [String] :gateway_capacity
    #   <p>Specifies the size of the gateway's metadata cache. This setting impacts gateway
    #            performance and hardware recommendations. For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/performance-multiple-file-shares.html">Performance guidance for gateways with multiple file shares</a>
    #            in the <i>Amazon S3 File Gateway User Guide</i>.</p>
    # @example To update a gateway's metadata
    #   # Updates a gateway's metadata, which includes the gateway's name and time zone.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     gateway_name: "MyGateway2",
    #     gateway_timezone: "GMT-12:00"
    #   }
    #   options = {}
    #   response = client.update_gateway_information(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     gateway_name: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     gateway_name: "GatewayName",
    #     gateway_timezone: "GatewayTimezone",
    #     cloud_watch_log_group_arn: "CloudWatchLogGroupARN",
    #     gateway_capacity: "Small" # One of: ["Small", "Medium", "Large"]
    #   }
    #   options = {}
    #   response = client.update_gateway_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN",
    #     gateway_name: "string"
    #   }
    # @return [Types::UpdateGatewayInformationOutput]
    def update_gateway_information(params = {}, options = {})
      request = build_request(:update_gateway_information, params)
      request.send_request(options)
    end

    # <p>Updates the gateway virtual machine (VM) software. The request immediately triggers the
    #          software update.</p>
    #          <note>
    #             <p>When you make this request, you get a <code>200 OK</code> success response
    #             immediately. However, it might take some time for the update to complete. You can call
    #                <a>DescribeGatewayInformation</a> to verify the gateway is in the
    #                <code>STATE_RUNNING</code> state.</p>
    #          </note>
    #          <important>
    #             <p>A software update forces a system restart of your gateway. You can minimize the
    #             chance of any disruption to your applications by increasing your iSCSI Initiators'
    #             timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and
    #             Linux, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing your Windows iSCSI settings</a> and <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing your Linux iSCSI settings</a>, respectively.</p>
    #          </important>
    # @param [Hash, Types::UpdateGatewaySoftwareNowInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @example To update a gateway's VM software
    #   # Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    #   options = {}
    #   response = client.update_gateway_software_now(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #   }
    #   options = {}
    #   response = client.update_gateway_software_now(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateGatewaySoftwareNowOutput]
    def update_gateway_software_now(params = {}, options = {})
      request = build_request(:update_gateway_software_now, params)
      request.send_request(options)
    end

    # <p>Updates a gateway's maintenance window schedule, with settings for monthly or
    #          weekly cadence, specific day and time to begin maintenance, and which types of updates to
    #          apply. Time configuration uses the gateway's time zone. You can pass values for a complete
    #          maintenance schedule, or update policy, or both. Previous values will persist for whichever
    #          setting you choose not to modify. If an incomplete or invalid maintenance schedule is
    #          passed, the entire request will be rejected with an error and no changes will occur.</p>
    #          <p>A complete maintenance schedule must include values for <i>both</i>
    #             <code>MinuteOfHour</code> and <code>HourOfDay</code>, and <i>either</i>
    #             <code>DayOfMonth</code>
    #             <i>or</i>
    #             <code>DayOfWeek</code>.</p>
    #          <note>
    #             <p>We recommend keeping maintenance updates turned on, except in specific use cases
    #             where the brief disruptions caused by updating the gateway could critically impact your
    #             deployment.</p>
    #          </note>
    # @param [Hash, Types::UpdateMaintenanceStartTimeInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Integer] :hour_of_day
    #   <p>The hour component of the maintenance start time represented as <i>hh</i>,
    #            where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time
    #            zone of the gateway.</p>
    # @option params [Integer] :minute_of_hour
    #   <p>The minute component of the maintenance start time represented as
    #               <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The
    #            minute of the hour is in the time zone of the gateway.</p>
    # @option params [Integer] :day_of_week
    #   <p>The day of the week component of the maintenance start time week represented as an
    #            ordinal number from 0 to 6, where 0 represents Sunday and 6 represents Saturday.</p>
    # @option params [Integer] :day_of_month
    #   <p>The day of the month component of the maintenance start time represented as an ordinal
    #            number from 1 to 28, where 1 represents the first day of the month. It is not possible to
    #            set the maintenance schedule to start on days 29 through 31.</p>
    # @option params [Types::SoftwareUpdatePreferences] :software_update_preferences
    #   <p>A set of variables indicating the software update preferences for the gateway.</p>
    #            <p>Includes <code>AutomaticUpdatePolicy</code> field with the following inputs:</p>
    #            <p>
    #               <code>ALL_VERSIONS</code> - Enables regular gateway maintenance updates.</p>
    #            <p>
    #               <code>EMERGENCY_VERSIONS_ONLY</code> - Disables regular gateway maintenance updates. The
    #            gateway will still receive emergency version updates on rare occasions if necessary to
    #            remedy highly critical security or durability issues. You will be notified before an
    #            emergency version update is applied. These updates are applied during your gateway's
    #            scheduled maintenance window.</p>
    # @example To update a gateway's maintenance start time
    #   # Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is in your gateway's time zone.
    #   params = {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    #     hour_of_day: 0,
    #     minute_of_hour: 30,
    #     day_of_week: 2
    #   }
    #   options = {}
    #   response = client.update_maintenance_start_time(params, options)
    #   response.to_h #=>
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     hour_of_day: 1,
    #     minute_of_hour: 1,
    #     day_of_week: 1,
    #     day_of_month: 1,
    #     software_update_preferences: {
    #       automatic_update_policy: "ALL_VERSIONS" # One of: ["ALL_VERSIONS", "EMERGENCY_VERSIONS_ONLY"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_maintenance_start_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateMaintenanceStartTimeOutput]
    def update_maintenance_start_time(params = {}, options = {})
      request = build_request(:update_maintenance_start_time, params)
      request.send_request(options)
    end

    # <p>Updates a Network File System (NFS) file share. This operation is only supported in S3
    #          File Gateways.</p>
    #          <note>
    #             <p>To leave a file share field unchanged, set the corresponding input field to
    #             null.</p>
    #          </note>
    #          <p>Updates the following file share settings:</p>
    #          <ul>
    #             <li>
    #                <p>Default storage class for your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>Metadata defaults for your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>Allowed NFS clients for your file share</p>
    #             </li>
    #             <li>
    #                <p>Squash settings</p>
    #             </li>
    #             <li>
    #                <p>Write status of your file share</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateNFSFileShareInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be updated.</p>
    # @option params [String] :encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   <p>The default values for the file share. Optional.</p>
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    # @option params [Array<String>] :client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IPv4/IPv6 addresses or valid CIDR blocks.</p>
    # @option params [String] :squash
    #   <p>The user mapped to anonymous user.</p>
    #            <p>Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid NFS file share name can only contain the following characters:
    #                  <code>a</code>-<code>z</code>, <code>A</code>-<code>Z</code>,
    #                  <code>0</code>-<code>9</code>, <code>-</code>, <code>.</code>, and
    #               <code>_</code>.</p>
    #            </note>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1
    #     },
    #     default_storage_class: "StorageClass",
    #     object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #     client_list: ["Ipv4OrIpv6AddressCIDR"],
    #     squash: "Squash",
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: "NotificationPolicy",
    #     audit_destination_arn: "AuditDestinationARN"
    #   }
    #   options = {}
    #   response = client.update_nfs_file_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN"
    #   }
    # @return [Types::UpdateNFSFileShareOutput]
    def update_nfs_file_share(params = {}, options = {})
      request = build_request(:update_nfs_file_share, params)
      request.send_request(options)
    end

    # <p>Updates a Server Message Block (SMB) file share. This operation is only supported for S3
    #          File Gateways.</p>
    #          <note>
    #             <p>To leave a file share field unchanged, set the corresponding input field to
    #             null.</p>
    #          </note>
    #          <important>
    #             <p>File gateways require Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure that Amazon Web Services STS
    #             is activated in the Amazon Web Services Region you are creating your file gateway in. If
    #                Amazon Web Services STS is not activated in this Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #             <p>File gateways don't support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    # @param [Hash, Types::UpdateSMBFileShareInput] params
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>
    # @option params [String] :encryption_type
    #   <p>A value that specifies the type of server-side encryption that the file share will use
    #            for the data that it stores in Amazon S3.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    # @option params [Boolean] :kms_encrypted
    #   <p>Optional. Set to <code>true</code> to use Amazon S3 server-side encryption with
    #            your own KMS key (SSE-KMS), or <code>false</code> to use a key managed by
    #               Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #               <code>EncryptionType</code> parameter instead.</p>
    #            <note>
    #               <p>We recommend using <code>EncryptionType</code> instead of <code>KMSEncrypted</code>
    #               to set the file share encryption method. You do not need to provide values for both
    #               parameters.</p>
    #               <p>If values for both parameters exist in the same request, then the specified
    #               encryption methods must not conflict. For example, if <code>EncryptionType</code> is
    #                  <code>SseS3</code>, then <code>KMSEncrypted</code> must be <code>false</code>. If
    #                  <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>, then
    #                  <code>KMSEncrypted</code> must be <code>true</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [String] :kms_key
    #   <p>Optional. The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used
    #            for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric
    #            CMKs. This value must be set if <code>KMSEncrypted</code> is <code>true</code>, or if
    #               <code>EncryptionType</code> is <code>SseKms</code> or <code>DsseKms</code>.</p>
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set write status to read-only, otherwise set to <code>false</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html">Using Windows ACLs to limit SMB file share
    #               access</a> in the <i>Amazon S3 File Gateway User
    #            Guide</i>.</p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    # @option params [Array<String>] :admin_user_list
    #   <p>A list of users or groups in the Active Directory that have administrator rights to the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    # @option params [Array<String>] :valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #            share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    # @option params [Array<String>] :invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    # @option params [String] :case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #               <p>A valid SMB file share name cannot contain the following characters:
    #                  <code>[</code>,<code>]</code>,<code>#</code>,<code>;</code>,<code><</code>,<code>></code>,<code>:</code>,<code>"</code>,<code>\</code>,<code>/</code>,<code>|</code>,<code>?</code>,<code>*</code>,<code>+</code>,
    #               or ASCII control characters <code>1-31</code>.</p>
    #            </note>
    # @option params [Types::CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #               <p>This setting is not meant to specify an exact time at which the notification will be
    #               sent. In some cases, the gateway might require more than the specified delay time to
    #               generate and send notifications.</p>
    #            </note>
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #            <p>
    #               <code>{}</code>
    #            </p>
    # @option params [Boolean] :oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_share_arn: "FileShareARN", # required
    #     encryption_type: "SseS3" # One of: ["SseS3", "SseKms", "DsseKms"],
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     default_storage_class: "StorageClass",
    #     object_acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"],
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     access_based_enumeration: false,
    #     admin_user_list: ["UserListUser"],
    #     valid_user_list: ["UserListUser"],
    #     invalid_user_list: ["UserListUser"],
    #     audit_destination_arn: "AuditDestinationARN",
    #     case_sensitivity: "ClientSpecified" # One of: ["ClientSpecified", "CaseSensitive"],
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: "NotificationPolicy",
    #     oplocks_enabled: false
    #   }
    #   options = {}
    #   response = client.update_smb_file_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_share_arn: "FileShareARN"
    #   }
    # @return [Types::UpdateSMBFileShareOutput]
    def update_smb_file_share(params = {}, options = {})
      request = build_request(:update_smb_file_share, params)
      request.send_request(options)
    end

    # <p>Controls whether the shares on an S3 File Gateway are visible in a net view or browse
    #          list. The operation is only supported for S3 File Gateways.</p>
    # @param [Hash, Types::UpdateSMBFileShareVisibilityInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Boolean] :file_shares_visible
    #   <p>The shares on this gateway appear when listing shares.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     file_shares_visible: false, # required
    #   }
    #   options = {}
    #   response = client.update_smb_file_share_visibility(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateSMBFileShareVisibilityOutput]
    def update_smb_file_share_visibility(params = {}, options = {})
      request = build_request(:update_smb_file_share_visibility, params)
      request.send_request(options)
    end

    # <p>Updates the list of Active Directory users and groups that have special permissions for
    #          SMB file shares on the gateway.</p>
    # @param [Hash, Types::UpdateSMBLocalGroupsInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [Types::SMBLocalGroups] :smb_local_groups
    #   <p>A list of Active Directory users and groups that you want to grant special permissions
    #            for SMB file shares on the gateway.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     smb_local_groups: { # required
    #       gateway_admins: ["UserListUser"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_smb_local_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateSMBLocalGroupsOutput]
    def update_smb_local_groups(params = {}, options = {})
      request = build_request(:update_smb_local_groups, params)
      request.send_request(options)
    end

    # <p>Updates the SMB security strategy level for an Amazon S3 file gateway. This
    #          action is only supported for Amazon S3 file gateways.</p>
    #          <note>
    #             <p>For information about configuring this setting using the Amazon Web Services console,
    #             see <a href="https://docs.aws.amazon.com/filegateway/latest/files3/security-strategy.html">Setting a security level for your gateway</a> in the <i>Amazon S3
    #                File Gateway User Guide</i>.</p>
    #             <p>A higher security strategy level can affect performance of the gateway.</p>
    #          </note>
    # @param [Hash, Types::UpdateSMBSecurityStrategyInput] params
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    # @option params [String] :smb_security_strategy
    #   <p>Specifies the type of security strategy.</p>
    #            <p>
    #               <code>ClientSpecified</code>: If you choose this option, requests are established based
    #            on what is negotiated by the client. This option is recommended when you want to maximize
    #            compatibility across different clients in your environment. Supported only for S3 File
    #            Gateway.</p>
    #            <p>
    #               <code>MandatorySigning</code>: If you choose this option, File Gateway only allows
    #            connections from SMBv2 or SMBv3 clients that have signing enabled. This option works with
    #            SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.</p>
    #            <p>
    #               <code>MandatoryEncryption</code>: If you choose this option, File Gateway only allows
    #            connections from SMBv3 clients that have encryption enabled. This option is recommended for
    #            environments that handle sensitive data. This option works with SMB clients on Microsoft
    #            Windows 8, Windows Server 2012 or newer.</p>
    #            <p>
    #               <code>MandatoryEncryptionNoAes128</code>: If you choose this option, File Gateway only
    #            allows connections from SMBv3 clients that use 256-bit AES encryption algorithms. 128-bit
    #            algorithms are not allowed. This option is recommended for environments that handle
    #            sensitive data. It works with SMB clients on Microsoft Windows 8, Windows Server 2012, or
    #            later.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_arn: "GatewayARN", # required
    #     smb_security_strategy: "ClientSpecified" # One of: ["ClientSpecified", "MandatorySigning", "MandatoryEncryption", "MandatoryEncryptionNoAes128"], # required
    #   }
    #   options = {}
    #   response = client.update_smb_security_strategy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_arn: "GatewayARN"
    #   }
    # @return [Types::UpdateSMBSecurityStrategyOutput]
    def update_smb_security_strategy(params = {}, options = {})
      request = build_request(:update_smb_security_strategy, params)
      request.send_request(options)
    end

    # <p>Updates a snapshot schedule configured for a gateway volume. This operation is only
    #          supported in the cached volume and stored volume gateway types.</p>
    #          <p>The default snapshot schedule for volume is once every 24 hours, starting at the
    #          creation time of the volume. You can use this API to change the snapshot schedule
    #          configured for the volume.</p>
    #          <p>In the request you must identify the gateway volume whose snapshot schedule you want to
    #          update, and the schedule information, including when you want the snapshot to begin on a
    #          day and the frequency (in hours) of snapshots.</p>
    # @param [Hash, Types::UpdateSnapshotScheduleInput] params
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    # @option params [Integer] :start_at
    #   <p>The hour of the day at which the snapshot schedule begins represented as
    #               <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
    #            of the day is in the time zone of the gateway.</p>
    # @option params [Integer] :recurrence_in_hours
    #   <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
    # @option params [String] :description
    #   <p>Optional description of the snapshot that overwrites the existing description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    # @example To update a volume snapshot schedule
    #   # Updates a snapshot schedule configured for a gateway volume.
    #   params = {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    #     start_at: 0,
    #     recurrence_in_hours: 1,
    #     description: "Hourly snapshot"
    #   }
    #   options = {}
    #   response = client.update_snapshot_schedule(params, options)
    #   response.to_h #=>
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arn: "VolumeARN", # required
    #     start_at: 1, # required
    #     recurrence_in_hours: 1, # required
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_snapshot_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     volume_arn: "VolumeARN"
    #   }
    # @return [Types::UpdateSnapshotScheduleOutput]
    def update_snapshot_schedule(params = {}, options = {})
      request = build_request(:update_snapshot_schedule, params)
      request.send_request(options)
    end

    # <p>Updates the type of medium changer in a tape gateway. When you activate a tape gateway,
    #          you select a medium changer type for the tape gateway. This operation enables you to select
    #          a different type of medium changer after a tape gateway is activated. This operation is
    #          only supported in the tape gateway type.</p>
    # @param [Hash, Types::UpdateVTLDeviceTypeInput] params
    # @option params [String] :vtl_device_arn
    #   <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
    # @option params [String] :device_type
    #   <p>The type of medium changer you want to select.</p>
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    # @example To update a VTL device type
    #   # Updates the type of medium changer in a gateway-VTL after a gateway-VTL is activated.
    #   params = {
    #     vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001",
    #     device_type: "Medium Changer"
    #   }
    #   options = {}
    #   response = client.update_vtl_device_type(params, options)
    #   response.to_h #=>
    #   {
    #     vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     vtl_device_arn: "VTLDeviceARN", # required
    #     device_type: "DeviceType", # required
    #   }
    #   options = {}
    #   response = client.update_vtl_device_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vtl_device_arn: "VTLDeviceARN"
    #   }
    # @return [Types::UpdateVTLDeviceTypeOutput]
    def update_vtl_device_type(params = {}, options = {})
      request = build_request(:update_vtl_device_type, params)
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
      context[:gem_name] = 'aws-sdk-storagegateway'
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
