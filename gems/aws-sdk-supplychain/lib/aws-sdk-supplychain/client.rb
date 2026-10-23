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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:supplychain)

module Aws::SupplyChain
  # An API client for Aws::SupplyChain.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GalaxyPublicAPIGateway
    @identifier = :supplychain

    add_plugin(::Aws::SupplyChain::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SupplyChain::EndpointProvider)
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

    # <p>CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of Materials (BOM) entity. For information on the product_bom entity, see the AWS Supply Chain User Guide.</p>
    #          <p>The CSV file must be located in an Amazon S3 location accessible to AWS Supply Chain. It is recommended to use the same Amazon S3 bucket created during your AWS Supply Chain instance creation.</p>
    # @param [Hash, Types::CreateBillOfMaterialsImportJobRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :s3uri
    #   <p>The S3 URI of the CSV file to be imported. The bucket must grant permissions for AWS Supply Chain to read the file.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token ensures the API request is only completed no more than once. This way, retrying the request will not trigger the operation multiple times. A client token is a unique, case-sensitive string of 33 to 128 ASCII characters. To make an idempotent API request, specify a client token in the request. You should not reuse the same client token for other requests. If you retry a successful request with the same client token, the request will succeed with no further actions being taken, and you will receive the same API response as the original successful request.</p>
    # @example Invoke CreateBillOfMaterialsImportJob
    #   # Example operation for create_bill_of_materials_import_job
    #   params = {
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243",
    #     s3uri: "s3://mybucketname/pathelemene/file.csv",
    #     client_token: "550e8400-e29b-41d4-a716-446655440000"
    #   }
    #   options = {}
    #   response = client.create_bill_of_materials_import_job(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     s3uri: "ConfigurationS3Uri", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_bill_of_materials_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "UUID", # required
    #   }
    # @return [Types::CreateBillOfMaterialsImportJobResponse]
    def create_bill_of_materials_import_job(params = {}, options = {})
      request = build_request(:create_bill_of_materials_import_job, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically create a data pipeline to ingest data from source systems such as Amazon S3 buckets, to a predefined Amazon Web Services Supply Chain dataset (product, inbound_order) or a temporary dataset along with the data transformation query provided with the API.</p>
    # @param [Hash, Types::CreateDataIntegrationFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>Name of the DataIntegrationFlow.</p>
    # @option params [Array<Types::DataIntegrationFlowSource>] :sources
    #   <p>The source configurations for DataIntegrationFlow.</p>
    # @option params [Types::DataIntegrationFlowTransformation] :transformation
    #   <p>The transformation configurations for DataIntegrationFlow.</p>
    # @option params [Types::DataIntegrationFlowTarget] :target
    #   <p>The target configurations for DataIntegrationFlow.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the DataIntegrationFlow to be created</p>
    # @example Successful CreateDataIntegrationFlow for s3 to dataset flow
    #   # Example operation for create_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow",
    #     sources: [
    #       {
    #         source_type: S3,
    #         source_name: "testSourceName",
    #         s3_source: {
    #           bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f",
    #           prefix: "example-prefix"
    #         }
    #       }
    #     ],
    #     transformation: {
    #       transformation_type: SQL,
    #       sql_transformation: {
    #         query: "SELECT * FROM testSourceName"
    #       }
    #     },
    #     target: {
    #       target_type: DATASET,
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset"
    #       }
    #     },
    #     tags: {
    #       "tagKey1" => "tagValue1"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow"
    #   }
    # @example Successful CreateDataIntegrationFlow for dataset to dataset flow
    #   # Example operation for create_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "trading-partner",
    #     sources: [
    #       {
    #         source_type: DATASET,
    #         source_name: "testSourceName1",
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1"
    #         }
    #       },
    #       {
    #         source_type: DATASET,
    #         source_name: "testSourceName2",
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2"
    #         }
    #       }
    #     ],
    #     transformation: {
    #       transformation_type: SQL,
    #       sql_transformation: {
    #         query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id"
    #       }
    #     },
    #     target: {
    #       target_type: DATASET,
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner",
    #         options: {
    #           load_type: REPLACE,
    #           dedupe_records: true,
    #           dedupe_strategy: {
    #             type: FIELD_PRIORITY,
    #             field_priority: {
    #               fields: [
    #                 {
    #                   name: "eff_start_date",
    #                   sort_order: DESC
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "tagKey1" => "tagValue1"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "trading-partner"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #     sources: [ # required
    #       {
    #         source_type: "S3" # One of: ["S3", "DATASET"], # required
    #         source_name: "DataIntegrationFlowSourceName", # required
    #         s3_source: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #           }
    #         },
    #         dataset_source: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #             dedupe_records: false,
    #             dedupe_strategy: {
    #               type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #               field_priority: {
    #                 fields: [ # required
    #                   {
    #                     name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                     sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     transformation: { # required
    #       transformation_type: "SQL" # One of: ["SQL", "NONE"], # required
    #       sql_transformation: {
    #         query: "DataIntegrationFlowSQLQuery", # required
    #       }
    #     },
    #     target: { # required
    #       target_type: "S3" # One of: ["S3", "DATASET"], # required
    #       s3_target: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "DataIntegrationFlowS3Prefix", # required
    #         options: {
    #           file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #         }
    #       },
    #       dataset_target: {
    #         dataset_identifier: "DatasetIdentifier", # required
    #         options: {
    #           load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #           dedupe_records: false,
    #           dedupe_strategy: {
    #             type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #             field_priority: {
    #               fields: [ # required
    #                 {
    #                   name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                   sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                 }
    #               ]
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
    #   response = client.create_data_integration_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   }
    # @return [Types::CreateDataIntegrationFlowResponse]
    def create_data_integration_flow(params = {}, options = {})
      request = build_request(:create_data_integration_flow, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically create an Amazon Web Services Supply Chain data lake dataset. Developers can create the datasets using their pre-defined or custom schema for a given instance ID, namespace, and dataset name.</p>
    # @param [Hash, Types::CreateDataLakeDatasetRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the dataset. For <b>asc</b> name space, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    # @option params [Types::DataLakeDatasetSchema] :schema
    #   <p>The custom schema of the data lake dataset and required for dataset in <b>default</b> and custom namespaces.</p>
    # @option params [String] :description
    #   <p>The description of the dataset.</p>
    # @option params [Types::DataLakeDatasetPartitionSpec] :partition_spec
    #   <p>The partition specification of the dataset. Partitioning can effectively improve the dataset query performance by reducing the amount of data scanned during query execution. But partitioning or not will affect how data get ingested by data ingestion methods, such as SendDataIntegrationEvent's dataset UPSERT will upsert records within partition (instead of within whole dataset). For more details, refer to those data ingestion documentations.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the dataset.</p>
    # @example Create an AWS Supply Chain inbound order dataset
    #   # Example operation for create_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc",
    #     name: "inbound_order",
    #     description: "This is an AWS Supply Chain inbound order dataset",
    #     tags: {
    #       "tagKey1" => "tagValue1",
    #       "tagKey2" => "tagValue2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "asc",
    #       name: "inbound_order",
    #       description: "This is an AWS Supply Chain inbound order dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727116807.751),
    #       schema: {
    #         name: "InboundOrder",
    #         fields: [
    #           {
    #             name: "id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "tpartner_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "connection_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "order_type",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_status",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "inbound_order_url",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_creation_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "company_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "to_site_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "vendor_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_1",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "submitted_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_start_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_end_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "shipping_instr_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "payment_terms_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement_ver",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_number",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source_update_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "source_event_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "db_creation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "db_updation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Create a custom dataset
    #   # Example operation for create_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     name: "my_dataset",
    #     description: "This is a custom dataset",
    #     schema: {
    #       name: "MyDataset",
    #       fields: [
    #         {
    #           name: "id",
    #           type: INT,
    #           is_required: true
    #         },
    #         {
    #           name: "description",
    #           type: STRING,
    #           is_required: true
    #         },
    #         {
    #           name: "price",
    #           type: DOUBLE,
    #           is_required: false
    #         },
    #         {
    #           name: "creation_time",
    #           type: TIMESTAMP,
    #           is_required: false
    #         },
    #         {
    #           name: "quantity",
    #           type: LONG,
    #           is_required: false
    #         }
    #       ],
    #       primary_keys: [
    #         {
    #           name: "id"
    #         }
    #       ]
    #     },
    #     partition_spec: {
    #       fields: [
    #         {
    #           name: "creation_time",
    #           transform: {
    #             type: DAY
    #           }
    #         },
    #         {
    #           name: "description",
    #           transform: {
    #             type: IDENTITY
    #           }
    #         }
    #       ]
    #     },
    #     tags: {
    #       "tagKey1" => "tagValue1",
    #       "tagKey2" => "tagValue2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "default",
    #       name: "my_dataset",
    #       description: "This is a custom dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727116807.751),
    #       schema: {
    #         name: "MyDataset",
    #         fields: [
    #           {
    #             name: "id",
    #             type: INT,
    #             is_required: true
    #           },
    #           {
    #             name: "description",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "price",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "creation_time",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "quantity",
    #             type: LONG,
    #             is_required: false
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "id"
    #           }
    #         ]
    #       },
    #       partition_spec: {
    #         fields: [
    #           {
    #             name: "creation_time",
    #             transform: {
    #               type: DAY
    #             }
    #           },
    #           {
    #             name: "description",
    #             transform: {
    #               type: IDENTITY
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     name: "DataLakeDatasetName", # required
    #     schema: {
    #       name: "DataLakeDatasetSchemaName", # required
    #       fields: [ # required
    #         {
    #           name: "DataLakeDatasetSchemaFieldName", # required
    #           type: "INT" # One of: ["INT", "DOUBLE", "STRING", "TIMESTAMP", "LONG"], # required
    #           is_required: false, # required
    #         }
    #       ],
    #       primary_keys: [
    #         {
    #           name: "DataLakeDatasetSchemaFieldName", # required
    #         }
    #       ]
    #     },
    #     description: "DataLakeDatasetDescription",
    #     partition_spec: {
    #       fields: [ # required
    #         {
    #           name: "DataLakeDatasetSchemaFieldName", # required
    #           transform: { # required
    #             type: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "IDENTITY"], # required
    #           }
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_lake_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: { # required
    #       instance_id: "UUID", # required
    #       namespace: "DataLakeNamespaceName", # required
    #       name: "DataLakeDatasetName", # required
    #       arn: "AscResourceArn", # required
    #       schema: { # required
    #         name: "DataLakeDatasetSchemaName", # required
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             type: "INT" # One of: ["INT", "DOUBLE", "STRING", "TIMESTAMP", "LONG"], # required
    #             is_required: false, # required
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #           }
    #         ]
    #       },
    #       description: "DataLakeDatasetDescription",
    #       partition_spec: {
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             transform: { # required
    #               type: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "IDENTITY"], # required
    #             }
    #           }
    #         ]
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateDataLakeDatasetResponse]
    def create_data_lake_dataset(params = {}, options = {})
      request = build_request(:create_data_lake_dataset, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically create an Amazon Web Services Supply Chain data lake namespace. Developers can create the namespaces for a given instance ID.</p>
    # @param [Hash, Types::CreateDataLakeNamespaceRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the namespace. Noted you cannot create namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>
    #            </p>
    # @option params [String] :description
    #   <p>The description of the namespace.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the namespace.</p>
    # @example Create a data lake namespace
    #   # Example operation for create_data_lake_namespace
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "my_namespace",
    #     description: "This is my AWS Supply Chain namespace",
    #     tags: {
    #       "tagKey1" => "tagValue1",
    #       "tagKey2" => "tagValue2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_lake_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/my_namespace",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       name: "my_namespace",
    #       description: "This is my AWS Supply Chain namespace",
    #       created_time: Time.parse(1736892560.751),
    #       last_modified_time: Time.parse(1736892560.751)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataLakeNamespaceName", # required
    #     description: "DataLakeNamespaceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_data_lake_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       instance_id: "UUID", # required
    #       name: "DataLakeNamespaceName", # required
    #       arn: "AscResourceArn", # required
    #       description: "DataLakeNamespaceDescription",
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateDataLakeNamespaceResponse]
    def create_data_lake_namespace(params = {}, options = {})
      request = build_request(:create_data_lake_namespace, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically create an Amazon Web Services Supply Chain instance by applying KMS keys and relevant information associated with the API without using the Amazon Web Services console.</p>
    #          <p>This is an asynchronous operation. Upon receiving a CreateInstance request, Amazon Web Services Supply Chain immediately returns the instance resource, instance ID, and the initializing state while simultaneously creating all required Amazon Web Services resources for an instance creation. You can use GetInstance to check the status of the instance. If the instance results in an unhealthy state, you need to check the error message, delete the current instance, and recreate a new one based on the mitigation from the error message.</p>
    # @param [Hash, Types::CreateInstanceRequest] params
    # @option params [String] :instance_name
    #   <p>The AWS Supply Chain instance name.</p>
    # @option params [String] :instance_description
    #   <p>The AWS Supply Chain instance description.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon Web Services owned KMS key. If you don't provide anything here, AWS Supply Chain uses the Amazon Web Services owned KMS key.</p>
    # @option params [String] :web_app_dns_domain
    #   <p>The DNS subdomain of the web app. This would be "example" in the URL "example.scn.global.on.aws". You can set this to a custom value, as long as the domain isn't already being used by someone else. The name may only include alphanumeric characters and hyphens.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The Amazon Web Services tags of an instance to be created.</p>
    # @option params [String] :client_token
    #   <p>The client token for idempotency.</p>
    # @example Successful CreateInstance request with all input data
    #   # Example operation for create_instance
    #   params = {
    #     instance_name: "example instance name",
    #     instance_description: "example instance description",
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #     tags: {
    #       "tagKey1" => "tagValue1"
    #     }
    #   }
    #   options = {}
    #   response = client.create_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: Initializing,
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_name: "example instance name",
    #       instance_description: "example instance description",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #       version_number: 2.0
    #     }
    #   }
    # @example Successful CreateInstance request with no input data
    #   # Example operation for create_instance
    #   params = {}
    #   options = {}
    #   response = client.create_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: Initializing,
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_description: "",
    #       kms_key_arn: "arn:aws:kms:us-west-2:456789012345:key/7372eb6d-874c-4212-8d49-7804282d33a8",
    #       version_number: 2.0
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_name: "InstanceName",
    #     instance_description: "InstanceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     web_app_dns_domain: "InstanceWebAppDnsDomain",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: { # required
    #       instance_id: "UUID", # required
    #       aws_account_id: "AwsAccountId", # required
    #       state: "Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"], # required
    #       error_message: "String",
    #       web_app_dns_domain: "InstanceWebAppDnsDomain",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       instance_name: "InstanceName",
    #       instance_description: "InstanceDescription",
    #       kms_key_arn: "KmsKeyArn",
    #       version_number: 1.0
    #     }
    #   }
    # @return [Types::CreateInstanceResponse]
    def create_instance(params = {}, options = {})
      request = build_request(:create_instance, params)
      request.send_request(options)
    end

    # <p>Enable you to programmatically delete an existing data pipeline for the provided Amazon Web Services Supply Chain instance and DataIntegrationFlow name.</p>
    # @param [Hash, Types::DeleteDataIntegrationFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the DataIntegrationFlow to be deleted.</p>
    # @example Successful DeleteDataIntegrationFlow
    #   # Example operation for delete_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow"
    #   }
    #   options = {}
    #   response = client.delete_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   }
    #   options = {}
    #   response = client.delete_data_integration_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   }
    # @return [Types::DeleteDataIntegrationFlowResponse]
    def delete_data_integration_flow(params = {}, options = {})
      request = build_request(:delete_data_integration_flow, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically delete an Amazon Web Services Supply Chain data lake dataset. Developers can delete the existing datasets for a given instance ID, namespace, and instance name.</p>
    # @param [Hash, Types::DeleteDataLakeDatasetRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    # @example Delete an AWS Supply Chain inbound_order dataset
    #   # Example operation for delete_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc",
    #     name: "inbound_order"
    #   }
    #   options = {}
    #   response = client.delete_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc",
    #     name: "inbound_order"
    #   }
    # @example Delete a custom dataset
    #   # Example operation for delete_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     name: "my_dataset"
    #   }
    #   options = {}
    #   response = client.delete_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     name: "my_dataset"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     name: "DataLakeDatasetName", # required
    #   }
    #   options = {}
    #   response = client.delete_data_lake_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     name: "DataLakeDatasetName", # required
    #   }
    # @return [Types::DeleteDataLakeDatasetResponse]
    def delete_data_lake_dataset(params = {}, options = {})
      request = build_request(:delete_data_lake_dataset, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically delete an Amazon Web Services Supply Chain data lake namespace and its underling datasets. Developers can delete the existing namespaces for a given instance ID and namespace name.</p>
    # @param [Hash, Types::DeleteDataLakeNamespaceRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the namespace. Noted you cannot delete pre-defined namespace like <b>asc</b>, <b>default</b> which are only deleted through instance deletion.</p>
    # @example Delete an AWS Supply Chain namespace
    #   # Example operation for delete_data_lake_namespace
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "my_namespace"
    #   }
    #   options = {}
    #   response = client.delete_data_lake_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "my_namespace"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataLakeNamespaceName", # required
    #   }
    #   options = {}
    #   response = client.delete_data_lake_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "UUID", # required
    #     name: "DataLakeNamespaceName", # required
    #   }
    # @return [Types::DeleteDataLakeNamespaceResponse]
    def delete_data_lake_namespace(params = {}, options = {})
      request = build_request(:delete_data_lake_namespace, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically delete an Amazon Web Services Supply Chain instance by deleting the KMS keys and relevant information associated with the API without using the Amazon Web Services console.</p>
    #          <p>This is an asynchronous operation. Upon receiving a DeleteInstance request, Amazon Web Services Supply Chain immediately returns a response with the instance resource, delete state while cleaning up all Amazon Web Services resources created during the instance creation process. You can use the GetInstance action to check the instance status.</p>
    # @param [Hash, Types::DeleteInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @example Successful DeleteInstance request
    #   # Example operation for delete_instance
    #   params = {
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793"
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: Deleting,
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_name: "updated example instance name",
    #       instance_description: "updated example instance description",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #       version_number: 2.0
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: { # required
    #       instance_id: "UUID", # required
    #       aws_account_id: "AwsAccountId", # required
    #       state: "Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"], # required
    #       error_message: "String",
    #       web_app_dns_domain: "InstanceWebAppDnsDomain",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       instance_name: "InstanceName",
    #       instance_description: "InstanceDescription",
    #       kms_key_arn: "KmsKeyArn",
    #       version_number: 1.0
    #     }
    #   }
    # @return [Types::DeleteInstanceResponse]
    def delete_instance(params = {}, options = {})
      request = build_request(:delete_instance, params)
      request.send_request(options)
    end

    # <p>Get status and details of a BillOfMaterialsImportJob.</p>
    # @param [Hash, Types::GetBillOfMaterialsImportJobRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :job_id
    #   <p>The BillOfMaterialsImportJob identifier.</p>
    # @example Invoke GetBillOfMaterialsImportJob for a successful job
    #   # Example operation for get_bill_of_materials_import_job
    #   params = {
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243",
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4"
    #   }
    #   options = {}
    #   response = client.get_bill_of_materials_import_job(params, options)
    #   response.to_h #=>
    #   {
    #     job: {
    #       instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243",
    #       job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4",
    #       status: SUCCESS,
    #       s3uri: "s3://mybucketname/pathelemene/file.csv",
    #       message: "Import job completed successfully."
    #     }
    #   }
    # @example Invoke GetBillOfMaterialsImportJob for an in-progress job
    #   # Example operation for get_bill_of_materials_import_job
    #   params = {
    #     instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243",
    #     job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4"
    #   }
    #   options = {}
    #   response = client.get_bill_of_materials_import_job(params, options)
    #   response.to_h #=>
    #   {
    #     job: {
    #       instance_id: "60f82bbd-71f7-4fcd-a941-472f574c5243",
    #       job_id: "f79b359b-1515-4436-a3bf-bae7b33e47b4",
    #       status: IN_PROGRESS,
    #       s3uri: "s3://mybucketname/pathelemene/file.csv"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     job_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_bill_of_materials_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: { # required
    #       instance_id: "UUID", # required
    #       job_id: "UUID", # required
    #       status: "NEW" # One of: ["NEW", "FAILED", "IN_PROGRESS", "QUEUED", "SUCCESS"], # required
    #       s3uri: "ConfigurationS3Uri", # required
    #       message: "String"
    #     }
    #   }
    # @return [Types::GetBillOfMaterialsImportJobResponse]
    def get_bill_of_materials_import_job(params = {}, options = {})
      request = build_request(:get_bill_of_materials_import_job, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view an Amazon Web Services Supply Chain Data Integration Event. Developers can view the eventType, eventGroupId, eventTimestamp, datasetTarget, datasetLoadExecution.</p>
    # @param [Hash, Types::GetDataIntegrationEventRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :event_id
    #   <p>The unique event identifier.</p>
    # @example Successful GetDataIntegrationEvent
    #   # Example operation for get_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_id: "19739c8e-cd2e-4cbc-a2f7-0dc43239f042"
    #   }
    #   options = {}
    #   response = client.get_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event: {
    #       instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #       event_id: "19739c8e-cd2e-4cbc-a2f7-0dc43239f042",
    #       event_type: scn.data.dataset,
    #       event_group_id: "datasetId",
    #       event_timestamp: Time.parse(1515531081.123),
    #       dataset_target_details: {
    #         dataset_identifier: "arn:aws:scn:us-west-2:135808960812:instance/8928ae12-15e5-4441-825d-ec2184f0a43a/namespaces/asc/datasets/product",
    #         operation_type: APPEND,
    #         dataset_load_execution: {
    #           status: SUCCEEDED
    #         }
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     event_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_data_integration_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event: { # required
    #       instance_id: "UUID", # required
    #       event_id: "UUID", # required
    #       event_type: "scn.data.forecast" # One of: ["scn.data.forecast", "scn.data.inventorylevel", "scn.data.inboundorder", "scn.data.inboundorderline", "scn.data.inboundorderlineschedule", "scn.data.outboundorderline", "scn.data.outboundshipment", "scn.data.processheader", "scn.data.processoperation", "scn.data.processproduct", "scn.data.reservation", "scn.data.shipment", "scn.data.shipmentstop", "scn.data.shipmentstoporder", "scn.data.supplyplan", "scn.data.dataset"], # required
    #       event_group_id: "DataIntegrationEventGroupId", # required
    #       event_timestamp: Time.now, # required
    #       dataset_target_details: {
    #         dataset_identifier: "DataIntegrationDatasetArn", # required
    #         operation_type: "APPEND" # One of: ["APPEND", "UPSERT", "DELETE"], # required
    #         dataset_load_execution: { # required
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"], # required
    #           message: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetDataIntegrationEventResponse]
    def get_data_integration_event(params = {}, options = {})
      request = build_request(:get_data_integration_event, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view a specific data pipeline for the provided Amazon Web Services Supply Chain instance and DataIntegrationFlow name.</p>
    # @param [Hash, Types::GetDataIntegrationFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the DataIntegrationFlow created.</p>
    # @example Successful GetDataIntegrationFlow
    #   # Example operation for get_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow"
    #   }
    #   options = {}
    #   response = client.get_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     flow: {
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #       name: "testStagingFlow",
    #       sources: [
    #         {
    #           source_type: S3,
    #           source_name: "testSourceName",
    #           s3_source: {
    #             bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f",
    #             prefix: "example-prefix"
    #           }
    #         }
    #       ],
    #       target: {
    #         target_type: DATASET,
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset"
    #         }
    #       },
    #       transformation: {
    #         transformation_type: SQL,
    #         sql_transformation: {
    #           query: "SELECT * FROM testSourceName"
    #         }
    #       },
    #       created_time: Time.parse(1724956400.44),
    #       last_modified_time: Time.parse(1724956400.44)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #   }
    #   options = {}
    #   response = client.get_data_integration_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow: { # required
    #       instance_id: "UUID", # required
    #       name: "DataIntegrationFlowName", # required
    #       sources: [ # required
    #         {
    #           source_type: "S3" # One of: ["S3", "DATASET"], # required
    #           source_name: "DataIntegrationFlowSourceName", # required
    #           s3_source: {
    #             bucket_name: "S3BucketName", # required
    #             prefix: "DataIntegrationFlowS3Prefix", # required
    #             options: {
    #               file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #             }
    #           },
    #           dataset_source: {
    #             dataset_identifier: "DatasetIdentifier", # required
    #             options: {
    #               load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #               dedupe_records: false,
    #               dedupe_strategy: {
    #                 type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #                 field_priority: {
    #                   fields: [ # required
    #                     {
    #                       name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                       sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       transformation: { # required
    #         transformation_type: "SQL" # One of: ["SQL", "NONE"], # required
    #         sql_transformation: {
    #           query: "DataIntegrationFlowSQLQuery", # required
    #         }
    #       },
    #       target: { # required
    #         target_type: "S3" # One of: ["S3", "DATASET"], # required
    #         s3_target: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #           }
    #         },
    #         dataset_target: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #             dedupe_records: false,
    #             dedupe_strategy: {
    #               type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #               field_priority: {
    #                 fields: [ # required
    #                   {
    #                     name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                     sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetDataIntegrationFlowResponse]
    def get_data_integration_flow(params = {}, options = {})
      request = build_request(:get_data_integration_flow, params)
      request.send_request(options)
    end

    # <p>Get the flow execution.</p>
    # @param [Hash, Types::GetDataIntegrationFlowExecutionRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :flow_name
    #   <p>The flow name.</p>
    # @option params [String] :execution_id
    #   <p>The flow execution identifier.</p>
    # @example Successful GetDataIntegrationFlowExecution for S3 source
    #   # Example operation for get_data_integration_flow_execution
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     flow_name: "source-product",
    #     execution_id: "edbbdd3f-c0f9-49d9-ab01-f64542f803b7"
    #   }
    #   options = {}
    #   response = client.get_data_integration_flow_execution(params, options)
    #   response.to_h #=>
    #   {
    #     flow_execution: {
    #       instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #       flow_name: "source-product",
    #       execution_id: "edbbdd3f-c0f9-49d9-ab01-f64542f803b7",
    #       status: SUCCEEDED,
    #       source_info: {
    #         source_type: S3,
    #         s3_source: {
    #           bucket_name: "galaxy-raw-input-test-data-prod-pdx-1",
    #           key: "sources/product-sources.csv"
    #         }
    #       },
    #       start_time: Time.parse(1515531081.123),
    #       end_time: Time.parse(1515531090.123)
    #     }
    #   }
    # @example Successful GetDataIntegrationFlowExecution for DATASET source
    #   # Example operation for get_data_integration_flow_execution
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     flow_name: "target-product",
    #     execution_id: "9daf6071-d12c-4eef-864c-73cea2557825"
    #   }
    #   options = {}
    #   response = client.get_data_integration_flow_execution(params, options)
    #   response.to_h #=>
    #   {
    #     flow_execution: {
    #       instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #       flow_name: "target-product",
    #       execution_id: "9daf6071-d12c-4eef-864c-73cea2557825",
    #       status: SUCCEEDED,
    #       source_info: {
    #         source_type: DATASET,
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-west-2:135808960812:instance/8928ae12-15e5-4441-825d-ec2184f0a43a/namespaces/default/datasets/product"
    #         }
    #       },
    #       start_time: Time.parse(1515531081.123),
    #       end_time: Time.parse(1515531090.123)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     flow_name: "DataIntegrationFlowName", # required
    #     execution_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_data_integration_flow_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_execution: { # required
    #       instance_id: "UUID", # required
    #       flow_name: "DataIntegrationFlowName", # required
    #       execution_id: "UUID", # required
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"],
    #       source_info: {
    #         source_type: "S3" # One of: ["S3", "DATASET"], # required
    #         s3_source: {
    #           bucket_name: "S3BucketName", # required
    #           key: "DataIntegrationS3ObjectKey", # required
    #         },
    #         dataset_source: {
    #           dataset_identifier: "DataIntegrationDatasetArn", # required
    #         }
    #       },
    #       message: "String",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       output_metadata: {
    #         diagnostic_reports_root_s3_uri: "DataIntegrationFlowExecutionDiagnosticReportsRootS3URI"
    #       }
    #     }
    #   }
    # @return [Types::GetDataIntegrationFlowExecutionResponse]
    def get_data_integration_flow_execution(params = {}, options = {})
      request = build_request(:get_data_integration_flow_execution, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view an Amazon Web Services Supply Chain data lake dataset. Developers can view the data lake dataset information such as namespace, schema, and so on for a given instance ID, namespace, and dataset name.</p>
    # @param [Hash, Types::GetDataLakeDatasetRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    # @example Get properties of an existing AWS Supply Chain inbound order dataset
    #   # Example operation for get_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc",
    #     name: "inbound_order"
    #   }
    #   options = {}
    #   response = client.get_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "asc",
    #       name: "inbound_order",
    #       description: "This is an AWS Supply Chain inbound order dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727116807.751),
    #       schema: {
    #         name: "InboundOrder",
    #         fields: [
    #           {
    #             name: "id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "tpartner_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "connection_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "order_type",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_status",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "inbound_order_url",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_creation_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "company_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "to_site_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "vendor_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_1",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "submitted_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_start_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_end_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "shipping_instr_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "payment_terms_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement_ver",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_number",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source_update_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "source_event_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "db_creation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "db_updation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Get proporties of an existing custom dataset
    #   # Example operation for get_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     name: "my_dataset"
    #   }
    #   options = {}
    #   response = client.get_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "default",
    #       name: "my_dataset",
    #       description: "This is a custom dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727116807.751),
    #       schema: {
    #         name: "MyDataset",
    #         fields: [
    #           {
    #             name: "id",
    #             type: INT,
    #             is_required: true
    #           },
    #           {
    #             name: "description",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "price",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "creation_time",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "quantity",
    #             type: LONG,
    #             is_required: false
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "id"
    #           }
    #         ]
    #       },
    #       partition_spec: {
    #         fields: [
    #           {
    #             name: "creation_time",
    #             transform: {
    #               type: DAY
    #             }
    #           },
    #           {
    #             name: "description",
    #             transform: {
    #               type: IDENTITY
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     name: "DataLakeDatasetName", # required
    #   }
    #   options = {}
    #   response = client.get_data_lake_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: { # required
    #       instance_id: "UUID", # required
    #       namespace: "DataLakeNamespaceName", # required
    #       name: "DataLakeDatasetName", # required
    #       arn: "AscResourceArn", # required
    #       schema: { # required
    #         name: "DataLakeDatasetSchemaName", # required
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             type: "INT" # One of: ["INT", "DOUBLE", "STRING", "TIMESTAMP", "LONG"], # required
    #             is_required: false, # required
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #           }
    #         ]
    #       },
    #       description: "DataLakeDatasetDescription",
    #       partition_spec: {
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             transform: { # required
    #               type: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "IDENTITY"], # required
    #             }
    #           }
    #         ]
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetDataLakeDatasetResponse]
    def get_data_lake_dataset(params = {}, options = {})
      request = build_request(:get_data_lake_dataset, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view an Amazon Web Services Supply Chain data lake namespace. Developers can view the data lake namespace information such as description for a given instance ID and namespace name.</p>
    # @param [Hash, Types::GetDataLakeNamespaceRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the namespace. Besides the namespaces user created, you can also specify the pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - Pre-defined namespace containing Amazon Web Services Supply Chain supported datasets, see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - Pre-defined namespace containing datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @example Get properties of an existing AWS Supply Chain namespace
    #   # Example operation for get_data_lake_namespace
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "my_namespace"
    #   }
    #   options = {}
    #   response = client.get_data_lake_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/my_namespace",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       name: "my_namespace",
    #       description: "This is my AWS Supply Chain namespace",
    #       created_time: Time.parse(1736892560.751),
    #       last_modified_time: Time.parse(1736892560.751)
    #     }
    #   }
    # @example Get proporties of an existing pre-defined AWS Supply Chain namespace
    #   # Example operation for get_data_lake_namespace
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "asc"
    #   }
    #   options = {}
    #   response = client.get_data_lake_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       name: "asc",
    #       created_time: Time.parse(1736892430.234),
    #       last_modified_time: Time.parse(1736892430.234)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataLakeNamespaceName", # required
    #   }
    #   options = {}
    #   response = client.get_data_lake_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       instance_id: "UUID", # required
    #       name: "DataLakeNamespaceName", # required
    #       arn: "AscResourceArn", # required
    #       description: "DataLakeNamespaceDescription",
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetDataLakeNamespaceResponse]
    def get_data_lake_namespace(params = {}, options = {})
      request = build_request(:get_data_lake_namespace, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically retrieve the information related to an Amazon Web Services Supply Chain instance ID.</p>
    # @param [Hash, Types::GetInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier</p>
    # @example Successful GetInstance request
    #   # Example operation for get_instance
    #   params = {
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793"
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: Active,
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_name: "example instance name",
    #       instance_description: "example instance description",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #       version_number: 2.0
    #     }
    #   }
    # @example Successful GetInstance request with error message
    #   # Example operation for get_instance
    #   params = {
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793"
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: CreateFailed,
    #       error_message: "Access denied when attempting to create an S3 bucket. Please correct your IAM policy and try again.",
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_name: "example instance name",
    #       instance_description: "example instance description",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #       version_number: 2.0
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: { # required
    #       instance_id: "UUID", # required
    #       aws_account_id: "AwsAccountId", # required
    #       state: "Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"], # required
    #       error_message: "String",
    #       web_app_dns_domain: "InstanceWebAppDnsDomain",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       instance_name: "InstanceName",
    #       instance_description: "InstanceDescription",
    #       kms_key_arn: "KmsKeyArn",
    #       version_number: 1.0
    #     }
    #   }
    # @return [Types::GetInstanceResponse]
    def get_instance(params = {}, options = {})
      request = build_request(:get_instance, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically list all data integration events for the provided Amazon Web Services Supply Chain instance.</p>
    # @param [Hash, Types::ListDataIntegrationEventsRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :event_type
    #   <p>List data integration events for the specified eventType.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to fetch the next page of the data integration events.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of data integration events to fetch in one paginated request.</p>
    # @example Successful ListDataIntegrationEvents
    #   # Example operation for list_data_integration_events
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a"
    #   }
    #   options = {}
    #   response = client.list_data_integration_events(params, options)
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #         event_id: "19739c8e-cd2e-4cbc-a2f7-0dc43239f042",
    #         event_type: scn.data.dataset,
    #         event_group_id: "datasetId",
    #         event_timestamp: Time.parse(1515531081.123),
    #         dataset_target_details: {
    #           dataset_identifier: "arn:aws:scn:us-west-2:135808960812:instance/8928ae12-15e5-4441-825d-ec2184f0a43a/namespaces/asc/datasets/product",
    #           operation_type: APPEND,
    #           dataset_load_execution: {
    #             status: SUCCEEDED
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     event_type: "scn.data.forecast" # One of: ["scn.data.forecast", "scn.data.inventorylevel", "scn.data.inboundorder", "scn.data.inboundorderline", "scn.data.inboundorderlineschedule", "scn.data.outboundorderline", "scn.data.outboundshipment", "scn.data.processheader", "scn.data.processoperation", "scn.data.processproduct", "scn.data.reservation", "scn.data.shipment", "scn.data.shipmentstop", "scn.data.shipmentstoporder", "scn.data.supplyplan", "scn.data.dataset"],
    #     next_token: "DataIntegrationEventNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_integration_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         event_id: "UUID", # required
    #         event_type: "scn.data.forecast" # One of: ["scn.data.forecast", "scn.data.inventorylevel", "scn.data.inboundorder", "scn.data.inboundorderline", "scn.data.inboundorderlineschedule", "scn.data.outboundorderline", "scn.data.outboundshipment", "scn.data.processheader", "scn.data.processoperation", "scn.data.processproduct", "scn.data.reservation", "scn.data.shipment", "scn.data.shipmentstop", "scn.data.shipmentstoporder", "scn.data.supplyplan", "scn.data.dataset"], # required
    #         event_group_id: "DataIntegrationEventGroupId", # required
    #         event_timestamp: Time.now, # required
    #         dataset_target_details: {
    #           dataset_identifier: "DataIntegrationDatasetArn", # required
    #           operation_type: "APPEND" # One of: ["APPEND", "UPSERT", "DELETE"], # required
    #           dataset_load_execution: { # required
    #             status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"], # required
    #             message: "String"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "DataIntegrationEventNextToken"
    #   }
    # @return [Types::ListDataIntegrationEventsResponse]
    def list_data_integration_events(params = {}, options = {})
      request = build_request(:list_data_integration_events, params)
      request.send_request(options)
    end

    # <p>List flow executions.</p>
    # @param [Hash, Types::ListDataIntegrationFlowExecutionsRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :flow_name
    #   <p>The flow name.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to fetch next page of flow executions.</p>
    # @option params [Integer] :max_results
    #   <p>The number to specify the max number of flow executions to fetch in this paginated request.</p>
    # @example Successful ListDataIntegrationFlowExecutions
    #   # Example operation for list_data_integration_flow_executions
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     flow_name: "source-product"
    #   }
    #   options = {}
    #   response = client.list_data_integration_flow_executions(params, options)
    #   response.to_h #=>
    #   {
    #     flow_executions: [
    #       {
    #         instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #         flow_name: "source-product",
    #         execution_id: "edbbdd3f-c0f9-49d9-ab01-f64542f803b7",
    #         status: SUCCEEDED,
    #         source_info: {
    #           source_type: S3,
    #           s3_source: {
    #             bucket_name: "galaxy-raw-input-test-data-prod-pdx-1",
    #             key: "sources/product-sources.csv"
    #           }
    #         },
    #         start_time: Time.parse(1515531081.123),
    #         end_time: Time.parse(1515531090.123)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     flow_name: "DataIntegrationFlowName", # required
    #     next_token: "DataIntegrationFlowExecutionNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_integration_flow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_executions: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         flow_name: "DataIntegrationFlowName", # required
    #         execution_id: "UUID", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"],
    #         source_info: {
    #           source_type: "S3" # One of: ["S3", "DATASET"], # required
    #           s3_source: {
    #             bucket_name: "S3BucketName", # required
    #             key: "DataIntegrationS3ObjectKey", # required
    #           },
    #           dataset_source: {
    #             dataset_identifier: "DataIntegrationDatasetArn", # required
    #           }
    #         },
    #         message: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         output_metadata: {
    #           diagnostic_reports_root_s3_uri: "DataIntegrationFlowExecutionDiagnosticReportsRootS3URI"
    #         }
    #       }
    #     ],
    #     next_token: "DataIntegrationFlowExecutionNextToken"
    #   }
    # @return [Types::ListDataIntegrationFlowExecutionsResponse]
    def list_data_integration_flow_executions(params = {}, options = {})
      request = build_request(:list_data_integration_flow_executions, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically list all data pipelines for the provided Amazon Web Services Supply Chain instance.</p>
    # @param [Hash, Types::ListDataIntegrationFlowsRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to fetch the next page of the DataIntegrationFlows.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of DataIntegrationFlows to fetch in one paginated request.</p>
    # @example Successful ListDataIntegrationFlow
    #   # Example operation for list_data_integration_flows
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d"
    #   }
    #   options = {}
    #   response = client.list_data_integration_flows(params, options)
    #   response.to_h #=>
    #   {
    #     flows: [
    #       {
    #         instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #         name: "testStagingFlow",
    #         sources: [
    #           {
    #             source_type: S3,
    #             source_name: "testSourceName",
    #             s3_source: {
    #               bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f",
    #               prefix: "example-prefix"
    #             }
    #           }
    #         ],
    #         target: {
    #           target_type: DATASET,
    #           dataset_target: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset"
    #           }
    #         },
    #         transformation: {
    #           transformation_type: SQL,
    #           sql_transformation: {
    #             query: "SELECT * FROM testSourceName"
    #           }
    #         },
    #         created_time: Time.parse(1724956400.44),
    #         last_modified_time: Time.parse(1724956400.44)
    #       },
    #       {
    #         instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #         name: "trading-partner",
    #         sources: [
    #           {
    #             source_type: DATASET,
    #             source_name: "testSourceName1",
    #             dataset_source: {
    #               dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1"
    #             }
    #           },
    #           {
    #             source_type: DATASET,
    #             source_name: "testSourceName2",
    #             dataset_source: {
    #               dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2"
    #             }
    #           }
    #         ],
    #         transformation: {
    #           transformation_type: SQL,
    #           sql_transformation: {
    #             query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id"
    #           }
    #         },
    #         target: {
    #           target_type: DATASET,
    #           dataset_target: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner",
    #             options: {
    #               load_type: REPLACE,
    #               dedupe_records: true,
    #               dedupe_strategy: {
    #                 type: FIELD_PRIORITY,
    #                 field_priority: {
    #                   fields: [
    #                     {
    #                       name: "eff_start_date",
    #                       sort_order: DESC
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         created_time: Time.parse(17235763506.88),
    #         last_modified_time: Time.parse(17235763506.88)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     next_token: "DataIntegrationFlowNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_integration_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flows: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         name: "DataIntegrationFlowName", # required
    #         sources: [ # required
    #           {
    #             source_type: "S3" # One of: ["S3", "DATASET"], # required
    #             source_name: "DataIntegrationFlowSourceName", # required
    #             s3_source: {
    #               bucket_name: "S3BucketName", # required
    #               prefix: "DataIntegrationFlowS3Prefix", # required
    #               options: {
    #                 file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #               }
    #             },
    #             dataset_source: {
    #               dataset_identifier: "DatasetIdentifier", # required
    #               options: {
    #                 load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #                 dedupe_records: false,
    #                 dedupe_strategy: {
    #                   type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #                   field_priority: {
    #                     fields: [ # required
    #                       {
    #                         name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                         sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         transformation: { # required
    #           transformation_type: "SQL" # One of: ["SQL", "NONE"], # required
    #           sql_transformation: {
    #             query: "DataIntegrationFlowSQLQuery", # required
    #           }
    #         },
    #         target: { # required
    #           target_type: "S3" # One of: ["S3", "DATASET"], # required
    #           s3_target: {
    #             bucket_name: "S3BucketName", # required
    #             prefix: "DataIntegrationFlowS3Prefix", # required
    #             options: {
    #               file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #             }
    #           },
    #           dataset_target: {
    #             dataset_identifier: "DatasetIdentifier", # required
    #             options: {
    #               load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #               dedupe_records: false,
    #               dedupe_strategy: {
    #                 type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #                 field_priority: {
    #                   fields: [ # required
    #                     {
    #                       name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                       sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "DataIntegrationFlowNextToken"
    #   }
    # @return [Types::ListDataIntegrationFlowsResponse]
    def list_data_integration_flows(params = {}, options = {})
      request = build_request(:list_data_integration_flows, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view the list of Amazon Web Services Supply Chain data lake datasets. Developers can view the datasets and the corresponding information such as namespace, schema, and so on for a given instance ID and namespace.</p>
    # @param [Hash, Types::ListDataLakeDatasetsRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The pagination token to fetch next page of datasets.</p>
    # @option params [Integer] :max_results
    #   <p>The max number of datasets to fetch in this paginated request.</p>
    # @example List AWS Supply Chain datasets
    #   # Example operation for list_data_lake_datasets
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc"
    #   }
    #   options = {}
    #   response = client.list_data_lake_datasets(params, options)
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         namespace: "asc",
    #         name: "inbound_order",
    #         description: "This is an AWS Supply Chain inbound order dataset",
    #         created_time: Time.parse(1727116807.751),
    #         last_modified_time: Time.parse(1727116807.751),
    #         schema: {
    #           name: "InboundOrder",
    #           fields: [
    #             {
    #               name: "id",
    #               type: STRING,
    #               is_required: true
    #             },
    #             {
    #               name: "tpartner_id",
    #               type: STRING,
    #               is_required: true
    #             },
    #             {
    #               name: "connection_id",
    #               type: STRING,
    #               is_required: true
    #             },
    #             {
    #               name: "order_type",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "order_status",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "inbound_order_url",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "order_creation_date",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "company_id",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "to_site_id",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "order_currency_uom",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "vendor_currency_uom",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "exchange_rate",
    #               type: DOUBLE,
    #               is_required: false
    #             },
    #             {
    #               name: "exchange_rate_date",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "incoterm",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "incoterm2",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "incoterm_location_1",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "incoterm_location_2",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "submitted_date",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "agreement_start_date",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "agreement_end_date",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "shipping_instr_code",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "payment_terms_code",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "std_terms_agreement",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "std_terms_agreement_ver",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "agreement_number",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "source",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "source_update_dttm",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "source_event_id",
    #               type: STRING,
    #               is_required: false
    #             },
    #             {
    #               name: "db_creation_dttm",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "db_updation_dttm",
    #               type: TIMESTAMP,
    #               is_required: false
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example List custom datasets using pagination
    #   # Example operation for list_data_lake_datasets
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     max_results: 2,
    #     next_token: "next_token_returned_from_previous_list_request"
    #   }
    #   options = {}
    #   response = client.list_data_lake_datasets(params, options)
    #   response.to_h #=>
    #   {
    #     datasets: [
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         namespace: "default",
    #         name: "my_dataset",
    #         description: "This is a custom dataset",
    #         created_time: Time.parse(1727116807.751),
    #         last_modified_time: Time.parse(1727116807.751),
    #         schema: {
    #           name: "MyDataset",
    #           fields: [
    #             {
    #               name: "id",
    #               type: INT,
    #               is_required: true
    #             },
    #             {
    #               name: "description",
    #               type: STRING,
    #               is_required: true
    #             },
    #             {
    #               name: "price",
    #               type: DOUBLE,
    #               is_required: false
    #             },
    #             {
    #               name: "creation_time",
    #               type: TIMESTAMP,
    #               is_required: false
    #             },
    #             {
    #               name: "quantity",
    #               type: LONG,
    #               is_required: false
    #             }
    #           ],
    #           primary_keys: [
    #             {
    #               name: "id"
    #             }
    #           ]
    #         },
    #         partition_spec: {
    #           fields: [
    #             {
    #               name: "creation_time",
    #               transform: {
    #                 type: DAY
    #               }
    #             },
    #             {
    #               name: "description",
    #               transform: {
    #                 type: IDENTITY
    #               }
    #             }
    #           ]
    #         }
    #       },
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset_2",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         namespace: "default",
    #         name: "my_dataset_2",
    #         description: "This is a custom dataset 2",
    #         created_time: Time.parse(1727116907.751),
    #         last_modified_time: Time.parse(1727116907.751),
    #         schema: {
    #           name: "MyDataset2",
    #           fields: [
    #             {
    #               name: "id",
    #               type: INT,
    #               is_required: true
    #             },
    #             {
    #               name: "description",
    #               type: STRING,
    #               is_required: true
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "next_token_for_next_list_request"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     next_token: "DataLakeDatasetNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_lake_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datasets: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         namespace: "DataLakeNamespaceName", # required
    #         name: "DataLakeDatasetName", # required
    #         arn: "AscResourceArn", # required
    #         schema: { # required
    #           name: "DataLakeDatasetSchemaName", # required
    #           fields: [ # required
    #             {
    #               name: "DataLakeDatasetSchemaFieldName", # required
    #               type: "INT" # One of: ["INT", "DOUBLE", "STRING", "TIMESTAMP", "LONG"], # required
    #               is_required: false, # required
    #             }
    #           ],
    #           primary_keys: [
    #             {
    #               name: "DataLakeDatasetSchemaFieldName", # required
    #             }
    #           ]
    #         },
    #         description: "DataLakeDatasetDescription",
    #         partition_spec: {
    #           fields: [ # required
    #             {
    #               name: "DataLakeDatasetSchemaFieldName", # required
    #               transform: { # required
    #                 type: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "IDENTITY"], # required
    #               }
    #             }
    #           ]
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "DataLakeDatasetNextToken"
    #   }
    # @return [Types::ListDataLakeDatasetsResponse]
    def list_data_lake_datasets(params = {}, options = {})
      request = build_request(:list_data_lake_datasets, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically view the list of Amazon Web Services Supply Chain data lake namespaces. Developers can view the namespaces and the corresponding information such as description for a given instance ID. Note that this API only return custom namespaces, instance pre-defined namespaces are not included.</p>
    # @param [Hash, Types::ListDataLakeNamespacesRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to fetch next page of namespaces.</p>
    # @option params [Integer] :max_results
    #   <p>The max number of namespaces to fetch in this paginated request.</p>
    # @example List AWS Supply Chain namespaces
    #   # Example operation for list_data_lake_namespaces
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5"
    #   }
    #   options = {}
    #   response = client.list_data_lake_namespaces(params, options)
    #   response.to_h #=>
    #   {
    #     namespaces: [
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/custom_namespace",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         name: "custom_namespace",
    #         created_time: Time.parse(1736892060.751),
    #         last_modified_time: Time.parse(1736892060.751)
    #       },
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/my_namespace",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         name: "my_namespace",
    #         created_time: Time.parse(1736892560.751),
    #         last_modified_time: Time.parse(1736892586.156)
    #       }
    #     ]
    #   }
    # @example List AWS Supply Chain namespaces using pagination
    #   # Example operation for list_data_lake_namespaces
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     max_results: 1,
    #     next_token: "next_token_returned_from_previous_list_request"
    #   }
    #   options = {}
    #   response = client.list_data_lake_namespaces(params, options)
    #   response.to_h #=>
    #   {
    #     namespaces: [
    #       {
    #         arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/my_namespace",
    #         instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #         name: "my_namespace",
    #         created_time: Time.parse(1736892560.751),
    #         last_modified_time: Time.parse(1736892586.156)
    #       }
    #     ],
    #     next_token: "next_token_for_next_list_request"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     next_token: "DataLakeNamespaceNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_data_lake_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespaces: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         name: "DataLakeNamespaceName", # required
    #         arn: "AscResourceArn", # required
    #         description: "DataLakeNamespaceDescription",
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "DataLakeNamespaceNextToken"
    #   }
    # @return [Types::ListDataLakeNamespacesResponse]
    def list_data_lake_namespaces(params = {}, options = {})
      request = build_request(:list_data_lake_namespaces, params)
      request.send_request(options)
    end

    # <p>List all Amazon Web Services Supply Chain instances for a specific account. Enables you to programmatically list all Amazon Web Services Supply Chain instances based on their account ID, instance name, and state of the instance (active or delete).</p>
    # @param [Hash, Types::ListInstancesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token to fetch the next page of instances.</p>
    # @option params [Integer] :max_results
    #   <p>Specify the maximum number of instances to fetch in this paginated request.</p>
    # @option params [Array<String>] :instance_name_filter
    #   <p>The filter to ListInstances based on their names.</p>
    # @option params [Array<String>] :instance_state_filter
    #   <p>The filter to ListInstances based on their state.</p>
    # @example Successful ListInstance request with no input data
    #   # Example operation for list_instances
    #   params = {}
    #   options = {}
    #   response = client.list_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #         aws_account_id: "123456789012",
    #         state: Active,
    #         created_time: Time.parse(172615383136),
    #         last_modified_time: Time.parse(172615383136),
    #         instance_name: "example instance name",
    #         instance_description: "example instance description",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #         version_number: 2.0
    #       },
    #       {
    #         instance_id: "3ad8116a-644d-4172-8dcb-20e51d314c14",
    #         aws_account_id: "123456789012",
    #         state: Initializing,
    #         created_time: Time.parse(17261674383136),
    #         last_modified_time: Time.parse(17261674383136),
    #         instance_description: "example instance description",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #         version_number: 2.0
    #       }
    #     ]
    #   }
    # @example Successful ListInstance request with filters
    #   # Example operation for list_instances
    #   params = {
    #     instance_name_filter: [
    #       "example instance name"
    #     ],
    #     instance_state_filter: [
    #       Active
    #     ]
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #         aws_account_id: "123456789012",
    #         state: Active,
    #         created_time: Time.parse(172615383136),
    #         last_modified_time: Time.parse(172615383136),
    #         instance_name: "example instance name",
    #         instance_description: "example instance description",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #         version_number: 2.0
    #       }
    #     ]
    #   }
    # @example Successful ListInstance request with maxResult override
    #   # Example operation for list_instances
    #   params = {
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #         aws_account_id: "123456789012",
    #         state: Active,
    #         created_time: Time.parse(172615383136),
    #         last_modified_time: Time.parse(172615383136),
    #         instance_name: "example instance name",
    #         instance_description: "example instance description",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #         version_number: 2.0
    #       }
    #     ],
    #     next_token: "AAQA-EFRSURBSGhtcng0c0dxbENwUHdnckVIbkFYNU1QVjRTZWN2ak5iMFVicC8zemlHOVF3SEpjSC9WTWJVVXBMV2Z1N3ZvZlQ0WEFBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTTJibW9LemgrSWZTY0RaZEdBZ0VRZ0R2dDhsQnVGbGJ0dnFTZityWmNSWEVPbG93emJoSjhxOGNMbGQ1UGMvY0VRbWlTR3pQUFd4N2RraXY5Y0ovcS9vSmFYZVBGdWVHaU0zWmd0dz09n-rC1ejA5--7ltJxpDT2xP_i8xGqDPMOZfjpp8q6l5NuP9_bnBURvwwYhdqDriMK5_f96LuPEnPbuML-ItfgEiCcUy0p2tApvpZkZqOG5fbqP-4C5aDYPTffHLyq-MMqvfrGVJzL1nvkpZcnTkVR9VJsu5b8I0qqDW0H8EMKGgTo78U9lr4sj3Usi9VMwZxgKCBmr03HhFLYXOW--XMbIx0CTZF0fYIcRxmA_sVS6J7gpaB9yMcnzs5VUKokoA5JTcAPY5d1Y1VyE8KKxv51cfPgXw8OYCDbFQncw8mZPmE-VqxjFbksmk_FmghpPn9j2Ppoe-zr0LQ%3D"
    #   }
    # @example Successful ListInstance request with nextToken
    #   # Example operation for list_instances
    #   params = {
    #     next_token: "AAQA-EFRSURBSGhtcng0c0dxbENwUHdnckVIbkFYNU1QVjRTZWN2ak5iMFVicC8zemlHOVF3SEpjSC9WTWJVVXBMV2Z1N3ZvZlQ0WEFBQUFmakI4QmdrcWhraUc5dzBCQndhZ2J6QnRBZ0VBTUdnR0NTcUdTSWIzRFFFSEFUQWVCZ2xnaGtnQlpRTUVBUzR3RVFRTTJibW9LemgrSWZTY0RaZEdBZ0VRZ0R2dDhsQnVGbGJ0dnFTZityWmNSWEVPbG93emJoSjhxOGNMbGQ1UGMvY0VRbWlTR3pQUFd4N2RraXY5Y0ovcS9vSmFYZVBGdWVHaU0zWmd0dz09n-rC1ejA5--7ltJxpDT2xP_i8xGqDPMOZfjpp8q6l5NuP9_bnBURvwwYhdqDriMK5_f96LuPEnPbuML-ItfgEiCcUy0p2tApvpZkZqOG5fbqP-4C5aDYPTffHLyq-MMqvfrGVJzL1nvkpZcnTkVR9VJsu5b8I0qqDW0H8EMKGgTo78U9lr4sj3Usi9VMwZxgKCBmr03HhFLYXOW--XMbIx0CTZF0fYIcRxmA_sVS6J7gpaB9yMcnzs5VUKokoA5JTcAPY5d1Y1VyE8KKxv51cfPgXw8OYCDbFQncw8mZPmE-VqxjFbksmk_FmghpPn9j2Ppoe-zr0LQ%3D",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "3ad8116a-644d-4172-8dcb-20e51d314c14",
    #         aws_account_id: "123456789012",
    #         state: Initializing,
    #         created_time: Time.parse(17261674383136),
    #         last_modified_time: Time.parse(17261674383136),
    #         instance_description: "example instance description",
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #         version_number: 2.0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "InstanceNextToken",
    #     max_results: 1,
    #     instance_name_filter: ["InstanceName"],
    #     instance_state_filter: ["Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"]]
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [ # required
    #       {
    #         instance_id: "UUID", # required
    #         aws_account_id: "AwsAccountId", # required
    #         state: "Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"], # required
    #         error_message: "String",
    #         web_app_dns_domain: "InstanceWebAppDnsDomain",
    #         created_time: Time.now,
    #         last_modified_time: Time.now,
    #         instance_name: "InstanceName",
    #         instance_description: "InstanceDescription",
    #         kms_key_arn: "KmsKeyArn",
    #         version_number: 1.0
    #       }
    #     ],
    #     next_token: "InstanceNextToken"
    #   }
    # @return [Types::ListInstancesResponse]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>List all the tags for an Amazon Web ServicesSupply Chain resource. You can list all the tags added to a resource. By listing the tags, developers can view the tag level information on a resource and perform actions such as, deleting a resource associated with a particular tag.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs tags to be listed.</p>
    # @example Successful ListTagsForResource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "tagKey1" => "tagValue1"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AscResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Send the data payload for the event with real-time data for analysis or monitoring. The real-time data events are stored in an Amazon Web Services service before being processed and stored in data lake.</p>
    # @param [Hash, Types::SendDataIntegrationEventRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :event_type
    #   <p>The data event type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>scn.data.dataset</b> - Send data directly to any specified dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.supplyplan</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/supply-plan-entity.html">supply_plan</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipmentstoporder</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-order-entity.html">shipment_stop_order</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipmentstop</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-entity.html">shipment_stop</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.shipment</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-entity.html">shipment</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.reservation</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/planning-reservation-entity.html">reservation</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processproduct</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-product-entity.html">process_product</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processoperation</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-operation-entity.html">process_operation</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.processheader</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-header-entity.html">process_header</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.forecast</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/forecast-forecast-entity.html">forecast</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inventorylevel</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/inventory_mgmnt-inv-level-entity.html">inv_level</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorder</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-entity.html">inbound_order</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorderline</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-entity.html">inbound_order_line</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.inboundorderlineschedule</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-schedule-entity.html">inbound_order_line_schedule</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.outboundorderline</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-order-line-entity.html">outbound_order_line</a> dataset.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>scn.data.outboundshipment</b> - Send data to <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-shipment-entity.html">outbound_shipment</a> dataset.</p>
    #               </li>
    #            </ul>
    # @option params [String] :data
    #   <p>The data payload of the event, should follow the data schema of the target dataset, or see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">Data entities supported in AWS Supply Chain</a>. To send single data record, use JsonObject format; to send multiple data records, use JsonArray format.</p>
    #            <p>Note that for AWS Supply Chain dataset under <b>asc</b> namespace, it has a connection_id internal field that is not allowed to be provided by client directly, they will be auto populated.</p>
    # @option params [String] :event_group_id
    #   <p>Event identifier (for example, orderId for InboundOrder) used for data sharding or partitioning. Noted under one eventGroupId of same eventType and instanceId, events are processed sequentially in the order they are received by the server.</p>
    # @option params [Time] :event_timestamp
    #   <p>The timestamp (in epoch seconds) associated with the event. If not provided, it will be assigned with current timestamp.</p>
    # @option params [String] :client_token
    #   <p>The idempotent client token. The token is active for 8 hours, and within its lifetime, it ensures the request completes only once upon retry with same client token. If omitted, the AWS SDK generates a unique value so that AWS SDK can safely retry the request upon network errors.</p>
    # @option params [Types::DataIntegrationEventDatasetTargetConfiguration] :dataset_target
    #   <p>The target dataset configuration for <b>scn.data.dataset</b> event type.</p>
    # @example Successful SendDataIntegrationEvent for inboundorder event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.inboundorder,
    #     data: "{\"id\": \"inbound-order-id-test-123\", \"tpartner_id\": \"partner-id-test-123\" }",
    #     event_group_id: "inboundOrderId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "c4132c1d-8f60-44a2-9932-f723c4f7b8a7"
    #   }
    # @example Successful SendDataIntegrationEvent for inboundorderline event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.inboundorderline,
    #     data: "{\"id\": \"inbound-order-line-id-test-123\", \"order_id\": \"order-id-test-123\", \"tpartner_id\": \"partner-id-test-123\", \"product_id\": \"product-id-test-123\", \"quantity_submitted\": \"100.0\" }",
    #     event_group_id: "inboundOrderLineId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "45d95db2-d106-40e0-aa98-f1204230a691"
    #   }
    # @example Successful SendDataIntegrationEvent for inboundorderlineschedule event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.inboundorderlineschedule,
    #     data: "{\"id\": \"inbound-order-line-schedule-id-test-123\", \"order_id\": \"order-id-test-123\", \"order_line_id\": \"order-line-id-test-123\", \"product_id\": \"product-id-test-123\"}",
    #     event_group_id: "inboundOrderLineScheduleId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "5abba995-7735-4d1e-95c4-7cc93e48cf9f"
    #   }
    # @example Successful SendDataIntegrationEvent for forecast event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.forecast,
    #     data: "{\"snapshot_date\": \"1672470400000\", \"product_id\": \"product-id-test-123\", \"site_id\": \"site-id-test-123\", \"region_id\": \"region-id-test-123\", \"product_group_id\": \"product-group-id-test-123\", \"forecast_start_dttm\": \"1672470400000\", \"forecast_end_dttm\": \"1672470400000\" }",
    #     event_group_id: "forecastId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "29312d5b-f499-4dcd-b017-3dab3cd34d61"
    #   }
    # @example Successful SendDataIntegrationEvent for inventorylevel event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.inventorylevel,
    #     data: "{\"snapshot_date\": \"1672470400000\", \"site_id\": \"site-id-test-123\", \"product_id\": \"product-id-test-123\", \"on_hand_inventory\": \"100.0\", \"inv_condition\": \"good\", \"lot_number\": \"lot-number-test-123\"}",
    #     event_group_id: "inventoryLevelId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "3aa78324-acd8-4fdd-a19e-231ea003c2b3"
    #   }
    # @example Successful SendDataIntegrationEvent for outboundorderline event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.outboundorderline,
    #     data: "{\"id\": \"outbound-orderline-id-test-123\", \"cust_order_id\": \"cust-order-id-test-123\", \"product_id\": \"product-id-test-123\" }",
    #     event_group_id: "outboundOrderLineId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "959b7ef9-5e2d-4795-b1ca-5b16a3eb6b89"
    #   }
    # @example Successful SendDataIntegrationEvent for outboundshipment event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.outboundshipment,
    #     data: "{\"id\": \"outbound-shipment-id-test-123\", \"cust_order_id\": \"cust-order-id-test-123\", \"cust_order_line_id\": \"cust-order-line-id-test-123\", \"product_id\": \"product-id-test-123\" }",
    #     event_group_id: "outboundShipmentId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "59feded3-5e46-4126-81bf-0137ca176ee0"
    #   }
    # @example Successful SendDataIntegrationEvent for processheader event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.processheader,
    #     data: "{\"process_id\": \"process-id-test-123\" }",
    #     event_group_id: "processHeaderId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "564130eb-2d8a-4550-a768-ddf0daf7b4a9"
    #   }
    # @example Successful SendDataIntegrationEvent for processoperation event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.processoperation,
    #     data: "{\"process_operation_id\": \"process-operation-id-test-123\", \"process_id\": \"process-id-test-123\" }",
    #     event_group_id: "processOperationId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "db5df408-89c7-4b9f-a326-016f6c2b3396"
    #   }
    # @example Successful SendDataIntegrationEvent for processproduct event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.processproduct,
    #     data: "{\"process_product_id\": \"process-product-id-test-123\", \"process_id\": \"process-id-test-123\" }",
    #     event_group_id: "processProductId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "6929b275-485e-4035-a798-99077ca6d669"
    #   }
    # @example Successful SendDataIntegrationEvent for reservation event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.reservation,
    #     data: "{\"reservation_id\": \"reservation-id-test-123\", \"reservation_detail_id\": \"reservation-detail-id-test-123\" }",
    #     event_group_id: "reservationId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "f6c55a8b-fde2-44f6-848a-9b4336c77209"
    #   }
    # @example Successful SendDataIntegrationEvent for shipment event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.shipment,
    #     data: "{\"id\": \"shipment-id-test-123\", \"supplier_tpartner_id\": \"supplier-tpartner-id-test-123\", \"product_id\": \"product-id-test-123\", \"order_id\": \"order-id-test-123\", \"order_line_id\": \"order-line-id-test-123\", \"package_id\": \"package-id-test-123\" }",
    #     event_group_id: "shipmentId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "61d079d8-3f56-49bb-b35a-c0271a4e4f0a"
    #   }
    # @example Successful SendDataIntegrationEvent for shipmentstop event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.shipmentstop,
    #     data: "{\"shipment_stop_id\": \"shipment-stop-id-test-123\", \"shipment_id\": \"shipment-id-test-123\" }",
    #     event_group_id: "shipmentStopId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "3610992a-fc2f-4da4-9beb-724994622ba1"
    #   }
    # @example Successful SendDataIntegrationEvent for shipmentstoporder event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.shipmentstoporder,
    #     data: "{\"shipment_stop_order_id\": \"shipment-stop-order-id-test-123\", \"shipment_stop_id\": \"shipment-stop-id-test-123\", \"shipment_id\": \"shipment-id-test-123\" }",
    #     event_group_id: "shipmentStopOrderId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "1d550a60-9321-4d25-a132-9dd4b2d9e934"
    #   }
    # @example Successful SendDataIntegrationEvent for supplyplan event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.supplyplan,
    #     data: "{\"supply_plan_id\": \"supply-plan-id-test-123\" }",
    #     event_group_id: "supplyPlanId",
    #     event_timestamp: Time.parse(1515531081.123)
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "9abaee56-5dc4-4c31-8250-3206a651d8a1"
    #   }
    # @example Successful SendDataIntegrationEvent for dataset event type
    #   # Example operation for send_data_integration_event
    #   params = {
    #     instance_id: "8928ae12-15e5-4441-825d-ec2184f0a43a",
    #     event_type: scn.data.dataset,
    #     data: "{\"dataset_id\": \"datset-id-test-123\" }",
    #     event_group_id: "datasetId",
    #     event_timestamp: Time.parse(1515531081.123),
    #     dataset_target: {
    #       dataset_identifier: "arn:aws:scn:us-west-2:135808960812:instance/8928ae12-15e5-4441-825d-ec2184f0a43a/namespaces/asc/datasets/product",
    #       operation_type: APPEND
    #     }
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    #   response.to_h #=>
    #   {
    #     event_id: "19739c8e-cd2e-4cbc-a2f7-0dc43239f042"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     event_type: "scn.data.forecast" # One of: ["scn.data.forecast", "scn.data.inventorylevel", "scn.data.inboundorder", "scn.data.inboundorderline", "scn.data.inboundorderlineschedule", "scn.data.outboundorderline", "scn.data.outboundshipment", "scn.data.processheader", "scn.data.processoperation", "scn.data.processproduct", "scn.data.reservation", "scn.data.shipment", "scn.data.shipmentstop", "scn.data.shipmentstoporder", "scn.data.supplyplan", "scn.data.dataset"], # required
    #     data: "DataIntegrationEventData", # required
    #     event_group_id: "DataIntegrationEventGroupId", # required
    #     event_timestamp: Time.now,
    #     client_token: "ClientToken",
    #     dataset_target: {
    #       dataset_identifier: "DataIntegrationDatasetArn", # required
    #       operation_type: "APPEND" # One of: ["APPEND", "UPSERT", "DELETE"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.send_data_integration_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "UUID", # required
    #   }
    # @return [Types::SendDataIntegrationEventResponse]
    def send_data_integration_event(params = {}, options = {})
      request = build_request(:send_data_integration_event, params)
      request.send_request(options)
    end

    # <p>You can create tags during or after creating a resource such as instance, data flow, or dataset in AWS Supply chain. During the data ingestion process, you can add tags such as dev, test, or prod to data flows created during the data ingestion process in the AWS Supply Chain datasets.  You can use these tags to identify a group of resources or a single resource used by the developer.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs to be tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the Amazon Web Services Supply chain resource to be created.</p>
    # @example Successful TagResource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1",
    #     tags: {
    #       "tagKey1" => "tagValue1"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AscResourceArn", # required
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

    # <p>You can delete tags for an Amazon Web Services Supply chain resource such as instance, data flow, or dataset in AWS Supply Chain. During the data ingestion process, you can delete tags such as dev, test, or prod to data flows created during the data ingestion process in the AWS Supply Chain datasets. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Web Services Supply chain resource ARN that needs to be untagged.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to be deleted for an Amazon Web Services Supply Chain resource.</p>
    # @example Successful UntagResource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/data-integration-flows/my_flow1",
    #     tag_keys: [
    #       "tagKey1"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AscResourceArn", # required
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

    # <p>Enables you to programmatically update an existing data pipeline to ingest data from the source systems such as, Amazon S3 buckets, to a predefined Amazon Web Services Supply Chain dataset (product, inbound_order) or a temporary dataset along with the data transformation query provided with the API.</p>
    # @param [Hash, Types::UpdateDataIntegrationFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Supply Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the DataIntegrationFlow to be updated.</p>
    # @option params [Array<Types::DataIntegrationFlowSource>] :sources
    #   <p>The new source configurations for the DataIntegrationFlow.</p>
    # @option params [Types::DataIntegrationFlowTransformation] :transformation
    #   <p>The new transformation configurations for the DataIntegrationFlow.</p>
    # @option params [Types::DataIntegrationFlowTarget] :target
    #   <p>The new target configurations for the DataIntegrationFlow.</p>
    # @example Successful UpdateDataIntegrationFlow for s3 to dataset flow to update SQL transformation
    #   # Example operation for update_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "testStagingFlow",
    #     sources: [
    #       {
    #         source_type: S3,
    #         source_name: "testSourceName",
    #         s3_source: {
    #           bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f",
    #           prefix: "example-prefix"
    #         }
    #       }
    #     ],
    #     transformation: {
    #       transformation_type: SQL,
    #       sql_transformation: {
    #         query: "SELECT connection_id, bukrs AS id, txtmd AS description FROM testSourceName WHERE langu = 'E'"
    #       }
    #     },
    #     target: {
    #       target_type: DATASET,
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     flow: {
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #       name: "testStagingFlow",
    #       sources: [
    #         {
    #           source_type: S3,
    #           source_name: "testSourceName",
    #           s3_source: {
    #             bucket_name: "aws-supply-chain-data-b8c7bb28-a576-4334-b481-6d6e8e47371f",
    #             prefix: "example-prefix"
    #           }
    #         }
    #       ],
    #       target: {
    #         target_type: DATASET,
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset"
    #         }
    #       },
    #       transformation: {
    #         transformation_type: SQL,
    #         sql_transformation: {
    #           query: "SELECT connection_id, bukrs AS id, txtmd AS description FROM testSourceName WHERE langu = 'E'"
    #         }
    #       },
    #       created_time: Time.parse(1724956400.44),
    #       last_modified_time: Time.parse(1732456405.77)
    #     }
    #   }
    # @example Successful UpdateDataIntegrationFlow for dataset to dataset flow to update sources
    #   # Example operation for update_data_integration_flow
    #   params = {
    #     instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #     name: "trading-partner",
    #     sources: [
    #       {
    #         source_type: DATASET,
    #         source_name: "testSourceName1",
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1"
    #         }
    #       },
    #       {
    #         source_type: DATASET,
    #         source_name: "testSourceName2",
    #         dataset_source: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2_updated"
    #         }
    #       }
    #     ],
    #     transformation: {
    #       transformation_type: SQL,
    #       sql_transformation: {
    #         query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id"
    #       }
    #     },
    #     target: {
    #       target_type: DATASET,
    #       dataset_target: {
    #         dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner",
    #         options: {
    #           load_type: REPLACE,
    #           dedupe_records: true,
    #           dedupe_strategy: {
    #             type: FIELD_PRIORITY,
    #             field_priority: {
    #               fields: [
    #                 {
    #                   name: "eff_start_date",
    #                   sort_order: ASC
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_integration_flow(params, options)
    #   response.to_h #=>
    #   {
    #     flow: {
    #       instance_id: "8850c54e-e187-4fa7-89d4-6370f165174d",
    #       name: "trading-partner",
    #       sources: [
    #         {
    #           source_type: DATASET,
    #           source_name: "testSourceName1",
    #           dataset_source: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset1"
    #           }
    #         },
    #         {
    #           source_type: DATASET,
    #           source_name: "testSourceName2",
    #           dataset_source: {
    #             dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/default/datasets/my_staging_dataset2_updated"
    #           }
    #         }
    #       ],
    #       transformation: {
    #         transformation_type: SQL,
    #         sql_transformation: {
    #           query: "SELECT S1.id AS id, S1.poc_org_unit_description AS description, S1.company_id AS company_id, S1.tpartner_type AS tpartner_type, S1.geo_id AS geo_id, S1.eff_start_date AS eff_start_date, S1.eff_end_date AS eff_end_date FROM testSourceName1 AS S1 LEFT JOIN testSourceName2 as S2 ON S1.id=S2.id"
    #         }
    #       },
    #       target: {
    #         target_type: DATASET,
    #         dataset_target: {
    #           dataset_identifier: "arn:aws:scn:us-east-1:123456789012:instance/8850c54e-e187-4fa7-89d4-6370f165174d/namespaces/asc/datasets/trading_partner",
    #           options: {
    #             load_type: REPLACE,
    #             dedupe_records: true,
    #             dedupe_strategy: {
    #               type: FIELD_PRIORITY,
    #               field_priority: {
    #                 fields: [
    #                   {
    #                     name: "eff_start_date",
    #                     sort_order: ASC
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       created_time: Time.parse(1724956400.44),
    #       last_modified_time: Time.parse(1732456405.77)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataIntegrationFlowName", # required
    #     sources: [
    #       {
    #         source_type: "S3" # One of: ["S3", "DATASET"], # required
    #         source_name: "DataIntegrationFlowSourceName", # required
    #         s3_source: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #           }
    #         },
    #         dataset_source: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #             dedupe_records: false,
    #             dedupe_strategy: {
    #               type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #               field_priority: {
    #                 fields: [ # required
    #                   {
    #                     name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                     sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     transformation: {
    #       transformation_type: "SQL" # One of: ["SQL", "NONE"], # required
    #       sql_transformation: {
    #         query: "DataIntegrationFlowSQLQuery", # required
    #       }
    #     },
    #     target: {
    #       target_type: "S3" # One of: ["S3", "DATASET"], # required
    #       s3_target: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "DataIntegrationFlowS3Prefix", # required
    #         options: {
    #           file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #         }
    #       },
    #       dataset_target: {
    #         dataset_identifier: "DatasetIdentifier", # required
    #         options: {
    #           load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #           dedupe_records: false,
    #           dedupe_strategy: {
    #             type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #             field_priority: {
    #               fields: [ # required
    #                 {
    #                   name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                   sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_integration_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow: { # required
    #       instance_id: "UUID", # required
    #       name: "DataIntegrationFlowName", # required
    #       sources: [ # required
    #         {
    #           source_type: "S3" # One of: ["S3", "DATASET"], # required
    #           source_name: "DataIntegrationFlowSourceName", # required
    #           s3_source: {
    #             bucket_name: "S3BucketName", # required
    #             prefix: "DataIntegrationFlowS3Prefix", # required
    #             options: {
    #               file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #             }
    #           },
    #           dataset_source: {
    #             dataset_identifier: "DatasetIdentifier", # required
    #             options: {
    #               load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #               dedupe_records: false,
    #               dedupe_strategy: {
    #                 type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #                 field_priority: {
    #                   fields: [ # required
    #                     {
    #                       name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                       sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       transformation: { # required
    #         transformation_type: "SQL" # One of: ["SQL", "NONE"], # required
    #         sql_transformation: {
    #           query: "DataIntegrationFlowSQLQuery", # required
    #         }
    #       },
    #       target: { # required
    #         target_type: "S3" # One of: ["S3", "DATASET"], # required
    #         s3_target: {
    #           bucket_name: "S3BucketName", # required
    #           prefix: "DataIntegrationFlowS3Prefix", # required
    #           options: {
    #             file_type: "CSV" # One of: ["CSV", "PARQUET", "JSON"]
    #           }
    #         },
    #         dataset_target: {
    #           dataset_identifier: "DatasetIdentifier", # required
    #           options: {
    #             load_type: "INCREMENTAL" # One of: ["INCREMENTAL", "REPLACE"],
    #             dedupe_records: false,
    #             dedupe_strategy: {
    #               type: "FIELD_PRIORITY" # One of: ["FIELD_PRIORITY"], # required
    #               field_priority: {
    #                 fields: [ # required
    #                   {
    #                     name: "DataIntegrationFlowFieldPriorityDedupeFieldName", # required
    #                     sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateDataIntegrationFlowResponse]
    def update_data_integration_flow(params = {}, options = {})
      request = build_request(:update_data_integration_flow, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically update an Amazon Web Services Supply Chain data lake dataset. Developers can update the description of a data lake dataset for a given instance ID, namespace, and dataset name.</p>
    # @param [Hash, Types::UpdateDataLakeDatasetRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Chain instance identifier.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the dataset, besides the custom defined namespace, every instance comes with below pre-defined namespaces:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>asc</b> - For information on the  Amazon Web Services Supply Chain supported datasets see <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>default</b> - For datasets with custom user-defined schemas.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the dataset. For <b>asc</b> namespace, the name must be one of the supported data entities under <a href="https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html">https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html</a>.</p>
    # @option params [String] :description
    #   <p>The updated description of the data lake dataset.</p>
    # @example Update description of an existing AWS Supply Chain inbound order dataset
    #   # Example operation for update_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "asc",
    #     name: "inbound_order",
    #     description: "This is an updated AWS Supply Chain inbound order dataset"
    #   }
    #   options = {}
    #   response = client.update_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/asc/datasets/inbound_order",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "asc",
    #       name: "inbound_order",
    #       description: "This is an updated AWS Supply Chain inbound order dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727117453.568),
    #       schema: {
    #         name: "InboundOrder",
    #         fields: [
    #           {
    #             name: "id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "tpartner_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "connection_id",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "order_type",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_status",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "inbound_order_url",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_creation_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "company_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "to_site_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "order_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "vendor_currency_uom",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "exchange_rate_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_1",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "incoterm_location_2",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "submitted_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_start_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_end_date",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "shipping_instr_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "payment_terms_code",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "std_terms_agreement_ver",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "agreement_number",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "source_update_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "source_event_id",
    #             type: STRING,
    #             is_required: false
    #           },
    #           {
    #             name: "db_creation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "db_updation_dttm",
    #             type: TIMESTAMP,
    #             is_required: false
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Update description of an existing custom dataset
    #   # Example operation for update_data_lake_dataset
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     namespace: "default",
    #     name: "my_dataset",
    #     description: "This is an updated custom dataset"
    #   }
    #   options = {}
    #   response = client.update_data_lake_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/default/datasets/my_dataset",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       namespace: "default",
    #       name: "my_dataset",
    #       description: "This is an updated custom dataset",
    #       created_time: Time.parse(1727116807.751),
    #       last_modified_time: Time.parse(1727117453.568),
    #       schema: {
    #         name: "MyDataset",
    #         fields: [
    #           {
    #             name: "id",
    #             type: INT,
    #             is_required: true
    #           },
    #           {
    #             name: "description",
    #             type: STRING,
    #             is_required: true
    #           },
    #           {
    #             name: "price",
    #             type: DOUBLE,
    #             is_required: false
    #           },
    #           {
    #             name: "creation_time",
    #             type: TIMESTAMP,
    #             is_required: false
    #           },
    #           {
    #             name: "quantity",
    #             type: LONG,
    #             is_required: false
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "id"
    #           }
    #         ]
    #       },
    #       partition_spec: {
    #         fields: [
    #           {
    #             name: "creation_time",
    #             transform: {
    #               type: DAY
    #             }
    #           },
    #           {
    #             name: "description",
    #             transform: {
    #               type: IDENTITY
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     namespace: "DataLakeNamespaceName", # required
    #     name: "DataLakeDatasetName", # required
    #     description: "DataLakeDatasetDescription"
    #   }
    #   options = {}
    #   response = client.update_data_lake_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset: { # required
    #       instance_id: "UUID", # required
    #       namespace: "DataLakeNamespaceName", # required
    #       name: "DataLakeDatasetName", # required
    #       arn: "AscResourceArn", # required
    #       schema: { # required
    #         name: "DataLakeDatasetSchemaName", # required
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             type: "INT" # One of: ["INT", "DOUBLE", "STRING", "TIMESTAMP", "LONG"], # required
    #             is_required: false, # required
    #           }
    #         ],
    #         primary_keys: [
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #           }
    #         ]
    #       },
    #       description: "DataLakeDatasetDescription",
    #       partition_spec: {
    #         fields: [ # required
    #           {
    #             name: "DataLakeDatasetSchemaFieldName", # required
    #             transform: { # required
    #               type: "YEAR" # One of: ["YEAR", "MONTH", "DAY", "HOUR", "IDENTITY"], # required
    #             }
    #           }
    #         ]
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateDataLakeDatasetResponse]
    def update_data_lake_dataset(params = {}, options = {})
      request = build_request(:update_data_lake_dataset, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically update an Amazon Web Services Supply Chain data lake namespace. Developers can update the description of a data lake namespace for a given instance ID and namespace name.</p>
    # @param [Hash, Types::UpdateDataLakeNamespaceRequest] params
    # @option params [String] :instance_id
    #   <p>The Amazon Web Services Chain instance identifier.</p>
    # @option params [String] :name
    #   <p>The name of the namespace. Noted you cannot update namespace with name starting with <b>asc</b>, <b>default</b>, <b>scn</b>, <b>aws</b>, <b>amazon</b>, <b>amzn</b>
    #            </p>
    # @option params [String] :description
    #   <p>The updated description of the data lake namespace.</p>
    # @example Update description of an existing AWS Supply Chain namespace
    #   # Example operation for update_data_lake_namespace
    #   params = {
    #     instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #     name: "my_namespace",
    #     description: "This is an updated AWS Supply Chain namespace"
    #   }
    #   options = {}
    #   response = client.update_data_lake_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       arn: "arn:aws:scn:us-east-1:012345678910:instance/1877dd20-dee9-4639-8e99-cb67acf21fe5/namespaces/my_namespace",
    #       instance_id: "1877dd20-dee9-4639-8e99-cb67acf21fe5",
    #       name: "my_namespace",
    #       description: "This is an updated AWS Supply Chain namespace",
    #       created_time: Time.parse(1736892560.751),
    #       last_modified_time: Time.parse(1736892586.156)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     name: "DataLakeNamespaceName", # required
    #     description: "DataLakeNamespaceDescription"
    #   }
    #   options = {}
    #   response = client.update_data_lake_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       instance_id: "UUID", # required
    #       name: "DataLakeNamespaceName", # required
    #       arn: "AscResourceArn", # required
    #       description: "DataLakeNamespaceDescription",
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateDataLakeNamespaceResponse]
    def update_data_lake_namespace(params = {}, options = {})
      request = build_request(:update_data_lake_namespace, params)
      request.send_request(options)
    end

    # <p>Enables you to programmatically update an Amazon Web Services Supply Chain instance description by providing all the relevant information such as account ID, instance ID and so on without using the AWS console.</p>
    # @param [Hash, Types::UpdateInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The AWS Supply Chain instance identifier.</p>
    # @option params [String] :instance_name
    #   <p>The AWS Supply Chain instance name.</p>
    # @option params [String] :instance_description
    #   <p>The AWS Supply Chain instance description.</p>
    # @example Successful UpdateInstance request
    #   # Example operation for update_instance
    #   params = {
    #     instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #     instance_name: "updated example instance name",
    #     instance_description: "updated example instance description"
    #   }
    #   options = {}
    #   response = client.update_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       instance_id: "9e193580-7cc5-45f7-9609-c43ba0ada793",
    #       aws_account_id: "123456789012",
    #       state: Active,
    #       created_time: Time.parse(172615383136),
    #       last_modified_time: Time.parse(172615383136),
    #       instance_name: "updated example instance name",
    #       instance_description: "updated example instance description",
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b14ffc39-b7d4-45ab-991a-6257a7f0d24d",
    #       version_number: 2.0
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "UUID", # required
    #     instance_name: "InstanceName",
    #     instance_description: "InstanceDescription"
    #   }
    #   options = {}
    #   response = client.update_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: { # required
    #       instance_id: "UUID", # required
    #       aws_account_id: "AwsAccountId", # required
    #       state: "Initializing" # One of: ["Initializing", "Active", "CreateFailed", "DeleteFailed", "Deleting", "Deleted"], # required
    #       error_message: "String",
    #       web_app_dns_domain: "InstanceWebAppDnsDomain",
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       instance_name: "InstanceName",
    #       instance_description: "InstanceDescription",
    #       kms_key_arn: "KmsKeyArn",
    #       version_number: 1.0
    #     }
    #   }
    # @return [Types::UpdateInstanceResponse]
    def update_instance(params = {}, options = {})
      request = build_request(:update_instance, params)
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
      context[:gem_name] = 'aws-sdk-supplychain'
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
