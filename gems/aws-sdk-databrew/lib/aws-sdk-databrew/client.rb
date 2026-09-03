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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:databrew)

module Aws::DataBrew
  # An API client for Aws::DataBrew.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSGlueDataBrew
    @identifier = :databrew

    add_plugin(::Aws::DataBrew::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DataBrew::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Deletes one or more versions of a recipe at a time.</p>
    #          <p>The entire request will be rejected if:</p>
    #          <ul>
    #             <li>
    #                <p>The recipe does not exist.</p>
    #             </li>
    #             <li>
    #                <p>There is an invalid version identifier in the list of versions.</p>
    #             </li>
    #             <li>
    #                <p>The version list is empty.</p>
    #             </li>
    #             <li>
    #                <p>The version list size exceeds 50.</p>
    #             </li>
    #             <li>
    #                <p>The version list contains duplicate entries.</p>
    #             </li>
    #          </ul>
    #          <p>The request will complete successfully, but with partial failures, if:</p>
    #          <ul>
    #             <li>
    #                <p>A version does not exist.</p>
    #             </li>
    #             <li>
    #                <p>A version is being used by a job.</p>
    #             </li>
    #             <li>
    #                <p>You specify <code>LATEST_WORKING</code>, but it's being used by a
    #                     project.</p>
    #             </li>
    #             <li>
    #                <p>The version fails to be deleted.</p>
    #             </li>
    #          </ul>
    #          <p>The <code>LATEST_WORKING</code> version will only be deleted if the recipe has no
    #             other versions. If you try to delete <code>LATEST_WORKING</code> while other versions
    #             exist (or if they can't be deleted), then <code>LATEST_WORKING</code> will be listed as
    #             partial failure in the response.</p>
    # @param [Hash, Types::BatchDeleteRecipeVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the recipe whose versions are to be deleted.</p>
    # @option params [Array<String>] :recipe_versions
    #   <p>An array of version identifiers, for the recipe versions to be deleted. You can
    #               specify numeric versions (<code>X.Y</code>) or <code>LATEST_WORKING</code>.
    #                   <code>LATEST_PUBLISHED</code> is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RecipeName", # required
    #     recipe_versions: ["RecipeVersion"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_recipe_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RecipeName", # required
    #     errors: [
    #       {
    #         error_code: "ErrorCode",
    #         error_message: "RecipeErrorMessage",
    #         recipe_version: "RecipeVersion"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteRecipeVersionResponse]
    def batch_delete_recipe_version(params = {}, options = {})
      request = build_request(:batch_delete_recipe_version, params)
      request.send_request(options)
    end

    # <p>Creates a new DataBrew dataset.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :name
    #   <p>The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z,
    #               0-9), hyphen (-), period (.), and space.</p>
    # @option params [String] :format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    # @option params [Types::FormatOptions] :format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    # @option params [Types::Input] :input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    # @option params [Types::PathOptions] :path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DatasetName", # required
    #     format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"],
    #     format_options: {
    #       json: {
    #         multi_line: false
    #       },
    #       excel: {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #         header_row: false
    #       },
    #       csv: {
    #         delimiter: "Delimiter",
    #         header_row: false
    #       }
    #     },
    #     input: { # required
    #       s3_input_definition: {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #         bucket_owner: "BucketOwner"
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         }
    #       },
    #       database_input_definition: {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_table_name: "DatabaseTableName",
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         query_string: "QueryString"
    #       },
    #       metadata: {
    #         source_arn: "Arn"
    #       }
    #     },
    #     path_options: {
    #       last_modified_date_condition: {
    #         expression: "Expression", # required
    #         values_map: { # required
    #           "ValueReference" => "ConditionValue"
    #         }
    #       },
    #       files_limit: {
    #         max_files: 1, # required
    #         ordered_by: "LAST_MODIFIED_DATE" # One of: ["LAST_MODIFIED_DATE"],
    #         order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"]
    #       },
    #       parameters: {
    #         "PathParameterName" => {
    #           name: "PathParameterName", # required
    #           type: "Datetime" # One of: ["Datetime", "Number", "String"], # required
    #           datetime_options: {
    #             format: "DatetimeFormat", # required
    #             timezone_offset: "TimezoneOffset",
    #             locale_code: "LocaleCode"
    #           },
    #           create_column: false,
    #           filter: {
    #             expression: "Expression", # required
    #             values_map: { # required
    #               "ValueReference" => "ConditionValue"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DatasetName", # required
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a new job to analyze a dataset and create its data profile.</p>
    # @param [Hash, Types::CreateProfileJobRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset that this job is to act upon.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side encryption with 
    #                       KMS-managed keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can use when the job processes data.</p>
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    # @option params [Types::S3Location] :output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    # @option params [Types::ProfileConfiguration] :configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations, 
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    # @option params [Array<Types::ValidationConfiguration>] :validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this job.</p>
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    # @option params [Types::JobSample] :job_sample
    #   <p>Sample configuration for profile jobs only. Determines the number of rows on which the
    #               profile job will be executed. If a JobSample value is not provided, the default value
    #               will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
    #               size parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #     name: "JobName", # required
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: { # required
    #       bucket: "Bucket", # required
    #       key: "Key",
    #       bucket_owner: "BucketOwner"
    #     },
    #     configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: ["Statistic"],
    #         overrides: [
    #           {
    #             statistic: "Statistic", # required
    #             parameters: { # required
    #               "ParameterName" => "ParameterValue"
    #             }
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: "ColumnName",
    #           name: "ColumnName"
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #           selectors: [
    #             {
    #               regex: "ColumnName",
    #               name: "ColumnName"
    #             }
    #           ],
    #           statistics: { # required
    #             included_statistics: ["Statistic"],
    #             overrides: [
    #               {
    #                 statistic: "Statistic", # required
    #                 parameters: { # required
    #                   "ParameterName" => "ParameterValue"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: ["EntityType"], # required
    #         allowed_statistics: [
    #           {
    #             statistics: ["Statistic"], # required
    #           }
    #         ]
    #       }
    #     },
    #     validation_configurations: [
    #       {
    #         ruleset_arn: "Arn", # required
    #         validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #       }
    #     ],
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     timeout: 1,
    #     job_sample: {
    #       mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #       size: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_profile_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "JobName", # required
    #   }
    # @return [Types::CreateProfileJobResponse]
    def create_profile_job(params = {}, options = {})
      request = build_request(:create_profile_job, params)
      request.send_request(options)
    end

    # <p>Creates a new DataBrew project.</p>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of an existing dataset to associate this project with.</p>
    # @option params [String] :name
    #   <p>A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    # @option params [String] :recipe_name
    #   <p>The name of an existing recipe to associate with the project.</p>
    # @option params [Types::Sample] :sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed for this request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName", # required
    #     name: "ProjectName", # required
    #     recipe_name: "RecipeName", # required
    #     sample: {
    #       size: 1,
    #       type: "FIRST_N" # One of: ["FIRST_N", "LAST_N", "RANDOM"], # required
    #     },
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ProjectName", # required
    #   }
    # @return [Types::CreateProjectResponse]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Creates a new DataBrew recipe.</p>
    # @param [Hash, Types::CreateRecipeRequest] params
    # @option params [String] :description
    #   <p>A description for the recipe.</p>
    # @option params [String] :name
    #   <p>A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    # @option params [Array<Types::RecipeStep>] :steps
    #   <p>An array containing the steps to be performed by the recipe. Each recipe step consists
    #               of one recipe action and (optionally) an array of condition expressions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this recipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #     steps: [ # required
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue"
    #           }
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RecipeName", # required
    #   }
    # @return [Types::CreateRecipeResponse]
    def create_recipe(params = {}, options = {})
      request = build_request(:create_recipe, params)
      request.send_request(options)
    end

    # <p>Creates a new job to transform input data, using steps defined in an existing Glue DataBrew recipe</p>
    # @param [Hash, Types::CreateRecipeJobRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of the dataset that this job processes.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen
    #               (-), period (.), and space.</p>
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    # @option params [Array<Types::Output>] :outputs
    #   <p>One or more artifacts that represent the output from running the job.</p>
    # @option params [Array<Types::DataCatalogOutput>] :data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    # @option params [Array<Types::DatabaseOutput>] :database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for 
    #               a DataBrew recipe job to write to. </p>
    # @option params [String] :project_name
    #   <p>Either the name of an existing project, or a combination of a recipe and a dataset to
    #               associate with the recipe.</p>
    # @option params [Types::RecipeReference] :recipe_reference
    #   <p>Represents the name and version of a DataBrew recipe.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this job.</p>
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #     name: "JobName", # required
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [
    #       {
    #         compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #         format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: "Delimiter"
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         s3_options: {
    #           location: { # required
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           }
    #         },
    #         database_options: {
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_options: { # required
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #       }
    #     ],
    #     project_name: "ProjectName",
    #     recipe_reference: {
    #       name: "RecipeName", # required
    #       recipe_version: "RecipeVersion"
    #     },
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     timeout: 1
    #   }
    #   options = {}
    #   response = client.create_recipe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "JobName", # required
    #   }
    # @return [Types::CreateRecipeJobResponse]
    def create_recipe_job(params = {}, options = {})
      request = build_request(:create_recipe_job, params)
      request.send_request(options)
    end

    # <p>Creates a new ruleset that can be used in a profile job to validate 
    #             the data quality of a dataset.</p>
    # @param [Hash, Types::CreateRulesetRequest] params
    # @option params [String] :name
    #   <p>The name of the ruleset to be created. Valid characters are alphanumeric 
    #               (A-Z, a-z, 0-9), hyphen (-), period (.), and space.</p>
    # @option params [String] :description
    #   <p>The description of the ruleset.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset) that the 
    #               ruleset is associated with.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes 
    #               one or more checks to be validated on a DataBrew dataset.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to the ruleset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RulesetName", # required
    #     description: "RulesetDescription",
    #     target_arn: "Arn", # required
    #     rules: [ # required
    #       {
    #         name: "RuleName", # required
    #         disabled: false,
    #         check_expression: "Expression", # required
    #         substitution_map: {
    #           "ValueReference" => "ConditionValue"
    #         },
    #         threshold: {
    #           value: 1.0, # required
    #           type: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"],
    #           unit: "COUNT" # One of: ["COUNT", "PERCENTAGE"]
    #         },
    #         column_selectors: [
    #           {
    #             regex: "ColumnName",
    #             name: "ColumnName"
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ruleset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RulesetName", # required
    #   }
    # @return [Types::CreateRulesetResponse]
    def create_ruleset(params = {}, options = {})
      request = build_request(:create_ruleset, params)
      request.send_request(options)
    end

    # <p>Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific
    #             date and time, or at regular intervals.</p>
    # @param [Hash, Types::CreateScheduleRequest] params
    # @option params [Array<String>] :job_names
    #   <p>The name or names of one or more jobs to be run.</p>
    # @option params [String] :cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this schedule.</p>
    # @option params [String] :name
    #   <p>A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_names: ["JobName"],
    #     cron_expression: "CronExpression", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     name: "ScheduleName", # required
    #   }
    #   options = {}
    #   response = client.create_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ScheduleName", # required
    #   }
    # @return [Types::CreateScheduleResponse]
    def create_schedule(params = {}, options = {})
      request = build_request(:create_schedule, params)
      request.send_request(options)
    end

    # <p>Deletes a dataset from DataBrew.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :name
    #   <p>The name of the dataset to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DatasetName", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DatasetName", # required
    #   }
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes the specified DataBrew job.</p>
    # @param [Hash, Types::DeleteJobRequest] params
    # @option params [String] :name
    #   <p>The name of the job to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #   }
    #   options = {}
    #   response = client.delete_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "JobName", # required
    #   }
    # @return [Types::DeleteJobResponse]
    def delete_job(params = {}, options = {})
      request = build_request(:delete_job, params)
      request.send_request(options)
    end

    # <p>Deletes an existing DataBrew project.</p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :name
    #   <p>The name of the project to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProjectName", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ProjectName", # required
    #   }
    # @return [Types::DeleteProjectResponse]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes a single version of a DataBrew recipe.</p>
    # @param [Hash, Types::DeleteRecipeVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the recipe.</p>
    # @option params [String] :recipe_version
    #   <p>The version of the recipe to be deleted. You can specify a numeric versions
    #                   (<code>X.Y</code>) or <code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is
    #               not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RecipeName", # required
    #     recipe_version: "RecipeVersion", # required
    #   }
    #   options = {}
    #   response = client.delete_recipe_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RecipeName", # required
    #     recipe_version: "RecipeVersion", # required
    #   }
    # @return [Types::DeleteRecipeVersionResponse]
    def delete_recipe_version(params = {}, options = {})
      request = build_request(:delete_recipe_version, params)
      request.send_request(options)
    end

    # <p>Deletes a ruleset.</p>
    # @param [Hash, Types::DeleteRulesetRequest] params
    # @option params [String] :name
    #   <p>The name of the ruleset to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RulesetName", # required
    #   }
    #   options = {}
    #   response = client.delete_ruleset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RulesetName", # required
    #   }
    # @return [Types::DeleteRulesetResponse]
    def delete_ruleset(params = {}, options = {})
      request = build_request(:delete_ruleset, params)
      request.send_request(options)
    end

    # <p>Deletes the specified DataBrew schedule.</p>
    # @param [Hash, Types::DeleteScheduleRequest] params
    # @option params [String] :name
    #   <p>The name of the schedule to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduleName", # required
    #   }
    #   options = {}
    #   response = client.delete_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ScheduleName", # required
    #   }
    # @return [Types::DeleteScheduleResponse]
    def delete_schedule(params = {}, options = {})
      request = build_request(:delete_schedule, params)
      request.send_request(options)
    end

    # <p>Returns the definition of a specific DataBrew dataset.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :name
    #   <p>The name of the dataset to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DatasetName", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_by: "CreatedBy",
    #     create_date: Time.now,
    #     name: "DatasetName", # required
    #     format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"],
    #     format_options: {
    #       json: {
    #         multi_line: false
    #       },
    #       excel: {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #         header_row: false
    #       },
    #       csv: {
    #         delimiter: "Delimiter",
    #         header_row: false
    #       }
    #     },
    #     input: { # required
    #       s3_input_definition: {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #         bucket_owner: "BucketOwner"
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         }
    #       },
    #       database_input_definition: {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_table_name: "DatabaseTableName",
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         query_string: "QueryString"
    #       },
    #       metadata: {
    #         source_arn: "Arn"
    #       }
    #     },
    #     last_modified_date: Time.now,
    #     last_modified_by: "LastModifiedBy",
    #     source: "S3" # One of: ["S3", "DATA-CATALOG", "DATABASE"],
    #     path_options: {
    #       last_modified_date_condition: {
    #         expression: "Expression", # required
    #         values_map: { # required
    #           "ValueReference" => "ConditionValue"
    #         }
    #       },
    #       files_limit: {
    #         max_files: 1, # required
    #         ordered_by: "LAST_MODIFIED_DATE" # One of: ["LAST_MODIFIED_DATE"],
    #         order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"]
    #       },
    #       parameters: {
    #         "PathParameterName" => {
    #           name: "PathParameterName", # required
    #           type: "Datetime" # One of: ["Datetime", "Number", "String"], # required
    #           datetime_options: {
    #             format: "DatetimeFormat", # required
    #             timezone_offset: "TimezoneOffset",
    #             locale_code: "LocaleCode"
    #           },
    #           create_column: false,
    #           filter: {
    #             expression: "Expression", # required
    #             values_map: { # required
    #               "ValueReference" => "ConditionValue"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     resource_arn: "Arn"
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Returns the definition of a specific DataBrew job.</p>
    # @param [Hash, Types::DescribeJobRequest] params
    # @option params [String] :name
    #   <p>The name of the job to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_date: Time.now,
    #     created_by: "CreatedBy",
    #     dataset_name: "DatasetName",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #     name: "JobName", # required
    #     type: "PROFILE" # One of: ["PROFILE", "RECIPE"],
    #     last_modified_by: "LastModifiedBy",
    #     last_modified_date: Time.now,
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [
    #       {
    #         compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #         format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: "Delimiter"
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         s3_options: {
    #           location: { # required
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           }
    #         },
    #         database_options: {
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_options: { # required
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #       }
    #     ],
    #     project_name: "ProjectName",
    #     profile_configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: ["Statistic"],
    #         overrides: [
    #           {
    #             statistic: "Statistic", # required
    #             parameters: { # required
    #               "ParameterName" => "ParameterValue"
    #             }
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: "ColumnName",
    #           name: "ColumnName"
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #           selectors: [
    #             {
    #               regex: "ColumnName",
    #               name: "ColumnName"
    #             }
    #           ],
    #           statistics: { # required
    #             included_statistics: ["Statistic"],
    #             overrides: [
    #               {
    #                 statistic: "Statistic", # required
    #                 parameters: { # required
    #                   "ParameterName" => "ParameterValue"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: ["EntityType"], # required
    #         allowed_statistics: [
    #           {
    #             statistics: ["Statistic"], # required
    #           }
    #         ]
    #       }
    #     },
    #     validation_configurations: [
    #       {
    #         ruleset_arn: "Arn", # required
    #         validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #       }
    #     ],
    #     recipe_reference: {
    #       name: "RecipeName", # required
    #       recipe_version: "RecipeVersion"
    #     },
    #     resource_arn: "Arn",
    #     role_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     timeout: 1,
    #     job_sample: {
    #       mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #       size: 1
    #     }
    #   }
    # @return [Types::DescribeJobResponse]
    def describe_job(params = {}, options = {})
      request = build_request(:describe_job, params)
      request.send_request(options)
    end

    # <p>Represents one run of a DataBrew job.</p>
    # @param [Hash, Types::DescribeJobRunRequest] params
    # @option params [String] :name
    #   <p>The name of the job being processed during this run.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier of the job run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #     run_id: "JobRunId", # required
    #   }
    #   options = {}
    #   response = client.describe_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attempt: 1,
    #     completed_on: Time.now,
    #     dataset_name: "DatasetName",
    #     error_message: "JobRunErrorMessage",
    #     execution_time: 1,
    #     job_name: "JobName", # required
    #     profile_configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: ["Statistic"],
    #         overrides: [
    #           {
    #             statistic: "Statistic", # required
    #             parameters: { # required
    #               "ParameterName" => "ParameterValue"
    #             }
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: "ColumnName",
    #           name: "ColumnName"
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #           selectors: [
    #             {
    #               regex: "ColumnName",
    #               name: "ColumnName"
    #             }
    #           ],
    #           statistics: { # required
    #             included_statistics: ["Statistic"],
    #             overrides: [
    #               {
    #                 statistic: "Statistic", # required
    #                 parameters: { # required
    #                   "ParameterName" => "ParameterValue"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: ["EntityType"], # required
    #         allowed_statistics: [
    #           {
    #             statistics: ["Statistic"], # required
    #           }
    #         ]
    #       }
    #     },
    #     validation_configurations: [
    #       {
    #         ruleset_arn: "Arn", # required
    #         validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #       }
    #     ],
    #     run_id: "JobRunId",
    #     state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"],
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     log_group_name: "LogGroupName",
    #     outputs: [
    #       {
    #         compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #         format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: "Delimiter"
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         s3_options: {
    #           location: { # required
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           }
    #         },
    #         database_options: {
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_options: { # required
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #       }
    #     ],
    #     recipe_reference: {
    #       name: "RecipeName", # required
    #       recipe_version: "RecipeVersion"
    #     },
    #     started_by: "StartedBy",
    #     started_on: Time.now,
    #     job_sample: {
    #       mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #       size: 1
    #     }
    #   }
    # @return [Types::DescribeJobRunResponse]
    def describe_job_run(params = {}, options = {})
      request = build_request(:describe_job_run, params)
      request.send_request(options)
    end

    # <p>Returns the definition of a specific DataBrew project.</p>
    # @param [Hash, Types::DescribeProjectRequest] params
    # @option params [String] :name
    #   <p>The name of the project to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProjectName", # required
    #   }
    #   options = {}
    #   response = client.describe_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_date: Time.now,
    #     created_by: "CreatedBy",
    #     dataset_name: "DatasetName",
    #     last_modified_date: Time.now,
    #     last_modified_by: "LastModifiedBy",
    #     name: "ProjectName", # required
    #     recipe_name: "RecipeName",
    #     resource_arn: "Arn",
    #     sample: {
    #       size: 1,
    #       type: "FIRST_N" # One of: ["FIRST_N", "LAST_N", "RANDOM"], # required
    #     },
    #     role_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     session_status: "ASSIGNED" # One of: ["ASSIGNED", "FAILED", "INITIALIZING", "PROVISIONING", "READY", "RECYCLING", "ROTATING", "TERMINATED", "TERMINATING", "UPDATING"],
    #     opened_by: "OpenedBy",
    #     open_date: Time.now
    #   }
    # @return [Types::DescribeProjectResponse]
    def describe_project(params = {}, options = {})
      request = build_request(:describe_project, params)
      request.send_request(options)
    end

    # <p>Returns the definition of a specific DataBrew recipe corresponding to a particular
    #             version.</p>
    # @param [Hash, Types::DescribeRecipeRequest] params
    # @option params [String] :name
    #   <p>The name of the recipe to be described.</p>
    # @option params [String] :recipe_version
    #   <p>The recipe version identifier. If this parameter isn't specified, then the latest
    #               published version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RecipeName", # required
    #     recipe_version: "RecipeVersion"
    #   }
    #   options = {}
    #   response = client.describe_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_by: "CreatedBy",
    #     create_date: Time.now,
    #     last_modified_by: "LastModifiedBy",
    #     last_modified_date: Time.now,
    #     project_name: "ProjectName",
    #     published_by: "PublishedBy",
    #     published_date: Time.now,
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #     steps: [
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue"
    #           }
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     resource_arn: "Arn",
    #     recipe_version: "RecipeVersion"
    #   }
    # @return [Types::DescribeRecipeResponse]
    def describe_recipe(params = {}, options = {})
      request = build_request(:describe_recipe, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about the ruleset.</p>
    # @param [Hash, Types::DescribeRulesetRequest] params
    # @option params [String] :name
    #   <p>The name of the ruleset to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RulesetName", # required
    #   }
    #   options = {}
    #   response = client.describe_ruleset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RulesetName", # required
    #     description: "RulesetDescription",
    #     target_arn: "Arn",
    #     rules: [
    #       {
    #         name: "RuleName", # required
    #         disabled: false,
    #         check_expression: "Expression", # required
    #         substitution_map: {
    #           "ValueReference" => "ConditionValue"
    #         },
    #         threshold: {
    #           value: 1.0, # required
    #           type: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"],
    #           unit: "COUNT" # One of: ["COUNT", "PERCENTAGE"]
    #         },
    #         column_selectors: [
    #           {
    #             regex: "ColumnName",
    #             name: "ColumnName"
    #           }
    #         ]
    #       }
    #     ],
    #     create_date: Time.now,
    #     created_by: "CreatedBy",
    #     last_modified_by: "LastModifiedBy",
    #     last_modified_date: Time.now,
    #     resource_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeRulesetResponse]
    def describe_ruleset(params = {}, options = {})
      request = build_request(:describe_ruleset, params)
      request.send_request(options)
    end

    # <p>Returns the definition of a specific DataBrew schedule.</p>
    # @param [Hash, Types::DescribeScheduleRequest] params
    # @option params [String] :name
    #   <p>The name of the schedule to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduleName", # required
    #   }
    #   options = {}
    #   response = client.describe_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_date: Time.now,
    #     created_by: "CreatedBy",
    #     job_names: ["JobName"],
    #     last_modified_by: "LastModifiedBy",
    #     last_modified_date: Time.now,
    #     resource_arn: "Arn",
    #     cron_expression: "CronExpression",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     name: "ScheduleName", # required
    #   }
    # @return [Types::DescribeScheduleResponse]
    def describe_schedule(params = {}, options = {})
      request = build_request(:describe_schedule, params)
      request.send_request(options)
    end

    # <p>Lists all of the DataBrew datasets.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [ # required
    #       {
    #         account_id: "AccountId",
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         name: "DatasetName", # required
    #         format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"],
    #         format_options: {
    #           json: {
    #             multi_line: false
    #           },
    #           excel: {
    #             sheet_names: ["SheetName"],
    #             sheet_indexes: [1],
    #             header_row: false
    #           },
    #           csv: {
    #             delimiter: "Delimiter",
    #             header_row: false
    #           }
    #         },
    #         input: { # required
    #           s3_input_definition: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           data_catalog_input_definition: {
    #             catalog_id: "CatalogId",
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             temp_directory: {
    #               bucket: "Bucket", # required
    #               key: "Key",
    #               bucket_owner: "BucketOwner"
    #             }
    #           },
    #           database_input_definition: {
    #             glue_connection_name: "GlueConnectionName", # required
    #             database_table_name: "DatabaseTableName",
    #             temp_directory: {
    #               bucket: "Bucket", # required
    #               key: "Key",
    #               bucket_owner: "BucketOwner"
    #             },
    #             query_string: "QueryString"
    #           },
    #           metadata: {
    #             source_arn: "Arn"
    #           }
    #         },
    #         last_modified_date: Time.now,
    #         last_modified_by: "LastModifiedBy",
    #         source: "S3" # One of: ["S3", "DATA-CATALOG", "DATABASE"],
    #         path_options: {
    #           last_modified_date_condition: {
    #             expression: "Expression", # required
    #             values_map: { # required
    #               "ValueReference" => "ConditionValue"
    #             }
    #           },
    #           files_limit: {
    #             max_files: 1, # required
    #             ordered_by: "LAST_MODIFIED_DATE" # One of: ["LAST_MODIFIED_DATE"],
    #             order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"]
    #           },
    #           parameters: {
    #             "PathParameterName" => {
    #               name: "PathParameterName", # required
    #               type: "Datetime" # One of: ["Datetime", "Number", "String"], # required
    #               datetime_options: {
    #                 format: "DatetimeFormat", # required
    #                 timezone_offset: "TimezoneOffset",
    #                 locale_code: "LocaleCode"
    #               },
    #               create_column: false,
    #               filter: {
    #                 expression: "Expression", # required
    #                 values_map: { # required
    #                   "ValueReference" => "ConditionValue"
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         resource_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Lists all of the previous runs of a particular DataBrew job.</p>
    # @param [Hash, Types::ListJobRunsRequest] params
    # @option params [String] :name
    #   <p>The name of the job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_job_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_runs: [ # required
    #       {
    #         attempt: 1,
    #         completed_on: Time.now,
    #         dataset_name: "DatasetName",
    #         error_message: "JobRunErrorMessage",
    #         execution_time: 1,
    #         job_name: "JobName",
    #         run_id: "JobRunId",
    #         state: "STARTING" # One of: ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"],
    #         log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #         log_group_name: "LogGroupName",
    #         outputs: [
    #           {
    #             compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #             format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #             partition_columns: ["ColumnName"],
    #             location: { # required
    #               bucket: "Bucket", # required
    #               key: "Key",
    #               bucket_owner: "BucketOwner"
    #             },
    #             overwrite: false,
    #             format_options: {
    #               csv: {
    #                 delimiter: "Delimiter"
    #               }
    #             },
    #             max_output_files: 1
    #           }
    #         ],
    #         data_catalog_outputs: [
    #           {
    #             catalog_id: "CatalogId",
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             s3_options: {
    #               location: { # required
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               }
    #             },
    #             database_options: {
    #               temp_directory: {
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               },
    #               table_name: "DatabaseTableName", # required
    #             },
    #             overwrite: false
    #           }
    #         ],
    #         database_outputs: [
    #           {
    #             glue_connection_name: "GlueConnectionName", # required
    #             database_options: { # required
    #               temp_directory: {
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               },
    #               table_name: "DatabaseTableName", # required
    #             },
    #             database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #           }
    #         ],
    #         recipe_reference: {
    #           name: "RecipeName", # required
    #           recipe_version: "RecipeVersion"
    #         },
    #         started_by: "StartedBy",
    #         started_on: Time.now,
    #         job_sample: {
    #           mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #           size: 1
    #         },
    #         validation_configurations: [
    #           {
    #             ruleset_arn: "Arn", # required
    #             validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobRunsResponse]
    def list_job_runs(params = {}, options = {})
      request = build_request(:list_job_runs, params)
      request.send_request(options)
    end

    # <p>Lists all of the DataBrew jobs that are defined.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :dataset_name
    #   <p>The name of a dataset. Using this parameter indicates to return only those jobs that
    #               act on the specified dataset.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination if a
    #               previous request was truncated. To get the next set of pages, pass in the NextToken
    #               value from the response object of the previous page call. </p>
    # @option params [String] :project_name
    #   <p>The name of a project. Using this parameter indicates to return only those jobs that
    #               are associated with the specified project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_name: "DatasetName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_name: "ProjectName"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         account_id: "AccountId",
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         dataset_name: "DatasetName",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #         name: "JobName", # required
    #         type: "PROFILE" # One of: ["PROFILE", "RECIPE"],
    #         last_modified_by: "LastModifiedBy",
    #         last_modified_date: Time.now,
    #         log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #         max_capacity: 1,
    #         max_retries: 1,
    #         outputs: [
    #           {
    #             compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #             format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #             partition_columns: ["ColumnName"],
    #             location: { # required
    #               bucket: "Bucket", # required
    #               key: "Key",
    #               bucket_owner: "BucketOwner"
    #             },
    #             overwrite: false,
    #             format_options: {
    #               csv: {
    #                 delimiter: "Delimiter"
    #               }
    #             },
    #             max_output_files: 1
    #           }
    #         ],
    #         data_catalog_outputs: [
    #           {
    #             catalog_id: "CatalogId",
    #             database_name: "DatabaseName", # required
    #             table_name: "TableName", # required
    #             s3_options: {
    #               location: { # required
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               }
    #             },
    #             database_options: {
    #               temp_directory: {
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               },
    #               table_name: "DatabaseTableName", # required
    #             },
    #             overwrite: false
    #           }
    #         ],
    #         database_outputs: [
    #           {
    #             glue_connection_name: "GlueConnectionName", # required
    #             database_options: { # required
    #               temp_directory: {
    #                 bucket: "Bucket", # required
    #                 key: "Key",
    #                 bucket_owner: "BucketOwner"
    #               },
    #               table_name: "DatabaseTableName", # required
    #             },
    #             database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #           }
    #         ],
    #         project_name: "ProjectName",
    #         recipe_reference: {
    #           name: "RecipeName", # required
    #           recipe_version: "RecipeVersion"
    #         },
    #         resource_arn: "Arn",
    #         role_arn: "Arn",
    #         timeout: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         job_sample: {
    #           mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #           size: 1
    #         },
    #         validation_configurations: [
    #           {
    #             ruleset_arn: "Arn", # required
    #             validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobsResponse]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all of the DataBrew projects that are defined.</p>
    # @param [Hash, Types::ListProjectsRequest] params
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [ # required
    #       {
    #         account_id: "AccountId",
    #         create_date: Time.now,
    #         created_by: "CreatedBy",
    #         dataset_name: "DatasetName",
    #         last_modified_date: Time.now,
    #         last_modified_by: "LastModifiedBy",
    #         name: "ProjectName", # required
    #         recipe_name: "RecipeName", # required
    #         resource_arn: "Arn",
    #         sample: {
    #           size: 1,
    #           type: "FIRST_N" # One of: ["FIRST_N", "LAST_N", "RANDOM"], # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         role_arn: "Arn",
    #         opened_by: "OpenedBy",
    #         open_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProjectsResponse]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Lists the versions of a particular DataBrew recipe, except for
    #                 <code>LATEST_WORKING</code>.</p>
    # @param [Hash, Types::ListRecipeVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @option params [String] :name
    #   <p>The name of the recipe for which to return version information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "RecipeName", # required
    #   }
    #   options = {}
    #   response = client.list_recipe_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     recipes: [ # required
    #       {
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         last_modified_by: "LastModifiedBy",
    #         last_modified_date: Time.now,
    #         project_name: "ProjectName",
    #         published_by: "PublishedBy",
    #         published_date: Time.now,
    #         description: "RecipeDescription",
    #         name: "RecipeName", # required
    #         resource_arn: "Arn",
    #         steps: [
    #           {
    #             action: { # required
    #               operation: "Operation", # required
    #               parameters: {
    #                 "ParameterName" => "ParameterValue"
    #               }
    #             },
    #             condition_expressions: [
    #               {
    #                 condition: "Condition", # required
    #                 value: "ConditionValue",
    #                 target_column: "TargetColumn", # required
    #               }
    #             ]
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         recipe_version: "RecipeVersion"
    #       }
    #     ]
    #   }
    # @return [Types::ListRecipeVersionsResponse]
    def list_recipe_versions(params = {}, options = {})
      request = build_request(:list_recipe_versions, params)
      request.send_request(options)
    end

    # <p>Lists all of the DataBrew recipes that are defined.</p>
    # @param [Hash, Types::ListRecipesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @option params [String] :recipe_version
    #   <p>Return only those recipes with a version identifier of <code>LATEST_WORKING</code> or
    #                   <code>LATEST_PUBLISHED</code>. If <code>RecipeVersion</code> is omitted,
    #                   <code>ListRecipes</code> returns all of the <code>LATEST_PUBLISHED</code> recipe
    #               versions.</p>
    #            <p>Valid values: <code>LATEST_WORKING</code> | <code>LATEST_PUBLISHED</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     recipe_version: "RecipeVersion"
    #   }
    #   options = {}
    #   response = client.list_recipes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recipes: [ # required
    #       {
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         last_modified_by: "LastModifiedBy",
    #         last_modified_date: Time.now,
    #         project_name: "ProjectName",
    #         published_by: "PublishedBy",
    #         published_date: Time.now,
    #         description: "RecipeDescription",
    #         name: "RecipeName", # required
    #         resource_arn: "Arn",
    #         steps: [
    #           {
    #             action: { # required
    #               operation: "Operation", # required
    #               parameters: {
    #                 "ParameterName" => "ParameterValue"
    #               }
    #             },
    #             condition_expressions: [
    #               {
    #                 condition: "Condition", # required
    #                 value: "ConditionValue",
    #                 target_column: "TargetColumn", # required
    #               }
    #             ]
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         recipe_version: "RecipeVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecipesResponse]
    def list_recipes(params = {}, options = {})
      request = build_request(:list_recipes, params)
      request.send_request(options)
    end

    # <p>List all rulesets available in the current account or rulesets associated 
    #             with a specific resource (dataset).</p>
    # @param [Hash, Types::ListRulesetsRequest] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter 
    #               indicates to return only those rulesets that are associated with the specified resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @option params [String] :next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination 
    #               if a previous request was truncated. To get the next set of pages, pass in 
    #               the NextToken value from the response object of the previous page call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "Arn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_rulesets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rulesets: [ # required
    #       {
    #         account_id: "AccountId",
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         description: "RulesetDescription",
    #         last_modified_by: "LastModifiedBy",
    #         last_modified_date: Time.now,
    #         name: "RulesetName", # required
    #         resource_arn: "Arn",
    #         rule_count: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         target_arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRulesetsResponse]
    def list_rulesets(params = {}, options = {})
      request = build_request(:list_rulesets, params)
      request.send_request(options)
    end

    # <p>Lists the DataBrew schedules that are defined.</p>
    # @param [Hash, Types::ListSchedulesRequest] params
    # @option params [String] :job_name
    #   <p>The name of the job that these schedules apply to.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_schedules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schedules: [ # required
    #       {
    #         account_id: "AccountId",
    #         created_by: "CreatedBy",
    #         create_date: Time.now,
    #         job_names: ["JobName"],
    #         last_modified_by: "LastModifiedBy",
    #         last_modified_date: Time.now,
    #         resource_arn: "Arn",
    #         cron_expression: "CronExpression",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         name: "ScheduleName", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSchedulesResponse]
    def list_schedules(params = {}, options = {})
      request = build_request(:list_schedules, params)
      request.send_request(options)
    end

    # <p>Lists all the tags for a DataBrew resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource.
    #           </p>
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

    # <p>Publishes a new version of a DataBrew recipe.</p>
    # @param [Hash, Types::PublishRecipeRequest] params
    # @option params [String] :description
    #   <p>A description of the recipe to be published, for this version of the recipe.</p>
    # @option params [String] :name
    #   <p>The name of the recipe to be published.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #   }
    #   options = {}
    #   response = client.publish_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RecipeName", # required
    #   }
    # @return [Types::PublishRecipeResponse]
    def publish_recipe(params = {}, options = {})
      request = build_request(:publish_recipe, params)
      request.send_request(options)
    end

    # <p>Performs a recipe step within an interactive DataBrew session that's currently
    #             open.</p>
    # @param [Hash, Types::SendProjectSessionActionRequest] params
    # @option params [Boolean] :preview
    #   <p>If true, the result of the recipe step will be returned, but not applied.</p>
    # @option params [String] :name
    #   <p>The name of the project to apply the action to.</p>
    # @option params [Types::RecipeStep] :recipe_step
    #   <p>Represents a single step from a DataBrew recipe to be performed.</p>
    # @option params [Integer] :step_index
    #   <p>The index from which to preview a step. This index is used to preview the result of
    #               steps that have already been applied, so that the resulting view frame is from earlier
    #               in the view frame stack.</p>
    # @option params [String] :client_session_id
    #   <p>A unique identifier for an interactive session that's currently open and ready for
    #               work. The action will be performed on this session.</p>
    # @option params [Types::ViewFrame] :view_frame
    #   <p>Represents the data being transformed during an action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     preview: false,
    #     name: "ProjectName", # required
    #     recipe_step: {
    #       action: { # required
    #         operation: "Operation", # required
    #         parameters: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       condition_expressions: [
    #         {
    #           condition: "Condition", # required
    #           value: "ConditionValue",
    #           target_column: "TargetColumn", # required
    #         }
    #       ]
    #     },
    #     step_index: 1,
    #     client_session_id: "ClientSessionId",
    #     view_frame: {
    #       start_column_index: 1, # required
    #       column_range: 1,
    #       hidden_columns: ["ColumnName"],
    #       start_row_index: 1,
    #       row_range: 1,
    #       analytics: "ENABLE" # One of: ["ENABLE", "DISABLE"]
    #     }
    #   }
    #   options = {}
    #   response = client.send_project_session_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "Result",
    #     name: "ProjectName", # required
    #     action_id: 1
    #   }
    # @return [Types::SendProjectSessionActionResponse]
    def send_project_session_action(params = {}, options = {})
      request = build_request(:send_project_session_action, params)
      request.send_request(options)
    end

    # <p>Runs a DataBrew job.</p>
    # @param [Hash, Types::StartJobRunRequest] params
    # @option params [String] :name
    #   <p>The name of the job to be run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #   }
    #   options = {}
    #   response = client.start_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run_id: "JobRunId", # required
    #   }
    # @return [Types::StartJobRunResponse]
    def start_job_run(params = {}, options = {})
      request = build_request(:start_job_run, params)
      request.send_request(options)
    end

    # <p>Creates an interactive session, enabling you to manipulate data in a DataBrew
    #             project.</p>
    # @param [Hash, Types::StartProjectSessionRequest] params
    # @option params [String] :name
    #   <p>The name of the project to act upon.</p>
    # @option params [Boolean] :assume_control
    #   <p>A value that, if true, enables you to take control of a session, even if a different
    #               client is currently accessing the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProjectName", # required
    #     assume_control: false
    #   }
    #   options = {}
    #   response = client.start_project_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ProjectName", # required
    #     client_session_id: "ClientSessionId"
    #   }
    # @return [Types::StartProjectSessionResponse]
    def start_project_session(params = {}, options = {})
      request = build_request(:start_project_session, params)
      request.send_request(options)
    end

    # <p>Stops a particular run of a job.</p>
    # @param [Hash, Types::StopJobRunRequest] params
    # @option params [String] :name
    #   <p>The name of the job to be stopped.</p>
    # @option params [String] :run_id
    #   <p>The ID of the job run to be stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "JobName", # required
    #     run_id: "JobRunId", # required
    #   }
    #   options = {}
    #   response = client.stop_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run_id: "JobRunId", # required
    #   }
    # @return [Types::StopJobRunResponse]
    def stop_job_run(params = {}, options = {})
      request = build_request(:stop_job_run, params)
      request.send_request(options)
    end

    # <p>Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or
    #             schedule.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The DataBrew resource to which tags should be added. The value for this parameter is
    #               an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or
    #               a recipe.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to be assigned to the resource.</p>
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

    # <p>Removes metadata tags from a DataBrew resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>A DataBrew resource from which you want to remove a tag or tags. The value for this
    #               parameter is an Amazon Resource Name (ARN). </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
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

    # <p>Modifies the definition of an existing DataBrew dataset.</p>
    # @param [Hash, Types::UpdateDatasetRequest] params
    # @option params [String] :name
    #   <p>The name of the dataset to be updated.</p>
    # @option params [String] :format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    # @option params [Types::FormatOptions] :format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    # @option params [Types::Input] :input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    # @option params [Types::PathOptions] :path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DatasetName", # required
    #     format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"],
    #     format_options: {
    #       json: {
    #         multi_line: false
    #       },
    #       excel: {
    #         sheet_names: ["SheetName"],
    #         sheet_indexes: [1],
    #         header_row: false
    #       },
    #       csv: {
    #         delimiter: "Delimiter",
    #         header_row: false
    #       }
    #     },
    #     input: { # required
    #       s3_input_definition: {
    #         bucket: "Bucket", # required
    #         key: "Key",
    #         bucket_owner: "BucketOwner"
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         }
    #       },
    #       database_input_definition: {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_table_name: "DatabaseTableName",
    #         temp_directory: {
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         query_string: "QueryString"
    #       },
    #       metadata: {
    #         source_arn: "Arn"
    #       }
    #     },
    #     path_options: {
    #       last_modified_date_condition: {
    #         expression: "Expression", # required
    #         values_map: { # required
    #           "ValueReference" => "ConditionValue"
    #         }
    #       },
    #       files_limit: {
    #         max_files: 1, # required
    #         ordered_by: "LAST_MODIFIED_DATE" # One of: ["LAST_MODIFIED_DATE"],
    #         order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"]
    #       },
    #       parameters: {
    #         "PathParameterName" => {
    #           name: "PathParameterName", # required
    #           type: "Datetime" # One of: ["Datetime", "Number", "String"], # required
    #           datetime_options: {
    #             format: "DatetimeFormat", # required
    #             timezone_offset: "TimezoneOffset",
    #             locale_code: "LocaleCode"
    #           },
    #           create_column: false,
    #           filter: {
    #             expression: "Expression", # required
    #             values_map: { # required
    #               "ValueReference" => "ConditionValue"
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DatasetName", # required
    #   }
    # @return [Types::UpdateDatasetResponse]
    def update_dataset(params = {}, options = {})
      request = build_request(:update_dataset, params)
      request.send_request(options)
    end

    # <p>Modifies the definition of an existing profile job.</p>
    # @param [Hash, Types::UpdateProfileJobRequest] params
    # @option params [Types::ProfileConfiguration] :configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations, 
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
    #                       S3.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the job to be updated.</p>
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of compute nodes that DataBrew can use when the job processes
    #               data.</p>
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    # @option params [Types::S3Location] :output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    # @option params [Array<Types::ValidationConfiguration>] :validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    # @option params [Types::JobSample] :job_sample
    #   <p>Sample configuration for Profile Jobs only. Determines the number of rows on which the
    #               Profile job will be executed. If a JobSample value is not provided for profile jobs, the
    #               default value will be used. The default value is CUSTOM_ROWS for the mode parameter and
    #               20000 for the size parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: ["Statistic"],
    #         overrides: [
    #           {
    #             statistic: "Statistic", # required
    #             parameters: { # required
    #               "ParameterName" => "ParameterValue"
    #             }
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: "ColumnName",
    #           name: "ColumnName"
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #           selectors: [
    #             {
    #               regex: "ColumnName",
    #               name: "ColumnName"
    #             }
    #           ],
    #           statistics: { # required
    #             included_statistics: ["Statistic"],
    #             overrides: [
    #               {
    #                 statistic: "Statistic", # required
    #                 parameters: { # required
    #                   "ParameterName" => "ParameterValue"
    #                 }
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: ["EntityType"], # required
    #         allowed_statistics: [
    #           {
    #             statistics: ["Statistic"], # required
    #           }
    #         ]
    #       }
    #     },
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #     name: "JobName", # required
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: { # required
    #       bucket: "Bucket", # required
    #       key: "Key",
    #       bucket_owner: "BucketOwner"
    #     },
    #     validation_configurations: [
    #       {
    #         ruleset_arn: "Arn", # required
    #         validation_mode: "CHECK_ALL" # One of: ["CHECK_ALL"]
    #       }
    #     ],
    #     role_arn: "Arn", # required
    #     timeout: 1,
    #     job_sample: {
    #       mode: "FULL_DATASET" # One of: ["FULL_DATASET", "CUSTOM_ROWS"],
    #       size: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_profile_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "JobName", # required
    #   }
    # @return [Types::UpdateProfileJobResponse]
    def update_profile_job(params = {}, options = {})
      request = build_request(:update_profile_job, params)
      request.send_request(options)
    end

    # <p>Modifies the definition of an existing DataBrew project.</p>
    # @param [Hash, Types::UpdateProjectRequest] params
    # @option params [Types::Sample] :sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.</p>
    # @option params [String] :name
    #   <p>The name of the project to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sample: {
    #       size: 1,
    #       type: "FIRST_N" # One of: ["FIRST_N", "LAST_N", "RANDOM"], # required
    #     },
    #     role_arn: "Arn", # required
    #     name: "ProjectName", # required
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified_date: Time.now,
    #     name: "ProjectName", # required
    #   }
    # @return [Types::UpdateProjectResponse]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Modifies the definition of the <code>LATEST_WORKING</code> version of a DataBrew
    #             recipe.</p>
    # @param [Hash, Types::UpdateRecipeRequest] params
    # @option params [String] :description
    #   <p>A description of the recipe.</p>
    # @option params [String] :name
    #   <p>The name of the recipe to be updated.</p>
    # @option params [Array<Types::RecipeStep>] :steps
    #   <p>One or more steps to be performed by the recipe. Each step consists of an action, and
    #               the conditions under which the action should succeed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "RecipeDescription",
    #     name: "RecipeName", # required
    #     steps: [
    #       {
    #         action: { # required
    #           operation: "Operation", # required
    #           parameters: {
    #             "ParameterName" => "ParameterValue"
    #           }
    #         },
    #         condition_expressions: [
    #           {
    #             condition: "Condition", # required
    #             value: "ConditionValue",
    #             target_column: "TargetColumn", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_recipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RecipeName", # required
    #   }
    # @return [Types::UpdateRecipeResponse]
    def update_recipe(params = {}, options = {})
      request = build_request(:update_recipe, params)
      request.send_request(options)
    end

    # <p>Modifies the definition of an existing DataBrew recipe job.</p>
    # @param [Hash, Types::UpdateRecipeJobRequest] params
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the job to update.</p>
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    # @option params [Array<Types::Output>] :outputs
    #   <p>One or more artifacts that represent the output from running the job. </p>
    # @option params [Array<Types::DataCatalogOutput>] :data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    # @option params [Array<Types::DatabaseOutput>] :database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for a 
    #               DataBrew recipe job to write into.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_key_arn: "EncryptionKeyArn",
    #     encryption_mode: "SSE-KMS" # One of: ["SSE-KMS", "SSE-S3"],
    #     name: "JobName", # required
    #     log_subscription: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [
    #       {
    #         compression_format: "GZIP" # One of: ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"],
    #         format: "CSV" # One of: ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"],
    #         partition_columns: ["ColumnName"],
    #         location: { # required
    #           bucket: "Bucket", # required
    #           key: "Key",
    #           bucket_owner: "BucketOwner"
    #         },
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: "Delimiter"
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: "CatalogId",
    #         database_name: "DatabaseName", # required
    #         table_name: "TableName", # required
    #         s3_options: {
    #           location: { # required
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           }
    #         },
    #         database_options: {
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: "GlueConnectionName", # required
    #         database_options: { # required
    #           temp_directory: {
    #             bucket: "Bucket", # required
    #             key: "Key",
    #             bucket_owner: "BucketOwner"
    #           },
    #           table_name: "DatabaseTableName", # required
    #         },
    #         database_output_mode: "NEW_TABLE" # One of: ["NEW_TABLE"]
    #       }
    #     ],
    #     role_arn: "Arn", # required
    #     timeout: 1
    #   }
    #   options = {}
    #   response = client.update_recipe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "JobName", # required
    #   }
    # @return [Types::UpdateRecipeJobResponse]
    def update_recipe_job(params = {}, options = {})
      request = build_request(:update_recipe_job, params)
      request.send_request(options)
    end

    # <p>Updates specified ruleset.</p>
    # @param [Hash, Types::UpdateRulesetRequest] params
    # @option params [String] :name
    #   <p>The name of the ruleset to be updated.</p>
    # @option params [String] :description
    #   <p>The description of the ruleset.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes one or more 
    #               checks to be validated on a DataBrew dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RulesetName", # required
    #     description: "RulesetDescription",
    #     rules: [ # required
    #       {
    #         name: "RuleName", # required
    #         disabled: false,
    #         check_expression: "Expression", # required
    #         substitution_map: {
    #           "ValueReference" => "ConditionValue"
    #         },
    #         threshold: {
    #           value: 1.0, # required
    #           type: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"],
    #           unit: "COUNT" # One of: ["COUNT", "PERCENTAGE"]
    #         },
    #         column_selectors: [
    #           {
    #             regex: "ColumnName",
    #             name: "ColumnName"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_ruleset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RulesetName", # required
    #   }
    # @return [Types::UpdateRulesetResponse]
    def update_ruleset(params = {}, options = {})
      request = build_request(:update_ruleset, params)
      request.send_request(options)
    end

    # <p>Modifies the definition of an existing DataBrew schedule.</p>
    # @param [Hash, Types::UpdateScheduleRequest] params
    # @option params [Array<String>] :job_names
    #   <p>The name or names of one or more jobs to be run for this schedule.</p>
    # @option params [String] :cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    # @option params [String] :name
    #   <p>The name of the schedule to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_names: ["JobName"],
    #     cron_expression: "CronExpression", # required
    #     name: "ScheduleName", # required
    #   }
    #   options = {}
    #   response = client.update_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ScheduleName", # required
    #   }
    # @return [Types::UpdateScheduleResponse]
    def update_schedule(params = {}, options = {})
      request = build_request(:update_schedule, params)
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
      context[:gem_name] = 'aws-sdk-databrew'
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
