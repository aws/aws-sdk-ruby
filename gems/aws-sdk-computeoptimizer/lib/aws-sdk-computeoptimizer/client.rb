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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:computeoptimizer)

module Aws::ComputeOptimizer
  # An API client for Aws::ComputeOptimizer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ComputeOptimizerService
    @identifier = :computeoptimizer

    add_plugin(::Aws::ComputeOptimizer::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ComputeOptimizer::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Deletes a recommendation preference, such as enhanced infrastructure metrics.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    # @param [Hash, Types::DeleteRecommendationPreferencesRequest] params
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference to delete.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    # @option params [Types::Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to delete.</p>
    #            <p>You can delete recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    # @option params [Array<String>] :recommendation_preference_names
    #   <p>The name of the recommendation preference to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService", "License", "RdsDBInstance", "AuroraDBClusterStorage", "Idle"], # required
    #     scope: {
    #       name: "Organization" # One of: ["Organization", "AccountId", "ResourceArn"],
    #       value: "ScopeValue"
    #     },
    #     recommendation_preference_names: ["EnhancedInfrastructureMetrics" # One of: ["EnhancedInfrastructureMetrics", "InferredWorkloadTypes", "ExternalMetricsPreference", "LookBackPeriodPreference", "PreferredResources", "UtilizationPreferences"]], # required
    #   }
    #   options = {}
    #   response = client.delete_recommendation_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRecommendationPreferencesResponse]
    def delete_recommendation_preferences(params = {}, options = {})
      request = build_request(:delete_recommendation_preferences, params)
      request.send_request(options)
    end

    # <p>Describes recommendation export jobs created in the last seven days.</p>
    #          <p>Use the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions to request an export of your
    #             recommendations. Then use the <a>DescribeRecommendationExportJobs</a> action
    #             to view your export jobs.</p>
    # @param [Hash, Types::DescribeRecommendationExportJobsRequest] params
    # @option params [Array<String>] :job_ids
    #   <p>The identification numbers of the export jobs to return.</p>
    #            <p>An export job ID is returned when you create an export using the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions.</p>
    #            <p>All export jobs created in the last seven days are returned if this parameter is
    #               omitted.</p>
    # @option params [Array<Types::JobFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of export
    #               jobs.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of export jobs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of export jobs to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_ids: ["JobId"],
    #     filters: [
    #       {
    #         name: "ResourceType" # One of: ["ResourceType", "JobStatus"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_recommendation_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_export_jobs: [
    #       {
    #         job_id: "JobId",
    #         destination: {
    #           s3: {
    #             bucket: "DestinationBucket",
    #             key: "DestinationKey",
    #             metadata_key: "MetadataKey"
    #           }
    #         },
    #         resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService", "License", "RdsDBInstance", "AuroraDBClusterStorage", "Idle"],
    #         status: "Queued" # One of: ["Queued", "InProgress", "Complete", "Failed"],
    #         creation_timestamp: Time.now,
    #         last_updated_timestamp: Time.now,
    #         failure_reason: "FailureReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRecommendationExportJobsResponse]
    def describe_recommendation_export_jobs(params = {}, options = {})
      request = build_request(:describe_recommendation_export_jobs, params)
      request.send_request(options)
    end

    # <p>Exports optimization recommendations for Auto Scaling groups.</p>
    #          <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #          <p>You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportAutoScalingGroupRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Auto Scaling group
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Auto Scaling group recommendations.</p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCodes", "RecommendationSourceType", "InferredWorkloadTypes"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "AutoScalingGroupArn", "AutoScalingGroupName", "Finding", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsEbsReadOpsPerSecondMaximum", "UtilizationMetricsEbsWriteOpsPerSecondMaximum", "UtilizationMetricsEbsReadBytesPerSecondMaximum", "UtilizationMetricsEbsWriteBytesPerSecondMaximum", "UtilizationMetricsDiskReadOpsPerSecondMaximum", "UtilizationMetricsDiskWriteOpsPerSecondMaximum", "UtilizationMetricsDiskReadBytesPerSecondMaximum", "UtilizationMetricsDiskWriteBytesPerSecondMaximum", "UtilizationMetricsNetworkInBytesPerSecondMaximum", "UtilizationMetricsNetworkOutBytesPerSecondMaximum", "UtilizationMetricsNetworkPacketsInPerSecondMaximum", "UtilizationMetricsNetworkPacketsOutPerSecondMaximum", "LookbackPeriodInDays", "CurrentConfigurationInstanceType", "CurrentConfigurationDesiredCapacity", "CurrentConfigurationMinSize", "CurrentConfigurationMaxSize", "CurrentConfigurationAllocationStrategy", "CurrentConfigurationMixedInstanceTypes", "CurrentConfigurationType", "CurrentOnDemandPrice", "CurrentStandardOneYearNoUpfrontReservedPrice", "CurrentStandardThreeYearNoUpfrontReservedPrice", "CurrentVCpus", "CurrentMemory", "CurrentStorage", "CurrentNetwork", "RecommendationOptionsConfigurationInstanceType", "RecommendationOptionsConfigurationDesiredCapacity", "RecommendationOptionsConfigurationMinSize", "RecommendationOptionsConfigurationMaxSize", "RecommendationOptionsConfigurationEstimatedInstanceHourReductionPercentage", "RecommendationOptionsConfigurationAllocationStrategy", "RecommendationOptionsConfigurationMixedInstanceTypes", "RecommendationOptionsConfigurationType", "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum", "RecommendationOptionsPerformanceRisk", "RecommendationOptionsOnDemandPrice", "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice", "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice", "RecommendationOptionsVcpus", "RecommendationOptionsMemory", "RecommendationOptionsStorage", "RecommendationOptionsNetwork", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "EffectiveRecommendationPreferencesCpuVendorArchitectures", "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics", "EffectiveRecommendationPreferencesInferredWorkloadTypes", "EffectiveRecommendationPreferencesPreferredResources", "EffectiveRecommendationPreferencesLookBackPeriod", "InferredWorkloadTypes", "RecommendationOptionsMigrationEffort", "CurrentInstanceGpuInfo", "RecommendationOptionsInstanceGpuInfo", "UtilizationMetricsGpuPercentageMaximum", "UtilizationMetricsGpuMemoryPercentageMaximum", "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum", "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum", "EffectiveRecommendationPreferencesSavingsEstimationMode", "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.export_auto_scaling_group_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportAutoScalingGroupRecommendationsResponse]
    def export_auto_scaling_group_recommendations(params = {}, options = {})
      request = build_request(:export_auto_scaling_group_recommendations, params)
      request.send_request(options)
    end

    # <p>Exports optimization recommendations for Amazon EBS volumes.</p>
    #          <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #          <p>You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportEBSVolumeRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Amazon EBS
    #               volume recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::EBSFilter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Amazon EBS volume recommendations.</p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "VolumeArn", "Finding", "UtilizationMetricsVolumeReadOpsPerSecondMaximum", "UtilizationMetricsVolumeWriteOpsPerSecondMaximum", "UtilizationMetricsVolumeReadBytesPerSecondMaximum", "UtilizationMetricsVolumeWriteBytesPerSecondMaximum", "LookbackPeriodInDays", "CurrentConfigurationVolumeType", "CurrentConfigurationVolumeBaselineIOPS", "CurrentConfigurationVolumeBaselineThroughput", "CurrentConfigurationVolumeBurstIOPS", "CurrentConfigurationVolumeBurstThroughput", "CurrentConfigurationVolumeSize", "CurrentMonthlyPrice", "RecommendationOptionsConfigurationVolumeType", "RecommendationOptionsConfigurationVolumeBaselineIOPS", "RecommendationOptionsConfigurationVolumeBaselineThroughput", "RecommendationOptionsConfigurationVolumeBurstIOPS", "RecommendationOptionsConfigurationVolumeBurstThroughput", "RecommendationOptionsConfigurationVolumeSize", "RecommendationOptionsMonthlyPrice", "RecommendationOptionsPerformanceRisk", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "Tags", "RootVolume", "CurrentConfigurationRootVolume", "EffectiveRecommendationPreferencesSavingsEstimationMode", "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.export_ebs_volume_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportEBSVolumeRecommendationsResponse]
    def export_ebs_volume_recommendations(params = {}, options = {})
      request = build_request(:export_ebs_volume_recommendations, params)
      request.send_request(options)
    end

    # <p>Exports optimization recommendations for Amazon EC2 instances.</p>
    #          <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #          <p>You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportEC2InstanceRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export instance
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of instance
    #               recommendations.</p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it.
    #               If you plan to
    #               specify an object prefix when you create the export job, you must include the object
    #               prefix in the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCodes", "RecommendationSourceType", "InferredWorkloadTypes"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "InstanceArn", "InstanceName", "Finding", "FindingReasonCodes", "LookbackPeriodInDays", "CurrentInstanceType", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsEbsReadOpsPerSecondMaximum", "UtilizationMetricsEbsWriteOpsPerSecondMaximum", "UtilizationMetricsEbsReadBytesPerSecondMaximum", "UtilizationMetricsEbsWriteBytesPerSecondMaximum", "UtilizationMetricsDiskReadOpsPerSecondMaximum", "UtilizationMetricsDiskWriteOpsPerSecondMaximum", "UtilizationMetricsDiskReadBytesPerSecondMaximum", "UtilizationMetricsDiskWriteBytesPerSecondMaximum", "UtilizationMetricsNetworkInBytesPerSecondMaximum", "UtilizationMetricsNetworkOutBytesPerSecondMaximum", "UtilizationMetricsNetworkPacketsInPerSecondMaximum", "UtilizationMetricsNetworkPacketsOutPerSecondMaximum", "CurrentOnDemandPrice", "CurrentStandardOneYearNoUpfrontReservedPrice", "CurrentStandardThreeYearNoUpfrontReservedPrice", "CurrentVCpus", "CurrentMemory", "CurrentStorage", "CurrentNetwork", "RecommendationOptionsInstanceType", "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum", "RecommendationOptionsPlatformDifferences", "RecommendationOptionsPerformanceRisk", "RecommendationOptionsVcpus", "RecommendationOptionsMemory", "RecommendationOptionsStorage", "RecommendationOptionsNetwork", "RecommendationOptionsOnDemandPrice", "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice", "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice", "RecommendationsSourcesRecommendationSourceArn", "RecommendationsSourcesRecommendationSourceType", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "EffectiveRecommendationPreferencesCpuVendorArchitectures", "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics", "EffectiveRecommendationPreferencesInferredWorkloadTypes", "InferredWorkloadTypes", "RecommendationOptionsMigrationEffort", "EffectiveRecommendationPreferencesExternalMetricsSource", "Tags", "InstanceState", "ExternalMetricStatusCode", "ExternalMetricStatusReason", "CurrentInstanceGpuInfo", "RecommendationOptionsInstanceGpuInfo", "UtilizationMetricsGpuPercentageMaximum", "UtilizationMetricsGpuMemoryPercentageMaximum", "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum", "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum", "Idle", "EffectiveRecommendationPreferencesPreferredResources", "EffectiveRecommendationPreferencesLookBackPeriod", "EffectiveRecommendationPreferencesUtilizationPreferences", "EffectiveRecommendationPreferencesSavingsEstimationMode", "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.export_ec2_instance_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportEC2InstanceRecommendationsResponse]
    def export_ec2_instance_recommendations(params = {}, options = {})
      request = build_request(:export_ec2_instance_recommendations, params)
      request.send_request(options)
    end

    # <p>
    #             Exports optimization recommendations for Amazon ECS services on Fargate.
    #         </p>
    #          <p>Recommendations are exported in a CSV file, and its metadata
    #             in a JSON file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    #          <p>You can only have one Amazon ECS service export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportECSServiceRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export Amazon ECS service recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::ECSServiceRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set 
    #               of Amazon ECS service recommendations.
    #           </p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>
    #               The format of the export file. 
    #           </p>
    #            <p>The CSV file is the only export file format currently supported.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "ServiceArn", "LookbackPeriodInDays", "LastRefreshTimestamp", "LaunchType", "CurrentPerformanceRisk", "CurrentServiceConfigurationMemory", "CurrentServiceConfigurationCpu", "CurrentServiceConfigurationTaskDefinitionArn", "CurrentServiceConfigurationAutoScalingConfiguration", "CurrentServiceContainerConfigurations", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "Finding", "FindingReasonCodes", "RecommendationOptionsMemory", "RecommendationOptionsCpu", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "RecommendationOptionsContainerRecommendations", "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum", "Tags", "EffectiveRecommendationPreferencesSavingsEstimationMode", "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.export_ecs_service_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportECSServiceRecommendationsResponse]
    def export_ecs_service_recommendations(params = {}, options = {})
      request = build_request(:export_ecs_service_recommendations, params)
      request.send_request(options)
    end

    # <p>
    #             Export optimization recommendations for your idle resources.
    #         </p>
    #          <p>Recommendations are exported in a comma-separated values (CSV) file, and its metadata
    #             in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    #          <p>You can have only one idle resource export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportIdleRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export idle resource recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::IdleRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of idle resource recommendations.</p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file. The CSV file is the only export file format currently supported.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "ResourceType"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "ResourceArn", "ResourceId", "ResourceType", "LastRefreshTimestamp", "LookbackPeriodInDays", "SavingsOpportunity", "SavingsOpportunityAfterDiscount", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsNetworkOutBytesPerSecondMaximum", "UtilizationMetricsNetworkInBytesPerSecondMaximum", "UtilizationMetricsDatabaseConnectionsMaximum", "UtilizationMetricsEBSVolumeReadIOPSMaximum", "UtilizationMetricsEBSVolumeWriteIOPSMaximum", "UtilizationMetricsVolumeReadOpsPerSecondMaximum", "UtilizationMetricsVolumeWriteOpsPerSecondMaximum", "Finding", "FindingDescription", "Tags"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.export_idle_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportIdleRecommendationsResponse]
    def export_idle_recommendations(params = {}, options = {})
      request = build_request(:export_idle_recommendations, params)
      request.send_request(options)
    end

    # <p>Exports optimization recommendations for Lambda functions.</p>
    #          <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #          <p>You can have only one Lambda function export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportLambdaFunctionRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Lambda
    #               function recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::LambdaFunctionRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Lambda function recommendations.</p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #            <p>The only export file format currently supported is <code>Csv</code>.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #            <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #            <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "FunctionArn", "FunctionVersion", "Finding", "FindingReasonCodes", "NumberOfInvocations", "UtilizationMetricsDurationMaximum", "UtilizationMetricsDurationAverage", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsMemoryAverage", "LookbackPeriodInDays", "CurrentConfigurationMemorySize", "CurrentConfigurationTimeout", "CurrentCostTotal", "CurrentCostAverage", "RecommendationOptionsConfigurationMemorySize", "RecommendationOptionsCostLow", "RecommendationOptionsCostHigh", "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound", "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound", "RecommendationOptionsProjectedUtilizationMetricsDurationExpected", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "Tags", "EffectiveRecommendationPreferencesSavingsEstimationMode", "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.export_lambda_function_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportLambdaFunctionRecommendationsResponse]
    def export_lambda_function_recommendations(params = {}, options = {})
      request = build_request(:export_lambda_function_recommendations, params)
      request.send_request(options)
    end

    # <p>
    #             Export optimization recommendations for your licenses.
    #         </p>
    #          <p>Recommendations are exported in a comma-separated values (CSV) file, and its metadata
    #             in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    #          <p>You can have only one license export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportLicenseRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export license
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #            <p>This parameter can't be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter is omitted, recommendations 
    #               for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::LicenseRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set of license recommendations.
    #           </p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #            <p>A CSV file is the only export format currently supported.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the organization 
    #               aren't included in the export file .</p>
    #            <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode", "LicenseName"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["AccountId" # One of: ["AccountId", "ResourceArn", "LookbackPeriodInDays", "LastRefreshTimestamp", "Finding", "FindingReasonCodes", "CurrentLicenseConfigurationNumberOfCores", "CurrentLicenseConfigurationInstanceType", "CurrentLicenseConfigurationOperatingSystem", "CurrentLicenseConfigurationLicenseName", "CurrentLicenseConfigurationLicenseEdition", "CurrentLicenseConfigurationLicenseModel", "CurrentLicenseConfigurationLicenseVersion", "CurrentLicenseConfigurationMetricsSource", "RecommendationOptionsOperatingSystem", "RecommendationOptionsLicenseEdition", "RecommendationOptionsLicenseModel", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "Tags"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.export_license_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportLicenseRecommendationsResponse]
    def export_license_recommendations(params = {}, options = {})
      request = build_request(:export_license_recommendations, params)
      request.send_request(options)
    end

    # <p>
    #             Export optimization recommendations for your Amazon Aurora and Amazon Relational Database Service (Amazon RDS) databases.
    #         </p>
    #          <p>Recommendations are exported in a comma-separated values (CSV) file, and its metadata
    #             in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    #          <p>You can have only one Amazon Aurora or RDS export job in progress per Amazon Web Services Region.</p>
    # @param [Hash, Types::ExportRDSDatabaseRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>
    #               The Amazon Web Services account IDs for the export Amazon Aurora and RDS database recommendations.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to specify the member account you want to 
    #               export recommendations to.</p>
    #            <p>This parameter can't be specified together with the include member accounts 
    #               parameter. The parameters are mutually exclusive.</p>
    #            <p>If this parameter or the include member accounts parameter is omitted,
    #               the recommendations for member accounts aren't included in the export.</p>
    #            <p>You can specify multiple account IDs per request.</p>
    # @option params [Array<Types::RDSDBRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that exports a more specific set of 
    #               Amazon Aurora and RDS recommendations.
    #           </p>
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #                       Guide</i>.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #            <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    # @option params [String] :file_format
    #   <p>
    #               The format of the export file. 
    #           </p>
    #            <p>The CSV file is the only export file format currently supported.</p>
    # @option params [Boolean] :include_member_accounts
    #   <p>If your account is the management account or the delegated administrator of an organization,
    #               this parameter indicates whether to include recommendations for resources in all member accounts of
    #               the organization.</p>
    #            <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #               Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #               <i>Compute Optimizer User Guide</i>.</p>
    #            <p>If this parameter is omitted, recommendations for member accounts of the 
    #               organization aren't included in the export file.</p>
    #            <p>If this parameter or the account ID parameter is omitted, recommendations for 
    #               member accounts aren't included in the export.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "InstanceFinding" # One of: ["InstanceFinding", "InstanceFindingReasonCode", "StorageFinding", "StorageFindingReasonCode", "Idle"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     fields_to_export: ["ResourceArn" # One of: ["ResourceArn", "AccountId", "Engine", "EngineVersion", "Idle", "MultiAZDBInstance", "ClusterWriter", "CurrentDBInstanceClass", "CurrentStorageConfigurationStorageType", "CurrentStorageConfigurationAllocatedStorage", "CurrentStorageConfigurationMaxAllocatedStorage", "CurrentStorageConfigurationIOPS", "CurrentStorageConfigurationStorageThroughput", "CurrentStorageEstimatedMonthlyVolumeIOPsCostVariation", "CurrentInstanceOnDemandHourlyPrice", "CurrentStorageOnDemandMonthlyPrice", "LookbackPeriodInDays", "CurrentStorageEstimatedClusterInstanceOnDemandMonthlyCost", "CurrentStorageEstimatedClusterStorageOnDemandMonthlyCost", "CurrentStorageEstimatedClusterStorageIOOnDemandMonthlyCost", "CurrentInstancePerformanceRisk", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsEBSVolumeStorageSpaceUtilizationMaximum", "UtilizationMetricsNetworkReceiveThroughputMaximum", "UtilizationMetricsNetworkTransmitThroughputMaximum", "UtilizationMetricsEBSVolumeReadIOPSMaximum", "UtilizationMetricsEBSVolumeWriteIOPSMaximum", "UtilizationMetricsEBSVolumeReadThroughputMaximum", "UtilizationMetricsEBSVolumeWriteThroughputMaximum", "UtilizationMetricsDatabaseConnectionsMaximum", "UtilizationMetricsStorageNetworkReceiveThroughputMaximum", "UtilizationMetricsStorageNetworkTransmitThroughputMaximum", "UtilizationMetricsAuroraMemoryHealthStateMaximum", "UtilizationMetricsAuroraMemoryNumDeclinedSqlTotalMaximum", "UtilizationMetricsAuroraMemoryNumKillConnTotalMaximum", "UtilizationMetricsAuroraMemoryNumKillQueryTotalMaximum", "UtilizationMetricsReadIOPSEphemeralStorageMaximum", "UtilizationMetricsWriteIOPSEphemeralStorageMaximum", "UtilizationMetricsVolumeBytesUsedAverage", "UtilizationMetricsVolumeReadIOPsAverage", "UtilizationMetricsVolumeWriteIOPsAverage", "InstanceFinding", "InstanceFindingReasonCodes", "StorageFinding", "StorageFindingReasonCodes", "InstanceRecommendationOptionsDBInstanceClass", "InstanceRecommendationOptionsRank", "InstanceRecommendationOptionsPerformanceRisk", "InstanceRecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "StorageRecommendationOptionsStorageType", "StorageRecommendationOptionsAllocatedStorage", "StorageRecommendationOptionsMaxAllocatedStorage", "StorageRecommendationOptionsIOPS", "StorageRecommendationOptionsStorageThroughput", "StorageRecommendationOptionsRank", "StorageRecommendationOptionsEstimatedMonthlyVolumeIOPsCostVariation", "InstanceRecommendationOptionsInstanceOnDemandHourlyPrice", "InstanceRecommendationOptionsSavingsOpportunityPercentage", "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrency", "InstanceRecommendationOptionsEstimatedMonthlySavingsValue", "InstanceRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "InstanceRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts", "StorageRecommendationOptionsOnDemandMonthlyPrice", "StorageRecommendationOptionsEstimatedClusterInstanceOnDemandMonthlyCost", "StorageRecommendationOptionsEstimatedClusterStorageOnDemandMonthlyCost", "StorageRecommendationOptionsEstimatedClusterStorageIOOnDemandMonthlyCost", "StorageRecommendationOptionsSavingsOpportunityPercentage", "StorageRecommendationOptionsEstimatedMonthlySavingsCurrency", "StorageRecommendationOptionsEstimatedMonthlySavingsValue", "StorageRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage", "StorageRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts", "StorageRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts", "EffectiveRecommendationPreferencesCpuVendorArchitectures", "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics", "EffectiveRecommendationPreferencesLookBackPeriod", "EffectiveRecommendationPreferencesSavingsEstimationMode", "LastRefreshTimestamp", "Tags", "DBClusterIdentifier", "PromotionTier"]],
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix"
    #     },
    #     file_format: "Csv" # One of: ["Csv"],
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.export_rds_database_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     s3_destination: {
    #       bucket: "DestinationBucket",
    #       key: "DestinationKey",
    #       metadata_key: "MetadataKey"
    #     }
    #   }
    # @return [Types::ExportRDSDatabaseRecommendationsResponse]
    def export_rds_database_recommendations(params = {}, options = {})
      request = build_request(:export_rds_database_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns Auto Scaling group recommendations.</p>
    #          <p>Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that
    #             meet a specific set of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported
    #                 resources and requirements</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    # @param [Hash, Types::GetAutoScalingGroupRecommendationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return Auto Scaling group
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return Auto Scaling group
    #               recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @option params [Array<String>] :auto_scaling_group_arns
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return
    #               recommendations.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Auto Scaling group recommendations to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of Auto Scaling group recommendations.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     auto_scaling_group_arns: ["AutoScalingGroupArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCodes", "RecommendationSourceType", "InferredWorkloadTypes"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.get_auto_scaling_group_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     auto_scaling_group_recommendations: [
    #       {
    #         account_id: "AccountId",
    #         auto_scaling_group_arn: "AutoScalingGroupArn",
    #         auto_scaling_group_name: "AutoScalingGroupName",
    #         finding: "Underprovisioned" # One of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"],
    #         utilization_metrics: [
    #           {
    #             name: "Cpu" # One of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND", "GPU_PERCENTAGE", "GPU_MEMORY_PERCENTAGE"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         look_back_period_in_days: 1.0,
    #         current_configuration: {
    #           desired_capacity: 1,
    #           min_size: 1,
    #           max_size: 1,
    #           instance_type: "NullableInstanceType",
    #           allocation_strategy: "Prioritized" # One of: ["Prioritized", "LowestPrice"],
    #           estimated_instance_hour_reduction_percentage: 1.0,
    #           type: "SingleInstanceType" # One of: ["SingleInstanceType", "MixedInstanceTypes"],
    #           mixed_instance_types: ["MixedInstanceType"]
    #         },
    #         current_instance_gpu_info: {
    #           gpus: [
    #             {
    #               gpu_count: 1,
    #               gpu_memory_size_in_mi_b: 1
    #             }
    #           ]
    #         },
    #         recommendation_options: [
    #           {
    #             configuration: {
    #               desired_capacity: 1,
    #               min_size: 1,
    #               max_size: 1,
    #               instance_type: "NullableInstanceType",
    #               allocation_strategy: "Prioritized" # One of: ["Prioritized", "LowestPrice"],
    #               estimated_instance_hour_reduction_percentage: 1.0,
    #               type: "SingleInstanceType" # One of: ["SingleInstanceType", "MixedInstanceTypes"],
    #               mixed_instance_types: ["MixedInstanceType"]
    #             },
    #             instance_gpu_info: {
    #               gpus: [
    #                 {
    #                   gpu_count: 1,
    #                   gpu_memory_size_in_mi_b: 1
    #                 }
    #               ]
    #             },
    #             projected_utilization_metrics: [
    #               {
    #                 name: "Cpu" # One of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND", "GPU_PERCENTAGE", "GPU_MEMORY_PERCENTAGE"],
    #                 statistic: "Maximum" # One of: ["Maximum", "Average"],
    #                 value: 1.0
    #               }
    #             ],
    #             performance_risk: 1.0,
    #             rank: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             migration_effort: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"]
    #           }
    #         ],
    #         last_refresh_timestamp: Time.now,
    #         current_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         effective_recommendation_preferences: {
    #           cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]],
    #           enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #           inferred_workload_types: "Active" # One of: ["Active", "Inactive"],
    #           external_metrics_preference: {
    #             source: "Datadog" # One of: ["Datadog", "Dynatrace", "NewRelic", "Instana"]
    #           },
    #           look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #           utilization_preferences: [
    #             {
    #               metric_name: "CpuUtilization" # One of: ["CpuUtilization", "MemoryUtilization"],
    #               metric_parameters: {
    #                 threshold: "P90" # One of: ["P90", "P95", "P99_5"],
    #                 headroom: "PERCENT_30" # One of: ["PERCENT_30", "PERCENT_20", "PERCENT_10", "PERCENT_0"]
    #               }
    #             }
    #           ],
    #           preferred_resources: [
    #             {
    #               name: "Ec2InstanceTypes" # One of: ["Ec2InstanceTypes"],
    #               include_list: ["PreferredResourceValue"],
    #               effective_include_list: ["PreferredResourceValue"],
    #               exclude_list: ["PreferredResourceValue"]
    #             }
    #           ],
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         inferred_workload_types: ["AmazonEmr" # One of: ["AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"]]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetAutoScalingGroupRecommendationsResponse]
    def get_auto_scaling_group_recommendations(params = {}, options = {})
      request = build_request(:get_auto_scaling_group_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.</p>
    #          <p>Compute Optimizer generates recommendations for Amazon EBS volumes that
    #             meet a specific set of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported
    #                 resources and requirements</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    # @param [Hash, Types::GetEBSVolumeRecommendationsRequest] params
    # @option params [Array<String>] :volume_arns
    #   <p>The Amazon Resource Name (ARN) of the volumes for which to return
    #               recommendations.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of volume recommendations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of volume recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @option params [Array<Types::EBSFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of volume
    #               recommendations.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return volume
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return volume recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     volume_arns: ["VolumeArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.get_ebs_volume_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     volume_recommendations: [
    #       {
    #         volume_arn: "VolumeArn",
    #         account_id: "AccountId",
    #         current_configuration: {
    #           volume_type: "VolumeType",
    #           volume_size: 1,
    #           volume_baseline_iops: 1,
    #           volume_burst_iops: 1,
    #           volume_baseline_throughput: 1,
    #           volume_burst_throughput: 1,
    #           root_volume: false
    #         },
    #         finding: "Optimized" # One of: ["Optimized", "NotOptimized"],
    #         utilization_metrics: [
    #           {
    #             name: "VolumeReadOpsPerSecond" # One of: ["VolumeReadOpsPerSecond", "VolumeWriteOpsPerSecond", "VolumeReadBytesPerSecond", "VolumeWriteBytesPerSecond"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         look_back_period_in_days: 1.0,
    #         volume_recommendation_options: [
    #           {
    #             configuration: {
    #               volume_type: "VolumeType",
    #               volume_size: 1,
    #               volume_baseline_iops: 1,
    #               volume_burst_iops: 1,
    #               volume_baseline_throughput: 1,
    #               volume_burst_throughput: 1,
    #               root_volume: false
    #             },
    #             performance_risk: 1.0,
    #             rank: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         last_refresh_timestamp: Time.now,
    #         current_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         effective_recommendation_preferences: {
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetEBSVolumeRecommendationsResponse]
    def get_ebs_volume_recommendations(params = {}, options = {})
      request = build_request(:get_ebs_volume_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns Amazon EC2 instance recommendations.</p>
    #          <p>Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more
    #             information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    # @param [Hash, Types::GetEC2InstanceRecommendationsRequest] params
    # @option params [Array<String>] :instance_arns
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return
    #               recommendations.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of instance recommendations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of instance recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of instance
    #               recommendations.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return instance
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return instance recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arns: ["InstanceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCodes", "RecommendationSourceType", "InferredWorkloadTypes"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.get_ec2_instance_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     instance_recommendations: [
    #       {
    #         instance_arn: "InstanceArn",
    #         account_id: "AccountId",
    #         instance_name: "InstanceName",
    #         current_instance_type: "CurrentInstanceType",
    #         finding: "Underprovisioned" # One of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"],
    #         finding_reason_codes: ["CPUOverprovisioned" # One of: ["CPUOverprovisioned", "CPUUnderprovisioned", "MemoryOverprovisioned", "MemoryUnderprovisioned", "EBSThroughputOverprovisioned", "EBSThroughputUnderprovisioned", "EBSIOPSOverprovisioned", "EBSIOPSUnderprovisioned", "NetworkBandwidthOverprovisioned", "NetworkBandwidthUnderprovisioned", "NetworkPPSOverprovisioned", "NetworkPPSUnderprovisioned", "DiskIOPSOverprovisioned", "DiskIOPSUnderprovisioned", "DiskThroughputOverprovisioned", "DiskThroughputUnderprovisioned", "GPUUnderprovisioned", "GPUOverprovisioned", "GPUMemoryUnderprovisioned", "GPUMemoryOverprovisioned"]],
    #         utilization_metrics: [
    #           {
    #             name: "Cpu" # One of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND", "GPU_PERCENTAGE", "GPU_MEMORY_PERCENTAGE"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         look_back_period_in_days: 1.0,
    #         recommendation_options: [
    #           {
    #             instance_type: "InstanceType",
    #             instance_gpu_info: {
    #               gpus: [
    #                 {
    #                   gpu_count: 1,
    #                   gpu_memory_size_in_mi_b: 1
    #                 }
    #               ]
    #             },
    #             projected_utilization_metrics: [
    #               {
    #                 name: "Cpu" # One of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND", "GPU_PERCENTAGE", "GPU_MEMORY_PERCENTAGE"],
    #                 statistic: "Maximum" # One of: ["Maximum", "Average"],
    #                 value: 1.0
    #               }
    #             ],
    #             platform_differences: ["Hypervisor" # One of: ["Hypervisor", "NetworkInterface", "StorageInterface", "InstanceStoreAvailability", "VirtualizationType", "Architecture"]],
    #             performance_risk: 1.0,
    #             rank: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             migration_effort: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"]
    #           }
    #         ],
    #         recommendation_sources: [
    #           {
    #             recommendation_source_arn: "RecommendationSourceArn",
    #             recommendation_source_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "EcsService", "License", "RdsDBInstance", "RdsDBInstanceStorage", "AuroraDBClusterStorage"]
    #           }
    #         ],
    #         last_refresh_timestamp: Time.now,
    #         current_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         effective_recommendation_preferences: {
    #           cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]],
    #           enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #           inferred_workload_types: "Active" # One of: ["Active", "Inactive"],
    #           external_metrics_preference: {
    #             source: "Datadog" # One of: ["Datadog", "Dynatrace", "NewRelic", "Instana"]
    #           },
    #           look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #           utilization_preferences: [
    #             {
    #               metric_name: "CpuUtilization" # One of: ["CpuUtilization", "MemoryUtilization"],
    #               metric_parameters: {
    #                 threshold: "P90" # One of: ["P90", "P95", "P99_5"],
    #                 headroom: "PERCENT_30" # One of: ["PERCENT_30", "PERCENT_20", "PERCENT_10", "PERCENT_0"]
    #               }
    #             }
    #           ],
    #           preferred_resources: [
    #             {
    #               name: "Ec2InstanceTypes" # One of: ["Ec2InstanceTypes"],
    #               include_list: ["PreferredResourceValue"],
    #               effective_include_list: ["PreferredResourceValue"],
    #               exclude_list: ["PreferredResourceValue"]
    #             }
    #           ],
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         inferred_workload_types: ["AmazonEmr" # One of: ["AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"]],
    #         instance_state: "pending" # One of: ["pending", "running", "shutting-down", "terminated", "stopping", "stopped"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         external_metric_status: {
    #           status_code: "NO_EXTERNAL_METRIC_SET" # One of: ["NO_EXTERNAL_METRIC_SET", "INTEGRATION_SUCCESS", "DATADOG_INTEGRATION_ERROR", "DYNATRACE_INTEGRATION_ERROR", "NEWRELIC_INTEGRATION_ERROR", "INSTANA_INTEGRATION_ERROR", "INSUFFICIENT_DATADOG_METRICS", "INSUFFICIENT_DYNATRACE_METRICS", "INSUFFICIENT_NEWRELIC_METRICS", "INSUFFICIENT_INSTANA_METRICS"],
    #           status_reason: "ExternalMetricStatusReason"
    #         },
    #         current_instance_gpu_info: {
    #           gpus: [
    #             {
    #               gpu_count: 1,
    #               gpu_memory_size_in_mi_b: 1
    #             }
    #           ]
    #         },
    #         idle: "True" # One of: ["True", "False"]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetEC2InstanceRecommendationsResponse]
    def get_ec2_instance_recommendations(params = {}, options = {})
      request = build_request(:get_ec2_instance_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns the projected utilization metrics of Amazon EC2 instance
    #             recommendations.</p>
    #          <note>
    #             <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                 utilization metrics returned when you run this action. Additionally, the
    #                     <code>Memory</code> metric is returned only for resources that have the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
    #          </note>
    # @param [Hash, Types::GetEC2RecommendationProjectedMetricsRequest] params
    # @option params [String] :instance_arn
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return recommendation
    #               projected metrics.</p>
    # @option params [String] :stat
    #   <p>The statistic of the projected metrics.</p>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the projected metrics data points.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp of the first projected metrics data point to return.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp of the last projected metrics data point to return.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 recommendation
    #               projected metrics to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     stat: "Maximum" # One of: ["Maximum", "Average"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.get_ec2_recommendation_projected_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_option_projected_metrics: [
    #       {
    #         recommended_instance_type: "RecommendedInstanceType",
    #         rank: 1,
    #         projected_metrics: [
    #           {
    #             name: "Cpu" # One of: ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND", "GPU_PERCENTAGE", "GPU_MEMORY_PERCENTAGE"],
    #             timestamps: [Time.now],
    #             values: [1.0]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetEC2RecommendationProjectedMetricsResponse]
    def get_ec2_recommendation_projected_metrics(params = {}, options = {})
      request = build_request(:get_ec2_recommendation_projected_metrics, params)
      request.send_request(options)
    end

    # <p>
    #             Returns the projected metrics of Amazon ECS service recommendations.
    #         </p>
    # @param [Hash, Types::GetECSServiceRecommendationProjectedMetricsRequest] params
    # @option params [String] :service_arn
    #   <p>
    #               The ARN that identifies the Amazon ECS service.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    # @option params [String] :stat
    #   <p>
    #               The statistic of the projected metrics.
    #           </p>
    # @option params [Integer] :period
    #   <p>
    #               The granularity, in seconds, of the projected metrics data points.
    #           </p>
    # @option params [Time] :start_time
    #   <p>
    #               The timestamp of the first projected metrics data point to return.
    #           </p>
    # @option params [Time] :end_time
    #   <p>
    #               The timestamp of the last projected metrics data point to return.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arn: "ServiceArn", # required
    #     stat: "Maximum" # One of: ["Maximum", "Average"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.get_ecs_service_recommendation_projected_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_option_projected_metrics: [
    #       {
    #         recommended_cpu_units: 1,
    #         recommended_memory_size: 1,
    #         projected_metrics: [
    #           {
    #             name: "Cpu" # One of: ["Cpu", "Memory"],
    #             timestamps: [Time.now],
    #             upper_bound_values: [1.0],
    #             lower_bound_values: [1.0]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetECSServiceRecommendationProjectedMetricsResponse]
    def get_ecs_service_recommendation_projected_metrics(params = {}, options = {})
      request = build_request(:get_ecs_service_recommendation_projected_metrics, params)
      request.send_request(options)
    end

    # <p>
    #             Returns Amazon ECS service recommendations.
    #         </p>
    #          <p>
    #             Compute Optimizer generates recommendations for Amazon ECS services on 
    #             Fargate that meet a specific set of requirements. For more
    #             information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #                     Guide</i>.
    #         </p>
    # @param [Hash, Types::GetECSServiceRecommendationsRequest] params
    # @option params [Array<String>] :service_arns
    #   <p>
    #               The ARN that identifies the Amazon ECS service.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>
    #               The token to advance to the next page of Amazon ECS service recommendations.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of Amazon ECS service recommendations to return with a single request.
    #           </p>
    #            <p>To retrieve the remaining results, make another request with the returned 
    #               <code>nextToken</code> value.</p>
    # @option params [Array<Types::ECSServiceRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of Amazon ECS service recommendations.
    #           </p>
    # @option params [Array<String>] :account_ids
    #   <p>
    #               Return the Amazon ECS service recommendations to the specified Amazon Web Services account IDs.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to return the Amazon ECS service recommendations to specific
    #               member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_arns: ["ServiceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.get_ecs_service_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     ecs_service_recommendations: [
    #       {
    #         service_arn: "ServiceArn",
    #         account_id: "AccountId",
    #         current_service_configuration: {
    #           memory: 1,
    #           cpu: 1,
    #           container_configurations: [
    #             {
    #               container_name: "ContainerName",
    #               memory_size_configuration: {
    #                 memory: 1,
    #                 memory_reservation: 1
    #               },
    #               cpu: 1
    #             }
    #           ],
    #           auto_scaling_configuration: "TargetTrackingScalingCpu" # One of: ["TargetTrackingScalingCpu", "TargetTrackingScalingMemory"],
    #           task_definition_arn: "TaskDefinitionArn"
    #         },
    #         utilization_metrics: [
    #           {
    #             name: "Cpu" # One of: ["Cpu", "Memory"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         lookback_period_in_days: 1.0,
    #         launch_type: "EC2" # One of: ["EC2", "Fargate"],
    #         last_refresh_timestamp: Time.now,
    #         finding: "Optimized" # One of: ["Optimized", "Underprovisioned", "Overprovisioned"],
    #         finding_reason_codes: ["MemoryOverprovisioned" # One of: ["MemoryOverprovisioned", "MemoryUnderprovisioned", "CPUOverprovisioned", "CPUUnderprovisioned"]],
    #         service_recommendation_options: [
    #           {
    #             memory: 1,
    #             cpu: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             projected_utilization_metrics: [
    #               {
    #                 name: "Cpu" # One of: ["Cpu", "Memory"],
    #                 statistic: "Maximum" # One of: ["Maximum", "Average"],
    #                 lower_bound_value: 1.0,
    #                 upper_bound_value: 1.0
    #               }
    #             ],
    #             container_recommendations: [
    #               {
    #                 container_name: "ContainerName",
    #                 memory_size_configuration: {
    #                   memory: 1,
    #                   memory_reservation: 1
    #                 },
    #                 cpu: 1
    #               }
    #             ]
    #           }
    #         ],
    #         current_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         effective_recommendation_preferences: {
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetECSServiceRecommendationsResponse]
    def get_ecs_service_recommendations(params = {}, options = {})
      request = build_request(:get_ecs_service_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns the recommendation preferences that are in effect for a given resource, such
    #             as enhanced infrastructure metrics. Considers all applicable preferences that you might
    #             have set at the resource, account, and organization level.</p>
    #          <p>When you create a recommendation preference, you can set its status to
    #                 <code>Active</code> or <code>Inactive</code>. Use this action to view the
    #             recommendation preferences that are in effect, or <code>Active</code>.</p>
    # @param [Hash, Types::GetEffectiveRecommendationPreferencesRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to confirm effective
    #               recommendation preferences. Only EC2 instance and Auto Scaling group ARNs are
    #               currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_effective_recommendation_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #     external_metrics_preference: {
    #       source: "Datadog" # One of: ["Datadog", "Dynatrace", "NewRelic", "Instana"]
    #     },
    #     look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #     utilization_preferences: [
    #       {
    #         metric_name: "CpuUtilization" # One of: ["CpuUtilization", "MemoryUtilization"],
    #         metric_parameters: {
    #           threshold: "P90" # One of: ["P90", "P95", "P99_5"],
    #           headroom: "PERCENT_30" # One of: ["PERCENT_30", "PERCENT_20", "PERCENT_10", "PERCENT_0"]
    #         }
    #       }
    #     ],
    #     preferred_resources: [
    #       {
    #         name: "Ec2InstanceTypes" # One of: ["Ec2InstanceTypes"],
    #         include_list: ["PreferredResourceValue"],
    #         effective_include_list: ["PreferredResourceValue"],
    #         exclude_list: ["PreferredResourceValue"]
    #       }
    #     ]
    #   }
    # @return [Types::GetEffectiveRecommendationPreferencesResponse]
    def get_effective_recommendation_preferences(params = {}, options = {})
      request = build_request(:get_effective_recommendation_preferences, params)
      request.send_request(options)
    end

    # <p>Returns the enrollment (opt in) status of an account to the Compute Optimizer
    #             service.</p>
    #          <p>If the account is the management account of an organization, this action also confirms
    #             the enrollment status of member accounts of the organization. Use the <a>GetEnrollmentStatusesForOrganization</a> action to get detailed information
    #             about the enrollment status of member accounts of an organization.</p>
    # @param [Hash, Types::GetEnrollmentStatusRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_enrollment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"],
    #     status_reason: "StatusReason",
    #     member_accounts_enrolled: false,
    #     last_updated_timestamp: Time.now,
    #     number_of_member_accounts_opted_in: 1
    #   }
    # @return [Types::GetEnrollmentStatusResponse]
    def get_enrollment_status(params = {}, options = {})
      request = build_request(:get_enrollment_status, params)
      request.send_request(options)
    end

    # <p>Returns the Compute Optimizer enrollment (opt-in) status of organization member
    #             accounts, if your account is an organization management account.</p>
    #          <p>To get the enrollment status of standalone accounts, use the <a>GetEnrollmentStatus</a> action.</p>
    # @param [Hash, Types::GetEnrollmentStatusesForOrganizationRequest] params
    # @option params [Array<Types::EnrollmentFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of account
    #               enrollment statuses.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of account enrollment statuses.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account enrollment statuses to return with a single request. You
    #               can specify up to 100 statuses to return with each request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "Status" # One of: ["Status"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_enrollment_statuses_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_enrollment_statuses: [
    #       {
    #         account_id: "AccountId",
    #         status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"],
    #         status_reason: "StatusReason",
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEnrollmentStatusesForOrganizationResponse]
    def get_enrollment_statuses_for_organization(params = {}, options = {})
      request = build_request(:get_enrollment_statuses_for_organization, params)
      request.send_request(options)
    end

    # <p>Returns idle resource recommendations. Compute Optimizer generates recommendations for 
    #             idle resources that meet a specific set of requirements. For more information, see
    #             <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Resource requirements</a> in the
    #             <i>Compute Optimizer User Guide</i>
    #          </p>
    # @param [Hash, Types::GetIdleRecommendationsRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>The ARN that identifies the idle resource.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of idle resource recommendations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of idle resource recommendations to return with a single request. </p>
    #            <p>To retrieve the remaining results, 
    #               make another request with the returned <code>nextToken</code> value.</p>
    # @option params [Array<Types::IdleRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of idle resource recommendations.</p>
    # @option params [Array<String>] :account_ids
    #   <p>Return the idle resource recommendations to the specified Amazon Web Services account IDs.</p>
    #            <p>If your account is the management account 
    #               or the delegated administrator of an organization, use this parameter to return the idle resource recommendations to 
    #               specific member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    # @option params [Types::OrderBy] :order_by
    #   <p>The order to sort the idle resource recommendations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "ResourceType"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"],
    #     order_by: {
    #       dimension: "SavingsValue" # One of: ["SavingsValue", "SavingsValueAfterDiscount"],
    #       order: "Asc" # One of: ["Asc", "Desc"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_idle_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     idle_recommendations: [
    #       {
    #         resource_arn: "ResourceArn",
    #         resource_id: "ResourceId",
    #         resource_type: "EC2Instance" # One of: ["EC2Instance", "AutoScalingGroup", "EBSVolume", "ECSService", "RDSDBInstance"],
    #         account_id: "AccountId",
    #         finding: "Idle" # One of: ["Idle", "Unattached"],
    #         finding_description: "IdleFindingDescription",
    #         savings_opportunity: {
    #           savings_opportunity_percentage: 1.0,
    #           estimated_monthly_savings: {
    #             currency: "USD" # One of: ["USD", "CNY"],
    #             value: 1.0
    #           }
    #         },
    #         savings_opportunity_after_discounts: {
    #           savings_opportunity_percentage: 1.0,
    #           estimated_monthly_savings: {
    #             currency: "USD" # One of: ["USD", "CNY"],
    #             value: 1.0
    #           }
    #         },
    #         utilization_metrics: [
    #           {
    #             name: "CPU" # One of: ["CPU", "Memory", "NetworkOutBytesPerSecond", "NetworkInBytesPerSecond", "DatabaseConnections", "EBSVolumeReadIOPS", "EBSVolumeWriteIOPS", "VolumeReadOpsPerSecond", "VolumeWriteOpsPerSecond"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         look_back_period_in_days: 1.0,
    #         last_refresh_timestamp: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message",
    #         resource_type: "EC2Instance" # One of: ["EC2Instance", "AutoScalingGroup", "EBSVolume", "ECSService", "RDSDBInstance"]
    #       }
    #     ]
    #   }
    # @return [Types::GetIdleRecommendationsResponse]
    def get_idle_recommendations(params = {}, options = {})
      request = build_request(:get_idle_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns Lambda function recommendations.</p>
    #          <p>Compute Optimizer generates recommendations for functions that meet a specific set
    #             of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    # @param [Hash, Types::GetLambdaFunctionRecommendationsRequest] params
    # @option params [Array<String>] :function_arns
    #   <p>The Amazon Resource Name (ARN) of the functions for which to return
    #               recommendations.</p>
    #            <p>You can specify a qualified or unqualified ARN. If you specify an unqualified ARN
    #               without a function version suffix, Compute Optimizer will return recommendations for the
    #               latest (<code>$LATEST</code>) version of the function. If you specify a qualified ARN
    #               with a version suffix, Compute Optimizer will return recommendations for the specified
    #               function version. For more information about using function versions, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">Using
    #                   versions</a> in the <i>Lambda Developer
    #               Guide</i>.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return function
    #               recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return function recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @option params [Array<Types::LambdaFunctionRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of function
    #               recommendations.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of function recommendations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of function recommendations to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_arns: ["FunctionArn"],
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_lambda_function_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     lambda_function_recommendations: [
    #       {
    #         function_arn: "FunctionArn",
    #         function_version: "FunctionVersion",
    #         account_id: "AccountId",
    #         current_memory_size: 1,
    #         number_of_invocations: 1,
    #         utilization_metrics: [
    #           {
    #             name: "Duration" # One of: ["Duration", "Memory"],
    #             statistic: "Maximum" # One of: ["Maximum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         lookback_period_in_days: 1.0,
    #         last_refresh_timestamp: Time.now,
    #         finding: "Optimized" # One of: ["Optimized", "NotOptimized", "Unavailable"],
    #         finding_reason_codes: ["MemoryOverprovisioned" # One of: ["MemoryOverprovisioned", "MemoryUnderprovisioned", "InsufficientData", "Inconclusive"]],
    #         memory_size_recommendation_options: [
    #           {
    #             rank: 1,
    #             memory_size: 1,
    #             projected_utilization_metrics: [
    #               {
    #                 name: "Duration" # One of: ["Duration"],
    #                 statistic: "LowerBound" # One of: ["LowerBound", "UpperBound", "Expected"],
    #                 value: 1.0
    #               }
    #             ],
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         current_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         effective_recommendation_preferences: {
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetLambdaFunctionRecommendationsResponse]
    def get_lambda_function_recommendations(params = {}, options = {})
      request = build_request(:get_lambda_function_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns license recommendations for Amazon EC2 instances that run on a specific license.</p>
    #          <p>Compute Optimizer generates recommendations for licenses that meet a specific set of requirements. For more
    #             information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    # @param [Hash, Types::GetLicenseRecommendationsRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>
    #               The ARN that identifies the Amazon EC2 instance.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:ec2:region:aws_account_id:instance/instance-id</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>
    #               The token to advance to the next page of license recommendations.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of license recommendations to return with a single request.
    #           </p>
    #            <p>
    #               To retrieve the remaining results, make another request with the returned
    #               <code>nextToken</code> value.
    #           </p>
    # @option params [Array<Types::LicenseRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of license recommendations.
    #           </p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return license recommendations.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return license recommendations.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding" # One of: ["Finding", "FindingReasonCode", "LicenseName"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.get_license_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     license_recommendations: [
    #       {
    #         resource_arn: "ResourceArn",
    #         account_id: "AccountId",
    #         current_license_configuration: {
    #           number_of_cores: 1,
    #           instance_type: "InstanceType",
    #           operating_system: "OperatingSystem",
    #           license_edition: "Enterprise" # One of: ["Enterprise", "Standard", "Free", "NoLicenseEditionFound"],
    #           license_name: "SQLServer" # One of: ["SQLServer"],
    #           license_model: "LicenseIncluded" # One of: ["LicenseIncluded", "BringYourOwnLicense"],
    #           license_version: "LicenseVersion",
    #           metrics_source: [
    #             {
    #               provider: "CloudWatchApplicationInsights" # One of: ["CloudWatchApplicationInsights"],
    #               provider_arn: "MetricProviderArn"
    #             }
    #           ]
    #         },
    #         lookback_period_in_days: 1.0,
    #         last_refresh_timestamp: Time.now,
    #         finding: "InsufficientMetrics" # One of: ["InsufficientMetrics", "Optimized", "NotOptimized"],
    #         finding_reason_codes: ["InvalidCloudWatchApplicationInsightsSetup" # One of: ["InvalidCloudWatchApplicationInsightsSetup", "CloudWatchApplicationInsightsError", "LicenseOverprovisioned", "Optimized"]],
    #         license_recommendation_options: [
    #           {
    #             rank: 1,
    #             operating_system: "OperatingSystem",
    #             license_edition: "Enterprise" # One of: ["Enterprise", "Standard", "Free", "NoLicenseEditionFound"],
    #             license_model: "LicenseIncluded" # One of: ["LicenseIncluded", "BringYourOwnLicense"],
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetLicenseRecommendationsResponse]
    def get_license_recommendations(params = {}, options = {})
      request = build_request(:get_license_recommendations, params)
      request.send_request(options)
    end

    # <p>
    #             Returns the projected metrics of Aurora and RDS database recommendations.
    #         </p>
    # @param [Hash, Types::GetRDSDatabaseRecommendationProjectedMetricsRequest] params
    # @option params [String] :resource_arn
    #   <p>
    #               The ARN that identifies the Amazon Aurora or RDS database.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:db:{resourceName}</code>
    #            </p>
    # @option params [String] :stat
    #   <p>
    #               The statistic of the projected metrics.
    #           </p>
    # @option params [Integer] :period
    #   <p>
    #               The granularity, in seconds, of the projected metrics data points.
    #           </p>
    # @option params [Time] :start_time
    #   <p>
    #               The timestamp of the first projected metrics data point to return.
    #           </p>
    # @option params [Time] :end_time
    #   <p>
    #               The timestamp of the last projected metrics data point to return.
    #           </p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     stat: "Maximum" # One of: ["Maximum", "Average"], # required
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.get_rds_database_recommendation_projected_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_option_projected_metrics: [
    #       {
    #         recommended_db_instance_class: "RecommendedDBInstanceClass",
    #         rank: 1,
    #         projected_metrics: [
    #           {
    #             name: "CPU" # One of: ["CPU", "Memory", "EBSVolumeStorageSpaceUtilization", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "EBSVolumeReadIOPS", "EBSVolumeWriteIOPS", "EBSVolumeReadThroughput", "EBSVolumeWriteThroughput", "DatabaseConnections", "StorageNetworkReceiveThroughput", "StorageNetworkTransmitThroughput", "AuroraMemoryHealthState", "AuroraMemoryNumDeclinedSql", "AuroraMemoryNumKillConnTotal", "AuroraMemoryNumKillQueryTotal", "ReadIOPSEphemeralStorage", "WriteIOPSEphemeralStorage", "VolumeReadIOPs", "VolumeBytesUsed", "VolumeWriteIOPs"],
    #             timestamps: [Time.now],
    #             values: [1.0]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetRDSDatabaseRecommendationProjectedMetricsResponse]
    def get_rds_database_recommendation_projected_metrics(params = {}, options = {})
      request = build_request(:get_rds_database_recommendation_projected_metrics, params)
      request.send_request(options)
    end

    # <p>
    #             Returns Amazon Aurora and RDS database recommendations.
    #         </p>
    #          <p>Compute Optimizer generates recommendations for Amazon Aurora and RDS databases that 
    #             meet a specific set of requirements. For more
    #             information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #                     Guide</i>.</p>
    # @param [Hash, Types::GetRDSDatabaseRecommendationsRequest] params
    # @option params [Array<String>] :resource_arns
    #   <p>
    #               The ARN that identifies the Amazon Aurora or RDS database.
    #           </p>
    #            <p>
    #               The following is the format of the ARN:
    #           </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:db:{resourceName}</code>
    #            </p>
    #            <p> The following is the format of a DB Cluster ARN: </p>
    #            <p>
    #               <code>arn:aws:rds:{region}:{accountId}:cluster:{resourceName}</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>
    #               The token to advance to the next page of Amazon Aurora and RDS database recommendations.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Amazon Aurora and RDS database recommendations to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #               <code>nextToken</code> value.</p>
    # @option params [Array<Types::RDSDBRecommendationFilter>] :filters
    #   <p>
    #               An array of objects to specify a filter that returns a more specific list of Amazon Aurora and RDS database recommendations.
    #           </p>
    # @option params [Array<String>] :account_ids
    #   <p>
    #               Return the Amazon Aurora and RDS database recommendations to the specified Amazon Web Services account IDs.
    #           </p>
    #            <p>If your account is the management account or the delegated administrator 
    #               of an organization, use this parameter to return the Amazon Aurora and RDS database recommendations to specific
    #               member accounts.</p>
    #            <p>You can only specify one account ID per request.</p>
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   <p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, <a>GetEC2RecommendationProjectedMetrics</a>, <a>GetRDSDatabaseRecommendations</a>, and <a>GetRDSDatabaseRecommendationProjectedMetrics</a> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arns: ["ResourceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "InstanceFinding" # One of: ["InstanceFinding", "InstanceFindingReasonCode", "StorageFinding", "StorageFindingReasonCode", "Idle"],
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     account_ids: ["AccountId"],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]]
    #     }
    #   }
    #   options = {}
    #   response = client.get_rds_database_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     rds_db_recommendations: [
    #       {
    #         resource_arn: "ResourceArn",
    #         account_id: "AccountId",
    #         engine: "Engine",
    #         engine_version: "EngineVersion",
    #         promotion_tier: 1,
    #         current_db_instance_class: "CurrentDBInstanceClass",
    #         current_storage_configuration: {
    #           storage_type: "StorageType",
    #           allocated_storage: 1,
    #           iops: 1,
    #           max_allocated_storage: 1,
    #           storage_throughput: 1
    #         },
    #         db_cluster_identifier: "DBClusterIdentifier",
    #         idle: "True" # One of: ["True", "False"],
    #         instance_finding: "Optimized" # One of: ["Optimized", "Underprovisioned", "Overprovisioned"],
    #         storage_finding: "Optimized" # One of: ["Optimized", "Underprovisioned", "Overprovisioned", "NotOptimized"],
    #         instance_finding_reason_codes: ["CPUOverprovisioned" # One of: ["CPUOverprovisioned", "NetworkBandwidthOverprovisioned", "EBSIOPSOverprovisioned", "EBSIOPSUnderprovisioned", "EBSThroughputOverprovisioned", "CPUUnderprovisioned", "NetworkBandwidthUnderprovisioned", "EBSThroughputUnderprovisioned", "NewGenerationDBInstanceClassAvailable", "NewEngineVersionAvailable", "DBClusterWriterUnderprovisioned", "MemoryUnderprovisioned", "InstanceStorageReadIOPSUnderprovisioned", "InstanceStorageWriteIOPSUnderprovisioned"]],
    #         current_instance_performance_risk: "VeryLow" # One of: ["VeryLow", "Low", "Medium", "High"],
    #         current_storage_estimated_monthly_volume_io_ps_cost_variation: "None" # One of: ["None", "Low", "Medium", "High"],
    #         storage_finding_reason_codes: ["EBSVolumeAllocatedStorageUnderprovisioned" # One of: ["EBSVolumeAllocatedStorageUnderprovisioned", "EBSVolumeThroughputUnderprovisioned", "EBSVolumeIOPSOverprovisioned", "EBSVolumeThroughputOverprovisioned", "NewGenerationStorageTypeAvailable", "DBClusterStorageOptionAvailable", "DBClusterStorageSavingsAvailable"]],
    #         instance_recommendation_options: [
    #           {
    #             db_instance_class: "DBInstanceClass",
    #             projected_utilization_metrics: [
    #               {
    #                 name: "CPU" # One of: ["CPU", "Memory", "EBSVolumeStorageSpaceUtilization", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "EBSVolumeReadIOPS", "EBSVolumeWriteIOPS", "EBSVolumeReadThroughput", "EBSVolumeWriteThroughput", "DatabaseConnections", "StorageNetworkReceiveThroughput", "StorageNetworkTransmitThroughput", "AuroraMemoryHealthState", "AuroraMemoryNumDeclinedSql", "AuroraMemoryNumKillConnTotal", "AuroraMemoryNumKillQueryTotal", "ReadIOPSEphemeralStorage", "WriteIOPSEphemeralStorage", "VolumeReadIOPs", "VolumeBytesUsed", "VolumeWriteIOPs"],
    #                 statistic: "Maximum" # One of: ["Maximum", "Minimum", "Average"],
    #                 value: 1.0
    #               }
    #             ],
    #             performance_risk: 1.0,
    #             rank: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         storage_recommendation_options: [
    #           {
    #             storage_configuration: {
    #               storage_type: "StorageType",
    #               allocated_storage: 1,
    #               iops: 1,
    #               max_allocated_storage: 1,
    #               storage_throughput: 1
    #             },
    #             rank: 1,
    #             savings_opportunity: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             savings_opportunity_after_discounts: {
    #               savings_opportunity_percentage: 1.0,
    #               estimated_monthly_savings: {
    #                 currency: "USD" # One of: ["USD", "CNY"],
    #                 value: 1.0
    #               }
    #             },
    #             estimated_monthly_volume_io_ps_cost_variation: "None" # One of: ["None", "Low", "Medium", "High"]
    #           }
    #         ],
    #         utilization_metrics: [
    #           {
    #             name: "CPU" # One of: ["CPU", "Memory", "EBSVolumeStorageSpaceUtilization", "NetworkReceiveThroughput", "NetworkTransmitThroughput", "EBSVolumeReadIOPS", "EBSVolumeWriteIOPS", "EBSVolumeReadThroughput", "EBSVolumeWriteThroughput", "DatabaseConnections", "StorageNetworkReceiveThroughput", "StorageNetworkTransmitThroughput", "AuroraMemoryHealthState", "AuroraMemoryNumDeclinedSql", "AuroraMemoryNumKillConnTotal", "AuroraMemoryNumKillQueryTotal", "ReadIOPSEphemeralStorage", "WriteIOPSEphemeralStorage", "VolumeReadIOPs", "VolumeBytesUsed", "VolumeWriteIOPs"],
    #             statistic: "Maximum" # One of: ["Maximum", "Minimum", "Average"],
    #             value: 1.0
    #           }
    #         ],
    #         effective_recommendation_preferences: {
    #           cpu_vendor_architectures: ["AWS_ARM64" # One of: ["AWS_ARM64", "CURRENT"]],
    #           enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #           look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #           savings_estimation_mode: {
    #             source: "PublicPricing" # One of: ["PublicPricing", "CostExplorerRightsizing", "CostOptimizationHub"]
    #           }
    #         },
    #         lookback_period_in_days: 1.0,
    #         last_refresh_timestamp: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         identifier: "Identifier",
    #         code: "Code",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::GetRDSDatabaseRecommendationsResponse]
    def get_rds_database_recommendations(params = {}, options = {})
      request = build_request(:get_rds_database_recommendations, params)
      request.send_request(options)
    end

    # <p>Returns existing recommendation preferences, such as enhanced infrastructure
    #             metrics.</p>
    #          <p>Use the <code>scope</code> parameter to specify which preferences to return. You can
    #             specify to return preferences for an organization, a specific account ID, or a specific
    #             EC2 instance or Auto Scaling group Amazon Resource Name (ARN).</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    # @param [Hash, Types::GetRecommendationPreferencesRequest] params
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference for which to return
    #               preferences.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    # @option params [Types::Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to return.</p>
    #            <p>You can return recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of recommendation preferences.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendation preferences to return with a single
    #               request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService", "License", "RdsDBInstance", "AuroraDBClusterStorage", "Idle"], # required
    #     scope: {
    #       name: "Organization" # One of: ["Organization", "AccountId", "ResourceArn"],
    #       value: "ScopeValue"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_recommendation_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     recommendation_preferences_details: [
    #       {
    #         scope: {
    #           name: "Organization" # One of: ["Organization", "AccountId", "ResourceArn"],
    #           value: "ScopeValue"
    #         },
    #         resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService", "License", "RdsDBInstance", "AuroraDBClusterStorage", "Idle"],
    #         enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #         inferred_workload_types: "Active" # One of: ["Active", "Inactive"],
    #         external_metrics_preference: {
    #           source: "Datadog" # One of: ["Datadog", "Dynatrace", "NewRelic", "Instana"]
    #         },
    #         look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #         utilization_preferences: [
    #           {
    #             metric_name: "CpuUtilization" # One of: ["CpuUtilization", "MemoryUtilization"],
    #             metric_parameters: {
    #               threshold: "P90" # One of: ["P90", "P95", "P99_5"],
    #               headroom: "PERCENT_30" # One of: ["PERCENT_30", "PERCENT_20", "PERCENT_10", "PERCENT_0"]
    #             }
    #           }
    #         ],
    #         preferred_resources: [
    #           {
    #             name: "Ec2InstanceTypes" # One of: ["Ec2InstanceTypes"],
    #             include_list: ["PreferredResourceValue"],
    #             effective_include_list: ["PreferredResourceValue"],
    #             exclude_list: ["PreferredResourceValue"]
    #           }
    #         ],
    #         savings_estimation_mode: "AfterDiscounts" # One of: ["AfterDiscounts", "BeforeDiscounts"]
    #       }
    #     ]
    #   }
    # @return [Types::GetRecommendationPreferencesResponse]
    def get_recommendation_preferences(params = {}, options = {})
      request = build_request(:get_recommendation_preferences, params)
      request.send_request(options)
    end

    # <p>Returns the optimization findings for an account.</p>
    #          <p>It returns the number of:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon EC2 instances in an account that are
    #                         <code>Underprovisioned</code>, <code>Overprovisioned</code>, or
    #                         <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>EC2Auto Scaling groups in an account that are <code>NotOptimized</code>, or
    #                         <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon EBS volumes in an account that are <code>NotOptimized</code>,
    #                     or <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>Lambda functions in an account that are <code>NotOptimized</code>,
    #                     or <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon ECS services in an account that are <code>Underprovisioned</code>, 
    #                     <code>Overprovisioned</code>, or <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>Commercial software licenses in an account that are <code>InsufficientMetrics</code>, 
    #                     <code>NotOptimized</code> or <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Aurora and Amazon RDS databases in an account that are <code>Underprovisioned</code>, 
    #                     <code>Overprovisioned</code>, <code>Optimized</code>, or <code>NotOptimized</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetRecommendationSummariesRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return recommendation
    #               summaries.</p>
    #            <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return recommendation summaries.</p>
    #            <p>Only one account ID can be specified per request.</p>
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of recommendation summaries.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendation summaries to return with a single request.</p>
    #            <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_recommendation_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     recommendation_summaries: [
    #       {
    #         summaries: [
    #           {
    #             name: "Underprovisioned" # One of: ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"],
    #             value: 1.0,
    #             reason_code_summaries: [
    #               {
    #                 name: "MemoryOverprovisioned" # One of: ["MemoryOverprovisioned", "MemoryUnderprovisioned"],
    #                 value: 1.0
    #               }
    #             ]
    #           }
    #         ],
    #         idle_summaries: [
    #           {
    #             name: "Idle" # One of: ["Idle", "Unattached"],
    #             value: 1.0
    #           }
    #         ],
    #         recommendation_resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "EcsService", "License", "RdsDBInstance", "RdsDBInstanceStorage", "AuroraDBClusterStorage"],
    #         account_id: "AccountId",
    #         savings_opportunity: {
    #           savings_opportunity_percentage: 1.0,
    #           estimated_monthly_savings: {
    #             currency: "USD" # One of: ["USD", "CNY"],
    #             value: 1.0
    #           }
    #         },
    #         idle_savings_opportunity: {
    #           savings_opportunity_percentage: 1.0,
    #           estimated_monthly_savings: {
    #             currency: "USD" # One of: ["USD", "CNY"],
    #             value: 1.0
    #           }
    #         },
    #         aggregated_savings_opportunity: {
    #           savings_opportunity_percentage: 1.0,
    #           estimated_monthly_savings: {
    #             currency: "USD" # One of: ["USD", "CNY"],
    #             value: 1.0
    #           }
    #         },
    #         current_performance_risk_ratings: {
    #           high: 1,
    #           medium: 1,
    #           low: 1,
    #           very_low: 1
    #         },
    #         inferred_workload_savings: [
    #           {
    #             inferred_workload_types: ["AmazonEmr" # One of: ["AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"]],
    #             estimated_monthly_savings: {
    #               currency: "USD" # One of: ["USD", "CNY"],
    #               value: 1.0
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetRecommendationSummariesResponse]
    def get_recommendation_summaries(params = {}, options = {})
      request = build_request(:get_recommendation_summaries, params)
      request.send_request(options)
    end

    # <p>Creates a new recommendation preference or updates an existing recommendation
    #             preference, such as enhanced infrastructure metrics.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    # @param [Hash, Types::PutRecommendationPreferencesRequest] params
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #            <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    # @option params [Types::Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to create.</p>
    #            <p>You can create recommendation preferences at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #            <note>
    #               <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                   organization and account levels. You can create recommendation preferences for
    #                       Auto Scaling groups only at the resource level by specifying a scope name
    #                   of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                   Resource Name (ARN). This will configure the preference for all instances that are
    #                   part of the specified Auto Scaling group. You also cannot create recommendation
    #                   preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                   standalone instances.</p>
    #            </note>
    # @option params [String] :enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference to create
    #               or update.</p>
    #            <p>Specify the <code>Active</code> status to activate the preference, or specify
    #                   <code>Inactive</code> to deactivate the preference.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    # @option params [String] :inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference to create or
    #               update.</p>
    #            <note>
    #               <p>The inferred workload type feature is active by default. To deactivate it, create
    #                   a recommendation preference.</p>
    #            </note>
    #            <p>Specify the <code>Inactive</code> status to deactivate the feature, or specify
    #                   <code>Active</code> to activate it.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html">Inferred workload
    #                   types</a> in the <i>Compute Optimizer User Guide</i>.</p>
    # @option params [Types::ExternalMetricsPreference] :external_metrics_preference
    #   <p>The provider of the external metrics recommendation preference to create or
    #               update.</p>
    #            <p>Specify a valid provider in the <code>source</code> field to activate the preference.
    #               To delete this preference, see the <a>DeleteRecommendationPreferences</a>
    #               action.</p>
    #            <p>This preference can only be set for the <code>Ec2Instance</code> resource type.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html">External metrics
    #                   ingestion</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    # @option params [String] :look_back_period
    #   <p>
    #               The preference to control the number of days the utilization metrics of the Amazon Web Services resource are analyzed. 
    #               When this preference isn't specified, we use the default value <code>DAYS_14</code>.
    #           </p>
    #            <p>You can only set this preference for the Amazon EC2 instance and Auto Scaling group resource types.
    #               </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Amazon EC2 instance lookback preferences can be set at the organization, account, and resource levels.</p>
    #                  </li>
    #                  <li>
    #                     <p>Auto Scaling group lookback preferences can only be set at the resource level.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Array<Types::UtilizationPreference>] :utilization_preferences
    #   <p>
    #               The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. When this 
    #               preference isn't specified, we use the following default values.
    #           </p>
    #            <p>CPU utilization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P99_5</code> for threshold</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PERCENT_20</code> for headroom</p>
    #               </li>
    #            </ul>
    #            <p>Memory utilization:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PERCENT_20</code> for headroom</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>You can only set CPU and memory utilization preferences for the Amazon EC2 instance resource type.</p>
    #                  </li>
    #                  <li>
    #                     <p>The threshold setting isn’t available for memory utilization.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Array<Types::PreferredResource>] :preferred_resources
    #   <p>
    #               The preference to control which resource type values are considered when generating rightsizing recommendations. 
    #               You can specify this preference as a combination of include and exclude lists. You must specify either an 
    #               <code>includeList</code> or <code>excludeList</code>. If the preference is an empty set of resource type values, 
    #               an error occurs.
    #           </p>
    #            <note>
    #               <p>You can only set this preference for the Amazon EC2 instance and Auto Scaling group resource types.</p>
    #            </note>
    # @option params [String] :savings_estimation_mode
    #   <p>
    #               The status of the savings estimation mode preference to create or update.
    #           </p>
    #            <p>Specify the <code>AfterDiscounts</code> status to activate the preference, or specify <code>BeforeDiscounts</code> to deactivate the preference.</p>
    #            <p>Only the account manager or delegated administrator of your organization can activate this preference.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/savings-estimation-mode.html">
    #               Savings estimation mode</a> in the <i>Compute Optimizer User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Ec2Instance" # One of: ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService", "License", "RdsDBInstance", "AuroraDBClusterStorage", "Idle"], # required
    #     scope: {
    #       name: "Organization" # One of: ["Organization", "AccountId", "ResourceArn"],
    #       value: "ScopeValue"
    #     },
    #     enhanced_infrastructure_metrics: "Active" # One of: ["Active", "Inactive"],
    #     inferred_workload_types: "Active" # One of: ["Active", "Inactive"],
    #     external_metrics_preference: {
    #       source: "Datadog" # One of: ["Datadog", "Dynatrace", "NewRelic", "Instana"]
    #     },
    #     look_back_period: "DAYS_14" # One of: ["DAYS_14", "DAYS_32", "DAYS_93"],
    #     utilization_preferences: [
    #       {
    #         metric_name: "CpuUtilization" # One of: ["CpuUtilization", "MemoryUtilization"],
    #         metric_parameters: {
    #           threshold: "P90" # One of: ["P90", "P95", "P99_5"],
    #           headroom: "PERCENT_30" # One of: ["PERCENT_30", "PERCENT_20", "PERCENT_10", "PERCENT_0"]
    #         }
    #       }
    #     ],
    #     preferred_resources: [
    #       {
    #         name: "Ec2InstanceTypes" # One of: ["Ec2InstanceTypes"],
    #         include_list: ["PreferredResourceValue"],
    #         exclude_list: ["PreferredResourceValue"]
    #       }
    #     ],
    #     savings_estimation_mode: "AfterDiscounts" # One of: ["AfterDiscounts", "BeforeDiscounts"]
    #   }
    #   options = {}
    #   response = client.put_recommendation_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutRecommendationPreferencesResponse]
    def put_recommendation_preferences(params = {}, options = {})
      request = build_request(:put_recommendation_preferences, params)
      request.send_request(options)
    end

    # <p>Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service.</p>
    #          <p>If the account is a management account of an organization, this action can also be
    #             used to enroll member accounts of the organization.</p>
    #          <p>You must have the appropriate permissions to opt in to Compute Optimizer, to view its
    #             recommendations, and to opt out. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html">Controlling access with Amazon Web Services Identity and Access Management</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #          <p>When you opt in, Compute Optimizer automatically creates a service-linked role in your
    #             account to access its data. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html">Using
    #                 Service-Linked Roles for Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    # @param [Hash, Types::UpdateEnrollmentStatusRequest] params
    # @option params [String] :status
    #   <p>The new enrollment status of the account.</p>
    #            <p>The following status options are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code> - Opts in your account to the Compute Optimizer service.
    #                           Compute Optimizer begins analyzing the configuration and utilization metrics
    #                       of your Amazon Web Services resources after you opt in. For more information, see
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html">Metrics analyzed by Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Inactive</code> - Opts out your account from the Compute Optimizer
    #                       service. Your account's recommendations and related metrics data will be deleted
    #                       from Compute Optimizer after you opt out.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update
    #                   the enrollment status of an account. They are returned in the response of a request
    #                   to update the enrollment status of an account.</p>
    #            </note>
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the
    #               management account of an organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"], # required
    #     include_member_accounts: false
    #   }
    #   options = {}
    #   response = client.update_enrollment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"],
    #     status_reason: "StatusReason"
    #   }
    # @return [Types::UpdateEnrollmentStatusResponse]
    def update_enrollment_status(params = {}, options = {})
      request = build_request(:update_enrollment_status, params)
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
      context[:gem_name] = 'aws-sdk-computeoptimizer'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
