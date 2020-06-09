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
    #   Specify `Finding` to filter the results to a specific findings
    #   classification.
    #
    #   Specify `RecommendationSourceType` to filter the results to a
    #   specific resource type.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of the filter.
    #
    #   If you specify the `name` parameter as `Finding`, and you're
    #   recommendations for an *instance*, then the valid values are
    #   `Underprovisioned`, `Overprovisioned`, `NotOptimized`, or
    #   `Optimized`.
    #
    #   If you specify the `name` parameter as `Finding`, and you're
    #   recommendations for an *Auto Scaling group*, then the valid values
    #   are `Optimized`, or `NotOptimized`.
    #
    #   If you specify the `name` parameter as `RecommendationSourceType`,
    #   then the valid values are `EC2Instance`, or `AutoScalingGroup`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
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
    #   The AWS account IDs for which to return Auto Scaling group
    #   recommendations.
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
    #   with a single call.
    #
    #   To retrieve the remaining results, make another call with the
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
    #   single call.
    #
    #   To retrieve the remaining results, make another call with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An array of objects that describe a filter that returns a more
    #   specific list of instance recommendations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] account_ids
    #   The AWS account IDs for which to return instance recommendations.
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
    #   The AWS account IDs for which to return recommendation summaries.
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
    #   single call.
    #
    #   To retrieve the remaining results, make another call with the
    #   returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummariesRequest AWS API Documentation
    #
    class GetRecommendationSummariesRequest < Struct.new(
      :account_ids,
      :next_token,
      :max_results)
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
      include Aws::Structure
    end

    # Describes an Amazon EC2 instance recommendation.
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the current instance.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the instance recommendation.
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
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # You must opt in to the service to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/OptInRequiredException AWS API Documentation
    #
    class OptInRequiredException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option,
    # such as an Amazon EC2 instance.
    #
    # @!attribute [rw] name
    #   The name of the projected utilization metric.
    #
    #   <note markdown="1"> Memory metrics are only returned for resources that have the unified
    #   CloudWatch agent installed on them. For more information, see
    #   [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html
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
      include Aws::Structure
    end

    # Describes a projected utilization metric of a recommendation option.
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
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
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
    #   Indicates whether to enroll member accounts within the organization,
    #   if the account is a master account of an organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatusRequest AWS API Documentation
    #
    class UpdateEnrollmentStatusRequest < Struct.new(
      :status,
      :include_member_accounts)
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
      include Aws::Structure
    end

    # Describes a utilization metric of a resource, such as an Amazon EC2
    # instance.
    #
    # @!attribute [rw] name
    #   The name of the utilization metric.
    #
    #   <note markdown="1"> Memory metrics are only returned for resources that have the unified
    #   CloudWatch agent installed on them. For more information, see
    #   [Enabling Memory Utilization with the CloudWatch Agent][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html
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
      include Aws::Structure
    end

  end
end
