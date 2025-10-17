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

module Aws::EBS
  # An API client for Aws::EBS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Ebs

    add_plugin(::Aws::EBS::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EBS::EndpointProvider)
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

    # <p>Seals and completes the snapshot after all of the required blocks of data have been
    #             written to it. Completing the snapshot changes the status to <code>completed</code>. You
    #             cannot write new blocks to a snapshot after it has been completed.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CompleteSnapshotRequest] params
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot.</p>
    # @option params [Integer] :changed_blocks_count
    #   <p>The number of blocks that were written to the snapshot.</p>
    # @option params [String] :checksum
    #   <p>An aggregated Base-64 SHA256 checksum based on the checksums of each written
    #               block.</p>
    #            <p>To generate the aggregated checksum using the linear aggregation method, arrange the
    #               checksums for each written block in ascending order of their block index, concatenate
    #               them to form a single string, and then generate the checksum on the entire string using
    #               the SHA256 algorithm.</p>
    # @option params [String] :checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    # @option params [String] :checksum_aggregation_method
    #   <p>The aggregation method used to generate the checksum. Currently, the only supported
    #               aggregation method is <code>LINEAR</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #     changed_blocks_count: 1, # required
    #     checksum: "Checksum",
    #     checksum_algorithm: "SHA256" # One of: ["SHA256"],
    #     checksum_aggregation_method: "LINEAR" # One of: ["LINEAR"]
    #   }
    #   options = {}
    #   response = client.complete_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "completed" # One of: ["completed", "pending", "error"]
    #   }
    # @return [Types::CompleteSnapshotResponse]
    def complete_snapshot(params = {}, options = {})
      request = build_request(:complete_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns the data in a block in an Amazon Elastic Block Store snapshot.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::GetSnapshotBlockRequest] params
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot containing the block from which to get data.</p>
    #            <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use the 
    #                   KMS key that was used to encrypt the snapshot. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User 
    #                           Guide</i>.</p>
    #            </important>
    # @option params [Integer] :block_index
    #   <p>The block index of the block in which to read the data. A block index is a logical 
    #               index in units of <code>512</code> KiB blocks. To identify the block index, divide 
    #               the logical offset of the data in the logical volume by the block size (logical offset 
    #               of data/<code>524288</code>). The logical offset of the data must be <code>512</code> 
    #               KiB aligned.</p>
    # @option params [String] :block_token
    #   <p>The block token of the block from which to get data. You can obtain the <code>BlockToken</code> 
    #               by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #     block_index: 1, # required
    #     block_token: "BlockToken", # required
    #   }
    #   options = {}
    #   response = client.get_snapshot_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_length: 1,
    #     block_data: File.read("source_file"),
    #     checksum: "Checksum",
    #     checksum_algorithm: "SHA256" # One of: ["SHA256"]
    #   }
    # @return [Types::GetSnapshotBlockResponse]
    def get_snapshot_block(params = {}, options = {})
      request = build_request(:get_snapshot_block, params)
      request.send_request(options)
    end

    # <p>Returns information about the blocks that are different between two
    #             Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ListChangedBlocksRequest] params
    # @option params [String] :first_snapshot_id
    #   <p>The ID of the first snapshot to use for the comparison.</p>
    #            <important>
    #               <p>The <code>FirstSnapshotID</code> parameter must be specified with a
    #                       <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p>
    #            </important>
    # @option params [String] :second_snapshot_id
    #   <p>The ID of the second snapshot to use for the comparison.</p>
    #            <important>
    #               <p>The <code>SecondSnapshotId</code> parameter must be specified with a
    #                       <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p>
    #            </important>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #            <p>If you specify <b>NextToken</b>, then 
    #               <b>StartingBlockIndex</b> is ignored.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #            <p>Even if additional blocks can be retrieved from the snapshot, the request can 
    #               return less blocks than <b>MaxResults</b> or an empty 
    #               array of blocks.</p>
    #            <p>To retrieve the next set of blocks from the snapshot, make another request with 
    #               the returned <b>NextToken</b> value. The value of 
    #               <b>NextToken</b> is <code>null</code> when there are no 
    #               more blocks to return.</p>
    # @option params [Integer] :starting_block_index
    #   <p>The block index from which the comparison should start.</p>
    #            <p>The list in the response will start from this block index or the next valid block
    #               index in the snapshots.</p>
    #            <p>If you specify <b>NextToken</b>, then 
    #               <b>StartingBlockIndex</b> is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     first_snapshot_id: "SnapshotId",
    #     second_snapshot_id: "SnapshotId", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #     starting_block_index: 1
    #   }
    #   options = {}
    #   response = client.list_changed_blocks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changed_blocks: [
    #       {
    #         block_index: 1,
    #         first_block_token: "BlockToken",
    #         second_block_token: "BlockToken"
    #       }
    #     ],
    #     expiry_time: Time.now,
    #     volume_size: 1,
    #     block_size: 1,
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListChangedBlocksResponse]
    def list_changed_blocks(params = {}, options = {})
      request = build_request(:list_changed_blocks, params)
      request.send_request(options)
    end

    # <p>Returns information about the blocks in an Amazon Elastic Block Store snapshot.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ListSnapshotBlocksRequest] params
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot from which to get block indexes and block tokens.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #            <p>If you specify <b>NextToken</b>, then 
    #               <b>StartingBlockIndex</b> is ignored.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #            <p>Even if additional blocks can be retrieved from the snapshot, the request can 
    #               return less blocks than <b>MaxResults</b> or an empty 
    #               array of blocks.</p>
    #            <p>To retrieve the next set of blocks from the snapshot, make another request with 
    #               the returned <b>NextToken</b> value. The value of 
    #               <b>NextToken</b> is <code>null</code> when there are no 
    #               more blocks to return.</p>
    # @option params [Integer] :starting_block_index
    #   <p>The block index from which the list should start. The list in the response will start
    #               from this block index or the next valid block index in the snapshot.</p>
    #            <p>If you specify <b>NextToken</b>, then 
    #               <b>StartingBlockIndex</b> is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #     starting_block_index: 1
    #   }
    #   options = {}
    #   response = client.list_snapshot_blocks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blocks: [
    #       {
    #         block_index: 1,
    #         block_token: "BlockToken"
    #       }
    #     ],
    #     expiry_time: Time.now,
    #     volume_size: 1,
    #     block_size: 1,
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListSnapshotBlocksResponse]
    def list_snapshot_blocks(params = {}, options = {})
      request = build_request(:list_snapshot_blocks, params)
      request.send_request(options)
    end

    # <p>Writes a block of data to a snapshot. If the specified block contains
    #             data, the existing data is overwritten. The target snapshot must be in the
    #                 <code>pending</code> state.</p>
    #          <p>Data written to a snapshot must be aligned with 512-KiB sectors.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::PutSnapshotBlockRequest] params
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot.</p>
    #            <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use 
    #                   the KMS key that was used to encrypt the snapshot. For more information, 
    #                   see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User 
    #                           Guide</i>..</p>
    #            </important>
    # @option params [Integer] :block_index
    #   <p>The block index of the block in which to write the data. A block index is a logical 
    #       	index in units of <code>512</code> KiB blocks. To identify the block index, divide 
    #           	the logical offset of the data in the logical volume by the block size (logical offset of 
    #           	data/<code>524288</code>). The logical offset of the data must be <code>512</code> 
    #           	KiB aligned.</p>
    # @option params [String] :block_data
    #   <p>The data to write to the block.</p>
    #            <p>The block data is not signed as part of the Signature Version 4 signing process. As a
    #               result, you must generate and provide a Base64-encoded SHA256 checksum for the block
    #               data using the <b>x-amz-Checksum</b> header. Also, you 
    #           	must specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b> 
    #           	header. The checksum that you provide is part of the Signature Version 4 signing process. 
    #           	It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity 
    #           	of the data. If the checksums do not correspond, the request fails. For more information, 
    #           	see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums">
    #                   Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User
    #                   Guide</i>.</p>
    # @option params [Integer] :data_length
    #   <p>The size of the data to write to the block, in bytes. Currently, the only supported
    #               size is <code>524288</code> bytes.</p>
    #            <p>Valid values: <code>524288</code>
    #            </p>
    # @option params [Integer] :progress
    #   <p>The progress of the write process, as a percentage.</p>
    # @option params [String] :checksum
    #   <p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
    #               supported.</p>
    # @option params [String] :checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_id: "SnapshotId", # required
    #     block_index: 1, # required
    #     block_data: File.read("source_file"), # required
    #     data_length: 1, # required
    #     progress: 1,
    #     checksum: "Checksum", # required
    #     checksum_algorithm: "SHA256" # One of: ["SHA256"], # required
    #   }
    #   options = {}
    #   response = client.put_snapshot_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checksum: "Checksum",
    #     checksum_algorithm: "SHA256" # One of: ["SHA256"]
    #   }
    # @return [Types::PutSnapshotBlockResponse]
    def put_snapshot_block(params = {}, options = {})
      request = build_request(:put_snapshot_block, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon EBS snapshot. The new snapshot enters the <code>pending</code> state
    #             after the request completes. </p>
    #          <p>After creating the snapshot, use <a href="https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html"> PutSnapshotBlock</a> to
    #             write blocks of data to the snapshot.</p>
    #          <note>
    #             <p>You should always retry requests that receive server (<code>5xx</code>) 
    #     error responses, and <code>ThrottlingException</code> and <code>RequestThrottledException</code> 
    #     client error responses. For more information see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html">Error retries</a> in the 
    #         <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::StartSnapshotRequest] params
    # @option params [Integer] :volume_size
    #   <p>The size of the volume, in GiB. The maximum size is <code>65536</code> GiB (64
    #               TiB).</p>
    # @option params [String] :parent_snapshot_id
    #   <p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating
    #               the first snapshot for an on-premises volume, omit this parameter.</p>
    #            <p>You can't specify <b>ParentSnapshotId</b> and 
    #               <b>Encrypted</b> in the same request. If you specify both 
    #               parameters, the request fails with <code>ValidationException</code>.</p>
    #            <p>The encryption status of the snapshot depends on the values that you specify for 
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>, 
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account 
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #            <important>
    #               <p>If you specify an encrypted parent snapshot, you must have permission to use the 
    #                   KMS key that was used to encrypt the parent snapshot. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User 
    #                           Guide</i>.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to apply to the snapshot.</p>
    # @option params [String] :description
    #   <p>A description for the snapshot.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. Idempotency ensures that an API request completes only once. With an idempotent 
    #               request, if the original request completes successfully. The subsequent retries with the same 
    #               client token return the result from the original successful request and they have no additional 
    #               effect.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html">
    #       		Idempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether to encrypt the snapshot.</p>
    #            <p>You can't specify <b>Encrypted</b> and <b>
    #               ParentSnapshotId</b> in the same request. If you specify both parameters, the 
    #               request fails with <code>ValidationException</code>.</p>
    #            <p>The encryption status of the snapshot depends on the values that you specify for 
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>, 
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account 
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #               Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #            <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For 
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User 
    #                           Guide</i>.</p>
    #            </important>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to be used to encrypt the snapshot.</p>
    #            <p>The encryption status of the snapshot depends on the values that you specify for 
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>, 
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account 
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #            <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For 
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User 
    #                           Guide</i>.</p>
    #            </important>
    # @option params [Integer] :timeout
    #   <p>The amount of time (in minutes) after which the snapshot is automatically cancelled
    #               if:</p>
    #            <ul>
    #               <li>
    #                  <p>No blocks are written to the snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>The snapshot is not completed after writing the last block of data.</p>
    #               </li>
    #            </ul>
    #            <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_size: 1, # required
    #     parent_snapshot_id: "SnapshotId",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     description: "Description",
    #     client_token: "IdempotencyToken",
    #     encrypted: false,
    #     kms_key_arn: "KmsKeyArn",
    #     timeout: 1
    #   }
    #   options = {}
    #   response = client.start_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "Description",
    #     snapshot_id: "SnapshotId",
    #     owner_id: "OwnerId",
    #     status: "completed" # One of: ["completed", "pending", "error"],
    #     start_time: Time.now,
    #     volume_size: 1,
    #     block_size: 1,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     parent_snapshot_id: "SnapshotId",
    #     kms_key_arn: "KmsKeyArn",
    #     sse_type: "sse-ebs" # One of: ["sse-ebs", "sse-kms", "none"]
    #   }
    # @return [Types::StartSnapshotResponse]
    def start_snapshot(params = {}, options = {})
      request = build_request(:start_snapshot, params)
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
      context[:gem_name] = 'aws-sdk-ebs'
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
