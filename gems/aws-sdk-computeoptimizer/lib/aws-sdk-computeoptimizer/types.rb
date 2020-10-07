# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComputeOptimizer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of an Auto Scaling group.
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity, or number of instances, for the Auto Scaling
    #   group.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum size, or minimum number of instances, for the Auto
    #   Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum size, or maximum number of instances, for the Auto
    #   Scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the Auto Scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupConfiguration AWS API Documentation
    #
    class AutoScalingGroupConfiguration < Struct.new(
      :desired_capacity,
      :min_size,
      :max_size,
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Auto Scaling group recommendation.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #   @return [String]
    #
    # @!attribute [rw] finding
    #   The finding classification for the Auto Scaling group.
    #
    #   Findings for Auto Scaling groups include:
    #
    #   * <b> <code>NotOptimized</code> </b>—An Auto Scaling group is
    #     considered not optimized when AWS Compute Optimizer identifies a
    #     recommendation that can provide better performance for your
    #     workload.
    #
    #   * <b> <code>Optimized</code> </b>—An Auto Scaling group is
    #     considered optimized when Compute Optimizer determines that the
    #     group is correctly provisioned to run your workload based on the
    #     chosen instance type. For optimized resources, Compute Optimizer
    #     might recommend a new generation instance type.
    #
    #   <note markdown="1"> The values that are returned might be `NOT_OPTIMIZED` or
    #   `OPTIMIZED`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   Auto Scaling group.
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the Auto Scaling group.
    #   @return [Float]
    #
    # @!attribute [rw] current_configuration
    #   An array of objects that describe the current configuration of the
    #   Auto Scaling group.
    #   @return [Types::AutoScalingGroupConfiguration]
    #
    # @!attribute [rw] recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   Auto Scaling group.
    #   @return [Array<Types::AutoScalingGroupRecommendationOption>]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The time stamp of when the Auto Scaling group recommendation was
    #   last refreshed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupRecommendation AWS API Documentation
    #
    class AutoScalingGroupRecommendation < Struct.new(
      :account_id,
      :auto_scaling_group_arn,
      :auto_scaling_group_name,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :current_configuration,
      :recommendation_options,
      :last_refresh_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Auto Scaling group.
    #
    # @!attribute [rw] configuration
    #   An array of objects that describe an Auto Scaling group
    #   configuration.
    #   @return [Types::AutoScalingGroupConfiguration]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the Auto Scaling group recommendation option.
    #
    #   <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    #   metrics returned. Additionally, the `Memory` metric is returned only
    #   for resources that have the unified CloudWatch agent installed on
    #   them. For more information, see [Enabling Memory Utilization with
    #   the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] performance_risk
    #   The performance risk of the Auto Scaling group configuration
    #   recommendation.
    #
    #   Performance risk is the likelihood of the recommended instance type
    #   not meeting the performance requirement of your workload.
    #
    #   The lowest performance risk is categorized as `0`, and the highest
    #   as `5`.
    #   @return [Float]
    #
    # @!attribute [rw] rank
    #   The rank of the Auto Scaling group recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/AutoScalingGroupRecommendationOption AWS API Documentation
    #
    class AutoScalingGroupRecommendationOption < Struct.new(
      :configuration,
      :projected_utilization_metrics,
      :performance_risk,
      :rank)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecommendationExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         job_ids: ["JobId"],
    #         filters: [
    #           {
    #             name: "ResourceType", # accepts ResourceType, JobStatus
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] job_ids
    #   The identification numbers of the export jobs to return.
    #
    #   An export job ID is returned when you create an export using the
    #   `ExportAutoScalingGroupRecommendations` or
    #   `ExportEC2InstanceRecommendations` actions.
    #
    #   All export jobs created in the last seven days are returned if this
    #   parameter is omitted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter to return a more specific
    #   list of export jobs.
    #   @return [Array<Types::JobFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of export jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of export jobs to return with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DescribeRecommendationExportJobsRequest AWS API Documentation
    #
    class DescribeRecommendationExportJobsRequest < Struct.new(
      :job_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_export_jobs
    #   An array of objects that describe recommendation export jobs.
    #   @return [Array<Types::RecommendationExportJob>]
    #
    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of export jobs.
    #
    #   This value is null when there are no more pages of export jobs to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DescribeRecommendationExportJobsResponse AWS API Documentation
    #
    class DescribeRecommendationExportJobsResponse < Struct.new(
      :recommendation_export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportAutoScalingGroupRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"],
    #         filters: [
    #           {
    #             name: "Finding", # accepts Finding, RecommendationSourceType
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         fields_to_export: ["AccountId"], # accepts AccountId, AutoScalingGroupArn, AutoScalingGroupName, Finding, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, UtilizationMetricsEbsReadOpsPerSecondMaximum, UtilizationMetricsEbsWriteOpsPerSecondMaximum, UtilizationMetricsEbsReadBytesPerSecondMaximum, UtilizationMetricsEbsWriteBytesPerSecondMaximum, LookbackPeriodInDays, CurrentConfigurationInstanceType, CurrentConfigurationDesiredCapacity, CurrentConfigurationMinSize, CurrentConfigurationMaxSize, CurrentOnDemandPrice, CurrentStandardOneYearNoUpfrontReservedPrice, CurrentStandardThreeYearNoUpfrontReservedPrice, CurrentVCpus, CurrentMemory, CurrentStorage, CurrentNetwork, RecommendationOptionsConfigurationInstanceType, RecommendationOptionsConfigurationDesiredCapacity, RecommendationOptionsConfigurationMinSize, RecommendationOptionsConfigurationMaxSize, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, RecommendationOptionsPerformanceRisk, RecommendationOptionsOnDemandPrice, RecommendationOptionsStandardOneYearNoUpfrontReservedPrice, RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice, RecommendationOptionsVcpus, RecommendationOptionsMemory, RecommendationOptionsStorage, RecommendationOptionsNetwork, LastRefreshTimestamp
    #         s3_destination_config: { # required
    #           bucket: "DestinationBucket",
    #           key_prefix: "DestinationKeyPrefix",
    #         },
    #         file_format: "Csv", # accepts Csv
    #         include_member_accounts: false,
    #       }
    #
    # @!attribute [rw] account_ids
    #   The IDs of the AWS accounts for which to export Auto Scaling group
    #   recommendations.
    #
    #   If your account is the master account of an organization, use this
    #   parameter to specify the member accounts for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter to export a more specific
    #   set of Auto Scaling group recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permission policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the master
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportAutoScalingGroupRecommendationsRequest AWS API Documentation
    #
    class ExportAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the `DescribeRecommendationExportJobs` action, and specify the
    #   job ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   An object that describes the destination Amazon S3 bucket of a
    #   recommendations export file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportAutoScalingGroupRecommendationsResponse AWS API Documentation
    #
    class ExportAutoScalingGroupRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination of the recommendations export and metadata
    # files.
    #
    # @!attribute [rw] s3
    #   An object that describes the destination Amazon Simple Storage
    #   Service (Amazon S3) bucket name and object keys of a recommendations
    #   export file, and its associated metadata file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportDestination AWS API Documentation
    #
    class ExportDestination < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportEC2InstanceRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"],
    #         filters: [
    #           {
    #             name: "Finding", # accepts Finding, RecommendationSourceType
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         fields_to_export: ["AccountId"], # accepts AccountId, InstanceArn, InstanceName, Finding, LookbackPeriodInDays, CurrentInstanceType, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, UtilizationMetricsEbsReadOpsPerSecondMaximum, UtilizationMetricsEbsWriteOpsPerSecondMaximum, UtilizationMetricsEbsReadBytesPerSecondMaximum, UtilizationMetricsEbsWriteBytesPerSecondMaximum, CurrentOnDemandPrice, CurrentStandardOneYearNoUpfrontReservedPrice, CurrentStandardThreeYearNoUpfrontReservedPrice, CurrentVCpus, CurrentMemory, CurrentStorage, CurrentNetwork, RecommendationOptionsInstanceType, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, RecommendationOptionsPerformanceRisk, RecommendationOptionsVcpus, RecommendationOptionsMemory, RecommendationOptionsStorage, RecommendationOptionsNetwork, RecommendationOptionsOnDemandPrice, RecommendationOptionsStandardOneYearNoUpfrontReservedPrice, RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice, RecommendationsSourcesRecommendationSourceArn, RecommendationsSourcesRecommendationSourceType, LastRefreshTimestamp
    #         s3_destination_config: { # required
    #           bucket: "DestinationBucket",
    #           key_prefix: "DestinationKeyPrefix",
    #         },
    #         file_format: "Csv", # accepts Csv
    #         include_member_accounts: false,
    #       }
    #
    # @!attribute [rw] account_ids
    #   The IDs of the AWS accounts for which to export instance
    #   recommendations.
    #
    #   If your account is the master account of an organization, use this
    #   parameter to specify the member accounts for which you want to
    #   export recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the include member accounts parameter, is
    #   omitted.
    #
    #   You can specify multiple account IDs per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter to export a more specific
    #   set of instance recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create
    #   the S3 bucket, ensure that it has the required permission policy to
    #   allow Compute Optimizer to write the export file to it. If you plan
    #   to specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3
    #   bucket. For more information, see [Amazon S3 Bucket Policy for
    #   Compute Optimizer][1] in the *Compute Optimizer user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #   @return [Types::S3DestinationConfig]
    #
    # @!attribute [rw] file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the master
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   Recommendations for member accounts are not included in the export
    #   if this parameter, or the account IDs parameter, is omitted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEC2InstanceRecommendationsRequest AWS API Documentation
    #
    class ExportEC2InstanceRecommendationsRequest < Struct.new(
      :account_ids,
      :filters,
      :fields_to_export,
      :s3_destination_config,
      :file_format,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #
    #   Use the `DescribeRecommendationExportJobs` action, and specify the
    #   job ID to view the status of an export job.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   An object that describes the destination Amazon S3 bucket of a
    #   recommendations export file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEC2InstanceRecommendationsResponse AWS API Documentation
    #
    class ExportEC2InstanceRecommendationsResponse < Struct.new(
      :job_id,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of
    # recommendations.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "Finding", # accepts Finding, RecommendationSourceType
    #         values: ["FilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `Finding` to return recommendations with a specific findings
    #   classification (e.g., `Overprovisioned`).
    #
    #   Specify `RecommendationSourceType` to return recommendations of a
    #   specific resource type (e.g., `AutoScalingGroup`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   If you specify the `name` parameter as `Finding`, and you request
    #   recommendations for an *instance*, then the valid values are
    #   `Underprovisioned`, `Overprovisioned`, `NotOptimized`, or
    #   `Optimized`.
    #
    #   If you specify the `name` parameter as `Finding`, and you request
    #   recommendations for an *Auto Scaling group*, then the valid values
    #   are `Optimized`, or `NotOptimized`.
    #
    #   If you specify the `name` parameter as `RecommendationSourceType`,
    #   then the valid values are `Ec2Instance`, or `AutoScalingGroup`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAutoScalingGroupRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"],
    #         auto_scaling_group_arns: ["AutoScalingGroupArn"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Finding", # accepts Finding, RecommendationSourceType
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The IDs of the AWS accounts for which to return Auto Scaling group
    #   recommendations.
    #
    #   If your account is the master account of an organization, use this
    #   parameter to specify the member accounts for which you want to
    #   return Auto Scaling group recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_scaling_group_arns
    #   The Amazon Resource Name (ARN) of the Auto Scaling groups for which
    #   to return recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of Auto Scaling group
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Auto Scaling group recommendations to return
    #   with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter that returns a more
    #   specific list of Auto Scaling group recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendationsRequest AWS API Documentation
    #
    class GetAutoScalingGroupRecommendationsRequest < Struct.new(
      :account_ids,
      :auto_scaling_group_arns,
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of Auto Scaling group
    #   recommendations.
    #
    #   This value is null when there are no more pages of Auto Scaling
    #   group recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_recommendations
    #   An array of objects that describe Auto Scaling group
    #   recommendations.
    #   @return [Array<Types::AutoScalingGroupRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #
    #   For example, an error is returned if you request recommendations for
    #   an unsupported Auto Scaling group.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendationsResponse AWS API Documentation
    #
    class GetAutoScalingGroupRecommendationsResponse < Struct.new(
      :next_token,
      :auto_scaling_group_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEC2InstanceRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         instance_arns: ["InstanceArn"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Finding", # accepts Finding, RecommendationSourceType
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         account_ids: ["AccountId"],
    #       }
    #
    # @!attribute [rw] instance_arns
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of instance recommendations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instance recommendations to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter that returns a more
    #   specific list of instance recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] account_ids
    #   The IDs of the AWS accounts for which to return instance
    #   recommendations.
    #
    #   If your account is the master account of an organization, use this
    #   parameter to specify the member accounts for which you want to
    #   return instance recommendations.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendationsRequest AWS API Documentation
    #
    class GetEC2InstanceRecommendationsRequest < Struct.new(
      :instance_arns,
      :next_token,
      :max_results,
      :filters,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of instance
    #   recommendations.
    #
    #   This value is null when there are no more pages of instance
    #   recommendations to return.
    #   @return [String]
    #
    # @!attribute [rw] instance_recommendations
    #   An array of objects that describe instance recommendations.
    #   @return [Array<Types::InstanceRecommendation>]
    #
    # @!attribute [rw] errors
    #   An array of objects that describe errors of the request.
    #
    #   For example, an error is returned if you request recommendations for
    #   an instance of an unsupported instance family.
    #   @return [Array<Types::GetRecommendationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendationsResponse AWS API Documentation
    #
    class GetEC2InstanceRecommendationsResponse < Struct.new(
      :next_token,
      :instance_recommendations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEC2RecommendationProjectedMetricsRequest
    #   data as a hash:
    #
    #       {
    #         instance_arn: "InstanceArn", # required
    #         stat: "Maximum", # required, accepts Maximum, Average
    #         period: 1, # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendation projected metrics.
    #   @return [String]
    #
    # @!attribute [rw] stat
    #   The statistic of the projected metrics.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the projected metrics data points.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The time stamp of the first projected metrics data point to return.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time stamp of the last projected metrics data point to return.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetricsRequest AWS API Documentation
    #
    class GetEC2RecommendationProjectedMetricsRequest < Struct.new(
      :instance_arn,
      :stat,
      :period,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_option_projected_metrics
    #   An array of objects that describe a projected metrics.
    #   @return [Array<Types::RecommendedOptionProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetricsResponse AWS API Documentation
    #
    class GetEC2RecommendationProjectedMetricsResponse < Struct.new(
      :recommended_option_projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusRequest AWS API Documentation
    #
    class GetEnrollmentStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The enrollment status of the account.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the enrollment status of the account.
    #
    #   For example, an account might show a status of `Pending` because
    #   member accounts of an organization require more time to be enrolled
    #   in the service.
    #   @return [String]
    #
    # @!attribute [rw] member_accounts_enrolled
    #   Confirms the enrollment status of member accounts within the
    #   organization, if the account is a master account of an organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusResponse AWS API Documentation
    #
    class GetEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason,
      :member_accounts_enrolled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an error experienced when getting recommendations.
    #
    # For example, an error is returned if you request recommendations for
    # an unsupported Auto Scaling group, or if you request recommendations
    # for an instance of an unsupported instance family.
    #
    # @!attribute [rw] identifier
    #   The ID of the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message, or reason, for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationError AWS API Documentation
    #
    class GetRecommendationError < Struct.new(
      :identifier,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecommendationSummariesRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["AccountId"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] account_ids
    #   The IDs of the AWS accounts for which to return recommendation
    #   summaries.
    #
    #   If your account is the master account of an organization, use this
    #   parameter to specify the member accounts for which you want to
    #   return recommendation summaries.
    #
    #   Only one account ID can be specified per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to advance to the next page of recommendation summaries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendation summaries to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummariesRequest AWS API Documentation
    #
    class GetRecommendationSummariesRequest < Struct.new(
      :account_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to advance to the next page of recommendation
    #   summaries.
    #
    #   This value is null when there are no more pages of recommendation
    #   summaries to return.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_summaries
    #   An array of objects that summarize a recommendation.
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummariesResponse AWS API Documentation
    #
    class GetRecommendationSummariesResponse < Struct.new(
      :next_token,
      :recommendation_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon EC2 instance recommendation.
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] current_instance_type
    #   The instance type of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] finding
    #   The finding classification for the instance.
    #
    #   Findings for instances include:
    #
    #   * <b> <code>Underprovisioned</code> </b>—An instance is considered
    #     under-provisioned when at least one specification of your
    #     instance, such as CPU, memory, or network, does not meet the
    #     performance requirements of your workload. Under-provisioned
    #     instances may lead to poor application performance.
    #
    #   * <b> <code>Overprovisioned</code> </b>—An instance is considered
    #     over-provisioned when at least one specification of your instance,
    #     such as CPU, memory, or network, can be sized down while still
    #     meeting the performance requirements of your workload, and no
    #     specification is under-provisioned. Over-provisioned instances may
    #     lead to unnecessary infrastructure cost.
    #
    #   * <b> <code>Optimized</code> </b>—An instance is considered
    #     optimized when all specifications of your instance, such as CPU,
    #     memory, and network, meet the performance requirements of your
    #     workload and is not over provisioned. An optimized instance runs
    #     your workloads with optimal performance and infrastructure cost.
    #     For optimized resources, AWS Compute Optimizer might recommend a
    #     new generation instance type.
    #
    #   <note markdown="1"> The values that are returned might be `UNDER_PROVISIONED`,
    #   `OVER_PROVISIONED`, or `OPTIMIZED`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] utilization_metrics
    #   An array of objects that describe the utilization metrics of the
    #   instance.
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] look_back_period_in_days
    #   The number of days for which utilization metrics were analyzed for
    #   the instance.
    #   @return [Float]
    #
    # @!attribute [rw] recommendation_options
    #   An array of objects that describe the recommendation options for the
    #   instance.
    #   @return [Array<Types::InstanceRecommendationOption>]
    #
    # @!attribute [rw] recommendation_sources
    #   An array of objects that describe the source resource of the
    #   recommendation.
    #   @return [Array<Types::RecommendationSource>]
    #
    # @!attribute [rw] last_refresh_timestamp
    #   The time stamp of when the instance recommendation was last
    #   refreshed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InstanceRecommendation AWS API Documentation
    #
    class InstanceRecommendation < Struct.new(
      :instance_arn,
      :account_id,
      :instance_name,
      :current_instance_type,
      :finding,
      :utilization_metrics,
      :look_back_period_in_days,
      :recommendation_options,
      :recommendation_sources,
      :last_refresh_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation option for an Amazon EC2 instance.
    #
    # @!attribute [rw] instance_type
    #   The instance type of the instance recommendation.
    #   @return [String]
    #
    # @!attribute [rw] projected_utilization_metrics
    #   An array of objects that describe the projected utilization metrics
    #   of the instance recommendation option.
    #
    #   <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    #   metrics returned. Additionally, the `Memory` metric is returned only
    #   for resources that have the unified CloudWatch agent installed on
    #   them. For more information, see [Enabling Memory Utilization with
    #   the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [Array<Types::UtilizationMetric>]
    #
    # @!attribute [rw] performance_risk
    #   The performance risk of the instance recommendation option.
    #
    #   Performance risk is the likelihood of the recommended instance type
    #   not meeting the performance requirement of your workload.
    #
    #   The lowest performance risk is categorized as `0`, and the highest
    #   as `5`.
    #   @return [Float]
    #
    # @!attribute [rw] rank
    #   The rank of the instance recommendation option.
    #
    #   The top recommendation option is ranked as `1`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InstanceRecommendationOption AWS API Documentation
    #
    class InstanceRecommendationOption < Struct.new(
      :instance_type,
      :projected_utilization_metrics,
      :performance_risk,
      :rank)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid or out-of-range value was supplied for the input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of recommendation
    # export jobs.
    #
    # This filter is used with the `DescribeRecommendationExportJobs`
    # action.
    #
    # @note When making an API call, you may pass JobFilter
    #   data as a hash:
    #
    #       {
    #         name: "ResourceType", # accepts ResourceType, JobStatus
    #         values: ["FilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #
    #   Specify `ResourceType` to return export jobs of a specific resource
    #   type (e.g., `Ec2Instance`).
    #
    #   Specify `JobStatus` to return export jobs with a specific status
    #   (e.g, `Complete`).
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   If you specify the `name` parameter as `ResourceType`, the valid
    #   values are `Ec2Instance` or `AutoScalingGroup`.
    #
    #   If you specify the `name` parameter as `JobStatus`, the valid values
    #   are `Queued`, `InProgress`, `Complete`, or `Failed`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/JobFilter AWS API Documentation
    #
    class JobFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a limit of the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request must contain either a valid (registered) AWS access key ID
    # or X.509 certificate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/MissingAuthenticationToken AWS API Documentation
    #
    class MissingAuthenticationToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account is not opted in to AWS Compute Optimizer.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/OptInRequiredException AWS API Documentation
    #
    class OptInRequiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option,
    # such as an Amazon EC2 instance.
    #
    # <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    # metrics returned when you run the
    # `GetEC2RecommendationProjectedMetrics` action. Additionally, the
    # `Memory` metric is returned only for resources that have the unified
    # CloudWatch agent installed on them. For more information, see
    # [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #
    # @!attribute [rw] name
    #   The name of the projected utilization metric.
    #   @return [String]
    #
    # @!attribute [rw] timestamps
    #   The time stamps of the projected utilization metric.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the projected utilization metrics.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ProjectedMetric AWS API Documentation
    #
    class ProjectedMetric < Struct.new(
      :name,
      :timestamps,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recommendation export job.
    #
    # Use the `DescribeRecommendationExportJobs` action to view your
    # recommendation export jobs.
    #
    # Use the `ExportAutoScalingGroupRecommendations` or
    # `ExportEC2InstanceRecommendations` actions to request an export of
    # your recommendations.
    #
    # @!attribute [rw] job_id
    #   The identification number of the export job.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   An object that describes the destination of the export file.
    #   @return [Types::ExportDestination]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the exported recommendations.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the export job.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp of when the export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the export job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason for an export job failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationExportJob AWS API Documentation
    #
    class RecommendationExportJob < Struct.new(
      :job_id,
      :destination,
      :resource_type,
      :status,
      :creation_timestamp,
      :last_updated_timestamp,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the source of a recommendation, such as an Amazon EC2
    # instance or Auto Scaling group.
    #
    # @!attribute [rw] recommendation_source_arn
    #   The Amazon Resource Name (ARN) of the recommendation source.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_source_type
    #   The resource type of the recommendation source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationSource AWS API Documentation
    #
    class RecommendationSource < Struct.new(
      :recommendation_source_arn,
      :recommendation_source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a recommendation.
    #
    # @!attribute [rw] summaries
    #   An array of objects that describe a recommendation summary.
    #   @return [Array<Types::Summary>]
    #
    # @!attribute [rw] recommendation_resource_type
    #   The resource type of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the recommendation summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :summaries,
      :recommendation_resource_type,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option.
    #
    # <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    # metrics returned when you run the
    # `GetEC2RecommendationProjectedMetrics` action. Additionally, the
    # `Memory` metric is returned only for resources that have the unified
    # CloudWatch agent installed on them. For more information, see
    # [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #
    # @!attribute [rw] recommended_instance_type
    #   The recommended instance type.
    #   @return [String]
    #
    # @!attribute [rw] rank
    #   The rank of the recommendation option projected metric.
    #
    #   The top recommendation option is ranked as `1`.
    #
    #   The projected metric rank correlates to the recommendation option
    #   rank. For example, the projected metric ranked as `1` is related to
    #   the recommendation option that is also ranked as `1` in the same
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_metrics
    #   An array of objects that describe a projected utilization metric.
    #   @return [Array<Types::ProjectedMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/RecommendedOptionProjectedMetric AWS API Documentation
    #
    class RecommendedOptionProjectedMetric < Struct.new(
      :recommended_instance_type,
      :rank,
      :projected_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required for the action doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination Amazon Simple Storage Service (Amazon S3)
    # bucket name and object keys of a recommendations export file, and its
    # associated metadata file.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket used as the destination of an
    #   export file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The Amazon S3 bucket key of an export file.
    #
    #   The key uniquely identifies the object, or export file, in the S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] metadata_key
    #   The Amazon S3 bucket key of a metadata file.
    #
    #   The key uniquely identifies the object, or metadata file, in the S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket,
      :key,
      :metadata_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination Amazon Simple Storage Service (Amazon S3)
    # bucket name and key prefix for a recommendations export job.
    #
    # You must create the destination Amazon S3 bucket for your
    # recommendations export before you create the export job. Compute
    # Optimizer does not create the S3 bucket for you. After you create the
    # S3 bucket, ensure that it has the required permission policy to allow
    # Compute Optimizer to write the export file to it. If you plan to
    # specify an object prefix when you create the export job, you must
    # include the object prefix in the policy that you add to the S3 bucket.
    # For more information, see [Amazon S3 Bucket Policy for Compute
    # Optimizer][1] in the *Compute Optimizer user guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @note When making an API call, you may pass S3DestinationConfig
    #   data as a hash:
    #
    #       {
    #         bucket: "DestinationBucket",
    #         key_prefix: "DestinationKeyPrefix",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket to use as the destination for an
    #   export job.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The Amazon S3 bucket prefix for an export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/S3DestinationConfig AWS API Documentation
    #
    class S3DestinationConfig < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to a temporary failure of the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a recommendation.
    #
    # @!attribute [rw] name
    #   The finding classification of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the recommendation summary.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Summary AWS API Documentation
    #
    class Summary < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnrollmentStatusRequest
    #   data as a hash:
    #
    #       {
    #         status: "Active", # required, accepts Active, Inactive, Pending, Failed
    #         include_member_accounts: false,
    #       }
    #
    # @!attribute [rw] status
    #   The new enrollment status of the account.
    #
    #   Accepted options are `Active` or `Inactive`. You will get an error
    #   if `Pending` or `Failed` are specified.
    #   @return [String]
    #
    # @!attribute [rw] include_member_accounts
    #   Indicates whether to enroll member accounts of the organization if
    #   the your account is the master account of an organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatusRequest AWS API Documentation
    #
    class UpdateEnrollmentStatusRequest < Struct.new(
      :status,
      :include_member_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The enrollment status of the account.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the enrollment status of the account. For example, an
    #   account might show a status of `Pending` because member accounts of
    #   an organization require more time to be enrolled in the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatusResponse AWS API Documentation
    #
    class UpdateEnrollmentStatusResponse < Struct.new(
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a utilization metric of a resource, such as an Amazon EC2
    # instance.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   <note markdown="1"> The `Memory` metric is returned only for resources that have the
    #   unified CloudWatch agent installed on them. For more information,
    #   see [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic of the utilization metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the utilization metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UtilizationMetric AWS API Documentation
    #
    class UtilizationMetric < Struct.new(
      :name,
      :statistic,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
