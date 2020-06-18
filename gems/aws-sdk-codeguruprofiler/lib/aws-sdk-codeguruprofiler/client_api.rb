# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruProfiler
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionGroup = Shapes::StringShape.new(name: 'ActionGroup')
    AgentConfiguration = Shapes::StructureShape.new(name: 'AgentConfiguration')
    AgentOrchestrationConfig = Shapes::StructureShape.new(name: 'AgentOrchestrationConfig')
    AgentProfile = Shapes::BlobShape.new(name: 'AgentProfile')
    AggregatedProfile = Shapes::BlobShape.new(name: 'AggregatedProfile')
    AggregatedProfileTime = Shapes::StructureShape.new(name: 'AggregatedProfileTime')
    AggregationPeriod = Shapes::StringShape.new(name: 'AggregationPeriod')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigureAgentRequest = Shapes::StructureShape.new(name: 'ConfigureAgentRequest')
    ConfigureAgentResponse = Shapes::StructureShape.new(name: 'ConfigureAgentResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateProfilingGroupRequest = Shapes::StructureShape.new(name: 'CreateProfilingGroupRequest')
    CreateProfilingGroupResponse = Shapes::StructureShape.new(name: 'CreateProfilingGroupResponse')
    DeleteProfilingGroupRequest = Shapes::StructureShape.new(name: 'DeleteProfilingGroupRequest')
    DeleteProfilingGroupResponse = Shapes::StructureShape.new(name: 'DeleteProfilingGroupResponse')
    DescribeProfilingGroupRequest = Shapes::StructureShape.new(name: 'DescribeProfilingGroupRequest')
    DescribeProfilingGroupResponse = Shapes::StructureShape.new(name: 'DescribeProfilingGroupResponse')
    FleetInstanceId = Shapes::StringShape.new(name: 'FleetInstanceId')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetProfileRequest = Shapes::StructureShape.new(name: 'GetProfileRequest')
    GetProfileResponse = Shapes::StructureShape.new(name: 'GetProfileResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListProfileTimesRequest = Shapes::StructureShape.new(name: 'ListProfileTimesRequest')
    ListProfileTimesResponse = Shapes::StructureShape.new(name: 'ListProfileTimesResponse')
    ListProfilingGroupsRequest = Shapes::StructureShape.new(name: 'ListProfilingGroupsRequest')
    ListProfilingGroupsResponse = Shapes::StructureShape.new(name: 'ListProfilingGroupsResponse')
    MaxDepth = Shapes::IntegerShape.new(name: 'MaxDepth')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Period = Shapes::StringShape.new(name: 'Period')
    PostAgentProfileRequest = Shapes::StructureShape.new(name: 'PostAgentProfileRequest')
    PostAgentProfileResponse = Shapes::StructureShape.new(name: 'PostAgentProfileResponse')
    Principal = Shapes::StringShape.new(name: 'Principal')
    Principals = Shapes::ListShape.new(name: 'Principals')
    ProfileTime = Shapes::StructureShape.new(name: 'ProfileTime')
    ProfileTimes = Shapes::ListShape.new(name: 'ProfileTimes')
    ProfilingGroupArn = Shapes::StringShape.new(name: 'ProfilingGroupArn')
    ProfilingGroupDescription = Shapes::StructureShape.new(name: 'ProfilingGroupDescription')
    ProfilingGroupDescriptions = Shapes::ListShape.new(name: 'ProfilingGroupDescriptions')
    ProfilingGroupName = Shapes::StringShape.new(name: 'ProfilingGroupName')
    ProfilingGroupNames = Shapes::ListShape.new(name: 'ProfilingGroupNames')
    ProfilingStatus = Shapes::StructureShape.new(name: 'ProfilingStatus')
    PutPermissionRequest = Shapes::StructureShape.new(name: 'PutPermissionRequest')
    PutPermissionResponse = Shapes::StructureShape.new(name: 'PutPermissionResponse')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RemovePermissionResponse = Shapes::StructureShape.new(name: 'RemovePermissionResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UpdateProfilingGroupRequest = Shapes::StructureShape.new(name: 'UpdateProfilingGroupRequest')
    UpdateProfilingGroupResponse = Shapes::StructureShape.new(name: 'UpdateProfilingGroupResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AgentConfiguration.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "periodInSeconds"))
    AgentConfiguration.add_member(:should_profile, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "shouldProfile"))
    AgentConfiguration.struct_class = Types::AgentConfiguration

    AgentOrchestrationConfig.add_member(:profiling_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "profilingEnabled"))
    AgentOrchestrationConfig.struct_class = Types::AgentOrchestrationConfig

    AggregatedProfileTime.add_member(:period, Shapes::ShapeRef.new(shape: AggregationPeriod, location_name: "period"))
    AggregatedProfileTime.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    AggregatedProfileTime.struct_class = Types::AggregatedProfileTime

    ConfigureAgentRequest.add_member(:fleet_instance_id, Shapes::ShapeRef.new(shape: FleetInstanceId, location_name: "fleetInstanceId"))
    ConfigureAgentRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    ConfigureAgentRequest.struct_class = Types::ConfigureAgentRequest

    ConfigureAgentResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: AgentConfiguration, required: true, location_name: "configuration"))
    ConfigureAgentResponse.struct_class = Types::ConfigureAgentResponse
    ConfigureAgentResponse[:payload] = :configuration
    ConfigureAgentResponse[:payload_member] = ConfigureAgentResponse.member(:configuration)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateProfilingGroupRequest.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, location_name: "agentOrchestrationConfig"))
    CreateProfilingGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location_name: "profilingGroupName"))
    CreateProfilingGroupRequest.struct_class = Types::CreateProfilingGroupRequest

    CreateProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    CreateProfilingGroupResponse.struct_class = Types::CreateProfilingGroupResponse
    CreateProfilingGroupResponse[:payload] = :profiling_group
    CreateProfilingGroupResponse[:payload_member] = CreateProfilingGroupResponse.member(:profiling_group)

    DeleteProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    DeleteProfilingGroupRequest.struct_class = Types::DeleteProfilingGroupRequest

    DeleteProfilingGroupResponse.struct_class = Types::DeleteProfilingGroupResponse

    DescribeProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    DescribeProfilingGroupRequest.struct_class = Types::DescribeProfilingGroupRequest

    DescribeProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    DescribeProfilingGroupResponse.struct_class = Types::DescribeProfilingGroupResponse
    DescribeProfilingGroupResponse[:payload] = :profiling_group
    DescribeProfilingGroupResponse[:payload_member] = DescribeProfilingGroupResponse.member(:profiling_group)

    GetPolicyRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    GetPolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetProfileRequest.add_member(:accept, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Accept"))
    GetProfileRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    GetProfileRequest.add_member(:max_depth, Shapes::ShapeRef.new(shape: MaxDepth, location: "querystring", location_name: "maxDepth"))
    GetProfileRequest.add_member(:period, Shapes::ShapeRef.new(shape: Period, location: "querystring", location_name: "period"))
    GetProfileRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    GetProfileRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    GetProfileRequest.struct_class = Types::GetProfileRequest

    GetProfileResponse.add_member(:content_encoding, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Encoding"))
    GetProfileResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    GetProfileResponse.add_member(:profile, Shapes::ShapeRef.new(shape: AggregatedProfile, required: true, location_name: "profile"))
    GetProfileResponse.struct_class = Types::GetProfileResponse
    GetProfileResponse[:payload] = :profile
    GetProfileResponse[:payload_member] = GetProfileResponse.member(:profile)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListProfileTimesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    ListProfileTimesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfileTimesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProfileTimesRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location: "querystring", location_name: "orderBy"))
    ListProfileTimesRequest.add_member(:period, Shapes::ShapeRef.new(shape: AggregationPeriod, required: true, location: "querystring", location_name: "period"))
    ListProfileTimesRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    ListProfileTimesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    ListProfileTimesRequest.struct_class = Types::ListProfileTimesRequest

    ListProfileTimesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProfileTimesResponse.add_member(:profile_times, Shapes::ShapeRef.new(shape: ProfileTimes, required: true, location_name: "profileTimes"))
    ListProfileTimesResponse.struct_class = Types::ListProfileTimesResponse

    ListProfilingGroupsRequest.add_member(:include_description, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeDescription"))
    ListProfilingGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProfilingGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProfilingGroupsRequest.struct_class = Types::ListProfilingGroupsRequest

    ListProfilingGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProfilingGroupsResponse.add_member(:profiling_group_names, Shapes::ShapeRef.new(shape: ProfilingGroupNames, required: true, location_name: "profilingGroupNames"))
    ListProfilingGroupsResponse.add_member(:profiling_groups, Shapes::ShapeRef.new(shape: ProfilingGroupDescriptions, location_name: "profilingGroups"))
    ListProfilingGroupsResponse.struct_class = Types::ListProfilingGroupsResponse

    PostAgentProfileRequest.add_member(:agent_profile, Shapes::ShapeRef.new(shape: AgentProfile, required: true, location_name: "agentProfile"))
    PostAgentProfileRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    PostAgentProfileRequest.add_member(:profile_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "profileToken", metadata: {"idempotencyToken"=>true}))
    PostAgentProfileRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    PostAgentProfileRequest.struct_class = Types::PostAgentProfileRequest
    PostAgentProfileRequest[:payload] = :agent_profile
    PostAgentProfileRequest[:payload_member] = PostAgentProfileRequest.member(:agent_profile)

    PostAgentProfileResponse.struct_class = Types::PostAgentProfileResponse

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    ProfileTime.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    ProfileTime.struct_class = Types::ProfileTime

    ProfileTimes.member = Shapes::ShapeRef.new(shape: ProfileTime)

    ProfilingGroupDescription.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, location_name: "agentOrchestrationConfig"))
    ProfilingGroupDescription.add_member(:arn, Shapes::ShapeRef.new(shape: ProfilingGroupArn, location_name: "arn"))
    ProfilingGroupDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ProfilingGroupDescription.add_member(:name, Shapes::ShapeRef.new(shape: ProfilingGroupName, location_name: "name"))
    ProfilingGroupDescription.add_member(:profiling_status, Shapes::ShapeRef.new(shape: ProfilingStatus, location_name: "profilingStatus"))
    ProfilingGroupDescription.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ProfilingGroupDescription.struct_class = Types::ProfilingGroupDescription

    ProfilingGroupDescriptions.member = Shapes::ShapeRef.new(shape: ProfilingGroupDescription)

    ProfilingGroupNames.member = Shapes::ShapeRef.new(shape: ProfilingGroupName)

    ProfilingStatus.add_member(:latest_agent_orchestrated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestAgentOrchestratedAt"))
    ProfilingStatus.add_member(:latest_agent_profile_reported_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestAgentProfileReportedAt"))
    ProfilingStatus.add_member(:latest_aggregated_profile, Shapes::ShapeRef.new(shape: AggregatedProfileTime, location_name: "latestAggregatedProfile"))
    ProfilingStatus.struct_class = Types::ProfilingStatus

    PutPermissionRequest.add_member(:action_group, Shapes::ShapeRef.new(shape: ActionGroup, required: true, location: "uri", location_name: "actionGroup"))
    PutPermissionRequest.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, required: true, location_name: "principals"))
    PutPermissionRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    PutPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    PutPermissionRequest.struct_class = Types::PutPermissionRequest

    PutPermissionResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    PutPermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    PutPermissionResponse.struct_class = Types::PutPermissionResponse

    RemovePermissionRequest.add_member(:action_group, Shapes::ShapeRef.new(shape: ActionGroup, required: true, location: "uri", location_name: "actionGroup"))
    RemovePermissionRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    RemovePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location: "querystring", location_name: "revisionId"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RemovePermissionResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    RemovePermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, required: true, location_name: "revisionId"))
    RemovePermissionResponse.struct_class = Types::RemovePermissionResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateProfilingGroupRequest.add_member(:agent_orchestration_config, Shapes::ShapeRef.new(shape: AgentOrchestrationConfig, required: true, location_name: "agentOrchestrationConfig"))
    UpdateProfilingGroupRequest.add_member(:profiling_group_name, Shapes::ShapeRef.new(shape: ProfilingGroupName, required: true, location: "uri", location_name: "profilingGroupName"))
    UpdateProfilingGroupRequest.struct_class = Types::UpdateProfilingGroupRequest

    UpdateProfilingGroupResponse.add_member(:profiling_group, Shapes::ShapeRef.new(shape: ProfilingGroupDescription, required: true, location_name: "profilingGroup"))
    UpdateProfilingGroupResponse.struct_class = Types::UpdateProfilingGroupResponse
    UpdateProfilingGroupResponse[:payload] = :profiling_group
    UpdateProfilingGroupResponse[:payload_member] = UpdateProfilingGroupResponse.member(:profiling_group)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-18"

      api.metadata = {
        "apiVersion" => "2019-07-18",
        "endpointPrefix" => "codeguru-profiler",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CodeGuru Profiler",
        "serviceId" => "CodeGuruProfiler",
        "signatureVersion" => "v4",
        "signingName" => "codeguru-profiler",
        "uid" => "codeguruprofiler-2019-07-18",
      }

      api.add_operation(:configure_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureAgent"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/configureAgent"
        o.input = Shapes::ShapeRef.new(shape: ConfigureAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigureAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfilingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfilingGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProfilingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/profile"
        o.input = Shapes::ShapeRef.new(shape: GetProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_profile_times, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileTimes"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/profileTimes"
        o.input = Shapes::ShapeRef.new(shape: ListProfileTimesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileTimesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiling_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfilingGroups"
        o.http_method = "GET"
        o.http_request_uri = "/profilingGroups"
        o.input = Shapes::ShapeRef.new(shape: ListProfilingGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfilingGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:post_agent_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostAgentProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/agentProfile"
        o.input = Shapes::ShapeRef.new(shape: PostAgentProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: PostAgentProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermission"
        o.http_method = "PUT"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: RemovePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_profiling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfilingGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/profilingGroups/{profilingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfilingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfilingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
