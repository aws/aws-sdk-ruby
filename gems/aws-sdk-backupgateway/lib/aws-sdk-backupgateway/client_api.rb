# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupGateway
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivationKey = Shapes::StringShape.new(name: 'ActivationKey')
    AssociateGatewayToServerInput = Shapes::StructureShape.new(name: 'AssociateGatewayToServerInput')
    AssociateGatewayToServerOutput = Shapes::StructureShape.new(name: 'AssociateGatewayToServerOutput')
    AverageUploadRateLimit = Shapes::IntegerShape.new(name: 'AverageUploadRateLimit')
    BandwidthRateLimitInterval = Shapes::StructureShape.new(name: 'BandwidthRateLimitInterval')
    BandwidthRateLimitIntervals = Shapes::ListShape.new(name: 'BandwidthRateLimitIntervals')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGatewayInput = Shapes::StructureShape.new(name: 'CreateGatewayInput')
    CreateGatewayOutput = Shapes::StructureShape.new(name: 'CreateGatewayOutput')
    DayOfMonth = Shapes::IntegerShape.new(name: 'DayOfMonth')
    DayOfWeek = Shapes::IntegerShape.new(name: 'DayOfWeek')
    DaysOfWeek = Shapes::ListShape.new(name: 'DaysOfWeek')
    DeleteGatewayInput = Shapes::StructureShape.new(name: 'DeleteGatewayInput')
    DeleteGatewayOutput = Shapes::StructureShape.new(name: 'DeleteGatewayOutput')
    DeleteHypervisorInput = Shapes::StructureShape.new(name: 'DeleteHypervisorInput')
    DeleteHypervisorOutput = Shapes::StructureShape.new(name: 'DeleteHypervisorOutput')
    DisassociateGatewayFromServerInput = Shapes::StructureShape.new(name: 'DisassociateGatewayFromServerInput')
    DisassociateGatewayFromServerOutput = Shapes::StructureShape.new(name: 'DisassociateGatewayFromServerOutput')
    Gateway = Shapes::StructureShape.new(name: 'Gateway')
    GatewayArn = Shapes::StringShape.new(name: 'GatewayArn')
    GatewayDetails = Shapes::StructureShape.new(name: 'GatewayDetails')
    GatewayType = Shapes::StringShape.new(name: 'GatewayType')
    Gateways = Shapes::ListShape.new(name: 'Gateways')
    GetBandwidthRateLimitScheduleInput = Shapes::StructureShape.new(name: 'GetBandwidthRateLimitScheduleInput')
    GetBandwidthRateLimitScheduleOutput = Shapes::StructureShape.new(name: 'GetBandwidthRateLimitScheduleOutput')
    GetGatewayInput = Shapes::StructureShape.new(name: 'GetGatewayInput')
    GetGatewayOutput = Shapes::StructureShape.new(name: 'GetGatewayOutput')
    GetHypervisorInput = Shapes::StructureShape.new(name: 'GetHypervisorInput')
    GetHypervisorOutput = Shapes::StructureShape.new(name: 'GetHypervisorOutput')
    GetHypervisorPropertyMappingsInput = Shapes::StructureShape.new(name: 'GetHypervisorPropertyMappingsInput')
    GetHypervisorPropertyMappingsOutput = Shapes::StructureShape.new(name: 'GetHypervisorPropertyMappingsOutput')
    GetVirtualMachineInput = Shapes::StructureShape.new(name: 'GetVirtualMachineInput')
    GetVirtualMachineOutput = Shapes::StructureShape.new(name: 'GetVirtualMachineOutput')
    Host = Shapes::StringShape.new(name: 'Host')
    HourOfDay = Shapes::IntegerShape.new(name: 'HourOfDay')
    Hypervisor = Shapes::StructureShape.new(name: 'Hypervisor')
    HypervisorDetails = Shapes::StructureShape.new(name: 'HypervisorDetails')
    HypervisorId = Shapes::StringShape.new(name: 'HypervisorId')
    HypervisorState = Shapes::StringShape.new(name: 'HypervisorState')
    Hypervisors = Shapes::ListShape.new(name: 'Hypervisors')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    ImportHypervisorConfigurationInput = Shapes::StructureShape.new(name: 'ImportHypervisorConfigurationInput')
    ImportHypervisorConfigurationOutput = Shapes::StructureShape.new(name: 'ImportHypervisorConfigurationOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListGatewaysInput = Shapes::StructureShape.new(name: 'ListGatewaysInput')
    ListGatewaysOutput = Shapes::StructureShape.new(name: 'ListGatewaysOutput')
    ListHypervisorsInput = Shapes::StructureShape.new(name: 'ListHypervisorsInput')
    ListHypervisorsOutput = Shapes::StructureShape.new(name: 'ListHypervisorsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListVirtualMachinesInput = Shapes::StructureShape.new(name: 'ListVirtualMachinesInput')
    ListVirtualMachinesOutput = Shapes::StructureShape.new(name: 'ListVirtualMachinesOutput')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    MaintenanceStartTime = Shapes::StructureShape.new(name: 'MaintenanceStartTime')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MinuteOfHour = Shapes::IntegerShape.new(name: 'MinuteOfHour')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Password = Shapes::StringShape.new(name: 'Password')
    Path = Shapes::StringShape.new(name: 'Path')
    PutBandwidthRateLimitScheduleInput = Shapes::StructureShape.new(name: 'PutBandwidthRateLimitScheduleInput')
    PutBandwidthRateLimitScheduleOutput = Shapes::StructureShape.new(name: 'PutBandwidthRateLimitScheduleOutput')
    PutHypervisorPropertyMappingsInput = Shapes::StructureShape.new(name: 'PutHypervisorPropertyMappingsInput')
    PutHypervisorPropertyMappingsOutput = Shapes::StructureShape.new(name: 'PutHypervisorPropertyMappingsOutput')
    PutMaintenanceStartTimeInput = Shapes::StructureShape.new(name: 'PutMaintenanceStartTimeInput')
    PutMaintenanceStartTimeOutput = Shapes::StructureShape.new(name: 'PutMaintenanceStartTimeOutput')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServerArn = Shapes::StringShape.new(name: 'ServerArn')
    StartVirtualMachinesMetadataSyncInput = Shapes::StructureShape.new(name: 'StartVirtualMachinesMetadataSyncInput')
    StartVirtualMachinesMetadataSyncOutput = Shapes::StructureShape.new(name: 'StartVirtualMachinesMetadataSyncOutput')
    SyncMetadataStatus = Shapes::StringShape.new(name: 'SyncMetadataStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TestHypervisorConfigurationInput = Shapes::StructureShape.new(name: 'TestHypervisorConfigurationInput')
    TestHypervisorConfigurationOutput = Shapes::StructureShape.new(name: 'TestHypervisorConfigurationOutput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::TimestampShape.new(name: 'Time')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateGatewayInformationInput = Shapes::StructureShape.new(name: 'UpdateGatewayInformationInput')
    UpdateGatewayInformationOutput = Shapes::StructureShape.new(name: 'UpdateGatewayInformationOutput')
    UpdateGatewaySoftwareNowInput = Shapes::StructureShape.new(name: 'UpdateGatewaySoftwareNowInput')
    UpdateGatewaySoftwareNowOutput = Shapes::StructureShape.new(name: 'UpdateGatewaySoftwareNowOutput')
    UpdateHypervisorInput = Shapes::StructureShape.new(name: 'UpdateHypervisorInput')
    UpdateHypervisorOutput = Shapes::StructureShape.new(name: 'UpdateHypervisorOutput')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VirtualMachine = Shapes::StructureShape.new(name: 'VirtualMachine')
    VirtualMachineDetails = Shapes::StructureShape.new(name: 'VirtualMachineDetails')
    VirtualMachines = Shapes::ListShape.new(name: 'VirtualMachines')
    VmwareCategory = Shapes::StringShape.new(name: 'VmwareCategory')
    VmwareTag = Shapes::StructureShape.new(name: 'VmwareTag')
    VmwareTagName = Shapes::StringShape.new(name: 'VmwareTagName')
    VmwareTags = Shapes::ListShape.new(name: 'VmwareTags')
    VmwareToAwsTagMapping = Shapes::StructureShape.new(name: 'VmwareToAwsTagMapping')
    VmwareToAwsTagMappings = Shapes::ListShape.new(name: 'VmwareToAwsTagMappings')
    VpcEndpoint = Shapes::StringShape.new(name: 'VpcEndpoint')
    string = Shapes::StringShape.new(name: 'string')

    AccessDeniedException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ErrorCode"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateGatewayToServerInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    AssociateGatewayToServerInput.add_member(:server_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "ServerArn"))
    AssociateGatewayToServerInput.struct_class = Types::AssociateGatewayToServerInput

    AssociateGatewayToServerOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    AssociateGatewayToServerOutput.struct_class = Types::AssociateGatewayToServerOutput

    BandwidthRateLimitInterval.add_member(:average_upload_rate_limit_in_bits_per_sec, Shapes::ShapeRef.new(shape: AverageUploadRateLimit, location_name: "AverageUploadRateLimitInBitsPerSec"))
    BandwidthRateLimitInterval.add_member(:days_of_week, Shapes::ShapeRef.new(shape: DaysOfWeek, required: true, location_name: "DaysOfWeek"))
    BandwidthRateLimitInterval.add_member(:end_hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "EndHourOfDay"))
    BandwidthRateLimitInterval.add_member(:end_minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "EndMinuteOfHour"))
    BandwidthRateLimitInterval.add_member(:start_hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "StartHourOfDay"))
    BandwidthRateLimitInterval.add_member(:start_minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "StartMinuteOfHour"))
    BandwidthRateLimitInterval.struct_class = Types::BandwidthRateLimitInterval

    BandwidthRateLimitIntervals.member = Shapes::ShapeRef.new(shape: BandwidthRateLimitInterval)

    ConflictException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ErrorCode"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateGatewayInput.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "ActivationKey"))
    CreateGatewayInput.add_member(:gateway_display_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "GatewayDisplayName"))
    CreateGatewayInput.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, required: true, location_name: "GatewayType"))
    CreateGatewayInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGatewayInput.struct_class = Types::CreateGatewayInput

    CreateGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    CreateGatewayOutput.struct_class = Types::CreateGatewayOutput

    DaysOfWeek.member = Shapes::ShapeRef.new(shape: DayOfWeek)

    DeleteGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    DeleteGatewayInput.struct_class = Types::DeleteGatewayInput

    DeleteGatewayOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    DeleteGatewayOutput.struct_class = Types::DeleteGatewayOutput

    DeleteHypervisorInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    DeleteHypervisorInput.struct_class = Types::DeleteHypervisorInput

    DeleteHypervisorOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    DeleteHypervisorOutput.struct_class = Types::DeleteHypervisorOutput

    DisassociateGatewayFromServerInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    DisassociateGatewayFromServerInput.struct_class = Types::DisassociateGatewayFromServerInput

    DisassociateGatewayFromServerOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    DisassociateGatewayFromServerOutput.struct_class = Types::DisassociateGatewayFromServerOutput

    Gateway.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    Gateway.add_member(:gateway_display_name, Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    Gateway.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    Gateway.add_member(:hypervisor_id, Shapes::ShapeRef.new(shape: HypervisorId, location_name: "HypervisorId"))
    Gateway.add_member(:last_seen_time, Shapes::ShapeRef.new(shape: Time, location_name: "LastSeenTime"))
    Gateway.struct_class = Types::Gateway

    GatewayDetails.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    GatewayDetails.add_member(:gateway_display_name, Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    GatewayDetails.add_member(:gateway_type, Shapes::ShapeRef.new(shape: GatewayType, location_name: "GatewayType"))
    GatewayDetails.add_member(:hypervisor_id, Shapes::ShapeRef.new(shape: HypervisorId, location_name: "HypervisorId"))
    GatewayDetails.add_member(:last_seen_time, Shapes::ShapeRef.new(shape: Time, location_name: "LastSeenTime"))
    GatewayDetails.add_member(:maintenance_start_time, Shapes::ShapeRef.new(shape: MaintenanceStartTime, location_name: "MaintenanceStartTime"))
    GatewayDetails.add_member(:next_update_availability_time, Shapes::ShapeRef.new(shape: Time, location_name: "NextUpdateAvailabilityTime"))
    GatewayDetails.add_member(:vpc_endpoint, Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "VpcEndpoint"))
    GatewayDetails.struct_class = Types::GatewayDetails

    Gateways.member = Shapes::ShapeRef.new(shape: Gateway)

    GetBandwidthRateLimitScheduleInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    GetBandwidthRateLimitScheduleInput.struct_class = Types::GetBandwidthRateLimitScheduleInput

    GetBandwidthRateLimitScheduleOutput.add_member(:bandwidth_rate_limit_intervals, Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, location_name: "BandwidthRateLimitIntervals"))
    GetBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    GetBandwidthRateLimitScheduleOutput.struct_class = Types::GetBandwidthRateLimitScheduleOutput

    GetGatewayInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    GetGatewayInput.struct_class = Types::GetGatewayInput

    GetGatewayOutput.add_member(:gateway, Shapes::ShapeRef.new(shape: GatewayDetails, location_name: "Gateway"))
    GetGatewayOutput.struct_class = Types::GetGatewayOutput

    GetHypervisorInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    GetHypervisorInput.struct_class = Types::GetHypervisorInput

    GetHypervisorOutput.add_member(:hypervisor, Shapes::ShapeRef.new(shape: HypervisorDetails, location_name: "Hypervisor"))
    GetHypervisorOutput.struct_class = Types::GetHypervisorOutput

    GetHypervisorPropertyMappingsInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    GetHypervisorPropertyMappingsInput.struct_class = Types::GetHypervisorPropertyMappingsInput

    GetHypervisorPropertyMappingsOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    GetHypervisorPropertyMappingsOutput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "IamRoleArn"))
    GetHypervisorPropertyMappingsOutput.add_member(:vmware_to_aws_tag_mappings, Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, location_name: "VmwareToAwsTagMappings"))
    GetHypervisorPropertyMappingsOutput.struct_class = Types::GetHypervisorPropertyMappingsOutput

    GetVirtualMachineInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetVirtualMachineInput.struct_class = Types::GetVirtualMachineInput

    GetVirtualMachineOutput.add_member(:virtual_machine, Shapes::ShapeRef.new(shape: VirtualMachineDetails, location_name: "VirtualMachine"))
    GetVirtualMachineOutput.struct_class = Types::GetVirtualMachineOutput

    Hypervisor.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    Hypervisor.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    Hypervisor.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    Hypervisor.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Hypervisor.add_member(:state, Shapes::ShapeRef.new(shape: HypervisorState, location_name: "State"))
    Hypervisor.struct_class = Types::Hypervisor

    HypervisorDetails.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    HypervisorDetails.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    HypervisorDetails.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    HypervisorDetails.add_member(:last_successful_metadata_sync_time, Shapes::ShapeRef.new(shape: Time, location_name: "LastSuccessfulMetadataSyncTime"))
    HypervisorDetails.add_member(:latest_metadata_sync_status, Shapes::ShapeRef.new(shape: SyncMetadataStatus, location_name: "LatestMetadataSyncStatus"))
    HypervisorDetails.add_member(:latest_metadata_sync_status_message, Shapes::ShapeRef.new(shape: string, location_name: "LatestMetadataSyncStatusMessage"))
    HypervisorDetails.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "LogGroupArn"))
    HypervisorDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    HypervisorDetails.add_member(:state, Shapes::ShapeRef.new(shape: HypervisorState, location_name: "State"))
    HypervisorDetails.struct_class = Types::HypervisorDetails

    Hypervisors.member = Shapes::ShapeRef.new(shape: Hypervisor)

    ImportHypervisorConfigurationInput.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    ImportHypervisorConfigurationInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    ImportHypervisorConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    ImportHypervisorConfigurationInput.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    ImportHypervisorConfigurationInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ImportHypervisorConfigurationInput.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    ImportHypervisorConfigurationInput.struct_class = Types::ImportHypervisorConfigurationInput

    ImportHypervisorConfigurationOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    ImportHypervisorConfigurationOutput.struct_class = Types::ImportHypervisorConfigurationOutput

    InternalServerException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "ErrorCode"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListGatewaysInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGatewaysInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysInput.struct_class = Types::ListGatewaysInput

    ListGatewaysOutput.add_member(:gateways, Shapes::ShapeRef.new(shape: Gateways, location_name: "Gateways"))
    ListGatewaysOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGatewaysOutput.struct_class = Types::ListGatewaysOutput

    ListHypervisorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListHypervisorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHypervisorsInput.struct_class = Types::ListHypervisorsInput

    ListHypervisorsOutput.add_member(:hypervisors, Shapes::ShapeRef.new(shape: Hypervisors, location_name: "Hypervisors"))
    ListHypervisorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHypervisorsOutput.struct_class = Types::ListHypervisorsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListVirtualMachinesInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    ListVirtualMachinesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListVirtualMachinesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVirtualMachinesInput.struct_class = Types::ListVirtualMachinesInput

    ListVirtualMachinesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVirtualMachinesOutput.add_member(:virtual_machines, Shapes::ShapeRef.new(shape: VirtualMachines, location_name: "VirtualMachines"))
    ListVirtualMachinesOutput.struct_class = Types::ListVirtualMachinesOutput

    MaintenanceStartTime.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "DayOfMonth"))
    MaintenanceStartTime.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    MaintenanceStartTime.add_member(:hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "HourOfDay"))
    MaintenanceStartTime.add_member(:minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "MinuteOfHour"))
    MaintenanceStartTime.struct_class = Types::MaintenanceStartTime

    PutBandwidthRateLimitScheduleInput.add_member(:bandwidth_rate_limit_intervals, Shapes::ShapeRef.new(shape: BandwidthRateLimitIntervals, required: true, location_name: "BandwidthRateLimitIntervals"))
    PutBandwidthRateLimitScheduleInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    PutBandwidthRateLimitScheduleInput.struct_class = Types::PutBandwidthRateLimitScheduleInput

    PutBandwidthRateLimitScheduleOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    PutBandwidthRateLimitScheduleOutput.struct_class = Types::PutBandwidthRateLimitScheduleOutput

    PutHypervisorPropertyMappingsInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    PutHypervisorPropertyMappingsInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "IamRoleArn"))
    PutHypervisorPropertyMappingsInput.add_member(:vmware_to_aws_tag_mappings, Shapes::ShapeRef.new(shape: VmwareToAwsTagMappings, required: true, location_name: "VmwareToAwsTagMappings"))
    PutHypervisorPropertyMappingsInput.struct_class = Types::PutHypervisorPropertyMappingsInput

    PutHypervisorPropertyMappingsOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    PutHypervisorPropertyMappingsOutput.struct_class = Types::PutHypervisorPropertyMappingsOutput

    PutMaintenanceStartTimeInput.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "DayOfMonth"))
    PutMaintenanceStartTimeInput.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    PutMaintenanceStartTimeInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    PutMaintenanceStartTimeInput.add_member(:hour_of_day, Shapes::ShapeRef.new(shape: HourOfDay, required: true, location_name: "HourOfDay"))
    PutMaintenanceStartTimeInput.add_member(:minute_of_hour, Shapes::ShapeRef.new(shape: MinuteOfHour, required: true, location_name: "MinuteOfHour"))
    PutMaintenanceStartTimeInput.struct_class = Types::PutMaintenanceStartTimeInput

    PutMaintenanceStartTimeOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    PutMaintenanceStartTimeOutput.struct_class = Types::PutMaintenanceStartTimeOutput

    ResourceNotFoundException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "ErrorCode"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StartVirtualMachinesMetadataSyncInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    StartVirtualMachinesMetadataSyncInput.struct_class = Types::StartVirtualMachinesMetadataSyncInput

    StartVirtualMachinesMetadataSyncOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    StartVirtualMachinesMetadataSyncOutput.struct_class = Types::StartVirtualMachinesMetadataSyncOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    TagResourceOutput.struct_class = Types::TagResourceOutput

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TestHypervisorConfigurationInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    TestHypervisorConfigurationInput.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    TestHypervisorConfigurationInput.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    TestHypervisorConfigurationInput.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    TestHypervisorConfigurationInput.struct_class = Types::TestHypervisorConfigurationInput

    TestHypervisorConfigurationOutput.struct_class = Types::TestHypervisorConfigurationOutput

    ThrottlingException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, required: true, location_name: "ErrorCode"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceARN"))
    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateGatewayInformationInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    UpdateGatewayInformationInput.add_member(:gateway_display_name, Shapes::ShapeRef.new(shape: Name, location_name: "GatewayDisplayName"))
    UpdateGatewayInformationInput.struct_class = Types::UpdateGatewayInformationInput

    UpdateGatewayInformationOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    UpdateGatewayInformationOutput.struct_class = Types::UpdateGatewayInformationOutput

    UpdateGatewaySoftwareNowInput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "GatewayArn"))
    UpdateGatewaySoftwareNowInput.struct_class = Types::UpdateGatewaySoftwareNowInput

    UpdateGatewaySoftwareNowOutput.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "GatewayArn"))
    UpdateGatewaySoftwareNowOutput.struct_class = Types::UpdateGatewaySoftwareNowOutput

    UpdateHypervisorInput.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    UpdateHypervisorInput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, required: true, location_name: "HypervisorArn"))
    UpdateHypervisorInput.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "LogGroupArn"))
    UpdateHypervisorInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateHypervisorInput.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    UpdateHypervisorInput.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    UpdateHypervisorInput.struct_class = Types::UpdateHypervisorInput

    UpdateHypervisorOutput.add_member(:hypervisor_arn, Shapes::ShapeRef.new(shape: ServerArn, location_name: "HypervisorArn"))
    UpdateHypervisorOutput.struct_class = Types::UpdateHypervisorOutput

    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "ErrorCode"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    VirtualMachine.add_member(:host_name, Shapes::ShapeRef.new(shape: Name, location_name: "HostName"))
    VirtualMachine.add_member(:hypervisor_id, Shapes::ShapeRef.new(shape: string, location_name: "HypervisorId"))
    VirtualMachine.add_member(:last_backup_date, Shapes::ShapeRef.new(shape: Time, location_name: "LastBackupDate"))
    VirtualMachine.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    VirtualMachine.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    VirtualMachine.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    VirtualMachine.struct_class = Types::VirtualMachine

    VirtualMachineDetails.add_member(:host_name, Shapes::ShapeRef.new(shape: Name, location_name: "HostName"))
    VirtualMachineDetails.add_member(:hypervisor_id, Shapes::ShapeRef.new(shape: string, location_name: "HypervisorId"))
    VirtualMachineDetails.add_member(:last_backup_date, Shapes::ShapeRef.new(shape: Time, location_name: "LastBackupDate"))
    VirtualMachineDetails.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    VirtualMachineDetails.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    VirtualMachineDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    VirtualMachineDetails.add_member(:vmware_tags, Shapes::ShapeRef.new(shape: VmwareTags, location_name: "VmwareTags"))
    VirtualMachineDetails.struct_class = Types::VirtualMachineDetails

    VirtualMachines.member = Shapes::ShapeRef.new(shape: VirtualMachine)

    VmwareTag.add_member(:vmware_category, Shapes::ShapeRef.new(shape: VmwareCategory, location_name: "VmwareCategory"))
    VmwareTag.add_member(:vmware_tag_description, Shapes::ShapeRef.new(shape: string, location_name: "VmwareTagDescription"))
    VmwareTag.add_member(:vmware_tag_name, Shapes::ShapeRef.new(shape: VmwareTagName, location_name: "VmwareTagName"))
    VmwareTag.struct_class = Types::VmwareTag

    VmwareTags.member = Shapes::ShapeRef.new(shape: VmwareTag)

    VmwareToAwsTagMapping.add_member(:aws_tag_key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "AwsTagKey"))
    VmwareToAwsTagMapping.add_member(:aws_tag_value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "AwsTagValue"))
    VmwareToAwsTagMapping.add_member(:vmware_category, Shapes::ShapeRef.new(shape: VmwareCategory, required: true, location_name: "VmwareCategory"))
    VmwareToAwsTagMapping.add_member(:vmware_tag_name, Shapes::ShapeRef.new(shape: VmwareTagName, required: true, location_name: "VmwareTagName"))
    VmwareToAwsTagMapping.struct_class = Types::VmwareToAwsTagMapping

    VmwareToAwsTagMappings.member = Shapes::ShapeRef.new(shape: VmwareToAwsTagMapping)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-01-01"

      api.metadata = {
        "apiVersion" => "2021-01-01",
        "endpointPrefix" => "backup-gateway",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS Backup Gateway",
        "serviceId" => "Backup Gateway",
        "signatureVersion" => "v4",
        "signingName" => "backup-gateway",
        "targetPrefix" => "BackupOnPremises_v20210101",
        "uid" => "backup-gateway-2021-01-01",
      }

      api.add_operation(:associate_gateway_to_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateGatewayToServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateGatewayToServerInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateGatewayToServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_hypervisor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHypervisor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHypervisorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteHypervisorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_gateway_from_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateGatewayFromServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateGatewayFromServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_bandwidth_rate_limit_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBandwidthRateLimitSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: GetBandwidthRateLimitScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGateway"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_hypervisor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHypervisor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHypervisorInput)
        o.output = Shapes::ShapeRef.new(shape: GetHypervisorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_hypervisor_property_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHypervisorPropertyMappings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsInput)
        o.output = Shapes::ShapeRef.new(shape: GetHypervisorPropertyMappingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_virtual_machine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVirtualMachine"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVirtualMachineInput)
        o.output = Shapes::ShapeRef.new(shape: GetVirtualMachineOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:import_hypervisor_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportHypervisorConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: ImportHypervisorConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysInput)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hypervisors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHypervisors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHypervisorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListHypervisorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_virtual_machines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualMachines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualMachinesInput)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualMachinesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_bandwidth_rate_limit_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBandwidthRateLimitSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: PutBandwidthRateLimitScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_hypervisor_property_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutHypervisorPropertyMappings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsInput)
        o.output = Shapes::ShapeRef.new(shape: PutHypervisorPropertyMappingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_maintenance_start_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMaintenanceStartTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeInput)
        o.output = Shapes::ShapeRef.new(shape: PutMaintenanceStartTimeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_virtual_machines_metadata_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartVirtualMachinesMetadataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncInput)
        o.output = Shapes::ShapeRef.new(shape: StartVirtualMachinesMetadataSyncOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:test_hypervisor_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestHypervisorConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestHypervisorConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: TestHypervisorConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_gateway_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayInformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayInformationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayInformationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_gateway_software_now, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewaySoftwareNow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewaySoftwareNowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_hypervisor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHypervisor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateHypervisorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateHypervisorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
