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
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.backupgateway#GatewayArn", name: "GatewayArn", traits: {"smithy.api#length" => {"min" => 50, "max" => 180}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$"})
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

    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateGatewayToServerOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.add_member(:server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "ServerArn", traits: {"smithy.api#required" => {}}))
    AssociateGatewayToServerOperationInput.type = Types::AssociateGatewayToServerOperationInput
    AssociateGatewayToServerOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    AssociateGatewayToServerOperationOutput.type = Types::AssociateGatewayToServerOperationOutput
    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, ::Smithy::Schema::Shapes::MemberShape.new(target: AverageUploadRateLimit, name: "AverageUploadRateLimitInBitsPerSec"))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "StartHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "EndHourOfDay", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "StartMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "EndMinuteOfHour", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.add_member(:days_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysOfWeek, name: "DaysOfWeek", traits: {"smithy.api#required" => {}}))
    BandwidthRateLimitInterval.type = Types::BandwidthRateLimitInterval
    BandwidthRateLimitIntervals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitInterval, name: "member"))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateGatewayOperationInput.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "ActivationKey", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "GatewayDisplayName", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType", traits: {"smithy.api#required" => {}}))
    CreateGatewayOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateGatewayOperationInput.type = Types::CreateGatewayOperationInput
    CreateGatewayOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    CreateGatewayOperationOutput.type = Types::CreateGatewayOperationOutput
    DaysOfWeek.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "member"))
    DeleteGatewayOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    DeleteGatewayOperationInput.type = Types::DeleteGatewayOperationInput
    DeleteGatewayOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    DeleteGatewayOperationOutput.type = Types::DeleteGatewayOperationOutput
    DeleteHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    DeleteHypervisorOperationInput.type = Types::DeleteHypervisorOperationInput
    DeleteHypervisorOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    DeleteHypervisorOperationOutput.type = Types::DeleteHypervisorOperationOutput
    DisassociateGatewayFromServerOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    DisassociateGatewayFromServerOperationInput.type = Types::DisassociateGatewayFromServerOperationInput
    DisassociateGatewayFromServerOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    DisassociateGatewayFromServerOperationOutput.type = Types::DisassociateGatewayFromServerOperationOutput
    Gateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    Gateway.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "GatewayDisplayName"))
    Gateway.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType"))
    Gateway.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HypervisorId, name: "HypervisorId"))
    Gateway.add_member(:last_seen_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastSeenTime"))
    Gateway.type = Types::Gateway
    GatewayDetails.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    GatewayDetails.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "GatewayDisplayName"))
    GatewayDetails.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "GatewayType"))
    GatewayDetails.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HypervisorId, name: "HypervisorId"))
    GatewayDetails.add_member(:last_seen_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastSeenTime"))
    GatewayDetails.add_member(:maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceStartTime, name: "MaintenanceStartTime"))
    GatewayDetails.add_member(:next_update_availability_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "NextUpdateAvailabilityTime"))
    GatewayDetails.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    GatewayDetails.add_member(:deprecation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "DeprecationDate"))
    GatewayDetails.add_member(:software_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SoftwareVersion"))
    GatewayDetails.type = Types::GatewayDetails
    Gateways.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateway, name: "member"))
    GetBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    GetBandwidthRateLimitScheduleOperationInput.type = Types::GetBandwidthRateLimitScheduleOperationInput
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    GetBandwidthRateLimitScheduleOperationOutput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitIntervals, name: "BandwidthRateLimitIntervals"))
    GetBandwidthRateLimitScheduleOperationOutput.type = Types::GetBandwidthRateLimitScheduleOperationOutput
    GetGatewayOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    GetGatewayOperationInput.type = Types::GetGatewayOperationInput
    GetGatewayOperationOutput.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayDetails, name: "Gateway"))
    GetGatewayOperationOutput.type = Types::GetGatewayOperationOutput
    GetHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    GetHypervisorOperationInput.type = Types::GetHypervisorOperationInput
    GetHypervisorOperationOutput.add_member(:hypervisor, ::Smithy::Schema::Shapes::MemberShape.new(target: HypervisorDetails, name: "Hypervisor"))
    GetHypervisorOperationOutput.type = Types::GetHypervisorOperationOutput
    GetHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    GetHypervisorPropertyMappingsOperationInput.type = Types::GetHypervisorPropertyMappingsOperationInput
    GetHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:vmware_to_aws_tag_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareToAwsTagMappings, name: "VmwareToAwsTagMappings"))
    GetHypervisorPropertyMappingsOperationOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn"))
    GetHypervisorPropertyMappingsOperationOutput.type = Types::GetHypervisorPropertyMappingsOperationOutput
    GetVirtualMachineOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetVirtualMachineOperationInput.type = Types::GetVirtualMachineOperationInput
    GetVirtualMachineOperationOutput.add_member(:virtual_machine, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMachineDetails, name: "VirtualMachine"))
    GetVirtualMachineOperationOutput.type = Types::GetVirtualMachineOperationOutput
    Hypervisor.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host"))
    Hypervisor.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    Hypervisor.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    Hypervisor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    Hypervisor.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: HypervisorState, name: "State"))
    Hypervisor.type = Types::Hypervisor
    HypervisorDetails.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host"))
    HypervisorDetails.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    HypervisorDetails.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    HypervisorDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    HypervisorDetails.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "LogGroupArn"))
    HypervisorDetails.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: HypervisorState, name: "State"))
    HypervisorDetails.add_member(:last_successful_metadata_sync_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastSuccessfulMetadataSyncTime"))
    HypervisorDetails.add_member(:latest_metadata_sync_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestMetadataSyncStatusMessage"))
    HypervisorDetails.add_member(:latest_metadata_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncMetadataStatus, name: "LatestMetadataSyncStatus"))
    HypervisorDetails.type = Types::HypervisorDetails
    Hypervisors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Hypervisor, name: "member"))
    ImportHypervisorConfigurationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host", traits: {"smithy.api#required" => {}}))
    ImportHypervisorConfigurationOperationInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    ImportHypervisorConfigurationOperationInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    ImportHypervisorConfigurationOperationInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    ImportHypervisorConfigurationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ImportHypervisorConfigurationOperationInput.type = Types::ImportHypervisorConfigurationOperationInput
    ImportHypervisorConfigurationOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    ImportHypervisorConfigurationOperationOutput.type = Types::ImportHypervisorConfigurationOperationOutput
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListGatewaysOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListGatewaysOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGatewaysOperationInput.type = Types::ListGatewaysOperationInput
    ListGatewaysOperationOutput.add_member(:gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateways, name: "Gateways"))
    ListGatewaysOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGatewaysOperationOutput.type = Types::ListGatewaysOperationOutput
    ListHypervisorsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListHypervisorsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHypervisorsOperationInput.type = Types::ListHypervisorsOperationInput
    ListHypervisorsOperationOutput.add_member(:hypervisors, ::Smithy::Schema::Shapes::MemberShape.new(target: Hypervisors, name: "Hypervisors"))
    ListHypervisorsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHypervisorsOperationOutput.type = Types::ListHypervisorsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListVirtualMachinesOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    ListVirtualMachinesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListVirtualMachinesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListVirtualMachinesOperationInput.type = Types::ListVirtualMachinesOperationInput
    ListVirtualMachinesOperationOutput.add_member(:virtual_machines, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMachines, name: "VirtualMachines"))
    ListVirtualMachinesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListVirtualMachinesOperationOutput.type = Types::ListVirtualMachinesOperationOutput
    MaintenanceStartTime.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfMonth, name: "DayOfMonth"))
    MaintenanceStartTime.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "DayOfWeek"))
    MaintenanceStartTime.add_member(:hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "HourOfDay", traits: {"smithy.api#required" => {}}))
    MaintenanceStartTime.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "MinuteOfHour", traits: {"smithy.api#required" => {}}))
    MaintenanceStartTime.type = Types::MaintenanceStartTime
    PutBandwidthRateLimitScheduleOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.add_member(:bandwidth_rate_limit_intervals, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthRateLimitIntervals, name: "BandwidthRateLimitIntervals", traits: {"smithy.api#required" => {}}))
    PutBandwidthRateLimitScheduleOperationInput.type = Types::PutBandwidthRateLimitScheduleOperationInput
    PutBandwidthRateLimitScheduleOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    PutBandwidthRateLimitScheduleOperationOutput.type = Types::PutBandwidthRateLimitScheduleOperationOutput
    PutHypervisorPropertyMappingsOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:vmware_to_aws_tag_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareToAwsTagMappings, name: "VmwareToAwsTagMappings", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    PutHypervisorPropertyMappingsOperationInput.type = Types::PutHypervisorPropertyMappingsOperationInput
    PutHypervisorPropertyMappingsOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    PutHypervisorPropertyMappingsOperationOutput.type = Types::PutHypervisorPropertyMappingsOperationOutput
    PutMaintenanceStartTimeOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:hour_of_day, ::Smithy::Schema::Shapes::MemberShape.new(target: HourOfDay, name: "HourOfDay", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:minute_of_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: MinuteOfHour, name: "MinuteOfHour", traits: {"smithy.api#required" => {}}))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "DayOfWeek"))
    PutMaintenanceStartTimeOperationInput.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfMonth, name: "DayOfMonth"))
    PutMaintenanceStartTimeOperationInput.type = Types::PutMaintenanceStartTimeOperationInput
    PutMaintenanceStartTimeOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    PutMaintenanceStartTimeOperationOutput.type = Types::PutMaintenanceStartTimeOperationOutput
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StartVirtualMachinesMetadataSyncOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    StartVirtualMachinesMetadataSyncOperationInput.type = Types::StartVirtualMachinesMetadataSyncOperationInput
    StartVirtualMachinesMetadataSyncOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    StartVirtualMachinesMetadataSyncOperationOutput.type = Types::StartVirtualMachinesMetadataSyncOperationOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN"))
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TestHypervisorConfigurationOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host", traits: {"smithy.api#required" => {}}))
    TestHypervisorConfigurationOperationInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    TestHypervisorConfigurationOperationInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    TestHypervisorConfigurationOperationInput.type = Types::TestHypervisorConfigurationOperationInput
    TestHypervisorConfigurationOperationOutput.type = Types::TestHypervisorConfigurationOperationOutput
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN"))
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateGatewayInformationOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    UpdateGatewayInformationOperationInput.add_member(:gateway_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "GatewayDisplayName"))
    UpdateGatewayInformationOperationInput.type = Types::UpdateGatewayInformationOperationInput
    UpdateGatewayInformationOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    UpdateGatewayInformationOperationOutput.type = Types::UpdateGatewayInformationOperationOutput
    UpdateGatewaySoftwareNowOperationInput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#required" => {}}))
    UpdateGatewaySoftwareNowOperationInput.type = Types::UpdateGatewaySoftwareNowOperationInput
    UpdateGatewaySoftwareNowOperationOutput.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn"))
    UpdateGatewaySoftwareNowOperationOutput.type = Types::UpdateGatewaySoftwareNowOperationOutput
    UpdateHypervisorOperationInput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn", traits: {"smithy.api#required" => {}}))
    UpdateHypervisorOperationInput.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host"))
    UpdateHypervisorOperationInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    UpdateHypervisorOperationInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    UpdateHypervisorOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateHypervisorOperationInput.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "LogGroupArn"))
    UpdateHypervisorOperationInput.type = Types::UpdateHypervisorOperationInput
    UpdateHypervisorOperationOutput.add_member(:hypervisor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerArn, name: "HypervisorArn"))
    UpdateHypervisorOperationOutput.type = Types::UpdateHypervisorOperationOutput
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationException.type = Types::ValidationException
    VirtualMachine.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "HostName"))
    VirtualMachine.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HypervisorId"))
    VirtualMachine.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    VirtualMachine.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    VirtualMachine.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    VirtualMachine.add_member(:last_backup_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastBackupDate"))
    VirtualMachine.type = Types::VirtualMachine
    VirtualMachineDetails.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "HostName"))
    VirtualMachineDetails.add_member(:hypervisor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HypervisorId"))
    VirtualMachineDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    VirtualMachineDetails.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    VirtualMachineDetails.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    VirtualMachineDetails.add_member(:last_backup_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastBackupDate"))
    VirtualMachineDetails.add_member(:vmware_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareTags, name: "VmwareTags"))
    VirtualMachineDetails.type = Types::VirtualMachineDetails
    VirtualMachines.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualMachine, name: "member"))
    VmwareTag.add_member(:vmware_category, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareCategory, name: "VmwareCategory"))
    VmwareTag.add_member(:vmware_tag_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareTagName, name: "VmwareTagName"))
    VmwareTag.add_member(:vmware_tag_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VmwareTagDescription"))
    VmwareTag.type = Types::VmwareTag
    VmwareTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareTag, name: "member"))
    VmwareToAwsTagMapping.add_member(:vmware_category, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareCategory, name: "VmwareCategory", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:vmware_tag_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareTagName, name: "VmwareTagName", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "AwsTagKey", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.add_member(:aws_tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "AwsTagValue", traits: {"smithy.api#required" => {}}))
    VmwareToAwsTagMapping.type = Types::VmwareToAwsTagMapping
    VmwareToAwsTagMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VmwareToAwsTagMapping, name: "member"))

    BackupOnPremisesV20210101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.backupgateway#BackupOnPremises_v20210101"
      service.name = "BackupOnPremisesV20210101"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Backup Gateway", "arnNamespace" => "backup-gateway", "cloudFormationName" => "BackupGateway", "cloudTrailEventSource" => "backup-gateway.amazonaws.com", "endpointPrefix" => "backup-gateway"}, "aws.auth#sigv4" => {"name" => "backup-gateway"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Backup Gateway", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-gateway-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-gateway-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-gateway.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://backup-gateway.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_gateway_to_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#AssociateGatewayToServer"
        operation.name = "AssociateGatewayToServer"
        operation.input = AssociateGatewayToServerOperationInput
        operation.output = AssociateGatewayToServerOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.traits = {}
      end)
      service.add_operation(:create_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = CreateGatewayOperationInput
        operation.output = CreateGatewayOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = DeleteGatewayOperationInput
        operation.output = DeleteGatewayOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DeleteHypervisor"
        operation.name = "DeleteHypervisor"
        operation.input = DeleteHypervisorOperationInput
        operation.output = DeleteHypervisorOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_gateway_from_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#DisassociateGatewayFromServer"
        operation.name = "DisassociateGatewayFromServer"
        operation.input = DisassociateGatewayFromServerOperationInput
        operation.output = DisassociateGatewayFromServerOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetBandwidthRateLimitSchedule"
        operation.name = "GetBandwidthRateLimitSchedule"
        operation.input = GetBandwidthRateLimitScheduleOperationInput
        operation.output = GetBandwidthRateLimitScheduleOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetGateway"
        operation.name = "GetGateway"
        operation.input = GetGatewayOperationInput
        operation.output = GetGatewayOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisor"
        operation.name = "GetHypervisor"
        operation.input = GetHypervisorOperationInput
        operation.output = GetHypervisorOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_hypervisor_property_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetHypervisorPropertyMappings"
        operation.name = "GetHypervisorPropertyMappings"
        operation.input = GetHypervisorPropertyMappingsOperationInput
        operation.output = GetHypervisorPropertyMappingsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_virtual_machine, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#GetVirtualMachine"
        operation.name = "GetVirtualMachine"
        operation.input = GetVirtualMachineOperationInput
        operation.output = GetVirtualMachineOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_hypervisor_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ImportHypervisorConfiguration"
        operation.name = "ImportHypervisorConfiguration"
        operation.input = ImportHypervisorConfigurationOperationInput
        operation.output = ImportHypervisorConfigurationOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.traits = {}
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListGateways"
        operation.name = "ListGateways"
        operation.input = ListGatewaysOperationInput
        operation.output = ListGatewaysOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_hypervisors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListHypervisors"
        operation.name = "ListHypervisors"
        operation.input = ListHypervisorsOperationInput
        operation.output = ListHypervisorsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHypervisors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceOperationInput
        operation.output = ListTagsForResourceOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_virtual_machines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#ListVirtualMachines"
        operation.name = "ListVirtualMachines"
        operation.input = ListVirtualMachinesOperationInput
        operation.output = ListVirtualMachinesOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualMachines.new
      end)
      service.add_operation(:put_bandwidth_rate_limit_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutBandwidthRateLimitSchedule"
        operation.name = "PutBandwidthRateLimitSchedule"
        operation.input = PutBandwidthRateLimitScheduleOperationInput
        operation.output = PutBandwidthRateLimitScheduleOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_hypervisor_property_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutHypervisorPropertyMappings"
        operation.name = "PutHypervisorPropertyMappings"
        operation.input = PutHypervisorPropertyMappingsOperationInput
        operation.output = PutHypervisorPropertyMappingsOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_maintenance_start_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#PutMaintenanceStartTime"
        operation.name = "PutMaintenanceStartTime"
        operation.input = PutMaintenanceStartTimeOperationInput
        operation.output = PutMaintenanceStartTimeOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_virtual_machines_metadata_sync, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#StartVirtualMachinesMetadataSync"
        operation.name = "StartVirtualMachinesMetadataSync"
        operation.input = StartVirtualMachinesMetadataSyncOperationInput
        operation.output = StartVirtualMachinesMetadataSyncOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceOperationInput
        operation.output = TagResourceOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:test_hypervisor_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#TestHypervisorConfiguration"
        operation.name = "TestHypervisorConfiguration"
        operation.input = TestHypervisorConfigurationOperationInput
        operation.output = TestHypervisorConfigurationOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceOperationInput
        operation.output = UntagResourceOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewayInformation"
        operation.name = "UpdateGatewayInformation"
        operation.input = UpdateGatewayInformationOperationInput
        operation.output = UpdateGatewayInformationOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_gateway_software_now, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateGatewaySoftwareNow"
        operation.name = "UpdateGatewaySoftwareNow"
        operation.input = UpdateGatewaySoftwareNowOperationInput
        operation.output = UpdateGatewaySoftwareNowOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_hypervisor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.backupgateway#UpdateHypervisor"
        operation.name = "UpdateHypervisor"
        operation.input = UpdateHypervisorOperationInput
        operation.output = UpdateHypervisorOperationOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
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
