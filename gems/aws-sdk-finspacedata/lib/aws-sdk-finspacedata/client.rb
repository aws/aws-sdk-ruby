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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Finspacedata
  # An API client for Aws::Finspacedata.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSHabaneroPublicAPI

    add_plugin(::Aws::Finspacedata::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Finspacedata::EndpointProvider)
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

    # <p>Adds a user to a permission group to grant permissions for actions a user can perform in FinSpace.</p>
    # @param [Hash, Types::AssociateUserToPermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #     user_id: "UserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_user_to_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::AssociateUserToPermissionGroupResponse]
    def associate_user_to_permission_group(params = {}, options = {})
      request = build_request(:associate_user_to_permission_group, params)
      request.send_request(options)
    end

    # <p>Creates a new Changeset in a FinSpace Dataset.</p>
    # @param [Hash, Types::CreateChangesetRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset will be created.
    #       </p>
    # @option params [String] :change_type
    #   <p>The option to indicate how a Changeset will be applied to a Dataset.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> – Changeset will be considered as a replacement to all prior
    #             loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPEND</code> – Changeset will be considered as an addition to the end of all
    #             prior loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams": 
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a> section.</p>
    # @option params [Hash<String, String>] :format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #             "formatParams": 
    #           {
    #            "formatType": "CSV",
    #            "withHeader": "true",
    #            "separator": ",",
    #            "compression":"None"
    #            } 
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #             {
    #             "withHeader": "true",
    #             "separator": ","
    #              }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     change_type: "REPLACE" # One of: ["REPLACE", "APPEND", "MODIFY"], # required
    #     source_params: { # required
    #       "StringMapKey" => "StringMapValue"
    #     },
    #     format_params: { # required
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_changeset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId",
    #     changeset_id: "ChangesetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreateChangesetResponse]
    def create_changeset(params = {}, options = {})
      request = build_request(:create_changeset, params)
      request.send_request(options)
    end

    # <p>Creates a Dataview for a Dataset.</p>
    # @param [Hash, Types::CreateDataViewRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_id
    #   <p>The unique Dataset identifier that is used to create a Dataview.</p>
    # @option params [Boolean] :auto_update
    #   <p>Flag to indicate Dataview should be updated automatically.</p>
    # @option params [Array<String>] :sort_columns
    #   <p>Columns to be used for sorting the data.</p>
    # @option params [Array<String>] :partition_columns
    #   <p>Ordered set of column names used to partition data.</p>
    # @option params [Integer] :as_of_timestamp
    #   <p>Beginning time to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    # @option params [Types::DataViewDestinationTypeParams] :destination_type_params
    #   <p>Options that define the destination type for the Dataview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     auto_update: false,
    #     sort_columns: ["StringValueLength1to255"],
    #     partition_columns: ["StringValueLength1to255"],
    #     as_of_timestamp: 1,
    #     destination_type_params: { # required
    #       destination_type: "DataViewDestinationType", # required
    #       s3_destination_export_file_format: "PARQUET" # One of: ["PARQUET", "DELIMITED_TEXT"],
    #       s3_destination_export_file_format_options: {
    #         "StringMapKey" => "StringMapValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId",
    #     data_view_id: "DataViewId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreateDataViewResponse]
    def create_data_view(params = {}, options = {})
      request = build_request(:create_data_view, params)
      request.send_request(options)
    end

    # <p>Creates a new FinSpace Dataset.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_title
    #   <p>Display title for a FinSpace Dataset.</p>
    # @option params [String] :kind
    #   <p>The format in which Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    # @option params [String] :dataset_description
    #   <p>Description of a Dataset.</p>
    # @option params [Types::DatasetOwnerInfo] :owner_info
    #   <p>Contact information for a Dataset owner.</p>
    # @option params [Types::PermissionGroupParams] :permission_group_params
    #   <p>Permission group parameters for Dataset permissions.</p>
    # @option params [String] :alias
    #   <p>The unique resource identifier for a Dataset.</p>
    # @option params [Types::SchemaUnion] :schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_title: "DatasetTitle", # required
    #     kind: "TABULAR" # One of: ["TABULAR", "NON_TABULAR"], # required
    #     dataset_description: "DatasetDescription",
    #     owner_info: {
    #       name: "OwnerName",
    #       phone_number: "PhoneNumber",
    #       email: "Email"
    #     },
    #     permission_group_params: { # required
    #       permission_group_id: "PermissionGroupId",
    #       dataset_permissions: [
    #         {
    #           permission: "StringValueLength1to250"
    #         }
    #       ]
    #     },
    #     alias: "AliasString",
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: "STRING" # One of: ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"],
    #             column_name: "ColumnName",
    #             column_description: "ColumnDescription"
    #           }
    #         ],
    #         primary_key_columns: ["ColumnName"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a group of permissions for various actions that a user can perform in FinSpace.</p>
    # @param [Hash, Types::CreatePermissionGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the permission group.</p>
    # @option params [String] :description
    #   <p>A brief description for the permission group.</p>
    # @option params [Array<String>] :application_permissions
    #   <p>The option to indicate FinSpace application permissions that are granted to a specific group.</p>
    #            <important>
    #               <p>When assigning application permissions, be aware that the permission <code>ManageUsersAndGroups</code> allows users to grant themselves or others access to any functionality in their FinSpace environment's application. It should only be granted to trusted users.</p>
    #            </important>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups. This is a privileged permission that allows users to grant themselves or others access to any functionality in the application. It should only be granted to trusted users.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PermissionGroupName", # required
    #     description: "PermissionGroupDescription",
    #     application_permissions: ["CreateDataset" # One of: ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_group_id: "PermissionGroupId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreatePermissionGroupResponse]
    def create_permission_group(params = {}, options = {})
      request = build_request(:create_permission_group, params)
      request.send_request(options)
    end

    # <p>Creates a new user in FinSpace.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :email_address
    #   <p>The email address of the user that you want to register. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>
    # @option params [String] :type
    #   <p>The option to indicate the type of user. Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>
    #               </li>
    #            </ul>
    # @option params [String] :first_name
    #   <p>The first name of the user that you want to register.</p>
    # @option params [String] :last_name
    #   <p>The last name of the user that you want to register.</p>
    # @option params [String] :api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    # @option params [String] :api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     email_address: "Email", # required
    #     type: "SUPER_USER" # One of: ["SUPER_USER", "APP_USER"], # required
    #     first_name: "FirstName",
    #     last_name: "LastName",
    #     api_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     api_access_principal_arn: "RoleArn",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes a FinSpace Dataset.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier of the Dataset to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes a permission group. This action is irreversible.</p>
    # @param [Hash, Types::DeletePermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_group_id: "PermissionGroupId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::DeletePermissionGroupResponse]
    def delete_permission_group(params = {}, options = {})
      request = build_request(:delete_permission_group, params)
      request.send_request(options)
    end

    # <p>Denies access to the FinSpace web application and API for the specified user.</p>
    # @param [Hash, Types::DisableUserRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier for the user that you want to deactivate.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::DisableUserResponse]
    def disable_user(params = {}, options = {})
      request = build_request(:disable_user, params)
      request.send_request(options)
    end

    # <p>Removes a user from a permission group.</p>
    # @param [Hash, Types::DisassociateUserFromPermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group.</p>
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #     user_id: "UserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_user_from_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::DisassociateUserFromPermissionGroupResponse]
    def disassociate_user_from_permission_group(params = {}, options = {})
      request = build_request(:disassociate_user_from_permission_group, params)
      request.send_request(options)
    end

    # <p> Allows the specified user to access the FinSpace web application and API.</p>
    # @param [Hash, Types::EnableUserRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier for the user that you want to activate.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.enable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::EnableUserResponse]
    def enable_user(params = {}, options = {})
      request = build_request(:enable_user, params)
      request.send_request(options)
    end

    # <p>Get information about a Changeset.</p>
    # @param [Hash, Types::GetChangesetRequest] params
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>
    # @option params [String] :changeset_id
    #   <p>The unique identifier of the Changeset for which to get data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     changeset_id: "ChangesetId", # required
    #   }
    #   options = {}
    #   response = client.get_changeset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changeset_id: "ChangesetId",
    #     changeset_arn: "ChangesetArn",
    #     dataset_id: "DatasetId",
    #     change_type: "REPLACE" # One of: ["REPLACE", "APPEND", "MODIFY"],
    #     source_params: {
    #       "StringMapKey" => "StringMapValue"
    #     },
    #     format_params: {
    #       "StringMapKey" => "StringMapValue"
    #     },
    #     create_time: 1,
    #     status: "PENDING" # One of: ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"],
    #     error_info: {
    #       error_message: "ErrorMessage",
    #       error_category: "VALIDATION" # One of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #     },
    #     active_until_timestamp: 1,
    #     active_from_timestamp: 1,
    #     updates_changeset_id: "ChangesetId",
    #     updated_by_changeset_id: "ChangesetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetChangesetResponse]
    def get_changeset(params = {}, options = {})
      request = build_request(:get_changeset, params)
      request.send_request(options)
    end

    # <p>Gets information about a Dataview.</p>
    # @param [Hash, Types::GetDataViewRequest] params
    # @option params [String] :data_view_id
    #   <p>The unique identifier for the Dataview.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the Dataset used in the Dataview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_view_id: "DataViewId", # required
    #     dataset_id: "DatasetId", # required
    #   }
    #   options = {}
    #   response = client.get_data_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_update: false,
    #     partition_columns: ["StringValueLength1to255"],
    #     dataset_id: "DatasetId",
    #     as_of_timestamp: 1,
    #     error_info: {
    #       error_message: "ErrorMessage",
    #       error_category: "VALIDATION" # One of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #     },
    #     last_modified_time: 1,
    #     create_time: 1,
    #     sort_columns: ["StringValueLength1to255"],
    #     data_view_id: "DataViewId",
    #     data_view_arn: "DataViewArn",
    #     destination_type_params: {
    #       destination_type: "DataViewDestinationType", # required
    #       s3_destination_export_file_format: "PARQUET" # One of: ["PARQUET", "DELIMITED_TEXT"],
    #       s3_destination_export_file_format_options: {
    #         "StringMapKey" => "StringMapValue"
    #       }
    #     },
    #     status: "RUNNING" # One of: ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"]
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetDataViewResponse]
    def get_data_view(params = {}, options = {})
      request = build_request(:get_data_view, params)
      request.send_request(options)
    end

    # <p>Returns information about a Dataset.</p>
    # @param [Hash, Types::GetDatasetRequest] params
    # @option params [String] :dataset_id
    #   <p>The unique identifier for a Dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "StringValueLength1to255", # required
    #   }
    #   options = {}
    #   response = client.get_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId",
    #     dataset_arn: "DatasetArn",
    #     dataset_title: "DatasetTitle",
    #     kind: "TABULAR" # One of: ["TABULAR", "NON_TABULAR"],
    #     dataset_description: "DatasetDescription",
    #     create_time: 1,
    #     last_modified_time: 1,
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: "STRING" # One of: ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"],
    #             column_name: "ColumnName",
    #             column_description: "ColumnDescription"
    #           }
    #         ],
    #         primary_key_columns: ["ColumnName"]
    #       }
    #     },
    #     alias: "AliasString",
    #     status: "PENDING" # One of: ["PENDING", "FAILED", "SUCCESS", "RUNNING"]
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetDatasetResponse]
    def get_dataset(params = {}, options = {})
      request = build_request(:get_dataset, params)
      request.send_request(options)
    end

    # <p>Returns the credentials to access the external Dataview from an S3 location. To call this API:</p>
    #          <ul>
    #             <li>
    #                <p>You must retrieve the programmatic credentials.</p>
    #             </li>
    #             <li>
    #                <p>You must be a member of a FinSpace user group, where the dataset that you want to access has <code>Read Dataset Data</code> permissions.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetExternalDataViewAccessDetailsRequest] params
    # @option params [String] :data_view_id
    #   <p>The unique identifier for the Dataview that you want to access.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the Dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     data_view_id: "DataViewId", # required
    #     dataset_id: "DatasetId", # required
    #   }
    #   options = {}
    #   response = client.get_external_data_view_access_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "AccessKeyId",
    #       secret_access_key: "SecretAccessKey",
    #       session_token: "SessionToken",
    #       expiration: 1
    #     },
    #     s3_location: {
    #       bucket: "S3BucketName", # required
    #       key: "S3Key", # required
    #     }
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetExternalDataViewAccessDetailsResponse]
    def get_external_data_view_access_details(params = {}, options = {})
      request = build_request(:get_external_data_view_access_details, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific permission group.</p>
    # @param [Hash, Types::GetPermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_group: {
    #       permission_group_id: "PermissionGroupId",
    #       name: "PermissionGroupName",
    #       description: "PermissionGroupDescription",
    #       application_permissions: ["CreateDataset" # One of: ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]],
    #       create_time: 1,
    #       last_modified_time: 1,
    #       membership_status: "ADDITION_IN_PROGRESS" # One of: ["ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"]
    #     }
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetPermissionGroupResponse]
    def get_permission_group(params = {}, options = {})
      request = build_request(:get_permission_group, params)
      request.send_request(options)
    end

    # <p>Request programmatic credentials to use with FinSpace SDK. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials">Step 2. Access credentials programmatically using IAM access key id and secret access key</a>.</p>
    # @param [Hash, Types::GetProgrammaticAccessCredentialsRequest] params
    # @option params [Integer] :duration_in_minutes
    #   <p>The time duration in which the credentials remain valid. </p>
    # @option params [String] :environment_id
    #   <p>The FinSpace environment identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     duration_in_minutes: 1,
    #     environment_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.get_programmatic_access_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "StringValueLength1to2552",
    #       secret_access_key: "stringValueMaxLength1000",
    #       session_token: "stringValueMaxLength1000"
    #     },
    #     duration_in_minutes: 1
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetProgrammaticAccessCredentialsResponse]
    def get_programmatic_access_credentials(params = {}, options = {})
      request = build_request(:get_programmatic_access_credentials, params)
      request.send_request(options)
    end

    # <p>Retrieves details for a specific user.</p>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier of the user to get data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId",
    #     status: "CREATING" # One of: ["CREATING", "ENABLED", "DISABLED"],
    #     first_name: "FirstName",
    #     last_name: "LastName",
    #     email_address: "Email",
    #     type: "SUPER_USER" # One of: ["SUPER_USER", "APP_USER"],
    #     api_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     api_access_principal_arn: "RoleArn",
    #     create_time: 1,
    #     last_enabled_time: 1,
    #     last_disabled_time: 1,
    #     last_modified_time: 1,
    #     last_login_time: 1
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>A temporary Amazon S3 location, where you can copy your files from a source location to stage or use
    #       as a scratch space in FinSpace notebook.</p>
    # @param [Hash, Types::GetWorkingLocationRequest] params
    # @option params [String] :location_type
    #   <p>Specify the type of the working location.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAGEMAKER</code> – Use the Amazon S3 location as a temporary location to store data content when
    #             working with FinSpace Notebooks that run on SageMaker studio.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INGESTION</code> – Use the Amazon S3 location as a staging location to copy your
    #             data content and then use the location with the Changeset creation operation.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_type: "INGESTION" # One of: ["INGESTION", "SAGEMAKER"]
    #   }
    #   options = {}
    #   response = client.get_working_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_uri: "stringValueLength1to1024",
    #     s3_path: "stringValueLength1to1024",
    #     s3_bucket: "stringValueLength1to63"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetWorkingLocationResponse]
    def get_working_location(params = {}, options = {})
      request = build_request(:get_working_location, params)
      request.send_request(options)
    end

    # <p>Lists the FinSpace Changesets for a Dataset.</p>
    # @param [Hash, Types::ListChangesetsRequest] params
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset to which the Changeset belongs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_changesets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changesets: [
    #       {
    #         changeset_id: "ChangesetId",
    #         changeset_arn: "ChangesetArn",
    #         dataset_id: "DatasetId",
    #         change_type: "REPLACE" # One of: ["REPLACE", "APPEND", "MODIFY"],
    #         source_params: {
    #           "StringMapKey" => "StringMapValue"
    #         },
    #         format_params: {
    #           "StringMapKey" => "StringMapValue"
    #         },
    #         create_time: 1,
    #         status: "PENDING" # One of: ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"],
    #         error_info: {
    #           error_message: "ErrorMessage",
    #           error_category: "VALIDATION" # One of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #         },
    #         active_until_timestamp: 1,
    #         active_from_timestamp: 1,
    #         updates_changeset_id: "ChangesetId",
    #         updated_by_changeset_id: "ChangesetId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListChangesetsResponse]
    def list_changesets(params = {}, options = {})
      request = build_request(:list_changesets, params)
      request.send_request(options)
    end

    # <p>Lists all available Dataviews for a Dataset.</p>
    # @param [Hash, Types::ListDataViewsRequest] params
    # @option params [String] :dataset_id
    #   <p>The unique identifier of the Dataset for which to retrieve Dataviews.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_id: "DatasetId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     data_views: [
    #       {
    #         data_view_id: "DataViewId",
    #         data_view_arn: "DataViewArn",
    #         dataset_id: "DatasetId",
    #         as_of_timestamp: 1,
    #         partition_columns: ["StringValueLength1to255"],
    #         sort_columns: ["StringValueLength1to255"],
    #         status: "RUNNING" # One of: ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"],
    #         error_info: {
    #           error_message: "ErrorMessage",
    #           error_category: "VALIDATION" # One of: ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #         },
    #         destination_type_properties: {
    #           destination_type: "DataViewDestinationType", # required
    #           s3_destination_export_file_format: "PARQUET" # One of: ["PARQUET", "DELIMITED_TEXT"],
    #           s3_destination_export_file_format_options: {
    #             "StringMapKey" => "StringMapValue"
    #           }
    #         },
    #         auto_update: false,
    #         create_time: 1,
    #         last_modified_time: 1
    #       }
    #     ]
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListDataViewsResponse]
    def list_data_views(params = {}, options = {})
      request = build_request(:list_data_views, params)
      request.send_request(options)
    end

    # <p>Lists all of the active Datasets that a user has access to.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         dataset_id: "DatasetId",
    #         dataset_arn: "DatasetArn",
    #         dataset_title: "DatasetTitle",
    #         kind: "TABULAR" # One of: ["TABULAR", "NON_TABULAR"],
    #         dataset_description: "DatasetDescription",
    #         owner_info: {
    #           name: "OwnerName",
    #           phone_number: "PhoneNumber",
    #           email: "Email"
    #         },
    #         create_time: 1,
    #         last_modified_time: 1,
    #         schema_definition: {
    #           tabular_schema_config: {
    #             columns: [
    #               {
    #                 data_type: "STRING" # One of: ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"],
    #                 column_name: "ColumnName",
    #                 column_description: "ColumnDescription"
    #               }
    #             ],
    #             primary_key_columns: ["ColumnName"]
    #           }
    #         },
    #         alias: "AliasString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Lists all available permission groups in FinSpace.</p>
    # @param [Hash, Types::ListPermissionGroupsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_permission_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_groups: [
    #       {
    #         permission_group_id: "PermissionGroupId",
    #         name: "PermissionGroupName",
    #         description: "PermissionGroupDescription",
    #         application_permissions: ["CreateDataset" # One of: ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]],
    #         create_time: 1,
    #         last_modified_time: 1,
    #         membership_status: "ADDITION_IN_PROGRESS" # One of: ["ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListPermissionGroupsResponse]
    def list_permission_groups(params = {}, options = {})
      request = build_request(:list_permission_groups, params)
      request.send_request(options)
    end

    # <p>Lists all the permission groups that are associated with a specific user.</p>
    # @param [Hash, Types::ListPermissionGroupsByUserRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_permission_groups_by_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_groups: [
    #       {
    #         permission_group_id: "PermissionGroupId",
    #         name: "PermissionGroupName",
    #         membership_status: "ADDITION_IN_PROGRESS" # One of: ["ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListPermissionGroupsByUserResponse]
    def list_permission_groups_by_user(params = {}, options = {})
      request = build_request(:list_permission_groups_by_user, params)
      request.send_request(options)
    end

    # <p>Lists all available users in FinSpace.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "UserId",
    #         status: "CREATING" # One of: ["CREATING", "ENABLED", "DISABLED"],
    #         first_name: "FirstName",
    #         last_name: "LastName",
    #         email_address: "Email",
    #         type: "SUPER_USER" # One of: ["SUPER_USER", "APP_USER"],
    #         api_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         api_access_principal_arn: "RoleArn",
    #         create_time: 1,
    #         last_enabled_time: 1,
    #         last_disabled_time: 1,
    #         last_modified_time: 1,
    #         last_login_time: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Lists details of all the users in a specific permission group.</p>
    # @param [Hash, Types::ListUsersByPermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_users_by_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "UserId",
    #         status: "CREATING" # One of: ["CREATING", "ENABLED", "DISABLED"],
    #         first_name: "FirstName",
    #         last_name: "LastName",
    #         email_address: "Email",
    #         type: "SUPER_USER" # One of: ["SUPER_USER", "APP_USER"],
    #         api_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         api_access_principal_arn: "RoleArn",
    #         membership_status: "ADDITION_IN_PROGRESS" # One of: ["ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListUsersByPermissionGroupResponse]
    def list_users_by_permission_group(params = {}, options = {})
      request = build_request(:list_users_by_permission_group, params)
      request.send_request(options)
    end

    # <p>Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.</p>
    # @param [Hash, Types::ResetUserPasswordRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier of the user that a temporary password is requested for.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.reset_user_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId",
    #     temporary_password: "Password"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ResetUserPasswordResponse]
    def reset_user_password(params = {}, options = {})
      request = build_request(:reset_user_password, params)
      request.send_request(options)
    end

    # <p>Updates a FinSpace Changeset.</p>
    # @param [Hash, Types::UpdateChangesetRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>
    # @option params [String] :changeset_id
    #   <p>The unique identifier for the Changeset to update.</p>
    # @option params [Hash<String, String>] :source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams": 
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a>section.</p>
    # @option params [Hash<String, String>] :format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #           "formatParams": 
    #           {
    #           "formatType": "CSV",
    #           "withHeader": "true",
    #           "separator": ",",
    #           "compression":"None"
    #           } 
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #           {
    #           "withHeader": "true",
    #           "separator": ","
    #           }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     changeset_id: "ChangesetId", # required
    #     source_params: { # required
    #       "StringMapKey" => "StringMapValue"
    #     },
    #     format_params: { # required
    #       "StringMapKey" => "StringMapValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_changeset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changeset_id: "ChangesetId",
    #     dataset_id: "DatasetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::UpdateChangesetResponse]
    def update_changeset(params = {}, options = {})
      request = build_request(:update_changeset, params)
      request.send_request(options)
    end

    # <p>Updates a FinSpace Dataset.</p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the Dataset to update.</p>
    # @option params [String] :dataset_title
    #   <p>A display title for the Dataset.</p>
    # @option params [String] :kind
    #   <p>The format in which the Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    # @option params [String] :dataset_description
    #   <p>A description for the Dataset.</p>
    # @option params [String] :alias
    #   <p>The unique resource identifier for a Dataset.</p>
    # @option params [Types::SchemaUnion] :schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     dataset_title: "DatasetTitle", # required
    #     kind: "TABULAR" # One of: ["TABULAR", "NON_TABULAR"], # required
    #     dataset_description: "DatasetDescription",
    #     alias: "AliasString",
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: "STRING" # One of: ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"],
    #             column_name: "ColumnName",
    #             column_description: "ColumnDescription"
    #           }
    #         ],
    #         primary_key_columns: ["ColumnName"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_id: "DatasetId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::UpdateDatasetResponse]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p>Modifies the details of a permission group. You cannot modify a <code>permissionGroupID</code>.</p>
    # @param [Hash, Types::UpdatePermissionGroupRequest] params
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group to update.</p>
    # @option params [String] :name
    #   <p>The name of the permission group.</p>
    # @option params [String] :description
    #   <p>A brief description for the permission group.</p>
    # @option params [Array<String>] :application_permissions
    #   <p>The permissions that are granted to a specific group for accessing the FinSpace application.</p>
    #            <important>
    #               <p>When assigning application permissions, be aware that the permission <code>ManageUsersAndGroups</code> allows users to grant themselves or others access to any functionality in their FinSpace environment's application. It should only be granted to trusted users.</p>
    #            </important>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups. This is a privileged permission that allows users to grant themselves or others access to any functionality in the application. It should only be granted to trusted users.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     permission_group_id: "PermissionGroupId", # required
    #     name: "PermissionGroupName",
    #     description: "PermissionGroupDescription",
    #     application_permissions: ["CreateDataset" # One of: ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_permission_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_group_id: "PermissionGroupId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::UpdatePermissionGroupResponse]
    def update_permission_group(params = {}, options = {})
      request = build_request(:update_permission_group, params)
      request.send_request(options)
    end

    # <p>Modifies the details of the specified user. You cannot update the <code>userId</code> for a user.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :user_id
    #   <p>The unique identifier for the user that you want to update.</p>
    # @option params [String] :type
    #   <p>The option to indicate the type of user.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code>– A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>
    #               </li>
    #            </ul>
    # @option params [String] :first_name
    #   <p>The first name of the user.</p>
    # @option params [String] :last_name
    #   <p>The last name of the user.</p>
    # @option params [String] :api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    # @option params [String] :api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     type: "SUPER_USER" # One of: ["SUPER_USER", "APP_USER"],
    #     first_name: "FirstName",
    #     last_name: "LastName",
    #     api_access: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     api_access_principal_arn: "RoleArn",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-finspacedata'
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
