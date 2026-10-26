# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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
require 'smithy-client/rpc_v2_cbor'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:snowball)

module Aws::Snowball
  # An API client for Aws::Snowball.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIESnowballJobManagementService
    @identifier = :snowball

    add_plugin(::Aws::Snowball::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Snowball::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    #  Supported protocols: +:rpc_v2_cbor+, +:json_rpc+ (defaults to +:rpc_v2_cbor+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Cancels a cluster job. You can only cancel a cluster job while it's in the
    #         <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster
    #       job to cancel it.</p>
    # @param [Hash, Types::CancelClusterRequest] params
    # @option params [String] :cluster_id
    #   <p>The 39-character ID for the cluster that you want to cancel, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example To cancel a cluster job
    #   # This operation cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status.
    #   params = {
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000"
    #   }
    #   options = {}
    #   response = client.cancel_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.cancel_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelClusterResult]
    def cancel_cluster(params = {}, options = {})
      request = build_request(:cancel_cluster, params)
      request.send_request(options)
    end

    # <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code>
    #       value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or
    #         <code>DescribeJob</code> action returns a job's <code>JobState</code> as part of the
    #       response element data returned.</p>
    # @param [Hash, Types::CancelJobRequest] params
    # @option params [String] :job_id
    #   <p>The 39-character job ID for the job that you want to cancel, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example To cancel a job for a Snowball device
    #   # This operation cancels a job. You can only cancel a job before its JobState value changes to PreparingAppliance.
    #   params = {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000"
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelJobResult]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>Creates an address for a Snow device to be shipped to. In most regions,
    #       addresses are validated at the time of creation. The address you provide must be located
    #       within the serviceable area of your region. If the address is invalid or unsupported, then an
    #       exception is thrown. If providing an address as a JSON file through the <code>cli-input-json</code> option, include the full file path. For example, <code>--cli-input-json file://create-address.json</code>.</p>
    # @param [Hash, Types::CreateAddressRequest] params
    # @option params [Types::Address] :address
    #   <p>The address that you want the Snow device shipped to.</p>
    # @example To create an address for a job
    #   # This operation creates an address for a job. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
    #   params = {
    #     address: {
    #       city: "Seattle",
    #       company: "My Company's Name",
    #       country: "USA",
    #       name: "My Name",
    #       phone_number: "425-555-5555",
    #       postal_code: "98101",
    #       state_or_province: "WA",
    #       street1: "123 Main Street"
    #     }
    #   }
    #   options = {}
    #   response = client.create_address(params, options)
    #   response.to_h #=>
    #   {
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     address: { # required
    #       address_id: "AddressId",
    #       name: "String",
    #       company: "String",
    #       street1: "String",
    #       street2: "String",
    #       street3: "String",
    #       city: "String",
    #       state_or_province: "String",
    #       prefecture_or_district: "String",
    #       landmark: "String",
    #       country: "String",
    #       postal_code: "String",
    #       phone_number: "String",
    #       is_restricted: false,
    #       type: "CUST_PICKUP" # One of: ["CUST_PICKUP", "AWS_SHIP"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address_id: "String"
    #   }
    # @return [Types::CreateAddressResult]
    def create_address(params = {}, options = {})
      request = build_request(:create_address, params)
      request.send_request(options)
    end

    # <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The
    #       cluster does not ship until these five node jobs have been created.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :job_type
    #   <p>The type of job for this cluster. Currently, the only job type supported for clusters
    #         is <code>LOCAL_USE</code>.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [Types::JobResource] :resources
    #   <p>The resources associated with the cluster job. These resources include Amazon S3
    #         buckets and optional Lambda functions written in the Python language.
    #       </p>
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    # @option params [String] :description
    #   <p>An optional description of this specific cluster, for example <code>Environmental Data
    #           Cluster-01</code>.</p>
    # @option params [String] :address_id
    #   <p>The ID for the address that you want the cluster shipped to.</p>
    # @option params [String] :kms_key_arn
    #   <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster.
    #           <code>KmsKeyARN</code> values are created by using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in Key Management Service (KMS). </p>
    # @option params [String] :role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this cluster.
    #           <code>RoleArn</code> values are created by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family devices to use for this cluster. </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [String] :shipping_option
    #   <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
    #         you'll get each Snowball Edge device, rather it represents how quickly each device moves to
    #         its destination while in transit. Regional shipping speeds are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the United States of America (US), you have access to one-day shipping and
    #             two-day shipping.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Notification] :notification
    #   <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
    #         cluster.</p>
    # @option params [String] :forwarding_address_id
    #   <p>The forwarding address ID for a cluster. This field is not supported in most
    #         regions.</p>
    # @option params [Types::TaxDocuments] :tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    # @option params [String] :remote_management
    #   <p>Allows you to securely operate and manage Snow devices in a cluster remotely from outside
    #         of your internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Client to manage the device.</p>
    # @option params [Integer] :initial_cluster_size
    #   <p>If provided, each job will be automatically created and associated with the new cluster. If not provided, will be treated as 0.</p>
    # @option params [Boolean] :force_create_jobs
    #   <p>Force to create cluster when user attempts to overprovision or underprovision a cluster. A cluster is overprovisioned or underprovisioned if the initial size of the cluster is more (overprovisioned) or less (underprovisioned) than what
    #         needed to meet capacity requirement specified with <code>OnDeviceServiceConfiguration</code>.</p>
    # @option params [Array<String>] :long_term_pricing_ids
    #   <p>Lists long-term pricing id that will be used to associate with jobs automatically created for the new cluster.</p>
    # @option params [String] :snowball_capacity_preference
    #   <p>If your job is being created in one of the US regions, you have the option of
    #         specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
    #         with 80 TB in storage capacity.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @example To create a cluster
    #   # Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    #   params = {
    #     job_type: LOCAL_USE,
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket",
    #           key_range: {
    #           }
    #         }
    #       ]
    #     },
    #     description: "MyCluster",
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role",
    #     snowball_type: EDGE,
    #     shipping_option: SECOND_DAY,
    #     notification: {
    #       notify_all: false,
    #       job_states_to_notify: [
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"], # required
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String"
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #               transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN"
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String"
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String"
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB" # One of: ["TB"],
    #         service_size: 1,
    #         fault_tolerance: 1
    #       }
    #     },
    #     description: "String",
    #     address_id: "AddressId", # required
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN",
    #     snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"], # required
    #     shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"], # required
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN"
    #     },
    #     forwarding_address_id: "AddressId",
    #     tax_documents: {
    #       ind: {
    #         gstin: "GSTIN"
    #       }
    #     },
    #     remote_management: "INSTALLED_ONLY" # One of: ["INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"],
    #     initial_cluster_size: 1,
    #     force_create_jobs: false,
    #     long_term_pricing_ids: ["LongTermPricingId"],
    #     snowball_capacity_preference: "T50" # One of: ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_id: "ClusterId",
    #     job_list_entries: [
    #       {
    #         job_id: "String",
    #         job_state: "New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"],
    #         is_master: false,
    #         job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #         snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #         creation_date: Time.now,
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreateClusterResult]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a job to import or export data between Amazon S3 and your on-premises data
    #       center. Your Amazon Web Services account must have the right trust policies and permissions in
    #       place to create a job for a Snow device. If you're creating a job for a node in a cluster, you
    #       only need to provide the <code>clusterId</code> value; the other job attributes are inherited
    #       from the cluster. </p>
    #          <note>
    #             <p>Only the Snowball; Edge device type is supported when ordering clustered jobs.</p>
    #             <p>The device capacity is optional.</p>
    #             <p>Availability of device types differ by Amazon Web Services Region. For more information
    #         about Region availability, see <a href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4">Amazon Web Services Regional Services</a>.</p>
    #          </note>
    #          <p></p>
    #          <p class="title">
    #             <b>Snow Family devices and their capacities.</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Device type: <b>SNC1_SSD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T14</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowcone </p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>SNC1_HDD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T8</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowcone </p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_S</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T98</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Storage Optimized for data transfer only </p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_CG</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T42</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Compute Optimized with GPU</p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_C</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T42</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Compute Optimized without GPU</p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T100</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Storage Optimized with EC2 Compute</p>
    #                   </li>
    #                </ul>
    #                <note>
    #                   <p>This device is replaced with T98.</p>
    #                </note>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>STANDARD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T50</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Original Snowball device</p>
    #                      <note>
    #                         <p>This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region
    #               </p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>STANDARD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T80</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Original Snowball device</p>
    #                      <note>
    #                         <p>This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region. </p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Snow Family device type: <b>RACK_5U_C</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T13 </p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowblade.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Device type: <b>V3_5S</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T240</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Storage Optimized 210TB</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateJobRequest] params
    # @option params [String] :job_type
    #   <p>Defines the type of job that you're creating.
    #         </p>
    # @option params [Types::JobResource] :resources
    #   <p>Defines the Amazon S3 buckets associated with this job.</p>
    #            <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be imported into.</p>
    #            <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If
    #         you choose to export a range, you define the length of the range by providing either an
    #         inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both.
    #         Ranges are UTF-8 binary sorted.</p>
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    # @option params [String] :description
    #   <p>Defines an optional description of this specific job, for example <code>Important
    #           Photos 2016-08-11</code>.</p>
    # @option params [String] :address_id
    #   <p>The ID for the address that you want the Snow device shipped to.</p>
    # @option params [String] :kms_key_arn
    #   <p>The <code>KmsKeyARN</code> that you want to associate with this job.
    #           <code>KmsKeyARN</code>s are created using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a>
    #         Key Management Service (KMS) API action.</p>
    # @option params [String] :role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this job.
    #         <code>RoleArn</code>s are created using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>
    #         Identity and Access Management (IAM) API action.</p>
    # @option params [String] :snowball_capacity_preference
    #   <p>If your job is being created in one of the US regions, you have the option of
    #         specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
    #         with 80 TB in storage capacity.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [String] :shipping_option
    #   <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the
    #         Snow device, rather it represents how quickly the Snow device moves to its destination while
    #         in transit. Regional shipping speeds are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Notification] :notification
    #   <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for
    #         this job.</p>
    # @option params [String] :cluster_id
    #   <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to
    #         provide only this <code>clusterId</code> value. The other job attributes are inherited from
    #         the cluster.</p>
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family devices to use for this job.
    #         </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #            <p>The type of Amazon Web Services Snow device to use for this job. Currently, the only
    #         supported device type for cluster jobs is <code>EDGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html">Snowball Edge Device
    #           Options</a> in the Snowball Edge Developer Guide.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [String] :forwarding_address_id
    #   <p>The forwarding address ID for a job. This field is not supported in most
    #         Regions.</p>
    # @option params [Types::TaxDocuments] :tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    # @option params [Types::DeviceConfiguration] :device_configuration
    #   <p>Defines the device configuration for an Snowball Edge job.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [String] :remote_management
    #   <p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
    #         internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Edge client to manage the device. When set to <code>NOT_INSTALLED</code>, remote management will not be available on the device. </p>
    # @option params [String] :long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    # @option params [String] :impact_level
    #   <p>The highest impact level of data that will be stored or processed on the device, provided at job creation.</p>
    # @option params [Types::PickupDetails] :pickup_details
    #   <p>Information identifying the person picking up the device.</p>
    # @example To create a job
    #   # Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.
    #   params = {
    #     job_type: IMPORT,
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket",
    #           key_range: {
    #           }
    #         }
    #       ]
    #     },
    #     description: "My Job",
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role",
    #     snowball_capacity_preference: T80,
    #     shipping_option: SECOND_DAY,
    #     notification: {
    #       notify_all: false,
    #       job_states_to_notify: [
    #       ]
    #     },
    #     snowball_type: STANDARD
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String"
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #               transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN"
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String"
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String"
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB" # One of: ["TB"],
    #         service_size: 1,
    #         fault_tolerance: 1
    #       }
    #     },
    #     description: "String",
    #     address_id: "AddressId",
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN",
    #     snowball_capacity_preference: "T50" # One of: ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"],
    #     shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN"
    #     },
    #     cluster_id: "ClusterId",
    #     snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #     forwarding_address_id: "AddressId",
    #     tax_documents: {
    #       ind: {
    #         gstin: "GSTIN"
    #       }
    #     },
    #     device_configuration: {
    #       snowcone_device_configuration: {
    #         wireless_connection: {
    #           is_wifi_enabled: false
    #         }
    #       }
    #     },
    #     remote_management: "INSTALLED_ONLY" # One of: ["INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"],
    #     long_term_pricing_id: "LongTermPricingId",
    #     impact_level: "IL2" # One of: ["IL2", "IL4", "IL5", "IL6", "IL99"],
    #     pickup_details: {
    #       name: "String",
    #       phone_number: "PhoneNumber",
    #       email: "Email",
    #       identification_number: "String",
    #       identification_expiration_date: Time.now,
    #       identification_issuing_org: "String",
    #       device_pickup_id: "DevicePickupId"
    #     }
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::CreateJobResult]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>Creates a job with the long-term usage option for a device. The long-term usage is a
    #       1-year or 3-year long-term pricing type for the device. You are billed upfront, and Amazon Web Services provides discounts for long-term pricing.
    #       </p>
    # @param [Hash, Types::CreateLongTermPricingRequest] params
    # @option params [String] :long_term_pricing_type
    #   <p>The type of long-term pricing option you want for the device, either 1-year or 3-year
    #         long-term pricing.</p>
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   <p>Specifies whether the current long-term pricing type for the device should be
    #         renewed.</p>
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family devices to use for the long-term pricing job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     long_term_pricing_type: "OneYear" # One of: ["OneYear", "ThreeYear", "OneMonth"], # required
    #     is_long_term_pricing_auto_renew: false,
    #     snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"], # required
    #   }
    #   options = {}
    #   response = client.create_long_term_pricing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     long_term_pricing_id: "LongTermPricingId"
    #   }
    # @return [Types::CreateLongTermPricingResult]
    def create_long_term_pricing(params = {}, options = {})
      request = build_request(:create_long_term_pricing, params)
      request.send_request(options)
    end

    # <p>Creates a shipping label that will be used to return the Snow device to Amazon Web Services.</p>
    # @param [Hash, Types::CreateReturnShippingLabelRequest] params
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to create the return shipping label for; for example,
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @option params [String] :shipping_option
    #   <p>The shipping speed for a particular job. This speed doesn't dictate how soon the device
    #         is returned to Amazon Web Services. This speed represents how quickly it moves to its
    #         destination while in transit. Regional shipping speeds are as follows:</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #   }
    #   options = {}
    #   response = client.create_return_shipping_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "InProgress" # One of: ["InProgress", "TimedOut", "Succeeded", "Failed"]
    #   }
    # @return [Types::CreateReturnShippingLabelResult]
    def create_return_shipping_label(params = {}, options = {})
      request = build_request(:create_return_shipping_label, params)
      request.send_request(options)
    end

    # <p>Takes an <code>AddressId</code> and returns specific details about that address in the
    #       form of an <code>Address</code> object.</p>
    # @param [Hash, Types::DescribeAddressRequest] params
    # @option params [String] :address_id
    #   <p>The automatically generated ID for a specific address.</p>
    # @example To describe an address for a job
    #   # This operation describes an address for a job.
    #   params = {
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b"
    #   }
    #   options = {}
    #   response = client.describe_address(params, options)
    #   response.to_h #=>
    #   {
    #     address: {
    #       city: "Seattle",
    #       name: "My Name",
    #       address_id: "ADID5643ec50-3eec-4eb3-9be6-9374c10eb51b",
    #       street1: "123 Main Street",
    #       company: "My Company",
    #       phone_number: "425-555-5555",
    #       country: "US",
    #       postal_code: "98101",
    #       state_or_province: "WA"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     address_id: "AddressId", # required
    #   }
    #   options = {}
    #   response = client.describe_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     address: {
    #       address_id: "AddressId",
    #       name: "String",
    #       company: "String",
    #       street1: "String",
    #       street2: "String",
    #       street3: "String",
    #       city: "String",
    #       state_or_province: "String",
    #       prefecture_or_district: "String",
    #       landmark: "String",
    #       country: "String",
    #       postal_code: "String",
    #       phone_number: "String",
    #       is_restricted: false,
    #       type: "CUST_PICKUP" # One of: ["CUST_PICKUP", "AWS_SHIP"]
    #     }
    #   }
    # @return [Types::DescribeAddressResult]
    def describe_address(params = {}, options = {})
      request = build_request(:describe_address, params)
      request.send_request(options)
    end

    # <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of
    #       the US regions will return addresses from the list of all addresses associated with this
    #       account in all US regions.</p>
    # @param [Hash, Types::DescribeAddressesRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of <code>ADDRESS</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ADDRESS</code> objects, you have the option of specifying a value for
    #           <code>NextToken</code> as the starting point for your list of returned addresses.</p>
    # @example To describe all the addresses you've created for AWS Snowball
    #   # This operation describes all the addresses that you've created for AWS Snowball. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    #   params = {}
    #   options = {}
    #   response = client.describe_addresses(params, options)
    #   response.to_h #=>
    #   {
    #     addresses: [
    #       {
    #         city: "Seattle",
    #         name: "My Name",
    #         address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    #         street1: "123 Main Street",
    #         company: "My Company",
    #         phone_number: "425-555-5555",
    #         country: "US",
    #         postal_code: "98101",
    #         state_or_province: "WA"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_addresses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addresses: [
    #       {
    #         address_id: "AddressId",
    #         name: "String",
    #         company: "String",
    #         street1: "String",
    #         street2: "String",
    #         street3: "String",
    #         city: "String",
    #         state_or_province: "String",
    #         prefecture_or_district: "String",
    #         landmark: "String",
    #         country: "String",
    #         postal_code: "String",
    #         phone_number: "String",
    #         is_restricted: false,
    #         type: "CUST_PICKUP" # One of: ["CUST_PICKUP", "AWS_SHIP"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAddressesResult]
    def describe_addresses(params = {}, options = {})
      request = build_request(:describe_addresses, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific cluster including shipping information, cluster
    #       status, and other important metadata.</p>
    # @param [Hash, Types::DescribeClusterRequest] params
    # @option params [String] :cluster_id
    #   <p>The automatically generated ID for a cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_metadata: {
    #       cluster_id: "String",
    #       description: "String",
    #       kms_key_arn: "KmsKeyARN",
    #       role_arn: "RoleARN",
    #       cluster_state: "AwaitingQuorum" # One of: ["AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"],
    #       job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #       snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #       creation_date: Time.now,
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "ResourceARN",
    #             key_range: {
    #               begin_marker: "String",
    #               end_marker: "String"
    #             },
    #             target_on_device_services: [
    #               {
    #                 service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #                 transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #               }
    #             ]
    #           }
    #         ],
    #         lambda_resources: [
    #           {
    #             lambda_arn: "ResourceARN",
    #             event_triggers: [
    #               {
    #                 event_resource_arn: "ResourceARN"
    #               }
    #             ]
    #           }
    #         ],
    #         ec2_ami_resources: [
    #           {
    #             ami_id: "AmiId", # required
    #             snowball_ami_id: "String"
    #           }
    #         ]
    #       },
    #       address_id: "AddressId",
    #       shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #       notification: {
    #         sns_topic_arn: "SnsTopicARN",
    #         job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #         notify_all: false,
    #         device_pickup_sns_topic_arn: "SnsTopicARN"
    #       },
    #       forwarding_address_id: "AddressId",
    #       tax_documents: {
    #         ind: {
    #           gstin: "GSTIN"
    #         }
    #       },
    #       on_device_service_configuration: {
    #         nfs_on_device_service: {
    #           storage_limit: 1,
    #           storage_unit: "TB" # One of: ["TB"]
    #         },
    #         tgw_on_device_service: {
    #           storage_limit: 1,
    #           storage_unit: "TB" # One of: ["TB"]
    #         },
    #         eks_on_device_service: {
    #           kubernetes_version: "String",
    #           eks_anywhere_version: "String"
    #         },
    #         s3_on_device_service: {
    #           storage_limit: 1.0,
    #           storage_unit: "TB" # One of: ["TB"],
    #           service_size: 1,
    #           fault_tolerance: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeClusterResult]
    def describe_cluster(params = {}, options = {})
      request = build_request(:describe_cluster, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific job including shipping information, job status,
    #       and other important metadata. </p>
    # @param [Hash, Types::DescribeJobRequest] params
    # @option params [String] :job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_metadata: {
    #       job_id: "String",
    #       job_state: "New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"],
    #       job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #       snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #       creation_date: Time.now,
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "ResourceARN",
    #             key_range: {
    #               begin_marker: "String",
    #               end_marker: "String"
    #             },
    #             target_on_device_services: [
    #               {
    #                 service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #                 transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #               }
    #             ]
    #           }
    #         ],
    #         lambda_resources: [
    #           {
    #             lambda_arn: "ResourceARN",
    #             event_triggers: [
    #               {
    #                 event_resource_arn: "ResourceARN"
    #               }
    #             ]
    #           }
    #         ],
    #         ec2_ami_resources: [
    #           {
    #             ami_id: "AmiId", # required
    #             snowball_ami_id: "String"
    #           }
    #         ]
    #       },
    #       description: "String",
    #       kms_key_arn: "KmsKeyARN",
    #       role_arn: "RoleARN",
    #       address_id: "AddressId",
    #       shipping_details: {
    #         shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #         inbound_shipment: {
    #           status: "String",
    #           tracking_number: "String"
    #         },
    #         outbound_shipment: {
    #           status: "String",
    #           tracking_number: "String"
    #         }
    #       },
    #       snowball_capacity_preference: "T50" # One of: ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"],
    #       notification: {
    #         sns_topic_arn: "SnsTopicARN",
    #         job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #         notify_all: false,
    #         device_pickup_sns_topic_arn: "SnsTopicARN"
    #       },
    #       data_transfer_progress: {
    #         bytes_transferred: 1,
    #         objects_transferred: 1,
    #         total_bytes: 1,
    #         total_objects: 1
    #       },
    #       job_log_info: {
    #         job_completion_report_uri: "String",
    #         job_success_log_uri: "String",
    #         job_failure_log_uri: "String"
    #       },
    #       cluster_id: "String",
    #       forwarding_address_id: "AddressId",
    #       tax_documents: {
    #         ind: {
    #           gstin: "GSTIN"
    #         }
    #       },
    #       device_configuration: {
    #         snowcone_device_configuration: {
    #           wireless_connection: {
    #             is_wifi_enabled: false
    #           }
    #         }
    #       },
    #       remote_management: "INSTALLED_ONLY" # One of: ["INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"],
    #       long_term_pricing_id: "LongTermPricingId",
    #       on_device_service_configuration: {
    #         nfs_on_device_service: {
    #           storage_limit: 1,
    #           storage_unit: "TB" # One of: ["TB"]
    #         },
    #         tgw_on_device_service: {
    #           storage_limit: 1,
    #           storage_unit: "TB" # One of: ["TB"]
    #         },
    #         eks_on_device_service: {
    #           kubernetes_version: "String",
    #           eks_anywhere_version: "String"
    #         },
    #         s3_on_device_service: {
    #           storage_limit: 1.0,
    #           storage_unit: "TB" # One of: ["TB"],
    #           service_size: 1,
    #           fault_tolerance: 1
    #         }
    #       },
    #       impact_level: "IL2" # One of: ["IL2", "IL4", "IL5", "IL6", "IL99"],
    #       pickup_details: {
    #         name: "String",
    #         phone_number: "PhoneNumber",
    #         email: "Email",
    #         identification_number: "String",
    #         identification_expiration_date: Time.now,
    #         identification_issuing_org: "String",
    #         device_pickup_id: "DevicePickupId"
    #       },
    #       snowball_id: "String"
    #     },
    #     sub_job_metadata: [
    #       {
    #         job_id: "String",
    #         job_state: "New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"],
    #         job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #         snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #         creation_date: Time.now,
    #         resources: {
    #           s3_resources: [
    #             {
    #               bucket_arn: "ResourceARN",
    #               key_range: {
    #                 begin_marker: "String",
    #                 end_marker: "String"
    #               },
    #               target_on_device_services: [
    #                 {
    #                   service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #                   transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #                 }
    #               ]
    #             }
    #           ],
    #           lambda_resources: [
    #             {
    #               lambda_arn: "ResourceARN",
    #               event_triggers: [
    #                 {
    #                   event_resource_arn: "ResourceARN"
    #                 }
    #               ]
    #             }
    #           ],
    #           ec2_ami_resources: [
    #             {
    #               ami_id: "AmiId", # required
    #               snowball_ami_id: "String"
    #             }
    #           ]
    #         },
    #         description: "String",
    #         kms_key_arn: "KmsKeyARN",
    #         role_arn: "RoleARN",
    #         address_id: "AddressId",
    #         shipping_details: {
    #           shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #           inbound_shipment: {
    #             status: "String",
    #             tracking_number: "String"
    #           },
    #           outbound_shipment: {
    #             status: "String",
    #             tracking_number: "String"
    #           }
    #         },
    #         snowball_capacity_preference: "T50" # One of: ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"],
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #           notify_all: false,
    #           device_pickup_sns_topic_arn: "SnsTopicARN"
    #         },
    #         data_transfer_progress: {
    #           bytes_transferred: 1,
    #           objects_transferred: 1,
    #           total_bytes: 1,
    #           total_objects: 1
    #         },
    #         job_log_info: {
    #           job_completion_report_uri: "String",
    #           job_success_log_uri: "String",
    #           job_failure_log_uri: "String"
    #         },
    #         cluster_id: "String",
    #         forwarding_address_id: "AddressId",
    #         tax_documents: {
    #           ind: {
    #             gstin: "GSTIN"
    #           }
    #         },
    #         device_configuration: {
    #           snowcone_device_configuration: {
    #             wireless_connection: {
    #               is_wifi_enabled: false
    #             }
    #           }
    #         },
    #         remote_management: "INSTALLED_ONLY" # One of: ["INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"],
    #         long_term_pricing_id: "LongTermPricingId",
    #         on_device_service_configuration: {
    #           nfs_on_device_service: {
    #             storage_limit: 1,
    #             storage_unit: "TB" # One of: ["TB"]
    #           },
    #           tgw_on_device_service: {
    #             storage_limit: 1,
    #             storage_unit: "TB" # One of: ["TB"]
    #           },
    #           eks_on_device_service: {
    #             kubernetes_version: "String",
    #             eks_anywhere_version: "String"
    #           },
    #           s3_on_device_service: {
    #             storage_limit: 1.0,
    #             storage_unit: "TB" # One of: ["TB"],
    #             service_size: 1,
    #             fault_tolerance: 1
    #           }
    #         },
    #         impact_level: "IL2" # One of: ["IL2", "IL4", "IL5", "IL6", "IL99"],
    #         pickup_details: {
    #           name: "String",
    #           phone_number: "PhoneNumber",
    #           email: "Email",
    #           identification_number: "String",
    #           identification_expiration_date: Time.now,
    #           identification_issuing_org: "String",
    #           device_pickup_id: "DevicePickupId"
    #         },
    #         snowball_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeJobResult]
    def describe_job(params = {}, options = {})
      request = build_request(:describe_job, params)
      request.send_request(options)
    end

    # <p>Information on the shipping label of a Snow device that is being returned to Amazon Web Services.</p>
    # @param [Hash, Types::DescribeReturnShippingLabelRequest] params
    # @option params [String] :job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_return_shipping_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "InProgress" # One of: ["InProgress", "TimedOut", "Succeeded", "Failed"],
    #     expiration_date: Time.now,
    #     return_shipping_label_uri: "String"
    #   }
    # @return [Types::DescribeReturnShippingLabelResult]
    def describe_return_shipping_label(params = {}, options = {})
      request = build_request(:describe_return_shipping_label, params)
      request.send_request(options)
    end

    # <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the
    #       specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes
    #       after this request has been made. To access the manifest file after 60 minutes have passed,
    #       you'll have to make another call to the <code>GetJobManifest</code> action.</p>
    #          <p>The manifest is an encrypted file that you can download after your job enters the
    #         <code>WithCustomer</code> status. This is the only valid status for calling this API as the
    #       manifest and <code>UnlockCode</code> code value are used for securing your device and should
    #       only be used when you have the device.  The manifest is decrypted by using the
    #         <code>UnlockCode</code> code value, when you pass both values to the Snow device through the
    #       Snowball client when the client is started for the first time. </p>
    #          <p>As a best practice, we recommend that you don't save a copy of an
    #         <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving
    #       these separately helps prevent unauthorized parties from gaining access to the Snow device
    #       associated with that job.</p>
    #          <p>The credentials of a given job, including its manifest file and unlock code, expire 360
    #       days after the job is created.</p>
    # @param [Hash, Types::GetJobManifestRequest] params
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to get the manifest file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example To get the manifest for a job you've created for AWS Snowball
    #   # Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action.
    # #
    # # The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.
    # #
    # # As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.
    # #
    # # The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.
    #   params = {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000"
    #   }
    #   options = {}
    #   response = client.get_job_manifest(params, options)
    #   response.to_h #=>
    #   {
    #     manifest_uri: "https://awsie-frosty-manifests-prod.s3.amazonaws.com/JID123e4567-e89b-12d3-a456-426655440000_manifest.bin?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20161224T005115Z&X-Amz-SignedHeaders=..."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job_manifest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     manifest_uri: "String"
    #   }
    # @return [Types::GetJobManifestResult]
    def get_job_manifest(params = {}, options = {})
      request = build_request(:get_job_manifest, params)
      request.send_request(options)
    end

    # <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular
    #         <code>UnlockCode</code> value can be accessed for up to 360 days after the associated job
    #       has been created.</p>
    #          <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric
    #       characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed
    #       along with the manifest to the Snow device through the Snowball client when the client is
    #       started for the first time. The only valid status for calling this API is
    #         <code>WithCustomer</code> as the manifest and <code>Unlock</code> code values are used for
    #       securing your device and should only be used when you have the device.</p>
    #          <p>As a best practice, we recommend that you don't save a copy of the
    #         <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these
    #       separately helps prevent unauthorized parties from gaining access to the Snow device
    #       associated with that job.</p>
    # @param [Hash, Types::GetJobUnlockCodeRequest] params
    # @option params [String] :job_id
    #   <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for
    #         example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example To get the unlock code for a job you've created for AWS Snowball
    #   # Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days after the associated job has been created.
    # #
    # # The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.
    # #
    # # As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.
    #   params = {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000"
    #   }
    #   options = {}
    #   response = client.get_job_unlock_code(params, options)
    #   response.to_h #=>
    #   {
    #     unlock_code: "12345-abcde-56789-fghij-01234"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job_unlock_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unlock_code: "String"
    #   }
    # @return [Types::GetJobUnlockCodeResult]
    def get_job_unlock_code(params = {}, options = {})
      request = build_request(:get_job_unlock_code, params)
      request.send_request(options)
    end

    # <p>Returns information about the Snow Family service limit for your account, and also the
    #       number of Snow devices your account has in use.</p>
    #          <p>The default service limit for the number of Snow devices that you can have at one time
    #       is 1. If you want to increase your service limit, contact Amazon Web Services Support.</p>
    # @param [Hash, Types::GetSnowballUsageRequest] params
    # @example To see your Snowball service limit and the number of Snowballs you have in use
    #   # Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.
    # #
    # # The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
    #   params = {}
    #   options = {}
    #   response = client.get_snowball_usage(params, options)
    #   response.to_h #=>
    #   {
    #     snowball_limit: 1,
    #     snowballs_in_use: 0
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_snowball_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snowball_limit: 1,
    #     snowballs_in_use: 1
    #   }
    # @return [Types::GetSnowballUsageResult]
    def get_snowball_usage(params = {}, options = {})
      request = build_request(:get_snowball_usage, params)
      request.send_request(options)
    end

    # <p>Returns an Amazon S3 presigned URL for an update file associated with a specified
    #         <code>JobId</code>.</p>
    # @param [Hash, Types::GetSoftwareUpdatesRequest] params
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to get the software update file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_software_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     updates_uri: "String"
    #   }
    # @return [Types::GetSoftwareUpdatesResult]
    def get_software_updates(params = {}, options = {})
      request = build_request(:get_software_updates, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each
    #         <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's
    #       state, a job's ID, and other information.</p>
    # @param [Hash, Types::ListClusterJobsRequest] params
    # @option params [String] :cluster_id
    #   <p>The 39-character ID for the cluster that you want to list, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_cluster_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_list_entries: [
    #       {
    #         job_id: "String",
    #         job_state: "New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"],
    #         is_master: false,
    #         job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #         snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #         creation_date: Time.now,
    #         description: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListClusterJobsResult]
    def list_cluster_jobs(params = {}, options = {})
      request = build_request(:list_cluster_jobs, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each
    #         <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other
    #       important status information.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of <code>ClusterListEntry</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ClusterListEntry</code> objects, you have the option of specifying
    #           <code>NextToken</code> as the starting point for your returned list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_list_entries: [
    #       {
    #         cluster_id: "String",
    #         cluster_state: "AwaitingQuorum" # One of: ["AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"],
    #         creation_date: Time.now,
    #         description: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListClustersResult]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>This action returns a list of the different Amazon EC2-compatible Amazon Machine Images (AMIs)
    #       that are owned by your Amazon Web Services accountthat would be supported for use on a Snow
    #       device. Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04 LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the
    #       Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images are no longer supported in the Market, but still supported for use on devices through Amazon EC2 VM Import/Export and running locally in AMIs.</p>
    # @param [Hash, Types::ListCompatibleImagesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results for the list of compatible images. Currently, a Snowball
    #         Edge device can store 10 AMIs.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #         compatible images, you can specify a value for <code>NextToken</code> as the starting point
    #         for your list of returned images.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_compatible_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compatible_images: [
    #       {
    #         ami_id: "String",
    #         name: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCompatibleImagesResult]
    def list_compatible_images(params = {}, options = {})
      request = build_request(:list_compatible_images, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each
    #         <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that
    #       indicates whether the job is a job part, in the case of export jobs. Calling this API action
    #       in one of the US regions will return jobs from the list of all jobs associated with this
    #       account in all US regions.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_list_entries: [
    #       {
    #         job_id: "String",
    #         job_state: "New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"],
    #         is_master: false,
    #         job_type: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"],
    #         snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #         creation_date: Time.now,
    #         description: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListJobsResult]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all long-term pricing types.</p>
    # @param [Hash, Types::ListLongTermPricingRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>ListLongTermPricing</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for your next list of
    #           <code>ListLongTermPricing</code> to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_long_term_pricing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     long_term_pricing_entries: [
    #       {
    #         long_term_pricing_id: "LongTermPricingId",
    #         long_term_pricing_end_date: Time.now,
    #         long_term_pricing_start_date: Time.now,
    #         long_term_pricing_type: "OneYear" # One of: ["OneYear", "ThreeYear", "OneMonth"],
    #         current_active_job: "JobId",
    #         replacement_job: "JobId",
    #         is_long_term_pricing_auto_renew: false,
    #         long_term_pricing_status: "String",
    #         snowball_type: "STANDARD" # One of: ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"],
    #         job_ids: ["JobId"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLongTermPricingResult]
    def list_long_term_pricing(params = {}, options = {})
      request = build_request(:list_long_term_pricing, params)
      request.send_request(options)
    end

    # <p>A list of locations from which the customer can choose to pickup a device.</p>
    # @param [Hash, Types::ListPickupLocationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of locations to list per page.</p>
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ListPickupLocationsRequest</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
    # @example To get a list of locations from which the customer can choose to pickup a device.
    #   # Returns a specified number of Address objects. Each Address is a pickup location address for Snow Family devices.
    #   params = {}
    #   options = {}
    #   response = client.list_pickup_locations(params, options)
    #   response.to_h #=>
    #   {
    #     addresses: [
    #       {
    #         city: "Seattle",
    #         name: "My Name",
    #         address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    #         street1: "123 Main Street",
    #         company: "My Company",
    #         phone_number: "425-555-5555",
    #         country: "US",
    #         postal_code: "98101",
    #         state_or_province: "WA"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_pickup_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addresses: [
    #       {
    #         address_id: "AddressId",
    #         name: "String",
    #         company: "String",
    #         street1: "String",
    #         street2: "String",
    #         street3: "String",
    #         city: "String",
    #         state_or_province: "String",
    #         prefecture_or_district: "String",
    #         landmark: "String",
    #         country: "String",
    #         postal_code: "String",
    #         phone_number: "String",
    #         is_restricted: false,
    #         type: "CUST_PICKUP" # One of: ["CUST_PICKUP", "AWS_SHIP"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPickupLocationsResult]
    def list_pickup_locations(params = {}, options = {})
      request = build_request(:list_pickup_locations, params)
      request.send_request(options)
    end

    # <p>Lists all supported versions for Snow on-device services. Returns an
    #       array of <code>ServiceVersion</code> object containing the supported versions for a particular service.</p>
    # @param [Hash, Types::ListServiceVersionsRequest] params
    # @option params [String] :service_name
    #   <p>The name of the service for which you're requesting supported versions.</p>
    # @option params [Array<Types::DependentService>] :dependent_services
    #   <p>A list of names and versions of dependant services of the requested service.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>ListServiceVersions</code> objects to return.</p>
    # @option params [String] :next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for the next list of returned
    #         <code>ListServiceVersionsRequest</code> versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "KUBERNETES" # One of: ["KUBERNETES", "EKS_ANYWHERE"], # required
    #     dependent_services: [
    #       {
    #         service_name: "KUBERNETES" # One of: ["KUBERNETES", "EKS_ANYWHERE"],
    #         service_version: {
    #           version: "String"
    #         }
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_service_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_versions: [ # required
    #       {
    #         version: "String"
    #       }
    #     ],
    #     service_name: "KUBERNETES" # One of: ["KUBERNETES", "EKS_ANYWHERE"], # required
    #     dependent_services: [
    #       {
    #         service_name: "KUBERNETES" # One of: ["KUBERNETES", "EKS_ANYWHERE"],
    #         service_version: {
    #           version: "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListServiceVersionsResult]
    def list_service_versions(params = {}, options = {})
      request = build_request(:list_service_versions, params)
      request.send_request(options)
    end

    # <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code>
    #       state, you can update some of the information associated with a cluster. Once the cluster
    #       changes to a different job state, usually 60 minutes after the cluster being created, this
    #       action is no longer available.</p>
    # @param [Hash, Types::UpdateClusterRequest] params
    # @option params [String] :cluster_id
    #   <p>The cluster ID of the cluster that you want to update, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @option params [String] :role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster.
    #         To create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    # @option params [String] :description
    #   <p>The updated description of this cluster.</p>
    # @option params [Types::JobResource] :resources
    #   <p>The updated arrays of <a>JobResource</a> objects that can include updated
    #           <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    # @option params [String] :address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    # @option params [String] :shipping_option
    #   <p>The updated shipping option value of this cluster's <a>ShippingDetails</a>
    #         object.</p>
    # @option params [Types::Notification] :notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    # @option params [String] :forwarding_address_id
    #   <p>The updated ID for the forwarding address for a cluster. This field is not
    #         supported in most regions.</p>
    # @example To update a cluster
    #   # This action allows you to update certain parameters for a cluster. Once the cluster changes to a different state, usually within 60 minutes of it being created, this action is no longer available.
    #   params = {
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000",
    #     description: "updated-cluster-name",
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b"
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     role_arn: "RoleARN",
    #     description: "String",
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String"
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #               transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN"
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String"
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String"
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB" # One of: ["TB"],
    #         service_size: 1,
    #         fault_tolerance: 1
    #       }
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN"
    #     },
    #     forwarding_address_id: "AddressId"
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateClusterResult]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
      request.send_request(options)
    end

    # <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of
    #       the information associated with a job. Once the job changes to a different job state, usually
    #       within 60 minutes of the job being created, this action is no longer available.</p>
    # @param [Hash, Types::UpdateJobRequest] params
    # @option params [String] :job_id
    #   <p>The job ID of the job that you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @option params [String] :role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To
    #         create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>Identity and Access Management
    #         (IAM) API action.</p>
    # @option params [Types::Notification] :notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    # @option params [Types::JobResource] :resources
    #   <p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    # @option params [String] :address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    # @option params [String] :shipping_option
    #   <p>The updated shipping option value of this job's <a>ShippingDetails</a>
    #         object.</p>
    # @option params [String] :description
    #   <p>The updated description of this job's <a>JobMetadata</a> object.</p>
    # @option params [String] :snowball_capacity_preference
    #   <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US
    #         regions.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    # @option params [String] :forwarding_address_id
    #   <p>The updated ID for the forwarding address for a job. This field is not
    #         supported in most regions.</p>
    # @option params [Types::PickupDetails] :pickup_details
    #   <p>Information identifying the person picking up the device.</p>
    # @example To update a job
    #   # This action allows you to update certain parameters for a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    #   params = {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000",
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    #     shipping_option: NEXT_DAY,
    #     description: "updated-job-name",
    #     snowball_capacity_preference: T100
    #   }
    #   options = {}
    #   response = client.update_job(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     role_arn: "RoleARN",
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New" # One of: ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]],
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN"
    #     },
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String"
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE" # One of: ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"],
    #               transfer_option: "IMPORT" # One of: ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN"
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String"
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB" # One of: ["TB"]
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String"
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB" # One of: ["TB"],
    #         service_size: 1,
    #         fault_tolerance: 1
    #       }
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY" # One of: ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"],
    #     description: "String",
    #     snowball_capacity_preference: "T50" # One of: ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"],
    #     forwarding_address_id: "AddressId",
    #     pickup_details: {
    #       name: "String",
    #       phone_number: "PhoneNumber",
    #       email: "Email",
    #       identification_number: "String",
    #       identification_expiration_date: Time.now,
    #       identification_issuing_org: "String",
    #       device_pickup_id: "DevicePickupId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateJobResult]
    def update_job(params = {}, options = {})
      request = build_request(:update_job, params)
      request.send_request(options)
    end

    # <p>Updates the state when a shipment state changes to a different state.</p>
    # @param [Hash, Types::UpdateJobShipmentStateRequest] params
    # @option params [String] :job_id
    #   <p>The job ID of the job whose shipment date you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    # @option params [String] :shipment_state
    #   <p>The state of a device when it is being shipped. </p>
    #            <p>Set to <code>RECEIVED</code> when the device arrives at your location.</p>
    #            <p>Set to <code>RETURNED</code> when you have returned the device to Amazon Web Services.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     shipment_state: "RECEIVED" # One of: ["RECEIVED", "RETURNED"], # required
    #   }
    #   options = {}
    #   response = client.update_job_shipment_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateJobShipmentStateResult]
    def update_job_shipment_state(params = {}, options = {})
      request = build_request(:update_job_shipment_state, params)
      request.send_request(options)
    end

    # <p>Updates the long-term pricing type.</p>
    # @param [Hash, Types::UpdateLongTermPricingRequest] params
    # @option params [String] :long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    # @option params [String] :replacement_job
    #   <p>Specifies that a device that is ordered with long-term pricing should be replaced with a
    #         new device.</p>
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   <p>If set to <code>true</code>, specifies that the current long-term pricing type for the
    #         device should be automatically renewed before the long-term pricing contract expires.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     long_term_pricing_id: "LongTermPricingId", # required
    #     replacement_job: "JobId",
    #     is_long_term_pricing_auto_renew: false
    #   }
    #   options = {}
    #   response = client.update_long_term_pricing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLongTermPricingResult]
    def update_long_term_pricing(params = {}, options = {})
      request = build_request(:update_long_term_pricing, params)
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
      context[:gem_name] = 'aws-sdk-snowball'
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor,
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
