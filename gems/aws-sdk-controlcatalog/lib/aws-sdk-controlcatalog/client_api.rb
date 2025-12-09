# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ControlCatalog
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociatedDomainSummary = Shapes::StructureShape.new(name: 'AssociatedDomainSummary')
    AssociatedObjectiveSummary = Shapes::StructureShape.new(name: 'AssociatedObjectiveSummary')
    CommonControlArn = Shapes::StringShape.new(name: 'CommonControlArn')
    CommonControlArnFilterList = Shapes::ListShape.new(name: 'CommonControlArnFilterList')
    CommonControlFilter = Shapes::StructureShape.new(name: 'CommonControlFilter')
    CommonControlMappingDetails = Shapes::StructureShape.new(name: 'CommonControlMappingDetails')
    CommonControlSummary = Shapes::StructureShape.new(name: 'CommonControlSummary')
    CommonControlSummaryList = Shapes::ListShape.new(name: 'CommonControlSummaryList')
    ControlAlias = Shapes::StringShape.new(name: 'ControlAlias')
    ControlAliases = Shapes::ListShape.new(name: 'ControlAliases')
    ControlArn = Shapes::StringShape.new(name: 'ControlArn')
    ControlArnFilterList = Shapes::ListShape.new(name: 'ControlArnFilterList')
    ControlBehavior = Shapes::StringShape.new(name: 'ControlBehavior')
    ControlFilter = Shapes::StructureShape.new(name: 'ControlFilter')
    ControlMapping = Shapes::StructureShape.new(name: 'ControlMapping')
    ControlMappingFilter = Shapes::StructureShape.new(name: 'ControlMappingFilter')
    ControlMappings = Shapes::ListShape.new(name: 'ControlMappings')
    ControlParameter = Shapes::StructureShape.new(name: 'ControlParameter')
    ControlParameters = Shapes::ListShape.new(name: 'ControlParameters')
    ControlRelationType = Shapes::StringShape.new(name: 'ControlRelationType')
    ControlScope = Shapes::StringShape.new(name: 'ControlScope')
    ControlSeverity = Shapes::StringShape.new(name: 'ControlSeverity')
    ControlSummary = Shapes::StructureShape.new(name: 'ControlSummary')
    Controls = Shapes::ListShape.new(name: 'Controls')
    DeployableRegions = Shapes::ListShape.new(name: 'DeployableRegions')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainResourceFilter = Shapes::StructureShape.new(name: 'DomainResourceFilter')
    DomainResourceFilterList = Shapes::ListShape.new(name: 'DomainResourceFilterList')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    FrameworkItem = Shapes::StringShape.new(name: 'FrameworkItem')
    FrameworkMappingDetails = Shapes::StructureShape.new(name: 'FrameworkMappingDetails')
    FrameworkName = Shapes::StringShape.new(name: 'FrameworkName')
    GetControlRequest = Shapes::StructureShape.new(name: 'GetControlRequest')
    GetControlResponse = Shapes::StructureShape.new(name: 'GetControlResponse')
    GovernedResource = Shapes::StringShape.new(name: 'GovernedResource')
    GovernedResources = Shapes::ListShape.new(name: 'GovernedResources')
    ImplementationDetails = Shapes::StructureShape.new(name: 'ImplementationDetails')
    ImplementationFilter = Shapes::StructureShape.new(name: 'ImplementationFilter')
    ImplementationIdentifier = Shapes::StringShape.new(name: 'ImplementationIdentifier')
    ImplementationIdentifierFilterList = Shapes::ListShape.new(name: 'ImplementationIdentifierFilterList')
    ImplementationSummary = Shapes::StructureShape.new(name: 'ImplementationSummary')
    ImplementationType = Shapes::StringShape.new(name: 'ImplementationType')
    ImplementationTypeFilterList = Shapes::ListShape.new(name: 'ImplementationTypeFilterList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListCommonControlsRequest = Shapes::StructureShape.new(name: 'ListCommonControlsRequest')
    ListCommonControlsResponse = Shapes::StructureShape.new(name: 'ListCommonControlsResponse')
    ListControlMappingsRequest = Shapes::StructureShape.new(name: 'ListControlMappingsRequest')
    ListControlMappingsResponse = Shapes::StructureShape.new(name: 'ListControlMappingsResponse')
    ListControlsRequest = Shapes::StructureShape.new(name: 'ListControlsRequest')
    ListControlsResponse = Shapes::StructureShape.new(name: 'ListControlsResponse')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListObjectivesRequest = Shapes::StructureShape.new(name: 'ListObjectivesRequest')
    ListObjectivesResponse = Shapes::StructureShape.new(name: 'ListObjectivesResponse')
    Mapping = Shapes::UnionShape.new(name: 'Mapping')
    MappingType = Shapes::StringShape.new(name: 'MappingType')
    MappingTypeFilterList = Shapes::ListShape.new(name: 'MappingTypeFilterList')
    MaxListCommonControlsResults = Shapes::IntegerShape.new(name: 'MaxListCommonControlsResults')
    MaxListControlMappingsResults = Shapes::IntegerShape.new(name: 'MaxListControlMappingsResults')
    MaxListControlsResults = Shapes::IntegerShape.new(name: 'MaxListControlsResults')
    MaxListDomainsResults = Shapes::IntegerShape.new(name: 'MaxListDomainsResults')
    MaxListObjectivesResults = Shapes::IntegerShape.new(name: 'MaxListObjectivesResults')
    ObjectiveArn = Shapes::StringShape.new(name: 'ObjectiveArn')
    ObjectiveFilter = Shapes::StructureShape.new(name: 'ObjectiveFilter')
    ObjectiveResourceFilter = Shapes::StructureShape.new(name: 'ObjectiveResourceFilter')
    ObjectiveResourceFilterList = Shapes::ListShape.new(name: 'ObjectiveResourceFilterList')
    ObjectiveSummary = Shapes::StructureShape.new(name: 'ObjectiveSummary')
    ObjectiveSummaryList = Shapes::ListShape.new(name: 'ObjectiveSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    RegionCode = Shapes::StringShape.new(name: 'RegionCode')
    RegionConfiguration = Shapes::StructureShape.new(name: 'RegionConfiguration')
    RelatedControlMappingDetails = Shapes::StructureShape.new(name: 'RelatedControlMappingDetails')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociatedDomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "Arn"))
    AssociatedDomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AssociatedDomainSummary.struct_class = Types::AssociatedDomainSummary

    AssociatedObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: "Arn"))
    AssociatedObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AssociatedObjectiveSummary.struct_class = Types::AssociatedObjectiveSummary

    CommonControlArnFilterList.member = Shapes::ShapeRef.new(shape: CommonControlArn)

    CommonControlFilter.add_member(:objectives, Shapes::ShapeRef.new(shape: ObjectiveResourceFilterList, location_name: "Objectives"))
    CommonControlFilter.struct_class = Types::CommonControlFilter

    CommonControlMappingDetails.add_member(:common_control_arn, Shapes::ShapeRef.new(shape: CommonControlArn, required: true, location_name: "CommonControlArn"))
    CommonControlMappingDetails.struct_class = Types::CommonControlMappingDetails

    CommonControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CommonControlArn, required: true, location_name: "Arn"))
    CommonControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CommonControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CommonControlSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    CommonControlSummary.add_member(:objective, Shapes::ShapeRef.new(shape: AssociatedObjectiveSummary, required: true, location_name: "Objective"))
    CommonControlSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    CommonControlSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    CommonControlSummary.struct_class = Types::CommonControlSummary

    CommonControlSummaryList.member = Shapes::ShapeRef.new(shape: CommonControlSummary)

    ControlAliases.member = Shapes::ShapeRef.new(shape: ControlAlias)

    ControlArnFilterList.member = Shapes::ShapeRef.new(shape: ControlArn)

    ControlFilter.add_member(:implementations, Shapes::ShapeRef.new(shape: ImplementationFilter, location_name: "Implementations"))
    ControlFilter.struct_class = Types::ControlFilter

    ControlMapping.add_member(:control_arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "ControlArn"))
    ControlMapping.add_member(:mapping_type, Shapes::ShapeRef.new(shape: MappingType, required: true, location_name: "MappingType"))
    ControlMapping.add_member(:mapping, Shapes::ShapeRef.new(shape: Mapping, required: true, location_name: "Mapping"))
    ControlMapping.struct_class = Types::ControlMapping

    ControlMappingFilter.add_member(:control_arns, Shapes::ShapeRef.new(shape: ControlArnFilterList, location_name: "ControlArns"))
    ControlMappingFilter.add_member(:common_control_arns, Shapes::ShapeRef.new(shape: CommonControlArnFilterList, location_name: "CommonControlArns"))
    ControlMappingFilter.add_member(:mapping_types, Shapes::ShapeRef.new(shape: MappingTypeFilterList, location_name: "MappingTypes"))
    ControlMappingFilter.struct_class = Types::ControlMappingFilter

    ControlMappings.member = Shapes::ShapeRef.new(shape: ControlMapping)

    ControlParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ControlParameter.struct_class = Types::ControlParameter

    ControlParameters.member = Shapes::ShapeRef.new(shape: ControlParameter)

    ControlSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "Arn"))
    ControlSummary.add_member(:aliases, Shapes::ShapeRef.new(shape: ControlAliases, location_name: "Aliases"))
    ControlSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ControlSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    ControlSummary.add_member(:behavior, Shapes::ShapeRef.new(shape: ControlBehavior, location_name: "Behavior"))
    ControlSummary.add_member(:severity, Shapes::ShapeRef.new(shape: ControlSeverity, location_name: "Severity"))
    ControlSummary.add_member(:implementation, Shapes::ShapeRef.new(shape: ImplementationSummary, location_name: "Implementation"))
    ControlSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    ControlSummary.add_member(:governed_resources, Shapes::ShapeRef.new(shape: GovernedResources, location_name: "GovernedResources"))
    ControlSummary.struct_class = Types::ControlSummary

    Controls.member = Shapes::ShapeRef.new(shape: ControlSummary)

    DeployableRegions.member = Shapes::ShapeRef.new(shape: RegionCode)

    DomainResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, location_name: "Arn"))
    DomainResourceFilter.struct_class = Types::DomainResourceFilter

    DomainResourceFilterList.member = Shapes::ShapeRef.new(shape: DomainResourceFilter)

    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "Arn"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    DomainSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    DomainSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    FrameworkMappingDetails.add_member(:name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location_name: "Name"))
    FrameworkMappingDetails.add_member(:item, Shapes::ShapeRef.new(shape: FrameworkItem, required: true, location_name: "Item"))
    FrameworkMappingDetails.struct_class = Types::FrameworkMappingDetails

    GetControlRequest.add_member(:control_arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "ControlArn"))
    GetControlRequest.struct_class = Types::GetControlRequest

    GetControlResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ControlArn, required: true, location_name: "Arn"))
    GetControlResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: ControlAliases, location_name: "Aliases"))
    GetControlResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetControlResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    GetControlResponse.add_member(:behavior, Shapes::ShapeRef.new(shape: ControlBehavior, required: true, location_name: "Behavior"))
    GetControlResponse.add_member(:severity, Shapes::ShapeRef.new(shape: ControlSeverity, location_name: "Severity"))
    GetControlResponse.add_member(:region_configuration, Shapes::ShapeRef.new(shape: RegionConfiguration, required: true, location_name: "RegionConfiguration"))
    GetControlResponse.add_member(:implementation, Shapes::ShapeRef.new(shape: ImplementationDetails, location_name: "Implementation"))
    GetControlResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ControlParameters, location_name: "Parameters"))
    GetControlResponse.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTime"))
    GetControlResponse.add_member(:governed_resources, Shapes::ShapeRef.new(shape: GovernedResources, location_name: "GovernedResources"))
    GetControlResponse.struct_class = Types::GetControlResponse

    GovernedResources.member = Shapes::ShapeRef.new(shape: GovernedResource)

    ImplementationDetails.add_member(:type, Shapes::ShapeRef.new(shape: ImplementationType, required: true, location_name: "Type"))
    ImplementationDetails.add_member(:identifier, Shapes::ShapeRef.new(shape: ImplementationIdentifier, location_name: "Identifier"))
    ImplementationDetails.struct_class = Types::ImplementationDetails

    ImplementationFilter.add_member(:types, Shapes::ShapeRef.new(shape: ImplementationTypeFilterList, location_name: "Types"))
    ImplementationFilter.add_member(:identifiers, Shapes::ShapeRef.new(shape: ImplementationIdentifierFilterList, location_name: "Identifiers"))
    ImplementationFilter.struct_class = Types::ImplementationFilter

    ImplementationIdentifierFilterList.member = Shapes::ShapeRef.new(shape: ImplementationIdentifier)

    ImplementationSummary.add_member(:type, Shapes::ShapeRef.new(shape: ImplementationType, required: true, location_name: "Type"))
    ImplementationSummary.add_member(:identifier, Shapes::ShapeRef.new(shape: ImplementationIdentifier, location_name: "Identifier"))
    ImplementationSummary.struct_class = Types::ImplementationSummary

    ImplementationTypeFilterList.member = Shapes::ShapeRef.new(shape: ImplementationType)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCommonControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListCommonControlsResults, location: "querystring", location_name: "maxResults"))
    ListCommonControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCommonControlsRequest.add_member(:common_control_filter, Shapes::ShapeRef.new(shape: CommonControlFilter, location_name: "CommonControlFilter"))
    ListCommonControlsRequest.struct_class = Types::ListCommonControlsRequest

    ListCommonControlsResponse.add_member(:common_controls, Shapes::ShapeRef.new(shape: CommonControlSummaryList, required: true, location_name: "CommonControls"))
    ListCommonControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListCommonControlsResponse.struct_class = Types::ListCommonControlsResponse

    ListControlMappingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListControlMappingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListControlMappingsResults, location: "querystring", location_name: "maxResults"))
    ListControlMappingsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ControlMappingFilter, location_name: "Filter"))
    ListControlMappingsRequest.struct_class = Types::ListControlMappingsRequest

    ListControlMappingsResponse.add_member(:control_mappings, Shapes::ShapeRef.new(shape: ControlMappings, required: true, location_name: "ControlMappings"))
    ListControlMappingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListControlMappingsResponse.struct_class = Types::ListControlMappingsResponse

    ListControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListControlsResults, location: "querystring", location_name: "maxResults"))
    ListControlsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ControlFilter, location_name: "Filter"))
    ListControlsRequest.struct_class = Types::ListControlsRequest

    ListControlsResponse.add_member(:controls, Shapes::ShapeRef.new(shape: Controls, required: true, location_name: "Controls"))
    ListControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListControlsResponse.struct_class = Types::ListControlsResponse

    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListDomainsResults, location: "querystring", location_name: "maxResults"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "Domains"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListObjectivesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxListObjectivesResults, location: "querystring", location_name: "maxResults"))
    ListObjectivesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListObjectivesRequest.add_member(:objective_filter, Shapes::ShapeRef.new(shape: ObjectiveFilter, location_name: "ObjectiveFilter"))
    ListObjectivesRequest.struct_class = Types::ListObjectivesRequest

    ListObjectivesResponse.add_member(:objectives, Shapes::ShapeRef.new(shape: ObjectiveSummaryList, required: true, location_name: "Objectives"))
    ListObjectivesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListObjectivesResponse.struct_class = Types::ListObjectivesResponse

    Mapping.add_member(:framework, Shapes::ShapeRef.new(shape: FrameworkMappingDetails, location_name: "Framework"))
    Mapping.add_member(:common_control, Shapes::ShapeRef.new(shape: CommonControlMappingDetails, location_name: "CommonControl"))
    Mapping.add_member(:related_control, Shapes::ShapeRef.new(shape: RelatedControlMappingDetails, location_name: "RelatedControl"))
    Mapping.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Mapping.add_member_subclass(:framework, Types::Mapping::Framework)
    Mapping.add_member_subclass(:common_control, Types::Mapping::CommonControl)
    Mapping.add_member_subclass(:related_control, Types::Mapping::RelatedControl)
    Mapping.add_member_subclass(:unknown, Types::Mapping::Unknown)
    Mapping.struct_class = Types::Mapping

    MappingTypeFilterList.member = Shapes::ShapeRef.new(shape: MappingType)

    ObjectiveFilter.add_member(:domains, Shapes::ShapeRef.new(shape: DomainResourceFilterList, location_name: "Domains"))
    ObjectiveFilter.struct_class = Types::ObjectiveFilter

    ObjectiveResourceFilter.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: "Arn"))
    ObjectiveResourceFilter.struct_class = Types::ObjectiveResourceFilter

    ObjectiveResourceFilterList.member = Shapes::ShapeRef.new(shape: ObjectiveResourceFilter)

    ObjectiveSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ObjectiveArn, required: true, location_name: "Arn"))
    ObjectiveSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ObjectiveSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    ObjectiveSummary.add_member(:domain, Shapes::ShapeRef.new(shape: AssociatedDomainSummary, required: true, location_name: "Domain"))
    ObjectiveSummary.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTime"))
    ObjectiveSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    ObjectiveSummary.struct_class = Types::ObjectiveSummary

    ObjectiveSummaryList.member = Shapes::ShapeRef.new(shape: ObjectiveSummary)

    RegionConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: ControlScope, required: true, location_name: "Scope"))
    RegionConfiguration.add_member(:deployable_regions, Shapes::ShapeRef.new(shape: DeployableRegions, location_name: "DeployableRegions"))
    RegionConfiguration.struct_class = Types::RegionConfiguration

    RelatedControlMappingDetails.add_member(:control_arn, Shapes::ShapeRef.new(shape: ControlArn, location_name: "ControlArn"))
    RelatedControlMappingDetails.add_member(:relation_type, Shapes::ShapeRef.new(shape: ControlRelationType, required: true, location_name: "RelationType"))
    RelatedControlMappingDetails.struct_class = Types::RelatedControlMappingDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "controlcatalog",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Control Catalog",
        "serviceId" => "ControlCatalog",
        "signatureVersion" => "v4",
        "signingName" => "controlcatalog",
        "uid" => "controlcatalog-2018-05-10",
      }

      api.add_operation(:get_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetControl"
        o.http_method = "POST"
        o.http_request_uri = "/get-control"
        o.input = Shapes::ShapeRef.new(shape: GetControlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_common_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommonControls"
        o.http_method = "POST"
        o.http_request_uri = "/common-controls"
        o.input = Shapes::ShapeRef.new(shape: ListCommonControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommonControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_control_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlMappings"
        o.http_method = "POST"
        o.http_request_uri = "/list-control-mappings"
        o.input = Shapes::ShapeRef.new(shape: ListControlMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControls"
        o.http_method = "POST"
        o.http_request_uri = "/list-controls"
        o.input = Shapes::ShapeRef.new(shape: ListControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_objectives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListObjectives"
        o.http_method = "POST"
        o.http_request_uri = "/objectives"
        o.input = Shapes::ShapeRef.new(shape: ListObjectivesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListObjectivesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
