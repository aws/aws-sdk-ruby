# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruProfiler
  module Types

    # The configuration for the agent to use.
    #
    # @!attribute [rw] period_in_seconds
    #   Specifies the period to follow the configuration (to profile or not)
    #   and call back to get a new configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] should_profile
    #   Specifies if the profiling should be enabled by the agent.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentConfiguration AWS API Documentation
    #
    class AgentConfiguration < Struct.new(
      :period_in_seconds,
      :should_profile)
      include Aws::Structure
    end

    # Configuration to orchestrate agents to create and report agent
    # profiles of the profiling group. Agents are orchestrated if they
    # follow the agent orchestration protocol.
    #
    # @note When making an API call, you may pass AgentOrchestrationConfig
    #   data as a hash:
    #
    #       {
    #         profiling_enabled: false, # required
    #       }
    #
    # @!attribute [rw] profiling_enabled
    #   If the agents should be enabled to create and report profiles.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentOrchestrationConfig AWS API Documentation
    #
    class AgentOrchestrationConfig < Struct.new(
      :profiling_enabled)
      include Aws::Structure
    end

    # The time range of an aggregated profile.
    #
    # @!attribute [rw] period
    #   The aggregation period of the aggregated profile.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The start time of the aggregated profile.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AggregatedProfileTime AWS API Documentation
    #
    class AggregatedProfileTime < Struct.new(
      :period,
      :start)
      include Aws::Structure
    end

    # Request for ConfigureAgent operation.
    #
    # @note When making an API call, you may pass ConfigureAgentRequest
    #   data as a hash:
    #
    #       {
    #         fleet_instance_id: "FleetInstanceId",
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] fleet_instance_id
    #   Identifier of the instance of compute fleet being profiled by the
    #   agent. For instance, host name in EC2, task id for ECS, function
    #   name for AWS Lambda
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgentRequest AWS API Documentation
    #
    class ConfigureAgentRequest < Struct.new(
      :fleet_instance_id,
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for ConfigureAgent operation.
    #
    # @!attribute [rw] configuration
    #   The configuration for the agent to use.
    #   @return [Types::AgentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgentResponse AWS API Documentation
    #
    class ConfigureAgentResponse < Struct.new(
      :configuration)
      include Aws::Structure
    end

    # Request can can cause an inconsistent state for the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request for CreateProfilingGroup operation.
    #
    # @note When making an API call, you may pass CreateProfilingGroupRequest
    #   data as a hash:
    #
    #       {
    #         agent_orchestration_config: {
    #           profiling_enabled: false, # required
    #         },
    #         client_token: "ClientToken", # required
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] agent_orchestration_config
    #   Configuration to orchestrate agents to create and report agent
    #   profiles of the profiling group. Agents are orchestrated if they
    #   follow the agent orchestration protocol.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] client_token
    #   Client token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroupRequest AWS API Documentation
    #
    class CreateProfilingGroupRequest < Struct.new(
      :agent_orchestration_config,
      :client_token,
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for CreateProfilingGroup operation.
    #
    # @!attribute [rw] profiling_group
    #   The description of a profiling group.
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroupResponse AWS API Documentation
    #
    class CreateProfilingGroupResponse < Struct.new(
      :profiling_group)
      include Aws::Structure
    end

    # Request for DeleteProfilingGroup operation.
    #
    # @note When making an API call, you may pass DeleteProfilingGroupRequest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroupRequest AWS API Documentation
    #
    class DeleteProfilingGroupRequest < Struct.new(
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for DeleteProfilingGroup operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroupResponse AWS API Documentation
    #
    class DeleteProfilingGroupResponse < Aws::EmptyStructure; end

    # Request for DescribeProfilingGroup operation.
    #
    # @note When making an API call, you may pass DescribeProfilingGroupRequest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroupRequest AWS API Documentation
    #
    class DescribeProfilingGroupRequest < Struct.new(
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for DescribeProfilingGroup operation.
    #
    # @!attribute [rw] profiling_group
    #   The description of a profiling group.
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroupResponse AWS API Documentation
    #
    class DescribeProfilingGroupResponse < Struct.new(
      :profiling_group)
      include Aws::Structure
    end

    # Request for GetProfile operation.
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
    #   The format of the profile to return. Supports application/json or
    #   application/x-amzn-ion. Defaults to application/x-amzn-ion.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time of the profile to get. Either period or endTime must be
    #   specified. Must be greater than start and the overall time range to
    #   be in the past and not larger than a week.
    #   @return [Time]
    #
    # @!attribute [rw] max_depth
    #   Limit the max depth of the profile.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The period of the profile to get. Exactly two of `startTime`,
    #   `period` and `endTime` must be specified. Must be positive and the
    #   overall time range to be in the past and not larger than a week.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the profile to get.
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
      include Aws::Structure
    end

    # Response for GetProfile operation.
    #
    # @!attribute [rw] content_encoding
    #   The content encoding of the profile in the payload.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the profile in the payload. Will be
    #   application/json or application/x-amzn-ion based on Accept header in
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] profile
    #   The profile representing the aggregation of agent profiles of the
    #   profiling group for a time range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetProfileResponse AWS API Documentation
    #
    class GetProfileResponse < Struct.new(
      :content_encoding,
      :content_type,
      :profile)
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request for ListProfileTimes operation.
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
    #   The end time of the time range to list profiles until.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Upper bound on the number of results to list in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for paginating results.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   The order (ascending or descending by start time of the profile) to
    #   list the profiles by. Defaults to TIMESTAMP\_DESCENDING.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The aggregation period to list the profiles for.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time range to list the profiles from.
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
      include Aws::Structure
    end

    # Response for ListProfileTimes operation.
    #
    # @!attribute [rw] next_token
    #   Token for paginating results.
    #   @return [String]
    #
    # @!attribute [rw] profile_times
    #   List of start times of the available profiles for the aggregation
    #   period in the specified time range.
    #   @return [Array<Types::ProfileTime>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfileTimesResponse AWS API Documentation
    #
    class ListProfileTimesResponse < Struct.new(
      :next_token,
      :profile_times)
      include Aws::Structure
    end

    # Request for ListProfilingGroups operation.
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
    #   If set to true, returns the full description of the profiling groups
    #   instead of the names. Defaults to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   Upper bound on the number of results to list in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for paginating results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroupsRequest AWS API Documentation
    #
    class ListProfilingGroupsRequest < Struct.new(
      :include_description,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Response for ListProfilingGroups operation.
    #
    # @!attribute [rw] next_token
    #   Token for paginating results.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_names
    #   List of profiling group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiling_groups
    #   List of profiling group descriptions.
    #   @return [Array<Types::ProfilingGroupDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroupsResponse AWS API Documentation
    #
    class ListProfilingGroupsResponse < Struct.new(
      :next_token,
      :profiling_group_names,
      :profiling_groups)
      include Aws::Structure
    end

    # Request for PostAgentProfile operation.
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
    #   The profile collected by an agent for a time range.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the agent profile in the payload. Recommended to
    #   send the profile gzipped with content-type application/octet-stream.
    #   Other accepted values are application/x-amzn-ion and
    #   application/json for unzipped Ion and JSON respectively.
    #   @return [String]
    #
    # @!attribute [rw] profile_token
    #   Client generated token to deduplicate the agent profile during
    #   aggregation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfileRequest AWS API Documentation
    #
    class PostAgentProfileRequest < Struct.new(
      :agent_profile,
      :content_type,
      :profile_token,
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for PostAgentProfile operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfileResponse AWS API Documentation
    #
    class PostAgentProfileResponse < Aws::EmptyStructure; end

    # Periods of time used for aggregation of profiles, represented using
    # ISO 8601 format.
    #
    # @!attribute [rw] start
    #   The start time of the profile.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfileTime AWS API Documentation
    #
    class ProfileTime < Struct.new(
      :start)
      include Aws::Structure
    end

    # The description of a profiling group.
    #
    # @!attribute [rw] agent_orchestration_config
    #   Configuration to orchestrate agents to create and report agent
    #   profiles of the profiling group. Agents are orchestrated if they
    #   follow the agent orchestration protocol.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] arn
    #   The ARN of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the profiling group was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] profiling_status
    #   The status of profiling of a profiling group.
    #   @return [Types::ProfilingStatus]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the profiling group was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfilingGroupDescription AWS API Documentation
    #
    class ProfilingGroupDescription < Struct.new(
      :agent_orchestration_config,
      :arn,
      :created_at,
      :name,
      :profiling_status,
      :updated_at)
      include Aws::Structure
    end

    # The status of profiling of a profiling group.
    #
    # @!attribute [rw] latest_agent_orchestrated_at
    #   Timestamp of when the last interaction of the agent with
    #   configureAgent API for orchestration.
    #   @return [Time]
    #
    # @!attribute [rw] latest_agent_profile_reported_at
    #   Timestamp of when the latest agent profile was successfully
    #   reported.
    #   @return [Time]
    #
    # @!attribute [rw] latest_aggregated_profile
    #   The time range of latest aggregated profile available.
    #   @return [Types::AggregatedProfileTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfilingStatus AWS API Documentation
    #
    class ProfilingStatus < Struct.new(
      :latest_agent_orchestrated_at,
      :latest_agent_profile_reported_at,
      :latest_aggregated_profile)
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request for UpdateProfilingGroup operation.
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
    #   Remote configuration to configure the agents of the profiling group.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroupRequest AWS API Documentation
    #
    class UpdateProfilingGroupRequest < Struct.new(
      :agent_orchestration_config,
      :profiling_group_name)
      include Aws::Structure
    end

    # Response for UpdateProfilingGroup operation.
    #
    # @!attribute [rw] profiling_group
    #   The description of a profiling group.
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroupResponse AWS API Documentation
    #
    class UpdateProfilingGroupResponse < Struct.new(
      :profiling_group)
      include Aws::Structure
    end

    # The input fails to satisfy the constraints of the API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
