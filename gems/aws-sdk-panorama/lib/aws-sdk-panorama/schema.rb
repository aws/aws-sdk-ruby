# frozen_string_literal: true

# This is generated code!

module Aws::Panorama
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlternateSoftwareMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#AlternateSoftwareMetadata", name: "AlternateSoftwareMetadata")
    AlternateSoftwares = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#AlternateSoftwares", name: "AlternateSoftwares")
    ApplicationInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ApplicationInstance", name: "ApplicationInstance")
    ApplicationInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceArn", name: "ApplicationInstanceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ApplicationInstanceHealthStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceHealthStatus", name: "ApplicationInstanceHealthStatus", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}]})
    ApplicationInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceId", name: "ApplicationInstanceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ApplicationInstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceName", name: "ApplicationInstanceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ApplicationInstanceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceStatus", name: "ApplicationInstanceStatus", traits: {"smithy.api#enum" => [{"value" => "DEPLOYMENT_PENDING", "name" => "DEPLOYMENT_PENDING"}, {"value" => "DEPLOYMENT_REQUESTED", "name" => "DEPLOYMENT_REQUESTED"}, {"value" => "DEPLOYMENT_IN_PROGRESS", "name" => "DEPLOYMENT_IN_PROGRESS"}, {"value" => "DEPLOYMENT_ERROR", "name" => "DEPLOYMENT_ERROR"}, {"value" => "DEPLOYMENT_SUCCEEDED", "name" => "DEPLOYMENT_SUCCEEDED"}, {"value" => "REMOVAL_PENDING", "name" => "REMOVAL_PENDING"}, {"value" => "REMOVAL_REQUESTED", "name" => "REMOVAL_REQUESTED"}, {"value" => "REMOVAL_IN_PROGRESS", "name" => "REMOVAL_IN_PROGRESS"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "REMOVAL_SUCCEEDED", "name" => "REMOVAL_SUCCEEDED"}, {"value" => "DEPLOYMENT_FAILED", "name" => "DEPLOYMENT_FAILED"}]})
    ApplicationInstanceStatusDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ApplicationInstanceStatusDescription", name: "ApplicationInstanceStatusDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ApplicationInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#ApplicationInstances", name: "ApplicationInstances")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.panorama#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Bucket", name: "Bucket")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    Certificates = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.panorama#Certificates", name: "Certificates")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionErrorArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ConflictExceptionErrorArgument", name: "ConflictExceptionErrorArgument")
    ConflictExceptionErrorArgumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#ConflictExceptionErrorArgumentList", name: "ConflictExceptionErrorArgumentList")
    ConnectionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ConnectionType", name: "ConnectionType", traits: {"smithy.api#enum" => [{"value" => "STATIC_IP", "name" => "STATIC_IP"}, {"value" => "DHCP", "name" => "DHCP"}]})
    CreateApplicationInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateApplicationInstanceInput", name: "CreateApplicationInstanceInput")
    CreateApplicationInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateApplicationInstanceOutput", name: "CreateApplicationInstanceOutput")
    CreateJobForDevicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateJobForDevicesInput", name: "CreateJobForDevicesInput")
    CreateJobForDevicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateJobForDevicesOutput", name: "CreateJobForDevicesOutput")
    CreateNodeFromTemplateJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateNodeFromTemplateJobInput", name: "CreateNodeFromTemplateJobInput")
    CreateNodeFromTemplateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreateNodeFromTemplateJobOutput", name: "CreateNodeFromTemplateJobOutput")
    CreatePackageImportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreatePackageImportJobInput", name: "CreatePackageImportJobInput")
    CreatePackageImportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreatePackageImportJobOutput", name: "CreatePackageImportJobOutput")
    CreatePackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreatePackageInput", name: "CreatePackageInput")
    CreatePackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#CreatePackageOutput", name: "CreatePackageOutput")
    CreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.panorama#CreatedTime", name: "CreatedTime")
    CurrentSoftware = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#CurrentSoftware", name: "CurrentSoftware", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DefaultGateway = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DefaultGateway", name: "DefaultGateway", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    DefaultRuntimeContextDevice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DefaultRuntimeContextDevice", name: "DefaultRuntimeContextDevice", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeleteDeviceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeleteDeviceInput", name: "DeleteDeviceInput")
    DeleteDeviceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeleteDeviceOutput", name: "DeleteDeviceOutput")
    DeletePackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeletePackageInput", name: "DeletePackageInput")
    DeletePackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeletePackageOutput", name: "DeletePackageOutput")
    DeregisterPackageVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeregisterPackageVersionInput", name: "DeregisterPackageVersionInput")
    DeregisterPackageVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeregisterPackageVersionOutput", name: "DeregisterPackageVersionOutput")
    DescribeApplicationInstanceDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeApplicationInstanceDetailsInput", name: "DescribeApplicationInstanceDetailsInput")
    DescribeApplicationInstanceDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeApplicationInstanceDetailsOutput", name: "DescribeApplicationInstanceDetailsOutput")
    DescribeApplicationInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeApplicationInstanceInput", name: "DescribeApplicationInstanceInput")
    DescribeApplicationInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeApplicationInstanceOutput", name: "DescribeApplicationInstanceOutput")
    DescribeDeviceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeDeviceInput", name: "DescribeDeviceInput")
    DescribeDeviceJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeDeviceJobInput", name: "DescribeDeviceJobInput")
    DescribeDeviceJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeDeviceJobOutput", name: "DescribeDeviceJobOutput")
    DescribeDeviceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeDeviceOutput", name: "DescribeDeviceOutput")
    DescribeNodeFromTemplateJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeNodeFromTemplateJobInput", name: "DescribeNodeFromTemplateJobInput")
    DescribeNodeFromTemplateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeNodeFromTemplateJobOutput", name: "DescribeNodeFromTemplateJobOutput")
    DescribeNodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeNodeInput", name: "DescribeNodeInput")
    DescribeNodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribeNodeOutput", name: "DescribeNodeOutput")
    DescribePackageImportJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageImportJobInput", name: "DescribePackageImportJobInput")
    DescribePackageImportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageImportJobOutput", name: "DescribePackageImportJobOutput")
    DescribePackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageInput", name: "DescribePackageInput")
    DescribePackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageOutput", name: "DescribePackageOutput")
    DescribePackageVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageVersionInput", name: "DescribePackageVersionInput")
    DescribePackageVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DescribePackageVersionOutput", name: "DescribePackageVersionOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    DesiredState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DesiredState", name: "DesiredState", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "REMOVED", "name" => "REMOVED"}]})
    Device = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#Device", name: "Device")
    DeviceAggregatedStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceAggregatedStatus", name: "DeviceAggregatedStatus", traits: {"smithy.api#enum" => [{"value" => "ERROR", "name" => "ERROR"}, {"value" => "AWAITING_PROVISIONING", "name" => "AWAITING_PROVISIONING"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "LEASE_EXPIRED", "name" => "LEASE_EXPIRED"}, {"value" => "UPDATE_NEEDED", "name" => "UPDATE_NEEDED"}, {"value" => "REBOOTING", "name" => "REBOOTING"}]})
    DeviceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceArn", name: "DeviceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DeviceBrand = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceBrand", name: "DeviceBrand", traits: {"smithy.api#enum" => [{"value" => "AWS_PANORAMA", "name" => "AWS_PANORAMA"}, {"value" => "LENOVO", "name" => "LENOVO"}]})
    DeviceConnectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceConnectionStatus", name: "DeviceConnectionStatus", traits: {"smithy.api#enum" => [{"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "AWAITING_CREDENTIALS", "name" => "AWAITING_CREDENTIALS"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}, {"value" => "ERROR", "name" => "ERROR"}]})
    DeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceId", name: "DeviceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeviceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#DeviceIdList", name: "DeviceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DeviceJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeviceJob", name: "DeviceJob")
    DeviceJobConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#DeviceJobConfig", name: "DeviceJobConfig")
    DeviceJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#DeviceJobList", name: "DeviceJobList")
    DeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#DeviceList", name: "DeviceList")
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceName", name: "DeviceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeviceReportedStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceReportedStatus", name: "DeviceReportedStatus", traits: {"smithy.api#enum" => [{"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "STOP_ERROR", "name" => "STOP_ERROR"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "REMOVAL_IN_PROGRESS", "name" => "REMOVAL_IN_PROGRESS"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "INSTALL_ERROR", "name" => "INSTALL_ERROR"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "LAUNCH_ERROR", "name" => "LAUNCH_ERROR"}, {"value" => "INSTALL_IN_PROGRESS", "name" => "INSTALL_IN_PROGRESS"}]})
    DeviceSerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceSerialNumber", name: "DeviceSerialNumber", traits: {"smithy.api#pattern" => "^[0-9]{1,20}$"})
    DeviceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceStatus", name: "DeviceStatus", traits: {"smithy.api#enum" => [{"value" => "AWAITING_PROVISIONING", "name" => "AWAITING_PROVISIONING"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "DELETING", "name" => "DELETING"}]})
    DeviceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#DeviceType", name: "DeviceType", traits: {"smithy.api#enum" => [{"value" => "PANORAMA_APPLIANCE_DEVELOPER_KIT", "name" => "PANORAMA_APPLIANCE_DEVELOPER_KIT"}, {"value" => "PANORAMA_APPLIANCE", "name" => "PANORAMA_APPLIANCE"}]})
    Dns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Dns", name: "Dns", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    DnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#DnsList", name: "DnsList")
    EthernetPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#EthernetPayload", name: "EthernetPayload")
    EthernetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#EthernetStatus", name: "EthernetStatus")
    HwAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#HwAddress", name: "HwAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ImageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ImageVersion", name: "ImageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    InputPortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#InputPortList", name: "InputPortList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IotThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#IotThingName", name: "IotThingName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d))(:(6553[0-5]|655[0-2]\\d|65[0-4]\\d{2}|6[0-4]\\d{3}|[1-5]\\d{4}|[1-9]\\d{0,3}))?$"})
    IpAddressOrServerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#IpAddressOrServerName", name: "IpAddressOrServerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "(^([a-z0-9]+(-[a-z0-9]+)*\\.)+[a-z]{2,}$)|(^((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d))(:(6553[0-5]|655[0-2]\\d|65[0-4]\\d{2}|6[0-4]\\d{3}|[1-5]\\d{4}|[1-9]\\d{0,3}))?$)"})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#Job", name: "Job")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    JobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#JobList", name: "JobList")
    JobResourceTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#JobResourceTags", name: "JobResourceTags")
    JobResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#JobResourceType", name: "JobResourceType", traits: {"smithy.api#enum" => [{"value" => "PACKAGE", "name" => "PACKAGE"}]})
    JobTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#JobTagsList", name: "JobTagsList")
    JobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#JobType", name: "JobType", traits: {"smithy.api#enum" => [{"value" => "OTA", "name" => "OTA"}, {"value" => "REBOOT", "name" => "REBOOT"}]})
    LastUpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.panorama#LastUpdatedTime", name: "LastUpdatedTime")
    LatestAlternateSoftware = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#LatestAlternateSoftware", name: "LatestAlternateSoftware", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    LatestDeviceJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#LatestDeviceJob", name: "LatestDeviceJob")
    LatestSoftware = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#LatestSoftware", name: "LatestSoftware", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    LeaseExpirationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.panorama#LeaseExpirationTime", name: "LeaseExpirationTime")
    ListApplicationInstanceDependenciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstanceDependenciesInput", name: "ListApplicationInstanceDependenciesInput")
    ListApplicationInstanceDependenciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstanceDependenciesOutput", name: "ListApplicationInstanceDependenciesOutput")
    ListApplicationInstanceNodeInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstanceNodeInstancesInput", name: "ListApplicationInstanceNodeInstancesInput")
    ListApplicationInstanceNodeInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstanceNodeInstancesOutput", name: "ListApplicationInstanceNodeInstancesOutput")
    ListApplicationInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstancesInput", name: "ListApplicationInstancesInput")
    ListApplicationInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListApplicationInstancesOutput", name: "ListApplicationInstancesOutput")
    ListDevicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListDevicesInput", name: "ListDevicesInput")
    ListDevicesJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListDevicesJobsInput", name: "ListDevicesJobsInput")
    ListDevicesJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListDevicesJobsOutput", name: "ListDevicesJobsOutput")
    ListDevicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListDevicesOutput", name: "ListDevicesOutput")
    ListDevicesSortBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ListDevicesSortBy", name: "ListDevicesSortBy", traits: {"smithy.api#enum" => [{"value" => "DEVICE_ID", "name" => "DEVICE_ID"}, {"value" => "CREATED_TIME", "name" => "CREATED_TIME"}, {"value" => "NAME", "name" => "NAME"}, {"value" => "DEVICE_AGGREGATED_STATUS", "name" => "DEVICE_AGGREGATED_STATUS"}]})
    ListNodeFromTemplateJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListNodeFromTemplateJobsInput", name: "ListNodeFromTemplateJobsInput")
    ListNodeFromTemplateJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListNodeFromTemplateJobsOutput", name: "ListNodeFromTemplateJobsOutput")
    ListNodesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListNodesInput", name: "ListNodesInput")
    ListNodesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListNodesOutput", name: "ListNodesOutput")
    ListPackageImportJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListPackageImportJobsInput", name: "ListPackageImportJobsInput")
    ListPackageImportJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListPackageImportJobsOutput", name: "ListPackageImportJobsOutput")
    ListPackagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListPackagesInput", name: "ListPackagesInput")
    ListPackagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListPackagesOutput", name: "ListPackagesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ManifestOverridesPayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.panorama#ManifestOverridesPayload", name: "ManifestOverridesPayload")
    ManifestOverridesPayloadData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ManifestOverridesPayloadData", name: "ManifestOverridesPayloadData", traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => "^.*$"})
    ManifestPayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.panorama#ManifestPayload", name: "ManifestPayload")
    ManifestPayloadData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ManifestPayloadData", name: "ManifestPayloadData", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => "^.+$"})
    MarkLatestPatch = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.panorama#MarkLatestPatch", name: "MarkLatestPatch", traits: {"smithy.api#default" => false})
    Mask = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Mask", name: "Mask", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    MaxConnections = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.panorama#MaxConnections", name: "MaxConnections", traits: {"smithy.api#default" => 0})
    MaxSize25 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.panorama#MaxSize25", name: "MaxSize25", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 25}})
    NameFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NameFilter", name: "NameFilter")
    NetworkConnectionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NetworkConnectionStatus", name: "NetworkConnectionStatus", traits: {"smithy.api#enum" => [{"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "NOT_CONNECTED", "name" => "NOT_CONNECTED"}, {"value" => "CONNECTING", "name" => "CONNECTING"}]})
    NetworkPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NetworkPayload", name: "NetworkPayload")
    NetworkStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NetworkStatus", name: "NetworkStatus")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.+$"})
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#Node", name: "Node")
    NodeAssetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeAssetName", name: "NodeAssetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeCategory", name: "NodeCategory", traits: {"smithy.api#enum" => [{"value" => "BUSINESS_LOGIC", "name" => "BUSINESS_LOGIC"}, {"value" => "ML_MODEL", "name" => "ML_MODEL"}, {"value" => "MEDIA_SOURCE", "name" => "MEDIA_SOURCE"}, {"value" => "MEDIA_SINK", "name" => "MEDIA_SINK"}]})
    NodeFromTemplateJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeFromTemplateJob", name: "NodeFromTemplateJob")
    NodeFromTemplateJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#NodeFromTemplateJobList", name: "NodeFromTemplateJobList")
    NodeFromTemplateJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeFromTemplateJobStatus", name: "NodeFromTemplateJobStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    NodeFromTemplateJobStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeFromTemplateJobStatusMessage", name: "NodeFromTemplateJobStatusMessage")
    NodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeId", name: "NodeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]+$"})
    NodeInputPort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeInputPort", name: "NodeInputPort")
    NodeInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeInstance", name: "NodeInstance")
    NodeInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeInstanceId", name: "NodeInstanceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeInstanceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeInstanceStatus", name: "NodeInstanceStatus", traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}, {"value" => "PAUSED", "name" => "PAUSED"}]})
    NodeInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#NodeInstances", name: "NodeInstances")
    NodeInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeInterface", name: "NodeInterface")
    NodeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeName", name: "NodeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeOutputPort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeOutputPort", name: "NodeOutputPort")
    NodePackageArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodePackageArn", name: "NodePackageArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NodePackageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodePackageId", name: "NodePackageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\/]+$"})
    NodePackageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodePackageName", name: "NodePackageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodePackagePatchVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodePackagePatchVersion", name: "NodePackagePatchVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    NodePackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodePackageVersion", name: "NodePackageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([0-9]+)\\.([0-9]+)$"})
    NodeSignal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NodeSignal", name: "NodeSignal")
    NodeSignalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#NodeSignalList", name: "NodeSignalList", traits: {"smithy.api#length" => {"min" => 1}})
    NodeSignalValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NodeSignalValue", name: "NodeSignalValue", traits: {"smithy.api#enum" => [{"value" => "PAUSE", "name" => "PAUSE"}, {"value" => "RESUME", "name" => "RESUME"}]})
    NodesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#NodesList", name: "NodesList")
    NtpPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NtpPayload", name: "NtpPayload")
    NtpServerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#NtpServerList", name: "NtpServerList", traits: {"smithy.api#length" => {"max" => 5}})
    NtpServerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#NtpServerName", name: "NtpServerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NtpStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#NtpStatus", name: "NtpStatus")
    OTAJobConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#OTAJobConfig", name: "OTAJobConfig")
    Object = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Object", name: "Object")
    ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ObjectKey", name: "ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    OutPutS3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#OutPutS3Location", name: "OutPutS3Location")
    OutputPortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#OutputPortList", name: "OutputPortList")
    PackageImportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageImportJob", name: "PackageImportJob")
    PackageImportJobInputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageImportJobInputConfig", name: "PackageImportJobInputConfig")
    PackageImportJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#PackageImportJobList", name: "PackageImportJobList")
    PackageImportJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageImportJobOutput", name: "PackageImportJobOutput")
    PackageImportJobOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageImportJobOutputConfig", name: "PackageImportJobOutputConfig")
    PackageImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageImportJobStatus", name: "PackageImportJobStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    PackageImportJobStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageImportJobStatusMessage", name: "PackageImportJobStatusMessage")
    PackageImportJobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageImportJobType", name: "PackageImportJobType", traits: {"smithy.api#enum" => [{"value" => "NODE_PACKAGE_VERSION", "name" => "NODE_PACKAGE_VERSION"}, {"value" => "MARKETPLACE_NODE_PACKAGE_VERSION", "name" => "MARKETPLACE_NODE_PACKAGE_VERSION"}]})
    PackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#PackageList", name: "PackageList")
    PackageListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageListItem", name: "PackageListItem")
    PackageObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageObject", name: "PackageObject")
    PackageObjects = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#PackageObjects", name: "PackageObjects")
    PackageOwnerAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageOwnerAccount", name: "PackageOwnerAccount", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[0-9a-z\\_]+$"})
    PackageVersionInputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageVersionInputConfig", name: "PackageVersionInputConfig")
    PackageVersionOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#PackageVersionOutputConfig", name: "PackageVersionOutputConfig")
    PackageVersionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageVersionStatus", name: "PackageVersionStatus", traits: {"smithy.api#enum" => [{"value" => "REGISTER_PENDING", "name" => "REGISTER_PENDING"}, {"value" => "REGISTER_COMPLETED", "name" => "REGISTER_COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}]})
    PackageVersionStatusDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PackageVersionStatusDescription", name: "PackageVersionStatusDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PortDefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PortDefaultValue", name: "PortDefaultValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PortName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PortName", name: "PortName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_]+$"})
    PortType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PortType", name: "PortType", traits: {"smithy.api#enum" => [{"value" => "BOOLEAN", "name" => "BOOLEAN"}, {"value" => "STRING", "name" => "STRING"}, {"value" => "INT32", "name" => "INT32"}, {"value" => "FLOAT32", "name" => "FLOAT32"}, {"value" => "MEDIA", "name" => "MEDIA"}]})
    PrincipalArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#PrincipalArn", name: "PrincipalArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:iam::[0-9]{12}:[a-zA-Z0-9+=,.@\\-_/]+$"})
    PrincipalArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#PrincipalArnsList", name: "PrincipalArnsList")
    ProvisionDeviceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ProvisionDeviceInput", name: "ProvisionDeviceInput")
    ProvisionDeviceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ProvisionDeviceOutput", name: "ProvisionDeviceOutput")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    RegisterPackageVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#RegisterPackageVersionInput", name: "RegisterPackageVersionInput")
    RegisterPackageVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#RegisterPackageVersionOutput", name: "RegisterPackageVersionOutput")
    RemoveApplicationInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#RemoveApplicationInstanceInput", name: "RemoveApplicationInstanceInput")
    RemoveApplicationInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#RemoveApplicationInstanceOutput", name: "RemoveApplicationInstanceOutput")
    ReportedRuntimeContextState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ReportedRuntimeContextState", name: "ReportedRuntimeContextState")
    ReportedRuntimeContextStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#ReportedRuntimeContextStates", name: "ReportedRuntimeContextStates")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.panorama#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    RuntimeContextName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#RuntimeContextName", name: "RuntimeContextName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    RuntimeRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#RuntimeRoleArn", name: "RuntimeRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:iam::[0-9]{12}:role/.+$"})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#S3Location", name: "S3Location")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignalApplicationInstanceNodeInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#SignalApplicationInstanceNodeInstancesInput", name: "SignalApplicationInstanceNodeInstancesInput")
    SignalApplicationInstanceNodeInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#SignalApplicationInstanceNodeInstancesOutput", name: "SignalApplicationInstanceNodeInstancesOutput")
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING"}]})
    StaticIpConnectionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#StaticIpConnectionInfo", name: "StaticIpConnectionInfo")
    StatusFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#StatusFilter", name: "StatusFilter", traits: {"smithy.api#enum" => [{"value" => "DEPLOYMENT_SUCCEEDED", "name" => "DEPLOYMENT_SUCCEEDED"}, {"value" => "DEPLOYMENT_ERROR", "name" => "DEPLOYMENT_ERROR"}, {"value" => "REMOVAL_SUCCEEDED", "name" => "REMOVAL_SUCCEEDED"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "PROCESSING_DEPLOYMENT", "name" => "PROCESSING_DEPLOYMENT"}, {"value" => "PROCESSING_REMOVAL", "name" => "PROCESSING_REMOVAL"}, {"value" => "DEPLOYMENT_FAILED", "name" => "DEPLOYMENT_FAILED"}]})
    StorageLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#StorageLocation", name: "StorageLocation")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.panorama#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TemplateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#TemplateKey", name: "TemplateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    TemplateParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.panorama#TemplateParametersMap", name: "TemplateParametersMap")
    TemplateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#TemplateType", name: "TemplateType", traits: {"smithy.api#enum" => [{"value" => "RTSP_CAMERA_STREAM", "name" => "RTSP_CAMERA_STREAM"}]})
    TemplateValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#TemplateValue", name: "TemplateValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.panorama#TimeStamp", name: "TimeStamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.+$"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateCreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.panorama#UpdateCreatedTime", name: "UpdateCreatedTime")
    UpdateDeviceMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#UpdateDeviceMetadataInput", name: "UpdateDeviceMetadataInput")
    UpdateDeviceMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#UpdateDeviceMetadataOutput", name: "UpdateDeviceMetadataOutput")
    UpdateProgress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#UpdateProgress", name: "UpdateProgress", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "VERIFYING", "name" => "VERIFYING"}, {"value" => "REBOOTING", "name" => "REBOOTING"}, {"value" => "DOWNLOADING", "name" => "DOWNLOADING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorArgument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ValidationExceptionErrorArgument", name: "ValidationExceptionErrorArgument")
    ValidationExceptionErrorArgumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#ValidationExceptionErrorArgumentList", name: "ValidationExceptionErrorArgumentList")
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.panorama#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.panorama#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.panorama#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlternateSoftwareMetadata.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    AlternateSoftwareMetadata.type = Types::AlternateSoftwareMetadata
    AlternateSoftwares.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateSoftwareMetadata, name: "member"))
    ApplicationInstance.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceName, name: "Name"))
    ApplicationInstance.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId"))
    ApplicationInstance.add_member(:default_runtime_context_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRuntimeContextDevice, name: "DefaultRuntimeContextDevice"))
    ApplicationInstance.add_member(:default_runtime_context_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DefaultRuntimeContextDeviceName"))
    ApplicationInstance.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ApplicationInstance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceStatus, name: "Status"))
    ApplicationInstance.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceHealthStatus, name: "HealthStatus"))
    ApplicationInstance.add_member(:status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceStatusDescription, name: "StatusDescription"))
    ApplicationInstance.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime"))
    ApplicationInstance.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceArn, name: "Arn"))
    ApplicationInstance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ApplicationInstance.add_member(:runtime_context_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportedRuntimeContextStates, name: "RuntimeContextStates"))
    ApplicationInstance.type = Types::ApplicationInstance
    ApplicationInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstance, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:error_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorId"))
    ConflictException.add_member(:error_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionErrorArgumentList, name: "ErrorArguments"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionErrorArgument.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ConflictExceptionErrorArgument.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    ConflictExceptionErrorArgument.type = Types::ConflictExceptionErrorArgument
    ConflictExceptionErrorArgumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionErrorArgument, name: "member"))
    CreateApplicationInstanceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceName, name: "Name"))
    CreateApplicationInstanceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationInstanceInput.add_member(:manifest_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestPayload, name: "ManifestPayload", traits: {"smithy.api#required" => {}}))
    CreateApplicationInstanceInput.add_member(:manifest_overrides_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestOverridesPayload, name: "ManifestOverridesPayload"))
    CreateApplicationInstanceInput.add_member(:application_instance_id_to_replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceIdToReplace"))
    CreateApplicationInstanceInput.add_member(:runtime_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeRoleArn, name: "RuntimeRoleArn"))
    CreateApplicationInstanceInput.add_member(:default_runtime_context_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRuntimeContextDevice, name: "DefaultRuntimeContextDevice", traits: {"smithy.api#required" => {}}))
    CreateApplicationInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateApplicationInstanceInput.type = Types::CreateApplicationInstanceInput
    CreateApplicationInstanceOutput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#required" => {}}))
    CreateApplicationInstanceOutput.type = Types::CreateApplicationInstanceOutput
    CreateJobForDevicesInput.add_member(:device_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceIdList, name: "DeviceIds", traits: {"smithy.api#required" => {}}))
    CreateJobForDevicesInput.add_member(:device_job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceJobConfig, name: "DeviceJobConfig"))
    CreateJobForDevicesInput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType", traits: {"smithy.api#required" => {}}))
    CreateJobForDevicesInput.type = Types::CreateJobForDevicesInput
    CreateJobForDevicesOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobList, name: "Jobs", traits: {"smithy.api#required" => {}}))
    CreateJobForDevicesOutput.type = Types::CreateJobForDevicesOutput
    CreateNodeFromTemplateJobInput.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateType, name: "TemplateType", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:output_package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "OutputPackageName", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:output_package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "OutputPackageVersion", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "NodeName", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:node_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "NodeDescription"))
    CreateNodeFromTemplateJobInput.add_member(:template_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParametersMap, name: "TemplateParameters", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:job_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTagsList, name: "JobTags"))
    CreateNodeFromTemplateJobInput.type = Types::CreateNodeFromTemplateJobInput
    CreateNodeFromTemplateJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    CreateNodeFromTemplateJobOutput.type = Types::CreateNodeFromTemplateJobOutput
    CreatePackageImportJobInput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobType, name: "JobType", traits: {"smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:input_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobInputConfig, name: "InputConfig", traits: {"smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobOutputConfig, name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:job_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTagsList, name: "JobTags"))
    CreatePackageImportJobInput.type = Types::CreatePackageImportJobInput
    CreatePackageImportJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    CreatePackageImportJobOutput.type = Types::CreatePackageImportJobOutput
    CreatePackageInput.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    CreatePackageInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreatePackageInput.type = Types::CreatePackageInput
    CreatePackageOutput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId"))
    CreatePackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "Arn"))
    CreatePackageOutput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLocation, name: "StorageLocation", traits: {"smithy.api#required" => {}}))
    CreatePackageOutput.type = Types::CreatePackageOutput
    DeleteDeviceInput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceInput.type = Types::DeleteDeviceInput
    DeleteDeviceOutput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    DeleteDeviceOutput.type = Types::DeleteDeviceOutput
    DeletePackageInput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackageInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ForceDelete", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "ForceDelete"}))
    DeletePackageInput.type = Types::DeletePackageInput
    DeletePackageOutput.type = Types::DeletePackageOutput
    DeregisterPackageVersionInput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount", traits: {"smithy.api#httpQuery" => "OwnerAccount"}))
    DeregisterPackageVersionInput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:updated_latest_patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "UpdatedLatestPatchVersion", traits: {"smithy.api#httpQuery" => "UpdatedLatestPatchVersion"}))
    DeregisterPackageVersionInput.type = Types::DeregisterPackageVersionInput
    DeregisterPackageVersionOutput.type = Types::DeregisterPackageVersionOutput
    DescribeApplicationInstanceDetailsInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationInstanceDetailsInput.type = Types::DescribeApplicationInstanceDetailsInput
    DescribeApplicationInstanceDetailsOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceName, name: "Name"))
    DescribeApplicationInstanceDetailsOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeApplicationInstanceDetailsOutput.add_member(:default_runtime_context_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRuntimeContextDevice, name: "DefaultRuntimeContextDevice"))
    DescribeApplicationInstanceDetailsOutput.add_member(:manifest_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestPayload, name: "ManifestPayload"))
    DescribeApplicationInstanceDetailsOutput.add_member(:manifest_overrides_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestOverridesPayload, name: "ManifestOverridesPayload"))
    DescribeApplicationInstanceDetailsOutput.add_member(:application_instance_id_to_replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceIdToReplace"))
    DescribeApplicationInstanceDetailsOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime"))
    DescribeApplicationInstanceDetailsOutput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId"))
    DescribeApplicationInstanceDetailsOutput.type = Types::DescribeApplicationInstanceDetailsOutput
    DescribeApplicationInstanceInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationInstanceInput.type = Types::DescribeApplicationInstanceInput
    DescribeApplicationInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceName, name: "Name"))
    DescribeApplicationInstanceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeApplicationInstanceOutput.add_member(:default_runtime_context_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRuntimeContextDevice, name: "DefaultRuntimeContextDevice"))
    DescribeApplicationInstanceOutput.add_member(:default_runtime_context_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DefaultRuntimeContextDeviceName"))
    DescribeApplicationInstanceOutput.add_member(:application_instance_id_to_replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceIdToReplace"))
    DescribeApplicationInstanceOutput.add_member(:runtime_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeRoleArn, name: "RuntimeRoleArn"))
    DescribeApplicationInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceStatus, name: "Status"))
    DescribeApplicationInstanceOutput.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceHealthStatus, name: "HealthStatus"))
    DescribeApplicationInstanceOutput.add_member(:status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceStatusDescription, name: "StatusDescription"))
    DescribeApplicationInstanceOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime"))
    DescribeApplicationInstanceOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdatedTime"))
    DescribeApplicationInstanceOutput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId"))
    DescribeApplicationInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceArn, name: "Arn"))
    DescribeApplicationInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DescribeApplicationInstanceOutput.add_member(:runtime_context_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportedRuntimeContextStates, name: "RuntimeContextStates"))
    DescribeApplicationInstanceOutput.type = Types::DescribeApplicationInstanceOutput
    DescribeDeviceInput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceInput.type = Types::DescribeDeviceInput
    DescribeDeviceJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceJobInput.type = Types::DescribeDeviceJobInput
    DescribeDeviceJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    DescribeDeviceJobOutput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    DescribeDeviceJobOutput.add_member(:device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "DeviceArn"))
    DescribeDeviceJobOutput.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DeviceName"))
    DescribeDeviceJobOutput.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "DeviceType"))
    DescribeDeviceJobOutput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersion, name: "ImageVersion"))
    DescribeDeviceJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProgress, name: "Status"))
    DescribeDeviceJobOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCreatedTime, name: "CreatedTime"))
    DescribeDeviceJobOutput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    DescribeDeviceJobOutput.type = Types::DescribeDeviceJobOutput
    DescribeDeviceOutput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    DescribeDeviceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "Name"))
    DescribeDeviceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "Arn"))
    DescribeDeviceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeDeviceOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "Type"))
    DescribeDeviceOutput.add_member(:device_connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceConnectionStatus, name: "DeviceConnectionStatus"))
    DescribeDeviceOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    DescribeDeviceOutput.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, name: "ProvisioningStatus"))
    DescribeDeviceOutput.add_member(:latest_software, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestSoftware, name: "LatestSoftware"))
    DescribeDeviceOutput.add_member(:current_software, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentSoftware, name: "CurrentSoftware"))
    DescribeDeviceOutput.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSerialNumber, name: "SerialNumber"))
    DescribeDeviceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DescribeDeviceOutput.add_member(:networking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkPayload, name: "NetworkingConfiguration"))
    DescribeDeviceOutput.add_member(:current_networking_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkStatus, name: "CurrentNetworkingStatus"))
    DescribeDeviceOutput.add_member(:lease_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LeaseExpirationTime, name: "LeaseExpirationTime"))
    DescribeDeviceOutput.add_member(:alternate_softwares, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateSoftwares, name: "AlternateSoftwares"))
    DescribeDeviceOutput.add_member(:latest_alternate_software, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestAlternateSoftware, name: "LatestAlternateSoftware"))
    DescribeDeviceOutput.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceBrand, name: "Brand"))
    DescribeDeviceOutput.add_member(:latest_device_job, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestDeviceJob, name: "LatestDeviceJob"))
    DescribeDeviceOutput.add_member(:device_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceAggregatedStatus, name: "DeviceAggregatedStatus"))
    DescribeDeviceOutput.type = Types::DescribeDeviceOutput
    DescribeNodeFromTemplateJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobInput.type = Types::DescribeNodeFromTemplateJobInput
    DescribeNodeFromTemplateJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJobStatusMessage, name: "StatusMessage", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:output_package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "OutputPackageName", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:output_package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "OutputPackageVersion", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "NodeName", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:node_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "NodeDescription"))
    DescribeNodeFromTemplateJobOutput.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateType, name: "TemplateType", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:template_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateParametersMap, name: "TemplateParameters", traits: {"smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:job_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTagsList, name: "JobTags"))
    DescribeNodeFromTemplateJobOutput.type = Types::DescribeNodeFromTemplateJobOutput
    DescribeNodeInput.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, name: "NodeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodeInput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount", traits: {"smithy.api#httpQuery" => "OwnerAccount"}))
    DescribeNodeInput.type = Types::DescribeNodeInput
    DescribeNodeOutput.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, name: "NodeId", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategory, name: "Category", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "PackageArn"))
    DescribeNodeOutput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:node_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInterface, name: "NodeInterface", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeAssetName, name: "AssetName"))
    DescribeNodeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdatedTime", traits: {"smithy.api#required" => {}}))
    DescribeNodeOutput.type = Types::DescribeNodeOutput
    DescribePackageImportJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageImportJobInput.type = Types::DescribePackageImportJobInput
    DescribePackageImportJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    DescribePackageImportJobOutput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobType, name: "JobType", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:input_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobInputConfig, name: "InputConfig", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobOutputConfig, name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobOutput, name: "Output", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobStatusMessage, name: "StatusMessage", traits: {"smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:job_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTagsList, name: "JobTags"))
    DescribePackageImportJobOutput.type = Types::DescribePackageImportJobOutput
    DescribePackageInput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageInput.type = Types::DescribePackageInput
    DescribePackageOutput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLocation, name: "StorageLocation", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:read_access_principal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArnsList, name: "ReadAccessPrincipalArns"))
    DescribePackageOutput.add_member(:write_access_principal_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArnsList, name: "WriteAccessPrincipalArns"))
    DescribePackageOutput.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    DescribePackageOutput.type = Types::DescribePackageOutput
    DescribePackageVersionInput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount", traits: {"smithy.api#httpQuery" => "OwnerAccount"}))
    DescribePackageVersionInput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageVersionInput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageVersionInput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#httpQuery" => "PatchVersion"}))
    DescribePackageVersionInput.type = Types::DescribePackageVersionInput
    DescribePackageVersionOutput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount"))
    DescribePackageVersionOutput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "PackageArn"))
    DescribePackageVersionOutput.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:is_latest_patch, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsLatestPatch", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatusDescription, name: "StatusDescription"))
    DescribePackageVersionOutput.add_member(:registered_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "RegisteredTime"))
    DescribePackageVersionOutput.type = Types::DescribePackageVersionOutput
    Device.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    Device.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "Name"))
    Device.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    Device.add_member(:provisioning_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, name: "ProvisioningStatus"))
    Device.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    Device.add_member(:lease_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LeaseExpirationTime, name: "LeaseExpirationTime"))
    Device.add_member(:brand, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceBrand, name: "Brand"))
    Device.add_member(:current_software, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentSoftware, name: "CurrentSoftware"))
    Device.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Device.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    Device.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceType, name: "Type"))
    Device.add_member(:latest_device_job, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestDeviceJob, name: "LatestDeviceJob"))
    Device.add_member(:device_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceAggregatedStatus, name: "DeviceAggregatedStatus"))
    Device.type = Types::Device
    DeviceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "member"))
    DeviceJob.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DeviceName"))
    DeviceJob.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    DeviceJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    DeviceJob.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    DeviceJob.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    DeviceJob.type = Types::DeviceJob
    DeviceJobConfig.add_member(:ota_job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OTAJobConfig, name: "OTAJobConfig"))
    DeviceJobConfig.type = Types::DeviceJobConfig
    DeviceJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceJob, name: "member"))
    DeviceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "member"))
    DnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dns, name: "member"))
    EthernetPayload.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    EthernetPayload.add_member(:static_ip_connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticIpConnectionInfo, name: "StaticIpConnectionInfo"))
    EthernetPayload.type = Types::EthernetPayload
    EthernetStatus.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    EthernetStatus.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectionStatus, name: "ConnectionStatus"))
    EthernetStatus.add_member(:hw_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HwAddress, name: "HwAddress"))
    EthernetStatus.type = Types::EthernetStatus
    InputPortList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInputPort, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    Job.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    Job.type = Types::Job
    JobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "member"))
    JobResourceTags.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    JobResourceTags.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    JobResourceTags.type = Types::JobResourceTags
    JobTagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobResourceTags, name: "member"))
    LatestDeviceJob.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersion, name: "ImageVersion"))
    LatestDeviceJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProgress, name: "Status"))
    LatestDeviceJob.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "JobType"))
    LatestDeviceJob.type = Types::LatestDeviceJob
    ListApplicationInstanceDependenciesInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationInstanceDependenciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstanceDependenciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstanceDependenciesInput.type = Types::ListApplicationInstanceDependenciesInput
    ListApplicationInstanceDependenciesOutput.add_member(:package_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageObjects, name: "PackageObjects"))
    ListApplicationInstanceDependenciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationInstanceDependenciesOutput.type = Types::ListApplicationInstanceDependenciesOutput
    ListApplicationInstanceNodeInstancesInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationInstanceNodeInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstanceNodeInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstanceNodeInstancesInput.type = Types::ListApplicationInstanceNodeInstancesInput
    ListApplicationInstanceNodeInstancesOutput.add_member(:node_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInstances, name: "NodeInstances"))
    ListApplicationInstanceNodeInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationInstanceNodeInstancesOutput.type = Types::ListApplicationInstanceNodeInstancesOutput
    ListApplicationInstancesInput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpQuery" => "deviceId"}))
    ListApplicationInstancesInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusFilter, name: "StatusFilter", traits: {"smithy.api#httpQuery" => "statusFilter"}))
    ListApplicationInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstancesInput.type = Types::ListApplicationInstancesInput
    ListApplicationInstancesOutput.add_member(:application_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstances, name: "ApplicationInstances"))
    ListApplicationInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationInstancesOutput.type = Types::ListApplicationInstancesOutput
    ListDevicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDevicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxResults"}))
    ListDevicesInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDevicesSortBy, name: "SortBy", traits: {"smithy.api#httpQuery" => "SortBy"}))
    ListDevicesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#httpQuery" => "SortOrder"}))
    ListDevicesInput.add_member(:name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NameFilter, name: "NameFilter", traits: {"smithy.api#httpQuery" => "NameFilter"}))
    ListDevicesInput.add_member(:device_aggregated_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceAggregatedStatus, name: "DeviceAggregatedStatusFilter", traits: {"smithy.api#httpQuery" => "DeviceAggregatedStatusFilter"}))
    ListDevicesInput.type = Types::ListDevicesInput
    ListDevicesJobsInput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpQuery" => "DeviceId"}))
    ListDevicesJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDevicesJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxResults"}))
    ListDevicesJobsInput.type = Types::ListDevicesJobsInput
    ListDevicesJobsOutput.add_member(:device_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceJobList, name: "DeviceJobs"))
    ListDevicesJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDevicesJobsOutput.type = Types::ListDevicesJobsOutput
    ListDevicesOutput.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceList, name: "Devices", traits: {"smithy.api#required" => {}}))
    ListDevicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDevicesOutput.type = Types::ListDevicesOutput
    ListNodeFromTemplateJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListNodeFromTemplateJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxResults"}))
    ListNodeFromTemplateJobsInput.type = Types::ListNodeFromTemplateJobsInput
    ListNodeFromTemplateJobsOutput.add_member(:node_from_template_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJobList, name: "NodeFromTemplateJobs", traits: {"smithy.api#required" => {}}))
    ListNodeFromTemplateJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNodeFromTemplateJobsOutput.type = Types::ListNodeFromTemplateJobsOutput
    ListNodesInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategory, name: "Category", traits: {"smithy.api#httpQuery" => "category"}))
    ListNodesInput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount", traits: {"smithy.api#httpQuery" => "ownerAccount"}))
    ListNodesInput.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#httpQuery" => "packageName"}))
    ListNodesInput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#httpQuery" => "packageVersion"}))
    ListNodesInput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#httpQuery" => "patchVersion"}))
    ListNodesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNodesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListNodesInput.type = Types::ListNodesInput
    ListNodesOutput.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: NodesList, name: "Nodes"))
    ListNodesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNodesOutput.type = Types::ListNodesOutput
    ListPackageImportJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPackageImportJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxResults"}))
    ListPackageImportJobsInput.type = Types::ListPackageImportJobsInput
    ListPackageImportJobsOutput.add_member(:package_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobList, name: "PackageImportJobs", traits: {"smithy.api#required" => {}}))
    ListPackageImportJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPackageImportJobsOutput.type = Types::ListPackageImportJobsOutput
    ListPackagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize25, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPackagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPackagesInput.type = Types::ListPackagesInput
    ListPackagesOutput.add_member(:packages, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageList, name: "Packages"))
    ListPackagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPackagesOutput.type = Types::ListPackagesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManifestOverridesPayload.add_member(:payload_data, Types::ManifestOverridesPayload::PayloadData, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestOverridesPayloadData, name: "PayloadData"))
    ManifestOverridesPayload.add_member(:unknown, Types::ManifestOverridesPayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManifestOverridesPayload.type = Types::ManifestOverridesPayload
    ManifestPayload.add_member(:payload_data, Types::ManifestPayload::PayloadData, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestPayloadData, name: "PayloadData"))
    ManifestPayload.add_member(:unknown, Types::ManifestPayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManifestPayload.type = Types::ManifestPayload
    NetworkPayload.add_member(:ethernet0, ::Smithy::Schema::Shapes::MemberShape.new(target: EthernetPayload, name: "Ethernet0"))
    NetworkPayload.add_member(:ethernet1, ::Smithy::Schema::Shapes::MemberShape.new(target: EthernetPayload, name: "Ethernet1"))
    NetworkPayload.add_member(:ntp, ::Smithy::Schema::Shapes::MemberShape.new(target: NtpPayload, name: "Ntp"))
    NetworkPayload.type = Types::NetworkPayload
    NetworkStatus.add_member(:ethernet0_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EthernetStatus, name: "Ethernet0Status"))
    NetworkStatus.add_member(:ethernet1_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EthernetStatus, name: "Ethernet1Status"))
    NetworkStatus.add_member(:ntp_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NtpStatus, name: "NtpStatus"))
    NetworkStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    NetworkStatus.type = Types::NetworkStatus
    Node.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, name: "NodeId", traits: {"smithy.api#required" => {}}))
    Node.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "Name", traits: {"smithy.api#required" => {}}))
    Node.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategory, name: "Category", traits: {"smithy.api#required" => {}}))
    Node.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount"))
    Node.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    Node.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#required" => {}}))
    Node.add_member(:package_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "PackageArn"))
    Node.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    Node.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#required" => {}}))
    Node.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Node.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime", traits: {"smithy.api#required" => {}}))
    Node.type = Types::Node
    NodeFromTemplateJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    NodeFromTemplateJob.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateType, name: "TemplateType"))
    NodeFromTemplateJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJobStatus, name: "Status"))
    NodeFromTemplateJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJobStatusMessage, name: "StatusMessage"))
    NodeFromTemplateJob.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    NodeFromTemplateJob.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "NodeName"))
    NodeFromTemplateJob.type = Types::NodeFromTemplateJob
    NodeFromTemplateJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFromTemplateJob, name: "member"))
    NodeInputPort.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortName, name: "Name"))
    NodeInputPort.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    NodeInputPort.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortType, name: "Type"))
    NodeInputPort.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PortDefaultValue, name: "DefaultValue"))
    NodeInputPort.add_member(:max_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConnections, name: "MaxConnections", traits: {"smithy.api#default" => 0}))
    NodeInputPort.type = Types::NodeInputPort
    NodeInstance.add_member(:node_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInstanceId, name: "NodeInstanceId", traits: {"smithy.api#required" => {}}))
    NodeInstance.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeId, name: "NodeId"))
    NodeInstance.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName"))
    NodeInstance.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion"))
    NodeInstance.add_member(:package_patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PackagePatchVersion"))
    NodeInstance.add_member(:node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeName, name: "NodeName"))
    NodeInstance.add_member(:current_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInstanceStatus, name: "CurrentStatus", traits: {"smithy.api#required" => {}}))
    NodeInstance.type = Types::NodeInstance
    NodeInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInstance, name: "member"))
    NodeInterface.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPortList, name: "Inputs", traits: {"smithy.api#required" => {}}))
    NodeInterface.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputPortList, name: "Outputs", traits: {"smithy.api#required" => {}}))
    NodeInterface.type = Types::NodeInterface
    NodeOutputPort.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortName, name: "Name"))
    NodeOutputPort.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    NodeOutputPort.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortType, name: "Type"))
    NodeOutputPort.type = Types::NodeOutputPort
    NodeSignal.add_member(:node_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInstanceId, name: "NodeInstanceId", traits: {"smithy.api#required" => {}}))
    NodeSignal.add_member(:signal, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSignalValue, name: "Signal", traits: {"smithy.api#required" => {}}))
    NodeSignal.type = Types::NodeSignal
    NodeSignalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSignal, name: "member"))
    NodesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Node, name: "member"))
    NtpPayload.add_member(:ntp_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: NtpServerList, name: "NtpServers", traits: {"smithy.api#required" => {}}))
    NtpPayload.type = Types::NtpPayload
    NtpServerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrServerName, name: "member"))
    NtpStatus.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectionStatus, name: "ConnectionStatus"))
    NtpStatus.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    NtpStatus.add_member(:ntp_server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NtpServerName, name: "NtpServerName"))
    NtpStatus.type = Types::NtpStatus
    OTAJobConfig.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersion, name: "ImageVersion", traits: {"smithy.api#required" => {}}))
    OTAJobConfig.add_member(:allow_major_version_update, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowMajorVersionUpdate", traits: {"smithy.api#default" => false}))
    OTAJobConfig.type = Types::OTAJobConfig
    OutPutS3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    OutPutS3Location.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "ObjectKey", traits: {"smithy.api#required" => {}}))
    OutPutS3Location.type = Types::OutPutS3Location
    OutputPortList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeOutputPort, name: "member"))
    PackageImportJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    PackageImportJob.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobType, name: "JobType"))
    PackageImportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobStatus, name: "Status"))
    PackageImportJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJobStatusMessage, name: "StatusMessage"))
    PackageImportJob.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    PackageImportJob.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    PackageImportJob.type = Types::PackageImportJob
    PackageImportJobInputConfig.add_member(:package_version_input_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionInputConfig, name: "PackageVersionInputConfig"))
    PackageImportJobInputConfig.type = Types::PackageImportJobInputConfig
    PackageImportJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageImportJob, name: "member"))
    PackageImportJobOutput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:output_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutPutS3Location, name: "OutputS3Location", traits: {"smithy.api#required" => {}}))
    PackageImportJobOutput.type = Types::PackageImportJobOutput
    PackageImportJobOutputConfig.add_member(:package_version_output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionOutputConfig, name: "PackageVersionOutputConfig"))
    PackageImportJobOutputConfig.type = Types::PackageImportJobOutputConfig
    PackageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageListItem, name: "member"))
    PackageListItem.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId"))
    PackageListItem.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName"))
    PackageListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageArn, name: "Arn"))
    PackageListItem.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreatedTime"))
    PackageListItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    PackageListItem.type = Types::PackageListItem
    PackageObject.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "Name", traits: {"smithy.api#required" => {}}))
    PackageObject.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    PackageObject.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#required" => {}}))
    PackageObject.type = Types::PackageObject
    PackageObjects.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageObject, name: "member"))
    PackageVersionInputConfig.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3Location", traits: {"smithy.api#required" => {}}))
    PackageVersionInputConfig.type = Types::PackageVersionInputConfig
    PackageVersionOutputConfig.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageName, name: "PackageName", traits: {"smithy.api#required" => {}}))
    PackageVersionOutputConfig.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#required" => {}}))
    PackageVersionOutputConfig.add_member(:mark_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkLatestPatch, name: "MarkLatest", traits: {"smithy.api#default" => false}))
    PackageVersionOutputConfig.type = Types::PackageVersionOutputConfig
    PrincipalArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "member"))
    ProvisionDeviceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "Name", traits: {"smithy.api#required" => {}}))
    ProvisionDeviceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ProvisionDeviceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ProvisionDeviceInput.add_member(:networking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkPayload, name: "NetworkingConfiguration"))
    ProvisionDeviceInput.type = Types::ProvisionDeviceInput
    ProvisionDeviceOutput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    ProvisionDeviceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ProvisionDeviceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ProvisionDeviceOutput.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "Certificates"))
    ProvisionDeviceOutput.add_member(:iot_thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IotThingName, name: "IotThingName"))
    ProvisionDeviceOutput.type = Types::ProvisionDeviceOutput
    RegisterPackageVersionInput.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOwnerAccount, name: "OwnerAccount"))
    RegisterPackageVersionInput.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageId, name: "PackageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackageVersion, name: "PackageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NodePackagePatchVersion, name: "PatchVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:mark_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: MarkLatestPatch, name: "MarkLatest", traits: {"smithy.api#default" => false}))
    RegisterPackageVersionInput.type = Types::RegisterPackageVersionInput
    RegisterPackageVersionOutput.type = Types::RegisterPackageVersionOutput
    RemoveApplicationInstanceInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveApplicationInstanceInput.type = Types::RemoveApplicationInstanceInput
    RemoveApplicationInstanceOutput.type = Types::RemoveApplicationInstanceOutput
    ReportedRuntimeContextState.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredState, name: "DesiredState", traits: {"smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:runtime_context_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeContextName, name: "RuntimeContextName", traits: {"smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:device_reported_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceReportedStatus, name: "DeviceReportedStatus", traits: {"smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:device_reported_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "DeviceReportedTime", traits: {"smithy.api#required" => {}}))
    ReportedRuntimeContextState.type = Types::ReportedRuntimeContextState
    ReportedRuntimeContextStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportedRuntimeContextState, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "ObjectKey", traits: {"smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignalApplicationInstanceNodeInstancesInput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesInput.add_member(:node_signals, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSignalList, name: "NodeSignals", traits: {"smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesInput.type = Types::SignalApplicationInstanceNodeInstancesInput
    SignalApplicationInstanceNodeInstancesOutput.add_member(:application_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInstanceId, name: "ApplicationInstanceId", traits: {"smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesOutput.type = Types::SignalApplicationInstanceNodeInstancesOutput
    StaticIpConnectionInfo.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress", traits: {"smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: Mask, name: "Mask", traits: {"smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsList, name: "Dns", traits: {"smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:default_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultGateway, name: "DefaultGateway", traits: {"smithy.api#required" => {}}))
    StaticIpConnectionInfo.type = Types::StaticIpConnectionInfo
    StorageLocation.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "Bucket", traits: {"smithy.api#required" => {}}))
    StorageLocation.add_member(:repo_prefix_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "RepoPrefixLocation", traits: {"smithy.api#required" => {}}))
    StorageLocation.add_member(:generated_prefix_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "GeneratedPrefixLocation", traits: {"smithy.api#required" => {}}))
    StorageLocation.add_member(:binary_prefix_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "BinaryPrefixLocation", traits: {"smithy.api#required" => {}}))
    StorageLocation.add_member(:manifest_prefix_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "ManifestPrefixLocation", traits: {"smithy.api#required" => {}}))
    StorageLocation.type = Types::StorageLocation
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateKey, name: "key"))
    TemplateParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateValue, name: "value"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateDeviceMetadataInput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceMetadataInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDeviceMetadataInput.type = Types::UpdateDeviceMetadataInput
    UpdateDeviceMetadataOutput.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceId, name: "DeviceId"))
    UpdateDeviceMetadataOutput.type = Types::UpdateDeviceMetadataOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.add_member(:error_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorId"))
    ValidationException.add_member(:error_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorArgumentList, name: "ErrorArguments"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "Fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorArgument.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionErrorArgument.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    ValidationExceptionErrorArgument.type = Types::ValidationExceptionErrorArgument
    ValidationExceptionErrorArgumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorArgument, name: "member"))
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    OmniCloudServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.panorama#OmniCloudServiceLambda"
      service.name = "OmniCloudServiceLambda"
      service.version = "2019-07-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Panorama", "arnNamespace" => "panorama", "awsProductName" => "AWSPanorama"}, "aws.auth#sigv4" => {"name" => "panorama"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Panorama"}
      service.add_operation(:create_application_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateApplicationInstance"
        operation.name = "CreateApplicationInstance"
        operation.input = CreateApplicationInstanceInput
        operation.output = CreateApplicationInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/application-instances", "code" => 200}}
      end)
      service.add_operation(:create_job_for_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateJobForDevices"
        operation.name = "CreateJobForDevices"
        operation.input = CreateJobForDevicesInput
        operation.output = CreateJobForDevicesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 200}}
      end)
      service.add_operation(:create_node_from_template_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateNodeFromTemplateJob"
        operation.name = "CreateNodeFromTemplateJob"
        operation.input = CreateNodeFromTemplateJobInput
        operation.output = CreateNodeFromTemplateJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages/template-job", "code" => 200}}
      end)
      service.add_operation(:create_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreatePackage"
        operation.name = "CreatePackage"
        operation.input = CreatePackageInput
        operation.output = CreatePackageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages", "code" => 200}}
      end)
      service.add_operation(:create_package_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreatePackageImportJob"
        operation.name = "CreatePackageImportJob"
        operation.input = CreatePackageImportJobInput
        operation.output = CreatePackageImportJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages/import-jobs", "code" => 200}}
      end)
      service.add_operation(:delete_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = DeleteDeviceInput
        operation.output = DeleteDeviceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:delete_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = DeletePackageInput
        operation.output = DeletePackageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packages/{PackageId}", "code" => 200}}
      end)
      service.add_operation(:deregister_package_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeregisterPackageVersion"
        operation.name = "DeregisterPackageVersion"
        operation.input = DeregisterPackageVersionInput
        operation.output = DeregisterPackageVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", "code" => 200}}
      end)
      service.add_operation(:describe_application_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeApplicationInstance"
        operation.name = "DescribeApplicationInstance"
        operation.input = DescribeApplicationInstanceInput
        operation.output = DescribeApplicationInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}", "code" => 200}}
      end)
      service.add_operation(:describe_application_instance_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeApplicationInstanceDetails"
        operation.name = "DescribeApplicationInstanceDetails"
        operation.input = DescribeApplicationInstanceDetailsInput
        operation.output = DescribeApplicationInstanceDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/details", "code" => 200}}
      end)
      service.add_operation(:describe_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeDevice"
        operation.name = "DescribeDevice"
        operation.input = DescribeDeviceInput
        operation.output = DescribeDeviceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:describe_device_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeDeviceJob"
        operation.name = "DescribeDeviceJob"
        operation.input = DescribeDeviceJobInput
        operation.output = DescribeDeviceJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeNode"
        operation.name = "DescribeNode"
        operation.input = DescribeNodeInput
        operation.output = DescribeNodeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/nodes/{NodeId}", "code" => 200}}
      end)
      service.add_operation(:describe_node_from_template_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeNodeFromTemplateJob"
        operation.name = "DescribeNodeFromTemplateJob"
        operation.input = DescribeNodeFromTemplateJobInput
        operation.output = DescribeNodeFromTemplateJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/template-job/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackage"
        operation.name = "DescribePackage"
        operation.input = DescribePackageInput
        operation.output = DescribePackageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/metadata/{PackageId}", "code" => 200}}
      end)
      service.add_operation(:describe_package_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackageImportJob"
        operation.name = "DescribePackageImportJob"
        operation.input = DescribePackageImportJobInput
        operation.output = DescribePackageImportJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/import-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_package_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackageVersion"
        operation.name = "DescribePackageVersion"
        operation.input = DescribePackageVersionInput
        operation.output = DescribePackageVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/metadata/{PackageId}/versions/{PackageVersion}", "code" => 200}}
      end)
      service.add_operation(:list_application_instance_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstanceDependencies"
        operation.name = "ListApplicationInstanceDependencies"
        operation.input = ListApplicationInstanceDependenciesInput
        operation.output = ListApplicationInstanceDependenciesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/package-dependencies", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstanceDependencies.new
      end)
      service.add_operation(:list_application_instance_node_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstanceNodeInstances"
        operation.name = "ListApplicationInstanceNodeInstances"
        operation.input = ListApplicationInstanceNodeInstancesInput
        operation.output = ListApplicationInstanceNodeInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/node-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstanceNodeInstances.new
      end)
      service.add_operation(:list_application_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstances"
        operation.name = "ListApplicationInstances"
        operation.input = ListApplicationInstancesInput
        operation.output = ListApplicationInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstances.new
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListDevices"
        operation.name = "ListDevices"
        operation.input = ListDevicesInput
        operation.output = ListDevicesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/devices", "code" => 200}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_devices_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListDevicesJobs"
        operation.name = "ListDevicesJobs"
        operation.input = ListDevicesJobsInput
        operation.output = ListDevicesJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListDevicesJobs.new
      end)
      service.add_operation(:list_node_from_template_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListNodeFromTemplateJobs"
        operation.name = "ListNodeFromTemplateJobs"
        operation.input = ListNodeFromTemplateJobsInput
        operation.output = ListNodeFromTemplateJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/template-job", "code" => 200}}
        operation[:paginator] = Paginators::ListNodeFromTemplateJobs.new
      end)
      service.add_operation(:list_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListNodes"
        operation.name = "ListNodes"
        operation.input = ListNodesInput
        operation.output = ListNodesOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/nodes", "code" => 200}}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_package_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListPackageImportJobs"
        operation.name = "ListPackageImportJobs"
        operation.input = ListPackageImportJobsInput
        operation.output = ListPackageImportJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/import-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageImportJobs.new
      end)
      service.add_operation(:list_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListPackages"
        operation.name = "ListPackages"
        operation.input = ListPackagesInput
        operation.output = ListPackagesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:provision_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ProvisionDevice"
        operation.name = "ProvisionDevice"
        operation.input = ProvisionDeviceInput
        operation.output = ProvisionDeviceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/devices", "code" => 200}}
      end)
      service.add_operation(:register_package_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#RegisterPackageVersion"
        operation.name = "RegisterPackageVersion"
        operation.input = RegisterPackageVersionInput
        operation.output = RegisterPackageVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", "code" => 200}}
      end)
      service.add_operation(:remove_application_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#RemoveApplicationInstance"
        operation.name = "RemoveApplicationInstance"
        operation.input = RemoveApplicationInstanceInput
        operation.output = RemoveApplicationInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/application-instances/{ApplicationInstanceId}", "code" => 200}}
      end)
      service.add_operation(:signal_application_instance_node_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#SignalApplicationInstanceNodeInstances"
        operation.name = "SignalApplicationInstanceNodeInstances"
        operation.input = SignalApplicationInstanceNodeInstancesInput
        operation.output = SignalApplicationInstanceNodeInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/application-instances/{ApplicationInstanceId}/node-signals", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_device_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#UpdateDeviceMetadata"
        operation.name = "UpdateDeviceMetadata"
        operation.input = UpdateDeviceMetadataInput
        operation.output = UpdateDeviceMetadataOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
