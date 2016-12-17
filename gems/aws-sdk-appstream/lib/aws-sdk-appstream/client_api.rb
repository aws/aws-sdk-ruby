# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppStream
  # @api private
  module ClientApi

    include Seahorse::Model

    Application = Shapes::StructureShape.new(name: 'Application')
    Applications = Shapes::ListShape.new(name: 'Applications')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateFleetRequest = Shapes::StructureShape.new(name: 'AssociateFleetRequest')
    AssociateFleetResult = Shapes::StructureShape.new(name: 'AssociateFleetResult')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ComputeCapacity = Shapes::StructureShape.new(name: 'ComputeCapacity')
    ComputeCapacityStatus = Shapes::StructureShape.new(name: 'ComputeCapacityStatus')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResult = Shapes::StructureShape.new(name: 'CreateFleetResult')
    CreateStackRequest = Shapes::StructureShape.new(name: 'CreateStackRequest')
    CreateStackResult = Shapes::StructureShape.new(name: 'CreateStackResult')
    CreateStreamingURLRequest = Shapes::StructureShape.new(name: 'CreateStreamingURLRequest')
    CreateStreamingURLResult = Shapes::StructureShape.new(name: 'CreateStreamingURLResult')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResult = Shapes::StructureShape.new(name: 'DeleteFleetResult')
    DeleteStackRequest = Shapes::StructureShape.new(name: 'DeleteStackRequest')
    DeleteStackResult = Shapes::StructureShape.new(name: 'DeleteStackResult')
    DescribeFleetsRequest = Shapes::StructureShape.new(name: 'DescribeFleetsRequest')
    DescribeFleetsResult = Shapes::StructureShape.new(name: 'DescribeFleetsResult')
    DescribeImagesRequest = Shapes::StructureShape.new(name: 'DescribeImagesRequest')
    DescribeImagesResult = Shapes::StructureShape.new(name: 'DescribeImagesResult')
    DescribeSessionsRequest = Shapes::StructureShape.new(name: 'DescribeSessionsRequest')
    DescribeSessionsResult = Shapes::StructureShape.new(name: 'DescribeSessionsResult')
    DescribeStacksRequest = Shapes::StructureShape.new(name: 'DescribeStacksRequest')
    DescribeStacksResult = Shapes::StructureShape.new(name: 'DescribeStacksResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateFleetRequest = Shapes::StructureShape.new(name: 'DisassociateFleetRequest')
    DisassociateFleetResult = Shapes::StructureShape.new(name: 'DisassociateFleetResult')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpireSessionRequest = Shapes::StructureShape.new(name: 'ExpireSessionRequest')
    ExpireSessionResult = Shapes::StructureShape.new(name: 'ExpireSessionResult')
    Fleet = Shapes::StructureShape.new(name: 'Fleet')
    FleetError = Shapes::StructureShape.new(name: 'FleetError')
    FleetErrorCode = Shapes::StringShape.new(name: 'FleetErrorCode')
    FleetErrors = Shapes::ListShape.new(name: 'FleetErrors')
    FleetList = Shapes::ListShape.new(name: 'FleetList')
    FleetState = Shapes::StringShape.new(name: 'FleetState')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageList = Shapes::ListShape.new(name: 'ImageList')
    ImageState = Shapes::StringShape.new(name: 'ImageState')
    ImageStateChangeReason = Shapes::StructureShape.new(name: 'ImageStateChangeReason')
    ImageStateChangeReasonCode = Shapes::StringShape.new(name: 'ImageStateChangeReasonCode')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAssociatedFleetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedFleetsRequest')
    ListAssociatedFleetsResult = Shapes::StructureShape.new(name: 'ListAssociatedFleetsResult')
    ListAssociatedStacksRequest = Shapes::StructureShape.new(name: 'ListAssociatedStacksRequest')
    ListAssociatedStacksResult = Shapes::StructureShape.new(name: 'ListAssociatedStacksResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    Name = Shapes::StringShape.new(name: 'Name')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotAvailableException = Shapes::StructureShape.new(name: 'ResourceNotAvailableException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackList = Shapes::ListShape.new(name: 'StackList')
    StartFleetRequest = Shapes::StructureShape.new(name: 'StartFleetRequest')
    StartFleetResult = Shapes::StructureShape.new(name: 'StartFleetResult')
    StopFleetRequest = Shapes::StructureShape.new(name: 'StopFleetRequest')
    StopFleetResult = Shapes::StructureShape.new(name: 'StopFleetResult')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResult = Shapes::StructureShape.new(name: 'UpdateFleetResult')
    UpdateStackRequest = Shapes::StructureShape.new(name: 'UpdateStackRequest')
    UpdateStackResult = Shapes::StructureShape.new(name: 'UpdateStackResult')
    UserId = Shapes::StringShape.new(name: 'UserId')
    VisibilityType = Shapes::StringShape.new(name: 'VisibilityType')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    Application.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Application.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Application.add_member(:icon_url, Shapes::ShapeRef.new(shape: String, location_name: "IconURL"))
    Application.add_member(:launch_path, Shapes::ShapeRef.new(shape: String, location_name: "LaunchPath"))
    Application.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: String, location_name: "LaunchParameters"))
    Application.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    Application.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "Metadata"))
    Application.struct_class = Types::Application

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    AssociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    AssociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    AssociateFleetRequest.struct_class = Types::AssociateFleetRequest

    AssociateFleetResult.struct_class = Types::AssociateFleetResult

    ComputeCapacity.add_member(:desired_instances, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DesiredInstances"))
    ComputeCapacity.struct_class = Types::ComputeCapacity

    ComputeCapacityStatus.add_member(:desired, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Desired"))
    ComputeCapacityStatus.add_member(:running, Shapes::ShapeRef.new(shape: Integer, location_name: "Running"))
    ComputeCapacityStatus.add_member(:in_use, Shapes::ShapeRef.new(shape: Integer, location_name: "InUse"))
    ComputeCapacityStatus.add_member(:available, Shapes::ShapeRef.new(shape: Integer, location_name: "Available"))
    ComputeCapacityStatus.struct_class = Types::ComputeCapacityStatus

    CreateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ImageName"))
    CreateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, required: true, location_name: "ComputeCapacity"))
    CreateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    CreateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    CreateFleetResult.struct_class = Types::CreateFleetResult

    CreateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateStackRequest.struct_class = Types::CreateStackRequest

    CreateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    CreateStackResult.struct_class = Types::CreateStackResult

    CreateStreamingURLRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    CreateStreamingURLRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    CreateStreamingURLRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    CreateStreamingURLRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: String, location_name: "ApplicationId"))
    CreateStreamingURLRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Long, location_name: "Validity"))
    CreateStreamingURLRequest.add_member(:session_context, Shapes::ShapeRef.new(shape: String, location_name: "SessionContext"))
    CreateStreamingURLRequest.struct_class = Types::CreateStreamingURLRequest

    CreateStreamingURLResult.add_member(:streaming_url, Shapes::ShapeRef.new(shape: String, location_name: "StreamingURL"))
    CreateStreamingURLResult.add_member(:expires, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expires"))
    CreateStreamingURLResult.struct_class = Types::CreateStreamingURLResult

    DeleteFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResult.struct_class = Types::DeleteFleetResult

    DeleteStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteStackRequest.struct_class = Types::DeleteStackRequest

    DeleteStackResult.struct_class = Types::DeleteStackResult

    DescribeFleetsRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsRequest.struct_class = Types::DescribeFleetsRequest

    DescribeFleetsResult.add_member(:fleets, Shapes::ShapeRef.new(shape: FleetList, location_name: "Fleets"))
    DescribeFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeFleetsResult.struct_class = Types::DescribeFleetsResult

    DescribeImagesRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeImagesRequest.struct_class = Types::DescribeImagesRequest

    DescribeImagesResult.add_member(:images, Shapes::ShapeRef.new(shape: ImageList, location_name: "Images"))
    DescribeImagesResult.struct_class = Types::DescribeImagesResult

    DescribeSessionsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    DescribeSessionsRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    DescribeSessionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    DescribeSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    DescribeSessionsRequest.struct_class = Types::DescribeSessionsRequest

    DescribeSessionsResult.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    DescribeSessionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSessionsResult.struct_class = Types::DescribeSessionsResult

    DescribeStacksRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    DescribeStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksRequest.struct_class = Types::DescribeStacksRequest

    DescribeStacksResult.add_member(:stacks, Shapes::ShapeRef.new(shape: StackList, location_name: "Stacks"))
    DescribeStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeStacksResult.struct_class = Types::DescribeStacksResult

    DisassociateFleetRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    DisassociateFleetRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    DisassociateFleetRequest.struct_class = Types::DisassociateFleetRequest

    DisassociateFleetResult.struct_class = Types::DisassociateFleetResult

    ExpireSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SessionId"))
    ExpireSessionRequest.struct_class = Types::ExpireSessionRequest

    ExpireSessionResult.struct_class = Types::ExpireSessionResult

    Fleet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Fleet.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Fleet.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Fleet.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Fleet.add_member(:image_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ImageName"))
    Fleet.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    Fleet.add_member(:compute_capacity_status, Shapes::ShapeRef.new(shape: ComputeCapacityStatus, required: true, location_name: "ComputeCapacityStatus"))
    Fleet.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    Fleet.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    Fleet.add_member(:state, Shapes::ShapeRef.new(shape: FleetState, required: true, location_name: "State"))
    Fleet.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    Fleet.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Fleet.add_member(:fleet_errors, Shapes::ShapeRef.new(shape: FleetErrors, location_name: "FleetErrors"))
    Fleet.struct_class = Types::Fleet

    FleetError.add_member(:error_code, Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: "ErrorCode"))
    FleetError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    FleetError.struct_class = Types::FleetError

    FleetErrors.member = Shapes::ShapeRef.new(shape: FleetError)

    FleetList.member = Shapes::ShapeRef.new(shape: Fleet)

    Image.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Image.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Image.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "BaseImageArn"))
    Image.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Image.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "State"))
    Image.add_member(:visibility, Shapes::ShapeRef.new(shape: VisibilityType, location_name: "Visibility"))
    Image.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "Platform"))
    Image.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Image.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ImageStateChangeReason, location_name: "StateChangeReason"))
    Image.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    Image.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Image.struct_class = Types::Image

    ImageList.member = Shapes::ShapeRef.new(shape: Image)

    ImageStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ImageStateChangeReasonCode, location_name: "Code"))
    ImageStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ImageStateChangeReason.struct_class = Types::ImageStateChangeReason

    ListAssociatedFleetsRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    ListAssociatedFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsRequest.struct_class = Types::ListAssociatedFleetsRequest

    ListAssociatedFleetsResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedFleetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedFleetsResult.struct_class = Types::ListAssociatedFleetsResult

    ListAssociatedStacksRequest.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    ListAssociatedStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksRequest.struct_class = Types::ListAssociatedStacksRequest

    ListAssociatedStacksResult.add_member(:names, Shapes::ShapeRef.new(shape: StringList, location_name: "Names"))
    ListAssociatedStacksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssociatedStacksResult.struct_class = Types::ListAssociatedStacksResult

    Metadata.key = Shapes::ShapeRef.new(shape: String)
    Metadata.value = Shapes::ShapeRef.new(shape: String)

    Session.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    Session.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    Session.add_member(:stack_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackName"))
    Session.add_member(:fleet_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FleetName"))
    Session.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "State"))
    Session.struct_class = Types::Session

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    Stack.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Stack.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Stack.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Stack.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    Stack.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Stack.struct_class = Types::Stack

    StackList.member = Shapes::ShapeRef.new(shape: Stack)

    StartFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartFleetRequest.struct_class = Types::StartFleetRequest

    StartFleetResult.struct_class = Types::StartFleetResult

    StopFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopFleetRequest.struct_class = Types::StopFleetRequest

    StopFleetResult.struct_class = Types::StopFleetResult

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: String)

    UpdateFleetRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: String, location_name: "ImageName"))
    UpdateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateFleetRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    UpdateFleetRequest.add_member(:compute_capacity, Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: "ComputeCapacity"))
    UpdateFleetRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateFleetRequest.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUserDurationInSeconds"))
    UpdateFleetRequest.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:delete_vpc_config, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteVpcConfig"))
    UpdateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFleetRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateFleetRequest.struct_class = Types::UpdateFleetRequest

    UpdateFleetResult.add_member(:fleet, Shapes::ShapeRef.new(shape: Fleet, location_name: "Fleet"))
    UpdateFleetResult.struct_class = Types::UpdateFleetResult

    UpdateStackRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateStackRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateStackRequest.struct_class = Types::UpdateStackRequest

    UpdateStackResult.add_member(:stack, Shapes::ShapeRef.new(shape: Stack, location_name: "Stack"))
    UpdateStackResult.struct_class = Types::UpdateStackResult

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-12-01"

      api.metadata = {
        "endpointPrefix" => "appstream2",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon AppStream",
        "signatureVersion" => "v4",
        "signingName" => "appstream",
        "targetPrefix" => "PhotonAdminProxyService",
      }

      api.add_operation(:associate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_streaming_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamingURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamingURLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamingURLResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSessionsResult)
      end)

      api.add_operation(:describe_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStacksResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:expire_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExpireSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExpireSessionResult)
      end)

      api.add_operation(:list_associated_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedFleetsResult)
      end)

      api.add_operation(:list_associated_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedStacksResult)
      end)

      api.add_operation(:start_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:stop_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)
    end

  end
end
