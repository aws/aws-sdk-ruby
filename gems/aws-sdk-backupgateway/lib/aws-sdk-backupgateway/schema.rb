# frozen_string_literal: true

# This is generated code!

module Aws::BackupGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#ActivationKey', name: 'ActivationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9a-zA-Z\\-]+$"})
    AssociateGatewayToServerOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#AssociateGatewayToServerOperationInput', name: 'AssociateGatewayToServerOperationInput')
    AssociateGatewayToServerOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#AssociateGatewayToServerOperationOutput', name: 'AssociateGatewayToServerOperationOutput')
    AverageUploadRateLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#AverageUploadRateLimit', name: 'AverageUploadRateLimit', traits: {"smithy.api#range" => {"min" => 51200, "max" => 8000000000000}})
    BandwidthRateLimitInterval = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#BandwidthRateLimitInterval', name: 'BandwidthRateLimitInterval')
    BandwidthRateLimitIntervals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#BandwidthRateLimitIntervals', name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGatewayOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#CreateGatewayOperationInput', name: 'CreateGatewayOperationInput')
    CreateGatewayOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#CreateGatewayOperationOutput', name: 'CreateGatewayOperationOutput')
    DayOfMonth = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#DayOfMonth', name: 'DayOfMonth', traits: {"smithy.api#range" => {"min" => 1, "max" => 31}})
    DayOfWeek = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#DayOfWeek', name: 'DayOfWeek', traits: {"smithy.api#range" => {"min" => 0, "max" => 6}})
    DaysOfWeek = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#DaysOfWeek', name: 'DaysOfWeek', traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteGatewayOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DeleteGatewayOperationInput', name: 'DeleteGatewayOperationInput')
    DeleteGatewayOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DeleteGatewayOperationOutput', name: 'DeleteGatewayOperationOutput')
    DeleteHypervisorOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DeleteHypervisorOperationInput', name: 'DeleteHypervisorOperationInput')
    DeleteHypervisorOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DeleteHypervisorOperationOutput', name: 'DeleteHypervisorOperationOutput')
    DisassociateGatewayFromServerOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DisassociateGatewayFromServerOperationInput', name: 'DisassociateGatewayFromServerOperationInput')
    DisassociateGatewayFromServerOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#DisassociateGatewayFromServerOperationOutput', name: 'DisassociateGatewayFromServerOperationOutput')
    Gateway = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#Gateway', name: 'Gateway')
    GatewayArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#GatewayArn', name: 'GatewayArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    GatewayDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GatewayDetails', name: 'GatewayDetails')
    GatewayType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#GatewayType', name: 'GatewayType', traits: {"smithy.api#enum" => [{"value" => "BACKUP_VM", "name" => "BACKUP_VM"}]})
    Gateways = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#Gateways', name: 'Gateways')
    GetBandwidthRateLimitScheduleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetBandwidthRateLimitScheduleOperationInput', name: 'GetBandwidthRateLimitScheduleOperationInput')
    GetBandwidthRateLimitScheduleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetBandwidthRateLimitScheduleOperationOutput', name: 'GetBandwidthRateLimitScheduleOperationOutput')
    GetGatewayOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetGatewayOperationInput', name: 'GetGatewayOperationInput')
    GetGatewayOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetGatewayOperationOutput', name: 'GetGatewayOperationOutput')
    GetHypervisorOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetHypervisorOperationInput', name: 'GetHypervisorOperationInput')
    GetHypervisorOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetHypervisorOperationOutput', name: 'GetHypervisorOperationOutput')
    GetHypervisorPropertyMappingsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetHypervisorPropertyMappingsOperationInput', name: 'GetHypervisorPropertyMappingsOperationInput')
    GetHypervisorPropertyMappingsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetHypervisorPropertyMappingsOperationOutput', name: 'GetHypervisorPropertyMappingsOperationOutput')
    GetVirtualMachineOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetVirtualMachineOperationInput', name: 'GetVirtualMachineOperationInput')
    GetVirtualMachineOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#GetVirtualMachineOperationOutput', name: 'GetVirtualMachineOperationOutput')
    Host = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#Host', name: 'Host', traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    HourOfDay = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#HourOfDay', name: 'HourOfDay', traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    Hypervisor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#Hypervisor', name: 'Hypervisor')
    HypervisorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#HypervisorDetails', name: 'HypervisorDetails')
    HypervisorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#HypervisorId', name: 'HypervisorId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HypervisorState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#HypervisorState', name: 'HypervisorState', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "ERROR", "name" => "ERROR"}]})
    Hypervisors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#Hypervisors', name: 'Hypervisors')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):iam::([0-9]+):role/(\\S+)$"})
    ImportHypervisorConfigurationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ImportHypervisorConfigurationOperationInput', name: 'ImportHypervisorConfigurationOperationInput')
    ImportHypervisorConfigurationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ImportHypervisorConfigurationOperationOutput', name: 'ImportHypervisorConfigurationOperationOutput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$"})
    ListGatewaysOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListGatewaysOperationInput', name: 'ListGatewaysOperationInput')
    ListGatewaysOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListGatewaysOperationOutput', name: 'ListGatewaysOperationOutput')
    ListHypervisorsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListHypervisorsOperationInput', name: 'ListHypervisorsOperationInput')
    ListHypervisorsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListHypervisorsOperationOutput', name: 'ListHypervisorsOperationOutput')
    ListTagsForResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    ListVirtualMachinesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListVirtualMachinesOperationInput', name: 'ListVirtualMachinesOperationInput')
    ListVirtualMachinesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ListVirtualMachinesOperationOutput', name: 'ListVirtualMachinesOperationOutput')
    LogGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#LogGroupArn', name: 'LogGroupArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^$|^arn:(aws|aws-cn|aws-us-gov):logs:([a-zA-Z0-9-]+):([0-9]+):log-group:[a-zA-Z0-9_\\-\\/\\.]+:\\*$"})
    MaintenanceStartTime = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#MaintenanceStartTime', name: 'MaintenanceStartTime')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    MinuteOfHour = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.backupgateway#MinuteOfHour', name: 'MinuteOfHour', traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^.+$"})
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#Password', name: 'Password', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^\\x00]+$"})
    PutBandwidthRateLimitScheduleOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutBandwidthRateLimitScheduleOperationInput', name: 'PutBandwidthRateLimitScheduleOperationInput')
    PutBandwidthRateLimitScheduleOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutBandwidthRateLimitScheduleOperationOutput', name: 'PutBandwidthRateLimitScheduleOperationOutput')
    PutHypervisorPropertyMappingsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutHypervisorPropertyMappingsOperationInput', name: 'PutHypervisorPropertyMappingsOperationInput')
    PutHypervisorPropertyMappingsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutHypervisorPropertyMappingsOperationOutput', name: 'PutHypervisorPropertyMappingsOperationOutput')
    PutMaintenanceStartTimeOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutMaintenanceStartTimeOperationInput', name: 'PutMaintenanceStartTimeOperationInput')
    PutMaintenanceStartTimeOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#PutMaintenanceStartTimeOperationOutput', name: 'PutMaintenanceStartTimeOperationOutput')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#ServerArn', name: 'ServerArn', traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    StartVirtualMachinesMetadataSyncOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#StartVirtualMachinesMetadataSyncOperationInput', name: 'StartVirtualMachinesMetadataSyncOperationInput')
    StartVirtualMachinesMetadataSyncOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#StartVirtualMachinesMetadataSyncOperationOutput', name: 'StartVirtualMachinesMetadataSyncOperationOutput')
    SyncMetadataStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#SyncMetadataStatus', name: 'SyncMetadataStatus', traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "PARTIALLY_FAILED", "name" => "PARTIALLY_FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#TagKeys', name: 'TagKeys')
    TagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\x00]*$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#Tags', name: 'Tags')
    TestHypervisorConfigurationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#TestHypervisorConfigurationOperationInput', name: 'TestHypervisorConfigurationOperationInput')
    TestHypervisorConfigurationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#TestHypervisorConfigurationOperationOutput', name: 'TestHypervisorConfigurationOperationOutput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.backupgateway#Time', name: 'Time')
    UntagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateGatewayInformationOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateGatewayInformationOperationInput', name: 'UpdateGatewayInformationOperationInput')
    UpdateGatewayInformationOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateGatewayInformationOperationOutput', name: 'UpdateGatewayInformationOperationOutput')
    UpdateGatewaySoftwareNowOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateGatewaySoftwareNowOperationInput', name: 'UpdateGatewaySoftwareNowOperationInput')
    UpdateGatewaySoftwareNowOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateGatewaySoftwareNowOperationOutput', name: 'UpdateGatewaySoftwareNowOperationOutput')
    UpdateHypervisorOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateHypervisorOperationInput', name: 'UpdateHypervisorOperationInput')
    UpdateHypervisorOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#UpdateHypervisorOperationOutput', name: 'UpdateHypervisorOperationOutput')
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$", "smithy.api#sensitive" => {}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VirtualMachine = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#VirtualMachine', name: 'VirtualMachine')
    VirtualMachineDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#VirtualMachineDetails', name: 'VirtualMachineDetails')
    VirtualMachines = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#VirtualMachines', name: 'VirtualMachines')
    VmwareCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#VmwareCategory', name: 'VmwareCategory', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    VmwareTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#VmwareTag', name: 'VmwareTag')
    VmwareTagName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#VmwareTagName', name: 'VmwareTagName', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    VmwareTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#VmwareTags', name: 'VmwareTags')
    VmwareToAwsTagMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.backupgateway#VmwareToAwsTagMapping', name: 'VmwareToAwsTagMapping')
    VmwareToAwsTagMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.backupgateway#VmwareToAwsTagMappings', name: 'VmwareToAwsTagMappings')
    VpcEndpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#VpcEndpoint', name: 'VpcEndpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.backupgateway#string', name: 'String')

    AccessDeniedException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A description of why you have insufficient permissions.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateGatewayToServerOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation\n      to return a list of gateways for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.add_member(:server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'ServerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>", "smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.type = Types::AssociateGatewayToServerOperationInput
    AssociateGatewayToServerOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a gateway.</p>"}))
    AssociateGatewayToServerOperationOutput.type = Types::AssociateGatewayToServerOperationOutput
    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, Smithy::Schema::Shapes::ShapeRef.new(shape: AverageUploadRateLimit, location_name: 'AverageUploadRateLimitInBitsPerSec', traits: {"smithy.api#documentation" => "<p>The average upload rate limit component of the bandwidth rate limit \n      interval, in bits per second. This field does not appear in the response if \n      the upload rate limit is not set.</p>\n         <note>\n            <p>For Backup Gateway, the minimum value is <code>(Value)</code>.</p>\n         </note>"}))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'StartHourOfDay', traits: {"smithy.api#documentation" => "<p>The hour of the day to start the bandwidth rate limit interval.</p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'EndHourOfDay', traits: {"smithy.api#documentation" => "<p>The hour of the day to end the bandwidth rate limit interval.</p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'StartMinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute of the hour to start the bandwidth rate limit interval. The \n      interval begins at the start of that minute. To begin an interval exactly at \n      the start of the hour, use the value <code>0</code>.</p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'EndMinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute of the hour to end the bandwidth rate limit interval.</p>\n         <important>\n            <p>The bandwidth rate limit interval ends at the end of the minute. \n      To end an interval at the end of an hour, use the value <code>59</code>.</p>\n         </important>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:days_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DaysOfWeek, location_name: 'DaysOfWeek', traits: {"smithy.api#documentation" => "<p>The days of the week component of the bandwidth rate limit interval, \n      represented as ordinal numbers from 0 to 6, where 0 represents Sunday and 6 represents \n      Saturday.</p>", "smithy.api#required" => {}}))
    BandwidthRateLimitInterval.type = Types::BandwidthRateLimitInterval
    BandwidthRateLimitIntervals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitInterval)
    ConflictException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A description of why the operation is not supported.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateGatewayOperationInput.add_member(:activation_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationKey, location_name: 'ActivationKey', traits: {"smithy.api#documentation" => "<p>The activation key of the created gateway.</p>", "smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'GatewayDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the created gateway.</p>", "smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>The type of created gateway.</p>", "smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>"}))
    CreateGatewayOperationInput.type = Types::CreateGatewayOperationInput
    CreateGatewayOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway you create.</p>"}))
    CreateGatewayOperationOutput.type = Types::CreateGatewayOperationOutput
    DaysOfWeek.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    DeleteGatewayOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway to delete.</p>", "smithy.api#required" => {}}))
    DeleteGatewayOperationInput.type = Types::DeleteGatewayOperationInput
    DeleteGatewayOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway you deleted.</p>"}))
    DeleteGatewayOperationOutput.type = Types::DeleteGatewayOperationOutput
    DeleteHypervisorOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>", "smithy.api#required" => {}}))
    DeleteHypervisorOperationInput.type = Types::DeleteHypervisorOperationInput
    DeleteHypervisorOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor you deleted.</p>"}))
    DeleteHypervisorOperationOutput.type = Types::DeleteHypervisorOperationOutput
    DisassociateGatewayFromServerOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>", "smithy.api#required" => {}}))
    DisassociateGatewayFromServerOperationInput.type = Types::DisassociateGatewayFromServerOperationInput
    DisassociateGatewayFromServerOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway you disassociated.</p>"}))
    DisassociateGatewayFromServerOperationOutput.type = Types::DisassociateGatewayFromServerOperationOutput
    Gateway.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation\n      to return a list of gateways for your account and Amazon Web Services Region.</p>"}))
    Gateway.add_member(:gateway_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'GatewayDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the gateway.</p>"}))
    Gateway.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>The type of the gateway.</p>"}))
    Gateway.add_member(:hypervisor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorId, location_name: 'HypervisorId', traits: {"smithy.api#documentation" => "<p>The hypervisor ID of the gateway.</p>"}))
    Gateway.add_member(:last_seen_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'LastSeenTime', traits: {"smithy.api#documentation" => "<p>The last time Backup gateway communicated with the gateway, in Unix format and\n      UTC time.</p>"}))
    Gateway.type = Types::Gateway
    GatewayDetails.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the \n      gateway. Use the <code>ListGateways</code> operation\n      to return a list of gateways for your account and \n      Amazon Web Services Region.</p>"}))
    GatewayDetails.add_member(:gateway_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'GatewayDisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the gateway.</p>"}))
    GatewayDetails.add_member(:gateway_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: 'GatewayType', traits: {"smithy.api#documentation" => "<p>The type of the gateway type.</p>"}))
    GatewayDetails.add_member(:hypervisor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorId, location_name: 'HypervisorId', traits: {"smithy.api#documentation" => "<p>The hypervisor ID of the gateway.</p>"}))
    GatewayDetails.add_member(:last_seen_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'LastSeenTime', traits: {"smithy.api#documentation" => "<p>Details showing the last time Backup gateway communicated\n      with the cloud, in Unix format and UTC time.</p>"}))
    GatewayDetails.add_member(:maintenance_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStartTime, location_name: 'MaintenanceStartTime', traits: {"smithy.api#documentation" => "<p>Returns your gateway's weekly maintenance start time including the day and time of the week. \n      Note that values are in terms of the gateway's time zone. Can be weekly or monthly.</p>"}))
    GatewayDetails.add_member(:next_update_availability_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'NextUpdateAvailabilityTime', traits: {"smithy.api#documentation" => "<p>Details showing the next update availability time of the \n      gateway.</p>"}))
    GatewayDetails.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint', traits: {"smithy.api#documentation" => "<p>The DNS name for the virtual private cloud (VPC) endpoint the gateway \n      uses to connect to the cloud for backup gateway.</p>"}))
    GatewayDetails.type = Types::GatewayDetails
    Gateways.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Gateway)
    GetBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the \n      <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html\">\n               <code>ListGateways</code>\n            </a> operation to return a list of gateways \n      for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    GetBandwidthRateLimitScheduleOperationInput.type = Types::GetBandwidthRateLimitScheduleOperationInput
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the \n      <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html\">\n               <code>ListGateways</code>\n            </a> operation to return a list of gateways \n      for your account and Amazon Web Services Region.</p>"}))
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:bandwidth_rate_limit_intervals, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#documentation" => "<p>An array containing bandwidth rate limit schedule intervals for a gateway. \n      When no bandwidth rate limit intervals have been scheduled, the array is empty.</p>"}))
    GetBandwidthRateLimitScheduleOperationOutput.type = Types::GetBandwidthRateLimitScheduleOperationOutput
    GetGatewayOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway.</p>", "smithy.api#required" => {}}))
    GetGatewayOperationInput.type = Types::GetGatewayOperationInput
    GetGatewayOperationOutput.add_member(:gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDetails, location_name: 'Gateway', traits: {"smithy.api#documentation" => "<p>By providing the ARN (Amazon Resource Name), this\n      API returns the gateway.</p>"}))
    GetGatewayOperationOutput.type = Types::GetGatewayOperationOutput
    GetHypervisorOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>", "smithy.api#required" => {}}))
    GetHypervisorOperationInput.type = Types::GetHypervisorOperationInput
    GetHypervisorOperationOutput.add_member(:hypervisor, Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorDetails, location_name: 'Hypervisor', traits: {"smithy.api#documentation" => "<p>Details about the requested hypervisor.</p>"}))
    GetHypervisorOperationOutput.type = Types::GetHypervisorOperationOutput
    GetHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>", "smithy.api#required" => {}}))
    GetHypervisorPropertyMappingsOperationInput.type = Types::GetHypervisorPropertyMappingsOperationInput
    GetHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>"}))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:vmware_to_aws_tag_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, location_name: 'VmwareToAwsTagMappings', traits: {"smithy.api#documentation" => "<p>This is a display of the mappings of on-premises VMware tags to the \n      Amazon Web Services tags.</p>"}))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role.</p>"}))
    GetHypervisorPropertyMappingsOperationOutput.type = Types::GetHypervisorPropertyMappingsOperationOutput
    GetVirtualMachineOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual machine.</p>", "smithy.api#required" => {}}))
    GetVirtualMachineOperationInput.type = Types::GetVirtualMachineOperationInput
    GetVirtualMachineOperationOutput.add_member(:virtual_machine, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachineDetails, location_name: 'VirtualMachine', traits: {"smithy.api#documentation" => "<p>This object contains the basic attributes of <code>VirtualMachine</code> contained by the output of \n      <code>GetVirtualMachine</code>\n         </p>"}))
    GetVirtualMachineOperationOutput.type = Types::GetVirtualMachineOperationOutput
    Hypervisor.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified\n      domain name (FQDN).</p>"}))
    Hypervisor.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>"}))
    Hypervisor.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Key Management Service used to encrypt the\n      hypervisor.</p>"}))
    Hypervisor.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the hypervisor.</p>"}))
    Hypervisor.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the hypervisor.</p>"}))
    Hypervisor.type = Types::Hypervisor
    HypervisorDetails.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The server host of the hypervisor. This can be either an IP address or \n      a fully-qualified domain name (FQDN).</p>"}))
    HypervisorDetails.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>"}))
    HypervisorDetails.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the KMS  \n      used to encrypt the hypervisor.</p>"}))
    HypervisorDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>This is the name of the specified hypervisor.</p>"}))
    HypervisorDetails.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group of gateways within \n      the requested log.</p>"}))
    HypervisorDetails.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>This is the current state of the specified hypervisor.</p>\n         <p>The possible states are <code>PENDING</code>, <code>ONLINE</code>, \n      <code>OFFLINE</code>, or <code>ERROR</code>.</p>"}))
    HypervisorDetails.add_member(:last_successful_metadata_sync_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'LastSuccessfulMetadataSyncTime', traits: {"smithy.api#documentation" => "<p>This is the time when the most recent successful sync \n      of metadata occurred.</p>"}))
    HypervisorDetails.add_member(:latest_metadata_sync_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LatestMetadataSyncStatusMessage', traits: {"smithy.api#documentation" => "<p>This is the most recent status for the indicated metadata sync.</p>"}))
    HypervisorDetails.add_member(:latest_metadata_sync_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncMetadataStatus, location_name: 'LatestMetadataSyncStatus', traits: {"smithy.api#documentation" => "<p>This is the most recent status for the indicated metadata sync.</p>"}))
    HypervisorDetails.type = Types::HypervisorDetails
    Hypervisors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Hypervisor)
    ImportHypervisorConfigurationOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the hypervisor.</p>", "smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified\n      domain name (FQDN).</p>", "smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username for the hypervisor.</p>"}))
    ImportHypervisorConfigurationOperationInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password for the hypervisor.</p>"}))
    ImportHypervisorConfigurationOperationInput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Key Management Service for the hypervisor.</p>"}))
    ImportHypervisorConfigurationOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags of the hypervisor configuration to import.</p>"}))
    ImportHypervisorConfigurationOperationInput.type = Types::ImportHypervisorConfigurationOperationInput
    ImportHypervisorConfigurationOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor you disassociated.</p>"}))
    ImportHypervisorConfigurationOperationOutput.type = Types::ImportHypervisorConfigurationOperationOutput
    InternalServerException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A description of which internal error occured.</p>"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListGatewaysOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of gateways to list.</p>"}))
    ListGatewaysOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListGatewaysOperationInput.type = Types::ListGatewaysOperationInput
    ListGatewaysOperationOutput.add_member(:gateways, Smithy::Schema::Shapes::ShapeRef.new(shape: Gateways, location_name: 'Gateways', traits: {"smithy.api#documentation" => "<p>A list of your gateways.</p>"}))
    ListGatewaysOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListGatewaysOperationOutput.type = Types::ListGatewaysOperationOutput
    ListHypervisorsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of hypervisors to list.</p>"}))
    ListHypervisorsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListHypervisorsOperationInput.type = Types::ListHypervisorsOperationInput
    ListHypervisorsOperationOutput.add_member(:hypervisors, Smithy::Schema::Shapes::ShapeRef.new(shape: Hypervisors, location_name: 'Hypervisors', traits: {"smithy.api#documentation" => "<p>A list of your <code>Hypervisor</code> objects, ordered by their Amazon Resource Names\n      (ARNs).</p>"}))
    ListHypervisorsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListHypervisorsOperationOutput.type = Types::ListHypervisorsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource's tags that you listed.</p>"}))
    ListTagsForResourceOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the resource's tags.</p>"}))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListVirtualMachinesOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor connected to your virtual machine.</p>"}))
    ListVirtualMachinesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of virtual machines to list.</p>"}))
    ListVirtualMachinesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListVirtualMachinesOperationInput.type = Types::ListVirtualMachinesOperationInput
    ListVirtualMachinesOperationOutput.add_member(:virtual_machines, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachines, location_name: 'VirtualMachines', traits: {"smithy.api#documentation" => "<p>A list of your <code>VirtualMachine</code> objects, ordered by their Amazon Resource Names\n      (ARNs).</p>"}))
    ListVirtualMachinesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next item following a partial list of returned resources. For example, if a request is\n      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you\n      to return more items in your list starting at the location pointed to by the next\n      token.</p>"}))
    ListVirtualMachinesOperationOutput.type = Types::ListVirtualMachinesOperationOutput
    MaintenanceStartTime.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: 'DayOfMonth', traits: {"smithy.api#documentation" => "<p>The day of the month component of the maintenance start time represented as an ordinal number from \n      1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.</p>"}))
    MaintenanceStartTime.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#documentation" => "<p>An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday \n      and 6 represents Saturday. The day of week is in the time zone of the gateway.</p>"}))
    MaintenanceStartTime.add_member(:hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'HourOfDay', traits: {"smithy.api#documentation" => "<p>The hour component of the maintenance start time represented as <i>hh</i>, \n      where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>", "smithy.api#required" => {}}))
    MaintenanceStartTime.add_member(:minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'MinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute component of the maintenance start time represented as <i>mm</i>, where \n      <i>mm</i> is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.</p>", "smithy.api#required" => {}}))
    MaintenanceStartTime.type = Types::MaintenanceStartTime
    PutBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the \n      <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html\">\n               <code>ListGateways</code>\n            </a> operation to return a list of gateways \n      for your account and Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.add_member(:bandwidth_rate_limit_intervals, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: 'BandwidthRateLimitIntervals', traits: {"smithy.api#documentation" => "<p>An array containing bandwidth rate limit schedule intervals for a gateway. \n      When no bandwidth rate limit intervals have been scheduled, the array is empty.</p>", "smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.type = Types::PutBandwidthRateLimitScheduleOperationInput
    PutBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway. Use the \n      <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html\">\n               <code>ListGateways</code>\n            </a> operation to return a list of gateways \n      for your account and Amazon Web Services Region.</p>"}))
    PutBandwidthRateLimitScheduleOperationOutput.type = Types::PutBandwidthRateLimitScheduleOperationOutput
    PutHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>", "smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:vmware_to_aws_tag_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, location_name: 'VmwareToAwsTagMappings', traits: {"smithy.api#documentation" => "<p>This action requests the mappings of on-premises VMware tags to the \n      Amazon Web Services tags.</p>", "smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role.</p>", "smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.type = Types::PutHypervisorPropertyMappingsOperationInput
    PutHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>"}))
    PutHypervisorPropertyMappingsOperationOutput.type = Types::PutHypervisorPropertyMappingsOperationOutput
    PutMaintenanceStartTimeOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start\n      time.</p>", "smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:hour_of_day, Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: 'HourOfDay', traits: {"smithy.api#documentation" => "<p>The hour of the day to start maintenance on a gateway.</p>", "smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:minute_of_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: 'MinuteOfHour', traits: {"smithy.api#documentation" => "<p>The minute of the hour to start maintenance on a gateway.</p>", "smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'DayOfWeek', traits: {"smithy.api#documentation" => "<p>The day of the week to start maintenance on a gateway.</p>"}))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: 'DayOfMonth', traits: {"smithy.api#documentation" => "<p>The day of the month start maintenance on a gateway.</p>\n         <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>"}))
    PutMaintenanceStartTimeOperationInput.type = Types::PutMaintenanceStartTimeOperationInput
    PutMaintenanceStartTimeOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a gateway for which you set the maintenance start\n      time.</p>"}))
    PutMaintenanceStartTimeOperationOutput.type = Types::PutMaintenanceStartTimeOperationOutput
    ResourceNotFoundException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A description of which resource wasn't found.</p>"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartVirtualMachinesMetadataSyncOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>", "smithy.api#required" => {}}))
    StartVirtualMachinesMetadataSyncOperationInput.type = Types::StartVirtualMachinesMetadataSyncOperationInput
    StartVirtualMachinesMetadataSyncOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor.</p>"}))
    StartVirtualMachinesMetadataSyncOperationOutput.type = Types::StartVirtualMachinesMetadataSyncOperationOutput
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key part of a tag's key-value pair. The key can't start with <code>aws:</code>.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value part of a tag's key-value pair.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to tag.</p>", "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to assign to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource you tagged.</p>"}))
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TestHypervisorConfigurationOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>", "smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified\n      domain name (FQDN).</p>", "smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The username for the hypervisor.</p>"}))
    TestHypervisorConfigurationOperationInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password for the hypervisor.</p>"}))
    TestHypervisorConfigurationOperationInput.type = Types::TestHypervisorConfigurationOperationInput
    TestHypervisorConfigurationOperationOutput.type = Types::TestHypervisorConfigurationOperationOutput
    ThrottlingException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Error: TPS has been limited to protect against intentional or unintentional \n      high request volumes.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>", "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys specifying which tags to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource from which you removed tags.</p>"}))
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateGatewayInformationOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway to update.</p>", "smithy.api#required" => {}}))
    UpdateGatewayInformationOperationInput.add_member(:gateway_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'GatewayDisplayName', traits: {"smithy.api#documentation" => "<p>The updated display name of the gateway.</p>"}))
    UpdateGatewayInformationOperationInput.type = Types::UpdateGatewayInformationOperationInput
    UpdateGatewayInformationOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway you updated.</p>"}))
    UpdateGatewayInformationOperationOutput.type = Types::UpdateGatewayInformationOperationOutput
    UpdateGatewaySoftwareNowOperationInput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway\n      to be updated.</p>", "smithy.api#required" => {}}))
    UpdateGatewaySoftwareNowOperationInput.type = Types::UpdateGatewaySoftwareNowOperationInput
    UpdateGatewaySoftwareNowOperationOutput.add_member(:gateway_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'GatewayArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gateway\n      you updated.</p>"}))
    UpdateGatewaySoftwareNowOperationOutput.type = Types::UpdateGatewaySoftwareNowOperationOutput
    UpdateHypervisorOperationInput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>", "smithy.api#required" => {}}))
    UpdateHypervisorOperationInput.add_member(:host, Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: 'Host', traits: {"smithy.api#documentation" => "<p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified\n      domain name (FQDN).</p>"}))
    UpdateHypervisorOperationInput.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The updated username for the hypervisor.</p>"}))
    UpdateHypervisorOperationInput.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The updated password for the hypervisor.</p>"}))
    UpdateHypervisorOperationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The updated name for the hypervisor</p>"}))
    UpdateHypervisorOperationInput.add_member(:log_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the group of gateways within the requested log.</p>"}))
    UpdateHypervisorOperationInput.type = Types::UpdateHypervisorOperationInput
    UpdateHypervisorOperationOutput.add_member(:hypervisor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: 'HypervisorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the hypervisor you updated.</p>"}))
    UpdateHypervisorOperationOutput.type = Types::UpdateHypervisorOperationOutput
    ValidationException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A description of what caused the validation error.</p>"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    VirtualMachine.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'HostName', traits: {"smithy.api#documentation" => "<p>The host name of the virtual machine.</p>"}))
    VirtualMachine.add_member(:hypervisor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HypervisorId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual machine's hypervisor.</p>"}))
    VirtualMachine.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the virtual machine.</p>"}))
    VirtualMachine.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path of the virtual machine.</p>"}))
    VirtualMachine.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual machine. For example,\n        <code>arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL</code>.</p>"}))
    VirtualMachine.add_member(:last_backup_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'LastBackupDate', traits: {"smithy.api#documentation" => "<p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>"}))
    VirtualMachine.type = Types::VirtualMachine
    VirtualMachineDetails.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'HostName', traits: {"smithy.api#documentation" => "<p>The host name of the virtual machine.</p>"}))
    VirtualMachineDetails.add_member(:hypervisor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HypervisorId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual machine's hypervisor.</p>"}))
    VirtualMachineDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the virtual machine.</p>"}))
    VirtualMachineDetails.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>The path of the virtual machine.</p>"}))
    VirtualMachineDetails.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the virtual machine. For example, \n      <code>arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL</code>.</p>"}))
    VirtualMachineDetails.add_member(:last_backup_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'LastBackupDate', traits: {"smithy.api#documentation" => "<p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>"}))
    VirtualMachineDetails.add_member(:vmware_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTags, location_name: 'VmwareTags', traits: {"smithy.api#documentation" => "<p>These are the details of the VMware tags associated with the specified \n      virtual machine.</p>"}))
    VirtualMachineDetails.type = Types::VirtualMachineDetails
    VirtualMachines.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachine)
    VmwareTag.add_member(:vmware_category, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareCategory, location_name: 'VmwareCategory', traits: {"smithy.api#documentation" => "<p>The is the category of VMware.</p>"}))
    VmwareTag.add_member(:vmware_tag_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTagName, location_name: 'VmwareTagName', traits: {"smithy.api#documentation" => "<p>This is the user-defined name of a VMware tag.</p>"}))
    VmwareTag.add_member(:vmware_tag_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VmwareTagDescription', traits: {"smithy.api#documentation" => "<p>This is a user-defined description of a VMware tag.</p>"}))
    VmwareTag.type = Types::VmwareTag
    VmwareTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTag)
    VmwareToAwsTagMapping.add_member(:vmware_category, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareCategory, location_name: 'VmwareCategory', traits: {"smithy.api#documentation" => "<p>The is the category of VMware.</p>", "smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:vmware_tag_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTagName, location_name: 'VmwareTagName', traits: {"smithy.api#documentation" => "<p>This is the user-defined name of a VMware tag.</p>", "smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'AwsTagKey', traits: {"smithy.api#documentation" => "<p>The key part of the Amazon Web Services tag's key-value pair.</p>", "smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'AwsTagValue', traits: {"smithy.api#documentation" => "<p>The value part of the Amazon Web Services tag's key-value pair.</p>", "smithy.api#required" => {}}))
    VmwareToAwsTagMapping.type = Types::VmwareToAwsTagMapping
    VmwareToAwsTagMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMapping)

    BackupOnPremisesV20210101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backupgateway#BackupOnPremises_v20210101"
      service.name = "BackupOnPremisesV20210101"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Backup Gateway", "arnNamespace" => "backup-gateway", "cloudFormationName" => "BackupGateway", "cloudTrailEventSource" => "backup-gateway.amazonaws.com", "endpointPrefix" => "backup-gateway"}, "aws.auth#sigv4" => {"name" => "backup-gateway"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Backup Gateway"}
      service.add_operation(:associate_gateway_to_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#AssociateGatewayToServer"
        operation.name = "AssociateGatewayToServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateGatewayToServerOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateGatewayToServerOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.traits = {}
      end)
      service.add_operation(:create_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_hypervisor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteHypervisor"
        operation.name = "DeleteHypervisor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHypervisorOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHypervisorOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_gateway_from_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DisassociateGatewayFromServer"
        operation.name = "DisassociateGatewayFromServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_bandwidth_rate_limit_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetBandwidthRateLimitSchedule"
        operation.name = "GetBandwidthRateLimitSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gateway, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetGateway"
        operation.name = "GetGateway"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisor"
        operation.name = "GetHypervisor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor_property_mappings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisorPropertyMappings"
        operation.name = "GetHypervisorPropertyMappings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_virtual_machine, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetVirtualMachine"
        operation.name = "GetVirtualMachine"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVirtualMachineOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVirtualMachineOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_hypervisor_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ImportHypervisorConfiguration"
        operation.name = "ImportHypervisorConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.traits = {}
      end)
      service.add_operation(:list_gateways, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListGateways"
        operation.name = "ListGateways"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_hypervisors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListHypervisors"
        operation.name = "ListHypervisors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHypervisorsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHypervisorsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHypervisors.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_virtual_machines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListVirtualMachines"
        operation.name = "ListVirtualMachines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualMachinesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualMachinesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualMachines.new
      end)
      service.add_operation(:put_bandwidth_rate_limit_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutBandwidthRateLimitSchedule"
        operation.name = "PutBandwidthRateLimitSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_hypervisor_property_mappings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutHypervisorPropertyMappings"
        operation.name = "PutHypervisorPropertyMappings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_maintenance_start_time, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutMaintenanceStartTime"
        operation.name = "PutMaintenanceStartTime"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_virtual_machines_metadata_sync, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#StartVirtualMachinesMetadataSync"
        operation.name = "StartVirtualMachinesMetadataSync"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:test_hypervisor_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TestHypervisorConfiguration"
        operation.name = "TestHypervisorConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestHypervisorConfigurationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestHypervisorConfigurationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_information, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewayInformation"
        operation.name = "UpdateGatewayInformation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_software_now, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewaySoftwareNow"
        operation.name = "UpdateGatewaySoftwareNow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_hypervisor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateHypervisor"
        operation.name = "UpdateHypervisor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHypervisorOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHypervisorOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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
