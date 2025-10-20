# frozen_string_literal: true

# This is generated code!

module Aws::BackupGateway
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#ActivationKey", name: "ActivationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9a-zA-Z\\-]+$"})
    AssociateGatewayToServerOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#AssociateGatewayToServerOperationInput", name: "AssociateGatewayToServerOperationInput")
    AssociateGatewayToServerOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#AssociateGatewayToServerOperationOutput", name: "AssociateGatewayToServerOperationOutput")
    AverageUploadRateLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#AverageUploadRateLimit", name: "AverageUploadRateLimit", traits: {"smithy.api#range" => {"min" => 51200, "max" => 8000000000000}})
    BandwidthRateLimitInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#BandwidthRateLimitInterval", name: "BandwidthRateLimitInterval")
    BandwidthRateLimitIntervals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#BandwidthRateLimitIntervals", name: "BandwidthRateLimitIntervals", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#CreateGatewayOperationInput", name: "CreateGatewayOperationInput")
    CreateGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#CreateGatewayOperationOutput", name: "CreateGatewayOperationOutput")
    DayOfMonth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#DayOfMonth", name: "DayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 31}})
    DayOfWeek = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#DayOfWeek", name: "DayOfWeek", traits: {"smithy.api#range" => {"min" => 0, "max" => 6}})
    DaysOfWeek = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#DaysOfWeek", name: "DaysOfWeek", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    DeleteGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DeleteGatewayOperationInput", name: "DeleteGatewayOperationInput")
    DeleteGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DeleteGatewayOperationOutput", name: "DeleteGatewayOperationOutput")
    DeleteHypervisorOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DeleteHypervisorOperationInput", name: "DeleteHypervisorOperationInput")
    DeleteHypervisorOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DeleteHypervisorOperationOutput", name: "DeleteHypervisorOperationOutput")
    DisassociateGatewayFromServerOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DisassociateGatewayFromServerOperationInput", name: "DisassociateGatewayFromServerOperationInput")
    DisassociateGatewayFromServerOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#DisassociateGatewayFromServerOperationOutput", name: "DisassociateGatewayFromServerOperationOutput")
    Gateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#Gateway", name: "Gateway")
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#GatewayArn", name: "GatewayArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    GatewayDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GatewayDetails", name: "GatewayDetails")
    GatewayType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#GatewayType", name: "GatewayType", traits: {"smithy.api#enum" => [{"value" => "BACKUP_VM", "name" => "BACKUP_VM"}]})
    Gateways = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#Gateways", name: "Gateways")
    GetBandwidthRateLimitScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetBandwidthRateLimitScheduleOperationInput", name: "GetBandwidthRateLimitScheduleOperationInput")
    GetBandwidthRateLimitScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetBandwidthRateLimitScheduleOperationOutput", name: "GetBandwidthRateLimitScheduleOperationOutput")
    GetGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetGatewayOperationInput", name: "GetGatewayOperationInput")
    GetGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetGatewayOperationOutput", name: "GetGatewayOperationOutput")
    GetHypervisorOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetHypervisorOperationInput", name: "GetHypervisorOperationInput")
    GetHypervisorOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetHypervisorOperationOutput", name: "GetHypervisorOperationOutput")
    GetHypervisorPropertyMappingsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetHypervisorPropertyMappingsOperationInput", name: "GetHypervisorPropertyMappingsOperationInput")
    GetHypervisorPropertyMappingsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetHypervisorPropertyMappingsOperationOutput", name: "GetHypervisorPropertyMappingsOperationOutput")
    GetVirtualMachineOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetVirtualMachineOperationInput", name: "GetVirtualMachineOperationInput")
    GetVirtualMachineOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#GetVirtualMachineOperationOutput", name: "GetVirtualMachineOperationOutput")
    Host = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#Host", name: "Host", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    HourOfDay = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#HourOfDay", name: "HourOfDay", traits: {"smithy.api#range" => {"min" => 0, "max" => 23}})
    Hypervisor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#Hypervisor", name: "Hypervisor")
    HypervisorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#HypervisorDetails", name: "HypervisorDetails")
    HypervisorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#HypervisorId", name: "HypervisorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    HypervisorState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#HypervisorState", name: "HypervisorState", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "ONLINE", "name" => "ONLINE"}, {"value" => "OFFLINE", "name" => "OFFLINE"}, {"value" => "ERROR", "name" => "ERROR"}]})
    Hypervisors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#Hypervisors", name: "Hypervisors")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):iam::([0-9]+):role/(\\S+)$"})
    ImportHypervisorConfigurationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ImportHypervisorConfigurationOperationInput", name: "ImportHypervisorConfigurationOperationInput")
    ImportHypervisorConfigurationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ImportHypervisorConfigurationOperationOutput", name: "ImportHypervisorConfigurationOperationOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$"})
    ListGatewaysOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListGatewaysOperationInput", name: "ListGatewaysOperationInput")
    ListGatewaysOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListGatewaysOperationOutput", name: "ListGatewaysOperationOutput")
    ListHypervisorsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListHypervisorsOperationInput", name: "ListHypervisorsOperationInput")
    ListHypervisorsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListHypervisorsOperationOutput", name: "ListHypervisorsOperationOutput")
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListTagsForResourceOperationInput", name: "ListTagsForResourceOperationInput")
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListTagsForResourceOperationOutput", name: "ListTagsForResourceOperationOutput")
    ListVirtualMachinesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListVirtualMachinesOperationInput", name: "ListVirtualMachinesOperationInput")
    ListVirtualMachinesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ListVirtualMachinesOperationOutput", name: "ListVirtualMachinesOperationOutput")
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#LogGroupArn", name: "LogGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^$|^arn:(aws|aws-cn|aws-us-gov):logs:([a-zA-Z0-9-]+):([0-9]+):log-group:[a-zA-Z0-9_\\-\\/\\.]+:\\*$"})
    MaintenanceStartTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#MaintenanceStartTime", name: "MaintenanceStartTime")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    MinuteOfHour = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.backupgateway#MinuteOfHour", name: "MinuteOfHour", traits: {"smithy.api#range" => {"min" => 0, "max" => 59}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^.+$"})
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -~]+$", "smithy.api#sensitive" => {}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#Path", name: "Path", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^\\x00]+$"})
    PutBandwidthRateLimitScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutBandwidthRateLimitScheduleOperationInput", name: "PutBandwidthRateLimitScheduleOperationInput")
    PutBandwidthRateLimitScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutBandwidthRateLimitScheduleOperationOutput", name: "PutBandwidthRateLimitScheduleOperationOutput")
    PutHypervisorPropertyMappingsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutHypervisorPropertyMappingsOperationInput", name: "PutHypervisorPropertyMappingsOperationInput")
    PutHypervisorPropertyMappingsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutHypervisorPropertyMappingsOperationOutput", name: "PutHypervisorPropertyMappingsOperationOutput")
    PutMaintenanceStartTimeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutMaintenanceStartTimeOperationInput", name: "PutMaintenanceStartTimeOperationInput")
    PutMaintenanceStartTimeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#PutMaintenanceStartTimeOperationOutput", name: "PutMaintenanceStartTimeOperationOutput")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#ServerArn", name: "ServerArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 500}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
    StartVirtualMachinesMetadataSyncOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#StartVirtualMachinesMetadataSyncOperationInput", name: "StartVirtualMachinesMetadataSyncOperationInput")
    StartVirtualMachinesMetadataSyncOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#StartVirtualMachinesMetadataSyncOperationOutput", name: "StartVirtualMachinesMetadataSyncOperationOutput")
    SyncMetadataStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#SyncMetadataStatus", name: "SyncMetadataStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "PARTIALLY_FAILED", "name" => "PARTIALLY_FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#TagKeys", name: "TagKeys")
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#TagResourceOperationInput", name: "TagResourceOperationInput")
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#TagResourceOperationOutput", name: "TagResourceOperationOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\x00]*$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#Tags", name: "Tags")
    TestHypervisorConfigurationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#TestHypervisorConfigurationOperationInput", name: "TestHypervisorConfigurationOperationInput")
    TestHypervisorConfigurationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#TestHypervisorConfigurationOperationOutput", name: "TestHypervisorConfigurationOperationOutput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.backupgateway#Time", name: "Time")
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UntagResourceOperationInput", name: "UntagResourceOperationInput")
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UntagResourceOperationOutput", name: "UntagResourceOperationOutput")
    UpdateGatewayInformationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateGatewayInformationOperationInput", name: "UpdateGatewayInformationOperationInput")
    UpdateGatewayInformationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateGatewayInformationOperationOutput", name: "UpdateGatewayInformationOperationOutput")
    UpdateGatewaySoftwareNowOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateGatewaySoftwareNowOperationInput", name: "UpdateGatewaySoftwareNowOperationInput")
    UpdateGatewaySoftwareNowOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateGatewaySoftwareNowOperationOutput", name: "UpdateGatewaySoftwareNowOperationOutput")
    UpdateHypervisorOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateHypervisorOperationInput", name: "UpdateHypervisorOperationInput")
    UpdateHypervisorOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#UpdateHypervisorOperationOutput", name: "UpdateHypervisorOperationOutput")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$", "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VirtualMachine = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#VirtualMachine", name: "VirtualMachine")
    VirtualMachineDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#VirtualMachineDetails", name: "VirtualMachineDetails")
    VirtualMachines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#VirtualMachines", name: "VirtualMachines")
    VmwareCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#VmwareCategory", name: "VmwareCategory", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    VmwareTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#VmwareTag", name: "VmwareTag")
    VmwareTagName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#VmwareTagName", name: "VmwareTagName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    VmwareTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#VmwareTags", name: "VmwareTags")
    VmwareToAwsTagMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.backupgateway#VmwareToAwsTagMapping", name: "VmwareToAwsTagMapping")
    VmwareToAwsTagMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.backupgateway#VmwareToAwsTagMappings", name: "VmwareToAwsTagMappings")
    VpcEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#VpcEndpoint", name: "VpcEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#string", name: "String")

    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateGatewayToServerOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.add_member(:server_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "ServerArn", traits: {"smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.type = Types::AssociateGatewayToServerOperationInput
    AssociateGatewayToServerOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    AssociateGatewayToServerOperationOutput.type = Types::AssociateGatewayToServerOperationOutput
    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AverageUploadRateLimit, location_name: "AverageUploadRateLimitInBitsPerSec"))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: "StartHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: "EndHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: "StartMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: "EndMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:days_of_week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DaysOfWeek, location_name: "DaysOfWeek", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.type = Types::BandwidthRateLimitInterval
    BandwidthRateLimitIntervals.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitInterval)
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateGatewayOperationInput.add_member(:activation_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationKey, location_name: "ActivationKey", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGatewayOperationInput.type = Types::CreateGatewayOperationInput
    CreateGatewayOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    CreateGatewayOperationOutput.type = Types::CreateGatewayOperationOutput
    DaysOfWeek.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek)
    DeleteGatewayOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    DeleteGatewayOperationInput.type = Types::DeleteGatewayOperationInput
    DeleteGatewayOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    DeleteGatewayOperationOutput.type = Types::DeleteGatewayOperationOutput
    DeleteHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    DeleteHypervisorOperationInput.type = Types::DeleteHypervisorOperationInput
    DeleteHypervisorOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    DeleteHypervisorOperationOutput.type = Types::DeleteHypervisorOperationOutput
    DisassociateGatewayFromServerOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    DisassociateGatewayFromServerOperationInput.type = Types::DisassociateGatewayFromServerOperationInput
    DisassociateGatewayFromServerOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    DisassociateGatewayFromServerOperationOutput.type = Types::DisassociateGatewayFromServerOperationOutput
    Gateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    Gateway.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    Gateway.add_member(:gateway_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    Gateway.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorId, location_name: "HypervisorId"))
    Gateway.add_member(:last_seen_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastSeenTime"))
    Gateway.type = Types::Gateway
    GatewayDetails.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    GatewayDetails.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    GatewayDetails.add_member(:gateway_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    GatewayDetails.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorId, location_name: "HypervisorId"))
    GatewayDetails.add_member(:last_seen_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastSeenTime"))
    GatewayDetails.add_member(:maintenance_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStartTime, location_name: "MaintenanceStartTime"))
    GatewayDetails.add_member(:next_update_availability_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "NextUpdateAvailabilityTime"))
    GatewayDetails.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint"))
    GatewayDetails.type = Types::GatewayDetails
    Gateways.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gateway)
    GetBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    GetBandwidthRateLimitScheduleOperationInput.type = Types::GetBandwidthRateLimitScheduleOperationInput
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: "BandwidthRateLimitIntervals"))
    GetBandwidthRateLimitScheduleOperationOutput.type = Types::GetBandwidthRateLimitScheduleOperationOutput
    GetGatewayOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    GetGatewayOperationInput.type = Types::GetGatewayOperationInput
    GetGatewayOperationOutput.add_member(:gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDetails, location_name: "Gateway"))
    GetGatewayOperationOutput.type = Types::GetGatewayOperationOutput
    GetHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    GetHypervisorOperationInput.type = Types::GetHypervisorOperationInput
    GetHypervisorOperationOutput.add_member(:hypervisor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorDetails, location_name: "Hypervisor"))
    GetHypervisorOperationOutput.type = Types::GetHypervisorOperationOutput
    GetHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    GetHypervisorPropertyMappingsOperationInput.type = Types::GetHypervisorPropertyMappingsOperationInput
    GetHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:vmware_to_aws_tag_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, location_name: "VmwareToAwsTagMappings"))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    GetHypervisorPropertyMappingsOperationOutput.type = Types::GetHypervisorPropertyMappingsOperationOutput
    GetVirtualMachineOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetVirtualMachineOperationInput.type = Types::GetVirtualMachineOperationInput
    GetVirtualMachineOperationOutput.add_member(:virtual_machine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachineDetails, location_name: "VirtualMachine"))
    GetVirtualMachineOperationOutput.type = Types::GetVirtualMachineOperationOutput
    Hypervisor.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    Hypervisor.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    Hypervisor.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    Hypervisor.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Hypervisor.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorState, location_name: "State"))
    Hypervisor.type = Types::Hypervisor
    HypervisorDetails.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    HypervisorDetails.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    HypervisorDetails.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    HypervisorDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    HypervisorDetails.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "LogGroupArn"))
    HypervisorDetails.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HypervisorState, location_name: "State"))
    HypervisorDetails.add_member(:last_successful_metadata_sync_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastSuccessfulMetadataSyncTime"))
    HypervisorDetails.add_member(:latest_metadata_sync_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LatestMetadataSyncStatusMessage"))
    HypervisorDetails.add_member(:latest_metadata_sync_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncMetadataStatus, location_name: "LatestMetadataSyncStatus"))
    HypervisorDetails.type = Types::HypervisorDetails
    Hypervisors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hypervisor)
    ImportHypervisorConfigurationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: "Host", traits: {"smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    ImportHypervisorConfigurationOperationInput.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    ImportHypervisorConfigurationOperationInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    ImportHypervisorConfigurationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ImportHypervisorConfigurationOperationInput.type = Types::ImportHypervisorConfigurationOperationInput
    ImportHypervisorConfigurationOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    ImportHypervisorConfigurationOperationOutput.type = Types::ImportHypervisorConfigurationOperationOutput
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListGatewaysOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGatewaysOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysOperationInput.type = Types::ListGatewaysOperationInput
    ListGatewaysOperationOutput.add_member(:gateways, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gateways, location_name: "Gateways"))
    ListGatewaysOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysOperationOutput.type = Types::ListGatewaysOperationOutput
    ListHypervisorsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListHypervisorsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHypervisorsOperationInput.type = Types::ListHypervisorsOperationInput
    ListHypervisorsOperationOutput.add_member(:hypervisors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hypervisors, location_name: "Hypervisors"))
    ListHypervisorsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHypervisorsOperationOutput.type = Types::ListHypervisorsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListVirtualMachinesOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    ListVirtualMachinesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVirtualMachinesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVirtualMachinesOperationInput.type = Types::ListVirtualMachinesOperationInput
    ListVirtualMachinesOperationOutput.add_member(:virtual_machines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachines, location_name: "VirtualMachines"))
    ListVirtualMachinesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVirtualMachinesOperationOutput.type = Types::ListVirtualMachinesOperationOutput
    MaintenanceStartTime.add_member(:day_of_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "DayOfMonth"))
    MaintenanceStartTime.add_member(:day_of_week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    MaintenanceStartTime.add_member(:hour_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: "HourOfDay", traits: {"smithy.api#required" => {}}))
    MaintenanceStartTime.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: "MinuteOfHour", traits: {"smithy.api#required" => {}}))
    MaintenanceStartTime.type = Types::MaintenanceStartTime
    PutBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: "BandwidthRateLimitIntervals", traits: {"smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.type = Types::PutBandwidthRateLimitScheduleOperationInput
    PutBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    PutBandwidthRateLimitScheduleOperationOutput.type = Types::PutBandwidthRateLimitScheduleOperationOutput
    PutHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:vmware_to_aws_tag_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, location_name: "VmwareToAwsTagMappings", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.type = Types::PutHypervisorPropertyMappingsOperationInput
    PutHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    PutHypervisorPropertyMappingsOperationOutput.type = Types::PutHypervisorPropertyMappingsOperationOutput
    PutMaintenanceStartTimeOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:hour_of_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HourOfDay, location_name: "HourOfDay", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinuteOfHour, location_name: "MinuteOfHour", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "DayOfMonth"))
    PutMaintenanceStartTimeOperationInput.type = Types::PutMaintenanceStartTimeOperationInput
    PutMaintenanceStartTimeOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    PutMaintenanceStartTimeOperationOutput.type = Types::PutMaintenanceStartTimeOperationOutput
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartVirtualMachinesMetadataSyncOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    StartVirtualMachinesMetadataSyncOperationInput.type = Types::StartVirtualMachinesMetadataSyncOperationInput
    StartVirtualMachinesMetadataSyncOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    StartVirtualMachinesMetadataSyncOperationOutput.type = Types::StartVirtualMachinesMetadataSyncOperationOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TestHypervisorConfigurationOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: "Host", traits: {"smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    TestHypervisorConfigurationOperationInput.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    TestHypervisorConfigurationOperationInput.type = Types::TestHypervisorConfigurationOperationInput
    TestHypervisorConfigurationOperationOutput.type = Types::TestHypervisorConfigurationOperationOutput
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateGatewayInformationOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    UpdateGatewayInformationOperationInput.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    UpdateGatewayInformationOperationInput.type = Types::UpdateGatewayInformationOperationInput
    UpdateGatewayInformationOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    UpdateGatewayInformationOperationOutput.type = Types::UpdateGatewayInformationOperationOutput
    UpdateGatewaySoftwareNowOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    UpdateGatewaySoftwareNowOperationInput.type = Types::UpdateGatewaySoftwareNowOperationInput
    UpdateGatewaySoftwareNowOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    UpdateGatewaySoftwareNowOperationOutput.type = Types::UpdateGatewaySoftwareNowOperationOutput
    UpdateHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    UpdateHypervisorOperationInput.add_member(:host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    UpdateHypervisorOperationInput.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    UpdateHypervisorOperationInput.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    UpdateHypervisorOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateHypervisorOperationInput.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "LogGroupArn"))
    UpdateHypervisorOperationInput.type = Types::UpdateHypervisorOperationInput
    UpdateHypervisorOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    UpdateHypervisorOperationOutput.type = Types::UpdateHypervisorOperationOutput
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.type = Types::ValidationException
    VirtualMachine.add_member(:host_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "HostName"))
    VirtualMachine.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "HypervisorId"))
    VirtualMachine.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    VirtualMachine.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    VirtualMachine.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    VirtualMachine.add_member(:last_backup_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastBackupDate"))
    VirtualMachine.type = Types::VirtualMachine
    VirtualMachineDetails.add_member(:host_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "HostName"))
    VirtualMachineDetails.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "HypervisorId"))
    VirtualMachineDetails.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    VirtualMachineDetails.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    VirtualMachineDetails.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    VirtualMachineDetails.add_member(:last_backup_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastBackupDate"))
    VirtualMachineDetails.add_member(:vmware_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTags, location_name: "VmwareTags"))
    VirtualMachineDetails.type = Types::VirtualMachineDetails
    VirtualMachines.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualMachine)
    VmwareTag.add_member(:vmware_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareCategory, location_name: "VmwareCategory"))
    VmwareTag.add_member(:vmware_tag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTagName, location_name: "VmwareTagName"))
    VmwareTag.add_member(:vmware_tag_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VmwareTagDescription"))
    VmwareTag.type = Types::VmwareTag
    VmwareTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTag)
    VmwareToAwsTagMapping.add_member(:vmware_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareCategory, location_name: "VmwareCategory", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:vmware_tag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareTagName, location_name: "VmwareTagName", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "AwsTagKey", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "AwsTagValue", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.type = Types::VmwareToAwsTagMapping
    VmwareToAwsTagMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VmwareToAwsTagMapping)

    BackupOnPremisesV20210101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backupgateway#BackupOnPremises_v20210101"
      service.name = "BackupOnPremisesV20210101"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Backup Gateway", "arnNamespace" => "backup-gateway", "cloudFormationName" => "BackupGateway", "cloudTrailEventSource" => "backup-gateway.amazonaws.com", "endpointPrefix" => "backup-gateway"}, "aws.auth#sigv4" => {"name" => "backup-gateway"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Backup Gateway"}
      service.add_operation(:associate_gateway_to_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#AssociateGatewayToServer"
        operation.name = "AssociateGatewayToServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateGatewayToServerOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateGatewayToServerOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.traits = {}
      end)
      service.add_operation(:create_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteHypervisor"
        operation.name = "DeleteHypervisor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHypervisorOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHypervisorOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_gateway_from_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DisassociateGatewayFromServer"
        operation.name = "DisassociateGatewayFromServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetBandwidthRateLimitSchedule"
        operation.name = "GetBandwidthRateLimitSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetGateway"
        operation.name = "GetGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisor"
        operation.name = "GetHypervisor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor_property_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisorPropertyMappings"
        operation.name = "GetHypervisorPropertyMappings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_virtual_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetVirtualMachine"
        operation.name = "GetVirtualMachine"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVirtualMachineOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVirtualMachineOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_hypervisor_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ImportHypervisorConfiguration"
        operation.name = "ImportHypervisorConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.traits = {}
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListGateways"
        operation.name = "ListGateways"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_hypervisors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListHypervisors"
        operation.name = "ListHypervisors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHypervisorsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHypervisorsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHypervisors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_virtual_machines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListVirtualMachines"
        operation.name = "ListVirtualMachines"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualMachinesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVirtualMachinesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualMachines.new
      end)
      service.add_operation(:put_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutBandwidthRateLimitSchedule"
        operation.name = "PutBandwidthRateLimitSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_hypervisor_property_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutHypervisorPropertyMappings"
        operation.name = "PutHypervisorPropertyMappings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_maintenance_start_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutMaintenanceStartTime"
        operation.name = "PutMaintenanceStartTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_virtual_machines_metadata_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#StartVirtualMachinesMetadataSync"
        operation.name = "StartVirtualMachinesMetadataSync"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:test_hypervisor_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TestHypervisorConfiguration"
        operation.name = "TestHypervisorConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestHypervisorConfigurationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestHypervisorConfigurationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewayInformation"
        operation.name = "UpdateGatewayInformation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayInformationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_software_now, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewaySoftwareNow"
        operation.name = "UpdateGatewaySoftwareNow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateHypervisor"
        operation.name = "UpdateHypervisor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHypervisorOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHypervisorOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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
