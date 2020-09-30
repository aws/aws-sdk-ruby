# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ebs)

module Aws::EBS
  # An API client for EBS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EBS::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ebs

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Seals and completes the snapshot after all of the required blocks of
    # data have been written to it. Completing the snapshot changes the
    # status to `completed`. You cannot write new blocks to a snapshot after
    # it has been completed.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot.
    #
    # @option params [required, Integer] :changed_blocks_count
    #   The number of blocks that were written to the snapshot.
    #
    # @option params [String] :checksum
    #   An aggregated Base-64 SHA256 checksum based on the checksums of each
    #   written block.
    #
    #   To generate the aggregated checksum using the linear aggregation
    #   method, arrange the checksums for each written block in ascending
    #   order of their block index, concatenate them to form a single string,
    #   and then generate the checksum on the entire string using the SHA256
    #   algorithm.
    #
    # @option params [String] :checksum_algorithm
    #   The algorithm used to generate the checksum. Currently, the only
    #   supported algorithm is `SHA256`.
    #
    # @option params [String] :checksum_aggregation_method
    #   The aggregation method used to generate the checksum. Currently, the
    #   only supported aggregation method is `LINEAR`.
    #
    # @return [Types::CompleteSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompleteSnapshotResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_snapshot({
    #     snapshot_id: "SnapshotId", # required
    #     changed_blocks_count: 1, # required
    #     checksum: "Checksum",
    #     checksum_algorithm: "SHA256", # accepts SHA256
    #     checksum_aggregation_method: "LINEAR", # accepts LINEAR
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "completed", "pending", "error"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/CompleteSnapshot AWS API Documentation
    #
    # @overload complete_snapshot(params = {})
    # @param [Hash] params ({})
    def complete_snapshot(params = {}, options = {})
      req = build_request(:complete_snapshot, params)
      req.send_request(options)
    end

    # Returns the data in a block in an Amazon Elastic Block Store snapshot.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot containing the block from which to get data.
    #
    # @option params [required, Integer] :block_index
    #   The block index of the block from which to get data.
    #
    #   Obtain the `BlockIndex` by running the `ListChangedBlocks` or
    #   `ListSnapshotBlocks` operations.
    #
    # @option params [required, String] :block_token
    #   The block token of the block from which to get data.
    #
    #   Obtain the `BlockToken` by running the `ListChangedBlocks` or
    #   `ListSnapshotBlocks` operations.
    #
    # @return [Types::GetSnapshotBlockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnapshotBlockResponse#data_length #data_length} => Integer
    #   * {Types::GetSnapshotBlockResponse#block_data #block_data} => IO
    #   * {Types::GetSnapshotBlockResponse#checksum #checksum} => String
    #   * {Types::GetSnapshotBlockResponse#checksum_algorithm #checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot_block({
    #     snapshot_id: "SnapshotId", # required
    #     block_index: 1, # required
    #     block_token: "BlockToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_length #=> Integer
    #   resp.block_data #=> IO
    #   resp.checksum #=> String
    #   resp.checksum_algorithm #=> String, one of "SHA256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/GetSnapshotBlock AWS API Documentation
    #
    # @overload get_snapshot_block(params = {})
    # @param [Hash] params ({})
    def get_snapshot_block(params = {}, options = {}, &block)
      req = build_request(:get_snapshot_block, params)
      req.send_request(options, &block)
    end

    # Returns information about the blocks that are different between two
    # Amazon Elastic Block Store snapshots of the same volume/snapshot
    # lineage.
    #
    # @option params [String] :first_snapshot_id
    #   The ID of the first snapshot to use for the comparison.
    #
    #   The `FirstSnapshotID` parameter must be specified with a
    #   `SecondSnapshotId` parameter; otherwise, an error occurs.
    #
    # @option params [required, String] :second_snapshot_id
    #   The ID of the second snapshot to use for the comparison.
    #
    #   The `SecondSnapshotId` parameter must be specified with a
    #   `FirstSnapshotID` parameter; otherwise, an error occurs.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The number of results to return.
    #
    # @option params [Integer] :starting_block_index
    #   The block index from which the comparison should start.
    #
    #   The list in the response will start from this block index or the next
    #   valid block index in the snapshots.
    #
    # @return [Types::ListChangedBlocksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangedBlocksResponse#changed_blocks #changed_blocks} => Array&lt;Types::ChangedBlock&gt;
    #   * {Types::ListChangedBlocksResponse#expiry_time #expiry_time} => Time
    #   * {Types::ListChangedBlocksResponse#volume_size #volume_size} => Integer
    #   * {Types::ListChangedBlocksResponse#block_size #block_size} => Integer
    #   * {Types::ListChangedBlocksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_changed_blocks({
    #     first_snapshot_id: "SnapshotId",
    #     second_snapshot_id: "SnapshotId", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #     starting_block_index: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.changed_blocks #=> Array
    #   resp.changed_blocks[0].block_index #=> Integer
    #   resp.changed_blocks[0].first_block_token #=> String
    #   resp.changed_blocks[0].second_block_token #=> String
    #   resp.expiry_time #=> Time
    #   resp.volume_size #=> Integer
    #   resp.block_size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListChangedBlocks AWS API Documentation
    #
    # @overload list_changed_blocks(params = {})
    # @param [Hash] params ({})
    def list_changed_blocks(params = {}, options = {})
      req = build_request(:list_changed_blocks, params)
      req.send_request(options)
    end

    # Returns information about the blocks in an Amazon Elastic Block Store
    # snapshot.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot from which to get block indexes and block
    #   tokens.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The number of results to return.
    #
    # @option params [Integer] :starting_block_index
    #   The block index from which the list should start. The list in the
    #   response will start from this block index or the next valid block
    #   index in the snapshot.
    #
    # @return [Types::ListSnapshotBlocksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSnapshotBlocksResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::ListSnapshotBlocksResponse#expiry_time #expiry_time} => Time
    #   * {Types::ListSnapshotBlocksResponse#volume_size #volume_size} => Integer
    #   * {Types::ListSnapshotBlocksResponse#block_size #block_size} => Integer
    #   * {Types::ListSnapshotBlocksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshot_blocks({
    #     snapshot_id: "SnapshotId", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #     starting_block_index: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_index #=> Integer
    #   resp.blocks[0].block_token #=> String
    #   resp.expiry_time #=> Time
    #   resp.volume_size #=> Integer
    #   resp.block_size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/ListSnapshotBlocks AWS API Documentation
    #
    # @overload list_snapshot_blocks(params = {})
    # @param [Hash] params ({})
    def list_snapshot_blocks(params = {}, options = {})
      req = build_request(:list_snapshot_blocks, params)
      req.send_request(options)
    end

    # Writes a block of data to a snapshot. If the specified block contains
    # data, the existing data is overwritten. The target snapshot must be in
    # the `pending` state.
    #
    # Data written to a snapshot must be aligned with 512-byte sectors.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot.
    #
    # @option params [required, Integer] :block_index
    #   The block index of the block in which to write the data. A block index
    #   is a logical index in units of `512` KiB blocks. To identify the block
    #   index, divide the logical offset of the data in the logical volume by
    #   the block size (logical offset of data/`524288`). The logical offset
    #   of the data must be `512` KiB aligned.
    #
    # @option params [required, String, IO] :block_data
    #   The data to write to the block.
    #
    #   The block data is not signed as part of the Signature Version 4
    #   signing process. As a result, you must generate and provide a
    #   Base64-encoded SHA256 checksum for the block data using the
    #   **x-amz-Checksum** header. Also, you must specify the checksum
    #   algorithm using the **x-amz-Checksum-Algorithm** header. The checksum
    #   that you provide is part of the Signature Version 4 signing process.
    #   It is validated against a checksum generated by Amazon EBS to ensure
    #   the validity and authenticity of the data. If the checksums do not
    #   correspond, the request fails. For more information, see [ Using
    #   checksums with the EBS direct APIs][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums
    #
    # @option params [required, Integer] :data_length
    #   The size of the data to write to the block, in bytes. Currently, the
    #   only supported size is `524288`.
    #
    #   Valid values: `524288`
    #
    # @option params [Integer] :progress
    #   The progress of the write process, as a percentage.
    #
    # @option params [required, String] :checksum
    #   A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums
    #   are supported.
    #
    # @option params [required, String] :checksum_algorithm
    #   The algorithm used to generate the checksum. Currently, the only
    #   supported algorithm is `SHA256`.
    #
    # @return [Types::PutSnapshotBlockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSnapshotBlockResponse#checksum #checksum} => String
    #   * {Types::PutSnapshotBlockResponse#checksum_algorithm #checksum_algorithm} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_snapshot_block({
    #     snapshot_id: "SnapshotId", # required
    #     block_index: 1, # required
    #     block_data: "data", # required
    #     data_length: 1, # required
    #     progress: 1,
    #     checksum: "Checksum", # required
    #     checksum_algorithm: "SHA256", # required, accepts SHA256
    #   })
    #
    # @example Response structure
    #
    #   resp.checksum #=> String
    #   resp.checksum_algorithm #=> String, one of "SHA256"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/PutSnapshotBlock AWS API Documentation
    #
    # @overload put_snapshot_block(params = {})
    # @param [Hash] params ({})
    def put_snapshot_block(params = {}, options = {})
      req = build_request(:put_snapshot_block, params)
      req.send_request(options)
    end

    # Creates a new Amazon EBS snapshot. The new snapshot enters the
    # `pending` state after the request completes.
    #
    # After creating the snapshot, use [ PutSnapshotBlock][1] to write
    # blocks of data to the snapshot.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html
    #
    # @option params [required, Integer] :volume_size
    #   The size of the volume, in GiB. The maximum size is `16384` GiB (16
    #   TiB).
    #
    # @option params [String] :parent_snapshot_id
    #   The ID of the parent snapshot. If there is no parent snapshot, or if
    #   you are creating the first snapshot for an on-premises volume, omit
    #   this parameter.
    #
    #   If your account is enabled for encryption by default, you cannot use
    #   an unencrypted snapshot as a parent snapshot. You must first create an
    #   encrypted copy of the parent snapshot using [CopySnapshot][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CopySnapshot.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the snapshot.
    #
    # @option params [String] :description
    #   A description for the snapshot.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully. The subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the AWS SDK.
    #
    #   For more information, see [ Idempotency for StartSnapshot API][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html
    #
    # @option params [Boolean] :encrypted
    #   Indicates whether to encrypt the snapshot. To create an encrypted
    #   snapshot, specify `true`. To create an unencrypted snapshot, omit this
    #   parameter.
    #
    #   If you specify a value for **ParentSnapshotId**, omit this parameter.
    #
    #   If you specify `true`, the snapshot is encrypted using the CMK
    #   specified using the **KmsKeyArn** parameter. If no value is specified
    #   for **KmsKeyArn**, the default CMK for your account is used. If no
    #   default CMK has been specified for your account, the AWS managed CMK
    #   is used. To set a default CMK for your account, use [
    #   ModifyEbsDefaultKmsKeyId][1].
    #
    #   If your account is enabled for encryption by default, you cannot set
    #   this parameter to `false`. In this case, you can omit this parameter.
    #
    #   For more information, see [ Using encryption][2] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyEbsDefaultKmsKeyId.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-encryption
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
    #   KMS) customer master key (CMK) to be used to encrypt the snapshot. If
    #   you do not specify a CMK, the default AWS managed CMK is used.
    #
    #   If you specify a **ParentSnapshotId**, omit this parameter; the
    #   snapshot will be encrypted using the same CMK that was used to encrypt
    #   the parent snapshot.
    #
    #   If **Encrypted** is set to `true`, you must specify a CMK ARN.
    #
    # @option params [Integer] :timeout
    #   The amount of time (in minutes) after which the snapshot is
    #   automatically cancelled if:
    #
    #   * No blocks are written to the snapshot.
    #
    #   * The snapshot is not completed after writing the last block of data.
    #
    #   If no value is specified, the timeout defaults to `60` minutes.
    #
    # @return [Types::StartSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSnapshotResponse#description #description} => String
    #   * {Types::StartSnapshotResponse#snapshot_id #snapshot_id} => String
    #   * {Types::StartSnapshotResponse#owner_id #owner_id} => String
    #   * {Types::StartSnapshotResponse#status #status} => String
    #   * {Types::StartSnapshotResponse#start_time #start_time} => Time
    #   * {Types::StartSnapshotResponse#volume_size #volume_size} => Integer
    #   * {Types::StartSnapshotResponse#block_size #block_size} => Integer
    #   * {Types::StartSnapshotResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::StartSnapshotResponse#parent_snapshot_id #parent_snapshot_id} => String
    #   * {Types::StartSnapshotResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_snapshot({
    #     volume_size: 1, # required
    #     parent_snapshot_id: "SnapshotId",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     description: "Description",
    #     client_token: "IdempotencyToken",
    #     encrypted: false,
    #     kms_key_arn: "KmsKeyArn",
    #     timeout: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.snapshot_id #=> String
    #   resp.owner_id #=> String
    #   resp.status #=> String, one of "completed", "pending", "error"
    #   resp.start_time #=> Time
    #   resp.volume_size #=> Integer
    #   resp.block_size #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.parent_snapshot_id #=> String
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ebs-2019-11-02/StartSnapshot AWS API Documentation
    #
    # @overload start_snapshot(params = {})
    # @param [Hash] params ({})
    def start_snapshot(params = {}, options = {})
      req = build_request(:start_snapshot, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-ebs'
      context[:gem_version] = '1.11.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
