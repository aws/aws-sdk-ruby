# frozen_string_literal: true

# This is generated code!

module Aws::Panorama
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlternateSoftwareMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#AlternateSoftwareMetadata', name: 'AlternateSoftwareMetadata')
    AlternateSoftwares = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#AlternateSoftwares', name: 'AlternateSoftwares')
    ApplicationInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ApplicationInstance', name: 'ApplicationInstance')
    ApplicationInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceArn', name: 'ApplicationInstanceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ApplicationInstanceHealthStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceHealthStatus', name: 'ApplicationInstanceHealthStatus', traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}]})
    ApplicationInstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceId', name: 'ApplicationInstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ApplicationInstanceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceName', name: 'ApplicationInstanceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ApplicationInstanceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceStatus', name: 'ApplicationInstanceStatus', traits: {"smithy.api#enum" => [{"value" => "DEPLOYMENT_PENDING", "name" => "DEPLOYMENT_PENDING"}, {"value" => "DEPLOYMENT_REQUESTED", "name" => "DEPLOYMENT_REQUESTED"}, {"value" => "DEPLOYMENT_IN_PROGRESS", "name" => "DEPLOYMENT_IN_PROGRESS"}, {"value" => "DEPLOYMENT_ERROR", "name" => "DEPLOYMENT_ERROR"}, {"value" => "DEPLOYMENT_SUCCEEDED", "name" => "DEPLOYMENT_SUCCEEDED"}, {"value" => "REMOVAL_PENDING", "name" => "REMOVAL_PENDING"}, {"value" => "REMOVAL_REQUESTED", "name" => "REMOVAL_REQUESTED"}, {"value" => "REMOVAL_IN_PROGRESS", "name" => "REMOVAL_IN_PROGRESS"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "REMOVAL_SUCCEEDED", "name" => "REMOVAL_SUCCEEDED"}, {"value" => "DEPLOYMENT_FAILED", "name" => "DEPLOYMENT_FAILED"}]})
    ApplicationInstanceStatusDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ApplicationInstanceStatusDescription', name: 'ApplicationInstanceStatusDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ApplicationInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#ApplicationInstances', name: 'ApplicationInstances')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.panorama#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Bucket', name: 'Bucket')
    BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#BucketName', name: 'BucketName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    Certificates = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.panorama#Certificates', name: 'Certificates')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionErrorArgument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ConflictExceptionErrorArgument', name: 'ConflictExceptionErrorArgument')
    ConflictExceptionErrorArgumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#ConflictExceptionErrorArgumentList', name: 'ConflictExceptionErrorArgumentList')
    ConnectionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ConnectionType', name: 'ConnectionType', traits: {"smithy.api#enum" => [{"value" => "STATIC_IP", "name" => "STATIC_IP"}, {"value" => "DHCP", "name" => "DHCP"}]})
    CreateApplicationInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateApplicationInstanceInput', name: 'CreateApplicationInstanceInput')
    CreateApplicationInstanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateApplicationInstanceOutput', name: 'CreateApplicationInstanceOutput')
    CreateJobForDevicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateJobForDevicesInput', name: 'CreateJobForDevicesInput')
    CreateJobForDevicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateJobForDevicesOutput', name: 'CreateJobForDevicesOutput')
    CreateNodeFromTemplateJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateNodeFromTemplateJobInput', name: 'CreateNodeFromTemplateJobInput')
    CreateNodeFromTemplateJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreateNodeFromTemplateJobOutput', name: 'CreateNodeFromTemplateJobOutput')
    CreatePackageImportJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreatePackageImportJobInput', name: 'CreatePackageImportJobInput')
    CreatePackageImportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreatePackageImportJobOutput', name: 'CreatePackageImportJobOutput')
    CreatePackageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreatePackageInput', name: 'CreatePackageInput')
    CreatePackageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#CreatePackageOutput', name: 'CreatePackageOutput')
    CreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.panorama#CreatedTime', name: 'CreatedTime')
    CurrentSoftware = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#CurrentSoftware', name: 'CurrentSoftware', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DefaultGateway = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DefaultGateway', name: 'DefaultGateway', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    DefaultRuntimeContextDevice = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DefaultRuntimeContextDevice', name: 'DefaultRuntimeContextDevice', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeleteDeviceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeleteDeviceInput', name: 'DeleteDeviceInput')
    DeleteDeviceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeleteDeviceOutput', name: 'DeleteDeviceOutput')
    DeletePackageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeletePackageInput', name: 'DeletePackageInput')
    DeletePackageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeletePackageOutput', name: 'DeletePackageOutput')
    DeregisterPackageVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeregisterPackageVersionInput', name: 'DeregisterPackageVersionInput')
    DeregisterPackageVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeregisterPackageVersionOutput', name: 'DeregisterPackageVersionOutput')
    DescribeApplicationInstanceDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeApplicationInstanceDetailsInput', name: 'DescribeApplicationInstanceDetailsInput')
    DescribeApplicationInstanceDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeApplicationInstanceDetailsOutput', name: 'DescribeApplicationInstanceDetailsOutput')
    DescribeApplicationInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeApplicationInstanceInput', name: 'DescribeApplicationInstanceInput')
    DescribeApplicationInstanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeApplicationInstanceOutput', name: 'DescribeApplicationInstanceOutput')
    DescribeDeviceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeDeviceInput', name: 'DescribeDeviceInput')
    DescribeDeviceJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeDeviceJobInput', name: 'DescribeDeviceJobInput')
    DescribeDeviceJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeDeviceJobOutput', name: 'DescribeDeviceJobOutput')
    DescribeDeviceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeDeviceOutput', name: 'DescribeDeviceOutput')
    DescribeNodeFromTemplateJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeNodeFromTemplateJobInput', name: 'DescribeNodeFromTemplateJobInput')
    DescribeNodeFromTemplateJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeNodeFromTemplateJobOutput', name: 'DescribeNodeFromTemplateJobOutput')
    DescribeNodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeNodeInput', name: 'DescribeNodeInput')
    DescribeNodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribeNodeOutput', name: 'DescribeNodeOutput')
    DescribePackageImportJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageImportJobInput', name: 'DescribePackageImportJobInput')
    DescribePackageImportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageImportJobOutput', name: 'DescribePackageImportJobOutput')
    DescribePackageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageInput', name: 'DescribePackageInput')
    DescribePackageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageOutput', name: 'DescribePackageOutput')
    DescribePackageVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageVersionInput', name: 'DescribePackageVersionInput')
    DescribePackageVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DescribePackageVersionOutput', name: 'DescribePackageVersionOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    DesiredState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DesiredState', name: 'DesiredState', traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "REMOVED", "name" => "REMOVED"}]})
    Device = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#Device', name: 'Device')
    DeviceAggregatedStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceAggregatedStatus', name: 'DeviceAggregatedStatus', traits: {"smithy.api#enum" => [{"value" => "ERROR", "name" => "ERROR"}, {"value" => "AWAITING_PROVISIONING", "name" => "AWAITING_PROVISIONING"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "LEASE_EXPIRED", "name" => "LEASE_EXPIRED"}, {"value" => "UPDATE_NEEDED", "name" => "UPDATE_NEEDED"}, {"value" => "REBOOTING", "name" => "REBOOTING"}]})
    DeviceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceArn', name: 'DeviceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DeviceBrand = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceBrand', name: 'DeviceBrand', traits: {"smithy.api#enum" => [{"value" => "AWS_PANORAMA", "name" => "AWS_PANORAMA"}, {"value" => "LENOVO", "name" => "LENOVO"}]})
    DeviceConnectionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceConnectionStatus', name: 'DeviceConnectionStatus', traits: {"smithy.api#enum" => [{"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "AWAITING_CREDENTIALS", "name" => "AWAITING_CREDENTIALS"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}, {"value" => "ERROR", "name" => "ERROR"}]})
    DeviceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceId', name: 'DeviceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeviceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#DeviceIdList', name: 'DeviceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DeviceJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeviceJob', name: 'DeviceJob')
    DeviceJobConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#DeviceJobConfig', name: 'DeviceJobConfig')
    DeviceJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#DeviceJobList', name: 'DeviceJobList')
    DeviceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#DeviceList', name: 'DeviceList')
    DeviceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceName', name: 'DeviceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    DeviceReportedStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceReportedStatus', name: 'DeviceReportedStatus', traits: {"smithy.api#enum" => [{"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "STOP_ERROR", "name" => "STOP_ERROR"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "REMOVAL_IN_PROGRESS", "name" => "REMOVAL_IN_PROGRESS"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "INSTALL_ERROR", "name" => "INSTALL_ERROR"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "LAUNCH_ERROR", "name" => "LAUNCH_ERROR"}, {"value" => "INSTALL_IN_PROGRESS", "name" => "INSTALL_IN_PROGRESS"}]})
    DeviceSerialNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceSerialNumber', name: 'DeviceSerialNumber', traits: {"smithy.api#pattern" => "^[0-9]{1,20}$"})
    DeviceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceStatus', name: 'DeviceStatus', traits: {"smithy.api#enum" => [{"value" => "AWAITING_PROVISIONING", "name" => "AWAITING_PROVISIONING"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "DELETING", "name" => "DELETING"}]})
    DeviceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#DeviceType', name: 'DeviceType', traits: {"smithy.api#enum" => [{"value" => "PANORAMA_APPLIANCE_DEVELOPER_KIT", "name" => "PANORAMA_APPLIANCE_DEVELOPER_KIT"}, {"value" => "PANORAMA_APPLIANCE", "name" => "PANORAMA_APPLIANCE"}]})
    Dns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Dns', name: 'Dns', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    DnsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#DnsList', name: 'DnsList')
    EthernetPayload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#EthernetPayload', name: 'EthernetPayload')
    EthernetStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#EthernetStatus', name: 'EthernetStatus')
    HwAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#HwAddress', name: 'HwAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ImageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ImageVersion', name: 'ImageVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    InputPortList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#InputPortList', name: 'InputPortList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IotThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#IotThingName', name: 'IotThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d))(:(6553[0-5]|655[0-2]\\d|65[0-4]\\d{2}|6[0-4]\\d{3}|[1-5]\\d{4}|[1-9]\\d{0,3}))?$"})
    IpAddressOrServerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#IpAddressOrServerName', name: 'IpAddressOrServerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "(^([a-z0-9]+(-[a-z0-9]+)*\\.)+[a-z]{2,}$)|(^((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d))(:(6553[0-5]|655[0-2]\\d|65[0-4]\\d{2}|6[0-4]\\d{3}|[1-5]\\d{4}|[1-9]\\d{0,3}))?$)"})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#Job', name: 'Job')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    JobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#JobList', name: 'JobList')
    JobResourceTags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#JobResourceTags', name: 'JobResourceTags')
    JobResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#JobResourceType', name: 'JobResourceType', traits: {"smithy.api#enum" => [{"value" => "PACKAGE", "name" => "PACKAGE"}]})
    JobTagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#JobTagsList', name: 'JobTagsList')
    JobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#JobType', name: 'JobType', traits: {"smithy.api#enum" => [{"value" => "OTA", "name" => "OTA"}, {"value" => "REBOOT", "name" => "REBOOT"}]})
    LastUpdatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.panorama#LastUpdatedTime', name: 'LastUpdatedTime')
    LatestAlternateSoftware = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#LatestAlternateSoftware', name: 'LatestAlternateSoftware', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    LatestDeviceJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#LatestDeviceJob', name: 'LatestDeviceJob')
    LatestSoftware = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#LatestSoftware', name: 'LatestSoftware', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    LeaseExpirationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.panorama#LeaseExpirationTime', name: 'LeaseExpirationTime')
    ListApplicationInstanceDependenciesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstanceDependenciesInput', name: 'ListApplicationInstanceDependenciesInput')
    ListApplicationInstanceDependenciesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstanceDependenciesOutput', name: 'ListApplicationInstanceDependenciesOutput')
    ListApplicationInstanceNodeInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstanceNodeInstancesInput', name: 'ListApplicationInstanceNodeInstancesInput')
    ListApplicationInstanceNodeInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstanceNodeInstancesOutput', name: 'ListApplicationInstanceNodeInstancesOutput')
    ListApplicationInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstancesInput', name: 'ListApplicationInstancesInput')
    ListApplicationInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListApplicationInstancesOutput', name: 'ListApplicationInstancesOutput')
    ListDevicesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListDevicesInput', name: 'ListDevicesInput')
    ListDevicesJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListDevicesJobsInput', name: 'ListDevicesJobsInput')
    ListDevicesJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListDevicesJobsOutput', name: 'ListDevicesJobsOutput')
    ListDevicesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListDevicesOutput', name: 'ListDevicesOutput')
    ListDevicesSortBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ListDevicesSortBy', name: 'ListDevicesSortBy', traits: {"smithy.api#enum" => [{"value" => "DEVICE_ID", "name" => "DEVICE_ID"}, {"value" => "CREATED_TIME", "name" => "CREATED_TIME"}, {"value" => "NAME", "name" => "NAME"}, {"value" => "DEVICE_AGGREGATED_STATUS", "name" => "DEVICE_AGGREGATED_STATUS"}]})
    ListNodeFromTemplateJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListNodeFromTemplateJobsInput', name: 'ListNodeFromTemplateJobsInput')
    ListNodeFromTemplateJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListNodeFromTemplateJobsOutput', name: 'ListNodeFromTemplateJobsOutput')
    ListNodesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListNodesInput', name: 'ListNodesInput')
    ListNodesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListNodesOutput', name: 'ListNodesOutput')
    ListPackageImportJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListPackageImportJobsInput', name: 'ListPackageImportJobsInput')
    ListPackageImportJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListPackageImportJobsOutput', name: 'ListPackageImportJobsOutput')
    ListPackagesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListPackagesInput', name: 'ListPackagesInput')
    ListPackagesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListPackagesOutput', name: 'ListPackagesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ManifestOverridesPayload = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.panorama#ManifestOverridesPayload', name: 'ManifestOverridesPayload')
    ManifestOverridesPayloadData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ManifestOverridesPayloadData', name: 'ManifestOverridesPayloadData', traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}, "smithy.api#pattern" => "^.*$"})
    ManifestPayload = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.panorama#ManifestPayload', name: 'ManifestPayload')
    ManifestPayloadData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ManifestPayloadData', name: 'ManifestPayloadData', traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}, "smithy.api#pattern" => "^.+$"})
    MarkLatestPatch = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.panorama#MarkLatestPatch', name: 'MarkLatestPatch', traits: {"smithy.api#default" => false})
    Mask = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Mask', name: 'Mask', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    MaxConnections = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.panorama#MaxConnections', name: 'MaxConnections', traits: {"smithy.api#default" => 0})
    MaxSize25 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.panorama#MaxSize25', name: 'MaxSize25', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 25}})
    NameFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NameFilter', name: 'NameFilter')
    NetworkConnectionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NetworkConnectionStatus', name: 'NetworkConnectionStatus', traits: {"smithy.api#enum" => [{"value" => "CONNECTED", "name" => "CONNECTED"}, {"value" => "NOT_CONNECTED", "name" => "NOT_CONNECTED"}, {"value" => "CONNECTING", "name" => "CONNECTING"}]})
    NetworkPayload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NetworkPayload', name: 'NetworkPayload')
    NetworkStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NetworkStatus', name: 'NetworkStatus')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.+$"})
    Node = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#Node', name: 'Node')
    NodeAssetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeAssetName', name: 'NodeAssetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeCategory', name: 'NodeCategory', traits: {"smithy.api#enum" => [{"value" => "BUSINESS_LOGIC", "name" => "BUSINESS_LOGIC"}, {"value" => "ML_MODEL", "name" => "ML_MODEL"}, {"value" => "MEDIA_SOURCE", "name" => "MEDIA_SOURCE"}, {"value" => "MEDIA_SINK", "name" => "MEDIA_SINK"}]})
    NodeFromTemplateJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeFromTemplateJob', name: 'NodeFromTemplateJob')
    NodeFromTemplateJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#NodeFromTemplateJobList', name: 'NodeFromTemplateJobList')
    NodeFromTemplateJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeFromTemplateJobStatus', name: 'NodeFromTemplateJobStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    NodeFromTemplateJobStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeFromTemplateJobStatusMessage', name: 'NodeFromTemplateJobStatusMessage')
    NodeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeId', name: 'NodeId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]+$"})
    NodeInputPort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeInputPort', name: 'NodeInputPort')
    NodeInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeInstance', name: 'NodeInstance')
    NodeInstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeInstanceId', name: 'NodeInstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeInstanceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeInstanceStatus', name: 'NodeInstanceStatus', traits: {"smithy.api#enum" => [{"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "NOT_AVAILABLE", "name" => "NOT_AVAILABLE"}, {"value" => "PAUSED", "name" => "PAUSED"}]})
    NodeInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#NodeInstances', name: 'NodeInstances')
    NodeInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeInterface', name: 'NodeInterface')
    NodeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeName', name: 'NodeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodeOutputPort = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeOutputPort', name: 'NodeOutputPort')
    NodePackageArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodePackageArn', name: 'NodePackageArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NodePackageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodePackageId', name: 'NodePackageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\/]+$"})
    NodePackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodePackageName', name: 'NodePackageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    NodePackagePatchVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodePackagePatchVersion', name: 'NodePackagePatchVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    NodePackageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodePackageVersion', name: 'NodePackageVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([0-9]+)\\.([0-9]+)$"})
    NodeSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NodeSignal', name: 'NodeSignal')
    NodeSignalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#NodeSignalList', name: 'NodeSignalList', traits: {"smithy.api#length" => {"min" => 1}})
    NodeSignalValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NodeSignalValue', name: 'NodeSignalValue', traits: {"smithy.api#enum" => [{"value" => "PAUSE", "name" => "PAUSE"}, {"value" => "RESUME", "name" => "RESUME"}]})
    NodesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#NodesList', name: 'NodesList')
    NtpPayload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NtpPayload', name: 'NtpPayload')
    NtpServerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#NtpServerList', name: 'NtpServerList', traits: {"smithy.api#length" => {"max" => 5}})
    NtpServerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#NtpServerName', name: 'NtpServerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NtpStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#NtpStatus', name: 'NtpStatus')
    OTAJobConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#OTAJobConfig', name: 'OTAJobConfig')
    Object = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Object', name: 'Object')
    ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ObjectKey', name: 'ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    OutPutS3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#OutPutS3Location', name: 'OutPutS3Location')
    OutputPortList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#OutputPortList', name: 'OutputPortList')
    PackageImportJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageImportJob', name: 'PackageImportJob')
    PackageImportJobInputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageImportJobInputConfig', name: 'PackageImportJobInputConfig')
    PackageImportJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#PackageImportJobList', name: 'PackageImportJobList')
    PackageImportJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageImportJobOutput', name: 'PackageImportJobOutput')
    PackageImportJobOutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageImportJobOutputConfig', name: 'PackageImportJobOutputConfig')
    PackageImportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageImportJobStatus', name: 'PackageImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    PackageImportJobStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageImportJobStatusMessage', name: 'PackageImportJobStatusMessage')
    PackageImportJobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageImportJobType', name: 'PackageImportJobType', traits: {"smithy.api#enum" => [{"value" => "NODE_PACKAGE_VERSION", "name" => "NODE_PACKAGE_VERSION"}, {"value" => "MARKETPLACE_NODE_PACKAGE_VERSION", "name" => "MARKETPLACE_NODE_PACKAGE_VERSION"}]})
    PackageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#PackageList', name: 'PackageList')
    PackageListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageListItem', name: 'PackageListItem')
    PackageObject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageObject', name: 'PackageObject')
    PackageObjects = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#PackageObjects', name: 'PackageObjects')
    PackageOwnerAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageOwnerAccount', name: 'PackageOwnerAccount', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[0-9a-z\\_]+$"})
    PackageVersionInputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageVersionInputConfig', name: 'PackageVersionInputConfig')
    PackageVersionOutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#PackageVersionOutputConfig', name: 'PackageVersionOutputConfig')
    PackageVersionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageVersionStatus', name: 'PackageVersionStatus', traits: {"smithy.api#enum" => [{"value" => "REGISTER_PENDING", "name" => "REGISTER_PENDING"}, {"value" => "REGISTER_COMPLETED", "name" => "REGISTER_COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}]})
    PackageVersionStatusDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PackageVersionStatusDescription', name: 'PackageVersionStatusDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PortDefaultValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PortDefaultValue', name: 'PortDefaultValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PortName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PortName', name: 'PortName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_]+$"})
    PortType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PortType', name: 'PortType', traits: {"smithy.api#enum" => [{"value" => "BOOLEAN", "name" => "BOOLEAN"}, {"value" => "STRING", "name" => "STRING"}, {"value" => "INT32", "name" => "INT32"}, {"value" => "FLOAT32", "name" => "FLOAT32"}, {"value" => "MEDIA", "name" => "MEDIA"}]})
    PrincipalArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#PrincipalArn', name: 'PrincipalArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:iam::[0-9]{12}:[a-zA-Z0-9+=,.@\\-_/]+$"})
    PrincipalArnsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#PrincipalArnsList', name: 'PrincipalArnsList')
    ProvisionDeviceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ProvisionDeviceInput', name: 'ProvisionDeviceInput')
    ProvisionDeviceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ProvisionDeviceOutput', name: 'ProvisionDeviceOutput')
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    RegisterPackageVersionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#RegisterPackageVersionInput', name: 'RegisterPackageVersionInput')
    RegisterPackageVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#RegisterPackageVersionOutput', name: 'RegisterPackageVersionOutput')
    RemoveApplicationInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#RemoveApplicationInstanceInput', name: 'RemoveApplicationInstanceInput')
    RemoveApplicationInstanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#RemoveApplicationInstanceOutput', name: 'RemoveApplicationInstanceOutput')
    ReportedRuntimeContextState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ReportedRuntimeContextState', name: 'ReportedRuntimeContextState')
    ReportedRuntimeContextStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#ReportedRuntimeContextStates', name: 'ReportedRuntimeContextStates')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.panorama#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    RuntimeContextName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#RuntimeContextName', name: 'RuntimeContextName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    RuntimeRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#RuntimeRoleArn', name: 'RuntimeRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:iam::[0-9]{12}:role/.+$"})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#S3Location', name: 'S3Location')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SignalApplicationInstanceNodeInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#SignalApplicationInstanceNodeInstancesInput', name: 'SignalApplicationInstanceNodeInstancesInput')
    SignalApplicationInstanceNodeInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#SignalApplicationInstanceNodeInstancesOutput', name: 'SignalApplicationInstanceNodeInstancesOutput')
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING"}]})
    StaticIpConnectionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#StaticIpConnectionInfo', name: 'StaticIpConnectionInfo')
    StatusFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#StatusFilter', name: 'StatusFilter', traits: {"smithy.api#enum" => [{"value" => "DEPLOYMENT_SUCCEEDED", "name" => "DEPLOYMENT_SUCCEEDED"}, {"value" => "DEPLOYMENT_ERROR", "name" => "DEPLOYMENT_ERROR"}, {"value" => "REMOVAL_SUCCEEDED", "name" => "REMOVAL_SUCCEEDED"}, {"value" => "REMOVAL_FAILED", "name" => "REMOVAL_FAILED"}, {"value" => "PROCESSING_DEPLOYMENT", "name" => "PROCESSING_DEPLOYMENT"}, {"value" => "PROCESSING_REMOVAL", "name" => "PROCESSING_REMOVAL"}, {"value" => "DEPLOYMENT_FAILED", "name" => "DEPLOYMENT_FAILED"}]})
    StorageLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#StorageLocation', name: 'StorageLocation')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#String', name: 'String')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.panorama#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TemplateKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#TemplateKey', name: 'TemplateKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$"})
    TemplateParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.panorama#TemplateParametersMap', name: 'TemplateParametersMap')
    TemplateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#TemplateType', name: 'TemplateType', traits: {"smithy.api#enum" => [{"value" => "RTSP_CAMERA_STREAM", "name" => "RTSP_CAMERA_STREAM"}]})
    TemplateValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#TemplateValue', name: 'TemplateValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.panorama#TimeStamp', name: 'TimeStamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.+$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCreatedTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.panorama#UpdateCreatedTime', name: 'UpdateCreatedTime')
    UpdateDeviceMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#UpdateDeviceMetadataInput', name: 'UpdateDeviceMetadataInput')
    UpdateDeviceMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#UpdateDeviceMetadataOutput', name: 'UpdateDeviceMetadataOutput')
    UpdateProgress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#UpdateProgress', name: 'UpdateProgress', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "VERIFYING", "name" => "VERIFYING"}, {"value" => "REBOOTING", "name" => "REBOOTING"}, {"value" => "DOWNLOADING", "name" => "DOWNLOADING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionErrorArgument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ValidationExceptionErrorArgument', name: 'ValidationExceptionErrorArgument')
    ValidationExceptionErrorArgumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#ValidationExceptionErrorArgumentList', name: 'ValidationExceptionErrorArgumentList')
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.panorama#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.panorama#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN_OPERATION", "name" => "UNKNOWN_OPERATION"}, {"value" => "CANNOT_PARSE", "name" => "CANNOT_PARSE"}, {"value" => "FIELD_VALIDATION_FAILED", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "OTHER", "name" => "OTHER"}]})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.panorama#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlternateSoftwareMetadata.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The appliance software version.</p>"}))
    AlternateSoftwareMetadata.type = Types::AlternateSoftwareMetadata
    AlternateSoftwares.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateSoftwareMetadata)
    ApplicationInstance.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application instance's name.</p>"}))
    ApplicationInstance.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>"}))
    ApplicationInstance.add_member(:default_runtime_context_device, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: 'DefaultRuntimeContextDevice', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    ApplicationInstance.add_member(:default_runtime_context_device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DefaultRuntimeContextDeviceName', traits: {"smithy.api#documentation" => "<p>The device's name.</p>"}))
    ApplicationInstance.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The application instance's description.</p>"}))
    ApplicationInstance.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The application instance's status.</p>"}))
    ApplicationInstance.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceHealthStatus, location_name: 'HealthStatus', traits: {"smithy.api#documentation" => "<p>The application instance's health status.</p>"}))
    ApplicationInstance.add_member(:status_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceStatusDescription, location_name: 'StatusDescription', traits: {"smithy.api#documentation" => "<p>The application instance's status description.</p>"}))
    ApplicationInstance.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the application instance was created.</p>"}))
    ApplicationInstance.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The application instance's ARN.</p>"}))
    ApplicationInstance.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The application instance's tags.</p>"}))
    ApplicationInstance.add_member(:runtime_context_states, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportedRuntimeContextStates, location_name: 'RuntimeContextStates', traits: {"smithy.api#documentation" => "<p>The application's state.</p>"}))
    ApplicationInstance.type = Types::ApplicationInstance
    ApplicationInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstance)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource's ID.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource's type.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:error_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorId', traits: {"smithy.api#documentation" => "<p>A unique ID for the error.</p>"}))
    ConflictException.add_member(:error_arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionErrorArgumentList, location_name: 'ErrorArguments', traits: {"smithy.api#documentation" => "<p>A list of attributes that led to the exception and their values.</p>"}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionErrorArgument.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The error argument's name.</p>", "smithy.api#required" => {}}))
    ConflictExceptionErrorArgument.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The error argument's value.</p>", "smithy.api#required" => {}}))
    ConflictExceptionErrorArgument.type = Types::ConflictExceptionErrorArgument
    ConflictExceptionErrorArgumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionErrorArgument)
    CreateApplicationInstanceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the application instance.</p>"}))
    CreateApplicationInstanceInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the application instance.</p>"}))
    CreateApplicationInstanceInput.add_member(:manifest_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestPayload, location_name: 'ManifestPayload', traits: {"smithy.api#documentation" => "<p>The application's manifest document.</p>", "smithy.api#required" => {}}))
    CreateApplicationInstanceInput.add_member(:manifest_overrides_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestOverridesPayload, location_name: 'ManifestOverridesPayload', traits: {"smithy.api#documentation" => "<p>Setting overrides for the application manifest.</p>"}))
    CreateApplicationInstanceInput.add_member(:application_instance_id_to_replace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceIdToReplace', traits: {"smithy.api#documentation" => "<p>The ID of an application instance to replace with the new instance.</p>"}))
    CreateApplicationInstanceInput.add_member(:runtime_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeRoleArn, location_name: 'RuntimeRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of a runtime role for the application instance.</p>"}))
    CreateApplicationInstanceInput.add_member(:default_runtime_context_device, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: 'DefaultRuntimeContextDevice', traits: {"smithy.api#documentation" => "<p>A device's ID.</p>", "smithy.api#required" => {}}))
    CreateApplicationInstanceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the application instance.</p>"}))
    CreateApplicationInstanceInput.type = Types::CreateApplicationInstanceInput
    CreateApplicationInstanceOutput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>", "smithy.api#required" => {}}))
    CreateApplicationInstanceOutput.type = Types::CreateApplicationInstanceOutput
    CreateJobForDevicesInput.add_member(:device_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceIdList, location_name: 'DeviceIds', traits: {"smithy.api#documentation" => "<p>ID of target device.</p>", "smithy.api#required" => {}}))
    CreateJobForDevicesInput.add_member(:device_job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceJobConfig, location_name: 'DeviceJobConfig', traits: {"smithy.api#documentation" => "<p>Configuration settings for a software update job.</p>"}))
    CreateJobForDevicesInput.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The type of job to run.</p>", "smithy.api#required" => {}}))
    CreateJobForDevicesInput.type = Types::CreateJobForDevicesInput
    CreateJobForDevicesOutput.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'Jobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>", "smithy.api#required" => {}}))
    CreateJobForDevicesOutput.type = Types::CreateJobForDevicesOutput
    CreateNodeFromTemplateJobInput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The type of node.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:output_package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'OutputPackageName', traits: {"smithy.api#documentation" => "<p>An output package name for the node.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:output_package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'OutputPackageVersion', traits: {"smithy.api#documentation" => "<p>An output package version for the node.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>A name for the node.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:node_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'NodeDescription', traits: {"smithy.api#documentation" => "<p>A description for the node.</p>"}))
    CreateNodeFromTemplateJobInput.add_member(:template_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParametersMap, location_name: 'TemplateParameters', traits: {"smithy.api#documentation" => "<p>Template parameters for the node.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobInput.add_member(:job_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTagsList, location_name: 'JobTags', traits: {"smithy.api#documentation" => "<p>Tags for the job.</p>"}))
    CreateNodeFromTemplateJobInput.type = Types::CreateNodeFromTemplateJobInput
    CreateNodeFromTemplateJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    CreateNodeFromTemplateJobOutput.type = Types::CreateNodeFromTemplateJobOutput
    CreatePackageImportJobInput.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>A job type for the package import job.</p>", "smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:input_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobInputConfig, location_name: 'InputConfig', traits: {"smithy.api#documentation" => "<p>An input config for the package import job.</p>", "smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>An output config for the package import job.</p>", "smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A client token for the package import job.</p>", "smithy.api#required" => {}}))
    CreatePackageImportJobInput.add_member(:job_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTagsList, location_name: 'JobTags', traits: {"smithy.api#documentation" => "<p>Tags for the package import job.</p>"}))
    CreatePackageImportJobInput.type = Types::CreatePackageImportJobInput
    CreatePackageImportJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    CreatePackageImportJobOutput.type = Types::CreatePackageImportJobOutput
    CreatePackageInput.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>A name for the package.</p>", "smithy.api#required" => {}}))
    CreatePackageInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the package.</p>"}))
    CreatePackageInput.type = Types::CreatePackageInput
    CreatePackageOutput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>"}))
    CreatePackageOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The package's ARN.</p>"}))
    CreatePackageOutput.add_member(:storage_location, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLocation, location_name: 'StorageLocation', traits: {"smithy.api#documentation" => "<p>The package's storage location.</p>", "smithy.api#required" => {}}))
    CreatePackageOutput.type = Types::CreatePackageOutput
    DeleteDeviceInput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceInput.type = Types::DeleteDeviceInput
    DeleteDeviceOutput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    DeleteDeviceOutput.type = Types::DeleteDeviceOutput
    DeletePackageInput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePackageInput.add_member(:force_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ForceDelete', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Delete the package even if it has artifacts stored in its access point. Deletes the package's artifacts from\n      Amazon S3.</p>", "smithy.api#httpQuery" => "ForceDelete"}))
    DeletePackageInput.type = Types::DeletePackageInput
    DeletePackageOutput.type = Types::DeletePackageOutput
    DeregisterPackageVersionInput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>An owner account.</p>", "smithy.api#httpQuery" => "OwnerAccount"}))
    DeregisterPackageVersionInput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>A package ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>A package version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>A patch version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterPackageVersionInput.add_member(:updated_latest_patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'UpdatedLatestPatchVersion', traits: {"smithy.api#documentation" => "<p>If the version was marked latest, the new version to maker as latest.</p>", "smithy.api#httpQuery" => "UpdatedLatestPatchVersion"}))
    DeregisterPackageVersionInput.type = Types::DeregisterPackageVersionInput
    DeregisterPackageVersionOutput.type = Types::DeregisterPackageVersionOutput
    DescribeApplicationInstanceDetailsInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationInstanceDetailsInput.type = Types::DescribeApplicationInstanceDetailsInput
    DescribeApplicationInstanceDetailsOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application instance's name.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The application instance's description.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:default_runtime_context_device, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: 'DefaultRuntimeContextDevice', traits: {"smithy.api#documentation" => "<p>The application instance's default runtime context device.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:manifest_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestPayload, location_name: 'ManifestPayload', traits: {"smithy.api#documentation" => "<p>The application instance's configuration manifest.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:manifest_overrides_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestOverridesPayload, location_name: 'ManifestOverridesPayload', traits: {"smithy.api#documentation" => "<p>Parameter overrides for the configuration manifest.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:application_instance_id_to_replace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceIdToReplace', traits: {"smithy.api#documentation" => "<p>The ID of the application instance that this instance replaced.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the application instance was created.</p>"}))
    DescribeApplicationInstanceDetailsOutput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>"}))
    DescribeApplicationInstanceDetailsOutput.type = Types::DescribeApplicationInstanceDetailsOutput
    DescribeApplicationInstanceInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationInstanceInput.type = Types::DescribeApplicationInstanceInput
    DescribeApplicationInstanceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application instance's name.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The application instance's description.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:default_runtime_context_device, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultRuntimeContextDevice, location_name: 'DefaultRuntimeContextDevice', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:default_runtime_context_device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DefaultRuntimeContextDeviceName', traits: {"smithy.api#documentation" => "<p>The device's bane.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:application_instance_id_to_replace, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceIdToReplace', traits: {"smithy.api#documentation" => "<p>The ID of the application instance that this instance replaced.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:runtime_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeRoleArn, location_name: 'RuntimeRoleArn', traits: {"smithy.api#documentation" => "<p>The application instance's runtime role ARN.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The application instance's status.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceHealthStatus, location_name: 'HealthStatus', traits: {"smithy.api#documentation" => "<p>The application instance's health status.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:status_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceStatusDescription, location_name: 'StatusDescription', traits: {"smithy.api#documentation" => "<p>The application instance's status description.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the application instance was created.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The application instance was updated.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The application instance's ARN.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The application instance's tags.</p>"}))
    DescribeApplicationInstanceOutput.add_member(:runtime_context_states, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportedRuntimeContextStates, location_name: 'RuntimeContextStates', traits: {"smithy.api#documentation" => "<p>The application instance's state.</p>"}))
    DescribeApplicationInstanceOutput.type = Types::DescribeApplicationInstanceOutput
    DescribeDeviceInput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceInput.type = Types::DescribeDeviceInput
    DescribeDeviceJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceJobInput.type = Types::DescribeDeviceJobInput
    DescribeDeviceJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>"}))
    DescribeDeviceJobOutput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    DescribeDeviceJobOutput.add_member(:device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceArn, location_name: 'DeviceArn', traits: {"smithy.api#documentation" => "<p>The device's ARN.</p>"}))
    DescribeDeviceJobOutput.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The device's name.</p>"}))
    DescribeDeviceJobOutput.add_member(:device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'DeviceType', traits: {"smithy.api#documentation" => "<p>The device's type.</p>"}))
    DescribeDeviceJobOutput.add_member(:image_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageVersion, location_name: 'ImageVersion', traits: {"smithy.api#documentation" => "<p>For an OTA job, the target version of the device software.</p>"}))
    DescribeDeviceJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgress, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>"}))
    DescribeDeviceJobOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>"}))
    DescribeDeviceJobOutput.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>"}))
    DescribeDeviceJobOutput.type = Types::DescribeDeviceJobOutput
    DescribeDeviceOutput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    DescribeDeviceOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The device's name.</p>"}))
    DescribeDeviceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The device's ARN.</p>"}))
    DescribeDeviceOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The device's description.</p>"}))
    DescribeDeviceOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The device's type.</p>"}))
    DescribeDeviceOutput.add_member(:device_connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceConnectionStatus, location_name: 'DeviceConnectionStatus', traits: {"smithy.api#documentation" => "<p>The device's connection status.</p>"}))
    DescribeDeviceOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the device was created.</p>"}))
    DescribeDeviceOutput.add_member(:provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStatus, location_name: 'ProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The device's provisioning status.</p>"}))
    DescribeDeviceOutput.add_member(:latest_software, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestSoftware, location_name: 'LatestSoftware', traits: {"smithy.api#documentation" => "<p>The latest software version available for the device.</p>"}))
    DescribeDeviceOutput.add_member(:current_software, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentSoftware, location_name: 'CurrentSoftware', traits: {"smithy.api#documentation" => "<p>The device's current software version.</p>"}))
    DescribeDeviceOutput.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSerialNumber, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The device's serial number.</p>"}))
    DescribeDeviceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The device's tags.</p>"}))
    DescribeDeviceOutput.add_member(:networking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkPayload, location_name: 'NetworkingConfiguration', traits: {"smithy.api#documentation" => "<p>The device's networking configuration.</p>"}))
    DescribeDeviceOutput.add_member(:current_networking_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkStatus, location_name: 'CurrentNetworkingStatus', traits: {"smithy.api#documentation" => "<p>The device's networking status.</p>"}))
    DescribeDeviceOutput.add_member(:lease_expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LeaseExpirationTime, location_name: 'LeaseExpirationTime', traits: {"smithy.api#documentation" => "<p>The device's lease expiration time.</p>"}))
    DescribeDeviceOutput.add_member(:alternate_softwares, Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateSoftwares, location_name: 'AlternateSoftwares', traits: {"smithy.api#documentation" => "<p>Beta software releases available for the device.</p>"}))
    DescribeDeviceOutput.add_member(:latest_alternate_software, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestAlternateSoftware, location_name: 'LatestAlternateSoftware', traits: {"smithy.api#documentation" => "<p>The most recent beta software release.</p>"}))
    DescribeDeviceOutput.add_member(:brand, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceBrand, location_name: 'Brand', traits: {"smithy.api#documentation" => "<p>The device's maker.</p>"}))
    DescribeDeviceOutput.add_member(:latest_device_job, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestDeviceJob, location_name: 'LatestDeviceJob', traits: {"smithy.api#documentation" => "<p>A device's latest job. Includes the target image version, and the job status.</p>"}))
    DescribeDeviceOutput.add_member(:device_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location_name: 'DeviceAggregatedStatus', traits: {"smithy.api#documentation" => "<p>A device's aggregated status. Including the device's connection status, provisioning status, and lease status.</p>"}))
    DescribeDeviceOutput.type = Types::DescribeDeviceOutput
    DescribeNodeFromTemplateJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobInput.type = Types::DescribeNodeFromTemplateJobInput
    DescribeNodeFromTemplateJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:output_package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'OutputPackageName', traits: {"smithy.api#documentation" => "<p>The job's output package name.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:output_package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'OutputPackageVersion', traits: {"smithy.api#documentation" => "<p>The job's output package version.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>The node's name.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:node_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'NodeDescription', traits: {"smithy.api#documentation" => "<p>The node's description.</p>"}))
    DescribeNodeFromTemplateJobOutput.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The job's template type.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:template_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateParametersMap, location_name: 'TemplateParameters', traits: {"smithy.api#documentation" => "<p>The job's template parameters.</p>", "smithy.api#required" => {}}))
    DescribeNodeFromTemplateJobOutput.add_member(:job_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTagsList, location_name: 'JobTags', traits: {"smithy.api#documentation" => "<p>The job's tags.</p>"}))
    DescribeNodeFromTemplateJobOutput.type = Types::DescribeNodeFromTemplateJobOutput
    DescribeNodeInput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The node's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodeInput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The account ID of the node's owner.</p>", "smithy.api#httpQuery" => "OwnerAccount"}))
    DescribeNodeInput.type = Types::DescribeNodeInput
    DescribeNodeOutput.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The node's ID.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The node's name.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The node's category.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The account ID of the node's owner.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The node's package name.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The node's package ID.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'PackageArn', traits: {"smithy.api#documentation" => "<p>The node's ARN.</p>"}))
    DescribeNodeOutput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The node's package version.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The node's patch version.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:node_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInterface, location_name: 'NodeInterface', traits: {"smithy.api#documentation" => "<p>The node's interface.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssetName, location_name: 'AssetName', traits: {"smithy.api#documentation" => "<p>The node's asset name.</p>"}))
    DescribeNodeOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The node's description.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the node was created.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the node was updated.</p>", "smithy.api#required" => {}}))
    DescribeNodeOutput.type = Types::DescribeNodeOutput
    DescribePackageImportJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageImportJobInput.type = Types::DescribePackageImportJobInput
    DescribePackageImportJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The job's client token.</p>"}))
    DescribePackageImportJobOutput.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:input_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobInputConfig, location_name: 'InputConfig', traits: {"smithy.api#documentation" => "<p>The job's input config.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>The job's output config.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobOutput, location_name: 'Output', traits: {"smithy.api#documentation" => "<p>The job's output.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>", "smithy.api#required" => {}}))
    DescribePackageImportJobOutput.add_member(:job_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTagsList, location_name: 'JobTags', traits: {"smithy.api#documentation" => "<p>The job's tags.</p>"}))
    DescribePackageImportJobOutput.type = Types::DescribePackageImportJobOutput
    DescribePackageInput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageInput.type = Types::DescribePackageInput
    DescribePackageOutput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The package's name.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The package's ARN.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:storage_location, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLocation, location_name: 'StorageLocation', traits: {"smithy.api#documentation" => "<p>The package's storage location.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:read_access_principal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnsList, location_name: 'ReadAccessPrincipalArns', traits: {"smithy.api#documentation" => "<p>ARNs of accounts that have read access to the package.</p>"}))
    DescribePackageOutput.add_member(:write_access_principal_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnsList, location_name: 'WriteAccessPrincipalArns', traits: {"smithy.api#documentation" => "<p>ARNs of accounts that have write access to the package.</p>"}))
    DescribePackageOutput.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the package was created.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The package's tags.</p>", "smithy.api#required" => {}}))
    DescribePackageOutput.type = Types::DescribePackageOutput
    DescribePackageVersionInput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The version's owner account.</p>", "smithy.api#httpQuery" => "OwnerAccount"}))
    DescribePackageVersionInput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The version's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageVersionInput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The version's version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePackageVersionInput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The version's patch version.</p>", "smithy.api#httpQuery" => "PatchVersion"}))
    DescribePackageVersionInput.type = Types::DescribePackageVersionInput
    DescribePackageVersionOutput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The account ID of the version's owner.</p>"}))
    DescribePackageVersionOutput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The version's ID.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'PackageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the package.</p>"}))
    DescribePackageVersionOutput.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The version's name.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The version's version.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The version's patch version.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:is_latest_patch, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsLatestPatch', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the version is the latest available.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The version's status.</p>", "smithy.api#required" => {}}))
    DescribePackageVersionOutput.add_member(:status_description, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatusDescription, location_name: 'StatusDescription', traits: {"smithy.api#documentation" => "<p>The version's status description.</p>"}))
    DescribePackageVersionOutput.add_member(:registered_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'RegisteredTime', traits: {"smithy.api#documentation" => "<p>The version's registered time.</p>"}))
    DescribePackageVersionOutput.type = Types::DescribePackageVersionOutput
    Device.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    Device.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The device's name.</p>"}))
    Device.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the device was created.</p>"}))
    Device.add_member(:provisioning_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStatus, location_name: 'ProvisioningStatus', traits: {"smithy.api#documentation" => "<p>The device's provisioning status.</p>"}))
    Device.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the device was updated.</p>"}))
    Device.add_member(:lease_expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LeaseExpirationTime, location_name: 'LeaseExpirationTime', traits: {"smithy.api#documentation" => "<p>The device's lease expiration time.</p>"}))
    Device.add_member(:brand, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceBrand, location_name: 'Brand', traits: {"smithy.api#documentation" => "<p>The device's maker.</p>"}))
    Device.add_member(:current_software, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentSoftware, location_name: 'CurrentSoftware', traits: {"smithy.api#documentation" => "<p>A device's current software.</p>"}))
    Device.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the device.</p>"}))
    Device.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The device's tags.</p>"}))
    Device.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The device's type.</p>"}))
    Device.add_member(:latest_device_job, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestDeviceJob, location_name: 'LatestDeviceJob', traits: {"smithy.api#documentation" => "<p>A device's latest job. Includes the target image version, and the update job status.</p>"}))
    Device.add_member(:device_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location_name: 'DeviceAggregatedStatus', traits: {"smithy.api#documentation" => "<p>A device's aggregated status. Including the device's connection status, provisioning status, and lease status.</p>"}))
    Device.type = Types::Device
    DeviceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId)
    DeviceJob.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The name of the target device</p>"}))
    DeviceJob.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the target device.</p>"}))
    DeviceJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>"}))
    DeviceJob.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>"}))
    DeviceJob.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>"}))
    DeviceJob.type = Types::DeviceJob
    DeviceJobConfig.add_member(:ota_job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OTAJobConfig, location_name: 'OTAJobConfig', traits: {"smithy.api#documentation" => "<p>A configuration for an over-the-air (OTA) upgrade. Required for OTA jobs.</p>"}))
    DeviceJobConfig.type = Types::DeviceJobConfig
    DeviceJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceJob)
    DeviceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Device)
    DnsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dns)
    EthernetPayload.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'ConnectionType', traits: {"smithy.api#documentation" => "<p>How the device gets an IP address.</p>", "smithy.api#required" => {}}))
    EthernetPayload.add_member(:static_ip_connection_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StaticIpConnectionInfo, location_name: 'StaticIpConnectionInfo', traits: {"smithy.api#documentation" => "<p>Network configuration for a static IP connection.</p>"}))
    EthernetPayload.type = Types::EthernetPayload
    EthernetStatus.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The device's IP address.</p>"}))
    EthernetStatus.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>The device's connection status.</p>"}))
    EthernetStatus.add_member(:hw_address, Smithy::Schema::Shapes::ShapeRef.new(shape: HwAddress, location_name: 'HwAddress', traits: {"smithy.api#documentation" => "<p>The device's physical address.</p>"}))
    EthernetStatus.type = Types::EthernetStatus
    InputPortList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInputPort)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds a client should wait before retrying the call.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>"}))
    Job.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The target device's ID.</p>"}))
    Job.type = Types::Job
    JobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    JobResourceTags.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>", "smithy.api#required" => {}}))
    JobResourceTags.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The job's tags.</p>", "smithy.api#required" => {}}))
    JobResourceTags.type = Types::JobResourceTags
    JobTagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobResourceTags)
    LatestDeviceJob.add_member(:image_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageVersion, location_name: 'ImageVersion', traits: {"smithy.api#documentation" => "<p>The target version of the device software.</p>"}))
    LatestDeviceJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgress, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the latest device job.</p>"}))
    LatestDeviceJob.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>"}))
    LatestDeviceJob.type = Types::LatestDeviceJob
    ListApplicationInstanceDependenciesInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The application instance's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationInstanceDependenciesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of application instance dependencies to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstanceDependenciesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstanceDependenciesInput.type = Types::ListApplicationInstanceDependenciesInput
    ListApplicationInstanceDependenciesOutput.add_member(:package_objects, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageObjects, location_name: 'PackageObjects', traits: {"smithy.api#documentation" => "<p>A list of package objects.</p>"}))
    ListApplicationInstanceDependenciesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListApplicationInstanceDependenciesOutput.type = Types::ListApplicationInstanceDependenciesOutput
    ListApplicationInstanceNodeInstancesInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>The node instances' application instance ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationInstanceNodeInstancesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of node instances to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstanceNodeInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstanceNodeInstancesInput.type = Types::ListApplicationInstanceNodeInstancesInput
    ListApplicationInstanceNodeInstancesOutput.add_member(:node_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInstances, location_name: 'NodeInstances', traits: {"smithy.api#documentation" => "<p>A list of node instances.</p>"}))
    ListApplicationInstanceNodeInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListApplicationInstanceNodeInstancesOutput.type = Types::ListApplicationInstanceNodeInstancesOutput
    ListApplicationInstancesInput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The application instances' device ID.</p>", "smithy.api#httpQuery" => "deviceId"}))
    ListApplicationInstancesInput.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusFilter, location_name: 'StatusFilter', traits: {"smithy.api#documentation" => "<p>Only include instances with a specific status.</p>", "smithy.api#httpQuery" => "statusFilter"}))
    ListApplicationInstancesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of application instances to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationInstancesInput.type = Types::ListApplicationInstancesInput
    ListApplicationInstancesOutput.add_member(:application_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstances, location_name: 'ApplicationInstances', traits: {"smithy.api#documentation" => "<p>A list of application instances.</p>"}))
    ListApplicationInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListApplicationInstancesOutput.type = Types::ListApplicationInstancesOutput
    ListDevicesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDevicesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of devices to return in one page of results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListDevicesInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesSortBy, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The target column to be sorted on. Default column sort is CREATED_TIME.</p>", "smithy.api#httpQuery" => "SortBy"}))
    ListDevicesInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The sorting order for the returned list. SortOrder is DESCENDING by default based on CREATED_TIME. Otherwise, SortOrder is ASCENDING.</p>", "smithy.api#httpQuery" => "SortOrder"}))
    ListDevicesInput.add_member(:name_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: NameFilter, location_name: 'NameFilter', traits: {"smithy.api#documentation" => "<p>Filter based on device's name. Prefixes supported.</p>", "smithy.api#httpQuery" => "NameFilter"}))
    ListDevicesInput.add_member(:device_aggregated_status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceAggregatedStatus, location_name: 'DeviceAggregatedStatusFilter', traits: {"smithy.api#documentation" => "<p>Filter based on a device's status.</p>", "smithy.api#httpQuery" => "DeviceAggregatedStatusFilter"}))
    ListDevicesInput.type = Types::ListDevicesInput
    ListDevicesJobsInput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>Filter results by the job's target device ID.</p>", "smithy.api#httpQuery" => "DeviceId"}))
    ListDevicesJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDevicesJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of device jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListDevicesJobsInput.type = Types::ListDevicesJobsInput
    ListDevicesJobsOutput.add_member(:device_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceJobList, location_name: 'DeviceJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListDevicesJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListDevicesJobsOutput.type = Types::ListDevicesJobsOutput
    ListDevicesOutput.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceList, location_name: 'Devices', traits: {"smithy.api#documentation" => "<p>A list of devices.</p>", "smithy.api#required" => {}}))
    ListDevicesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListDevicesOutput.type = Types::ListDevicesOutput
    ListNodeFromTemplateJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListNodeFromTemplateJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of node from template jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListNodeFromTemplateJobsInput.type = Types::ListNodeFromTemplateJobsInput
    ListNodeFromTemplateJobsOutput.add_member(:node_from_template_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJobList, location_name: 'NodeFromTemplateJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>", "smithy.api#required" => {}}))
    ListNodeFromTemplateJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListNodeFromTemplateJobsOutput.type = Types::ListNodeFromTemplateJobsOutput
    ListNodesInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>Search for nodes by category.</p>", "smithy.api#httpQuery" => "category"}))
    ListNodesInput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>Search for nodes by the account ID of the nodes' owner.</p>", "smithy.api#httpQuery" => "ownerAccount"}))
    ListNodesInput.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>Search for nodes by name.</p>", "smithy.api#httpQuery" => "packageName"}))
    ListNodesInput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>Search for nodes by version.</p>", "smithy.api#httpQuery" => "packageVersion"}))
    ListNodesInput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>Search for nodes by patch version.</p>", "smithy.api#httpQuery" => "patchVersion"}))
    ListNodesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNodesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of nodes to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNodesInput.type = Types::ListNodesInput
    ListNodesOutput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: NodesList, location_name: 'Nodes', traits: {"smithy.api#documentation" => "<p>A list of nodes.</p>"}))
    ListNodesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListNodesOutput.type = Types::ListNodesOutput
    ListPackageImportJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListPackageImportJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of package import jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListPackageImportJobsInput.type = Types::ListPackageImportJobsInput
    ListPackageImportJobsOutput.add_member(:package_import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobList, location_name: 'PackageImportJobs', traits: {"smithy.api#documentation" => "<p>A list of package import jobs.</p>", "smithy.api#required" => {}}))
    ListPackageImportJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListPackageImportJobsOutput.type = Types::ListPackageImportJobsOutput
    ListPackagesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize25, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of packages to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPackagesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPackagesInput.type = Types::ListPackagesInput
    ListPackagesOutput.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageList, location_name: 'Packages', traits: {"smithy.api#documentation" => "<p>A list of packages.</p>"}))
    ListPackagesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListPackagesOutput.type = Types::ListPackagesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManifestOverridesPayload.add_member(:payload_data, Types::ManifestOverridesPayload::PayloadData, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestOverridesPayloadData, location_name: 'PayloadData', traits: {"smithy.api#documentation" => "<p>The overrides document.</p>"}))
    ManifestOverridesPayload.add_member(:unknown, Types::ManifestOverridesPayload::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ManifestOverridesPayload.type = Types::ManifestOverridesPayload
    ManifestPayload.add_member(:payload_data, Types::ManifestPayload::PayloadData, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestPayloadData, location_name: 'PayloadData', traits: {"smithy.api#documentation" => "<p>The application manifest.</p>"}))
    ManifestPayload.add_member(:unknown, Types::ManifestPayload::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ManifestPayload.type = Types::ManifestPayload
    NetworkPayload.add_member(:ethernet0, Smithy::Schema::Shapes::ShapeRef.new(shape: EthernetPayload, location_name: 'Ethernet0', traits: {"smithy.api#documentation" => "<p>Settings for Ethernet port 0.</p>"}))
    NetworkPayload.add_member(:ethernet1, Smithy::Schema::Shapes::ShapeRef.new(shape: EthernetPayload, location_name: 'Ethernet1', traits: {"smithy.api#documentation" => "<p>Settings for Ethernet port 1.</p>"}))
    NetworkPayload.add_member(:ntp, Smithy::Schema::Shapes::ShapeRef.new(shape: NtpPayload, location_name: 'Ntp', traits: {"smithy.api#documentation" => "<p>Network time protocol (NTP) server settings.</p>"}))
    NetworkPayload.type = Types::NetworkPayload
    NetworkStatus.add_member(:ethernet0_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EthernetStatus, location_name: 'Ethernet0Status', traits: {"smithy.api#documentation" => "<p>The status of Ethernet port 0.</p>"}))
    NetworkStatus.add_member(:ethernet1_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EthernetStatus, location_name: 'Ethernet1Status', traits: {"smithy.api#documentation" => "<p>The status of Ethernet port 1.</p>"}))
    NetworkStatus.add_member(:ntp_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NtpStatus, location_name: 'NtpStatus', traits: {"smithy.api#documentation" => "<p>Details about a network time protocol (NTP) server connection.</p>"}))
    NetworkStatus.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the network status changed.</p>"}))
    NetworkStatus.type = Types::NetworkStatus
    Node.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The node's ID.</p>", "smithy.api#required" => {}}))
    Node.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The node's name.</p>", "smithy.api#required" => {}}))
    Node.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeCategory, location_name: 'Category', traits: {"smithy.api#documentation" => "<p>The node's category.</p>", "smithy.api#required" => {}}))
    Node.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The account ID of the node's owner.</p>"}))
    Node.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The node's package name.</p>", "smithy.api#required" => {}}))
    Node.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The node's package ID.</p>", "smithy.api#required" => {}}))
    Node.add_member(:package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'PackageArn', traits: {"smithy.api#documentation" => "<p>The node's ARN.</p>"}))
    Node.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The node's package version.</p>", "smithy.api#required" => {}}))
    Node.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The node's patch version.</p>", "smithy.api#required" => {}}))
    Node.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The node's description.</p>"}))
    Node.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the node was created.</p>", "smithy.api#required" => {}}))
    Node.type = Types::Node
    NodeFromTemplateJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>"}))
    NodeFromTemplateJob.add_member(:template_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateType, location_name: 'TemplateType', traits: {"smithy.api#documentation" => "<p>The job's template type.</p>"}))
    NodeFromTemplateJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>"}))
    NodeFromTemplateJob.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJobStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    NodeFromTemplateJob.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>"}))
    NodeFromTemplateJob.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>The node's name.</p>"}))
    NodeFromTemplateJob.type = Types::NodeFromTemplateJob
    NodeFromTemplateJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeFromTemplateJob)
    NodeInputPort.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The input port's name.</p>"}))
    NodeInputPort.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The input port's description.</p>"}))
    NodeInputPort.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The input port's type.</p>"}))
    NodeInputPort.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PortDefaultValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>The input port's default value.</p>"}))
    NodeInputPort.add_member(:max_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConnections, location_name: 'MaxConnections', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The input port's max connections.</p>"}))
    NodeInputPort.type = Types::NodeInputPort
    NodeInstance.add_member(:node_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInstanceId, location_name: 'NodeInstanceId', traits: {"smithy.api#documentation" => "<p>The instance's ID.</p>", "smithy.api#required" => {}}))
    NodeInstance.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeId, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The node's ID.</p>"}))
    NodeInstance.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The instance's package name.</p>"}))
    NodeInstance.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The instance's package version.</p>"}))
    NodeInstance.add_member(:package_patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PackagePatchVersion', traits: {"smithy.api#documentation" => "<p>The instance's package patch version.</p>"}))
    NodeInstance.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>The instance's name.</p>"}))
    NodeInstance.add_member(:current_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInstanceStatus, location_name: 'CurrentStatus', traits: {"smithy.api#documentation" => "<p>The instance's current status.</p>", "smithy.api#required" => {}}))
    NodeInstance.type = Types::NodeInstance
    NodeInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInstance)
    NodeInterface.add_member(:inputs, Smithy::Schema::Shapes::ShapeRef.new(shape: InputPortList, location_name: 'Inputs', traits: {"smithy.api#documentation" => "<p>The node interface's inputs.</p>", "smithy.api#required" => {}}))
    NodeInterface.add_member(:outputs, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputPortList, location_name: 'Outputs', traits: {"smithy.api#documentation" => "<p>The node interface's outputs.</p>", "smithy.api#required" => {}}))
    NodeInterface.type = Types::NodeInterface
    NodeOutputPort.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PortName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The output port's name.</p>"}))
    NodeOutputPort.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The output port's description.</p>"}))
    NodeOutputPort.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PortType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The output port's type.</p>"}))
    NodeOutputPort.type = Types::NodeOutputPort
    NodeSignal.add_member(:node_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInstanceId, location_name: 'NodeInstanceId', traits: {"smithy.api#documentation" => "<p>The camera node's name, from the application manifest.</p>", "smithy.api#required" => {}}))
    NodeSignal.add_member(:signal, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSignalValue, location_name: 'Signal', traits: {"smithy.api#documentation" => "<p>The signal value.</p>", "smithy.api#required" => {}}))
    NodeSignal.type = Types::NodeSignal
    NodeSignalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSignal)
    NodesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Node)
    NtpPayload.add_member(:ntp_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: NtpServerList, location_name: 'NtpServers', traits: {"smithy.api#documentation" => "<p>NTP servers to use, in order of preference.</p>", "smithy.api#required" => {}}))
    NtpPayload.type = Types::NtpPayload
    NtpServerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressOrServerName)
    NtpStatus.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>The connection's status.</p>"}))
    NtpStatus.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the server.</p>"}))
    NtpStatus.add_member(:ntp_server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NtpServerName, location_name: 'NtpServerName', traits: {"smithy.api#documentation" => "<p>The domain name of the server.</p>"}))
    NtpStatus.type = Types::NtpStatus
    OTAJobConfig.add_member(:image_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageVersion, location_name: 'ImageVersion', traits: {"smithy.api#documentation" => "<p>The target version of the device software.</p>", "smithy.api#required" => {}}))
    OTAJobConfig.add_member(:allow_major_version_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowMajorVersionUpdate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to apply the update if it is a major version change.</p>"}))
    OTAJobConfig.type = Types::OTAJobConfig
    OutPutS3Location.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The object's bucket.</p>", "smithy.api#required" => {}}))
    OutPutS3Location.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#documentation" => "<p>The object's key.</p>", "smithy.api#required" => {}}))
    OutPutS3Location.type = Types::OutPutS3Location
    OutputPortList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeOutputPort)
    PackageImportJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>"}))
    PackageImportJob.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobType, location_name: 'JobType', traits: {"smithy.api#documentation" => "<p>The job's type.</p>"}))
    PackageImportJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>"}))
    PackageImportJob.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJobStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    PackageImportJob.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTime, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>"}))
    PackageImportJob.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>"}))
    PackageImportJob.type = Types::PackageImportJob
    PackageImportJobInputConfig.add_member(:package_version_input_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionInputConfig, location_name: 'PackageVersionInputConfig', traits: {"smithy.api#documentation" => "<p>The package version's input configuration.</p>"}))
    PackageImportJobInputConfig.type = Types::PackageImportJobInputConfig
    PackageImportJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageImportJob)
    PackageImportJobOutput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>", "smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The package's version.</p>", "smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The package's patch version.</p>", "smithy.api#required" => {}}))
    PackageImportJobOutput.add_member(:output_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutPutS3Location, location_name: 'OutputS3Location', traits: {"smithy.api#documentation" => "<p>The package's output location.</p>", "smithy.api#required" => {}}))
    PackageImportJobOutput.type = Types::PackageImportJobOutput
    PackageImportJobOutputConfig.add_member(:package_version_output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionOutputConfig, location_name: 'PackageVersionOutputConfig', traits: {"smithy.api#documentation" => "<p>The package version's output configuration.</p>"}))
    PackageImportJobOutputConfig.type = Types::PackageImportJobOutputConfig
    PackageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageListItem)
    PackageListItem.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>The package's ID.</p>"}))
    PackageListItem.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The package's name.</p>"}))
    PackageListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The package's ARN.</p>"}))
    PackageListItem.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>When the package was created.</p>"}))
    PackageListItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The package's tags.</p>"}))
    PackageListItem.type = Types::PackageListItem
    PackageObject.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The object's name.</p>", "smithy.api#required" => {}}))
    PackageObject.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The object's package version.</p>", "smithy.api#required" => {}}))
    PackageObject.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>The object's patch version.</p>", "smithy.api#required" => {}}))
    PackageObject.type = Types::PackageObject
    PackageObjects.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageObject)
    PackageVersionInputConfig.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3Location', traits: {"smithy.api#documentation" => "<p>A location in Amazon S3.</p>", "smithy.api#required" => {}}))
    PackageVersionInputConfig.type = Types::PackageVersionInputConfig
    PackageVersionOutputConfig.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageName, location_name: 'PackageName', traits: {"smithy.api#documentation" => "<p>The output's package name.</p>", "smithy.api#required" => {}}))
    PackageVersionOutputConfig.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>The output's package version.</p>", "smithy.api#required" => {}}))
    PackageVersionOutputConfig.add_member(:mark_latest, Smithy::Schema::Shapes::ShapeRef.new(shape: MarkLatestPatch, location_name: 'MarkLatest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates that the version is recommended for all users.</p>"}))
    PackageVersionOutputConfig.type = Types::PackageVersionOutputConfig
    PrincipalArnsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn)
    ProvisionDeviceInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the device.</p>", "smithy.api#required" => {}}))
    ProvisionDeviceInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the device.</p>"}))
    ProvisionDeviceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the device.</p>"}))
    ProvisionDeviceInput.add_member(:networking_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkPayload, location_name: 'NetworkingConfiguration', traits: {"smithy.api#documentation" => "<p>A networking configuration for the device.</p>"}))
    ProvisionDeviceInput.type = Types::ProvisionDeviceInput
    ProvisionDeviceOutput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    ProvisionDeviceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The device's ARN.</p>", "smithy.api#required" => {}}))
    ProvisionDeviceOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The device's status.</p>", "smithy.api#required" => {}}))
    ProvisionDeviceOutput.add_member(:certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificates, location_name: 'Certificates', traits: {"smithy.api#documentation" => "<p>The device's configuration bundle.</p>"}))
    ProvisionDeviceOutput.add_member(:iot_thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IotThingName, location_name: 'IotThingName', traits: {"smithy.api#documentation" => "<p>The device's IoT thing name.</p>"}))
    ProvisionDeviceOutput.type = Types::ProvisionDeviceOutput
    RegisterPackageVersionInput.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOwnerAccount, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>An owner account.</p>"}))
    RegisterPackageVersionInput.add_member(:package_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageId, location_name: 'PackageId', traits: {"smithy.api#documentation" => "<p>A package ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackageVersion, location_name: 'PackageVersion', traits: {"smithy.api#documentation" => "<p>A package version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePackagePatchVersion, location_name: 'PatchVersion', traits: {"smithy.api#documentation" => "<p>A patch version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterPackageVersionInput.add_member(:mark_latest, Smithy::Schema::Shapes::ShapeRef.new(shape: MarkLatestPatch, location_name: 'MarkLatest', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to mark the new version as the latest version.</p>"}))
    RegisterPackageVersionInput.type = Types::RegisterPackageVersionInput
    RegisterPackageVersionOutput.type = Types::RegisterPackageVersionOutput
    RemoveApplicationInstanceInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>An application instance ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveApplicationInstanceInput.type = Types::RemoveApplicationInstanceInput
    RemoveApplicationInstanceOutput.type = Types::RemoveApplicationInstanceOutput
    ReportedRuntimeContextState.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredState, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>The application's desired state.</p>", "smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:runtime_context_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeContextName, location_name: 'RuntimeContextName', traits: {"smithy.api#documentation" => "<p>The device's name.</p>", "smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:device_reported_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceReportedStatus, location_name: 'DeviceReportedStatus', traits: {"smithy.api#documentation" => "<p>The application's reported status.</p>", "smithy.api#required" => {}}))
    ReportedRuntimeContextState.add_member(:device_reported_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'DeviceReportedTime', traits: {"smithy.api#documentation" => "<p>When the device reported the application's state.</p>", "smithy.api#required" => {}}))
    ReportedRuntimeContextState.type = Types::ReportedRuntimeContextState
    ReportedRuntimeContextStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReportedRuntimeContextState)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource's ID.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource's type.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The bucket's Region.</p>"}))
    S3Location.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>A bucket name.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#documentation" => "<p>An object key.</p>", "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The target resource's ID.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The target resource's type.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The name of the limit.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The name of the service.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignalApplicationInstanceNodeInstancesInput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>An application instance ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesInput.add_member(:node_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSignalList, location_name: 'NodeSignals', traits: {"smithy.api#documentation" => "<p>A list of signals.</p>", "smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesInput.type = Types::SignalApplicationInstanceNodeInstancesInput
    SignalApplicationInstanceNodeInstancesOutput.add_member(:application_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInstanceId, location_name: 'ApplicationInstanceId', traits: {"smithy.api#documentation" => "<p>An application instance ID.</p>", "smithy.api#required" => {}}))
    SignalApplicationInstanceNodeInstancesOutput.type = Types::SignalApplicationInstanceNodeInstancesOutput
    StaticIpConnectionInfo.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The connection's IP address.</p>", "smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:mask, Smithy::Schema::Shapes::ShapeRef.new(shape: Mask, location_name: 'Mask', traits: {"smithy.api#documentation" => "<p>The connection's DNS mask.</p>", "smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:dns, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsList, location_name: 'Dns', traits: {"smithy.api#documentation" => "<p>The connection's DNS address.</p>", "smithy.api#required" => {}}))
    StaticIpConnectionInfo.add_member(:default_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultGateway, location_name: 'DefaultGateway', traits: {"smithy.api#documentation" => "<p>The connection's default gateway.</p>", "smithy.api#required" => {}}))
    StaticIpConnectionInfo.type = Types::StaticIpConnectionInfo
    StorageLocation.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The location's bucket.</p>", "smithy.api#required" => {}}))
    StorageLocation.add_member(:repo_prefix_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Object, location_name: 'RepoPrefixLocation', traits: {"smithy.api#documentation" => "<p>The location's repo prefix.</p>", "smithy.api#required" => {}}))
    StorageLocation.add_member(:generated_prefix_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Object, location_name: 'GeneratedPrefixLocation', traits: {"smithy.api#documentation" => "<p>The location's generated prefix.</p>", "smithy.api#required" => {}}))
    StorageLocation.add_member(:binary_prefix_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Object, location_name: 'BinaryPrefixLocation', traits: {"smithy.api#documentation" => "<p>The location's binary prefix.</p>", "smithy.api#required" => {}}))
    StorageLocation.add_member(:manifest_prefix_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Object, location_name: 'ManifestPrefixLocation', traits: {"smithy.api#documentation" => "<p>The location's manifest prefix.</p>", "smithy.api#required" => {}}))
    StorageLocation.type = Types::StorageLocation
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateKey)
    TemplateParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateValue)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Tag keys to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateDeviceMetadataInput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeviceMetadataInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the device.</p>"}))
    UpdateDeviceMetadataInput.type = Types::UpdateDeviceMetadataInput
    UpdateDeviceMetadataOutput.add_member(:device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceId, location_name: 'DeviceId', traits: {"smithy.api#documentation" => "<p>The device's ID.</p>"}))
    UpdateDeviceMetadataOutput.type = Types::UpdateDeviceMetadataOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason that validation failed.</p>"}))
    ValidationException.add_member(:error_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorId', traits: {"smithy.api#documentation" => "<p>A unique ID for the error.</p>"}))
    ValidationException.add_member(:error_arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionErrorArgumentList, location_name: 'ErrorArguments', traits: {"smithy.api#documentation" => "<p>A list of attributes that led to the exception and their values.</p>"}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'Fields', traits: {"smithy.api#documentation" => "<p>A list of request parameters that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionErrorArgument.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The argument's name.</p>", "smithy.api#required" => {}}))
    ValidationExceptionErrorArgument.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The argument's value.</p>", "smithy.api#required" => {}}))
    ValidationExceptionErrorArgument.type = Types::ValidationExceptionErrorArgument
    ValidationExceptionErrorArgumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionErrorArgument)
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The field's name.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The field's message.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    OmniCloudServiceLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.panorama#OmniCloudServiceLambda"
      service.name = "OmniCloudServiceLambda"
      service.version = "2019-07-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Panorama", "arnNamespace" => "panorama", "awsProductName" => "AWSPanorama"}, "aws.auth#sigv4" => {"name" => "panorama"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Panorama"}
      service.add_operation(:create_application_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateApplicationInstance"
        operation.name = "CreateApplicationInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInstanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/application-instances", "code" => 200}}
      end)
      service.add_operation(:create_job_for_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateJobForDevices"
        operation.name = "CreateJobForDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobForDevicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobForDevicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 200}}
      end)
      service.add_operation(:create_node_from_template_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreateNodeFromTemplateJob"
        operation.name = "CreateNodeFromTemplateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodeFromTemplateJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodeFromTemplateJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages/template-job", "code" => 200}}
      end)
      service.add_operation(:create_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreatePackage"
        operation.name = "CreatePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages", "code" => 200}}
      end)
      service.add_operation(:create_package_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#CreatePackageImportJob"
        operation.name = "CreatePackageImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageImportJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageImportJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/packages/import-jobs", "code" => 200}}
      end)
      service.add_operation(:delete_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeleteDevice"
        operation.name = "DeleteDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeviceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:delete_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packages/{PackageId}", "code" => 200}}
      end)
      service.add_operation(:deregister_package_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DeregisterPackageVersion"
        operation.name = "DeregisterPackageVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterPackageVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterPackageVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", "code" => 200}}
      end)
      service.add_operation(:describe_application_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeApplicationInstance"
        operation.name = "DescribeApplicationInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationInstanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}", "code" => 200}}
      end)
      service.add_operation(:describe_application_instance_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeApplicationInstanceDetails"
        operation.name = "DescribeApplicationInstanceDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationInstanceDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationInstanceDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/details", "code" => 200}}
      end)
      service.add_operation(:describe_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeDevice"
        operation.name = "DescribeDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)
      service.add_operation(:describe_device_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeDeviceJob"
        operation.name = "DescribeDeviceJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeNode"
        operation.name = "DescribeNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/nodes/{NodeId}", "code" => 200}}
      end)
      service.add_operation(:describe_node_from_template_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribeNodeFromTemplateJob"
        operation.name = "DescribeNodeFromTemplateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeFromTemplateJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeFromTemplateJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/template-job/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackage"
        operation.name = "DescribePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/metadata/{PackageId}", "code" => 200}}
      end)
      service.add_operation(:describe_package_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackageImportJob"
        operation.name = "DescribePackageImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageImportJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageImportJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/import-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:describe_package_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#DescribePackageVersion"
        operation.name = "DescribePackageVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/metadata/{PackageId}/versions/{PackageVersion}", "code" => 200}}
      end)
      service.add_operation(:list_application_instance_dependencies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstanceDependencies"
        operation.name = "ListApplicationInstanceDependencies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstanceDependenciesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstanceDependenciesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/package-dependencies", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstanceDependencies.new
      end)
      service.add_operation(:list_application_instance_node_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstanceNodeInstances"
        operation.name = "ListApplicationInstanceNodeInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstanceNodeInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstanceNodeInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances/{ApplicationInstanceId}/node-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstanceNodeInstances.new
      end)
      service.add_operation(:list_application_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListApplicationInstances"
        operation.name = "ListApplicationInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/application-instances", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationInstances.new
      end)
      service.add_operation(:list_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListDevices"
        operation.name = "ListDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/devices", "code" => 200}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_devices_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListDevicesJobs"
        operation.name = "ListDevicesJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListDevicesJobs.new
      end)
      service.add_operation(:list_node_from_template_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListNodeFromTemplateJobs"
        operation.name = "ListNodeFromTemplateJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodeFromTemplateJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodeFromTemplateJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/template-job", "code" => 200}}
        operation[:paginator] = Paginators::ListNodeFromTemplateJobs.new
      end)
      service.add_operation(:list_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListNodes"
        operation.name = "ListNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/nodes", "code" => 200}}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_package_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListPackageImportJobs"
        operation.name = "ListPackageImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageImportJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageImportJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages/import-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageImportJobs.new
      end)
      service.add_operation(:list_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListPackages"
        operation.name = "ListPackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackages.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:provision_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#ProvisionDevice"
        operation.name = "ProvisionDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionDeviceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionDeviceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/devices", "code" => 200}}
      end)
      service.add_operation(:register_package_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#RegisterPackageVersion"
        operation.name = "RegisterPackageVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterPackageVersionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterPackageVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", "code" => 200}}
      end)
      service.add_operation(:remove_application_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#RemoveApplicationInstance"
        operation.name = "RemoveApplicationInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveApplicationInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveApplicationInstanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/application-instances/{ApplicationInstanceId}", "code" => 200}}
      end)
      service.add_operation(:signal_application_instance_node_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#SignalApplicationInstanceNodeInstances"
        operation.name = "SignalApplicationInstanceNodeInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalApplicationInstanceNodeInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalApplicationInstanceNodeInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/application-instances/{ApplicationInstanceId}/node-signals", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_device_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.panorama#UpdateDeviceMetadata"
        operation.name = "UpdateDeviceMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeviceMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/devices/{DeviceId}", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
