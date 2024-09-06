# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Panorama
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlternateSoftwareMetadata = Shapes::StructureShape.new(name: 'AlternateSoftwareMetadata')
    AlternateSoftwares = Shapes::ListShape.new(name: 'AlternateSoftwares')
    ApplicationInstance = Shapes::StructureShape.new(name: 'ApplicationInstance')
    ApplicationInstanceArn = Shapes::StringShape.new(name: 'ApplicationInstanceArn')
    ApplicationInstanceHealthStatus = Shapes::StringShape.new(name: 'ApplicationInstanceHealthStatus')
    ApplicationInstanceId = Shapes::StringShape.new(name: 'ApplicationInstanceId')
    ApplicationInstanceName = Shapes::StringShape.new(name: 'ApplicationInstanceName')
    ApplicationInstanceStatus = Shapes::StringShape.new(name: 'ApplicationInstanceStatus')
    ApplicationInstanceStatusDescription = Shapes::StringShape.new(name: 'ApplicationInstanceStatusDescription')
    ApplicationInstances = Shapes::ListShape.new(name: 'ApplicationInstances')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bucket = Shapes::StringShape.new(name: 'Bucket')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    Certificates = Shapes::BlobShape.new(name: 'Certificates')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionErrorArgument = Shapes::StructureShape.new(name: 'ConflictExceptionErrorArgument')
    ConflictExceptionErrorArgumentList = Shapes::ListShape.new(name: 'ConflictExceptionErrorArgumentList')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    CreateApplicationInstanceRequest = Shapes::StructureShape.new(name: 'CreateApplicationInstanceRequest')
    CreateApplicationInstanceResponse = Shapes::StructureShape.new(name: 'CreateApplicationInstanceResponse')
    CreateJobForDevicesRequest = Shapes::StructureShape.new(name: 'CreateJobForDevicesRequest')
    CreateJobForDevicesResponse = Shapes::StructureShape.new(name: 'CreateJobForDevicesResponse')
    CreateNodeFromTemplateJobRequest = Shapes::StructureShape.new(name: 'CreateNodeFromTemplateJobRequest')
    CreateNodeFromTemplateJobResponse = Shapes::StructureShape.new(name: 'CreateNodeFromTemplateJobResponse')
    CreatePackageImportJobRequest = Shapes::StructureShape.new(name: 'CreatePackageImportJobRequest')
    CreatePackageImportJobResponse = Shapes::StructureShape.new(name: 'CreatePackageImportJobResponse')
    CreatePackageRequest = Shapes::StructureShape.new(name: 'CreatePackageRequest')
    CreatePackageResponse = Shapes::StructureShape.new(name: 'CreatePackageResponse')
    CreatedTime = Shapes::TimestampShape.new(name: 'CreatedTime')
    CurrentSoftware = Shapes::StringShape.new(name: 'CurrentSoftware')
    DefaultGateway = Shapes::StringShape.new(name: 'DefaultGateway')
    DefaultRuntimeContextDevice = Shapes::StringShape.new(name: 'DefaultRuntimeContextDevice')
    DeleteDeviceRequest = Shapes::StructureShape.new(name: 'DeleteDeviceRequest')
    DeleteDeviceResponse = Shapes::StructureShape.new(name: 'DeleteDeviceResponse')
    DeletePackageRequest = Shapes::StructureShape.new(name: 'DeletePackageRequest')
    DeletePackageResponse = Shapes::StructureShape.new(name: 'DeletePackageResponse')
    DeregisterPackageVersionRequest = Shapes::StructureShape.new(name: 'DeregisterPackageVersionRequest')
    DeregisterPackageVersionResponse = Shapes::StructureShape.new(name: 'DeregisterPackageVersionResponse')
    DescribeApplicationInstanceDetailsRequest = Shapes::StructureShape.new(name: 'DescribeApplicationInstanceDetailsRequest')
    DescribeApplicationInstanceDetailsResponse = Shapes::StructureShape.new(name: 'DescribeApplicationInstanceDetailsResponse')
    DescribeApplicationInstanceRequest = Shapes::StructureShape.new(name: 'DescribeApplicationInstanceRequest')
    DescribeApplicationInstanceResponse = Shapes::StructureShape.new(name: 'DescribeApplicationInstanceResponse')
    DescribeDeviceJobRequest = Shapes::StructureShape.new(name: 'DescribeDeviceJobRequest')
    DescribeDeviceJobResponse = Shapes::StructureShape.new(name: 'DescribeDeviceJobResponse')
    DescribeDeviceRequest = Shapes::StructureShape.new(name: 'DescribeDeviceRequest')
    DescribeDeviceResponse = Shapes::StructureShape.new(name: 'DescribeDeviceResponse')
    DescribeNodeFromTemplateJobRequest = Shapes::StructureShape.new(name: 'DescribeNodeFromTemplateJobRequest')
    DescribeNodeFromTemplateJobResponse = Shapes::StructureShape.new(name: 'DescribeNodeFromTemplateJobResponse')
    DescribeNodeRequest = Shapes::StructureShape.new(name: 'DescribeNodeRequest')
    DescribeNodeResponse = Shapes::StructureShape.new(name: 'DescribeNodeResponse')
    DescribePackageImportJobRequest = Shapes::StructureShape.new(name: 'DescribePackageImportJobRequest')
    DescribePackageImportJobResponse = Shapes::StructureShape.new(name: 'DescribePackageImportJobResponse')
    DescribePackageRequest = Shapes::StructureShape.new(name: 'DescribePackageRequest')
    DescribePackageResponse = Shapes::StructureShape.new(name: 'DescribePackageResponse')
    DescribePackageVersionRequest = Shapes::StructureShape.new(name: 'DescribePackageVersionRequest')
    DescribePackageVersionResponse = Shapes::StructureShape.new(name: 'DescribePackageVersionResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DesiredState = Shapes::StringShape.new(name: 'DesiredState')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceAggregatedStatus = Shapes::StringShape.new(name: 'DeviceAggregatedStatus')
    DeviceArn = Shapes::StringShape.new(name: 'DeviceArn')
    DeviceBrand = Shapes::StringShape.new(name: 'DeviceBrand')
    DeviceConnectionStatus = Shapes::StringShape.new(name: 'DeviceConnectionStatus')
    DeviceId = Shapes::StringShape.new(name: 'DeviceId')
    DeviceIdList = Shapes::ListShape.new(name: 'DeviceIdList')
    DeviceJob = Shapes::StructureShape.new(name: 'DeviceJob')
    DeviceJobConfig = Shapes::StructureShape.new(name: 'DeviceJobConfig')
    DeviceJobList = Shapes::ListShape.new(name: 'DeviceJobList')
    DeviceList = Shapes::ListShape.new(name: 'DeviceList')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceReportedStatus = Shapes::StringShape.new(name: 'DeviceReportedStatus')
    DeviceSerialNumber = Shapes::StringShape.new(name: 'DeviceSerialNumber')
    DeviceStatus = Shapes::StringShape.new(name: 'DeviceStatus')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    Dns = Shapes::StringShape.new(name: 'Dns')
    DnsList = Shapes::ListShape.new(name: 'DnsList')
    EthernetPayload = Shapes::StructureShape.new(name: 'EthernetPayload')
    EthernetStatus = Shapes::StructureShape.new(name: 'EthernetStatus')
    HwAddress = Shapes::StringShape.new(name: 'HwAddress')
    ImageVersion = Shapes::StringShape.new(name: 'ImageVersion')
    InputPortList = Shapes::ListShape.new(name: 'InputPortList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IotThingName = Shapes::StringShape.new(name: 'IotThingName')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressOrServerName = Shapes::StringShape.new(name: 'IpAddressOrServerName')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobResourceTags = Shapes::StructureShape.new(name: 'JobResourceTags')
    JobResourceType = Shapes::StringShape.new(name: 'JobResourceType')
    JobTagsList = Shapes::ListShape.new(name: 'JobTagsList')
    JobType = Shapes::StringShape.new(name: 'JobType')
    LastUpdatedTime = Shapes::TimestampShape.new(name: 'LastUpdatedTime')
    LatestAlternateSoftware = Shapes::StringShape.new(name: 'LatestAlternateSoftware')
    LatestDeviceJob = Shapes::StructureShape.new(name: 'LatestDeviceJob')
    LatestSoftware = Shapes::StringShape.new(name: 'LatestSoftware')
    LeaseExpirationTime = Shapes::TimestampShape.new(name: 'LeaseExpirationTime')
    ListApplicationInstanceDependenciesRequest = Shapes::StructureShape.new(name: 'ListApplicationInstanceDependenciesRequest')
    ListApplicationInstanceDependenciesResponse = Shapes::StructureShape.new(name: 'ListApplicationInstanceDependenciesResponse')
    ListApplicationInstanceNodeInstancesRequest = Shapes::StructureShape.new(name: 'ListApplicationInstanceNodeInstancesRequest')
    ListApplicationInstanceNodeInstancesResponse = Shapes::StructureShape.new(name: 'ListApplicationInstanceNodeInstancesResponse')
    ListApplicationInstancesRequest = Shapes::StructureShape.new(name: 'ListApplicationInstancesRequest')
    ListApplicationInstancesResponse = Shapes::StructureShape.new(name: 'ListApplicationInstancesResponse')
    ListDevicesJobsRequest = Shapes::StructureShape.new(name: 'ListDevicesJobsRequest')
    ListDevicesJobsResponse = Shapes::StructureShape.new(name: 'ListDevicesJobsResponse')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    ListDevicesSortBy = Shapes::StringShape.new(name: 'ListDevicesSortBy')
    ListNodeFromTemplateJobsRequest = Shapes::StructureShape.new(name: 'ListNodeFromTemplateJobsRequest')
    ListNodeFromTemplateJobsResponse = Shapes::StructureShape.new(name: 'ListNodeFromTemplateJobsResponse')
    ListNodesRequest = Shapes::StructureShape.new(name: 'ListNodesRequest')
    ListNodesResponse = Shapes::StructureShape.new(name: 'ListNodesResponse')
    ListPackageImportJobsRequest = Shapes::StructureShape.new(name: 'ListPackageImportJobsRequest')
    ListPackageImportJobsResponse = Shapes::StructureShape.new(name: 'ListPackageImportJobsResponse')
    ListPackagesRequest = Shapes::StructureShape.new(name: 'ListPackagesRequest')
    ListPackagesResponse = Shapes::StructureShape.new(name: 'ListPackagesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManifestOverridesPayload = Shapes::UnionShape.new(name: 'ManifestOverridesPayload')
    ManifestOverridesPayloadData = Shapes::StringShape.new(name: 'ManifestOverridesPayloadData')
    ManifestPayload = Shapes::UnionShape.new(name: 'ManifestPayload')
    ManifestPayloadData = Shapes::StringShape.new(name: 'ManifestPayloadData')
    MarkLatestPatch = Shapes::BooleanShape.new(name: 'MarkLatestPatch')
    Mask = Shapes::StringShape.new(name: 'Mask')
    MaxConnections = Shapes::IntegerShape.new(name: 'MaxConnections')
    MaxSize25 = Shapes::IntegerShape.new(name: 'MaxSize25')
    NameFilter = Shapes::StringShape.new(name: 'NameFilter')
    NetworkConnectionStatus = Shapes::StringShape.new(name: 'NetworkConnectionStatus')
    NetworkPayload = Shapes::StructureShape.new(name: 'NetworkPayload')
    NetworkStatus = Shapes::StructureShape.new(name: 'NetworkStatus')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeAssetName = Shapes::StringShape.new(name: 'NodeAssetName')
    NodeCategory = Shapes::StringShape.new(name: 'NodeCategory')
    NodeFromTemplateJob = Shapes::StructureShape.new(name: 'NodeFromTemplateJob')
    NodeFromTemplateJobList = Shapes::ListShape.new(name: 'NodeFromTemplateJobList')
    NodeFromTemplateJobStatus = Shapes::StringShape.new(name: 'NodeFromTemplateJobStatus')
    NodeFromTemplateJobStatusMessage = Shapes::StringShape.new(name: 'NodeFromTemplateJobStatusMessage')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NodeInputPort = Shapes::StructureShape.new(name: 'NodeInputPort')
    NodeInstance = Shapes::StructureShape.new(name: 'NodeInstance')
    NodeInstanceId = Shapes::StringShape.new(name: 'NodeInstanceId')
    NodeInstanceStatus = Shapes::StringShape.new(name: 'NodeInstanceStatus')
    NodeInstances = Shapes::ListShape.new(name: 'NodeInstances')
    NodeInterface = Shapes::StructureShape.new(name: 'NodeInterface')
    NodeName = Shapes::StringShape.new(name: 'NodeName')
    NodeOutputPort = Shapes::StructureShape.new(name: 'NodeOutputPort')
    NodePackageArn = Shapes::StringShape.new(name: 'NodePackageArn')
    NodePackageId = Shapes::StringShape.new(name: 'NodePackageId')
    NodePackageName = Shapes::StringShape.new(name: 'NodePackageName')
    NodePackagePatchVersion = Shapes::StringShape.new(name: 'NodePackagePatchVersion')
    NodePackageVersion = Shapes::StringShape.new(name: 'NodePackageVersion')
    NodeSignal = Shapes::StructureShape.new(name: 'NodeSignal')
    NodeSignalList = Shapes::ListShape.new(name: 'NodeSignalList')
    NodeSignalValue = Shapes::StringShape.new(name: 'NodeSignalValue')
    NodesList = Shapes::ListShape.new(name: 'NodesList')
    NtpPayload = Shapes::StructureShape.new(name: 'NtpPayload')
    NtpServerList = Shapes::ListShape.new(name: 'NtpServerList')
    NtpServerName = Shapes::StringShape.new(name: 'NtpServerName')
    NtpStatus = Shapes::StructureShape.new(name: 'NtpStatus')
    OTAJobConfig = Shapes::StructureShape.new(name: 'OTAJobConfig')
    Object = Shapes::StringShape.new(name: 'Object')
    ObjectKey = Shapes::StringShape.new(name: 'ObjectKey')
    OutPutS3Location = Shapes::StructureShape.new(name: 'OutPutS3Location')
    OutputPortList = Shapes::ListShape.new(name: 'OutputPortList')
    PackageImportJob = Shapes::StructureShape.new(name: 'PackageImportJob')
    PackageImportJobInputConfig = Shapes::StructureShape.new(name: 'PackageImportJobInputConfig')
    PackageImportJobList = Shapes::ListShape.new(name: 'PackageImportJobList')
    PackageImportJobOutput = Shapes::StructureShape.new(name: 'PackageImportJobOutput')
    PackageImportJobOutputConfig = Shapes::StructureShape.new(name: 'PackageImportJobOutputConfig')
    PackageImportJobStatus = Shapes::StringShape.new(name: 'PackageImportJobStatus')
    PackageImportJobStatusMessage = Shapes::StringShape.new(name: 'PackageImportJobStatusMessage')
    PackageImportJobType = Shapes::StringShape.new(name: 'PackageImportJobType')
    PackageList = Shapes::ListShape.new(name: 'PackageList')
    PackageListItem = Shapes::StructureShape.new(name: 'PackageListItem')
    PackageObject = Shapes::StructureShape.new(name: 'PackageObject')
    PackageObjects = Shapes::ListShape.new(name: 'PackageObjects')
    PackageOwnerAccount = Shapes::StringShape.new(name: 'PackageOwnerAccount')
    PackageVersionInputConfig = Shapes::StructureShape.new(name: 'PackageVersionInputConfig')
    PackageVersionOutputConfig = Shapes::StructureShape.new(name: 'PackageVersionOutputConfig')
    PackageVersionStatus = Shapes::StringShape.new(name: 'PackageVersionStatus')
    PackageVersionStatusDescription = Shapes::StringShape.new(name: 'PackageVersionStatusDescription')
    PortDefaultValue = Shapes::StringShape.new(name: 'PortDefaultValue')
    PortName = Shapes::StringShape.new(name: 'PortName')
    PortType = Shapes::StringShape.new(name: 'PortType')
    PrincipalArn = Shapes::StringShape.new(name: 'PrincipalArn')
    PrincipalArnsList = Shapes::ListShape.new(name: 'PrincipalArnsList')
    ProvisionDeviceRequest = Shapes::StructureShape.new(name: 'ProvisionDeviceRequest')
    ProvisionDeviceResponse = Shapes::StructureShape.new(name: 'ProvisionDeviceResponse')
    Region = Shapes::StringShape.new(name: 'Region')
    RegisterPackageVersionRequest = Shapes::StructureShape.new(name: 'RegisterPackageVersionRequest')
    RegisterPackageVersionResponse = Shapes::StructureShape.new(name: 'RegisterPackageVersionResponse')
    RemoveApplicationInstanceRequest = Shapes::StructureShape.new(name: 'RemoveApplicationInstanceRequest')
    RemoveApplicationInstanceResponse = Shapes::StructureShape.new(name: 'RemoveApplicationInstanceResponse')
    ReportedRuntimeContextState = Shapes::StructureShape.new(name: 'ReportedRuntimeContextState')
    ReportedRuntimeContextStates = Shapes::ListShape.new(name: 'ReportedRuntimeContextStates')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    RuntimeContextName = Shapes::StringShape.new(name: 'RuntimeContextName')
    RuntimeRoleArn = Shapes::StringShape.new(name: 'RuntimeRoleArn')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SignalApplicationInstanceNodeInstancesRequest = Shapes::StructureShape.new(name: 'SignalApplicationInstanceNodeInstancesRequest')
    SignalApplicationInstanceNodeInstancesResponse = Shapes::StructureShape.new(name: 'SignalApplicationInstanceNodeInstancesResponse')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StaticIpConnectionInfo = Shapes::StructureShape.new(name: 'StaticIpConnectionInfo')
    StatusFilter = Shapes::StringShape.new(name: 'StatusFilter')
    StorageLocation = Shapes::StructureShape.new(name: 'StorageLocation')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateKey = Shapes::StringShape.new(name: 'TemplateKey')
    TemplateParametersMap = Shapes::MapShape.new(name: 'TemplateParametersMap')
    TemplateType = Shapes::StringShape.new(name: 'TemplateType')
    TemplateValue = Shapes::StringShape.new(name: 'TemplateValue')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCreatedTime = Shapes::TimestampShape.new(name: 'UpdateCreatedTime')
    UpdateDeviceMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDeviceMetadataRequest')
    UpdateDeviceMetadataResponse = Shapes::StructureShape.new(name: 'UpdateDeviceMetadataResponse')
    UpdateProgress = Shapes::StringShape.new(name: 'UpdateProgress')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionErrorArgument = Shapes::StructureShape.new(name: 'ValidationExceptionErrorArgument')
    ValidationExceptionErrorArgumentList = Shapes::ListShape.new(name: 'ValidationExceptionErrorArgumentList')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Version = Shapes::StringShape.new(name: 'Version')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlternateSoftwareMetadata.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    AlternateSoftwareMetadata.struct_class = Types::AlternateSoftwareMetadata

    AlternateSoftwares.member = Shapes::ShapeRef.new(shape: AlternateSoftwareMetadata)

    ApplicationInstance.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceId"))
    ApplicationInstance.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationInstanceArn, location_name: "Arn"))
    ApplicationInstance.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTime"))
    ApplicationInstance.add_member(:default_runtime_context_device, Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: "DefaultRuntimeContextDevice"))
    ApplicationInstance.add_member(:default_runtime_context_device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DefaultRuntimeContextDeviceName"))
    ApplicationInstance.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ApplicationInstance.add_member(:health_status, Shapes::ShapeRef.new(shape: ApplicationInstanceHealthStatus, location_name: "HealthStatus"))
    ApplicationInstance.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: "Name"))
    ApplicationInstance.add_member(:runtime_context_states, Shapes::ShapeRef.new(shape: ReportedRuntimeContextStates, location_name: "RuntimeContextStates"))
    ApplicationInstance.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationInstanceStatus, location_name: "Status"))
    ApplicationInstance.add_member(:status_description, Shapes::ShapeRef.new(shape: ApplicationInstanceStatusDescription, location_name: "StatusDescription"))
    ApplicationInstance.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ApplicationInstance.struct_class = Types::ApplicationInstance

    ApplicationInstances.member = Shapes::ShapeRef.new(shape: ApplicationInstance)

    ConflictException.add_member(:error_arguments, Shapes::ShapeRef.new(shape: ConflictExceptionErrorArgumentList, location_name: "ErrorArguments"))
    ConflictException.add_member(:error_id, Shapes::ShapeRef.new(shape: String, location_name: "ErrorId"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConflictExceptionErrorArgument.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ConflictExceptionErrorArgument.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ConflictExceptionErrorArgument.struct_class = Types::ConflictExceptionErrorArgument

    ConflictExceptionErrorArgumentList.member = Shapes::ShapeRef.new(shape: ConflictExceptionErrorArgument)

    CreateApplicationInstanceRequest.add_member(:application_instance_id_to_replace, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceIdToReplace"))
    CreateApplicationInstanceRequest.add_member(:default_runtime_context_device, Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, required: true, location_name: "DefaultRuntimeContextDevice"))
    CreateApplicationInstanceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationInstanceRequest.add_member(:manifest_overrides_payload, Shapes::ShapeRef.new(shape: ManifestOverridesPayload, location_name: "ManifestOverridesPayload"))
    CreateApplicationInstanceRequest.add_member(:manifest_payload, Shapes::ShapeRef.new(shape: ManifestPayload, required: true, location_name: "ManifestPayload"))
    CreateApplicationInstanceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: "Name"))
    CreateApplicationInstanceRequest.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RuntimeRoleArn, location_name: "RuntimeRoleArn"))
    CreateApplicationInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateApplicationInstanceRequest.struct_class = Types::CreateApplicationInstanceRequest

    CreateApplicationInstanceResponse.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location_name: "ApplicationInstanceId"))
    CreateApplicationInstanceResponse.struct_class = Types::CreateApplicationInstanceResponse

    CreateJobForDevicesRequest.add_member(:device_ids, Shapes::ShapeRef.new(shape: DeviceIdList, required: true, location_name: "DeviceIds"))
    CreateJobForDevicesRequest.add_member(:device_job_config, Shapes::ShapeRef.new(shape: DeviceJobConfig, location_name: "DeviceJobConfig"))
    CreateJobForDevicesRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "JobType"))
    CreateJobForDevicesRequest.struct_class = Types::CreateJobForDevicesRequest

    CreateJobForDevicesResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, required: true, location_name: "Jobs"))
    CreateJobForDevicesResponse.struct_class = Types::CreateJobForDevicesResponse

    CreateNodeFromTemplateJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: JobTagsList, location_name: "JobTags"))
    CreateNodeFromTemplateJobRequest.add_member(:node_description, Shapes::ShapeRef.new(shape: Description, location_name: "NodeDescription"))
    CreateNodeFromTemplateJobRequest.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "NodeName"))
    CreateNodeFromTemplateJobRequest.add_member(:output_package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "OutputPackageName"))
    CreateNodeFromTemplateJobRequest.add_member(:output_package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "OutputPackageVersion"))
    CreateNodeFromTemplateJobRequest.add_member(:template_parameters, Shapes::ShapeRef.new(shape: TemplateParametersMap, required: true, location_name: "TemplateParameters"))
    CreateNodeFromTemplateJobRequest.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    CreateNodeFromTemplateJobRequest.struct_class = Types::CreateNodeFromTemplateJobRequest

    CreateNodeFromTemplateJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CreateNodeFromTemplateJobResponse.struct_class = Types::CreateNodeFromTemplateJobResponse

    CreatePackageImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken"))
    CreatePackageImportJobRequest.add_member(:input_config, Shapes::ShapeRef.new(shape: PackageImportJobInputConfig, required: true, location_name: "InputConfig"))
    CreatePackageImportJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: JobTagsList, location_name: "JobTags"))
    CreatePackageImportJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: PackageImportJobType, required: true, location_name: "JobType"))
    CreatePackageImportJobRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: PackageImportJobOutputConfig, required: true, location_name: "OutputConfig"))
    CreatePackageImportJobRequest.struct_class = Types::CreatePackageImportJobRequest

    CreatePackageImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    CreatePackageImportJobResponse.struct_class = Types::CreatePackageImportJobResponse

    CreatePackageRequest.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    CreatePackageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreatePackageRequest.struct_class = Types::CreatePackageRequest

    CreatePackageResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NodePackageArn, location_name: "Arn"))
    CreatePackageResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, location_name: "PackageId"))
    CreatePackageResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: StorageLocation, required: true, location_name: "StorageLocation"))
    CreatePackageResponse.struct_class = Types::CreatePackageResponse

    DeleteDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "DeviceId"))
    DeleteDeviceRequest.struct_class = Types::DeleteDeviceRequest

    DeleteDeviceResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    DeleteDeviceResponse.struct_class = Types::DeleteDeviceResponse

    DeletePackageRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "ForceDelete"))
    DeletePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location: "uri", location_name: "PackageId"))
    DeletePackageRequest.struct_class = Types::DeletePackageRequest

    DeletePackageResponse.struct_class = Types::DeletePackageResponse

    DeregisterPackageVersionRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location: "querystring", location_name: "OwnerAccount"))
    DeregisterPackageVersionRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location: "uri", location_name: "PackageId"))
    DeregisterPackageVersionRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location: "uri", location_name: "PackageVersion"))
    DeregisterPackageVersionRequest.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location: "uri", location_name: "PatchVersion"))
    DeregisterPackageVersionRequest.add_member(:updated_latest_patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location: "querystring", location_name: "UpdatedLatestPatchVersion"))
    DeregisterPackageVersionRequest.struct_class = Types::DeregisterPackageVersionRequest

    DeregisterPackageVersionResponse.struct_class = Types::DeregisterPackageVersionResponse

    DescribeApplicationInstanceDetailsRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    DescribeApplicationInstanceDetailsRequest.struct_class = Types::DescribeApplicationInstanceDetailsRequest

    DescribeApplicationInstanceDetailsResponse.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceId"))
    DescribeApplicationInstanceDetailsResponse.add_member(:application_instance_id_to_replace, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceIdToReplace"))
    DescribeApplicationInstanceDetailsResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTime"))
    DescribeApplicationInstanceDetailsResponse.add_member(:default_runtime_context_device, Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: "DefaultRuntimeContextDevice"))
    DescribeApplicationInstanceDetailsResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeApplicationInstanceDetailsResponse.add_member(:manifest_overrides_payload, Shapes::ShapeRef.new(shape: ManifestOverridesPayload, location_name: "ManifestOverridesPayload"))
    DescribeApplicationInstanceDetailsResponse.add_member(:manifest_payload, Shapes::ShapeRef.new(shape: ManifestPayload, location_name: "ManifestPayload"))
    DescribeApplicationInstanceDetailsResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: "Name"))
    DescribeApplicationInstanceDetailsResponse.struct_class = Types::DescribeApplicationInstanceDetailsResponse

    DescribeApplicationInstanceRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    DescribeApplicationInstanceRequest.struct_class = Types::DescribeApplicationInstanceRequest

    DescribeApplicationInstanceResponse.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceId"))
    DescribeApplicationInstanceResponse.add_member(:application_instance_id_to_replace, Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: "ApplicationInstanceIdToReplace"))
    DescribeApplicationInstanceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationInstanceArn, location_name: "Arn"))
    DescribeApplicationInstanceResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTime"))
    DescribeApplicationInstanceResponse.add_member(:default_runtime_context_device, Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: "DefaultRuntimeContextDevice"))
    DescribeApplicationInstanceResponse.add_member(:default_runtime_context_device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DefaultRuntimeContextDeviceName"))
    DescribeApplicationInstanceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeApplicationInstanceResponse.add_member(:health_status, Shapes::ShapeRef.new(shape: ApplicationInstanceHealthStatus, location_name: "HealthStatus"))
    DescribeApplicationInstanceResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTime"))
    DescribeApplicationInstanceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: "Name"))
    DescribeApplicationInstanceResponse.add_member(:runtime_context_states, Shapes::ShapeRef.new(shape: ReportedRuntimeContextStates, location_name: "RuntimeContextStates"))
    DescribeApplicationInstanceResponse.add_member(:runtime_role_arn, Shapes::ShapeRef.new(shape: RuntimeRoleArn, location_name: "RuntimeRoleArn"))
    DescribeApplicationInstanceResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationInstanceStatus, location_name: "Status"))
    DescribeApplicationInstanceResponse.add_member(:status_description, Shapes::ShapeRef.new(shape: ApplicationInstanceStatusDescription, location_name: "StatusDescription"))
    DescribeApplicationInstanceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeApplicationInstanceResponse.struct_class = Types::DescribeApplicationInstanceResponse

    DescribeDeviceJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    DescribeDeviceJobRequest.struct_class = Types::DescribeDeviceJobRequest

    DescribeDeviceJobResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: UpdateCreatedTime, location_name: "CreatedTime"))
    DescribeDeviceJobResponse.add_member(:device_arn, Shapes::ShapeRef.new(shape: DeviceArn, location_name: "DeviceArn"))
    DescribeDeviceJobResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    DescribeDeviceJobResponse.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    DescribeDeviceJobResponse.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "DeviceType"))
    DescribeDeviceJobResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: ImageVersion, location_name: "ImageVersion"))
    DescribeDeviceJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    DescribeDeviceJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    DescribeDeviceJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: UpdateProgress, location_name: "Status"))
    DescribeDeviceJobResponse.struct_class = Types::DescribeDeviceJobResponse

    DescribeDeviceRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "DeviceId"))
    DescribeDeviceRequest.struct_class = Types::DescribeDeviceRequest

    DescribeDeviceResponse.add_member(:alternate_softwares, Shapes::ShapeRef.new(shape: AlternateSoftwares, location_name: "AlternateSoftwares"))
    DescribeDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceArn, location_name: "Arn"))
    DescribeDeviceResponse.add_member(:brand, Shapes::ShapeRef.new(shape: DeviceBrand, location_name: "Brand"))
    DescribeDeviceResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    DescribeDeviceResponse.add_member(:current_networking_status, Shapes::ShapeRef.new(shape: NetworkStatus, location_name: "CurrentNetworkingStatus"))
    DescribeDeviceResponse.add_member(:current_software, Shapes::ShapeRef.new(shape: CurrentSoftware, location_name: "CurrentSoftware"))
    DescribeDeviceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeDeviceResponse.add_member(:device_aggregated_status, Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location_name: "DeviceAggregatedStatus"))
    DescribeDeviceResponse.add_member(:device_connection_status, Shapes::ShapeRef.new(shape: DeviceConnectionStatus, location_name: "DeviceConnectionStatus"))
    DescribeDeviceResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    DescribeDeviceResponse.add_member(:latest_alternate_software, Shapes::ShapeRef.new(shape: LatestAlternateSoftware, location_name: "LatestAlternateSoftware"))
    DescribeDeviceResponse.add_member(:latest_device_job, Shapes::ShapeRef.new(shape: LatestDeviceJob, location_name: "LatestDeviceJob"))
    DescribeDeviceResponse.add_member(:latest_software, Shapes::ShapeRef.new(shape: LatestSoftware, location_name: "LatestSoftware"))
    DescribeDeviceResponse.add_member(:lease_expiration_time, Shapes::ShapeRef.new(shape: LeaseExpirationTime, location_name: "LeaseExpirationTime"))
    DescribeDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "Name"))
    DescribeDeviceResponse.add_member(:networking_configuration, Shapes::ShapeRef.new(shape: NetworkPayload, location_name: "NetworkingConfiguration"))
    DescribeDeviceResponse.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "ProvisioningStatus"))
    DescribeDeviceResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: "SerialNumber"))
    DescribeDeviceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DescribeDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "Type"))
    DescribeDeviceResponse.struct_class = Types::DescribeDeviceResponse

    DescribeNodeFromTemplateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    DescribeNodeFromTemplateJobRequest.struct_class = Types::DescribeNodeFromTemplateJobRequest

    DescribeNodeFromTemplateJobResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, required: true, location_name: "CreatedTime"))
    DescribeNodeFromTemplateJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeNodeFromTemplateJobResponse.add_member(:job_tags, Shapes::ShapeRef.new(shape: JobTagsList, location_name: "JobTags"))
    DescribeNodeFromTemplateJobResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, required: true, location_name: "LastUpdatedTime"))
    DescribeNodeFromTemplateJobResponse.add_member(:node_description, Shapes::ShapeRef.new(shape: Description, location_name: "NodeDescription"))
    DescribeNodeFromTemplateJobResponse.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "NodeName"))
    DescribeNodeFromTemplateJobResponse.add_member(:output_package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "OutputPackageName"))
    DescribeNodeFromTemplateJobResponse.add_member(:output_package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "OutputPackageVersion"))
    DescribeNodeFromTemplateJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatus, required: true, location_name: "Status"))
    DescribeNodeFromTemplateJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatusMessage, required: true, location_name: "StatusMessage"))
    DescribeNodeFromTemplateJobResponse.add_member(:template_parameters, Shapes::ShapeRef.new(shape: TemplateParametersMap, required: true, location_name: "TemplateParameters"))
    DescribeNodeFromTemplateJobResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, required: true, location_name: "TemplateType"))
    DescribeNodeFromTemplateJobResponse.struct_class = Types::DescribeNodeFromTemplateJobResponse

    DescribeNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, required: true, location: "uri", location_name: "NodeId"))
    DescribeNodeRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location: "querystring", location_name: "OwnerAccount"))
    DescribeNodeRequest.struct_class = Types::DescribeNodeRequest

    DescribeNodeResponse.add_member(:asset_name, Shapes::ShapeRef.new(shape: NodeAssetName, location_name: "AssetName"))
    DescribeNodeResponse.add_member(:category, Shapes::ShapeRef.new(shape: NodeCategory, required: true, location_name: "Category"))
    DescribeNodeResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "CreatedTime"))
    DescribeNodeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    DescribeNodeResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "LastUpdatedTime"))
    DescribeNodeResponse.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    DescribeNodeResponse.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, required: true, location_name: "NodeId"))
    DescribeNodeResponse.add_member(:node_interface, Shapes::ShapeRef.new(shape: NodeInterface, required: true, location_name: "NodeInterface"))
    DescribeNodeResponse.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, required: true, location_name: "OwnerAccount"))
    DescribeNodeResponse.add_member(:package_arn, Shapes::ShapeRef.new(shape: NodePackageArn, location_name: "PackageArn"))
    DescribeNodeResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location_name: "PackageId"))
    DescribeNodeResponse.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    DescribeNodeResponse.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    DescribeNodeResponse.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location_name: "PatchVersion"))
    DescribeNodeResponse.struct_class = Types::DescribeNodeResponse

    DescribePackageImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    DescribePackageImportJobRequest.struct_class = Types::DescribePackageImportJobRequest

    DescribePackageImportJobResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    DescribePackageImportJobResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, required: true, location_name: "CreatedTime"))
    DescribePackageImportJobResponse.add_member(:input_config, Shapes::ShapeRef.new(shape: PackageImportJobInputConfig, required: true, location_name: "InputConfig"))
    DescribePackageImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribePackageImportJobResponse.add_member(:job_tags, Shapes::ShapeRef.new(shape: JobTagsList, location_name: "JobTags"))
    DescribePackageImportJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: PackageImportJobType, required: true, location_name: "JobType"))
    DescribePackageImportJobResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, required: true, location_name: "LastUpdatedTime"))
    DescribePackageImportJobResponse.add_member(:output, Shapes::ShapeRef.new(shape: PackageImportJobOutput, required: true, location_name: "Output"))
    DescribePackageImportJobResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: PackageImportJobOutputConfig, required: true, location_name: "OutputConfig"))
    DescribePackageImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: PackageImportJobStatus, required: true, location_name: "Status"))
    DescribePackageImportJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: PackageImportJobStatusMessage, required: true, location_name: "StatusMessage"))
    DescribePackageImportJobResponse.struct_class = Types::DescribePackageImportJobResponse

    DescribePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location: "uri", location_name: "PackageId"))
    DescribePackageRequest.struct_class = Types::DescribePackageRequest

    DescribePackageResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NodePackageArn, required: true, location_name: "Arn"))
    DescribePackageResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "CreatedTime"))
    DescribePackageResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location_name: "PackageId"))
    DescribePackageResponse.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    DescribePackageResponse.add_member(:read_access_principal_arns, Shapes::ShapeRef.new(shape: PrincipalArnsList, location_name: "ReadAccessPrincipalArns"))
    DescribePackageResponse.add_member(:storage_location, Shapes::ShapeRef.new(shape: StorageLocation, required: true, location_name: "StorageLocation"))
    DescribePackageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    DescribePackageResponse.add_member(:write_access_principal_arns, Shapes::ShapeRef.new(shape: PrincipalArnsList, location_name: "WriteAccessPrincipalArns"))
    DescribePackageResponse.struct_class = Types::DescribePackageResponse

    DescribePackageVersionRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location: "querystring", location_name: "OwnerAccount"))
    DescribePackageVersionRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location: "uri", location_name: "PackageId"))
    DescribePackageVersionRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location: "uri", location_name: "PackageVersion"))
    DescribePackageVersionRequest.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location: "querystring", location_name: "PatchVersion"))
    DescribePackageVersionRequest.struct_class = Types::DescribePackageVersionRequest

    DescribePackageVersionResponse.add_member(:is_latest_patch, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "IsLatestPatch"))
    DescribePackageVersionResponse.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: "OwnerAccount"))
    DescribePackageVersionResponse.add_member(:package_arn, Shapes::ShapeRef.new(shape: NodePackageArn, location_name: "PackageArn"))
    DescribePackageVersionResponse.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location_name: "PackageId"))
    DescribePackageVersionResponse.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    DescribePackageVersionResponse.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    DescribePackageVersionResponse.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location_name: "PatchVersion"))
    DescribePackageVersionResponse.add_member(:registered_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "RegisteredTime"))
    DescribePackageVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, required: true, location_name: "Status"))
    DescribePackageVersionResponse.add_member(:status_description, Shapes::ShapeRef.new(shape: PackageVersionStatusDescription, location_name: "StatusDescription"))
    DescribePackageVersionResponse.struct_class = Types::DescribePackageVersionResponse

    Device.add_member(:brand, Shapes::ShapeRef.new(shape: DeviceBrand, location_name: "Brand"))
    Device.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    Device.add_member(:current_software, Shapes::ShapeRef.new(shape: CurrentSoftware, location_name: "CurrentSoftware"))
    Device.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Device.add_member(:device_aggregated_status, Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location_name: "DeviceAggregatedStatus"))
    Device.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    Device.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    Device.add_member(:latest_device_job, Shapes::ShapeRef.new(shape: LatestDeviceJob, location_name: "LatestDeviceJob"))
    Device.add_member(:lease_expiration_time, Shapes::ShapeRef.new(shape: LeaseExpirationTime, location_name: "LeaseExpirationTime"))
    Device.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "Name"))
    Device.add_member(:provisioning_status, Shapes::ShapeRef.new(shape: DeviceStatus, location_name: "ProvisioningStatus"))
    Device.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Device.add_member(:type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "Type"))
    Device.struct_class = Types::Device

    DeviceIdList.member = Shapes::ShapeRef.new(shape: DeviceId)

    DeviceJob.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    DeviceJob.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    DeviceJob.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    DeviceJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    DeviceJob.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    DeviceJob.struct_class = Types::DeviceJob

    DeviceJobConfig.add_member(:ota_job_config, Shapes::ShapeRef.new(shape: OTAJobConfig, location_name: "OTAJobConfig"))
    DeviceJobConfig.struct_class = Types::DeviceJobConfig

    DeviceJobList.member = Shapes::ShapeRef.new(shape: DeviceJob)

    DeviceList.member = Shapes::ShapeRef.new(shape: Device)

    DnsList.member = Shapes::ShapeRef.new(shape: Dns)

    EthernetPayload.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    EthernetPayload.add_member(:static_ip_connection_info, Shapes::ShapeRef.new(shape: StaticIpConnectionInfo, location_name: "StaticIpConnectionInfo"))
    EthernetPayload.struct_class = Types::EthernetPayload

    EthernetStatus.add_member(:connection_status, Shapes::ShapeRef.new(shape: NetworkConnectionStatus, location_name: "ConnectionStatus"))
    EthernetStatus.add_member(:hw_address, Shapes::ShapeRef.new(shape: HwAddress, location_name: "HwAddress"))
    EthernetStatus.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    EthernetStatus.struct_class = Types::EthernetStatus

    InputPortList.member = Shapes::ShapeRef.new(shape: NodeInputPort)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    Job.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    Job.struct_class = Types::Job

    JobList.member = Shapes::ShapeRef.new(shape: Job)

    JobResourceTags.add_member(:resource_type, Shapes::ShapeRef.new(shape: JobResourceType, required: true, location_name: "ResourceType"))
    JobResourceTags.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    JobResourceTags.struct_class = Types::JobResourceTags

    JobTagsList.member = Shapes::ShapeRef.new(shape: JobResourceTags)

    LatestDeviceJob.add_member(:image_version, Shapes::ShapeRef.new(shape: ImageVersion, location_name: "ImageVersion"))
    LatestDeviceJob.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "JobType"))
    LatestDeviceJob.add_member(:status, Shapes::ShapeRef.new(shape: UpdateProgress, location_name: "Status"))
    LatestDeviceJob.struct_class = Types::LatestDeviceJob

    ListApplicationInstanceDependenciesRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    ListApplicationInstanceDependenciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "maxResults"))
    ListApplicationInstanceDependenciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationInstanceDependenciesRequest.struct_class = Types::ListApplicationInstanceDependenciesRequest

    ListApplicationInstanceDependenciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationInstanceDependenciesResponse.add_member(:package_objects, Shapes::ShapeRef.new(shape: PackageObjects, location_name: "PackageObjects"))
    ListApplicationInstanceDependenciesResponse.struct_class = Types::ListApplicationInstanceDependenciesResponse

    ListApplicationInstanceNodeInstancesRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    ListApplicationInstanceNodeInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "maxResults"))
    ListApplicationInstanceNodeInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationInstanceNodeInstancesRequest.struct_class = Types::ListApplicationInstanceNodeInstancesRequest

    ListApplicationInstanceNodeInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationInstanceNodeInstancesResponse.add_member(:node_instances, Shapes::ShapeRef.new(shape: NodeInstances, location_name: "NodeInstances"))
    ListApplicationInstanceNodeInstancesResponse.struct_class = Types::ListApplicationInstanceNodeInstancesResponse

    ListApplicationInstancesRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location: "querystring", location_name: "deviceId"))
    ListApplicationInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "maxResults"))
    ListApplicationInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationInstancesRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: StatusFilter, location: "querystring", location_name: "statusFilter"))
    ListApplicationInstancesRequest.struct_class = Types::ListApplicationInstancesRequest

    ListApplicationInstancesResponse.add_member(:application_instances, Shapes::ShapeRef.new(shape: ApplicationInstances, location_name: "ApplicationInstances"))
    ListApplicationInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationInstancesResponse.struct_class = Types::ListApplicationInstancesResponse

    ListDevicesJobsRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location: "querystring", location_name: "DeviceId"))
    ListDevicesJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "MaxResults"))
    ListDevicesJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDevicesJobsRequest.struct_class = Types::ListDevicesJobsRequest

    ListDevicesJobsResponse.add_member(:device_jobs, Shapes::ShapeRef.new(shape: DeviceJobList, location_name: "DeviceJobs"))
    ListDevicesJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesJobsResponse.struct_class = Types::ListDevicesJobsResponse

    ListDevicesRequest.add_member(:device_aggregated_status_filter, Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location: "querystring", location_name: "DeviceAggregatedStatusFilter"))
    ListDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "MaxResults"))
    ListDevicesRequest.add_member(:name_filter, Shapes::ShapeRef.new(shape: NameFilter, location: "querystring", location_name: "NameFilter"))
    ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDevicesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListDevicesSortBy, location: "querystring", location_name: "SortBy"))
    ListDevicesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "SortOrder"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceList, required: true, location_name: "Devices"))
    ListDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    ListNodeFromTemplateJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "MaxResults"))
    ListNodeFromTemplateJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListNodeFromTemplateJobsRequest.struct_class = Types::ListNodeFromTemplateJobsRequest

    ListNodeFromTemplateJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNodeFromTemplateJobsResponse.add_member(:node_from_template_jobs, Shapes::ShapeRef.new(shape: NodeFromTemplateJobList, required: true, location_name: "NodeFromTemplateJobs"))
    ListNodeFromTemplateJobsResponse.struct_class = Types::ListNodeFromTemplateJobsResponse

    ListNodesRequest.add_member(:category, Shapes::ShapeRef.new(shape: NodeCategory, location: "querystring", location_name: "category"))
    ListNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "maxResults"))
    ListNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListNodesRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location: "querystring", location_name: "ownerAccount"))
    ListNodesRequest.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, location: "querystring", location_name: "packageName"))
    ListNodesRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, location: "querystring", location_name: "packageVersion"))
    ListNodesRequest.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location: "querystring", location_name: "patchVersion"))
    ListNodesRequest.struct_class = Types::ListNodesRequest

    ListNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListNodesResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: NodesList, location_name: "Nodes"))
    ListNodesResponse.struct_class = Types::ListNodesResponse

    ListPackageImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "MaxResults"))
    ListPackageImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListPackageImportJobsRequest.struct_class = Types::ListPackageImportJobsRequest

    ListPackageImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPackageImportJobsResponse.add_member(:package_import_jobs, Shapes::ShapeRef.new(shape: PackageImportJobList, required: true, location_name: "PackageImportJobs"))
    ListPackageImportJobsResponse.struct_class = Types::ListPackageImportJobsResponse

    ListPackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize25, location: "querystring", location_name: "maxResults"))
    ListPackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListPackagesRequest.struct_class = Types::ListPackagesRequest

    ListPackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPackagesResponse.add_member(:packages, Shapes::ShapeRef.new(shape: PackageList, location_name: "Packages"))
    ListPackagesResponse.struct_class = Types::ListPackagesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManifestOverridesPayload.add_member(:payload_data, Shapes::ShapeRef.new(shape: ManifestOverridesPayloadData, location_name: "PayloadData"))
    ManifestOverridesPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ManifestOverridesPayload.add_member_subclass(:payload_data, Types::ManifestOverridesPayload::PayloadData)
    ManifestOverridesPayload.add_member_subclass(:unknown, Types::ManifestOverridesPayload::Unknown)
    ManifestOverridesPayload.struct_class = Types::ManifestOverridesPayload

    ManifestPayload.add_member(:payload_data, Shapes::ShapeRef.new(shape: ManifestPayloadData, location_name: "PayloadData"))
    ManifestPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ManifestPayload.add_member_subclass(:payload_data, Types::ManifestPayload::PayloadData)
    ManifestPayload.add_member_subclass(:unknown, Types::ManifestPayload::Unknown)
    ManifestPayload.struct_class = Types::ManifestPayload

    NetworkPayload.add_member(:ethernet_0, Shapes::ShapeRef.new(shape: EthernetPayload, location_name: "Ethernet0"))
    NetworkPayload.add_member(:ethernet_1, Shapes::ShapeRef.new(shape: EthernetPayload, location_name: "Ethernet1"))
    NetworkPayload.add_member(:ntp, Shapes::ShapeRef.new(shape: NtpPayload, location_name: "Ntp"))
    NetworkPayload.struct_class = Types::NetworkPayload

    NetworkStatus.add_member(:ethernet_0_status, Shapes::ShapeRef.new(shape: EthernetStatus, location_name: "Ethernet0Status"))
    NetworkStatus.add_member(:ethernet_1_status, Shapes::ShapeRef.new(shape: EthernetStatus, location_name: "Ethernet1Status"))
    NetworkStatus.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    NetworkStatus.add_member(:ntp_status, Shapes::ShapeRef.new(shape: NtpStatus, location_name: "NtpStatus"))
    NetworkStatus.struct_class = Types::NetworkStatus

    Node.add_member(:category, Shapes::ShapeRef.new(shape: NodeCategory, required: true, location_name: "Category"))
    Node.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "CreatedTime"))
    Node.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Node.add_member(:name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "Name"))
    Node.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, required: true, location_name: "NodeId"))
    Node.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: "OwnerAccount"))
    Node.add_member(:package_arn, Shapes::ShapeRef.new(shape: NodePackageArn, location_name: "PackageArn"))
    Node.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location_name: "PackageId"))
    Node.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    Node.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    Node.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location_name: "PatchVersion"))
    Node.struct_class = Types::Node

    NodeFromTemplateJob.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    NodeFromTemplateJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    NodeFromTemplateJob.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, location_name: "NodeName"))
    NodeFromTemplateJob.add_member(:status, Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatus, location_name: "Status"))
    NodeFromTemplateJob.add_member(:status_message, Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatusMessage, location_name: "StatusMessage"))
    NodeFromTemplateJob.add_member(:template_type, Shapes::ShapeRef.new(shape: TemplateType, location_name: "TemplateType"))
    NodeFromTemplateJob.struct_class = Types::NodeFromTemplateJob

    NodeFromTemplateJobList.member = Shapes::ShapeRef.new(shape: NodeFromTemplateJob)

    NodeInputPort.add_member(:default_value, Shapes::ShapeRef.new(shape: PortDefaultValue, location_name: "DefaultValue"))
    NodeInputPort.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    NodeInputPort.add_member(:max_connections, Shapes::ShapeRef.new(shape: MaxConnections, location_name: "MaxConnections"))
    NodeInputPort.add_member(:name, Shapes::ShapeRef.new(shape: PortName, location_name: "Name"))
    NodeInputPort.add_member(:type, Shapes::ShapeRef.new(shape: PortType, location_name: "Type"))
    NodeInputPort.struct_class = Types::NodeInputPort

    NodeInstance.add_member(:current_status, Shapes::ShapeRef.new(shape: NodeInstanceStatus, required: true, location_name: "CurrentStatus"))
    NodeInstance.add_member(:node_id, Shapes::ShapeRef.new(shape: NodeId, location_name: "NodeId"))
    NodeInstance.add_member(:node_instance_id, Shapes::ShapeRef.new(shape: NodeInstanceId, required: true, location_name: "NodeInstanceId"))
    NodeInstance.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, location_name: "NodeName"))
    NodeInstance.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, location_name: "PackageName"))
    NodeInstance.add_member(:package_patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: "PackagePatchVersion"))
    NodeInstance.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: "PackageVersion"))
    NodeInstance.struct_class = Types::NodeInstance

    NodeInstances.member = Shapes::ShapeRef.new(shape: NodeInstance)

    NodeInterface.add_member(:inputs, Shapes::ShapeRef.new(shape: InputPortList, required: true, location_name: "Inputs"))
    NodeInterface.add_member(:outputs, Shapes::ShapeRef.new(shape: OutputPortList, required: true, location_name: "Outputs"))
    NodeInterface.struct_class = Types::NodeInterface

    NodeOutputPort.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    NodeOutputPort.add_member(:name, Shapes::ShapeRef.new(shape: PortName, location_name: "Name"))
    NodeOutputPort.add_member(:type, Shapes::ShapeRef.new(shape: PortType, location_name: "Type"))
    NodeOutputPort.struct_class = Types::NodeOutputPort

    NodeSignal.add_member(:node_instance_id, Shapes::ShapeRef.new(shape: NodeInstanceId, required: true, location_name: "NodeInstanceId"))
    NodeSignal.add_member(:signal, Shapes::ShapeRef.new(shape: NodeSignalValue, required: true, location_name: "Signal"))
    NodeSignal.struct_class = Types::NodeSignal

    NodeSignalList.member = Shapes::ShapeRef.new(shape: NodeSignal)

    NodesList.member = Shapes::ShapeRef.new(shape: Node)

    NtpPayload.add_member(:ntp_servers, Shapes::ShapeRef.new(shape: NtpServerList, required: true, location_name: "NtpServers"))
    NtpPayload.struct_class = Types::NtpPayload

    NtpServerList.member = Shapes::ShapeRef.new(shape: IpAddressOrServerName)

    NtpStatus.add_member(:connection_status, Shapes::ShapeRef.new(shape: NetworkConnectionStatus, location_name: "ConnectionStatus"))
    NtpStatus.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    NtpStatus.add_member(:ntp_server_name, Shapes::ShapeRef.new(shape: NtpServerName, location_name: "NtpServerName"))
    NtpStatus.struct_class = Types::NtpStatus

    OTAJobConfig.add_member(:allow_major_version_update, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpdate"))
    OTAJobConfig.add_member(:image_version, Shapes::ShapeRef.new(shape: ImageVersion, required: true, location_name: "ImageVersion"))
    OTAJobConfig.struct_class = Types::OTAJobConfig

    OutPutS3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    OutPutS3Location.add_member(:object_key, Shapes::ShapeRef.new(shape: ObjectKey, required: true, location_name: "ObjectKey"))
    OutPutS3Location.struct_class = Types::OutPutS3Location

    OutputPortList.member = Shapes::ShapeRef.new(shape: NodeOutputPort)

    PackageImportJob.add_member(:created_time, Shapes::ShapeRef.new(shape: CreatedTime, location_name: "CreatedTime"))
    PackageImportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    PackageImportJob.add_member(:job_type, Shapes::ShapeRef.new(shape: PackageImportJobType, location_name: "JobType"))
    PackageImportJob.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: "LastUpdatedTime"))
    PackageImportJob.add_member(:status, Shapes::ShapeRef.new(shape: PackageImportJobStatus, location_name: "Status"))
    PackageImportJob.add_member(:status_message, Shapes::ShapeRef.new(shape: PackageImportJobStatusMessage, location_name: "StatusMessage"))
    PackageImportJob.struct_class = Types::PackageImportJob

    PackageImportJobInputConfig.add_member(:package_version_input_config, Shapes::ShapeRef.new(shape: PackageVersionInputConfig, location_name: "PackageVersionInputConfig"))
    PackageImportJobInputConfig.struct_class = Types::PackageImportJobInputConfig

    PackageImportJobList.member = Shapes::ShapeRef.new(shape: PackageImportJob)

    PackageImportJobOutput.add_member(:output_s3_location, Shapes::ShapeRef.new(shape: OutPutS3Location, required: true, location_name: "OutputS3Location"))
    PackageImportJobOutput.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location_name: "PackageId"))
    PackageImportJobOutput.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    PackageImportJobOutput.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location_name: "PatchVersion"))
    PackageImportJobOutput.struct_class = Types::PackageImportJobOutput

    PackageImportJobOutputConfig.add_member(:package_version_output_config, Shapes::ShapeRef.new(shape: PackageVersionOutputConfig, location_name: "PackageVersionOutputConfig"))
    PackageImportJobOutputConfig.struct_class = Types::PackageImportJobOutputConfig

    PackageList.member = Shapes::ShapeRef.new(shape: PackageListItem)

    PackageListItem.add_member(:arn, Shapes::ShapeRef.new(shape: NodePackageArn, location_name: "Arn"))
    PackageListItem.add_member(:created_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTime"))
    PackageListItem.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, location_name: "PackageId"))
    PackageListItem.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, location_name: "PackageName"))
    PackageListItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PackageListItem.struct_class = Types::PackageListItem

    PackageObject.add_member(:name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "Name"))
    PackageObject.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    PackageObject.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location_name: "PatchVersion"))
    PackageObject.struct_class = Types::PackageObject

    PackageObjects.member = Shapes::ShapeRef.new(shape: PackageObject)

    PackageVersionInputConfig.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "S3Location"))
    PackageVersionInputConfig.struct_class = Types::PackageVersionInputConfig

    PackageVersionOutputConfig.add_member(:mark_latest, Shapes::ShapeRef.new(shape: MarkLatestPatch, location_name: "MarkLatest"))
    PackageVersionOutputConfig.add_member(:package_name, Shapes::ShapeRef.new(shape: NodePackageName, required: true, location_name: "PackageName"))
    PackageVersionOutputConfig.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location_name: "PackageVersion"))
    PackageVersionOutputConfig.struct_class = Types::PackageVersionOutputConfig

    PrincipalArnsList.member = Shapes::ShapeRef.new(shape: PrincipalArn)

    ProvisionDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ProvisionDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeviceName, required: true, location_name: "Name"))
    ProvisionDeviceRequest.add_member(:networking_configuration, Shapes::ShapeRef.new(shape: NetworkPayload, location_name: "NetworkingConfiguration"))
    ProvisionDeviceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ProvisionDeviceRequest.struct_class = Types::ProvisionDeviceRequest

    ProvisionDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceArn, required: true, location_name: "Arn"))
    ProvisionDeviceResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "Certificates"))
    ProvisionDeviceResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    ProvisionDeviceResponse.add_member(:iot_thing_name, Shapes::ShapeRef.new(shape: IotThingName, location_name: "IotThingName"))
    ProvisionDeviceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeviceStatus, required: true, location_name: "Status"))
    ProvisionDeviceResponse.struct_class = Types::ProvisionDeviceResponse

    RegisterPackageVersionRequest.add_member(:mark_latest, Shapes::ShapeRef.new(shape: MarkLatestPatch, location_name: "MarkLatest"))
    RegisterPackageVersionRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: "OwnerAccount"))
    RegisterPackageVersionRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: NodePackageId, required: true, location: "uri", location_name: "PackageId"))
    RegisterPackageVersionRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: NodePackageVersion, required: true, location: "uri", location_name: "PackageVersion"))
    RegisterPackageVersionRequest.add_member(:patch_version, Shapes::ShapeRef.new(shape: NodePackagePatchVersion, required: true, location: "uri", location_name: "PatchVersion"))
    RegisterPackageVersionRequest.struct_class = Types::RegisterPackageVersionRequest

    RegisterPackageVersionResponse.struct_class = Types::RegisterPackageVersionResponse

    RemoveApplicationInstanceRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    RemoveApplicationInstanceRequest.struct_class = Types::RemoveApplicationInstanceRequest

    RemoveApplicationInstanceResponse.struct_class = Types::RemoveApplicationInstanceResponse

    ReportedRuntimeContextState.add_member(:desired_state, Shapes::ShapeRef.new(shape: DesiredState, required: true, location_name: "DesiredState"))
    ReportedRuntimeContextState.add_member(:device_reported_status, Shapes::ShapeRef.new(shape: DeviceReportedStatus, required: true, location_name: "DeviceReportedStatus"))
    ReportedRuntimeContextState.add_member(:device_reported_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "DeviceReportedTime"))
    ReportedRuntimeContextState.add_member(:runtime_context_name, Shapes::ShapeRef.new(shape: RuntimeContextName, required: true, location_name: "RuntimeContextName"))
    ReportedRuntimeContextState.struct_class = Types::ReportedRuntimeContextState

    ReportedRuntimeContextStates.member = Shapes::ShapeRef.new(shape: ReportedRuntimeContextState)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3Location.add_member(:object_key, Shapes::ShapeRef.new(shape: ObjectKey, required: true, location_name: "ObjectKey"))
    S3Location.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    S3Location.struct_class = Types::S3Location

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SignalApplicationInstanceNodeInstancesRequest.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location: "uri", location_name: "ApplicationInstanceId"))
    SignalApplicationInstanceNodeInstancesRequest.add_member(:node_signals, Shapes::ShapeRef.new(shape: NodeSignalList, required: true, location_name: "NodeSignals"))
    SignalApplicationInstanceNodeInstancesRequest.struct_class = Types::SignalApplicationInstanceNodeInstancesRequest

    SignalApplicationInstanceNodeInstancesResponse.add_member(:application_instance_id, Shapes::ShapeRef.new(shape: ApplicationInstanceId, required: true, location_name: "ApplicationInstanceId"))
    SignalApplicationInstanceNodeInstancesResponse.struct_class = Types::SignalApplicationInstanceNodeInstancesResponse

    StaticIpConnectionInfo.add_member(:default_gateway, Shapes::ShapeRef.new(shape: DefaultGateway, required: true, location_name: "DefaultGateway"))
    StaticIpConnectionInfo.add_member(:dns, Shapes::ShapeRef.new(shape: DnsList, required: true, location_name: "Dns"))
    StaticIpConnectionInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, required: true, location_name: "IpAddress"))
    StaticIpConnectionInfo.add_member(:mask, Shapes::ShapeRef.new(shape: Mask, required: true, location_name: "Mask"))
    StaticIpConnectionInfo.struct_class = Types::StaticIpConnectionInfo

    StorageLocation.add_member(:binary_prefix_location, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "BinaryPrefixLocation"))
    StorageLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, required: true, location_name: "Bucket"))
    StorageLocation.add_member(:generated_prefix_location, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "GeneratedPrefixLocation"))
    StorageLocation.add_member(:manifest_prefix_location, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "ManifestPrefixLocation"))
    StorageLocation.add_member(:repo_prefix_location, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "RepoPrefixLocation"))
    StorageLocation.struct_class = Types::StorageLocation

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TemplateParametersMap.key = Shapes::ShapeRef.new(shape: TemplateKey)
    TemplateParametersMap.value = Shapes::ShapeRef.new(shape: TemplateValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDeviceMetadataRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDeviceMetadataRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location: "uri", location_name: "DeviceId"))
    UpdateDeviceMetadataRequest.struct_class = Types::UpdateDeviceMetadataRequest

    UpdateDeviceMetadataResponse.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, location_name: "DeviceId"))
    UpdateDeviceMetadataResponse.struct_class = Types::UpdateDeviceMetadataResponse

    ValidationException.add_member(:error_arguments, Shapes::ShapeRef.new(shape: ValidationExceptionErrorArgumentList, location_name: "ErrorArguments"))
    ValidationException.add_member(:error_id, Shapes::ShapeRef.new(shape: String, location_name: "ErrorId"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionErrorArgument.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionErrorArgument.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ValidationExceptionErrorArgument.struct_class = Types::ValidationExceptionErrorArgument

    ValidationExceptionErrorArgumentList.member = Shapes::ShapeRef.new(shape: ValidationExceptionErrorArgument)

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-24"

      api.metadata = {
        "apiVersion" => "2019-07-24",
        "endpointPrefix" => "panorama",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Panorama",
        "serviceFullName" => "AWS Panorama",
        "serviceId" => "Panorama",
        "signatureVersion" => "v4",
        "signingName" => "panorama",
        "uid" => "panorama-2019-07-24",
      }

      api.add_operation(:create_application_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplicationInstance"
        o.http_method = "POST"
        o.http_request_uri = "/application-instances"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_job_for_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJobForDevices"
        o.http_method = "POST"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateJobForDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobForDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_node_from_template_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNodeFromTemplateJob"
        o.http_method = "POST"
        o.http_request_uri = "/packages/template-job"
        o.input = Shapes::ShapeRef.new(shape: CreateNodeFromTemplateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNodeFromTemplateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/packages"
        o.input = Shapes::ShapeRef.new(shape: CreatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_package_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackageImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/packages/import-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreatePackageImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackageImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevice"
        o.http_method = "DELETE"
        o.http_request_uri = "/devices/{DeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/packages/{PackageId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_package_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterPackageVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterPackageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterPackageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_application_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationInstance"
        o.http_method = "GET"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_application_instance_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationInstanceDetails"
        o.http_method = "GET"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}/details"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationInstanceDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationInstanceDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevice"
        o.http_method = "GET"
        o.http_request_uri = "/devices/{DeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_device_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeviceJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNode"
        o.http_method = "GET"
        o.http_request_uri = "/nodes/{NodeId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_node_from_template_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNodeFromTemplateJob"
        o.http_method = "GET"
        o.http_request_uri = "/packages/template-job/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodeFromTemplateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNodeFromTemplateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackage"
        o.http_method = "GET"
        o.http_request_uri = "/packages/metadata/{PackageId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_package_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackageImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/packages/import-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePackageImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackageImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_package_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackageVersion"
        o.http_method = "GET"
        o.http_request_uri = "/packages/metadata/{PackageId}/versions/{PackageVersion}"
        o.input = Shapes::ShapeRef.new(shape: DescribePackageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_application_instance_dependencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationInstanceDependencies"
        o.http_method = "GET"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}/package-dependencies"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationInstanceDependenciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationInstanceDependenciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_instance_node_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationInstanceNodeInstances"
        o.http_method = "GET"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}/node-instances"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationInstanceNodeInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationInstanceNodeInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_application_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationInstances"
        o.http_method = "GET"
        o.http_request_uri = "/application-instances"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "GET"
        o.http_request_uri = "/devices"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevicesJobs"
        o.http_method = "GET"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_node_from_template_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodeFromTemplateJobs"
        o.http_method = "GET"
        o.http_request_uri = "/packages/template-job"
        o.input = Shapes::ShapeRef.new(shape: ListNodeFromTemplateJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodeFromTemplateJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodes"
        o.http_method = "GET"
        o.http_request_uri = "/nodes"
        o.input = Shapes::ShapeRef.new(shape: ListNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_package_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackageImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/packages/import-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListPackageImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackageImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackages"
        o.http_method = "GET"
        o.http_request_uri = "/packages"
        o.input = Shapes::ShapeRef.new(shape: ListPackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:provision_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionDevice"
        o.http_method = "POST"
        o.http_request_uri = "/devices"
        o.input = Shapes::ShapeRef.new(shape: ProvisionDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvisionDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:register_package_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterPackageVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}"
        o.input = Shapes::ShapeRef.new(shape: RegisterPackageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterPackageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:remove_application_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveApplicationInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}"
        o.input = Shapes::ShapeRef.new(shape: RemoveApplicationInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveApplicationInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:signal_application_instance_node_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignalApplicationInstanceNodeInstances"
        o.http_method = "PUT"
        o.http_request_uri = "/application-instances/{ApplicationInstanceId}/node-signals"
        o.input = Shapes::ShapeRef.new(shape: SignalApplicationInstanceNodeInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: SignalApplicationInstanceNodeInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_device_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeviceMetadata"
        o.http_method = "PUT"
        o.http_request_uri = "/devices/{DeviceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
