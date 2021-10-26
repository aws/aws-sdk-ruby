# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRContainers
  # @api private
  module ClientApi

    include Seahorse::Model

    ACMCertArn = Shapes::StringShape.new(name: 'ACMCertArn')
    Base64Encoded = Shapes::StringShape.new(name: 'Base64Encoded')
    CancelJobRunRequest = Shapes::StructureShape.new(name: 'CancelJobRunRequest')
    CancelJobRunResponse = Shapes::StructureShape.new(name: 'CancelJobRunResponse')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchMonitoringConfiguration = Shapes::StructureShape.new(name: 'CloudWatchMonitoringConfiguration')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationList = Shapes::ListShape.new(name: 'ConfigurationList')
    ConfigurationOverrides = Shapes::StructureShape.new(name: 'ConfigurationOverrides')
    ContainerInfo = Shapes::UnionShape.new(name: 'ContainerInfo')
    ContainerProvider = Shapes::StructureShape.new(name: 'ContainerProvider')
    ContainerProviderType = Shapes::StringShape.new(name: 'ContainerProviderType')
    CreateManagedEndpointRequest = Shapes::StructureShape.new(name: 'CreateManagedEndpointRequest')
    CreateManagedEndpointResponse = Shapes::StructureShape.new(name: 'CreateManagedEndpointResponse')
    CreateVirtualClusterRequest = Shapes::StructureShape.new(name: 'CreateVirtualClusterRequest')
    CreateVirtualClusterResponse = Shapes::StructureShape.new(name: 'CreateVirtualClusterResponse')
    Date = Shapes::TimestampShape.new(name: 'Date', timestampFormat: "iso8601")
    DeleteManagedEndpointRequest = Shapes::StructureShape.new(name: 'DeleteManagedEndpointRequest')
    DeleteManagedEndpointResponse = Shapes::StructureShape.new(name: 'DeleteManagedEndpointResponse')
    DeleteVirtualClusterRequest = Shapes::StructureShape.new(name: 'DeleteVirtualClusterRequest')
    DeleteVirtualClusterResponse = Shapes::StructureShape.new(name: 'DeleteVirtualClusterResponse')
    DescribeJobRunRequest = Shapes::StructureShape.new(name: 'DescribeJobRunRequest')
    DescribeJobRunResponse = Shapes::StructureShape.new(name: 'DescribeJobRunResponse')
    DescribeManagedEndpointRequest = Shapes::StructureShape.new(name: 'DescribeManagedEndpointRequest')
    DescribeManagedEndpointResponse = Shapes::StructureShape.new(name: 'DescribeManagedEndpointResponse')
    DescribeVirtualClusterRequest = Shapes::StructureShape.new(name: 'DescribeVirtualClusterRequest')
    DescribeVirtualClusterResponse = Shapes::StructureShape.new(name: 'DescribeVirtualClusterResponse')
    EksInfo = Shapes::StructureShape.new(name: 'EksInfo')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointState = Shapes::StringShape.new(name: 'EndpointState')
    EndpointStates = Shapes::ListShape.new(name: 'EndpointStates')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    EndpointTypes = Shapes::ListShape.new(name: 'EndpointTypes')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    EntryPointArgument = Shapes::StringShape.new(name: 'EntryPointArgument')
    EntryPointArguments = Shapes::ListShape.new(name: 'EntryPointArguments')
    EntryPointPath = Shapes::StringShape.new(name: 'EntryPointPath')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JavaInteger = Shapes::IntegerShape.new(name: 'JavaInteger')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobDriver = Shapes::StructureShape.new(name: 'JobDriver')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobRunStates = Shapes::ListShape.new(name: 'JobRunStates')
    JobRuns = Shapes::ListShape.new(name: 'JobRuns')
    KubernetesNamespace = Shapes::StringShape.new(name: 'KubernetesNamespace')
    ListJobRunsRequest = Shapes::StructureShape.new(name: 'ListJobRunsRequest')
    ListJobRunsResponse = Shapes::StructureShape.new(name: 'ListJobRunsResponse')
    ListManagedEndpointsRequest = Shapes::StructureShape.new(name: 'ListManagedEndpointsRequest')
    ListManagedEndpointsResponse = Shapes::StructureShape.new(name: 'ListManagedEndpointsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVirtualClustersRequest = Shapes::StructureShape.new(name: 'ListVirtualClustersRequest')
    ListVirtualClustersResponse = Shapes::StructureShape.new(name: 'ListVirtualClustersResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    MonitoringConfiguration = Shapes::StructureShape.new(name: 'MonitoringConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PersistentAppUI = Shapes::StringShape.new(name: 'PersistentAppUI')
    ReleaseLabel = Shapes::StringShape.new(name: 'ReleaseLabel')
    RequestIdentityUserArn = Shapes::StringShape.new(name: 'RequestIdentityUserArn')
    ResourceIdString = Shapes::StringShape.new(name: 'ResourceIdString')
    ResourceNameString = Shapes::StringShape.new(name: 'ResourceNameString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RsiArn = Shapes::StringShape.new(name: 'RsiArn')
    S3MonitoringConfiguration = Shapes::StructureShape.new(name: 'S3MonitoringConfiguration')
    SensitivePropertiesMap = Shapes::MapShape.new(name: 'SensitivePropertiesMap')
    SparkSubmitJobDriver = Shapes::StructureShape.new(name: 'SparkSubmitJobDriver')
    SparkSubmitParameters = Shapes::StringShape.new(name: 'SparkSubmitParameters')
    StartJobRunRequest = Shapes::StructureShape.new(name: 'StartJobRunRequest')
    StartJobRunResponse = Shapes::StructureShape.new(name: 'StartJobRunResponse')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String128 = Shapes::StringShape.new(name: 'String128')
    String256 = Shapes::StringShape.new(name: 'String256')
    StringEmpty256 = Shapes::StringShape.new(name: 'StringEmpty256')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UriString = Shapes::StringShape.new(name: 'UriString')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VirtualCluster = Shapes::StructureShape.new(name: 'VirtualCluster')
    VirtualClusterArn = Shapes::StringShape.new(name: 'VirtualClusterArn')
    VirtualClusterState = Shapes::StringShape.new(name: 'VirtualClusterState')
    VirtualClusterStates = Shapes::ListShape.new(name: 'VirtualClusterStates')
    VirtualClusters = Shapes::ListShape.new(name: 'VirtualClusters')

    CancelJobRunRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "jobRunId"))
    CancelJobRunRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    CancelJobRunRequest.struct_class = Types::CancelJobRunRequest

    CancelJobRunResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    CancelJobRunResponse.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    CancelJobRunResponse.struct_class = Types::CancelJobRunResponse

    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: ACMCertArn, location_name: "certificateArn"))
    Certificate.add_member(:certificate_data, Shapes::ShapeRef.new(shape: Base64Encoded, location_name: "certificateData"))
    Certificate.struct_class = Types::Certificate

    CloudWatchMonitoringConfiguration.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchMonitoringConfiguration.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: String256, location_name: "logStreamNamePrefix"))
    CloudWatchMonitoringConfiguration.struct_class = Types::CloudWatchMonitoringConfiguration

    Configuration.add_member(:classification, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "classification"))
    Configuration.add_member(:properties, Shapes::ShapeRef.new(shape: SensitivePropertiesMap, location_name: "properties"))
    Configuration.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "configurations"))
    Configuration.struct_class = Types::Configuration

    ConfigurationList.member = Shapes::ShapeRef.new(shape: Configuration)

    ConfigurationOverrides.add_member(:application_configuration, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "applicationConfiguration"))
    ConfigurationOverrides.add_member(:monitoring_configuration, Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: "monitoringConfiguration"))
    ConfigurationOverrides.struct_class = Types::ConfigurationOverrides

    ContainerInfo.add_member(:eks_info, Shapes::ShapeRef.new(shape: EksInfo, location_name: "eksInfo"))
    ContainerInfo.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContainerInfo.add_member_subclass(:eks_info, Types::ContainerInfo::EksInfo)
    ContainerInfo.add_member_subclass(:unknown, Types::ContainerInfo::Unknown)
    ContainerInfo.struct_class = Types::ContainerInfo

    ContainerProvider.add_member(:type, Shapes::ShapeRef.new(shape: ContainerProviderType, required: true, location_name: "type"))
    ContainerProvider.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "id"))
    ContainerProvider.add_member(:info, Shapes::ShapeRef.new(shape: ContainerInfo, location_name: "info"))
    ContainerProvider.struct_class = Types::ContainerProvider

    CreateManagedEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, required: true, location_name: "name"))
    CreateManagedEndpointRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    CreateManagedEndpointRequest.add_member(:type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "type"))
    CreateManagedEndpointRequest.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    CreateManagedEndpointRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRoleArn"))
    CreateManagedEndpointRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: ACMCertArn, deprecated: true, location_name: "certificateArn", metadata: {"deprecatedMessage"=>"Customer provided certificate-arn is deprecated and would be removed in future."}))
    CreateManagedEndpointRequest.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    CreateManagedEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateManagedEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateManagedEndpointRequest.struct_class = Types::CreateManagedEndpointRequest

    CreateManagedEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    CreateManagedEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    CreateManagedEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "arn"))
    CreateManagedEndpointResponse.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    CreateManagedEndpointResponse.struct_class = Types::CreateManagedEndpointResponse

    CreateVirtualClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, required: true, location_name: "name"))
    CreateVirtualClusterRequest.add_member(:container_provider, Shapes::ShapeRef.new(shape: ContainerProvider, required: true, location_name: "containerProvider"))
    CreateVirtualClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateVirtualClusterRequest.struct_class = Types::CreateVirtualClusterRequest

    CreateVirtualClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    CreateVirtualClusterResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    CreateVirtualClusterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: VirtualClusterArn, location_name: "arn"))
    CreateVirtualClusterResponse.struct_class = Types::CreateVirtualClusterResponse

    DeleteManagedEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "endpointId"))
    DeleteManagedEndpointRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    DeleteManagedEndpointRequest.struct_class = Types::DeleteManagedEndpointRequest

    DeleteManagedEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    DeleteManagedEndpointResponse.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    DeleteManagedEndpointResponse.struct_class = Types::DeleteManagedEndpointResponse

    DeleteVirtualClusterRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    DeleteVirtualClusterRequest.struct_class = Types::DeleteVirtualClusterRequest

    DeleteVirtualClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    DeleteVirtualClusterResponse.struct_class = Types::DeleteVirtualClusterResponse

    DescribeJobRunRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "jobRunId"))
    DescribeJobRunRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    DescribeJobRunRequest.struct_class = Types::DescribeJobRunRequest

    DescribeJobRunResponse.add_member(:job_run, Shapes::ShapeRef.new(shape: JobRun, location_name: "jobRun"))
    DescribeJobRunResponse.struct_class = Types::DescribeJobRunResponse

    DescribeManagedEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "endpointId"))
    DescribeManagedEndpointRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    DescribeManagedEndpointRequest.struct_class = Types::DescribeManagedEndpointRequest

    DescribeManagedEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "endpoint"))
    DescribeManagedEndpointResponse.struct_class = Types::DescribeManagedEndpointResponse

    DescribeVirtualClusterRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    DescribeVirtualClusterRequest.struct_class = Types::DescribeVirtualClusterRequest

    DescribeVirtualClusterResponse.add_member(:virtual_cluster, Shapes::ShapeRef.new(shape: VirtualCluster, location_name: "virtualCluster"))
    DescribeVirtualClusterResponse.struct_class = Types::DescribeVirtualClusterResponse

    EksInfo.add_member(:namespace, Shapes::ShapeRef.new(shape: KubernetesNamespace, location_name: "namespace"))
    EksInfo.struct_class = Types::EksInfo

    Endpoint.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    Endpoint.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    Endpoint.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "arn"))
    Endpoint.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    Endpoint.add_member(:type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "type"))
    Endpoint.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "state"))
    Endpoint.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    Endpoint.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "executionRoleArn"))
    Endpoint.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: ACMCertArn, deprecated: true, location_name: "certificateArn", metadata: {"deprecatedMessage"=>"Customer provided certificate-arn is deprecated and would be removed in future."}))
    Endpoint.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateAuthority"))
    Endpoint.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    Endpoint.add_member(:server_url, Shapes::ShapeRef.new(shape: UriString, location_name: "serverUrl"))
    Endpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    Endpoint.add_member(:security_group, Shapes::ShapeRef.new(shape: String256, location_name: "securityGroup"))
    Endpoint.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    Endpoint.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, location_name: "stateDetails"))
    Endpoint.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    Endpoint.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Endpoint.struct_class = Types::Endpoint

    EndpointStates.member = Shapes::ShapeRef.new(shape: EndpointState)

    EndpointTypes.member = Shapes::ShapeRef.new(shape: EndpointType)

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    EntryPointArguments.member = Shapes::ShapeRef.new(shape: EntryPointArgument)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobDriver.add_member(:spark_submit_job_driver, Shapes::ShapeRef.new(shape: SparkSubmitJobDriver, location_name: "sparkSubmitJobDriver"))
    JobDriver.struct_class = Types::JobDriver

    JobRun.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    JobRun.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    JobRun.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    JobRun.add_member(:arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "arn"))
    JobRun.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, location_name: "state"))
    JobRun.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    JobRun.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "executionRoleArn"))
    JobRun.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    JobRun.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    JobRun.add_member(:job_driver, Shapes::ShapeRef.new(shape: JobDriver, location_name: "jobDriver"))
    JobRun.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    JobRun.add_member(:created_by, Shapes::ShapeRef.new(shape: RequestIdentityUserArn, location_name: "createdBy"))
    JobRun.add_member(:finished_at, Shapes::ShapeRef.new(shape: Date, location_name: "finishedAt"))
    JobRun.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, location_name: "stateDetails"))
    JobRun.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "failureReason"))
    JobRun.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    JobRun.struct_class = Types::JobRun

    JobRunStates.member = Shapes::ShapeRef.new(shape: JobRunState)

    JobRuns.member = Shapes::ShapeRef.new(shape: JobRun)

    ListJobRunsRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    ListJobRunsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdBefore"))
    ListJobRunsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdAfter"))
    ListJobRunsRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location: "querystring", location_name: "name"))
    ListJobRunsRequest.add_member(:states, Shapes::ShapeRef.new(shape: JobRunStates, location: "querystring", location_name: "states"))
    ListJobRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: JavaInteger, location: "querystring", location_name: "maxResults"))
    ListJobRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobRunsRequest.struct_class = Types::ListJobRunsRequest

    ListJobRunsResponse.add_member(:job_runs, Shapes::ShapeRef.new(shape: JobRuns, location_name: "jobRuns"))
    ListJobRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobRunsResponse.struct_class = Types::ListJobRunsResponse

    ListManagedEndpointsRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    ListManagedEndpointsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdBefore"))
    ListManagedEndpointsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdAfter"))
    ListManagedEndpointsRequest.add_member(:types, Shapes::ShapeRef.new(shape: EndpointTypes, location: "querystring", location_name: "types"))
    ListManagedEndpointsRequest.add_member(:states, Shapes::ShapeRef.new(shape: EndpointStates, location: "querystring", location_name: "states"))
    ListManagedEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: JavaInteger, location: "querystring", location_name: "maxResults"))
    ListManagedEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListManagedEndpointsRequest.struct_class = Types::ListManagedEndpointsRequest

    ListManagedEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "endpoints"))
    ListManagedEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListManagedEndpointsResponse.struct_class = Types::ListManagedEndpointsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RsiArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVirtualClustersRequest.add_member(:container_provider_id, Shapes::ShapeRef.new(shape: String1024, location: "querystring", location_name: "containerProviderId"))
    ListVirtualClustersRequest.add_member(:container_provider_type, Shapes::ShapeRef.new(shape: ContainerProviderType, location: "querystring", location_name: "containerProviderType"))
    ListVirtualClustersRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdAfter"))
    ListVirtualClustersRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdBefore"))
    ListVirtualClustersRequest.add_member(:states, Shapes::ShapeRef.new(shape: VirtualClusterStates, location: "querystring", location_name: "states"))
    ListVirtualClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: JavaInteger, location: "querystring", location_name: "maxResults"))
    ListVirtualClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListVirtualClustersRequest.struct_class = Types::ListVirtualClustersRequest

    ListVirtualClustersResponse.add_member(:virtual_clusters, Shapes::ShapeRef.new(shape: VirtualClusters, location_name: "virtualClusters"))
    ListVirtualClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListVirtualClustersResponse.struct_class = Types::ListVirtualClustersResponse

    MonitoringConfiguration.add_member(:persistent_app_ui, Shapes::ShapeRef.new(shape: PersistentAppUI, location_name: "persistentAppUI"))
    MonitoringConfiguration.add_member(:cloud_watch_monitoring_configuration, Shapes::ShapeRef.new(shape: CloudWatchMonitoringConfiguration, location_name: "cloudWatchMonitoringConfiguration"))
    MonitoringConfiguration.add_member(:s3_monitoring_configuration, Shapes::ShapeRef.new(shape: S3MonitoringConfiguration, location_name: "s3MonitoringConfiguration"))
    MonitoringConfiguration.struct_class = Types::MonitoringConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3MonitoringConfiguration.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, required: true, location_name: "logUri"))
    S3MonitoringConfiguration.struct_class = Types::S3MonitoringConfiguration

    SensitivePropertiesMap.key = Shapes::ShapeRef.new(shape: String1024)
    SensitivePropertiesMap.value = Shapes::ShapeRef.new(shape: String1024)

    SparkSubmitJobDriver.add_member(:entry_point, Shapes::ShapeRef.new(shape: EntryPointPath, required: true, location_name: "entryPoint"))
    SparkSubmitJobDriver.add_member(:entry_point_arguments, Shapes::ShapeRef.new(shape: EntryPointArguments, location_name: "entryPointArguments"))
    SparkSubmitJobDriver.add_member(:spark_submit_parameters, Shapes::ShapeRef.new(shape: SparkSubmitParameters, location_name: "sparkSubmitParameters"))
    SparkSubmitJobDriver.struct_class = Types::SparkSubmitJobDriver

    StartJobRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    StartJobRunRequest.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, required: true, location: "uri", location_name: "virtualClusterId"))
    StartJobRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartJobRunRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRoleArn"))
    StartJobRunRequest.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    StartJobRunRequest.add_member(:job_driver, Shapes::ShapeRef.new(shape: JobDriver, required: true, location_name: "jobDriver"))
    StartJobRunRequest.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    StartJobRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartJobRunRequest.struct_class = Types::StartJobRunRequest

    StartJobRunResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    StartJobRunResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    StartJobRunResponse.add_member(:arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "arn"))
    StartJobRunResponse.add_member(:virtual_cluster_id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "virtualClusterId"))
    StartJobRunResponse.struct_class = Types::StartJobRunResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: String256)

    TagKeyList.member = Shapes::ShapeRef.new(shape: String128)

    TagMap.key = Shapes::ShapeRef.new(shape: String128)
    TagMap.value = Shapes::ShapeRef.new(shape: StringEmpty256)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RsiArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RsiArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VirtualCluster.add_member(:id, Shapes::ShapeRef.new(shape: ResourceIdString, location_name: "id"))
    VirtualCluster.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameString, location_name: "name"))
    VirtualCluster.add_member(:arn, Shapes::ShapeRef.new(shape: VirtualClusterArn, location_name: "arn"))
    VirtualCluster.add_member(:state, Shapes::ShapeRef.new(shape: VirtualClusterState, location_name: "state"))
    VirtualCluster.add_member(:container_provider, Shapes::ShapeRef.new(shape: ContainerProvider, location_name: "containerProvider"))
    VirtualCluster.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    VirtualCluster.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    VirtualCluster.struct_class = Types::VirtualCluster

    VirtualClusterStates.member = Shapes::ShapeRef.new(shape: VirtualClusterState)

    VirtualClusters.member = Shapes::ShapeRef.new(shape: VirtualCluster)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-10-01"

      api.metadata = {
        "apiVersion" => "2020-10-01",
        "endpointPrefix" => "emr-containers",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon EMR Containers",
        "serviceId" => "EMR containers",
        "signatureVersion" => "v4",
        "signingName" => "emr-containers",
        "uid" => "emr-containers-2020-10-01",
      }

      api.add_operation(:cancel_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJobRun"
        o.http_method = "DELETE"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/jobruns/{jobRunId}"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_managed_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateManagedEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateManagedEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateManagedEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_virtual_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualCluster"
        o.http_method = "POST"
        o.http_request_uri = "/virtualclusters"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_managed_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteManagedEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/endpoints/{endpointId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteManagedEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteManagedEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_virtual_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobRun"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/jobruns/{jobRunId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_managed_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeManagedEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/endpoints/{endpointId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeManagedEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeManagedEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_virtual_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualCluster"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_job_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobRuns"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/jobruns"
        o.input = Shapes::ShapeRef.new(shape: ListJobRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListManagedEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_virtual_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualClusters"
        o.http_method = "GET"
        o.http_request_uri = "/virtualclusters"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/virtualclusters/{virtualClusterId}/jobruns"
        o.input = Shapes::ShapeRef.new(shape: StartJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
