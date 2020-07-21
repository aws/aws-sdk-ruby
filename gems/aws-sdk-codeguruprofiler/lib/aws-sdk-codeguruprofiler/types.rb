# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruProfiler
  module Types

    # The structure representing the AddNotificationChannelsRequest.
    #
    # @note When making an API call, you may pass AddNotificationChannelsRequest
    #   data as a hash:
    #
    #       {
    #         channels: [ # required
    #           {
    #             event_publishers: ["AnomalyDetection"], # required, accepts AnomalyDetection
    #             id: "ChannelId",
    #             uri: "ChannelUri", # required
    #           },
    #         ],
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] channels
    #   One or 2 channels to report to when anomalies are detected.
    #   @return [Array<Types::Channel>]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group that we are setting up notifications
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AddNotificationChannelsRequest AWS API Documentation
    #
    class AddNotificationChannelsRequest < Struct.new(
      :channels,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the AddNotificationChannelsResponse.
    #
    # @!attribute [rw] notification_configuration
    #   The new notification configuration for this profiling group.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AddNotificationChannelsResponse AWS API Documentation
    #
    class AddNotificationChannelsResponse < Struct.new(
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response of [ `ConfigureAgent` ][1] that specifies if an agent
    # profiles or not and for how long to return profiling data.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html
    #
    # @!attribute [rw] agent_parameters
    #   Parameters used by the profiler. The valid parameters are:
    #
    #   * `MaxStackDepth` - The maximum depth of the stacks in the code that
    #     is represented in the profile. For example, if CodeGuru Profiler
    #     finds a method `A`, which calls method `B`, which calls method
    #     `C`, which calls method `D`, then the depth is 4. If the
    #     `maxDepth` is set to 2, then the profiler evaluates `A` and `B`.
    #
    #   * `MemoryUsageLimitPercent` - The percentage of memory that is used
    #     by the profiler.
    #
    #   * `MinimumTimeForReportingInMilliseconds` - The minimum time in
    #     milliseconds between sending reports.
    #
    #   * `ReportingIntervalInMilliseconds` - The reporting interval in
    #     milliseconds used to report profiles.
    #
    #   * `SamplingIntervalInMilliseconds` - The sampling interval in
    #     milliseconds that is used to profile samples.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] period_in_seconds
    #   How long a profiling agent should send profiling data using [
    #   `ConfigureAgent` ][1]. For example, if this is set to 300, the
    #   profiling agent calls [ `ConfigureAgent` ][1] every 5 minutes to
    #   submit the profiled data collected during that period.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html
    #   @return [Integer]
    #
    # @!attribute [rw] should_profile
    #   A `Boolean` that specifies whether the profiling agent collects
    #   profiling data or not. Set to `true` to enable profiling.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentConfiguration AWS API Documentation
    #
    class AgentConfiguration < Struct.new(
      :agent_parameters,
      :period_in_seconds,
      :should_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether profiling is enabled or disabled for a profiling
    # group. It is used by [ `ConfigureAgent` ][1] to enable or disable
    # profiling for a profiling group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html
    #
    # @note When making an API call, you may pass AgentOrchestrationConfig
    #   data as a hash:
    #
    #       {
    #         profiling_enabled: false, # required
    #       }
    #
    # @!attribute [rw] profiling_enabled
    #   A `Boolean` that specifies whether the profiling agent collects
    #   profiling data or not. Set to `true` to enable profiling.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentOrchestrationConfig AWS API Documentation
    #
    class AgentOrchestrationConfig < Struct.new(
      :profiling_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the aggregation period and aggregation start time for an
    # aggregated profile. An aggregated profile is used to collect posted
    # agent profiles during an aggregation period. There are three possible
    # aggregation periods (1 day, 1 hour, or 5 minutes).
    #
    # @!attribute [rw] period
    #   The aggregation period. This indicates the period during which an
    #   aggregation profile collects posted agent profiles for a profiling
    #   group. Use one of three valid durations that are specified using the
    #   ISO 8601 format.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The time that aggregation of posted agent profiles for a profiling
    #   group starts. The aggregation profile contains profiles posted by
    #   the agent starting at this time for an aggregation period specified
    #   by the `period` property of the `AggregatedProfileTime` object.
    #
    #   Specify `start` using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AggregatedProfileTime AWS API Documentation
    #
    class AggregatedProfileTime < Struct.new(
      :period,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an anomaly in a specific metric of application profile.
    # The anomaly is detected using analysis of the metric data over a
    # period of time.
    #
    # @!attribute [rw] instances
    #   A list of the instances of the detected anomalies during the
    #   requested period.
    #   @return [Array<Types::AnomalyInstance>]
    #
    # @!attribute [rw] metric
    #   Details about the metric that the analysis used when it detected the
    #   anomaly. The metric includes the name of the frame that was analyzed
    #   with the type and thread states used to derive the metric value for
    #   that frame.
    #   @return [Types::Metric]
    #
    # @!attribute [rw] reason
    #   The reason for which metric was flagged as anomalous.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Anomaly AWS API Documentation
    #
    class Anomaly < Struct.new(
      :instances,
      :metric,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specific duration in which the metric is flagged as anomalous.
    #
    # @!attribute [rw] end_time
    #   The end time of the period during which the metric is flagged as
    #   anomalous. This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The universally unique identifier (UUID) of an instance of an
    #   anomaly in a metric.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the period during which the metric is flagged as
    #   anomalous. This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] user_feedback
    #   Feedback type on a specific instance of anomaly submitted by the
    #   user.
    #   @return [Types::UserFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AnomalyInstance AWS API Documentation
    #
    class AnomalyInstance < Struct.new(
      :end_time,
      :id,
      :start_time,
      :user_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the BatchGetFrameMetricDataRequest.
    #
    # @note When making an API call, you may pass BatchGetFrameMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now,
    #         frame_metrics: [
    #           {
    #             frame_name: "String", # required
    #             thread_states: ["String"], # required
    #             type: "AggregatedRelativeTotalTime", # required, accepts AggregatedRelativeTotalTime
    #           },
    #         ],
    #         period: "Period",
    #         profiling_group_name: "ProfilingGroupName", # required
    #         start_time: Time.now,
    #         target_resolution: "P1D", # accepts P1D, PT1H, PT5M
    #       }
    #
    # @!attribute [rw] end_time
    #   The end time of the time period for the returned time series values.
    #   This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] frame_metrics
    #   The details of the metrics that are used to request a time series of
    #   values. The metric includes the name of the frame, the aggregation
    #   type to calculate the metric value for the frame, and the thread
    #   states to use to get the count for the metric value of the frame.
    #   @return [Array<Types::FrameMetric>]
    #
    # @!attribute [rw] period
    #   The duration of the frame metrics used to return the time series
    #   values. Specify using the ISO 8601 format. The maximum period
    #   duration is one day (`PT24H` or `P1D`).
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group associated with the the frame
    #   metrics used to return the time series values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time period for the frame metrics used to
    #   return the time series values. This is specified using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] target_resolution
    #   The requested resolution of time steps for the returned time series
    #   of values. If the requested target resolution is not available due
    #   to data not being retained we provide a best effort result by
    #   falling back to the most granular available resolution after the
    #   target resolution. There are 3 valid values.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/BatchGetFrameMetricDataRequest AWS API Documentation
    #
    class BatchGetFrameMetricDataRequest < Struct.new(
      :end_time,
      :frame_metrics,
      :period,
      :profiling_group_name,
      :start_time,
      :target_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the BatchGetFrameMetricDataResponse.
    #
    # @!attribute [rw] end_time
    #   The end time of the time period for the returned time series values.
    #   This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_times
    #   List of instances, or time steps, in the time series. For example,
    #   if the `period` is one day (`PT24H)`), and the `resolution` is five
    #   minutes (`PT5M`), then there are 288 `endTimes` in the list that are
    #   each five minutes appart.
    #   @return [Array<Types::TimestampStructure>]
    #
    # @!attribute [rw] frame_metric_data
    #   Details of the metrics to request a time series of values. The
    #   metric includes the name of the frame, the aggregation type to
    #   calculate the metric value for the frame, and the thread states to
    #   use to get the count for the metric value of the frame.
    #   @return [Array<Types::FrameMetricDatum>]
    #
    # @!attribute [rw] resolution
    #   Resolution or granularity of the profile data used to generate the
    #   time series. This is the value used to jump through time steps in a
    #   time series. There are 3 valid values.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time period for the returned time series
    #   values. This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] unprocessed_end_times
    #   List of instances which remained unprocessed. This will create a
    #   missing time step in the list of end times.
    #   @return [Hash<String,Array<Types::TimestampStructure>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/BatchGetFrameMetricDataResponse AWS API Documentation
    #
    class BatchGetFrameMetricDataResponse < Struct.new(
      :end_time,
      :end_times,
      :frame_metric_data,
      :resolution,
      :start_time,
      :unprocessed_end_times)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notification medium for users to get alerted for events that occur in
    # application profile. We support SNS topic as a notification channel.
    #
    # @note When making an API call, you may pass Channel
    #   data as a hash:
    #
    #       {
    #         event_publishers: ["AnomalyDetection"], # required, accepts AnomalyDetection
    #         id: "ChannelId",
    #         uri: "ChannelUri", # required
    #       }
    #
    # @!attribute [rw] event_publishers
    #   List of publishers for different type of events that may be detected
    #   in an application from the profile. Anomaly detection is the only
    #   event publisher in Profiler.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   Unique identifier for each `Channel` in the notification
    #   configuration of a Profiling Group. A random UUID for channelId is
    #   used when adding a channel to the notification configuration if not
    #   specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Unique arn of the resource to be used for notifications. We support
    #   a valid SNS topic arn as a channel uri.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :event_publishers,
      :id,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the configureAgentRequest.
    #
    # @note When making an API call, you may pass ConfigureAgentRequest
    #   data as a hash:
    #
    #       {
    #         fleet_instance_id: "FleetInstanceId",
    #         metadata: {
    #           "AgentId" => "String",
    #         },
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] fleet_instance_id
    #   A universally unique identifier (UUID) for a profiling instance. For
    #   example, if the profiling instance is an Amazon EC2 instance, it is
    #   the instance ID. If it is an AWS Fargate container, it is the
    #   container's task ID.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata captured about the compute platform the agent is running
    #   on. It includes information about sampling and reporting. The valid
    #   fields are:
    #
    #   * `COMPUTE_PLATFORM` - The compute platform on which the agent is
    #     running
    #
    #   * `AGENT_ID` - The ID for an agent instance.
    #
    #   * `AWS_REQUEST_ID` - The AWS request ID of a Lambda invocation.
    #
    #   * `EXECUTION_ENVIRONMENT` - The execution environment a Lambda
    #     function is running on.
    #
    #   * `LAMBDA_FUNCTION_ARN` - The Amazon Resource Name (ARN) that is
    #     used to invoke a Lambda function.
    #
    #   * `LAMBDA_MEMORY_LIMIT_IN_MB` - The memory allocated to a Lambda
    #     function.
    #
    #   * `LAMBDA_REMAINING_TIME_IN_MILLISECONDS` - The time in milliseconds
    #     before execution of a Lambda function times out.
    #
    #   * `LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS` - The time in
    #     milliseconds between two invocations of a Lambda function.
    #
    #   * `LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS` - The time in
    #     milliseconds for the previous Lambda invocation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group for which the configured agent is
    #   collecting profiling data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgentRequest AWS API Documentation
    #
    class ConfigureAgentRequest < Struct.new(
      :fleet_instance_id,
      :metadata,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the configureAgentResponse.
    #
    # @!attribute [rw] configuration
    #   An [ `AgentConfiguration` ][1] object that specifies if an agent
    #   profiles or not and for how long to return profiling data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentConfiguration.html
    #   @return [Types::AgentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgentResponse AWS API Documentation
    #
    class ConfigureAgentResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the createProfiliingGroupRequest.
    #
    # @note When making an API call, you may pass CreateProfilingGroupRequest
    #   data as a hash:
    #
    #       {
    #         agent_orchestration_config: {
    #           profiling_enabled: false, # required
    #         },
    #         client_token: "ClientToken", # required
    #         compute_platform: "AWSLambda", # accepts AWSLambda, Default
    #         profiling_group_name: "ProfilingGroupName", # required
    #         tags: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] agent_orchestration_config
    #   Specifies whether profiling is enabled or disabled for the created
    #   profiling group.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] client_token
    #   Amazon CodeGuru Profiler uses this universally unique identifier
    #   (UUID) to prevent the accidental creation of duplicate profiling
    #   groups if there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] compute_platform
    #   The compute platform of the profiling group. Use `AWSLambda` if your
    #   application runs on AWS Lambda. Use `Default` if your application
    #   runs on a compute platform that is not AWS Lambda, such an Amazon
    #   EC2 instance, an on-premises server, or a different platform. If not
    #   specified, `Default` is used.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to create.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the created profiling group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroupRequest AWS API Documentation
    #
    class CreateProfilingGroupRequest < Struct.new(
      :agent_orchestration_config,
      :client_token,
      :compute_platform,
      :profiling_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the createProfilingGroupResponse.
    #
    # @!attribute [rw] profiling_group
    #   The returned [ `ProfilingGroupDescription` ][1] object that contains
    #   information about the created profiling group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroupResponse AWS API Documentation
    #
    class CreateProfilingGroupResponse < Struct.new(
      :profiling_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the deleteProfilingGroupRequest.
    #
    # @note When making an API call, you may pass DeleteProfilingGroupRequest
    #   data as a hash:
    #
    #       {
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroupRequest AWS API Documentation
    #
    class DeleteProfilingGroupRequest < Struct.new(
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the deleteProfilingGroupResponse.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroupResponse AWS API Documentation
    #
    class DeleteProfilingGroupResponse < Aws::EmptyStructure; end

    # The structure representing the describeProfilingGroupRequest.
    #
    # @note When making an API call, you may pass DescribeProfilingGroupRequest
    #   data as a hash:
    #
    #       {
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroupRequest AWS API Documentation
    #
    class DescribeProfilingGroupRequest < Struct.new(
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the describeProfilingGroupResponse.
    #
    # @!attribute [rw] profiling_group
    #   The returned [ `ProfilingGroupDescription` ][1] object that contains
    #   information about the requested profiling group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroupResponse AWS API Documentation
    #
    class DescribeProfilingGroupResponse < Struct.new(
      :profiling_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about potential recommendations that might be created from
    # the analysis of profiling data.
    #
    # @!attribute [rw] id
    #   The universally unique identifier (UUID) of the recommendation
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] profile_end_time
    #   The end time of the period during which the metric is flagged as
    #   anomalous. This is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] profile_start_time
    #   The start time of the profile the analysis data is about. This is
    #   specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group that is associated with the analysis
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] total_number_of_findings
    #   The total number of different recommendations that were found by the
    #   analysis.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/FindingsReportSummary AWS API Documentation
    #
    class FindingsReportSummary < Struct.new(
      :id,
      :profile_end_time,
      :profile_start_time,
      :profiling_group_name,
      :total_number_of_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The frame name, metric type, and thread states. These are used to
    # derive the value of the metric for the frame.
    #
    # @note When making an API call, you may pass FrameMetric
    #   data as a hash:
    #
    #       {
    #         frame_name: "String", # required
    #         thread_states: ["String"], # required
    #         type: "AggregatedRelativeTotalTime", # required, accepts AggregatedRelativeTotalTime
    #       }
    #
    # @!attribute [rw] frame_name
    #   Name of the method common across the multiple occurrences of a frame
    #   in an application profile.
    #   @return [String]
    #
    # @!attribute [rw] thread_states
    #   List of application runtime thread states used to get the counts for
    #   a frame a derive a metric value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   A type of aggregation that specifies how a metric for a frame is
    #   analyzed. The supported value `AggregatedRelativeTotalTime` is an
    #   aggregation of the metric value for one frame that is calculated
    #   across the occurrences of all frames in a profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/FrameMetric AWS API Documentation
    #
    class FrameMetric < Struct.new(
      :frame_name,
      :thread_states,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a frame metric and its values.
    #
    # @!attribute [rw] frame_metric
    #   The frame name, metric type, and thread states. These are used to
    #   derive the value of the metric for the frame.
    #   @return [Types::FrameMetric]
    #
    # @!attribute [rw] values
    #   A list of values that are associated with a frame metric.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/FrameMetricDatum AWS API Documentation
    #
    class FrameMetricDatum < Struct.new(
      :frame_metric,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the GetFindingsReportAccountSummaryRequest.
    #
    # @note When making an API call, you may pass GetFindingsReportAccountSummaryRequest
    #   data as a hash:
    #
    #       {
    #         daily_reports_only: false,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] daily_reports_only
    #   A `Boolean` value indicating whether to only return reports from
    #   daily profiles. If set to `True`, only analysis data from daily
    #   profiles is returned. If set to `False`, analysis data is returned
    #   from smaller time windows (for example, one hour).
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `
    #   GetFindingsReportAccountSummary` in paginated output. When this
    #   parameter is used, `GetFindingsReportAccountSummary` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `GetFindingsReportAccountSummary` request
    #   with the returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `GetFindingsReportAccountSummary` request where `maxResults` was
    #   used and the results exceeded the value of that parameter.
    #   Pagination continues from the end of the previous results that
    #   returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetFindingsReportAccountSummaryRequest AWS API Documentation
    #
    class GetFindingsReportAccountSummaryRequest < Struct.new(
      :daily_reports_only,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the
    # GetFindingsReportAccountSummaryResponse.
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `GetFindingsReportAccountSummary` request. When the results of a
    #   `GetFindingsReportAccountSummary` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] report_summaries
    #   The return list of [ `FindingsReportSummary` ][1] objects taht
    #   contain summaries of analysis results for all profiling groups in
    #   your AWS account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html
    #   @return [Array<Types::FindingsReportSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetFindingsReportAccountSummaryResponse AWS API Documentation
    #
    class GetFindingsReportAccountSummaryResponse < Struct.new(
      :next_token,
      :report_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the GetNotificationConfigurationRequest.
    #
    # @note When making an API call, you may pass GetNotificationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group we want to get the notification
    #   configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetNotificationConfigurationRequest AWS API Documentation
    #
    class GetNotificationConfigurationRequest < Struct.new(
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the GetNotificationConfigurationResponse.
    #
    # @!attribute [rw] notification_configuration
    #   The current notification configuration for this profiling group.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetNotificationConfigurationResponse AWS API Documentation
    #
    class GetNotificationConfigurationResponse < Struct.new(
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the `getPolicyRequest`.
    #
    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the `getPolicyResponse`.
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy attached to the
    #   `ProfilingGroup`.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the returned policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the getProfileRequest.
    #
    # @note When making an API call, you may pass GetProfileRequest
    #   data as a hash:
    #
    #       {
    #         accept: "String",
    #         end_time: Time.now,
    #         max_depth: 1,
    #         period: "Period",
    #         profiling_group_name: "ProfilingGroupName", # required
    #         start_time: Time.now,
    #       }
    #
    # @!attribute [rw] accept
    #   The format of the returned profiling data. The format maps to the
    #   `Accept` and `Content-Type` headers of the HTTP request. You can
    #   specify one of the following: or the default .
    #
    #        <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time of the requested profile. Specify using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    #   If you specify `endTime`, then you must also specify `period` or
    #   `startTime`, but not both.
    #   @return [Time]
    #
    # @!attribute [rw] max_depth
    #   The maximum depth of the stacks in the code that is represented in
    #   the aggregated profile. For example, if CodeGuru Profiler finds a
    #   method `A`, which calls method `B`, which calls method `C`, which
    #   calls method `D`, then the depth is 4. If the `maxDepth` is set to
    #   2, then the aggregated profile contains representations of methods
    #   `A` and `B`.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   Used with `startTime` or `endTime` to specify the time range for the
    #   returned aggregated profile. Specify using the ISO 8601 format. For
    #   example, `P1DT1H1M1S`.
    #
    #        <p> To get the latest aggregated profile, specify only <code>period</code>. </p>
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to get.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the profile to get. Specify using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    #        <p> If you specify <code>startTime</code>, then you must also specify <code>period</code> or <code>endTime</code>, but not both. </p>
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetProfileRequest AWS API Documentation
    #
    class GetProfileRequest < Struct.new(
      :accept,
      :end_time,
      :max_depth,
      :period,
      :profiling_group_name,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the getProfileResponse.
    #
    # @!attribute [rw] content_encoding
    #   The content encoding of the profile.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the profile in the payload. It is either
    #   `application/json` or the default `application/x-amzn-ion`.
    #   @return [String]
    #
    # @!attribute [rw] profile
    #   Information about the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetProfileResponse AWS API Documentation
    #
    class GetProfileResponse < Struct.new(
      :content_encoding,
      :content_type,
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the GetRecommendationsRequest.
    #
    # @note When making an API call, you may pass GetRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now, # required
    #         locale: "Locale",
    #         profiling_group_name: "ProfilingGroupName", # required
    #         start_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] end_time
    #   The start time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] locale
    #   The language used to provide analysis. Specify using a string that
    #   is one of the following `BCP 47` language codes.
    #
    #   * `de-DE` - German, Germany
    #
    #   * `en-GB` - English, United Kingdom
    #
    #   * `en-US` - English, United States
    #
    #   * `es-ES` - Spanish, Spain
    #
    #   * `fr-FR` - French, France
    #
    #   * `it-IT` - Italian, Italy
    #
    #   * `ja-JP` - Japanese, Japan
    #
    #   * `ko-KR` - Korean, Republic of Korea
    #
    #   * `pt-BR` - Portugese, Brazil
    #
    #   * `zh-CN` - Chinese, China
    #
    #   * `zh-TW` - Chinese, Taiwan
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to get analysis data about.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The end time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :end_time,
      :locale,
      :profiling_group_name,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the GetRecommendationsResponse.
    #
    # @!attribute [rw] anomalies
    #   The list of anomalies that the analysis has found for this profile.
    #   @return [Array<Types::Anomaly>]
    #
    # @!attribute [rw] profile_end_time
    #   The end time of the profile the analysis data is about. This is
    #   specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] profile_start_time
    #   The start time of the profile the analysis data is about. This is
    #   specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group the analysis data is about.
    #   @return [String]
    #
    # @!attribute [rw] recommendations
    #   The list of recommendations that the analysis found for this
    #   profile.
    #   @return [Array<Types::Recommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :anomalies,
      :profile_end_time,
      :profile_start_time,
      :profiling_group_name,
      :recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the ListFindingsReportsRequest.
    #
    # @note When making an API call, you may pass ListFindingsReportsRequest
    #   data as a hash:
    #
    #       {
    #         daily_reports_only: false,
    #         end_time: Time.now, # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         profiling_group_name: "ProfilingGroupName", # required
    #         start_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] daily_reports_only
    #   A `Boolean` value indicating whether to only return reports from
    #   daily profiles. If set to `True`, only analysis data from daily
    #   profiles is returned. If set to `False`, analysis data is returned
    #   from smaller time windows (for example, one hour).
    #   @return [Boolean]
    #
    # @!attribute [rw] end_time
    #   The end time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of report results returned by
    #   `ListFindingsReports` in paginated output. When this parameter is
    #   used, `ListFindingsReports` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListFindingsReports` request with the returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListFindingsReportsRequest` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group from which to search for analysis
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the profile to get analysis data about. You must
    #   specify `startTime` and `endTime`. This is specified using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListFindingsReportsRequest AWS API Documentation
    #
    class ListFindingsReportsRequest < Struct.new(
      :daily_reports_only,
      :end_time,
      :max_results,
      :next_token,
      :profiling_group_name,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the ListFindingsReportsResponse.
    #
    # @!attribute [rw] findings_report_summaries
    #   The list of analysis results summaries.
    #   @return [Array<Types::FindingsReportSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListFindingsReports`
    #   request. When the results of a `ListFindingsReports` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListFindingsReportsResponse AWS API Documentation
    #
    class ListFindingsReportsResponse < Struct.new(
      :findings_report_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the listProfileTimesRequest.
    #
    # @note When making an API call, you may pass ListProfileTimesRequest
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now, # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         order_by: "TimestampAscending", # accepts TimestampAscending, TimestampDescending
    #         period: "P1D", # required, accepts P1D, PT1H, PT5M
    #         profiling_group_name: "ProfilingGroupName", # required
    #         start_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] end_time
    #   The end time of the time range from which to list the profiles.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profile time results returned by
    #   `ListProfileTimes` in paginated output. When this parameter is used,
    #   `ListProfileTimes` only returns `maxResults` results in a single
    #   page with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another
    #   `ListProfileTimes` request with the returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfileTimes` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The order (ascending or descending by start time of the profile) to
    #   use when listing profiles. Defaults to `TIMESTAMP_DESCENDING`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The aggregation period. This specifies the period during which an
    #   aggregation profile collects posted agent profiles for a profiling
    #   group. There are 3 valid values.
    #
    #   * `P1D` — 1 day
    #
    #   * `PT1H` — 1 hour
    #
    #   * `PT5M` — 5 minutes
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time range from which to list the profiles.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfileTimesRequest AWS API Documentation
    #
    class ListProfileTimesRequest < Struct.new(
      :end_time,
      :max_results,
      :next_token,
      :order_by,
      :period,
      :profiling_group_name,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the listProfileTimesResponse.
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListProfileTimes`
    #   request. When the results of a `ListProfileTimes` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] profile_times
    #   The list of start times of the available profiles for the
    #   aggregation period in the specified time range.
    #   @return [Array<Types::ProfileTime>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfileTimesResponse AWS API Documentation
    #
    class ListProfileTimesResponse < Struct.new(
      :next_token,
      :profile_times)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the listProfilingGroupsRequest.
    #
    # @note When making an API call, you may pass ListProfilingGroupsRequest
    #   data as a hash:
    #
    #       {
    #         include_description: false,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] include_description
    #   A `Boolean` value indicating whether to include a description. If
    #   `true`, then a list of [ `ProfilingGroupDescription` ][1] objects
    #   that contain detailed information about profiling groups is
    #   returned. If `false`, then a list of profiling group names is
    #   returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profiling groups results returned by
    #   `ListProfilingGroups` in paginated output. When this parameter is
    #   used, `ListProfilingGroups` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListProfilingGroups` request with the returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfilingGroups` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroupsRequest AWS API Documentation
    #
    class ListProfilingGroupsRequest < Struct.new(
      :include_description,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the listProfilingGroupsResponse.
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListProfilingGroups`
    #   request. When the results of a `ListProfilingGroups` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_names
    #   A returned list of profiling group names. A list of the names is
    #   returned only if `includeDescription` is `false`, otherwise a list
    #   of [ `ProfilingGroupDescription` ][1] objects is returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiling_groups
    #   A returned list [ `ProfilingGroupDescription` ][1] objects. A list
    #   of [ `ProfilingGroupDescription` ][1] objects is returned only if
    #   `includeDescription` is `true`, otherwise a list of profiling group
    #   names is returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Array<Types::ProfilingGroupDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroupsResponse AWS API Documentation
    #
    class ListProfilingGroupsResponse < Struct.new(
      :next_token,
      :profiling_group_names,
      :profiling_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ProfilingGroupArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that contains the
    #   tags to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the specified resource. This is the
    #   list of tags returned in the response.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The part of a profile that contains a recommendation found during
    # analysis.
    #
    # @!attribute [rw] frame_address
    #   The location in the profiling graph that contains a recommendation
    #   found during analysis.
    #   @return [String]
    #
    # @!attribute [rw] target_frames_index
    #   The target frame that triggered a match.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_breach_value
    #   The value in the profile data that exceeded the recommendation
    #   threshold.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Match AWS API Documentation
    #
    class Match < Struct.new(
      :frame_address,
      :target_frames_index,
      :threshold_breach_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the metric that the analysis used when it detected the
    # anomaly. The metric what is analyzed to create recommendations. It
    # includes the name of the frame that was analyzed and the type and
    # thread states used to derive the metric value for that frame.
    #
    # @!attribute [rw] frame_name
    #   The name of the method that appears as a frame in any stack in a
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] thread_states
    #   The list of application runtime thread states that is used to
    #   calculate the metric value for the frame.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   A type that specifies how a metric for a frame is analyzed. The
    #   supported value `AggregatedRelativeTotalTime` is an aggregation of
    #   the metric value for one frame that is calculated across the
    #   occurences of all frames in a profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :frame_name,
      :thread_states,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for notifications stored for each profiling group.
    # This includes up to to two channels and a list of event publishers
    # associated with each channel.
    #
    # @!attribute [rw] channels
    #   List of up to two channels to be used for sending notifications for
    #   events detected from the application profile.
    #   @return [Array<Types::Channel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of rules used to make a recommendation during an analysis.
    #
    # @!attribute [rw] counters_to_aggregate
    #   A list of the different counters used to determine if there is a
    #   match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description of the recommendation. This explains a potential
    #   inefficiency in a profiled application.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The universally unique identifier (UUID) of this pattern.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for this pattern.
    #   @return [String]
    #
    # @!attribute [rw] resolution_steps
    #   A string that contains the steps recommended to address the
    #   potential inefficiency.
    #   @return [String]
    #
    # @!attribute [rw] target_frames
    #   A list of frame names that were searched during the analysis that
    #   generated a recommendation.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] threshold_percent
    #   The percentage of time an application spends in one method that
    #   triggers a recommendation. The percentage of time is the same as the
    #   percentage of the total gathered sample counts during analysis.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Pattern AWS API Documentation
    #
    class Pattern < Struct.new(
      :counters_to_aggregate,
      :description,
      :id,
      :name,
      :resolution_steps,
      :target_frames,
      :threshold_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the postAgentProfileRequest.
    #
    # @note When making an API call, you may pass PostAgentProfileRequest
    #   data as a hash:
    #
    #       {
    #         agent_profile: "data", # required
    #         content_type: "String", # required
    #         profile_token: "ClientToken",
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] agent_profile
    #   The submitted profiling data.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The format of the submitted profiling data. The format maps to the
    #   `Accept` and `Content-Type` headers of the HTTP request. You can
    #   specify one of the following: or the default .
    #
    #        <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
    #   @return [String]
    #
    # @!attribute [rw] profile_token
    #   Amazon CodeGuru Profiler uses this universally unique identifier
    #   (UUID) to prevent the accidental submission of duplicate profiling
    #   data if there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group with the aggregated profile that
    #   receives the submitted profiling data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfileRequest AWS API Documentation
    #
    class PostAgentProfileRequest < Struct.new(
      :agent_profile,
      :content_type,
      :profile_token,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the postAgentProfileResponse.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfileResponse AWS API Documentation
    #
    class PostAgentProfileResponse < Aws::EmptyStructure; end

    # Contains the start time of a profile.
    #
    # @!attribute [rw] start
    #   The start time of a profile. It is specified using the ISO 8601
    #   format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfileTime AWS API Documentation
    #
    class ProfileTime < Struct.new(
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a profiling group.
    #
    # @!attribute [rw] agent_orchestration_config
    #   An [ `AgentOrchestrationConfig` ][1] object that indicates if the
    #   profiling group is enabled for profiled or not.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentOrchestrationConfig.html
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) identifying the profiling group
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] compute_platform
    #   The compute platform of the profiling group. If it is set to
    #   `AWSLambda`, then the profiled application runs on AWS Lambda. If it
    #   is set to `Default`, then the profiled application runs on a compute
    #   platform that is not AWS Lambda, such an Amazon EC2 instance, an
    #   on-premises server, or a different platform. The default is
    #   `Default`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the profiling group was created. Specify using the ISO
    #   8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #   millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] profiling_status
    #   A [ `ProfilingStatus` ][1] object that includes information about
    #   the last time a profile agent pinged back, the last time a profile
    #   was received, and the aggregation period and start time for the most
    #   recent aggregated profile.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingStatus.html
    #   @return [Types::ProfilingStatus]
    #
    # @!attribute [rw] tags
    #   A list of the tags that belong to this profiling group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the profiling group was last updated. Specify
    #   using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z
    #   represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfilingGroupDescription AWS API Documentation
    #
    class ProfilingGroupDescription < Struct.new(
      :agent_orchestration_config,
      :arn,
      :compute_platform,
      :created_at,
      :name,
      :profiling_status,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Profiling status includes information about the last time a profile
    # agent pinged back, the last time a profile was received, and the
    # aggregation period and start time for the most recent aggregated
    # profile.
    #
    # @!attribute [rw] latest_agent_orchestrated_at
    #   The date and time when the profiling agent most recently pinged
    #   back. Specify using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] latest_agent_profile_reported_at
    #   The date and time when the most recent profile was received. Specify
    #   using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z
    #   represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] latest_aggregated_profile
    #   An [ `AggregatedProfileTime` ][1] object that contains the
    #   aggregation period and start time for an aggregated profile.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html
    #   @return [Types::AggregatedProfileTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfilingStatus AWS API Documentation
    #
    class ProfilingStatus < Struct.new(
      :latest_agent_orchestrated_at,
      :latest_agent_profile_reported_at,
      :latest_aggregated_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the `putPermissionRequest`.
    #
    # @note When making an API call, you may pass PutPermissionRequest
    #   data as a hash:
    #
    #       {
    #         action_group: "agentPermissions", # required, accepts agentPermissions
    #         principals: ["Principal"], # required
    #         profiling_group_name: "ProfilingGroupName", # required
    #         revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] action_group
    #   Specifies an action group that contains permissions to add to a
    #   profiling group resource. One action group is supported,
    #   `agentPermissions`, which grants permission to perform actions
    #   required by the profiling agent, `ConfigureAgent` and
    #   `PostAgentProfile` permissions.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   A list ARNs for the roles and users you want to grant access to the
    #   profiling group. Wildcards are not are supported in the ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to grant access to.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A universally unique identifier (UUID) for the revision of the
    #   policy you are adding to the profiling group. Do not specify this
    #   when you add permissions to a profiling group for the first time. If
    #   a policy already exists on the profiling group, you must specify the
    #   `revisionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PutPermissionRequest AWS API Documentation
    #
    class PutPermissionRequest < Struct.new(
      :action_group,
      :principals,
      :profiling_group_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the `putPermissionResponse`.
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy on the profiling group that
    #   includes the added permissions.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A universally unique identifier (UUID) for the revision of the
    #   resource-based policy that includes the added permissions. The
    #   JSON-formatted policy is in the `policy` element of the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PutPermissionResponse AWS API Documentation
    #
    class PutPermissionResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A potential improvement that was found from analyzing the profiling
    # data.
    #
    # @!attribute [rw] all_matches_count
    #   How many different places in the profile graph triggered a match.
    #   @return [Integer]
    #
    # @!attribute [rw] all_matches_sum
    #   How much of the total sample count is potentially affected.
    #   @return [Float]
    #
    # @!attribute [rw] end_time
    #   End time of the profile that was used by this analysis. This is
    #   specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] pattern
    #   The pattern that analysis recognized in the profile to make this
    #   recommendation.
    #   @return [Types::Pattern]
    #
    # @!attribute [rw] start_time
    #   The start time of the profile that was used by this analysis. This
    #   is specified using the ISO 8601 format. For example,
    #   2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    #   1:15:02 PM UTC.
    #   @return [Time]
    #
    # @!attribute [rw] top_matches
    #   List of the matches with most impact.
    #   @return [Array<Types::Match>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :all_matches_count,
      :all_matches_sum,
      :end_time,
      :pattern,
      :start_time,
      :top_matches)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the RemoveNotificationChannelRequest.
    #
    # @note When making an API call, you may pass RemoveNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "ChannelId", # required
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   The id of the channel that we want to stop receiving notifications.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group we want to change notification
    #   configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemoveNotificationChannelRequest AWS API Documentation
    #
    class RemoveNotificationChannelRequest < Struct.new(
      :channel_id,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the RemoveNotificationChannelResponse.
    #
    # @!attribute [rw] notification_configuration
    #   The new notification configuration for this profiling group.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemoveNotificationChannelResponse AWS API Documentation
    #
    class RemoveNotificationChannelResponse < Struct.new(
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the
    # <code>removePermissionRequest</code>.</p>
    #
    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         action_group: "agentPermissions", # required, accepts agentPermissions
    #         profiling_group_name: "ProfilingGroupName", # required
    #         revision_id: "RevisionId", # required
    #       }
    #
    # @!attribute [rw] action_group
    #   Specifies an action group that contains the permissions to remove
    #   from a profiling group's resource-based policy. One action group is
    #   supported, `agentPermissions`, which grants `ConfigureAgent` and
    #   `PostAgentProfile` permissions.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A universally unique identifier (UUID) for the revision of the
    #   resource-based policy from which you want to remove permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :action_group,
      :profiling_group_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the `removePermissionResponse`.
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy on the profiling group
    #   after the specified permissions were removed.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A universally unique identifier (UUID) for the revision of the
    #   resource-based policy after the specified permissions were removed.
    #   The updated JSON-formatted policy is in the `policy` element of the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/RemovePermissionResponse AWS API Documentation
    #
    class RemovePermissionResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use [Service Quotas][1] to
    # request a service quota increase.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the SubmitFeedbackRequest.
    #
    # @note When making an API call, you may pass SubmitFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         anomaly_instance_id: "AnomalyInstanceId", # required
    #         comment: "String",
    #         profiling_group_name: "ProfilingGroupName", # required
    #         type: "Negative", # required, accepts Negative, Positive
    #       }
    #
    # @!attribute [rw] anomaly_instance_id
    #   The universally unique identifier (UUID) of the [ `AnomalyInstance`
    #   ][1] object that is included in the analysis data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   Optional feedback about this anomaly.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group that is associated with the analysis
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The feedback tpye. Thee are two valid values, `Positive` and
    #   `Negative`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/SubmitFeedbackRequest AWS API Documentation
    #
    class SubmitFeedbackRequest < Struct.new(
      :anomaly_instance_id,
      :comment,
      :profiling_group_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the SubmitFeedbackResponse.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/SubmitFeedbackResponse AWS API Documentation
    #
    class SubmitFeedbackResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ProfilingGroupArn", # required
    #         tags: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tags are
    #   added to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that are added to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data type that contains a `Timestamp` object. This is specified
    # using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z
    # represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #
    # @!attribute [rw] value
    #   A `Timestamp`. This is specified using the ISO 8601 format. For
    #   example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
    #   1, 2020 1:15:02 PM UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/TimestampStructure AWS API Documentation
    #
    class TimestampStructure < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ProfilingGroupArn", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that contains the
    #   tags to remove.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Existing tags of resources with keys in this
    #   list are removed from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The structure representing the updateProfilingGroupRequest.
    #
    # @note When making an API call, you may pass UpdateProfilingGroupRequest
    #   data as a hash:
    #
    #       {
    #         agent_orchestration_config: { # required
    #           profiling_enabled: false, # required
    #         },
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] agent_orchestration_config
    #   Specifies whether profiling is enabled or disabled for a profiling
    #   group.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroupRequest AWS API Documentation
    #
    class UpdateProfilingGroupRequest < Struct.new(
      :agent_orchestration_config,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the updateProfilingGroupResponse.
    #
    # @!attribute [rw] profiling_group
    #   A [ `ProfilingGroupDescription` ][1] that contains information about
    #   the returned updated profiling group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroupResponse AWS API Documentation
    #
    class UpdateProfilingGroupResponse < Struct.new(
      :profiling_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Feedback that can be submitted for each instance of an anomaly by the
    # user. Feedback is be used for improvements in generating
    # recommendations for the application.
    #
    # @!attribute [rw] type
    #   Optional `Positive` or `Negative` feedback submitted by the user
    #   about whether the recommendation is useful or not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UserFeedback AWS API Documentation
    #
    class UserFeedback < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
