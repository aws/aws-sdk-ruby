# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruProfiler
  # This module contains the types returned by client operations.
  module Types

    # <p>The structure representing the AddNotificationChannelsRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group that we are setting up notifications for.</p>
    #   @return [String]
    # @!attribute channels
    #   <p>One or 2 channels to report to when anomalies are detected.</p>
    #   @return [Array<Types::Channel>]
    class AddNotificationChannelsInput < Struct.new(
      :profiling_group_name,
      :channels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the AddNotificationChannelsResponse.</p>
    # @!attribute notification_configuration
    #   <p>The new notification configuration for this profiling group.</p>
    #   @return [Types::NotificationConfiguration]
    class AddNotificationChannelsOutput < Struct.new(
      :notification_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          The response of <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a> that 
    #          specifies if an agent profiles or not and for how long to return profiling data.
    #       </p>
    # @!attribute should_profile
    #   <p>
    #            A <code>Boolean</code> that specifies whether the profiling agent collects profiling data or not. Set to <code>true</code>
    #           to enable profiling.
    #         </p>
    #   @return [Boolean]
    # @!attribute period_in_seconds
    #   <p>
    #            How long a profiling agent should send profiling data using 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                  <code>ConfigureAgent</code>
    #               </a>. 
    #            For example, if this is set to 300, the profiling agent calls <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                  <code>ConfigureAgent</code>
    #               </a> 
    #            every 5 minutes to submit the profiled data collected during that period. 
    #         </p>
    #   @return [Integer]
    # @!attribute agent_parameters
    #   <p>
    #            Parameters used by the profiler. The valid parameters are: 
    #         </p> 
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MaxStackDepth</code> - The maximum depth of the stacks in the code that is represented in 
    #                  the profile. For example, if CodeGuru Profiler finds a method <code>A</code>, 
    #                  which calls method <code>B</code>, which calls method <code>C</code>, which 
    #                  calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is 
    #                  set to 2, then the profiler evaluates <code>A</code> and <code>B</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MemoryUsageLimitPercent</code> - The percentage of memory that is used by the
    #                  profiler.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MinimumTimeForReportingInMilliseconds</code> - The minimum time in milliseconds between 
    #                  sending reports.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReportingIntervalInMilliseconds</code> - The reporting interval in milliseconds used 
    #                  to report profiles.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SamplingIntervalInMilliseconds</code> - The sampling interval in milliseconds that is used to 
    #                  profile samples.
    #               </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class AgentConfiguration < Struct.new(
      :should_profile,
      :period_in_seconds,
      :agent_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Specifies whether profiling is enabled or disabled for a profiling group. It 
    #          is used by <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a> 
    #          to enable or disable profiling for a profiling group.
    #       </p>
    # @!attribute profiling_enabled
    #   <p>
    #            A <code>Boolean</code> that specifies whether the profiling agent collects profiling data or not. Set to <code>true</code>
    #            to enable profiling.
    #         </p>
    #   @return [Boolean]
    class AgentOrchestrationConfig < Struct.new(
      :profiling_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Specifies the aggregation period and aggregation start time for 
    #          an aggregated profile. An aggregated profile is used to collect posted agent profiles 
    #          during an aggregation period. There are three possible aggregation periods (1 day, 
    #          1 hour, or 5 minutes).
    #       </p>
    # @!attribute start
    #   <p>
    #            The time that aggregation of posted agent profiles for a profiling group starts. The aggregation profile 
    #            contains profiles posted by the agent starting at this time for an aggregation period  
    #            specified by the <code>period</code> property of the <code>AggregatedProfileTime</code> 
    #            object.
    #         </p>
    #            <p>
    #            Specify <code>start</code> using the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute period
    #   <p>
    #            The aggregation period. This indicates the period during which an aggregation profile 
    #            collects posted agent profiles for a profiling group. Use one of three valid 
    #            durations that are specified using the ISO 8601 format.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AggregatedProfileTime < Struct.new(
      :start,
      :period,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             Details about an anomaly in a specific metric of application profile. The anomaly is detected using  
    #             analysis of the metric data over a period of time.
    #         </p>
    # @!attribute metric
    #   <p>
    #               Details about the metric that the analysis used when it detected the anomaly. 
    #               The metric includes the name of the frame that was analyzed with the type and 
    #               thread states used to derive the metric value for that frame.
    #           </p>
    #   @return [Types::Metric]
    # @!attribute reason
    #   <p>The reason for which metric was flagged as anomalous.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>
    #               A list of the instances of the detected anomalies during the requested period.
    #           </p>
    #   @return [Array<Types::AnomalyInstance>]
    class Anomaly < Struct.new(
      :metric,
      :reason,
      :instances,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specific duration in which the metric is flagged as anomalous.</p>
    # @!attribute id
    #   <p>
    #               The universally unique identifier (UUID) of an instance of an anomaly in a metric.
    #           </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #               The start time of the period during which the metric is flagged as anomalous. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The end time of the period during which the metric is flagged as anomalous. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute user_feedback
    #   <p>Feedback type on a specific instance of anomaly submitted by the user.</p>
    #   @return [Types::UserFeedback]
    class AnomalyInstance < Struct.new(
      :id,
      :start_time,
      :end_time,
      :user_feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the BatchGetFrameMetricDataRequest.</p>
    # @!attribute profiling_group_name
    #   <p>
    #            The name of the profiling group associated with the 
    #            the frame metrics used to return the time series values.
    #         </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #            The start time of the time period for the frame metrics used to return the time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #            The end time of the time period for the returned time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute period
    #   <p>
    #            The duration of the frame metrics used to return the time series values. 
    #            Specify using the ISO 8601 format. The maximum period duration 
    #            is one day (<code>PT24H</code> or <code>P1D</code>).
    #         </p>
    #   @return [String]
    # @!attribute target_resolution
    #   <p>The requested resolution of time steps for the returned time series of values. 
    #            If the requested target resolution is not available due to data not being retained we provide a best effort 
    #            result by falling back to the most granular available resolution after the target resolution. 
    #            There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute frame_metrics
    #   <p>
    #            The details of the metrics that are used to request a time series of values. The metric includes 
    #            the name of the frame, the aggregation type to calculate the metric value for the 
    #            frame, and the thread states to use to get the count for the metric value of the frame.</p>
    #   @return [Array<Types::FrameMetric>]
    class BatchGetFrameMetricDataInput < Struct.new(
      :profiling_group_name,
      :start_time,
      :end_time,
      :period,
      :target_resolution,
      :frame_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the BatchGetFrameMetricDataResponse.</p>
    # @!attribute start_time
    #   <p>
    #            The start time of the time period for the returned time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #            The end time of the time period for the returned time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute resolution
    #   <p>Resolution or granularity of the profile data used to generate the time series. 
    #            This is the value used to jump through time steps in a time series. There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute end_times
    #   <p>
    #            List of instances, or time steps, in the time series. For example, if the 
    #            <code>period</code> is one day (<code>PT24H)</code>), and the <code>resolution</code> 
    #            is five minutes (<code>PT5M</code>), then there are 288 <code>endTimes</code> in the 
    #            list that are each five minutes appart.
    #         </p>
    #   @return [Array<Types::TimestampStructure>]
    # @!attribute unprocessed_end_times
    #   <p>List of instances which remained unprocessed. This will create a missing time step in the list of end times.</p>
    #   @return [Hash<String, Array<Types::TimestampStructure>>]
    # @!attribute frame_metric_data
    #   <p>Details of the metrics to request a time series of values. The metric includes 
    #            the name of the frame, the aggregation type to calculate the metric value for the frame, 
    #            and the thread states to use to get the count for the metric value of the frame.</p>
    #   @return [Array<Types::FrameMetricDatum>]
    class BatchGetFrameMetricDataOutput < Struct.new(
      :start_time,
      :end_time,
      :resolution,
      :end_times,
      :unprocessed_end_times,
      :frame_metric_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Notification medium for users to get alerted for events that occur in application profile. We support SNS topic as a notification channel.</p>
    # @!attribute id
    #   <p>Unique identifier for each <code>Channel</code> in the notification configuration of a Profiling Group. A random UUID for channelId is used when adding a channel to the notification configuration if not specified in the request.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>Unique arn of the resource to be used for notifications. We support a valid SNS topic arn as a channel uri.</p>
    #   @return [String]
    # @!attribute event_publishers
    #   <p>List of publishers for different type of events that may be detected in an application from the profile. Anomaly detection is the only event publisher in Profiler.</p>
    #   @return [Array<String>]
    class Channel < Struct.new(
      :id,
      :uri,
      :event_publishers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the configureAgentRequest.</p>
    # @!attribute profiling_group_name
    #   <p>
    #            The name of the profiling group for which the configured agent is collecting profiling data.
    #         </p>
    #   @return [String]
    # @!attribute fleet_instance_id
    #   <p> A universally unique identifier (UUID) for a profiling instance. For example, if the
    #            profiling instance is an Amazon EC2 instance, it is the instance ID. If it is an AWS
    #            Fargate container, it is the container's task ID. </p>
    #   @return [String]
    # @!attribute metadata
    #   <p> Metadata captured about the compute platform the agent is running on. It includes
    #            information about sampling and reporting. The valid fields are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPUTE_PLATFORM</code> - The compute platform on which the agent is running
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AGENT_ID</code> - The ID for an agent instance.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_REQUEST_ID</code> - The AWS request ID of a Lambda invocation.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXECUTION_ENVIRONMENT</code> - The execution environment a Lambda function is running on.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_FUNCTION_ARN</code> - The Amazon Resource Name (ARN) that is used to invoke a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_MEMORY_LIMIT_IN_MB</code> - The memory allocated to a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_REMAINING_TIME_IN_MILLISECONDS</code> - The time in milliseconds before execution of a Lambda function times out.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS</code> - The time in milliseconds between two invocations of a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS</code> - The time in milliseconds for the previous Lambda invocation.
    #               </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class ConfigureAgentInput < Struct.new(
      :profiling_group_name,
      :fleet_instance_id,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the configureAgentResponse.</p>
    # @!attribute configuration
    #   <p>
    #            An <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentConfiguration.html">
    #                  <code>AgentConfiguration</code>
    #               </a> 
    #            object that specifies if an agent profiles or not and for how long to return profiling data.
    #         </p>
    #   @return [Types::AgentConfiguration]
    class ConfigureAgentOutput < Struct.new(
      :configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state 
    #         of a service resource associated with the request. Resolve the conflict 
    #         before retrying this request.
    #       </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the createProfiliingGroupRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group to create.</p>
    #   @return [String]
    # @!attribute compute_platform
    #   <p>
    #            The compute platform of the profiling group. Use <code>AWSLambda</code> if your application 
    #            runs on AWS Lambda. Use <code>Default</code> if your application runs on a compute platform that 
    #            is not AWS Lambda, such an Amazon EC2 instance, an on-premises server, or a different platform. 
    #            If not specified, <code>Default</code> is used.         
    #         </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental creation of duplicate profiling groups if there are failures and retries. </p>
    #   @return [String]
    # @!attribute agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for the created profiling group.
    #         </p>
    #   @return [Types::AgentOrchestrationConfig]
    # @!attribute tags
    #   <p>
    #            A list of tags to add to the created profiling group.
    #         </p>
    #   @return [Hash<String, String>]
    class CreateProfilingGroupInput < Struct.new(
      :profiling_group_name,
      :compute_platform,
      :client_token,
      :agent_orchestration_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the createProfilingGroupResponse.</p>
    # @!attribute profiling_group
    #   <p> The returned <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> object that contains information
    #            about the created profiling group. </p>
    #   @return [Types::ProfilingGroupDescription]
    class CreateProfilingGroupOutput < Struct.new(
      :profiling_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the deleteProfilingGroupRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group to delete.</p>
    #   @return [String]
    class DeleteProfilingGroupInput < Struct.new(
      :profiling_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the deleteProfilingGroupResponse.</p>
    class DeleteProfilingGroupOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the describeProfilingGroupRequest.</p>
    # @!attribute profiling_group_name
    #   <p>
    #            The name of the profiling group to get information about.
    #         </p>
    #   @return [String]
    class DescribeProfilingGroupInput < Struct.new(
      :profiling_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the describeProfilingGroupResponse.</p>
    # @!attribute profiling_group
    #   <p>
    #            The returned <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> 
    #            object that contains information about the requested profiling group.
    #         </p>
    #   @return [Types::ProfilingGroupDescription]
    class DescribeProfilingGroupOutput < Struct.new(
      :profiling_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             Information about potential recommendations that might be created from the 
    #             analysis of profiling data.
    #         </p>
    # @!attribute id
    #   <p>The universally unique identifier (UUID) of the recommendation report.</p>
    #   @return [String]
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group that is associated with the analysis data.</p>
    #   @return [String]
    # @!attribute profile_start_time
    #   <p>The start time of the profile the analysis data is about. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    # @!attribute profile_end_time
    #   <p>
    #               The end time of the period during which the metric is flagged as anomalous. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute total_number_of_findings
    #   <p>The total number of different recommendations that were found by the analysis.</p>
    #   @return [Integer]
    class FindingsReportSummary < Struct.new(
      :id,
      :profiling_group_name,
      :profile_start_time,
      :profile_end_time,
      :total_number_of_findings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          The frame name, metric type, and thread states. These are used 
    #          to derive the value of the metric for the frame.</p>
    # @!attribute frame_name
    #   <p> Name of the method common across the multiple occurrences of a frame in an application
    #            profile.</p>
    #   @return [String]
    # @!attribute type
    #   <p> A type of aggregation that specifies how a metric for a frame is analyzed. The
    #            supported value <code>AggregatedRelativeTotalTime</code> is an aggregation of the metric
    #            value for one frame that is calculated across the occurrences of all frames in a profile. </p>
    #   @return [String]
    # @!attribute thread_states
    #   <p>List of application runtime thread states used to get the counts for a frame a derive a metric value.</p>
    #   @return [Array<String>]
    class FrameMetric < Struct.new(
      :frame_name,
      :type,
      :thread_states,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Information about a frame metric and its values.
    #       </p>
    # @!attribute frame_metric
    #   <p>
    #            The frame name, metric type, and thread states. These are used 
    #            to derive the value of the metric for the frame.</p>
    #   @return [Types::FrameMetric]
    # @!attribute values
    #   <p>
    #            A list of values that are associated with a frame metric.
    #         </p>
    #   @return [Array<Float>]
    class FrameMetricDatum < Struct.new(
      :frame_metric,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetFindingsReportAccountSummaryRequest.</p>
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>GetFindingsReportAccountSummary</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by <code> GetFindingsReportAccountSummary</code> in paginated output. 
    #               When this parameter is used, <code>GetFindingsReportAccountSummary</code> only returns <code>maxResults</code> 
    #               results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial 
    #               request can be seen by sending another <code>GetFindingsReportAccountSummary</code> request with the returned 
    #               <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set 
    #               to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, 
    #               analysis data is returned from smaller time windows (for example, one hour).</p>
    #   @return [Boolean]
    class GetFindingsReportAccountSummaryInput < Struct.new(
      :next_token,
      :max_results,
      :daily_reports_only,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetFindingsReportAccountSummaryResponse.</p>
    # @!attribute report_summaries
    #   <p>The return list of 
    #               <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html">
    #                  <code>FindingsReportSummary</code>
    #               </a> 
    #               objects taht contain summaries of analysis results for all profiling groups in your AWS account.</p>
    #   @return [Array<Types::FindingsReportSummary>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>GetFindingsReportAccountSummary</code> request.
    #            When the results of a <code>GetFindingsReportAccountSummary</code> request exceed <code>maxResults</code>, this
    #            value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more
    #            results to return.</p>
    #   @return [String]
    class GetFindingsReportAccountSummaryOutput < Struct.new(
      :report_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetNotificationConfigurationRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group we want to get the notification configuration for.</p>
    #   @return [String]
    class GetNotificationConfigurationInput < Struct.new(
      :profiling_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetNotificationConfigurationResponse.</p>
    # @!attribute notification_configuration
    #   <p>The current notification configuration for this profiling group.</p>
    #   @return [Types::NotificationConfiguration]
    class GetNotificationConfigurationOutput < Struct.new(
      :notification_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             The structure representing the <code>getPolicyRequest</code>.
    #         </p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group.</p>
    #   @return [String]
    class GetPolicyInput < Struct.new(
      :profiling_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the <code>getPolicyResponse</code>.</p>
    # @!attribute policy
    #   <p>The JSON-formatted resource-based policy attached to the <code>ProfilingGroup</code>.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current revision of the returned policy.</p>
    #   @return [String]
    class GetPolicyOutput < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the getProfileRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group to get.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the profile to get. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #         
    #            <p>
    #            If you specify <code>startTime</code>, then you must also specify <code>period</code> 
    #            or <code>endTime</code>, but not both.
    #         </p>
    #   @return [Time]
    # @!attribute period
    #   <p>
    #            Used with <code>startTime</code> or <code>endTime</code> to specify 
    #            the time range for the returned aggregated profile. Specify using 
    #            the ISO 8601 format. For example, <code>P1DT1H1M1S</code>.
    #         </p>
    #         
    #            <p>
    #            To get the latest aggregated profile, specify only <code>period</code>. 
    #         </p>
    #   @return [String]
    # @!attribute end_time
    #   <p>
    #            The end time of the requested profile. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #            <p>
    #            If you specify <code>endTime</code>, then you must also specify <code>period</code> 
    #            or <code>startTime</code>, but not both.
    #         </p>
    #   @return [Time]
    # @!attribute max_depth
    #   <p>
    #            The maximum depth of the stacks in the code that is represented in 
    #            the aggregated profile. For example, if CodeGuru Profiler finds a method <code>A</code>, 
    #            which calls method <code>B</code>, which calls method <code>C</code>, which 
    #            calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is 
    #            set to 2, then the aggregated profile contains representations of methods <code>A</code> 
    #            and <code>B</code>.
    #         </p>
    #   @return [Integer]
    # @!attribute accept
    #   <p>
    #            The format of the returned profiling data. The format maps to the 
    #            <code>Accept</code> and <code>Content-Type</code> headers of the 
    #            HTTP request. You can specify one of the following: 
    #           or the default .
    #         </p>
    #         
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format 
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, 
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetProfileInput < Struct.new(
      :profiling_group_name,
      :start_time,
      :period,
      :end_time,
      :max_depth,
      :accept,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the getProfileResponse.</p>
    # @!attribute profile
    #   <p>Information about the profile.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the profile in the payload. It is
    #           either <code>application/json</code> or the default 
    #           <code>application/x-amzn-ion</code>.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>The content encoding of the profile.</p>
    #   @return [String]
    class GetProfileOutput < Struct.new(
      :profile,
      :content_type,
      :content_encoding,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetRecommendationsRequest.</p>
    # @!attribute profiling_group_name
    #   <p>
    #               The name of the profiling group to get analysis data about.
    #           </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC. 
    #           </p>
    #   @return [Time]
    # @!attribute locale
    #   <p>
    #               The language used to provide analysis. Specify using a string that is one 
    #               of the following <code>BCP 47</code> language codes.
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>de-DE</code> - German, Germany
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-GB</code> - English, United Kingdom
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-US</code> - English, United States
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>es-ES</code> - Spanish, Spain
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>fr-FR</code> - French, France
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>it-IT</code> - Italian, Italy
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ja-JP</code> - Japanese, Japan
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ko-KR</code> - Korean, Republic of Korea
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>pt-BR</code> - Portugese, Brazil
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-CN</code> - Chinese, China
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-TW</code> - Chinese, Taiwan
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetRecommendationsInput < Struct.new(
      :profiling_group_name,
      :start_time,
      :end_time,
      :locale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the GetRecommendationsResponse.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group the analysis data is about.</p>
    #   @return [String]
    # @!attribute profile_start_time
    #   <p>
    #               The start time of the profile the analysis data is about. This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC. 
    #           </p>
    #   @return [Time]
    # @!attribute profile_end_time
    #   <p>
    #               The end time of the profile the analysis data is about. This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute recommendations
    #   <p>The list of recommendations that the analysis found for this profile.</p>
    #   @return [Array<Types::Recommendation>]
    # @!attribute anomalies
    #   <p>
    #               The list of anomalies that the analysis has found for this profile.
    #           </p>
    #   @return [Array<Types::Anomaly>]
    class GetRecommendationsOutput < Struct.new(
      :profiling_group_name,
      :profile_start_time,
      :profile_end_time,
      :recommendations,
      :anomalies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the ListFindingsReportsRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group from which to search for analysis data.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC. 
    #           </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListFindingsReportsRequest</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #         the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of report results returned by <code>ListFindingsReports</code>
    #            in paginated output. When this parameter is used, <code>ListFindingsReports</code> only returns
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListFindingsReports</code> request with the returned
    #            <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set 
    #           to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, 
    #           analysis data is returned from smaller time windows (for example, one hour).</p>
    #   @return [Boolean]
    class ListFindingsReportsInput < Struct.new(
      :profiling_group_name,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      :daily_reports_only,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the ListFindingsReportsResponse.</p>
    # @!attribute findings_report_summaries
    #   <p>The list of analysis results summaries.</p>
    #   @return [Array<Types::FindingsReportSummary>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListFindingsReports</code> request.
    #            When the results of a <code>ListFindingsReports</code> request exceed <code>maxResults</code>, this
    #            value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more
    #            results to return.</p>
    #   @return [String]
    class ListFindingsReportsOutput < Struct.new(
      :findings_report_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the listProfileTimesRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the time range from which to list the profiles.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range from which to list the profiles.</p>
    #   @return [Time]
    # @!attribute period
    #   <p>
    #            The aggregation period. This specifies the period during which an aggregation profile 
    #            collects posted agent profiles for a profiling group. There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute order_by
    #   <p>The order (ascending or descending by start time of the profile) to
    #           use when listing profiles. Defaults to <code>TIMESTAMP_DESCENDING</code>.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of profile time results returned by <code>ListProfileTimes</code> 
    #            in paginated output. When this parameter is used, <code>ListProfileTimes</code> only returns 
    #            <code>maxResults</code> results in a single page with a <code>nextToken</code> response 
    #            element. The remaining results of the initial request 
    #            can be seen by sending another <code>ListProfileTimes</code> request with the returned 
    #            <code>nextToken</code> value. 
    #         </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #            <code>ListProfileTimes</code> request where <code>maxResults</code> was used and the results 
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results 
    #            that returned the <code>nextToken</code> value. 
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve 
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListProfileTimesInput < Struct.new(
      :profiling_group_name,
      :start_time,
      :end_time,
      :period,
      :order_by,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the listProfileTimesResponse.</p>
    # @!attribute profile_times
    #   <p>The list of start times of the available profiles for the aggregation 
    #           period in the specified time range.
    #         </p>
    #   @return [Array<Types::ProfileTime>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListProfileTimes</code> request. 
    #            When the results of a <code>ListProfileTimes</code> request exceed <code>maxResults</code>, this 
    #            value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more 
    #            results to return. </p>
    #   @return [String]
    class ListProfileTimesOutput < Struct.new(
      :profile_times,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the listProfilingGroupsRequest.</p>
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #            <code>ListProfilingGroups</code> request where <code>maxResults</code> was used and the results 
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results 
    #            that returned the <code>nextToken</code> value. 
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve 
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of profiling groups results returned by <code>ListProfilingGroups</code> 
    #            in paginated output. When this parameter is used, <code>ListProfilingGroups</code> only returns 
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response 
    #            element. The remaining results of the initial request 
    #            can be seen by sending another <code>ListProfilingGroups</code> request with the returned 
    #            <code>nextToken</code> value. 
    #         </p>
    #   @return [Integer]
    # @!attribute include_description
    #   <p>A <code>Boolean</code> value indicating whether to include a description. If <code>true</code>, 
    #         then a list of 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> objects 
    #         that contain detailed information about profiling groups is returned. If <code>false</code>, then 
    #         a list of profiling group names is returned.</p>
    #   @return [Boolean]
    class ListProfilingGroupsInput < Struct.new(
      :next_token,
      :max_results,
      :include_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the listProfilingGroupsResponse.</p>
    # @!attribute profiling_group_names
    #   <p>
    #            A returned list of profiling group names. A list of the names is returned only if 
    #            <code>includeDescription</code> is <code>false</code>, otherwise a list of 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> objects 
    #            is returned.         
    #         </p>
    #   @return [Array<String>]
    # @!attribute profiling_groups
    #   <p>
    #            A returned list 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> 
    #            objects. A list of 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> 
    #            objects is returned only if <code>includeDescription</code> is <code>true</code>, otherwise a list of profiling group names is returned.
    #         </p>
    #   @return [Array<Types::ProfilingGroupDescription>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListProfilingGroups</code> request. 
    #            When the results of a <code>ListProfilingGroups</code> request exceed <code>maxResults</code>, this 
    #            value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more 
    #            results to return. </p>
    #   @return [String]
    class ListProfilingGroupsOutput < Struct.new(
      :profiling_group_names,
      :profiling_groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to return.
    #         </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>
    #            The list of tags assigned to the specified resource. This is the list of tags 
    #            returned in the response.
    #         </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The part of a profile that contains a recommendation found during analysis.</p>
    # @!attribute target_frames_index
    #   <p>The target frame that triggered a match.</p>
    #   @return [Integer]
    # @!attribute frame_address
    #   <p>The location in the profiling graph that contains a recommendation found during analysis.</p>
    #   @return [String]
    # @!attribute threshold_breach_value
    #   <p>The value in the profile data that exceeded the recommendation threshold.</p>
    #   @return [Float]
    class Match < Struct.new(
      :target_frames_index,
      :frame_address,
      :threshold_breach_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             Details about the metric that the analysis used when it detected the anomaly. 
    #             The metric what is analyzed to create recommendations. It includes the name of the 
    #             frame that was analyzed and the type and thread states used to derive the metric 
    #             value for that frame.
    #         </p>
    # @!attribute frame_name
    #   <p>
    #               The name of the method that appears as a frame in any stack in a profile.
    #           </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #               A type that specifies how a metric for a frame is analyzed. 
    #               The supported value <code>AggregatedRelativeTotalTime</code> is an 
    #               aggregation of the metric value for one frame that is calculated across the 
    #               occurences of all frames in a profile.</p>
    #   @return [String]
    # @!attribute thread_states
    #   <p>
    #               The list of application runtime thread states that is used to calculate the 
    #               metric value for the frame.
    #           </p>
    #   @return [Array<String>]
    class Metric < Struct.new(
      :frame_name,
      :type,
      :thread_states,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for notifications stored for each profiling group. This includes up to
    #          to two channels and a list of event publishers associated with each channel.</p>
    # @!attribute channels
    #   <p>List of up to two channels to be used for sending notifications for events detected from
    #            the application profile.</p>
    #   @return [Array<Types::Channel>]
    class NotificationConfiguration < Struct.new(
      :channels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             A set of rules used to make a recommendation during an analysis.
    #         </p>
    # @!attribute id
    #   <p>The universally unique identifier (UUID) of this pattern.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for this pattern.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommendation. This explains a potential 
    #               inefficiency in a profiled application.</p>
    #   @return [String]
    # @!attribute resolution_steps
    #   <p>
    #               A string that contains the steps recommended to address the potential inefficiency.
    #           </p>
    #   @return [String]
    # @!attribute target_frames
    #   <p>A list of frame names that were searched during the analysis that generated 
    #               a recommendation.</p>
    #   @return [Array<Array<String>>]
    # @!attribute threshold_percent
    #   <p>
    #               The percentage of time an application spends in one method that triggers 
    #               a recommendation. The percentage of time is the same as the percentage of 
    #               the total gathered sample counts during analysis.
    #           </p>
    #   @return [Float]
    # @!attribute counters_to_aggregate
    #   <p>
    #               A list of the different counters used to determine if there is a match.
    #           </p>
    #   @return [Array<String>]
    class Pattern < Struct.new(
      :id,
      :name,
      :description,
      :resolution_steps,
      :target_frames,
      :threshold_percent,
      :counters_to_aggregate,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:threshold_percent] = 0 unless options.key?(:threshold_percent)
        super
      end
    end

    # <p>The structure representing the postAgentProfileRequest.</p>
    # @!attribute profiling_group_name
    #   <p>
    #            The name of the profiling group with the aggregated profile that receives the 
    #            submitted profiling data.
    #         </p>
    #   @return [String]
    # @!attribute agent_profile
    #   <p>
    #            The submitted profiling data.
    #         </p>
    #   @return [String]
    # @!attribute profile_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental submission of duplicate profiling data if there are failures and retries. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p>
    #            The format of the submitted profiling data. The format maps to the 
    #            <code>Accept</code> and <code>Content-Type</code> headers of the 
    #            HTTP request. You can specify one of the following: 
    #            or the default .
    #         </p>
    #         
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format 
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, 
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PostAgentProfileInput < Struct.new(
      :profiling_group_name,
      :agent_profile,
      :profile_token,
      :content_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the postAgentProfileResponse.</p>
    class PostAgentProfileOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Contains the start time of a profile.
    #       </p>
    # @!attribute start
    #   <p>The start time of a profile. It is specified using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    class ProfileTime < Struct.new(
      :start,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Contains information about a profiling group.
    #       </p>
    # @!attribute name
    #   <p>The name of the profiling group.</p>
    #   @return [String]
    # @!attribute agent_orchestration_config
    #   <p>
    #            An <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentOrchestrationConfig.html">
    #                  <code>AgentOrchestrationConfig</code>
    #               </a> 
    #            object that indicates if the profiling group is enabled for profiled or not.
    #         </p>
    #   @return [Types::AgentOrchestrationConfig]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) identifying the profiling group resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the profiling group was created. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>
    #            The date and time when the profiling group was last updated. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    # @!attribute profiling_status
    #   <p>
    #            A <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingStatus.html">
    #                  <code>ProfilingStatus</code>
    #               </a> object 
    #            that includes information about the last time a profile agent pinged back, 
    #            the last time a profile was received, and the aggregation period and start time for the 
    #            most recent aggregated profile.
    #         </p>
    #   @return [Types::ProfilingStatus]
    # @!attribute compute_platform
    #   <p>
    #            The compute platform of the profiling group. If it is set to <code>AWSLambda</code>, then 
    #            the profiled application runs on AWS Lambda. If it is set to <code>Default</code>, then the 
    #            profiled application runs on a compute platform that is not AWS Lambda, such an Amazon EC2 instance, 
    #            an on-premises server, or a different platform. The default is <code>Default</code>.         
    #         </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #            A list of the tags that belong to this profiling group.
    #         </p>
    #   @return [Hash<String, String>]
    class ProfilingGroupDescription < Struct.new(
      :name,
      :agent_orchestration_config,
      :arn,
      :created_at,
      :updated_at,
      :profiling_status,
      :compute_platform,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          Profiling status includes information about the last time a profile agent pinged back, 
    #          the last time a profile was received, and the aggregation period and start time for the 
    #          most recent aggregated profile.
    #       </p>
    # @!attribute latest_agent_profile_reported_at
    #   <p>The date and time when the most recent profile was received. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    # @!attribute latest_aggregated_profile
    #   <p>
    #            An <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html">
    #                  <code>AggregatedProfileTime</code>
    #               </a> 
    #            object that contains the aggregation period and start time for an aggregated profile.
    #         </p>
    #   @return [Types::AggregatedProfileTime]
    # @!attribute latest_agent_orchestrated_at
    #   <p>The date and time when the profiling agent most recently pinged back. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    class ProfilingStatus < Struct.new(
      :latest_agent_profile_reported_at,
      :latest_aggregated_profile,
      :latest_agent_orchestrated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the <code>putPermissionRequest</code>.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group to grant access to.</p>
    #   @return [String]
    # @!attribute action_group
    #   <p>
    #               Specifies an action group that contains permissions to add to 
    #               a profiling group resource. One action group is supported, <code>agentPermissions</code>, which 
    #               grants permission to perform actions required by the profiling agent, <code>ConfigureAgent</code> 
    #               and <code>PostAgentProfile</code> permissions.
    #           </p>
    #   @return [String]
    # @!attribute principals
    #   <p>
    #               A list ARNs for the roles and users you want to grant access to the profiling group. 
    #               Wildcards are not are supported in the ARNs.
    #           </p>
    #   @return [Array<String>]
    # @!attribute revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the policy you 
    #               are adding to the profiling group. Do not specify 
    #               this when you add permissions to a profiling group for the first time. If a policy already exists on the 
    #               profiling group, you must specify the <code>revisionId</code>.
    #           </p>
    #   @return [String]
    class PutPermissionInput < Struct.new(
      :profiling_group_name,
      :action_group,
      :principals,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the <code>putPermissionResponse</code>.</p>
    # @!attribute policy
    #   <p>
    #               The JSON-formatted resource-based policy on the profiling group that includes the  
    #               added permissions.
    #           </p>
    #   @return [String]
    # @!attribute revision_id
    #   <p> A universally unique identifier (UUID) for the revision of the resource-based policy
    #               that includes the added permissions. The JSON-formatted policy is in the
    #                   <code>policy</code> element of the response. </p>
    #   @return [String]
    class PutPermissionOutput < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A potential improvement that was found from analyzing the profiling data.</p>
    # @!attribute all_matches_count
    #   <p>How many different places in the profile graph triggered a match.</p>
    #   @return [Integer]
    # @!attribute all_matches_sum
    #   <p>How much of the total sample count is potentially affected.</p>
    #   @return [Float]
    # @!attribute pattern
    #   <p>The pattern that analysis recognized in the profile to make this recommendation.</p>
    #   @return [Types::Pattern]
    # @!attribute top_matches
    #   <p>List of the matches with most impact. </p>
    #   @return [Array<Types::Match>]
    # @!attribute start_time
    #   <p>The start time of the profile that was used by this analysis. 
    #           This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of the profile that was used by this analysis. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #   @return [Time]
    class Recommendation < Struct.new(
      :all_matches_count,
      :all_matches_sum,
      :pattern,
      :top_matches,
      :start_time,
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the RemoveNotificationChannelRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group we want to change notification configuration for.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The id of the channel that we want to stop receiving notifications.</p>
    #   @return [String]
    class RemoveNotificationChannelInput < Struct.new(
      :profiling_group_name,
      :channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the RemoveNotificationChannelResponse.</p>
    # @!attribute notification_configuration
    #   <p>The new notification configuration for this profiling group.</p>
    #   @return [Types::NotificationConfiguration]
    class RemoveNotificationChannelOutput < Struct.new(
      :notification_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             
    #             The structure representing the <code>removePermissionRequest</code>.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group.</p>
    #   @return [String]
    # @!attribute action_group
    #   <p>
    #               Specifies an action group that contains the permissions to remove from 
    #               a profiling group's resource-based policy. One action group is supported, <code>agentPermissions</code>, which 
    #               grants <code>ConfigureAgent</code> and <code>PostAgentProfile</code> permissions.
    #           </p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the resource-based policy from which 
    #               you want to remove permissions.
    #           </p>
    #   @return [String]
    class RemovePermissionInput < Struct.new(
      :profiling_group_name,
      :action_group,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the <code>removePermissionResponse</code>.</p>
    # @!attribute policy
    #   <p>
    #               The JSON-formatted resource-based policy on the profiling group after 
    #               the specified permissions were removed.
    #           </p>
    #   @return [String]
    # @!attribute revision_id
    #   <p> A universally unique identifier (UUID) for the revision of the resource-based policy
    #               after the specified permissions were removed. The updated JSON-formatted policy is in the
    #                   <code>policy</code> element of the response. </p>
    #   @return [String]
    class RemovePermissionOutput < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource specified in the request does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, 
    #         remove some of the relevant resources, or use <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a> to request a 
    #         service quota increase. 
    #       </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the SubmitFeedbackRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group that is associated with the analysis data.</p>
    #   @return [String]
    # @!attribute anomaly_instance_id
    #   <p>The universally unique identifier (UUID) of the 
    #               <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html">
    #                  <code>AnomalyInstance</code>
    #               </a> object 
    #               that is included in the analysis data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #               The feedback tpye. Thee are two valid values, <code>Positive</code> and <code>Negative</code>.
    #           </p>
    #   @return [String]
    # @!attribute comment
    #   <p>Optional feedback about this anomaly.</p>
    #   @return [String]
    class SubmitFeedbackInput < Struct.new(
      :profiling_group_name,
      :anomaly_instance_id,
      :type,
      :comment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the SubmitFeedbackResponse.</p>
    class SubmitFeedbackOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that the tags are added to.
    #         </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #            The list of tags that are added to the specified resource.
    #         </p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          A data type that contains a <code>Timestamp</code> object. This is specified 
    #          using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #          millisecond past June 1, 2020 1:15:02 PM UTC.
    #       </p>
    # @!attribute value
    #   <p>
    #            A <code>Timestamp</code>. This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #   @return [Time]
    class TimestampStructure < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to remove.
    #         </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>
    #            A list of tag keys. Existing tags of resources with keys in this list are removed from 
    #            the specified resource.
    #         </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the updateProfilingGroupRequest.</p>
    # @!attribute profiling_group_name
    #   <p>The name of the profiling group to update.</p>
    #   @return [String]
    # @!attribute agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for a profiling group. 
    #         </p>
    #   @return [Types::AgentOrchestrationConfig]
    class UpdateProfilingGroupInput < Struct.new(
      :profiling_group_name,
      :agent_orchestration_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure representing the updateProfilingGroupResponse.</p>
    # @!attribute profiling_group
    #   <p>
    #            A <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> 
    #            that contains information about the returned updated profiling group.
    #         </p>
    #   @return [Types::ProfilingGroupDescription]
    class UpdateProfilingGroupOutput < Struct.new(
      :profiling_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Feedback that can be submitted for each instance of an anomaly by the user. 
    #             Feedback is be used for improvements in generating recommendations for the application.</p>
    # @!attribute type
    #   <p>Optional <code>Positive</code> or <code>Negative</code> feedback submitted by 
    #               the user about whether the recommendation is useful or not.</p>
    #   @return [String]
    class UserFeedback < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
