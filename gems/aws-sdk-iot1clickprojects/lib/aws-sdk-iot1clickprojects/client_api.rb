# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT1ClickProjects
  # @api private
  module ClientApi

    include Seahorse::Model

    AssociateDeviceWithPlacementRequest = Shapes::StructureShape.new(name: 'AssociateDeviceWithPlacementRequest')
    AssociateDeviceWithPlacementResponse = Shapes::StructureShape.new(name: 'AssociateDeviceWithPlacementResponse')
    AttributeDefaultValue = Shapes::StringShape.new(name: 'AttributeDefaultValue')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Code = Shapes::StringShape.new(name: 'Code')
    CreatePlacementRequest = Shapes::StructureShape.new(name: 'CreatePlacementRequest')
    CreatePlacementResponse = Shapes::StructureShape.new(name: 'CreatePlacementResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    DefaultPlacementAttributeMap = Shapes::MapShape.new(name: 'DefaultPlacementAttributeMap')
    DeletePlacementRequest = Shapes::StructureShape.new(name: 'DeletePlacementRequest')
    DeletePlacementResponse = Shapes::StructureShape.new(name: 'DeletePlacementResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DescribePlacementRequest = Shapes::StructureShape.new(name: 'DescribePlacementRequest')
    DescribePlacementResponse = Shapes::StructureShape.new(name: 'DescribePlacementResponse')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResponse = Shapes::StructureShape.new(name: 'DescribeProjectResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DeviceCallbackKey = Shapes::StringShape.new(name: 'DeviceCallbackKey')
    DeviceCallbackOverrideMap = Shapes::MapShape.new(name: 'DeviceCallbackOverrideMap')
    DeviceCallbackValue = Shapes::StringShape.new(name: 'DeviceCallbackValue')
    DeviceId = Shapes::StringShape.new(name: 'DeviceId')
    DeviceMap = Shapes::MapShape.new(name: 'DeviceMap')
    DeviceTemplate = Shapes::StructureShape.new(name: 'DeviceTemplate')
    DeviceTemplateMap = Shapes::MapShape.new(name: 'DeviceTemplateMap')
    DeviceTemplateName = Shapes::StringShape.new(name: 'DeviceTemplateName')
    DeviceType = Shapes::StringShape.new(name: 'DeviceType')
    DisassociateDeviceFromPlacementRequest = Shapes::StructureShape.new(name: 'DisassociateDeviceFromPlacementRequest')
    DisassociateDeviceFromPlacementResponse = Shapes::StructureShape.new(name: 'DisassociateDeviceFromPlacementResponse')
    GetDevicesInPlacementRequest = Shapes::StructureShape.new(name: 'GetDevicesInPlacementRequest')
    GetDevicesInPlacementResponse = Shapes::StructureShape.new(name: 'GetDevicesInPlacementResponse')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListPlacementsRequest = Shapes::StructureShape.new(name: 'ListPlacementsRequest')
    ListPlacementsResponse = Shapes::StructureShape.new(name: 'ListPlacementsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PlacementAttributeMap = Shapes::MapShape.new(name: 'PlacementAttributeMap')
    PlacementDescription = Shapes::StructureShape.new(name: 'PlacementDescription')
    PlacementName = Shapes::StringShape.new(name: 'PlacementName')
    PlacementSummary = Shapes::StructureShape.new(name: 'PlacementSummary')
    PlacementSummaryList = Shapes::ListShape.new(name: 'PlacementSummaryList')
    PlacementTemplate = Shapes::StructureShape.new(name: 'PlacementTemplate')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectDescription = Shapes::StructureShape.new(name: 'ProjectDescription')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    ProjectSummaryList = Shapes::ListShape.new(name: 'ProjectSummaryList')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Time = Shapes::TimestampShape.new(name: 'Time')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePlacementRequest = Shapes::StructureShape.new(name: 'UpdatePlacementRequest')
    UpdatePlacementResponse = Shapes::StructureShape.new(name: 'UpdatePlacementResponse')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResponse = Shapes::StructureShape.new(name: 'UpdateProjectResponse')

    AssociateDeviceWithPlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    AssociateDeviceWithPlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    AssociateDeviceWithPlacementRequest.add_member(:device_id, Shapes::ShapeRef.new(shape: DeviceId, required: true, location_name: "deviceId"))
    AssociateDeviceWithPlacementRequest.add_member(:device_template_name, Shapes::ShapeRef.new(shape: DeviceTemplateName, required: true, location: "uri", location_name: "deviceTemplateName"))
    AssociateDeviceWithPlacementRequest.struct_class = Types::AssociateDeviceWithPlacementRequest

    AssociateDeviceWithPlacementResponse.struct_class = Types::AssociateDeviceWithPlacementResponse

    CreatePlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location_name: "placementName"))
    CreatePlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    CreatePlacementRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: PlacementAttributeMap, location_name: "attributes"))
    CreatePlacementRequest.struct_class = Types::CreatePlacementRequest

    CreatePlacementResponse.struct_class = Types::CreatePlacementResponse

    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "projectName"))
    CreateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateProjectRequest.add_member(:placement_template, Shapes::ShapeRef.new(shape: PlacementTemplate, location_name: "placementTemplate"))
    CreateProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    DefaultPlacementAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    DefaultPlacementAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeDefaultValue)

    DeletePlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    DeletePlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DeletePlacementRequest.struct_class = Types::DeletePlacementRequest

    DeletePlacementResponse.struct_class = Types::DeletePlacementResponse

    DeleteProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DescribePlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    DescribePlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DescribePlacementRequest.struct_class = Types::DescribePlacementRequest

    DescribePlacementResponse.add_member(:placement, Shapes::ShapeRef.new(shape: PlacementDescription, required: true, location_name: "placement"))
    DescribePlacementResponse.struct_class = Types::DescribePlacementResponse

    DescribeProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResponse.add_member(:project, Shapes::ShapeRef.new(shape: ProjectDescription, required: true, location_name: "project"))
    DescribeProjectResponse.struct_class = Types::DescribeProjectResponse

    DeviceCallbackOverrideMap.key = Shapes::ShapeRef.new(shape: DeviceCallbackKey)
    DeviceCallbackOverrideMap.value = Shapes::ShapeRef.new(shape: DeviceCallbackValue)

    DeviceMap.key = Shapes::ShapeRef.new(shape: DeviceTemplateName)
    DeviceMap.value = Shapes::ShapeRef.new(shape: DeviceId)

    DeviceTemplate.add_member(:device_type, Shapes::ShapeRef.new(shape: DeviceType, location_name: "deviceType"))
    DeviceTemplate.add_member(:callback_overrides, Shapes::ShapeRef.new(shape: DeviceCallbackOverrideMap, location_name: "callbackOverrides"))
    DeviceTemplate.struct_class = Types::DeviceTemplate

    DeviceTemplateMap.key = Shapes::ShapeRef.new(shape: DeviceTemplateName)
    DeviceTemplateMap.value = Shapes::ShapeRef.new(shape: DeviceTemplate)

    DisassociateDeviceFromPlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    DisassociateDeviceFromPlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    DisassociateDeviceFromPlacementRequest.add_member(:device_template_name, Shapes::ShapeRef.new(shape: DeviceTemplateName, required: true, location: "uri", location_name: "deviceTemplateName"))
    DisassociateDeviceFromPlacementRequest.struct_class = Types::DisassociateDeviceFromPlacementRequest

    DisassociateDeviceFromPlacementResponse.struct_class = Types::DisassociateDeviceFromPlacementResponse

    GetDevicesInPlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    GetDevicesInPlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    GetDevicesInPlacementRequest.struct_class = Types::GetDevicesInPlacementRequest

    GetDevicesInPlacementResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceMap, required: true, location_name: "devices"))
    GetDevicesInPlacementResponse.struct_class = Types::GetDevicesInPlacementResponse

    InternalFailureException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListPlacementsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    ListPlacementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPlacementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPlacementsRequest.struct_class = Types::ListPlacementsRequest

    ListPlacementsResponse.add_member(:placements, Shapes::ShapeRef.new(shape: PlacementSummaryList, required: true, location_name: "placements"))
    ListPlacementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPlacementsResponse.struct_class = Types::ListPlacementsResponse

    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectSummaryList, required: true, location_name: "projects"))
    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PlacementAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    PlacementAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    PlacementDescription.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "projectName"))
    PlacementDescription.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location_name: "placementName"))
    PlacementDescription.add_member(:attributes, Shapes::ShapeRef.new(shape: PlacementAttributeMap, required: true, location_name: "attributes"))
    PlacementDescription.add_member(:created_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "createdDate"))
    PlacementDescription.add_member(:updated_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "updatedDate"))
    PlacementDescription.struct_class = Types::PlacementDescription

    PlacementSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "projectName"))
    PlacementSummary.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location_name: "placementName"))
    PlacementSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "createdDate"))
    PlacementSummary.add_member(:updated_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "updatedDate"))
    PlacementSummary.struct_class = Types::PlacementSummary

    PlacementSummaryList.member = Shapes::ShapeRef.new(shape: PlacementSummary)

    PlacementTemplate.add_member(:default_attributes, Shapes::ShapeRef.new(shape: DefaultPlacementAttributeMap, location_name: "defaultAttributes"))
    PlacementTemplate.add_member(:device_templates, Shapes::ShapeRef.new(shape: DeviceTemplateMap, location_name: "deviceTemplates"))
    PlacementTemplate.struct_class = Types::PlacementTemplate

    ProjectDescription.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "arn"))
    ProjectDescription.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "projectName"))
    ProjectDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ProjectDescription.add_member(:created_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "createdDate"))
    ProjectDescription.add_member(:updated_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "updatedDate"))
    ProjectDescription.add_member(:placement_template, Shapes::ShapeRef.new(shape: PlacementTemplate, location_name: "placementTemplate"))
    ProjectDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ProjectDescription.struct_class = Types::ProjectDescription

    ProjectSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "arn"))
    ProjectSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "projectName"))
    ProjectSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "createdDate"))
    ProjectSummary.add_member(:updated_date, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "updatedDate"))
    ProjectSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProjectSummaryList.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ResourceConflictException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyRequestsException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePlacementRequest.add_member(:placement_name, Shapes::ShapeRef.new(shape: PlacementName, required: true, location: "uri", location_name: "placementName"))
    UpdatePlacementRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    UpdatePlacementRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: PlacementAttributeMap, location_name: "attributes"))
    UpdatePlacementRequest.struct_class = Types::UpdatePlacementRequest

    UpdatePlacementResponse.struct_class = Types::UpdatePlacementResponse

    UpdateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location: "uri", location_name: "projectName"))
    UpdateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateProjectRequest.add_member(:placement_template, Shapes::ShapeRef.new(shape: PlacementTemplate, location_name: "placementTemplate"))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResponse.struct_class = Types::UpdateProjectResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-14"

      api.metadata = {
        "apiVersion" => "2018-05-14",
        "endpointPrefix" => "projects.iot1click",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWS IoT 1-Click Projects",
        "serviceFullName" => "AWS IoT 1-Click Projects Service",
        "serviceId" => "IoT 1Click Projects",
        "signatureVersion" => "v4",
        "signingName" => "iot1click",
        "uid" => "iot1click-projects-2018-05-14",
      }

      api.add_operation(:associate_device_with_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDeviceWithPlacement"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}"
        o.input = Shapes::ShapeRef.new(shape: AssociateDeviceWithPlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDeviceWithPlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlacement"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{projectName}/placements"
        o.input = Shapes::ShapeRef.new(shape: CreatePlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:delete_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlacement"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePlacement"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}"
        o.input = Shapes::ShapeRef.new(shape: DescribePlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_device_from_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDeviceFromPlacement"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDeviceFromPlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDeviceFromPlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_devices_in_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevicesInPlacement"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}/devices"
        o.input = Shapes::ShapeRef.new(shape: GetDevicesInPlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevicesInPlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_placements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlacements"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectName}/placements"
        o.input = Shapes::ShapeRef.new(shape: ListPlacementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlacementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlacement"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{projectName}/placements/{placementName}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePlacementRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlacementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{projectName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
