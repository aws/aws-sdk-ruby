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

module Aws::SageMakerFeatureStoreRuntime
  # An API client for Aws::SageMakerFeatureStoreRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonSageMakerFeatureStoreRuntime

    add_plugin(::Aws::SageMakerFeatureStoreRuntime::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SageMakerFeatureStoreRuntime::EndpointProvider)
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

    # <p>Retrieves a batch of <code>Records</code> from a <code>FeatureGroup</code>.</p>
    # @param [Hash, Types::BatchGetRecordRequest] params
    # @option params [Array<Types::BatchGetRecordIdentifier>] :identifiers
    #   <p>A list containing the name or Amazon Resource Name (ARN) of the
    #               <code>FeatureGroup</code>, the list of names of <code>Feature</code>s to be retrieved,
    #            and the corresponding <code>RecordIdentifier</code> values as strings.</p>
    # @option params [String] :expiration_time_response
    #   <p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,
    #               <code>BatchGetRecord</code> will return the value of <code>ExpiresAt</code>, if it is
    #            not null. If <code>Disabled</code> and null, <code>BatchGetRecord</code> will return
    #            null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifiers: [ # required
    #       {
    #         feature_group_name: "FeatureGroupNameOrArn", # required
    #         record_identifiers_value_as_string: ["ValueAsString"], # required
    #         feature_names: ["FeatureName"]
    #       }
    #     ],
    #     expiration_time_response: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    #   options = {}
    #   response = client.batch_get_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [ # required
    #       {
    #         feature_group_name: "ValueAsString", # required
    #         record_identifier_value_as_string: "ValueAsString", # required
    #         record: [ # required
    #           {
    #             feature_name: "FeatureName", # required
    #             value_as_string: "ValueAsString",
    #             value_as_string_list: ["ValueAsString"]
    #           }
    #         ],
    #         expires_at: "ExpiresAt"
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         feature_group_name: "ValueAsString", # required
    #         record_identifier_value_as_string: "ValueAsString", # required
    #         error_code: "ValueAsString", # required
    #         error_message: "Message", # required
    #       }
    #     ],
    #     unprocessed_identifiers: [ # required
    #       {
    #         feature_group_name: "FeatureGroupNameOrArn", # required
    #         record_identifiers_value_as_string: ["ValueAsString"], # required
    #         feature_names: ["FeatureName"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetRecordResponse]
    def batch_get_record(params = {}, options = {})
      request = build_request(:batch_get_record, params)
      request.send_request(options)
    end

    # <p>Deletes a <code>Record</code> from a <code>FeatureGroup</code> in the
    #             <code>OnlineStore</code>. Feature Store supports both <code>SoftDelete</code> and
    #             <code>HardDelete</code>. For <code>SoftDelete</code> (default), feature columns are set
    #          to <code>null</code> and the record is no longer retrievable by <code>GetRecord</code> or
    #             <code>BatchGetRecord</code>. For <code>HardDelete</code>, the complete
    #             <code>Record</code> is removed from the <code>OnlineStore</code>. In both cases, Feature
    #          Store appends the deleted record marker to the <code>OfflineStore</code>. The deleted
    #          record marker is a record with the same <code>RecordIdentifer</code> as the original, but
    #          with <code>is_deleted</code> value set to <code>True</code>, <code>EventTime</code> set to
    #          the delete input <code>EventTime</code>, and other feature values set to
    #          <code>null</code>.</p>
    #          <p>Note that the <code>EventTime</code> specified in <code>DeleteRecord</code> should be
    #          set later than the <code>EventTime</code> of the existing record in the
    #             <code>OnlineStore</code> for that <code>RecordIdentifer</code>. If it is not, the
    #          deletion does not occur:</p>
    #          <ul>
    #             <li>
    #                <p>For <code>SoftDelete</code>, the existing (not deleted) record remains in the
    #                   <code>OnlineStore</code>, though the delete record marker is still written to the
    #                   <code>OfflineStore</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HardDelete</code> returns <code>EventTime</code>: <code>400
    #                   ValidationException</code> to indicate that the delete operation failed. No delete
    #                record marker is written to the <code>OfflineStore</code>.</p>
    #             </li>
    #          </ul>
    #          <p>When a record is deleted from the <code>OnlineStore</code>, the deleted record marker is
    #          appended to the <code>OfflineStore</code>. If you have the Iceberg table format enabled for
    #          your <code>OfflineStore</code>, you can remove all history of a record from the
    #             <code>OfflineStore</code> using Amazon Athena or Apache Spark. For information on how to
    #          hard delete a record from the <code>OfflineStore</code> with the Iceberg table format
    #          enabled, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/feature-store-delete-records-offline-store.html#feature-store-delete-records-offline-store">Delete records from the offline store</a>.</p>
    # @param [Hash, Types::DeleteRecordRequest] params
    # @option params [String] :feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group to delete the record from.
    #         </p>
    # @option params [String] :record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in
    #            string format. </p>
    # @option params [String] :event_time
    #   <p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be
    #            used to query data at a certain point in time.</p>
    # @option params [Array<String>] :target_stores
    #   <p>A list of stores from which you're deleting the record. By default, Feature Store
    #            deletes the record from all of the stores that you're using for the
    #               <code>FeatureGroup</code>.</p>
    # @option params [String] :deletion_mode
    #   <p>The name of the deletion mode for deleting the record. By default, the deletion mode is
    #            set to <code>SoftDelete</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     feature_group_name: "FeatureGroupNameOrArn", # required
    #     record_identifier_value_as_string: "ValueAsString", # required
    #     event_time: "ValueAsString", # required
    #     target_stores: ["OnlineStore" # One of: ["OnlineStore", "OfflineStore"]],
    #     deletion_mode: "SoftDelete" # One of: ["SoftDelete", "HardDelete"]
    #   }
    #   options = {}
    #   response = client.delete_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_record(params = {}, options = {})
      request = build_request(:delete_record, params)
      request.send_request(options)
    end

    # <p>Use for <code>OnlineStore</code> serving from a <code>FeatureStore</code>. Only the
    #          latest records stored in the <code>OnlineStore</code> can be retrieved. If no Record with
    #             <code>RecordIdentifierValue</code> is found, then an empty result is returned. </p>
    # @param [Hash, Types::GetRecordRequest] params
    # @option params [String] :feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group from which you want to
    #            retrieve a record.</p>
    # @option params [String] :record_identifier_value_as_string
    #   <p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies
    #            the record in the <code>FeatureGroup</code>. </p>
    # @option params [Array<String>] :feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    # @option params [String] :expiration_time_response
    #   <p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,
    #               <code>GetRecord</code> will return the value of <code>ExpiresAt</code>, if it is not
    #            null. If <code>Disabled</code> and null, <code>GetRecord</code> will return null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     feature_group_name: "FeatureGroupNameOrArn", # required
    #     record_identifier_value_as_string: "ValueAsString", # required
    #     feature_names: ["FeatureName"],
    #     expiration_time_response: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    #   options = {}
    #   response = client.get_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record: [
    #       {
    #         feature_name: "FeatureName", # required
    #         value_as_string: "ValueAsString",
    #         value_as_string_list: ["ValueAsString"]
    #       }
    #     ],
    #     expires_at: "ExpiresAt"
    #   }
    # @return [Types::GetRecordResponse]
    def get_record(params = {}, options = {})
      request = build_request(:get_record, params)
      request.send_request(options)
    end

    # <p>The <code>PutRecord</code> API is used to ingest a list of <code>Records</code> into
    #          your feature group. </p>
    #          <p>If a new record’s <code>EventTime</code> is greater, the new record is written to both
    #          the <code>OnlineStore</code> and <code>OfflineStore</code>. Otherwise, the record is a
    #          historic record and it is written only to the <code>OfflineStore</code>. </p>
    #          <p>You can specify the ingestion to be applied to the <code>OnlineStore</code>,
    #             <code>OfflineStore</code>, or both by using the <code>TargetStores</code> request
    #          parameter. </p>
    #          <p>You can set the ingested record to expire at a given time to live (TTL) duration after
    #          the record’s event time, <code>ExpiresAt</code> = <code>EventTime</code> +
    #             <code>TtlDuration</code>, by specifying the <code>TtlDuration</code> parameter. A record
    #          level <code>TtlDuration</code> is set when specifying the <code>TtlDuration</code>
    #          parameter using the <code>PutRecord</code> API call. If the input <code>TtlDuration</code>
    #          is <code>null</code> or unspecified, <code>TtlDuration</code> is set to the default feature
    #          group level <code>TtlDuration</code>. A record level <code>TtlDuration</code> supersedes
    #          the group level <code>TtlDuration</code>.</p>
    # @param [Hash, Types::PutRecordRequest] params
    # @option params [String] :feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group that you want to insert the
    #            record into.</p>
    # @option params [Array<Types::FeatureValue>] :record
    #   <p>List of FeatureValues to be inserted. This will be a full over-write. If you only want
    #            to update few of the feature values, do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>GetRecord</code> to retrieve the latest record.</p>
    #               </li>
    #               <li>
    #                  <p>Update the record returned from <code>GetRecord</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Use <code>PutRecord</code> to update feature values.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :target_stores
    #   <p>A list of stores to which you're adding the record. By default, Feature Store adds the
    #            record to all of the stores that you're using for the <code>FeatureGroup</code>.</p>
    # @option params [Types::TtlDuration] :ttl_duration
    #   <p>Time to live duration, where the record is hard deleted after the expiration time is
    #            reached; <code>ExpiresAt</code> = <code>EventTime</code> + <code>TtlDuration</code>. For
    #            information on HardDelete, see the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html">DeleteRecord</a> API in the Amazon SageMaker API Reference guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     feature_group_name: "FeatureGroupNameOrArn", # required
    #     record: [ # required
    #       {
    #         feature_name: "FeatureName", # required
    #         value_as_string: "ValueAsString",
    #         value_as_string_list: ["ValueAsString"]
    #       }
    #     ],
    #     target_stores: ["OnlineStore" # One of: ["OnlineStore", "OfflineStore"]],
    #     ttl_duration: {
    #       unit: "Seconds" # One of: ["Seconds", "Minutes", "Hours", "Days", "Weeks"], # required
    #       value: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_record(params = {}, options = {})
      request = build_request(:put_record, params)
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
      context[:gem_name] = 'aws-sdk-sagemakerfeaturestoreruntime'
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
