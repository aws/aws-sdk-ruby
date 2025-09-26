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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::SageMakerGeospatial
  # An API client for Aws::SageMakerGeospatial.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SageMakerGeospatial

    add_plugin(::Aws::SageMakerGeospatial::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::SageMakerGeospatial::EndpointProvider] :endpoint_provider
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

    # <p>Use this operation to delete an Earth Observation job.</p>
    # @param [Hash, Types::DeleteEarthObservationJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EarthObservationJobArn", # required
    #   }
    #   options = {}
    #   response = client.delete_earth_observation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEarthObservationJobOutput]
    def delete_earth_observation_job(params = {}, options = {})
      request = build_request(:delete_earth_observation_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to delete a Vector Enrichment job.</p>
    # @param [Hash, Types::DeleteVectorEnrichmentJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VectorEnrichmentJobArn", # required
    #   }
    #   options = {}
    #   response = client.delete_vector_enrichment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVectorEnrichmentJobOutput]
    def delete_vector_enrichment_job(params = {}, options = {})
      request = build_request(:delete_vector_enrichment_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to export results of an Earth Observation job and optionally source images used as input to the EOJ to an Amazon S3 location.</p>
    # @param [Hash, Types::ExportEarthObservationJobOperationInput] params
    # @option params [String] :arn
    #   <p>The input Amazon Resource Name (ARN) of the Earth Observation job being exported.</p>
    # @option params [String] :client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    # @option params [Types::OutputConfigInput] :output_config
    #   <p>An object containing information about the output file.</p>
    # @option params [Boolean] :export_source_images
    #   <p>The source images provided to the Earth Observation job being exported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EarthObservationJobArn", # required
    #     client_token: "String",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     output_config: { # required
    #       s3_data: { # required
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKey"
    #       }
    #     },
    #     export_source_images: false
    #   }
    #   options = {}
    #   response = client.export_earth_observation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EarthObservationJobArn", # required
    #     creation_time: Time.now, # required
    #     export_status: "EarthObservationJobExportStatus", # required
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     output_config: { # required
    #       s3_data: { # required
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKey"
    #       }
    #     },
    #     export_source_images: false
    #   }
    # @return [Types::ExportEarthObservationJobOperationOutput]
    def export_earth_observation_job(params = {}, options = {})
      request = build_request(:export_earth_observation_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to copy results of a Vector Enrichment job to an Amazon S3 location.</p>
    # @param [Hash, Types::ExportVectorEnrichmentJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    # @option params [String] :client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM rolewith permission to upload to the location in OutputConfig.</p>
    # @option params [Types::ExportVectorEnrichmentJobOutputConfig] :output_config
    #   <p>Output location information for exporting Vector Enrichment Job results.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VectorEnrichmentJobArn", # required
    #     client_token: "String",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     output_config: { # required
    #       s3_data: { # required
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKey"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.export_vector_enrichment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "VectorEnrichmentJobArn", # required
    #     creation_time: Time.now, # required
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     export_status: "VectorEnrichmentJobExportStatus", # required
    #     output_config: { # required
    #       s3_data: { # required
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKey"
    #       }
    #     }
    #   }
    # @return [Types::ExportVectorEnrichmentJobOutput]
    def export_vector_enrichment_job(params = {}, options = {})
      request = build_request(:export_vector_enrichment_job, params)
      request.send_request(options)
    end

    # <p>Get the details for a previously initiated Earth Observation job.</p>
    # @param [Hash, Types::GetEarthObservationJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EarthObservationJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_earth_observation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     name: "String", # required
    #     creation_time: Time.now, # required
    #     duration_in_seconds: 1, # required
    #     status: "EarthObservationJobStatus", # required
    #     kms_key_id: "KmsKey",
    #     input_config: { # required
    #       previous_earth_observation_job_arn: "EarthObservationJobArn",
    #       raster_data_collection_query: {
    #         raster_data_collection_arn: "DataCollectionArn", # required
    #         raster_data_collection_name: "String", # required
    #         time_range_filter: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         area_of_interest: {
    #           # One of:
    #           area_of_interest_geometry: {
    #             # One of:
    #             polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [1.0]
    #                 ]
    #               ]
    #             },
    #             multi_polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [
    #                     [1.0]
    #                   ]
    #                 ]
    #               ]
    #             }
    #           }
    #         },
    #         property_filters: {
    #           properties: [
    #             {
    #               property: { # required
    #                 # One of:
    #                 eo_cloud_cover: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_off_nadir: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_azimuth: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_elevation: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 platform: {
    #                   value: "String", # required
    #                   comparison_operator: "ComparisonOperator"
    #                 },
    #                 landsat_cloud_cover_land: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 }
    #               }
    #             }
    #           ],
    #           logical_operator: "LogicalOperator"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       band_math_config: {
    #         predefined_indices: ["String"],
    #         custom_indices: {
    #           operations: [
    #             {
    #               name: "String", # required
    #               equation: "String", # required
    #               output_type: "OutputType"
    #             }
    #           ]
    #         }
    #       },
    #       resampling_config: {
    #         output_resolution: { # required
    #           user_defined: { # required
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         algorithm_name: "AlgorithmNameResampling",
    #         target_bands: ["String"]
    #       },
    #       temporal_statistics_config: {
    #         group_by: "GroupBy",
    #         statistics: ["TemporalStatistics"], # required
    #         target_bands: ["String"]
    #       },
    #       cloud_removal_config: {
    #         algorithm_name: "AlgorithmNameCloudRemoval",
    #         interpolation_value: "String",
    #         target_bands: ["String"]
    #       },
    #       zonal_statistics_config: {
    #         zone_s3_path: "S3Uri", # required
    #         statistics: ["ZonalStatistics"], # required
    #         target_bands: ["String"],
    #         zone_s3_path_kms_key_id: "KmsKey"
    #       },
    #       geo_mosaic_config: {
    #         algorithm_name: "AlgorithmNameGeoMosaic",
    #         target_bands: ["String"]
    #       },
    #       stack_config: {
    #         output_resolution: {
    #           predefined: "PredefinedResolution",
    #           user_defined: {
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         target_bands: ["String"]
    #       },
    #       cloud_masking_config: {
    #       },
    #       land_cover_segmentation_config: {
    #       }
    #     },
    #     output_bands: [
    #       {
    #         band_name: "String", # required
    #         output_data_type: "OutputType", # required
    #       }
    #     ],
    #     execution_role_arn: "ExecutionRoleArn",
    #     error_details: {
    #       type: "EarthObservationJobErrorType",
    #       message: "String"
    #     },
    #     export_status: "EarthObservationJobExportStatus",
    #     export_error_details: {
    #       export_results: {
    #         type: "ExportErrorType",
    #         message: "String"
    #       },
    #       export_source_images: {
    #         type: "ExportErrorType",
    #         message: "String"
    #       }
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetEarthObservationJobOutput]
    def get_earth_observation_job(params = {}, options = {})
      request = build_request(:get_earth_observation_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to get details of a specific raster data collection.</p>
    # @param [Hash, Types::GetRasterDataCollectionOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "DataCollectionArn", # required
    #   }
    #   options = {}
    #   response = client.get_raster_data_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     arn: "DataCollectionArn", # required
    #     type: "DataCollectionType", # required
    #     description: "String", # required
    #     description_page_url: "String", # required
    #     supported_filters: [ # required
    #       {
    #         name: "String", # required
    #         type: "String", # required
    #         minimum: 1.0,
    #         maximum: 1.0
    #       }
    #     ],
    #     image_source_bands: ["String"], # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetRasterDataCollectionOperationOutput]
    def get_raster_data_collection(params = {}, options = {})
      request = build_request(:get_raster_data_collection, params)
      request.send_request(options)
    end

    # <p>Gets a web mercator tile for the given Earth Observation job.</p>
    # @param [Hash, Types::GetTileInput] params
    # @option params [Integer] :x
    #   <p>The x coordinate of the tile input.</p>
    # @option params [Integer] :y
    #   <p>The y coordinate of the tile input.</p>
    # @option params [Integer] :z
    #   <p>The z coordinate of the tile input.</p>
    # @option params [Array<String>] :image_assets
    #   <p>The particular assets or bands to tile.</p>
    # @option params [String] :target
    #   <p>Determines what part of the Earth Observation job to tile. 'INPUT' or 'OUTPUT' are the valid options.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the tile operation.</p>
    # @option params [Boolean] :image_mask
    #   <p>Determines whether or not to return a valid data mask.</p>
    # @option params [String] :output_format
    #   <p>The data format of the output tile. The formats include .npy, .png and .jpg.</p>
    # @option params [String] :time_range_filter
    #   <p>Time range filter applied to imagery to find the images to tile.</p>
    # @option params [String] :property_filters
    #   <p>Property filters for the imagery to tile.</p>
    # @option params [String] :output_data_type
    #   <p>The output data type of the tile operation.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specify.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     x: 1, # required
    #     y: 1, # required
    #     z: 1, # required
    #     image_assets: ["String"], # required
    #     target: "TargetOptions", # required
    #     arn: "EarthObservationJobArn", # required
    #     image_mask: false,
    #     output_format: "String",
    #     time_range_filter: "String",
    #     property_filters: "String",
    #     output_data_type: "OutputType",
    #     execution_role_arn: "ExecutionRoleArn"
    #   }
    #   options = {}
    #   response = client.get_tile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     binary_file: File.read("source_file")
    #   }
    # @return [Types::GetTileOutput]
    def get_tile(params = {}, options = {})
      request = build_request(:get_tile, params)
      request.send_request(options)
    end

    # <p>Retrieves details of a Vector Enrichment Job for a given job Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::GetVectorEnrichmentJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VectorEnrichmentJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_vector_enrichment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String", # required
    #     type: "VectorEnrichmentJobType", # required
    #     name: "String", # required
    #     creation_time: Time.now, # required
    #     duration_in_seconds: 1, # required
    #     status: "VectorEnrichmentJobStatus", # required
    #     kms_key_id: "KmsKey",
    #     input_config: { # required
    #       document_type: "VectorEnrichmentJobDocumentType", # required
    #       data_source_config: { # required
    #         # One of:
    #         s3_data: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKey"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       reverse_geocoding_config: {
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #       },
    #       map_matching_config: {
    #         id_attribute_name: "String", # required
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #         timestamp_attribute_name: "String", # required
    #       }
    #     },
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     error_details: {
    #       error_type: "VectorEnrichmentJobErrorType",
    #       error_message: "String"
    #     },
    #     export_status: "VectorEnrichmentJobExportStatus",
    #     export_error_details: {
    #       type: "VectorEnrichmentJobExportErrorType",
    #       message: "String"
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetVectorEnrichmentJobOutput]
    def get_vector_enrichment_job(params = {}, options = {})
      request = build_request(:get_vector_enrichment_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to get a list of the Earth Observation jobs associated with the calling Amazon Web Services account.</p>
    # @param [Hash, Types::ListEarthObservationJobsInput] params
    # @option params [String] :status_equals
    #   <p>A filter that retrieves only jobs with a specific status.</p>
    # @option params [String] :sort_order
    #   <p>An optional value that specifies whether you want the results sorted in <code>Ascending</code> or <code>Descending</code> order.</p>
    # @option params [String] :sort_by
    #   <p>The parameter by which to sort the results.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status_equals: "EarthObservationJobStatus",
    #     sort_order: "SortOrder",
    #     sort_by: "String",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_earth_observation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     earth_observation_job_summaries: [ # required
    #       {
    #         arn: "String", # required
    #         name: "String", # required
    #         creation_time: Time.now, # required
    #         duration_in_seconds: 1, # required
    #         status: "EarthObservationJobStatus", # required
    #         operation_type: "String", # required
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEarthObservationJobsOutput]
    def list_earth_observation_jobs(params = {}, options = {})
      request = build_request(:list_earth_observation_jobs, params)
      request.send_request(options)
    end

    # <p>Use this operation to get raster data collections.</p>
    # @param [Hash, Types::ListRasterDataCollectionsOperationInput] params
    # @option params [String] :next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_raster_data_collections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     raster_data_collection_summaries: [ # required
    #       {
    #         name: "String", # required
    #         arn: "DataCollectionArn", # required
    #         type: "DataCollectionType", # required
    #         description: "String", # required
    #         description_page_url: "String",
    #         supported_filters: [ # required
    #           {
    #             name: "String", # required
    #             type: "String", # required
    #             minimum: 1.0,
    #             maximum: 1.0
    #           }
    #         ],
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRasterDataCollectionsOperationOutput]
    def list_raster_data_collections(params = {}, options = {})
      request = build_request(:list_raster_data_collections, params)
      request.send_request(options)
    end

    # <p>Lists the tags attached to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag.</p>
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
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of vector enrichment jobs.</p>
    # @param [Hash, Types::ListVectorEnrichmentJobsInput] params
    # @option params [String] :status_equals
    #   <p>A filter that retrieves only jobs with a specific status.</p>
    # @option params [String] :sort_order
    #   <p>An optional value that specifies whether you want the results sorted in <code>Ascending</code> or <code>Descending</code> order.</p>
    # @option params [String] :sort_by
    #   <p>The parameter by which to sort the results.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status_equals: "String",
    #     sort_order: "SortOrder",
    #     sort_by: "String",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_vector_enrichment_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vector_enrichment_job_summaries: [ # required
    #       {
    #         arn: "VectorEnrichmentJobArn", # required
    #         name: "String", # required
    #         type: "VectorEnrichmentJobType", # required
    #         creation_time: Time.now, # required
    #         duration_in_seconds: 1, # required
    #         status: "VectorEnrichmentJobStatus", # required
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVectorEnrichmentJobsOutput]
    def list_vector_enrichment_jobs(params = {}, options = {})
      request = build_request(:list_vector_enrichment_jobs, params)
      request.send_request(options)
    end

    # <p>Allows you run image query on a specific raster data collection to get a list of the satellite imagery matching the selected filters.</p>
    # @param [Hash, Types::SearchRasterDataCollectionInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    # @option params [Types::RasterDataCollectionQueryWithBandFilterInput] :raster_data_collection_query
    #   <p>RasterDataCollectionQuery consisting of <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_AreaOfInterest.html">AreaOfInterest(AOI)</a>, <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_PropertyFilter.html">PropertyFilters</a> and 
    #         <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_TimeRangeFilterInput.html">TimeRangeFilterInput</a> used in <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_SearchRasterDataCollection.html">SearchRasterDataCollection</a>.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "DataCollectionArn", # required
    #     raster_data_collection_query: { # required
    #       time_range_filter: { # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       },
    #       area_of_interest: {
    #         # One of:
    #         area_of_interest_geometry: {
    #           # One of:
    #           polygon_geometry: {
    #             coordinates: [ # required
    #               [
    #                 [1.0]
    #               ]
    #             ]
    #           },
    #           multi_polygon_geometry: {
    #             coordinates: [ # required
    #               [
    #                 [
    #                   [1.0]
    #                 ]
    #               ]
    #             ]
    #           }
    #         }
    #       },
    #       property_filters: {
    #         properties: [
    #           {
    #             property: { # required
    #               # One of:
    #               eo_cloud_cover: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               view_off_nadir: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               view_sun_azimuth: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               view_sun_elevation: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               platform: {
    #                 value: "String", # required
    #                 comparison_operator: "ComparisonOperator"
    #               },
    #               landsat_cloud_cover_land: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               }
    #             }
    #           }
    #         ],
    #         logical_operator: "LogicalOperator"
    #       },
    #       band_filter: ["String"]
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_raster_data_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approximate_result_count: 1, # required
    #     next_token: "NextToken",
    #     items: [
    #       {
    #         id: "String", # required
    #         geometry: { # required
    #           type: "String", # required
    #           coordinates: [ # required
    #             [
    #               [1.0]
    #             ]
    #           ]
    #         },
    #         assets: {
    #           "String" => {
    #             href: "String"
    #           }
    #         },
    #         date_time: Time.now, # required
    #         properties: {
    #           eo_cloud_cover: 1.0,
    #           view_off_nadir: 1.0,
    #           view_sun_azimuth: 1.0,
    #           view_sun_elevation: 1.0,
    #           platform: "String",
    #           landsat_cloud_cover_land: 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::SearchRasterDataCollectionOutput]
    def search_raster_data_collection(params = {}, options = {})
      request = build_request(:search_raster_data_collection, params)
      request.send_request(options)
    end

    # <p>Use this operation to create an Earth observation job.</p>
    # @param [Hash, Types::StartEarthObservationJobInput] params
    # @option params [String] :name
    #   <p>The name of the Earth Observation job.</p>
    # @option params [String] :client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    # @option params [Types::InputConfigInput] :input_config
    #   <p>Input configuration information for the Earth Observation job.</p>
    # @option params [Types::JobConfigInput] :job_config
    #   <p>An object containing information about the job configuration.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a key and a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     client_token: "String",
    #     kms_key_id: "KmsKey",
    #     input_config: { # required
    #       previous_earth_observation_job_arn: "EarthObservationJobArn",
    #       raster_data_collection_query: {
    #         raster_data_collection_arn: "DataCollectionArn", # required
    #         time_range_filter: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         area_of_interest: {
    #           # One of:
    #           area_of_interest_geometry: {
    #             # One of:
    #             polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [1.0]
    #                 ]
    #               ]
    #             },
    #             multi_polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [
    #                     [1.0]
    #                   ]
    #                 ]
    #               ]
    #             }
    #           }
    #         },
    #         property_filters: {
    #           properties: [
    #             {
    #               property: { # required
    #                 # One of:
    #                 eo_cloud_cover: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_off_nadir: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_azimuth: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_elevation: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 platform: {
    #                   value: "String", # required
    #                   comparison_operator: "ComparisonOperator"
    #                 },
    #                 landsat_cloud_cover_land: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 }
    #               }
    #             }
    #           ],
    #           logical_operator: "LogicalOperator"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       band_math_config: {
    #         predefined_indices: ["String"],
    #         custom_indices: {
    #           operations: [
    #             {
    #               name: "String", # required
    #               equation: "String", # required
    #               output_type: "OutputType"
    #             }
    #           ]
    #         }
    #       },
    #       resampling_config: {
    #         output_resolution: { # required
    #           user_defined: { # required
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         algorithm_name: "AlgorithmNameResampling",
    #         target_bands: ["String"]
    #       },
    #       temporal_statistics_config: {
    #         group_by: "GroupBy",
    #         statistics: ["TemporalStatistics"], # required
    #         target_bands: ["String"]
    #       },
    #       cloud_removal_config: {
    #         algorithm_name: "AlgorithmNameCloudRemoval",
    #         interpolation_value: "String",
    #         target_bands: ["String"]
    #       },
    #       zonal_statistics_config: {
    #         zone_s3_path: "S3Uri", # required
    #         statistics: ["ZonalStatistics"], # required
    #         target_bands: ["String"],
    #         zone_s3_path_kms_key_id: "KmsKey"
    #       },
    #       geo_mosaic_config: {
    #         algorithm_name: "AlgorithmNameGeoMosaic",
    #         target_bands: ["String"]
    #       },
    #       stack_config: {
    #         output_resolution: {
    #           predefined: "PredefinedResolution",
    #           user_defined: {
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         target_bands: ["String"]
    #       },
    #       cloud_masking_config: {
    #       },
    #       land_cover_segmentation_config: {
    #       }
    #     },
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_earth_observation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     arn: "String", # required
    #     creation_time: Time.now, # required
    #     duration_in_seconds: 1, # required
    #     status: "EarthObservationJobStatus", # required
    #     kms_key_id: "KmsKey",
    #     input_config: {
    #       previous_earth_observation_job_arn: "EarthObservationJobArn",
    #       raster_data_collection_query: {
    #         raster_data_collection_arn: "DataCollectionArn", # required
    #         raster_data_collection_name: "String", # required
    #         time_range_filter: { # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         area_of_interest: {
    #           # One of:
    #           area_of_interest_geometry: {
    #             # One of:
    #             polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [1.0]
    #                 ]
    #               ]
    #             },
    #             multi_polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [
    #                     [1.0]
    #                   ]
    #                 ]
    #               ]
    #             }
    #           }
    #         },
    #         property_filters: {
    #           properties: [
    #             {
    #               property: { # required
    #                 # One of:
    #                 eo_cloud_cover: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_off_nadir: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_azimuth: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_elevation: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 platform: {
    #                   value: "String", # required
    #                   comparison_operator: "ComparisonOperator"
    #                 },
    #                 landsat_cloud_cover_land: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 }
    #               }
    #             }
    #           ],
    #           logical_operator: "LogicalOperator"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       band_math_config: {
    #         predefined_indices: ["String"],
    #         custom_indices: {
    #           operations: [
    #             {
    #               name: "String", # required
    #               equation: "String", # required
    #               output_type: "OutputType"
    #             }
    #           ]
    #         }
    #       },
    #       resampling_config: {
    #         output_resolution: { # required
    #           user_defined: { # required
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         algorithm_name: "AlgorithmNameResampling",
    #         target_bands: ["String"]
    #       },
    #       temporal_statistics_config: {
    #         group_by: "GroupBy",
    #         statistics: ["TemporalStatistics"], # required
    #         target_bands: ["String"]
    #       },
    #       cloud_removal_config: {
    #         algorithm_name: "AlgorithmNameCloudRemoval",
    #         interpolation_value: "String",
    #         target_bands: ["String"]
    #       },
    #       zonal_statistics_config: {
    #         zone_s3_path: "S3Uri", # required
    #         statistics: ["ZonalStatistics"], # required
    #         target_bands: ["String"],
    #         zone_s3_path_kms_key_id: "KmsKey"
    #       },
    #       geo_mosaic_config: {
    #         algorithm_name: "AlgorithmNameGeoMosaic",
    #         target_bands: ["String"]
    #       },
    #       stack_config: {
    #         output_resolution: {
    #           predefined: "PredefinedResolution",
    #           user_defined: {
    #             value: 1.0, # required
    #             unit: "Unit", # required
    #           }
    #         },
    #         target_bands: ["String"]
    #       },
    #       cloud_masking_config: {
    #       },
    #       land_cover_segmentation_config: {
    #       }
    #     },
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::StartEarthObservationJobOperationOutput]
    def start_earth_observation_job(params = {}, options = {})
      request = build_request(:start_earth_observation_job, params)
      request.send_request(options)
    end

    # <p>Creates a Vector Enrichment job for the supplied job type.  Currently, there are two supported job types: reverse geocoding and map matching.</p>
    # @param [Hash, Types::StartVectorEnrichmentJobInput] params
    # @option params [String] :name
    #   <p>The name of the Vector Enrichment job.</p>
    # @option params [String] :client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    # @option params [String] :kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    # @option params [Types::VectorEnrichmentJobInputConfig] :input_config
    #   <p>Input configuration information for the Vector Enrichment job.</p>
    # @option params [Types::VectorEnrichmentJobConfig] :job_config
    #   <p>An object containing information about the job configuration.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a key and a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     client_token: "String",
    #     kms_key_id: "KmsKey",
    #     input_config: { # required
    #       document_type: "VectorEnrichmentJobDocumentType", # required
    #       data_source_config: { # required
    #         # One of:
    #         s3_data: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKey"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       reverse_geocoding_config: {
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #       },
    #       map_matching_config: {
    #         id_attribute_name: "String", # required
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #         timestamp_attribute_name: "String", # required
    #       }
    #     },
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_vector_enrichment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     arn: "VectorEnrichmentJobArn", # required
    #     type: "VectorEnrichmentJobType", # required
    #     creation_time: Time.now, # required
    #     duration_in_seconds: 1, # required
    #     status: "VectorEnrichmentJobStatus", # required
    #     kms_key_id: "KmsKey",
    #     input_config: { # required
    #       document_type: "VectorEnrichmentJobDocumentType", # required
    #       data_source_config: { # required
    #         # One of:
    #         s3_data: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKey"
    #         }
    #       }
    #     },
    #     job_config: { # required
    #       # One of:
    #       reverse_geocoding_config: {
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #       },
    #       map_matching_config: {
    #         id_attribute_name: "String", # required
    #         y_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #         timestamp_attribute_name: "String", # required
    #       }
    #     },
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::StartVectorEnrichmentJobOperationOutput]
    def start_vector_enrichment_job(params = {}, options = {})
      request = build_request(:start_vector_enrichment_job, params)
      request.send_request(options)
    end

    # <p>Use this operation to stop an existing earth observation job.</p>
    # @param [Hash, Types::StopEarthObservationJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job being stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EarthObservationJobArn", # required
    #   }
    #   options = {}
    #   response = client.stop_earth_observation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopEarthObservationJobOutput]
    def stop_earth_observation_job(params = {}, options = {})
      request = build_request(:stop_earth_observation_job, params)
      request.send_request(options)
    end

    # <p>Stops the  Vector Enrichment job for a given job ARN.</p>
    # @param [Hash, Types::StopVectorEnrichmentJobInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VectorEnrichmentJobArn", # required
    #   }
    #   options = {}
    #   response = client.stop_vector_enrichment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopVectorEnrichmentJobOutput]
    def stop_vector_enrichment_job(params = {}, options = {})
      request = build_request(:stop_vector_enrichment_job, params)
      request.send_request(options)
    end

    # <p>The resource you want to tag.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Each tag consists of a key and a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>The resource you want to untag.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of the tags you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
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
      context[:gem_name] = 'aws-sdk-sagemakergeospatial'
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
