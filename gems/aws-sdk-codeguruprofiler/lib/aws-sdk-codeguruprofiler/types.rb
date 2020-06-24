# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruProfiler
  module Types

    # @!attribute [rw] period_in_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] should_profile
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentConfiguration AWS API Documentation
    #
    class AgentConfiguration < Struct.new(
      :period_in_seconds,
      :should_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AgentOrchestrationConfig
    #   data as a hash:
    #
    #       {
    #         profiling_enabled: false, # required
    #       }
    #
    # @!attribute [rw] profiling_enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/AgentOrchestrationConfig AWS API Documentation
    #
    class AgentOrchestrationConfig < Struct.new(
      :profiling_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the time range of the latest available aggregated
    # profile.
    #
    # @!attribute [rw] period
    #   The time period.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The start time.
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

    # The structure representing the configureAgentRequest.
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
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgentRequest AWS API Documentation
    #
    class ConfigureAgentRequest < Struct.new(
      :fleet_instance_id,
      :profiling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the configureAgentResponse.
    #
    # @!attribute [rw] configuration
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
    #         profiling_group_name: "ProfilingGroupName", # required
    #       }
    #
    # @!attribute [rw] agent_orchestration_config
    #   The agent orchestration configuration.
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   This parameter specifies a unique identifier for the new profiling
    #   group that helps ensure idempotency.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the createProfilingGroupResponse.
    #
    # @!attribute [rw] profiling_group
    #   Information about the new profiling group
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
    #   The profiling group name to delete.
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
    #   The profiling group name.
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
    #   Information about a profiling group.
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroupResponse AWS API Documentation
    #
    class DescribeProfilingGroupResponse < Struct.new(
      :profiling_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the getPolicyRequest.
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

    # The structure representing the getPolicyResponse.
    #
    # @!attribute [rw] policy
    #   The resource-based policy attached to the `ProfilingGroup`.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
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
    #   The format of the profile to return. You can choose
    #   `application/json` or the default `application/x-amzn-ion`.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   You must specify exactly two of the following parameters:
    #   `startTime`, `period`, and `endTime`.
    #   @return [Time]
    #
    # @!attribute [rw] max_depth
    #   The maximum depth of the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The period of the profile to get. The time range must be in the past
    #   and not longer than one week.
    #
    #   You must specify exactly two of the following parameters:
    #   `startTime`, `period`, and `endTime`.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group to get.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the profile to get.
    #
    #   You must specify exactly two of the following parameters:
    #   `startTime`, `period`, and `endTime`.
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
    #   The aggregation period.
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
    #   A Boolean value indicating whether to include a description.
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
    #   Information about profiling group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiling_groups
    #   Information about profiling groups.
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
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   @return [String]
    #
    # @!attribute [rw] profile_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
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

    # Information about the profile time.
    #
    # @!attribute [rw] start
    #   The start time of the profile.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ProfileTime AWS API Documentation
    #
    class ProfileTime < Struct.new(
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of a profiling group.
    #
    # @!attribute [rw] agent_orchestration_config
    #   @return [Types::AgentOrchestrationConfig]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) identifying the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the profiling group
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] profiling_status
    #   The status of the profiling group.
    #   @return [Types::ProfilingStatus]
    #
    # @!attribute [rw] updated_at
    #   The time, in milliseconds since the epoch, when the profiling group
    #   was last updated.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the profiling status.
    #
    # @!attribute [rw] latest_agent_orchestrated_at
    #   The time, in milliseconds since the epoch, when the latest agent was
    #   orchestrated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_agent_profile_reported_at
    #   The time, in milliseconds since the epoch, when the latest agent was
    #   reported..
    #   @return [Time]
    #
    # @!attribute [rw] latest_aggregated_profile
    #   The latest aggregated profile
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

    # The structure representing the putPermissionRequest.
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
    #   The list of actions that the users and roles can perform on the
    #   profiling group.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   The list of role and user ARNs or the accountId that needs access
    #   (wildcards are not allowed).
    #   @return [Array<String>]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy. This is
    #   required, if a policy exists for the profiling group. This is not
    #   required when creating the policy for the first time.
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

    # The structure representing the putPermissionResponse.
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
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

    # The structure representing the removePermissionRequest.
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
    #   The list of actions that the users and roles can perform on the
    #   profiling group.
    #   @return [String]
    #
    # @!attribute [rw] profiling_group_name
    #   The name of the profiling group.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
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

    # The structure representing the removePermissionResponse.
    #
    # @!attribute [rw] policy
    #   The resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current revision of the policy.
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
    #   Updated information about the profiling group.
    #   @return [Types::ProfilingGroupDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroupResponse AWS API Documentation
    #
    class UpdateProfilingGroupResponse < Struct.new(
      :profiling_group)
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
