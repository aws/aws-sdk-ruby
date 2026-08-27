# frozen_string_literal: true

# This is generated code!

module Aws::ControlCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssociatedDomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#AssociatedDomainSummary", name: "AssociatedDomainSummary")
    AssociatedObjectiveSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#AssociatedObjectiveSummary", name: "AssociatedObjectiveSummary")
    CommonControlArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#CommonControlArn", name: "CommonControlArn", traits: {"smithy.api#length" => {"min" => 41, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::common-control/[0-9a-z]+$"})
    CommonControlArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#CommonControlArnFilterList", name: "CommonControlArnFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CommonControlFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#CommonControlFilter", name: "CommonControlFilter")
    CommonControlMappingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#CommonControlMappingDetails", name: "CommonControlMappingDetails")
    CommonControlSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#CommonControlSummary", name: "CommonControlSummary")
    CommonControlSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#CommonControlSummaryList", name: "CommonControlSummaryList")
    ControlAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#ControlAlias", name: "ControlAlias", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9](?:[a-zA-Z0-9_.-]{0,254}[a-zA-Z0-9])$"})
    ControlAliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ControlAliases", name: "ControlAliases")
    ControlArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#ControlArn", name: "ControlArn", traits: {"smithy.api#length" => {"min" => 34, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):(controlcatalog|controltower):[a-zA-Z0-9-]*::control/[0-9a-zA-Z_\\-]+$"})
    ControlArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ControlArnFilterList", name: "ControlArnFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ControlBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controlcatalog#ControlBehavior", name: "ControlBehavior")
    ControlFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ControlFilter", name: "ControlFilter")
    ControlMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ControlMapping", name: "ControlMapping")
    ControlMappingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ControlMappingFilter", name: "ControlMappingFilter")
    ControlMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ControlMappings", name: "ControlMappings")
    ControlParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ControlParameter", name: "ControlParameter")
    ControlParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ControlParameters", name: "ControlParameters")
    ControlScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controlcatalog#ControlScope", name: "ControlScope")
    ControlSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controlcatalog#ControlSeverity", name: "ControlSeverity")
    ControlSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ControlSummary", name: "ControlSummary")
    Controls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#Controls", name: "Controls")
    DeployableRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#DeployableRegions", name: "DeployableRegions")
    DomainArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#DomainArn", name: "DomainArn", traits: {"smithy.api#length" => {"min" => 33, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::domain/[0-9a-z]+$"})
    DomainResourceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#DomainResourceFilter", name: "DomainResourceFilter")
    DomainResourceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#DomainResourceFilterList", name: "DomainResourceFilterList")
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#DomainSummary", name: "DomainSummary")
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#DomainSummaryList", name: "DomainSummaryList")
    FrameworkItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#FrameworkItem", name: "FrameworkItem", traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    FrameworkMappingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#FrameworkMappingDetails", name: "FrameworkMappingDetails")
    FrameworkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#FrameworkName", name: "FrameworkName", traits: {"smithy.api#length" => {"min" => 3, "max" => 250}})
    GetControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#GetControlRequest", name: "GetControlRequest")
    GetControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#GetControlResponse", name: "GetControlResponse")
    GovernedResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#GovernedResource", name: "GovernedResource", traits: {"smithy.api#pattern" => "^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"})
    GovernedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#GovernedResources", name: "GovernedResources")
    ImplementationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ImplementationDetails", name: "ImplementationDetails")
    ImplementationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ImplementationFilter", name: "ImplementationFilter")
    ImplementationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#ImplementationIdentifier", name: "ImplementationIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]+$"})
    ImplementationIdentifierFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ImplementationIdentifierFilterList", name: "ImplementationIdentifierFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImplementationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ImplementationSummary", name: "ImplementationSummary")
    ImplementationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#ImplementationType", name: "ImplementationType", traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9]+(::[A-Za-z0-9_]+){2,3}$"})
    ImplementationTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ImplementationTypeFilterList", name: "ImplementationTypeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListCommonControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListCommonControlsRequest", name: "ListCommonControlsRequest")
    ListCommonControlsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListCommonControlsResponse", name: "ListCommonControlsResponse")
    ListControlMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListControlMappingsRequest", name: "ListControlMappingsRequest")
    ListControlMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListControlMappingsResponse", name: "ListControlMappingsResponse")
    ListControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListControlsRequest", name: "ListControlsRequest")
    ListControlsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListControlsResponse", name: "ListControlsResponse")
    ListDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListDomainsRequest", name: "ListDomainsRequest")
    ListDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListDomainsResponse", name: "ListDomainsResponse")
    ListObjectivesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListObjectivesRequest", name: "ListObjectivesRequest")
    ListObjectivesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ListObjectivesResponse", name: "ListObjectivesResponse")
    Mapping = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.controlcatalog#Mapping", name: "Mapping")
    MappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controlcatalog#MappingType", name: "MappingType")
    MappingTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#MappingTypeFilterList", name: "MappingTypeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MaxListCommonControlsResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controlcatalog#MaxListCommonControlsResults", name: "MaxListCommonControlsResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListControlMappingsResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controlcatalog#MaxListControlMappingsResults", name: "MaxListControlMappingsResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxListControlsResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controlcatalog#MaxListControlsResults", name: "MaxListControlsResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListDomainsResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controlcatalog#MaxListDomainsResults", name: "MaxListDomainsResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxListObjectivesResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controlcatalog#MaxListObjectivesResults", name: "MaxListObjectivesResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ObjectiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#ObjectiveArn", name: "ObjectiveArn", traits: {"smithy.api#length" => {"min" => 36, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws(?:[-a-z]*)?):controlcatalog:::objective/[0-9a-z]+$"})
    ObjectiveFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ObjectiveFilter", name: "ObjectiveFilter")
    ObjectiveResourceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ObjectiveResourceFilter", name: "ObjectiveResourceFilter")
    ObjectiveResourceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ObjectiveResourceFilterList", name: "ObjectiveResourceFilterList")
    ObjectiveSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ObjectiveSummary", name: "ObjectiveSummary")
    ObjectiveSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controlcatalog#ObjectiveSummaryList", name: "ObjectiveSummaryList")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"max" => 1024}})
    RegionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controlcatalog#RegionCode", name: "RegionCode", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,128}$"})
    RegionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#RegionConfiguration", name: "RegionConfiguration")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controlcatalog#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociatedDomainSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "Arn"))
    AssociatedDomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    AssociatedDomainSummary.type = Types::AssociatedDomainSummary
    AssociatedObjectiveSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveArn, name: "Arn"))
    AssociatedObjectiveSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    AssociatedObjectiveSummary.type = Types::AssociatedObjectiveSummary
    CommonControlArnFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlArn, name: "member")
    CommonControlFilter.add_member(:objectives, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveResourceFilterList, name: "Objectives"))
    CommonControlFilter.type = Types::CommonControlFilter
    CommonControlMappingDetails.add_member(:common_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlArn, name: "CommonControlArn", traits: {"smithy.api#required" => {}}))
    CommonControlMappingDetails.type = Types::CommonControlMappingDetails
    CommonControlSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedDomainSummary, name: "Domain", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:objective, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedObjectiveSummary, name: "Objective", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateTime", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    CommonControlSummary.type = Types::CommonControlSummary
    CommonControlSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlSummary, name: "member")
    ControlAliases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlAlias, name: "member")
    ControlArnFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArn, name: "member")
    ControlBehavior.add_member(:preventive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREVENTIVE", traits: {"smithy.api#enumValue" => "PREVENTIVE"}))
    ControlBehavior.add_member(:proactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROACTIVE", traits: {"smithy.api#enumValue" => "PROACTIVE"}))
    ControlBehavior.add_member(:detective, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTIVE", traits: {"smithy.api#enumValue" => "DETECTIVE"}))
    ControlFilter.add_member(:implementations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationFilter, name: "Implementations"))
    ControlFilter.type = Types::ControlFilter
    ControlMapping.add_member(:control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArn, name: "ControlArn", traits: {"smithy.api#required" => {}}))
    ControlMapping.add_member(:mapping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingType, name: "MappingType", traits: {"smithy.api#required" => {}}))
    ControlMapping.add_member(:mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapping, name: "Mapping", traits: {"smithy.api#required" => {}}))
    ControlMapping.type = Types::ControlMapping
    ControlMappingFilter.add_member(:control_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArnFilterList, name: "ControlArns"))
    ControlMappingFilter.add_member(:common_control_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlArnFilterList, name: "CommonControlArns"))
    ControlMappingFilter.add_member(:mapping_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MappingTypeFilterList, name: "MappingTypes"))
    ControlMappingFilter.type = Types::ControlMappingFilter
    ControlMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlMapping, name: "member")
    ControlParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ControlParameter.type = Types::ControlParameter
    ControlParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlParameter, name: "member")
    ControlScope.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ControlScope.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    ControlSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ControlSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ControlSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ControlSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    ControlSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ControlSummary.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlAliases, name: "Aliases"))
    ControlSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ControlSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#required" => {}}))
    ControlSummary.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlBehavior, name: "Behavior"))
    ControlSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlSeverity, name: "Severity"))
    ControlSummary.add_member(:implementation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationSummary, name: "Implementation"))
    ControlSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateTime"))
    ControlSummary.add_member(:governed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: GovernedResources, name: "GovernedResources"))
    ControlSummary.type = Types::ControlSummary
    Controls.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlSummary, name: "member")
    DeployableRegions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionCode, name: "member")
    DomainResourceFilter.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "Arn"))
    DomainResourceFilter.type = Types::DomainResourceFilter
    DomainResourceFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainResourceFilter, name: "member")
    DomainSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateTime", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummary, name: "member")
    FrameworkMappingDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkName, name: "Name", traits: {"smithy.api#required" => {}}))
    FrameworkMappingDetails.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkItem, name: "Item", traits: {"smithy.api#required" => {}}))
    FrameworkMappingDetails.type = Types::FrameworkMappingDetails
    GetControlRequest.add_member(:control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArn, name: "ControlArn", traits: {"smithy.api#required" => {}}))
    GetControlRequest.type = Types::GetControlRequest
    GetControlResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlAliases, name: "Aliases"))
    GetControlResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlBehavior, name: "Behavior", traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlSeverity, name: "Severity"))
    GetControlResponse.add_member(:region_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionConfiguration, name: "RegionConfiguration", traits: {"smithy.api#required" => {}}))
    GetControlResponse.add_member(:implementation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationDetails, name: "Implementation"))
    GetControlResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlParameters, name: "Parameters"))
    GetControlResponse.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateTime"))
    GetControlResponse.add_member(:governed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: GovernedResources, name: "GovernedResources"))
    GetControlResponse.type = Types::GetControlResponse
    GovernedResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GovernedResource, name: "member")
    ImplementationDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationType, name: "Type", traits: {"smithy.api#required" => {}}))
    ImplementationDetails.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationIdentifier, name: "Identifier"))
    ImplementationDetails.type = Types::ImplementationDetails
    ImplementationFilter.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationTypeFilterList, name: "Types"))
    ImplementationFilter.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationIdentifierFilterList, name: "Identifiers"))
    ImplementationFilter.type = Types::ImplementationFilter
    ImplementationIdentifierFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationIdentifier, name: "member")
    ImplementationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationType, name: "Type", traits: {"smithy.api#required" => {}}))
    ImplementationSummary.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationIdentifier, name: "Identifier"))
    ImplementationSummary.type = Types::ImplementationSummary
    ImplementationTypeFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationType, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListCommonControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListCommonControlsResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCommonControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCommonControlsRequest.add_member(:common_control_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlFilter, name: "CommonControlFilter"))
    ListCommonControlsRequest.type = Types::ListCommonControlsRequest
    ListCommonControlsResponse.add_member(:common_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlSummaryList, name: "CommonControls", traits: {"smithy.api#required" => {}}))
    ListCommonControlsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListCommonControlsResponse.type = Types::ListCommonControlsResponse
    ListControlMappingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlMappingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListControlMappingsResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlMappingsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlMappingFilter, name: "Filter"))
    ListControlMappingsRequest.type = Types::ListControlMappingsRequest
    ListControlMappingsResponse.add_member(:control_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlMappings, name: "ControlMappings", traits: {"smithy.api#required" => {}}))
    ListControlMappingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListControlMappingsResponse.type = Types::ListControlMappingsResponse
    ListControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListControlsResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListControlsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlFilter, name: "Filter"))
    ListControlsRequest.type = Types::ListControlsRequest
    ListControlsResponse.add_member(:controls, ::Smithy::Schema::Shapes::MemberShape.new(target: Controls, name: "Controls", traits: {"smithy.api#required" => {}}))
    ListControlsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListControlsResponse.type = Types::ListControlsResponse
    ListDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListDomainsResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResponse.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummaryList, name: "Domains", traits: {"smithy.api#required" => {}}))
    ListDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDomainsResponse.type = Types::ListDomainsResponse
    ListObjectivesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListObjectivesResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListObjectivesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListObjectivesRequest.add_member(:objective_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveFilter, name: "ObjectiveFilter"))
    ListObjectivesRequest.type = Types::ListObjectivesRequest
    ListObjectivesResponse.add_member(:objectives, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveSummaryList, name: "Objectives", traits: {"smithy.api#required" => {}}))
    ListObjectivesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListObjectivesResponse.type = Types::ListObjectivesResponse
    Mapping.add_member(:framework, Types::Mapping::Framework, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameworkMappingDetails, name: "Framework"))
    Mapping.add_member(:common_control, Types::Mapping::CommonControl, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonControlMappingDetails, name: "CommonControl"))
    Mapping.add_member(:unknown, Types::Mapping::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Mapping.type = Types::Mapping
    MappingType.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRAMEWORK", traits: {"smithy.api#enumValue" => "FRAMEWORK"}))
    MappingType.add_member(:common_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMON_CONTROL", traits: {"smithy.api#enumValue" => "COMMON_CONTROL"}))
    MappingTypeFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MappingType, name: "member")
    ObjectiveFilter.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainResourceFilterList, name: "Domains"))
    ObjectiveFilter.type = Types::ObjectiveFilter
    ObjectiveResourceFilter.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveArn, name: "Arn"))
    ObjectiveResourceFilter.type = Types::ObjectiveResourceFilter
    ObjectiveResourceFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveResourceFilter, name: "member")
    ObjectiveSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedDomainSummary, name: "Domain", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateTime", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    ObjectiveSummary.type = Types::ObjectiveSummary
    ObjectiveSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectiveSummary, name: "member")
    RegionConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlScope, name: "Scope", traits: {"smithy.api#required" => {}}))
    RegionConfiguration.add_member(:deployable_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployableRegions, name: "DeployableRegions"))
    RegionConfiguration.type = Types::RegionConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.type = Types::ValidationException

    ControlCatalog = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.controlcatalog#ControlCatalog"
      service.name = "ControlCatalog"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ControlCatalog", "arnNamespace" => "controlcatalog", "cloudTrailEventSource" => "controlcatalog.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "controlcatalog"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "access-control-allow-origin", "Amz-Sdk-Invocation-Id", "Amz-Sdk-Request", "Authorization", "Content-Length", "Content-Type", "Date", "Host", "X-Amz-Content-Sha256", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "X-Amz-User-Agent", "X-Amzn-Trace-Id"]}, "smithy.api#title" => "AWS Control Catalog"}
      service.add_operation(:get_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#GetControl"
        operation.name = "GetControl"
        operation.input = GetControlRequest
        operation.output = GetControlResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-control"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_common_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListCommonControls"
        operation.name = "ListCommonControls"
        operation.input = ListCommonControlsRequest
        operation.output = ListCommonControlsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/common-controls"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCommonControls.new
      end)
      service.add_operation(:list_control_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListControlMappings"
        operation.name = "ListControlMappings"
        operation.input = ListControlMappingsRequest
        operation.output = ListControlMappingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-control-mappings"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListControlMappings.new
      end)
      service.add_operation(:list_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListControls"
        operation.name = "ListControls"
        operation.input = ListControlsRequest
        operation.output = ListControlsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-controls"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListControls.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsRequest
        operation.output = ListDomainsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/domains"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_objectives, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controlcatalog#ListObjectives"
        operation.name = "ListObjectives"
        operation.input = ListObjectivesRequest
        operation.output = ListObjectivesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/objectives"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListObjectives.new
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
