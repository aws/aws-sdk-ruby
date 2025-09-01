# frozen_string_literal: true

# This is generated code!

module Aws::ControlCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssociatedDomainSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#AssociatedDomainSummary', name: 'AssociatedDomainSummary')
    AssociatedObjectiveSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#AssociatedObjectiveSummary', name: 'AssociatedObjectiveSummary')
    CommonControlArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#CommonControlArn', name: 'CommonControlArn', traits: {"smithy.api#length" => {"min" => 41, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::common-control/[0-9a-z]+$"})
    CommonControlArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#CommonControlArnFilterList', name: 'CommonControlArnFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CommonControlFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#CommonControlFilter', name: 'CommonControlFilter')
    CommonControlMappingDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#CommonControlMappingDetails', name: 'CommonControlMappingDetails')
    CommonControlSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#CommonControlSummary', name: 'CommonControlSummary')
    CommonControlSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#CommonControlSummaryList', name: 'CommonControlSummaryList')
    ControlAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#ControlAlias', name: 'ControlAlias', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9](?:[a-zA-Z0-9_.-]{0,254}[a-zA-Z0-9])$"})
    ControlAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ControlAliases', name: 'ControlAliases')
    ControlArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#ControlArn', name: 'ControlArn', traits: {"smithy.api#length" => {"min" => 34, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$"})
    ControlArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ControlArnFilterList', name: 'ControlArnFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ControlBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.controlcatalog#ControlBehavior', name: 'ControlBehavior')
    ControlFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ControlFilter', name: 'ControlFilter')
    ControlMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ControlMapping', name: 'ControlMapping')
    ControlMappingFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ControlMappingFilter', name: 'ControlMappingFilter')
    ControlMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ControlMappings', name: 'ControlMappings')
    ControlParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ControlParameter', name: 'ControlParameter')
    ControlParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ControlParameters', name: 'ControlParameters')
    ControlScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.controlcatalog#ControlScope', name: 'ControlScope')
    ControlSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.controlcatalog#ControlSeverity', name: 'ControlSeverity')
    ControlSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ControlSummary', name: 'ControlSummary')
    Controls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#Controls', name: 'Controls')
    DeployableRegions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#DeployableRegions', name: 'DeployableRegions')
    DomainArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#DomainArn', name: 'DomainArn', traits: {"smithy.api#length" => {"min" => 33, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::domain/[0-9a-z]+$"})
    DomainResourceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#DomainResourceFilter', name: 'DomainResourceFilter')
    DomainResourceFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#DomainResourceFilterList', name: 'DomainResourceFilterList')
    DomainSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#DomainSummary', name: 'DomainSummary')
    DomainSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#DomainSummaryList', name: 'DomainSummaryList')
    FrameworkItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#FrameworkItem', name: 'FrameworkItem', traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    FrameworkMappingDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#FrameworkMappingDetails', name: 'FrameworkMappingDetails')
    FrameworkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#FrameworkName', name: 'FrameworkName', traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    GetControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#GetControlRequest', name: 'GetControlRequest')
    GetControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#GetControlResponse', name: 'GetControlResponse')
    GovernedResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#GovernedResource', name: 'GovernedResource', traits: {"smithy.api#pattern" => "^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"})
    GovernedResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#GovernedResources', name: 'GovernedResources')
    ImplementationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ImplementationDetails', name: 'ImplementationDetails')
    ImplementationFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ImplementationFilter', name: 'ImplementationFilter')
    ImplementationIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#ImplementationIdentifier', name: 'ImplementationIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]+$"})
    ImplementationIdentifierFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ImplementationIdentifierFilterList', name: 'ImplementationIdentifierFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImplementationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ImplementationSummary', name: 'ImplementationSummary')
    ImplementationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#ImplementationType', name: 'ImplementationType', traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9]+(::[A-Za-z0-9_]+){2,3}$"})
    ImplementationTypeFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ImplementationTypeFilterList', name: 'ImplementationTypeFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListCommonControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListCommonControlsRequest', name: 'ListCommonControlsRequest')
    ListCommonControlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListCommonControlsResponse', name: 'ListCommonControlsResponse')
    ListControlMappingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListControlMappingsRequest', name: 'ListControlMappingsRequest')
    ListControlMappingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListControlMappingsResponse', name: 'ListControlMappingsResponse')
    ListControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListControlsRequest', name: 'ListControlsRequest')
    ListControlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListControlsResponse', name: 'ListControlsResponse')
    ListDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListDomainsRequest', name: 'ListDomainsRequest')
    ListDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListDomainsResponse', name: 'ListDomainsResponse')
    ListObjectivesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListObjectivesRequest', name: 'ListObjectivesRequest')
    ListObjectivesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ListObjectivesResponse', name: 'ListObjectivesResponse')
    Mapping = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.controlcatalog#Mapping', name: 'Mapping')
    MappingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.controlcatalog#MappingType', name: 'MappingType')
    MappingTypeFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#MappingTypeFilterList', name: 'MappingTypeFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MaxListCommonControlsResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.controlcatalog#MaxListCommonControlsResults', name: 'MaxListCommonControlsResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListControlMappingsResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.controlcatalog#MaxListControlMappingsResults', name: 'MaxListControlMappingsResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxListControlsResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.controlcatalog#MaxListControlsResults', name: 'MaxListControlsResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListDomainsResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.controlcatalog#MaxListDomainsResults', name: 'MaxListDomainsResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListObjectivesResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.controlcatalog#MaxListObjectivesResults', name: 'MaxListObjectivesResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ObjectiveArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveArn', name: 'ObjectiveArn', traits: {"smithy.api#length" => {"min" => 36, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::objective/[0-9a-z]+$"})
    ObjectiveFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveFilter', name: 'ObjectiveFilter')
    ObjectiveResourceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveResourceFilter', name: 'ObjectiveResourceFilter')
    ObjectiveResourceFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveResourceFilterList', name: 'ObjectiveResourceFilterList')
    ObjectiveSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveSummary', name: 'ObjectiveSummary')
    ObjectiveSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.controlcatalog#ObjectiveSummaryList', name: 'ObjectiveSummaryList')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"max" => 1024}})
    RegionCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.controlcatalog#RegionCode', name: 'RegionCode', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,128}$"})
    RegionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#RegionConfiguration', name: 'RegionConfiguration')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.controlcatalog#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociatedDomainSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the related domain.</p>"}))
    AssociatedDomainSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the related domain.</p>"}))
    AssociatedDomainSummary.type = Types::AssociatedDomainSummary
    AssociatedObjectiveSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the related objective.</p>"}))
    AssociatedObjectiveSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the related objective.</p>"}))
    AssociatedObjectiveSummary.type = Types::AssociatedObjectiveSummary
    CommonControlArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlArn)
    CommonControlFilter.add_member(:objectives, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveResourceFilterList, location_name: 'Objectives', traits: {"smithy.api#documentation" => "<p>The objective that's used as filter criteria.</p> <p>You can use this parameter to specify one objective ARN at a time. Passing multiple ARNs in the <code>CommonControlFilter</code> isn’t supported.</p>"}))
    CommonControlFilter.type = Types::CommonControlFilter
    CommonControlMappingDetails.add_member(:common_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlArn, location_name: 'CommonControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the common control in the mapping.</p>", "smithy.api#required" => {}}))
    CommonControlMappingDetails.type = Types::CommonControlMappingDetails
    CommonControlSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the common control.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the common control.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the common control.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedDomainSummary, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain that the common control belongs to.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:objective, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedObjectiveSummary, location_name: 'Objective', traits: {"smithy.api#documentation" => "<p>The objective that the common control belongs to.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the common control was created.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the common control was most recently updated.</p>", "smithy.api#required" => {}}))
    CommonControlSummary.type = Types::CommonControlSummary
    CommonControlSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlSummary)
    ControlAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlAlias)
    ControlArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArn)
    ControlBehavior.add_member(:preventive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREVENTIVE', traits: {"smithy.api#enumValue" => "PREVENTIVE"}))
    ControlBehavior.add_member(:proactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROACTIVE', traits: {"smithy.api#enumValue" => "PROACTIVE"}))
    ControlBehavior.add_member(:detective, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETECTIVE', traits: {"smithy.api#enumValue" => "DETECTIVE"}))
    ControlFilter.add_member(:implementations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationFilter, location_name: 'Implementations', traits: {"smithy.api#documentation" => "<p>A filter that narrows the results to controls with specific implementation types or identifiers. This field allows you to find controls that are implemented by specific Amazon Web Services services or with specific service identifiers.</p>"}))
    ControlFilter.type = Types::ControlFilter
    ControlMapping.add_member(:control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArn, location_name: 'ControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the control in the mapping.</p>", "smithy.api#required" => {}}))
    ControlMapping.add_member(:mapping_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingType, location_name: 'MappingType', traits: {"smithy.api#documentation" => "<p>The type of mapping relationship between the control and other entities. Indicates whether the mapping is to a framework or common control.</p>", "smithy.api#required" => {}}))
    ControlMapping.add_member(:mapping, Smithy::Schema::Shapes::ShapeRef.new(shape: Mapping, location_name: 'Mapping', traits: {"smithy.api#documentation" => "<p>The details of the mapping relationship, containing either framework or common control information.</p>", "smithy.api#required" => {}}))
    ControlMapping.type = Types::ControlMapping
    ControlMappingFilter.add_member(:control_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArnFilterList, location_name: 'ControlArns', traits: {"smithy.api#documentation" => "<p>A list of control ARNs to filter the mappings. When specified, only mappings associated with these controls are returned.</p>"}))
    ControlMappingFilter.add_member(:common_control_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlArnFilterList, location_name: 'CommonControlArns', traits: {"smithy.api#documentation" => "<p>A list of common control ARNs to filter the mappings. When specified, only mappings associated with these common controls are returned.</p>"}))
    ControlMappingFilter.add_member(:mapping_types, Smithy::Schema::Shapes::ShapeRef.new(shape: MappingTypeFilterList, location_name: 'MappingTypes', traits: {"smithy.api#documentation" => "<p>A list of mapping types to filter the mappings. When specified, only mappings of these types are returned.</p>"}))
    ControlMappingFilter.type = Types::ControlMappingFilter
    ControlMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMapping)
    ControlParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The parameter name. This name is the parameter <code>key</code> when you call <a href=\"https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html\"> <code>EnableControl</code> </a> or <a href=\"https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html\"> <code>UpdateEnabledControl</code> </a>.</p>", "smithy.api#required" => {}}))
    ControlParameter.type = Types::ControlParameter
    ControlParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlParameter)
    ControlScope.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ControlScope.add_member(:regional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGIONAL', traits: {"smithy.api#enumValue" => "REGIONAL"}))
    ControlSeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ControlSeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ControlSeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ControlSeverity.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "CRITICAL"}))
    ControlSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control.</p>", "smithy.api#required" => {}}))
    ControlSummary.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlAliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A list of alternative identifiers for the control. These are human-readable designators, such as <code>SH.S3.1</code>. Several aliases can refer to the same control across different Amazon Web Services services or compliance frameworks.</p>"}))
    ControlSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The display name of the control.</p>", "smithy.api#required" => {}}))
    ControlSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the control, as it may appear in the console. Describes the functionality of the control.</p>", "smithy.api#required" => {}}))
    ControlSummary.add_member(:behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlBehavior, location_name: 'Behavior', traits: {"smithy.api#documentation" => "<p>An enumerated type, with the following possible values:</p>"}))
    ControlSummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>An enumerated type, with the following possible values:</p>"}))
    ControlSummary.add_member(:implementation, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationSummary, location_name: 'Implementation', traits: {"smithy.api#documentation" => "<p>An object of type <code>ImplementationSummary</code> that describes how the control is implemented.</p>"}))
    ControlSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>A timestamp that notes the time when the control was released (start of its life) as a governance capability in Amazon Web Services.</p>"}))
    ControlSummary.add_member(:governed_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: GovernedResources, location_name: 'GovernedResources', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services resource types that are governed by this control. This information helps you understand which controls can govern certain types of resources, and conversely, which resources are affected when the control is implemented. The resources are represented as Amazon Web Services CloudFormation resource types. If <code>GovernedResources</code> cannot be represented by available CloudFormation resource types, it’s returned as an empty list.</p>"}))
    ControlSummary.type = Types::ControlSummary
    Controls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSummary)
    DeployableRegions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionCode)
    DomainResourceFilter.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the domain.</p>"}))
    DomainResourceFilter.type = Types::DomainResourceFilter
    DomainResourceFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainResourceFilter)
    DomainSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the domain.</p>", "smithy.api#required" => {}}))
    DomainSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#required" => {}}))
    DomainSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the domain.</p>", "smithy.api#required" => {}}))
    DomainSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the domain was created.</p>", "smithy.api#required" => {}}))
    DomainSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the domain was most recently updated.</p>", "smithy.api#required" => {}}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummary)
    FrameworkMappingDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the compliance framework that the control maps to.</p>", "smithy.api#required" => {}}))
    FrameworkMappingDetails.add_member(:item, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkItem, location_name: 'Item', traits: {"smithy.api#documentation" => "<p>The specific item or requirement within the framework that the control maps to.</p>", "smithy.api#required" => {}}))
    FrameworkMappingDetails.type = Types::FrameworkMappingDetails
    GetControlRequest.add_member(:control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArn, location_name: 'ControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control. It has one of the following formats:</p> <p> <i>Global format</i> </p> <p> <code>arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}</code> </p> <p> <i>Or Regional format</i> </p> <p> <code>arn:{PARTITION}:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}</code> </p> <p>Here is a more general pattern that covers Amazon Web Services Control Tower and Control Catalog ARNs:</p> <p> <code>^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\\\-]+$</code> </p>", "smithy.api#required" => {}}))
    GetControlRequest.type = Types::GetControlRequest
    GetControlResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control.</p>", "smithy.api#required" => {}}))
    GetControlResponse.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlAliases, location_name: 'Aliases', traits: {"smithy.api#documentation" => "<p>A list of alternative identifiers for the control. These are human-readable designators, such as <code>SH.S3.1</code>. Several aliases can refer to the same control across different Amazon Web Services services or compliance frameworks.</p>"}))
    GetControlResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The display name of the control.</p>", "smithy.api#required" => {}}))
    GetControlResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of what the control does.</p>", "smithy.api#required" => {}}))
    GetControlResponse.add_member(:behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlBehavior, location_name: 'Behavior', traits: {"smithy.api#documentation" => "<p>A term that identifies the control's functional behavior. One of <code>Preventive</code>, <code>Detective</code>, <code>Proactive</code> </p>", "smithy.api#required" => {}}))
    GetControlResponse.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlSeverity, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>An enumerated type, with the following possible values:</p>"}))
    GetControlResponse.add_member(:region_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionConfiguration, location_name: 'RegionConfiguration', traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:implementation, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationDetails, location_name: 'Implementation', traits: {"smithy.api#documentation" => "<p>Returns information about the control, as an <code>ImplementationDetails</code> object that shows the underlying implementation type for a control.</p>"}))
    GetControlResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlParameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Returns an array of <code>ControlParameter</code> objects that specify the parameters a control supports. An empty list is returned for controls that don’t support parameters. </p>"}))
    GetControlResponse.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>A timestamp that notes the time when the control was released (start of its life) as a governance capability in Amazon Web Services.</p>"}))
    GetControlResponse.add_member(:governed_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: GovernedResources, location_name: 'GovernedResources', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services resource types that are governed by this control. This information helps you understand which controls can govern certain types of resources, and conversely, which resources are affected when the control is implemented. The resources are represented as Amazon Web Services CloudFormation resource types. If <code>GovernedResources</code> cannot be represented by available CloudFormation resource types, it’s returned as an empty list.</p>"}))
    GetControlResponse.type = Types::GetControlResponse
    GovernedResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GovernedResource)
    ImplementationDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A string that describes a control's implementation type.</p>", "smithy.api#required" => {}}))
    ImplementationDetails.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>A service-specific identifier for the control, assigned by the service that implemented the control. For example, this identifier could be an Amazon Web Services Config Rule ID or a Security Hub Control ID.</p>"}))
    ImplementationDetails.type = Types::ImplementationDetails
    ImplementationFilter.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationTypeFilterList, location_name: 'Types', traits: {"smithy.api#documentation" => "<p>A list of implementation types that can serve as filters. For example, you can filter for controls implemented as Amazon Web Services Config Rules by specifying AWS::Config::ConfigRule as a type.</p>"}))
    ImplementationFilter.add_member(:identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationIdentifierFilterList, location_name: 'Identifiers', traits: {"smithy.api#documentation" => "<p>A list of service-specific identifiers that can serve as filters. For example, you can filter for controls with specific Amazon Web Services Config Rule IDs or Security Hub Control IDs.</p>"}))
    ImplementationFilter.type = Types::ImplementationFilter
    ImplementationIdentifierFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationIdentifier)
    ImplementationSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A string that represents the Amazon Web Services service that implements this control. For example, a value of <code>AWS::Config::ConfigRule</code> indicates that the control is implemented by Amazon Web Services Config, and <code>AWS::SecurityHub::SecurityControl</code> indicates implementation by Amazon Web Services Security Hub.</p>", "smithy.api#required" => {}}))
    ImplementationSummary.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The identifier originally assigned by the Amazon Web Services service that implements the control. For example, <code>CODEPIPELINE_DEPLOYMENT_COUNT_CHECK</code>.</p>"}))
    ImplementationSummary.type = Types::ImplementationSummary
    ImplementationTypeFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImplementationType)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListCommonControlsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListCommonControlsResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCommonControlsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCommonControlsRequest.add_member(:common_control_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlFilter, location_name: 'CommonControlFilter', traits: {"smithy.api#documentation" => "<p>An optional filter that narrows the results to a specific objective.</p> <p>This filter allows you to specify one objective ARN at a time. Passing multiple ARNs in the <code>CommonControlFilter</code> isn’t supported.</p>"}))
    ListCommonControlsRequest.type = Types::ListCommonControlsRequest
    ListCommonControlsResponse.add_member(:common_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlSummaryList, location_name: 'CommonControls', traits: {"smithy.api#documentation" => "<p>The list of common controls that the <code>ListCommonControls</code> API returns.</p>", "smithy.api#required" => {}}))
    ListCommonControlsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListCommonControlsResponse.type = Types::ListCommonControlsResponse
    ListControlMappingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlMappingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListControlMappingsResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlMappingsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappingFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>An optional filter that narrows the results to specific control mappings based on control ARNs, common control ARNs, or mapping types.</p>"}))
    ListControlMappingsRequest.type = Types::ListControlMappingsRequest
    ListControlMappingsResponse.add_member(:control_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlMappings, location_name: 'ControlMappings', traits: {"smithy.api#documentation" => "<p>The list of control mappings that the ListControlMappings API returns.</p>", "smithy.api#required" => {}}))
    ListControlMappingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListControlMappingsResponse.type = Types::ListControlMappingsResponse
    ListControlsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListControlsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListControlsResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListControlsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>An optional filter that narrows the results to controls with specific implementation types or identifiers. If you don't provide a filter, the operation returns all available controls.</p>"}))
    ListControlsRequest.type = Types::ListControlsRequest
    ListControlsResponse.add_member(:controls, Smithy::Schema::Shapes::ShapeRef.new(shape: Controls, location_name: 'Controls', traits: {"smithy.api#documentation" => "<p>Returns a list of controls, given as structures of type <i>controlSummary</i>.</p>", "smithy.api#required" => {}}))
    ListControlsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListControlsResponse.type = Types::ListControlsResponse
    ListDomainsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListDomainsResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDomainsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResponse.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The list of domains that the <code>ListDomains</code> API returns.</p>", "smithy.api#required" => {}}))
    ListDomainsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListDomainsResponse.type = Types::ListDomainsResponse
    ListObjectivesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListObjectivesResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results on a page or for an API request call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListObjectivesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListObjectivesRequest.add_member(:objective_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveFilter, location_name: 'ObjectiveFilter', traits: {"smithy.api#documentation" => "<p>An optional filter that narrows the results to a specific domain.</p> <p>This filter allows you to specify one domain ARN at a time. Passing multiple ARNs in the <code>ObjectiveFilter</code> isn’t supported.</p>"}))
    ListObjectivesRequest.type = Types::ListObjectivesRequest
    ListObjectivesResponse.add_member(:objectives, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveSummaryList, location_name: 'Objectives', traits: {"smithy.api#documentation" => "<p>The list of objectives that the <code>ListObjectives</code> API returns.</p>", "smithy.api#required" => {}}))
    ListObjectivesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's used to fetch the next set of results.</p>"}))
    ListObjectivesResponse.type = Types::ListObjectivesResponse
    Mapping.add_member(:framework, Types::Mapping::Framework, Smithy::Schema::Shapes::ShapeRef.new(shape: FrameworkMappingDetails, location_name: 'Framework', traits: {"smithy.api#documentation" => "<p>The framework mapping details when the mapping type relates to a compliance framework.</p>"}))
    Mapping.add_member(:common_control, Types::Mapping::CommonControl, Smithy::Schema::Shapes::ShapeRef.new(shape: CommonControlMappingDetails, location_name: 'CommonControl', traits: {"smithy.api#documentation" => "<p>The common control mapping details when the mapping type relates to a common control.</p>"}))
    Mapping.add_member(:unknown, Types::Mapping::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Mapping.type = Types::Mapping
    MappingType.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRAMEWORK', traits: {"smithy.api#enumValue" => "FRAMEWORK"}))
    MappingType.add_member(:common_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMON_CONTROL', traits: {"smithy.api#enumValue" => "COMMON_CONTROL"}))
    MappingTypeFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MappingType)
    ObjectiveFilter.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainResourceFilterList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The domain that's used as filter criteria.</p> <p>You can use this parameter to specify one domain ARN at a time. Passing multiple ARNs in the <code>ObjectiveFilter</code> isn’t supported.</p>"}))
    ObjectiveFilter.type = Types::ObjectiveFilter
    ObjectiveResourceFilter.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the objective.</p>"}))
    ObjectiveResourceFilter.type = Types::ObjectiveResourceFilter
    ObjectiveResourceFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveResourceFilter)
    ObjectiveSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the objective.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the objective.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the objective.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedDomainSummary, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain that the objective belongs to.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time when the objective was created.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time when the objective was most recently updated.</p>", "smithy.api#required" => {}}))
    ObjectiveSummary.type = Types::ObjectiveSummary
    ObjectiveSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectiveSummary)
    RegionConfiguration.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlScope, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The coverage of the control, if deployed. Scope is an enumerated type, with value <code>Regional</code>, or <code>Global</code>. A control with Global scope is effective in all Amazon Web Services Regions, regardless of the Region from which it is enabled, or to which it is deployed. A control implemented by an SCP is usually Global in scope. A control with Regional scope has operations that are restricted specifically to the Region from which it is enabled and to which it is deployed. Controls implemented by Config rules and CloudFormation hooks usually are Regional in scope. Security Hub controls usually are Regional in scope.</p>", "smithy.api#required" => {}}))
    RegionConfiguration.add_member(:deployable_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployableRegions, location_name: 'DeployableRegions', traits: {"smithy.api#documentation" => "<p>Regions in which the control is available to be deployed.</p>"}))
    RegionConfiguration.type = Types::RegionConfiguration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    ControlCatalog = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.controlcatalog#ControlCatalog"
      service.name = "ControlCatalog"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ControlCatalog", "arnNamespace" => "controlcatalog", "cloudTrailEventSource" => "controlcatalog.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "controlcatalog"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "access-control-allow-origin", "Amz-Sdk-Invocation-Id", "Amz-Sdk-Request", "Authorization", "Content-Length", "Content-Type", "Date", "Host", "X-Amz-Content-Sha256", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "X-Amz-User-Agent", "X-Amzn-Trace-Id"]}, "smithy.api#title" => "AWS Control Catalog"}
      service.add_operation(:get_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#GetControl"
        operation.name = "GetControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-control"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_common_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListCommonControls"
        operation.name = "ListCommonControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommonControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommonControlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/common-controls"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCommonControls.new
      end)
      service.add_operation(:list_control_mappings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListControlMappings"
        operation.name = "ListControlMappings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlMappingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlMappingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-control-mappings"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListControlMappings.new
      end)
      service.add_operation(:list_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListControls"
        operation.name = "ListControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-controls"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListControls.new
      end)
      service.add_operation(:list_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListDomains"
        operation.name = "ListDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/domains"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_objectives, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListObjectives"
        operation.name = "ListObjectives"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectivesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListObjectivesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/objectives"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListObjectives.new
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
