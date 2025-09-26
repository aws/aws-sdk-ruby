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

module Aws::KeyspacesStreams
  # An API client for Aws::KeyspacesStreams.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KeyspacesStreams

    add_plugin(::Aws::KeyspacesStreams::Plugins::Endpoint)
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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::KeyspacesStreams::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Retrieves data records from a specified shard in an Amazon Keyspaces data stream. This operation returns a collection of data records from the shard, including the primary key columns and information about modifications made to the captured table data. Each record represents a single data modification in the Amazon Keyspaces table and includes metadata about when the change occurred.</p>
    # @param [Hash, Types::GetRecordsInput] params
    # @option params [String] :shard_iterator
    #   <p> The unique identifier of the shard iterator. A shard iterator specifies the position in the shard from which you want to start reading data records sequentially. You obtain this value by calling the <code>GetShardIterator</code> operation. Each shard iterator is valid for 15 minutes after creation. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to return in a single <code>GetRecords</code> request. Default value is 1000. You can specify a limit between 1 and 1000, but the actual number returned might be less than the specified maximum if the size of the data for the returned records exceeds the internal size limit. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     shard_iterator: "ShardIterator", # required
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_records: [
    #       {
    #         event_version: "String",
    #         created_at: Time.now,
    #         origin: "USER" # One of: ["USER", "REPLICATION", "TTL"],
    #         partition_keys: {
    #           "String" => {
    #             # One of:
    #             ascii_t: "String",
    #             bigint_t: "String",
    #             blob_t: "data",
    #             bool_t: false,
    #             counter_t: "String",
    #             date_t: "String",
    #             decimal_t: "String",
    #             double_t: "String",
    #             float_t: "String",
    #             inet_t: "String",
    #             int_t: "String",
    #             list_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             map_t: [
    #               {
    #                 key: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             set_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             smallint_t: "String",
    #             text_t: "String",
    #             time_t: "String",
    #             timestamp_t: "String",
    #             timeuuid_t: "String",
    #             tinyint_t: "String",
    #             tuple_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             uuid_t: "String",
    #             varchar_t: "String",
    #             varint_t: "String",
    #             udt_t: {
    #               "String" => {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         clustering_keys: {
    #           "String" => {
    #             # One of:
    #             ascii_t: "String",
    #             bigint_t: "String",
    #             blob_t: "data",
    #             bool_t: false,
    #             counter_t: "String",
    #             date_t: "String",
    #             decimal_t: "String",
    #             double_t: "String",
    #             float_t: "String",
    #             inet_t: "String",
    #             int_t: "String",
    #             list_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             map_t: [
    #               {
    #                 key: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             set_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             smallint_t: "String",
    #             text_t: "String",
    #             time_t: "String",
    #             timestamp_t: "String",
    #             timeuuid_t: "String",
    #             tinyint_t: "String",
    #             tuple_t: [
    #               {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             ],
    #             uuid_t: "String",
    #             varchar_t: "String",
    #             varint_t: "String",
    #             udt_t: {
    #               "String" => {
    #                 value: {
    #                   # recursive KeyspacesCellValue
    #                 },
    #                 metadata: {
    #                   expiration_time: "String",
    #                   write_time: "String"
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         new_image: {
    #           value_cells: {
    #             "String" => {
    #               value: {
    #                 # One of:
    #                 ascii_t: "String",
    #                 bigint_t: "String",
    #                 blob_t: "data",
    #                 bool_t: false,
    #                 counter_t: "String",
    #                 date_t: "String",
    #                 decimal_t: "String",
    #                 double_t: "String",
    #                 float_t: "String",
    #                 inet_t: "String",
    #                 int_t: "String",
    #                 list_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 map_t: [
    #                   {
    #                     key: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     value: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     metadata: {
    #                       expiration_time: "String",
    #                       write_time: "String"
    #                     }
    #                   }
    #                 ],
    #                 set_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 smallint_t: "String",
    #                 text_t: "String",
    #                 time_t: "String",
    #                 timestamp_t: "String",
    #                 timeuuid_t: "String",
    #                 tinyint_t: "String",
    #                 tuple_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 uuid_t: "String",
    #                 varchar_t: "String",
    #                 varint_t: "String",
    #                 udt_t: {
    #                   "String" => {
    #                     # recursive KeyspacesCell
    #                   }
    #                 }
    #               },
    #               metadata: {
    #                 expiration_time: "String",
    #                 write_time: "String"
    #               }
    #             }
    #           },
    #           static_cells: {
    #             "String" => {
    #               value: {
    #                 # One of:
    #                 ascii_t: "String",
    #                 bigint_t: "String",
    #                 blob_t: "data",
    #                 bool_t: false,
    #                 counter_t: "String",
    #                 date_t: "String",
    #                 decimal_t: "String",
    #                 double_t: "String",
    #                 float_t: "String",
    #                 inet_t: "String",
    #                 int_t: "String",
    #                 list_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 map_t: [
    #                   {
    #                     key: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     value: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     metadata: {
    #                       expiration_time: "String",
    #                       write_time: "String"
    #                     }
    #                   }
    #                 ],
    #                 set_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 smallint_t: "String",
    #                 text_t: "String",
    #                 time_t: "String",
    #                 timestamp_t: "String",
    #                 timeuuid_t: "String",
    #                 tinyint_t: "String",
    #                 tuple_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 uuid_t: "String",
    #                 varchar_t: "String",
    #                 varint_t: "String",
    #                 udt_t: {
    #                   "String" => {
    #                     # recursive KeyspacesCell
    #                   }
    #                 }
    #               },
    #               metadata: {
    #                 expiration_time: "String",
    #                 write_time: "String"
    #               }
    #             }
    #           },
    #           row_metadata: {
    #             expiration_time: "String",
    #             write_time: "String"
    #           }
    #         },
    #         old_image: {
    #           value_cells: {
    #             "String" => {
    #               value: {
    #                 # One of:
    #                 ascii_t: "String",
    #                 bigint_t: "String",
    #                 blob_t: "data",
    #                 bool_t: false,
    #                 counter_t: "String",
    #                 date_t: "String",
    #                 decimal_t: "String",
    #                 double_t: "String",
    #                 float_t: "String",
    #                 inet_t: "String",
    #                 int_t: "String",
    #                 list_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 map_t: [
    #                   {
    #                     key: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     value: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     metadata: {
    #                       expiration_time: "String",
    #                       write_time: "String"
    #                     }
    #                   }
    #                 ],
    #                 set_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 smallint_t: "String",
    #                 text_t: "String",
    #                 time_t: "String",
    #                 timestamp_t: "String",
    #                 timeuuid_t: "String",
    #                 tinyint_t: "String",
    #                 tuple_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 uuid_t: "String",
    #                 varchar_t: "String",
    #                 varint_t: "String",
    #                 udt_t: {
    #                   "String" => {
    #                     # recursive KeyspacesCell
    #                   }
    #                 }
    #               },
    #               metadata: {
    #                 expiration_time: "String",
    #                 write_time: "String"
    #               }
    #             }
    #           },
    #           static_cells: {
    #             "String" => {
    #               value: {
    #                 # One of:
    #                 ascii_t: "String",
    #                 bigint_t: "String",
    #                 blob_t: "data",
    #                 bool_t: false,
    #                 counter_t: "String",
    #                 date_t: "String",
    #                 decimal_t: "String",
    #                 double_t: "String",
    #                 float_t: "String",
    #                 inet_t: "String",
    #                 int_t: "String",
    #                 list_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 map_t: [
    #                   {
    #                     key: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     value: {
    #                       # recursive KeyspacesCellValue
    #                     },
    #                     metadata: {
    #                       expiration_time: "String",
    #                       write_time: "String"
    #                     }
    #                   }
    #                 ],
    #                 set_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 smallint_t: "String",
    #                 text_t: "String",
    #                 time_t: "String",
    #                 timestamp_t: "String",
    #                 timeuuid_t: "String",
    #                 tinyint_t: "String",
    #                 tuple_t: [
    #                   {
    #                     # recursive KeyspacesCell
    #                   }
    #                 ],
    #                 uuid_t: "String",
    #                 varchar_t: "String",
    #                 varint_t: "String",
    #                 udt_t: {
    #                   "String" => {
    #                     # recursive KeyspacesCell
    #                   }
    #                 }
    #               },
    #               metadata: {
    #                 expiration_time: "String",
    #                 write_time: "String"
    #               }
    #             }
    #           },
    #           row_metadata: {
    #             expiration_time: "String",
    #             write_time: "String"
    #           }
    #         },
    #         sequence_number: "SequenceNumber"
    #       }
    #     ],
    #     next_shard_iterator: "ShardIterator"
    #   }
    # @return [Types::GetRecordsOutput]
    def get_records(params = {}, options = {})
      request = build_request(:get_records, params)
      request.send_request(options)
    end

    # <p>Returns a shard iterator that serves as a bookmark for reading data from a specific position in an Amazon Keyspaces data stream's shard. The shard iterator specifies the shard position from which to start reading data records sequentially. You can specify whether to begin reading at the latest record, the oldest record, or at a particular sequence number within the shard.</p>
    # @param [Hash, Types::GetShardIteratorInput] params
    # @option params [String] :stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream for which to get the shard iterator. The ARN uniquely identifies the stream within Amazon Keyspaces. </p>
    # @option params [String] :shard_id
    #   <p> The identifier of the shard within the stream. The shard ID uniquely identifies a subset of the stream's data records that you want to access. </p>
    # @option params [String] :shard_iterator_type
    #   <p> Determines how the shard iterator is positioned. Must be one of the following:</p> <ul> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the shard, which is the oldest data record in the shard.</p> </li> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the specified sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the specified sequence number.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent record in the shard, so that you always read the most recent data.</p> </li> </ul>
    # @option params [String] :sequence_number
    #   <p> The sequence number of the data record in the shard from which to start reading. Required if <code>ShardIteratorType</code> is <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>. This parameter is ignored for other iterator types. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamArn", # required
    #     shard_id: "ShardId", # required
    #     shard_iterator_type: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER"], # required
    #     sequence_number: "SequenceNumber"
    #   }
    #   options = {}
    #   response = client.get_shard_iterator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shard_iterator: "ShardIterator"
    #   }
    # @return [Types::GetShardIteratorOutput]
    def get_shard_iterator(params = {}, options = {})
      request = build_request(:get_shard_iterator, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a specific data capture stream for an Amazon Keyspaces table. The information includes the stream's Amazon Resource Name (ARN), creation time, current status, retention period, shard composition, and associated table details. This operation helps you monitor and manage the configuration of your Amazon Keyspaces data streams.</p>
    # @param [Hash, Types::GetStreamInput] params
    # @option params [String] :stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream for which detailed information is requested. This uniquely identifies the specific stream you want to get information about. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of shard objects to return in a single <code>GetStream</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>
    # @option params [Types::ShardFilter] :shard_filter
    #   <p> Optional filter criteria to apply when retrieving shards. You can filter shards based on their state or other attributes to narrow down the results returned by the <code>GetStream</code> operation. </p>
    # @option params [String] :next_token
    #   <p> An optional pagination token provided by a previous <code>GetStream</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamArn", # required
    #     max_results: 1,
    #     shard_filter: {
    #       type: "CHILD_SHARDS" # One of: ["CHILD_SHARDS"],
    #       shard_id: "ShardId"
    #     },
    #     next_token: "ShardIdToken"
    #   }
    #   options = {}
    #   response = client.get_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_arn: "StreamArn", # required
    #     stream_label: "String", # required
    #     stream_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"], # required
    #     stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"], # required
    #     creation_request_date_time: Time.now, # required
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     shards: [
    #       {
    #         shard_id: "ShardId",
    #         sequence_number_range: {
    #           starting_sequence_number: "SequenceNumber",
    #           ending_sequence_number: "SequenceNumber"
    #         },
    #         parent_shard_ids: ["ShardId"]
    #       }
    #     ],
    #     next_token: "ShardIdToken"
    #   }
    # @return [Types::GetStreamOutput]
    def get_stream(params = {}, options = {})
      request = build_request(:get_stream, params)
      request.send_request(options)
    end

    # <p>Returns a list of all data capture streams associated with your Amazon Keyspaces account or for a specific keyspace or table. The response includes information such as stream ARNs, table associations, creation timestamps, and current status. This operation helps you discover and manage all active data streams in your Amazon Keyspaces environment.</p>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace for which to list streams. If specified, only streams associated with tables in this keyspace are returned. If omitted, streams from all keyspaces are included in the results. </p>
    # @option params [String] :table_name
    #   <p> The name of the table for which to list streams. Must be used together with <code>keyspaceName</code>. If specified, only streams associated with this specific table are returned. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of streams to return in a single <code>ListStreams</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>
    # @option params [String] :next_token
    #   <p> An optional pagination token provided by a previous <code>ListStreams</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName",
    #     table_name: "TableName",
    #     max_results: 1,
    #     next_token: "StreamArnToken"
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streams: [
    #       {
    #         stream_arn: "StreamArn", # required
    #         keyspace_name: "KeyspaceName", # required
    #         table_name: "TableName", # required
    #         stream_label: "String", # required
    #       }
    #     ],
    #     next_token: "StreamArnToken"
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
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
      context[:gem_name] = 'aws-sdk-keyspacesstreams'
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
