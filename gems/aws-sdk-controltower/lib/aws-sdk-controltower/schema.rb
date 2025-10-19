# frozen_string_literal: true

# This is generated code!

module Aws::ControlTower
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[0-9a-zA-Z_\\-:\\/]+$"})
    BaselineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#BaselineArn", name: "BaselineArn", traits: {"smithy.api#pattern" => "^arn:[a-z-]+:controltower:[a-z0-9-]*:[0-9]{0,12}:baseline/[A-Z0-9]{16}$"})
    BaselineOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#BaselineOperation", name: "BaselineOperation")
    BaselineOperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#BaselineOperationStatus", name: "BaselineOperationStatus")
    BaselineOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#BaselineOperationType", name: "BaselineOperationType")
    BaselineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#BaselineSummary", name: "BaselineSummary")
    BaselineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#BaselineVersion", name: "BaselineVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^\\d+(?:\\.\\d+){0,2}$"})
    Baselines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#Baselines", name: "Baselines")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#ControlIdentifier", name: "ControlIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[0-9a-zA-Z_\\-:\\/]+$"})
    ControlIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#ControlIdentifiers", name: "ControlIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ControlOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ControlOperation", name: "ControlOperation")
    ControlOperationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ControlOperationFilter", name: "ControlOperationFilter")
    ControlOperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#ControlOperationStatus", name: "ControlOperationStatus")
    ControlOperationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#ControlOperationStatuses", name: "ControlOperationStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ControlOperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ControlOperationSummary", name: "ControlOperationSummary")
    ControlOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#ControlOperationType", name: "ControlOperationType")
    ControlOperationTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#ControlOperationTypes", name: "ControlOperationTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ControlOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#ControlOperations", name: "ControlOperations")
    CreateLandingZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#CreateLandingZoneInput", name: "CreateLandingZoneInput")
    CreateLandingZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#CreateLandingZoneOutput", name: "CreateLandingZoneOutput")
    DeleteLandingZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DeleteLandingZoneInput", name: "DeleteLandingZoneInput")
    DeleteLandingZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DeleteLandingZoneOutput", name: "DeleteLandingZoneOutput")
    DisableBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DisableBaselineInput", name: "DisableBaselineInput")
    DisableBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DisableBaselineOutput", name: "DisableBaselineOutput")
    DisableControlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DisableControlInput", name: "DisableControlInput")
    DisableControlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DisableControlOutput", name: "DisableControlOutput")
    DriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#DriftStatus", name: "DriftStatus")
    DriftStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#DriftStatusSummary", name: "DriftStatusSummary")
    DriftStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#DriftStatuses", name: "DriftStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EnableBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnableBaselineInput", name: "EnableBaselineInput")
    EnableBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnableBaselineOutput", name: "EnableBaselineOutput")
    EnableControlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnableControlInput", name: "EnableControlInput")
    EnableControlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnableControlOutput", name: "EnableControlOutput")
    EnabledBaselineBaselineIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineBaselineIdentifiers", name: "EnabledBaselineBaselineIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EnabledBaselineDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineDetails", name: "EnabledBaselineDetails")
    EnabledBaselineDriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#EnabledBaselineDriftStatus", name: "EnabledBaselineDriftStatus")
    EnabledBaselineDriftStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineDriftStatusSummary", name: "EnabledBaselineDriftStatusSummary")
    EnabledBaselineDriftStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineDriftStatuses", name: "EnabledBaselineDriftStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EnabledBaselineDriftTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineDriftTypes", name: "EnabledBaselineDriftTypes")
    EnabledBaselineEnablementStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineEnablementStatuses", name: "EnabledBaselineEnablementStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EnabledBaselineFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineFilter", name: "EnabledBaselineFilter")
    EnabledBaselineInheritanceDrift = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineInheritanceDrift", name: "EnabledBaselineInheritanceDrift")
    EnabledBaselineParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineParameter", name: "EnabledBaselineParameter")
    EnabledBaselineParameterDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.controltower#EnabledBaselineParameterDocument", name: "EnabledBaselineParameterDocument")
    EnabledBaselineParameterSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineParameterSummaries", name: "EnabledBaselineParameterSummaries")
    EnabledBaselineParameterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineParameterSummary", name: "EnabledBaselineParameterSummary")
    EnabledBaselineParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineParameters", name: "EnabledBaselineParameters")
    EnabledBaselineParentIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineParentIdentifiers", name: "EnabledBaselineParentIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EnabledBaselineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledBaselineSummary", name: "EnabledBaselineSummary")
    EnabledBaselineTargetIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselineTargetIdentifiers", name: "EnabledBaselineTargetIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EnabledBaselines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledBaselines", name: "EnabledBaselines")
    EnabledControlDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledControlDetails", name: "EnabledControlDetails")
    EnabledControlFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledControlFilter", name: "EnabledControlFilter")
    EnabledControlIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledControlIdentifiers", name: "EnabledControlIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EnabledControlParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledControlParameter", name: "EnabledControlParameter")
    EnabledControlParameterSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledControlParameterSummaries", name: "EnabledControlParameterSummaries")
    EnabledControlParameterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledControlParameterSummary", name: "EnabledControlParameterSummary")
    EnabledControlParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledControlParameters", name: "EnabledControlParameters")
    EnabledControlSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnabledControlSummary", name: "EnabledControlSummary")
    EnabledControls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnabledControls", name: "EnabledControls")
    EnablementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#EnablementStatus", name: "EnablementStatus")
    EnablementStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#EnablementStatusSummary", name: "EnablementStatusSummary")
    EnablementStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#EnablementStatuses", name: "EnablementStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    GetBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetBaselineInput", name: "GetBaselineInput")
    GetBaselineOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetBaselineOperationInput", name: "GetBaselineOperationInput")
    GetBaselineOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetBaselineOperationOutput", name: "GetBaselineOperationOutput")
    GetBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetBaselineOutput", name: "GetBaselineOutput")
    GetControlOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetControlOperationInput", name: "GetControlOperationInput")
    GetControlOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetControlOperationOutput", name: "GetControlOperationOutput")
    GetEnabledBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetEnabledBaselineInput", name: "GetEnabledBaselineInput")
    GetEnabledBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetEnabledBaselineOutput", name: "GetEnabledBaselineOutput")
    GetEnabledControlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetEnabledControlInput", name: "GetEnabledControlInput")
    GetEnabledControlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetEnabledControlOutput", name: "GetEnabledControlOutput")
    GetLandingZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetLandingZoneInput", name: "GetLandingZoneInput")
    GetLandingZoneOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetLandingZoneOperationInput", name: "GetLandingZoneOperationInput")
    GetLandingZoneOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetLandingZoneOperationOutput", name: "GetLandingZoneOperationOutput")
    GetLandingZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#GetLandingZoneOutput", name: "GetLandingZoneOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LandingZoneDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneDetail", name: "LandingZoneDetail")
    LandingZoneDriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#LandingZoneDriftStatus", name: "LandingZoneDriftStatus")
    LandingZoneDriftStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneDriftStatusSummary", name: "LandingZoneDriftStatusSummary")
    LandingZoneOperationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneOperationDetail", name: "LandingZoneOperationDetail")
    LandingZoneOperationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneOperationFilter", name: "LandingZoneOperationFilter")
    LandingZoneOperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#LandingZoneOperationStatus", name: "LandingZoneOperationStatus")
    LandingZoneOperationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#LandingZoneOperationStatuses", name: "LandingZoneOperationStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LandingZoneOperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneOperationSummary", name: "LandingZoneOperationSummary")
    LandingZoneOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#LandingZoneOperationType", name: "LandingZoneOperationType")
    LandingZoneOperationTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#LandingZoneOperationTypes", name: "LandingZoneOperationTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LandingZoneOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#LandingZoneOperations", name: "LandingZoneOperations")
    LandingZoneStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.controltower#LandingZoneStatus", name: "LandingZoneStatus")
    LandingZoneSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#LandingZoneSummaries", name: "LandingZoneSummaries")
    LandingZoneSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#LandingZoneSummary", name: "LandingZoneSummary")
    LandingZoneVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#LandingZoneVersion", name: "LandingZoneVersion", traits: {"smithy.api#length" => {"min" => 3, "max" => 10}, "smithy.api#pattern" => "^\\d+.\\d+$"})
    ListBaselinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListBaselinesInput", name: "ListBaselinesInput")
    ListBaselinesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#ListBaselinesMaxResults", name: "ListBaselinesMaxResults", traits: {"smithy.api#range" => {"min" => 4, "max" => 100}})
    ListBaselinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListBaselinesOutput", name: "ListBaselinesOutput")
    ListControlOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListControlOperationsInput", name: "ListControlOperationsInput")
    ListControlOperationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#ListControlOperationsMaxResults", name: "ListControlOperationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListControlOperationsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#ListControlOperationsNextToken", name: "ListControlOperationsNextToken", traits: {"smithy.api#pattern" => "\\S+"})
    ListControlOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListControlOperationsOutput", name: "ListControlOperationsOutput")
    ListEnabledBaselinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListEnabledBaselinesInput", name: "ListEnabledBaselinesInput")
    ListEnabledBaselinesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#ListEnabledBaselinesMaxResults", name: "ListEnabledBaselinesMaxResults", traits: {"smithy.api#range" => {"min" => 5, "max" => 100}})
    ListEnabledBaselinesNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#ListEnabledBaselinesNextToken", name: "ListEnabledBaselinesNextToken", traits: {"smithy.api#pattern" => "\\S+"})
    ListEnabledBaselinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListEnabledBaselinesOutput", name: "ListEnabledBaselinesOutput")
    ListEnabledControlsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListEnabledControlsInput", name: "ListEnabledControlsInput")
    ListEnabledControlsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListEnabledControlsOutput", name: "ListEnabledControlsOutput")
    ListLandingZoneOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListLandingZoneOperationsInput", name: "ListLandingZoneOperationsInput")
    ListLandingZoneOperationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#ListLandingZoneOperationsMaxResults", name: "ListLandingZoneOperationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListLandingZoneOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListLandingZoneOperationsOutput", name: "ListLandingZoneOperationsOutput")
    ListLandingZonesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListLandingZonesInput", name: "ListLandingZonesInput")
    ListLandingZonesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#ListLandingZonesMaxResults", name: "ListLandingZonesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    ListLandingZonesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListLandingZonesOutput", name: "ListLandingZonesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    Manifest = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.controltower#Manifest", name: "Manifest")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.controltower#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    OperationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#OperationIdentifier", name: "OperationIdentifier", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#Region", name: "Region")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResetEnabledBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetEnabledBaselineInput", name: "ResetEnabledBaselineInput")
    ResetEnabledBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetEnabledBaselineOutput", name: "ResetEnabledBaselineOutput")
    ResetEnabledControlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetEnabledControlInput", name: "ResetEnabledControlInput")
    ResetEnabledControlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetEnabledControlOutput", name: "ResetEnabledControlOutput")
    ResetLandingZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetLandingZoneInput", name: "ResetLandingZoneInput")
    ResetLandingZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResetLandingZoneOutput", name: "ResetLandingZoneOutput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.controltower#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.controltower#TargetIdentifier", name: "TargetIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[0-9a-zA-Z_\\-:\\/]+$"})
    TargetIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#TargetIdentifiers", name: "TargetIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.controltower#TargetRegions", name: "TargetRegions")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.controltower#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateEnabledBaselineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateEnabledBaselineInput", name: "UpdateEnabledBaselineInput")
    UpdateEnabledBaselineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateEnabledBaselineOutput", name: "UpdateEnabledBaselineOutput")
    UpdateEnabledControlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateEnabledControlInput", name: "UpdateEnabledControlInput")
    UpdateEnabledControlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateEnabledControlOutput", name: "UpdateEnabledControlOutput")
    UpdateLandingZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateLandingZoneInput", name: "UpdateLandingZoneInput")
    UpdateLandingZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#UpdateLandingZoneOutput", name: "UpdateLandingZoneOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.controltower#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BaselineOperation.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    BaselineOperation.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineOperationType, location_name: "operationType"))
    BaselineOperation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineOperationStatus, location_name: "status"))
    BaselineOperation.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BaselineOperation.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BaselineOperation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    BaselineOperation.type = Types::BaselineOperation
    BaselineOperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    BaselineOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BaselineOperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BaselineOperationType.add_member(:enable_baseline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_BASELINE", traits: {"smithy.api#enumValue" => "ENABLE_BASELINE"}))
    BaselineOperationType.add_member(:disable_baseline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE_BASELINE", traits: {"smithy.api#enumValue" => "DISABLE_BASELINE"}))
    BaselineOperationType.add_member(:update_enabled_baseline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_ENABLED_BASELINE", traits: {"smithy.api#enumValue" => "UPDATE_ENABLED_BASELINE"}))
    BaselineOperationType.add_member(:reset_enabled_baseline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESET_ENABLED_BASELINE", traits: {"smithy.api#enumValue" => "RESET_ENABLED_BASELINE"}))
    BaselineSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn", traits: {"smithy.api#required" => {}}))
    BaselineSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    BaselineSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    BaselineSummary.type = Types::BaselineSummary
    Baselines.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineSummary)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ControlIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier)
    ControlOperation.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationType, location_name: "operationType"))
    ControlOperation.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ControlOperation.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ControlOperation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationStatus, location_name: "status"))
    ControlOperation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    ControlOperation.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    ControlOperation.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    ControlOperation.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    ControlOperation.add_member(:enabled_control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier"))
    ControlOperation.type = Types::ControlOperation
    ControlOperationFilter.add_member(:control_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifiers, location_name: "controlIdentifiers"))
    ControlOperationFilter.add_member(:target_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifiers, location_name: "targetIdentifiers"))
    ControlOperationFilter.add_member(:enabled_control_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlIdentifiers, location_name: "enabledControlIdentifiers"))
    ControlOperationFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationStatuses, location_name: "statuses"))
    ControlOperationFilter.add_member(:control_operation_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationTypes, location_name: "controlOperationTypes"))
    ControlOperationFilter.type = Types::ControlOperationFilter
    ControlOperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ControlOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ControlOperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ControlOperationStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationStatus)
    ControlOperationSummary.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationType, location_name: "operationType"))
    ControlOperationSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ControlOperationSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ControlOperationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationStatus, location_name: "status"))
    ControlOperationSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    ControlOperationSummary.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    ControlOperationSummary.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    ControlOperationSummary.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    ControlOperationSummary.add_member(:enabled_control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier"))
    ControlOperationSummary.type = Types::ControlOperationSummary
    ControlOperationType.add_member(:enable_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_CONTROL", traits: {"smithy.api#enumValue" => "ENABLE_CONTROL"}))
    ControlOperationType.add_member(:disable_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE_CONTROL", traits: {"smithy.api#enumValue" => "DISABLE_CONTROL"}))
    ControlOperationType.add_member(:update_enabled_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_ENABLED_CONTROL", traits: {"smithy.api#enumValue" => "UPDATE_ENABLED_CONTROL"}))
    ControlOperationType.add_member(:reset_enabled_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESET_ENABLED_CONTROL", traits: {"smithy.api#enumValue" => "RESET_ENABLED_CONTROL"}))
    ControlOperationTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationType)
    ControlOperations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationSummary)
    CreateLandingZoneInput.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CreateLandingZoneInput.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Manifest, location_name: "manifest", traits: {"smithy.api#required" => {}}))
    CreateLandingZoneInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateLandingZoneInput.type = Types::CreateLandingZoneInput
    CreateLandingZoneOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateLandingZoneOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    CreateLandingZoneOutput.type = Types::CreateLandingZoneOutput
    DeleteLandingZoneInput.add_member(:landing_zone_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "landingZoneIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteLandingZoneInput.type = Types::DeleteLandingZoneInput
    DeleteLandingZoneOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteLandingZoneOutput.type = Types::DeleteLandingZoneOutput
    DisableBaselineInput.add_member(:enabled_baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledBaselineIdentifier", traits: {"smithy.api#required" => {}}))
    DisableBaselineInput.type = Types::DisableBaselineInput
    DisableBaselineOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    DisableBaselineOutput.type = Types::DisableBaselineOutput
    DisableControlInput.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier", traits: {"smithy.api#required" => {}}))
    DisableControlInput.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    DisableControlInput.type = Types::DisableControlInput
    DisableControlOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    DisableControlOutput.type = Types::DisableControlOutput
    DriftStatus.add_member(:drifted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRIFTED", traits: {"smithy.api#enumValue" => "DRIFTED"}))
    DriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    DriftStatus.add_member(:not_checking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CHECKING", traits: {"smithy.api#enumValue" => "NOT_CHECKING"}))
    DriftStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DriftStatusSummary.add_member(:drift_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DriftStatus, location_name: "driftStatus"))
    DriftStatusSummary.type = Types::DriftStatusSummary
    DriftStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DriftStatus)
    EnableBaselineInput.add_member(:baseline_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineVersion, location_name: "baselineVersion", traits: {"smithy.api#required" => {}}))
    EnableBaselineInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameters, location_name: "parameters"))
    EnableBaselineInput.add_member(:baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "baselineIdentifier", traits: {"smithy.api#required" => {}}))
    EnableBaselineInput.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    EnableBaselineInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableBaselineInput.type = Types::EnableBaselineInput
    EnableBaselineOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    EnableBaselineOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    EnableBaselineOutput.type = Types::EnableBaselineOutput
    EnableControlInput.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier", traits: {"smithy.api#required" => {}}))
    EnableControlInput.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    EnableControlInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EnableControlInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlParameters, location_name: "parameters"))
    EnableControlInput.type = Types::EnableControlInput
    EnableControlOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    EnableControlOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnableControlOutput.type = Types::EnableControlOutput
    EnabledBaselineBaselineIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    EnabledBaselineDetails.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    EnabledBaselineDetails.add_member(:baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baselineIdentifier", traits: {"smithy.api#required" => {}}))
    EnabledBaselineDetails.add_member(:baseline_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baselineVersion"))
    EnabledBaselineDetails.add_member(:drift_status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledBaselineDetails.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    EnabledBaselineDetails.add_member(:parent_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "parentIdentifier"))
    EnabledBaselineDetails.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary", traits: {"smithy.api#required" => {}}))
    EnabledBaselineDetails.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameterSummaries, location_name: "parameters"))
    EnabledBaselineDetails.type = Types::EnabledBaselineDetails
    EnabledBaselineDriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    EnabledBaselineDriftStatus.add_member(:drifted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRIFTED", traits: {"smithy.api#enumValue" => "DRIFTED"}))
    EnabledBaselineDriftStatusSummary.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftTypes, location_name: "types"))
    EnabledBaselineDriftStatusSummary.type = Types::EnabledBaselineDriftStatusSummary
    EnabledBaselineDriftStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatus)
    EnabledBaselineDriftTypes.add_member(:inheritance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineInheritanceDrift, location_name: "inheritance"))
    EnabledBaselineDriftTypes.type = Types::EnabledBaselineDriftTypes
    EnabledBaselineEnablementStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatus)
    EnabledBaselineFilter.add_member(:target_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineTargetIdentifiers, location_name: "targetIdentifiers"))
    EnabledBaselineFilter.add_member(:baseline_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineBaselineIdentifiers, location_name: "baselineIdentifiers"))
    EnabledBaselineFilter.add_member(:parent_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParentIdentifiers, location_name: "parentIdentifiers"))
    EnabledBaselineFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineEnablementStatuses, location_name: "statuses"))
    EnabledBaselineFilter.add_member(:inheritance_drift_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatuses, location_name: "inheritanceDriftStatuses"))
    EnabledBaselineFilter.type = Types::EnabledBaselineFilter
    EnabledBaselineInheritanceDrift.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatus, location_name: "status"))
    EnabledBaselineInheritanceDrift.type = Types::EnabledBaselineInheritanceDrift
    EnabledBaselineParameter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#required" => {}}))
    EnabledBaselineParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameterDocument, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnabledBaselineParameter.type = Types::EnabledBaselineParameter
    EnabledBaselineParameterSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameterSummary)
    EnabledBaselineParameterSummary.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#required" => {}}))
    EnabledBaselineParameterSummary.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameterDocument, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnabledBaselineParameterSummary.type = Types::EnabledBaselineParameterSummary
    EnabledBaselineParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameter)
    EnabledBaselineParentIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    EnabledBaselineSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    EnabledBaselineSummary.add_member(:baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baselineIdentifier", traits: {"smithy.api#required" => {}}))
    EnabledBaselineSummary.add_member(:baseline_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baselineVersion"))
    EnabledBaselineSummary.add_member(:drift_status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledBaselineSummary.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    EnabledBaselineSummary.add_member(:parent_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "parentIdentifier"))
    EnabledBaselineSummary.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary", traits: {"smithy.api#required" => {}}))
    EnabledBaselineSummary.type = Types::EnabledBaselineSummary
    EnabledBaselineTargetIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    EnabledBaselines.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineSummary)
    EnabledControlDetails.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlDetails.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlDetails.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlDetails.add_member(:target_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetRegions, location_name: "targetRegions"))
    EnabledControlDetails.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlDetails.add_member(:drift_status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlDetails.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlParameterSummaries, location_name: "parameters"))
    EnabledControlDetails.type = Types::EnabledControlDetails
    EnabledControlFilter.add_member(:control_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifiers, location_name: "controlIdentifiers"))
    EnabledControlFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatuses, location_name: "statuses"))
    EnabledControlFilter.add_member(:drift_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DriftStatuses, location_name: "driftStatuses"))
    EnabledControlFilter.type = Types::EnabledControlFilter
    EnabledControlIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    EnabledControlParameter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#required" => {}}))
    EnabledControlParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnabledControlParameter.type = Types::EnabledControlParameter
    EnabledControlParameterSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlParameterSummary)
    EnabledControlParameterSummary.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#required" => {}}))
    EnabledControlParameterSummary.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnabledControlParameterSummary.type = Types::EnabledControlParameterSummary
    EnabledControlParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlParameter)
    EnabledControlSummary.add_member(:control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlIdentifier, location_name: "controlIdentifier"))
    EnabledControlSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    EnabledControlSummary.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier"))
    EnabledControlSummary.add_member(:status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatusSummary, location_name: "statusSummary"))
    EnabledControlSummary.add_member(:drift_status_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DriftStatusSummary, location_name: "driftStatusSummary"))
    EnabledControlSummary.type = Types::EnabledControlSummary
    EnabledControls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlSummary)
    EnablementStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EnablementStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EnablementStatus.add_member(:under_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDER_CHANGE", traits: {"smithy.api#enumValue" => "UNDER_CHANGE"}))
    EnablementStatusSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatus, location_name: "status"))
    EnablementStatusSummary.add_member(:last_operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "lastOperationIdentifier"))
    EnablementStatusSummary.type = Types::EnablementStatusSummary
    EnablementStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnablementStatus)
    GetBaselineInput.add_member(:baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineArn, location_name: "baselineIdentifier", traits: {"smithy.api#required" => {}}))
    GetBaselineInput.type = Types::GetBaselineInput
    GetBaselineOperationInput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    GetBaselineOperationInput.type = Types::GetBaselineOperationInput
    GetBaselineOperationOutput.add_member(:baseline_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineOperation, location_name: "baselineOperation", traits: {"smithy.api#required" => {}}))
    GetBaselineOperationOutput.type = Types::GetBaselineOperationOutput
    GetBaselineOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetBaselineOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetBaselineOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetBaselineOutput.type = Types::GetBaselineOutput
    GetControlOperationInput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    GetControlOperationInput.type = Types::GetControlOperationInput
    GetControlOperationOutput.add_member(:control_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperation, location_name: "controlOperation", traits: {"smithy.api#required" => {}}))
    GetControlOperationOutput.type = Types::GetControlOperationOutput
    GetEnabledBaselineInput.add_member(:enabled_baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledBaselineIdentifier", traits: {"smithy.api#required" => {}}))
    GetEnabledBaselineInput.type = Types::GetEnabledBaselineInput
    GetEnabledBaselineOutput.add_member(:enabled_baseline_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineDetails, location_name: "enabledBaselineDetails"))
    GetEnabledBaselineOutput.type = Types::GetEnabledBaselineOutput
    GetEnabledControlInput.add_member(:enabled_control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier", traits: {"smithy.api#required" => {}}))
    GetEnabledControlInput.type = Types::GetEnabledControlInput
    GetEnabledControlOutput.add_member(:enabled_control_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlDetails, location_name: "enabledControlDetails", traits: {"smithy.api#required" => {}}))
    GetEnabledControlOutput.type = Types::GetEnabledControlOutput
    GetLandingZoneInput.add_member(:landing_zone_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "landingZoneIdentifier", traits: {"smithy.api#required" => {}}))
    GetLandingZoneInput.type = Types::GetLandingZoneInput
    GetLandingZoneOperationInput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    GetLandingZoneOperationInput.type = Types::GetLandingZoneOperationInput
    GetLandingZoneOperationOutput.add_member(:operation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationDetail, location_name: "operationDetails", traits: {"smithy.api#required" => {}}))
    GetLandingZoneOperationOutput.type = Types::GetLandingZoneOperationOutput
    GetLandingZoneOutput.add_member(:landing_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneDetail, location_name: "landingZone", traits: {"smithy.api#required" => {}}))
    GetLandingZoneOutput.type = Types::GetLandingZoneOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LandingZoneDetail.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    LandingZoneDetail.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Manifest, location_name: "manifest", traits: {"smithy.api#required" => {}}))
    LandingZoneDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneStatus, location_name: "status"))
    LandingZoneDetail.add_member(:latest_available_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "latestAvailableVersion"))
    LandingZoneDetail.add_member(:drift_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneDriftStatusSummary, location_name: "driftStatus"))
    LandingZoneDetail.type = Types::LandingZoneDetail
    LandingZoneDriftStatus.add_member(:drifted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRIFTED", traits: {"smithy.api#enumValue" => "DRIFTED"}))
    LandingZoneDriftStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    LandingZoneDriftStatusSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneDriftStatus, location_name: "status"))
    LandingZoneDriftStatusSummary.type = Types::LandingZoneDriftStatusSummary
    LandingZoneOperationDetail.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationType, location_name: "operationType"))
    LandingZoneOperationDetail.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    LandingZoneOperationDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationStatus, location_name: "status"))
    LandingZoneOperationDetail.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    LandingZoneOperationDetail.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    LandingZoneOperationDetail.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    LandingZoneOperationDetail.type = Types::LandingZoneOperationDetail
    LandingZoneOperationFilter.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationTypes, location_name: "types"))
    LandingZoneOperationFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationStatuses, location_name: "statuses"))
    LandingZoneOperationFilter.type = Types::LandingZoneOperationFilter
    LandingZoneOperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LandingZoneOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LandingZoneOperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LandingZoneOperationStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationStatus)
    LandingZoneOperationSummary.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationType, location_name: "operationType"))
    LandingZoneOperationSummary.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier"))
    LandingZoneOperationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationStatus, location_name: "status"))
    LandingZoneOperationSummary.type = Types::LandingZoneOperationSummary
    LandingZoneOperationType.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LandingZoneOperationType.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    LandingZoneOperationType.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    LandingZoneOperationType.add_member(:reset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESET", traits: {"smithy.api#enumValue" => "RESET"}))
    LandingZoneOperationTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationType)
    LandingZoneOperations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationSummary)
    LandingZoneStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LandingZoneStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    LandingZoneStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LandingZoneSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneSummary)
    LandingZoneSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LandingZoneSummary.type = Types::LandingZoneSummary
    ListBaselinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListBaselinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBaselinesMaxResults, location_name: "maxResults"))
    ListBaselinesInput.type = Types::ListBaselinesInput
    ListBaselinesOutput.add_member(:baselines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Baselines, location_name: "baselines", traits: {"smithy.api#required" => {}}))
    ListBaselinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListBaselinesOutput.type = Types::ListBaselinesOutput
    ListControlOperationsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperationFilter, location_name: "filter"))
    ListControlOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlOperationsNextToken, location_name: "nextToken"))
    ListControlOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlOperationsMaxResults, location_name: "maxResults"))
    ListControlOperationsInput.type = Types::ListControlOperationsInput
    ListControlOperationsOutput.add_member(:control_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlOperations, location_name: "controlOperations", traits: {"smithy.api#required" => {}}))
    ListControlOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlOperationsNextToken, location_name: "nextToken"))
    ListControlOperationsOutput.type = Types::ListControlOperationsOutput
    ListEnabledBaselinesInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineFilter, location_name: "filter"))
    ListEnabledBaselinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledBaselinesNextToken, location_name: "nextToken"))
    ListEnabledBaselinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledBaselinesMaxResults, location_name: "maxResults"))
    ListEnabledBaselinesInput.add_member(:include_children, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "includeChildren", traits: {"smithy.api#default" => false}))
    ListEnabledBaselinesInput.type = Types::ListEnabledBaselinesInput
    ListEnabledBaselinesOutput.add_member(:enabled_baselines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselines, location_name: "enabledBaselines", traits: {"smithy.api#required" => {}}))
    ListEnabledBaselinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledBaselinesNextToken, location_name: "nextToken"))
    ListEnabledBaselinesOutput.type = Types::ListEnabledBaselinesOutput
    ListEnabledControlsInput.add_member(:target_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier, location_name: "targetIdentifier", traits: {"smithy.api#default" => nil}))
    ListEnabledControlsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListEnabledControlsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnabledControlsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlFilter, location_name: "filter"))
    ListEnabledControlsInput.type = Types::ListEnabledControlsInput
    ListEnabledControlsOutput.add_member(:enabled_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControls, location_name: "enabledControls", traits: {"smithy.api#required" => {}}))
    ListEnabledControlsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListEnabledControlsOutput.type = Types::ListEnabledControlsOutput
    ListLandingZoneOperationsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperationFilter, location_name: "filter"))
    ListLandingZoneOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListLandingZoneOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZoneOperationsMaxResults, location_name: "maxResults"))
    ListLandingZoneOperationsInput.type = Types::ListLandingZoneOperationsInput
    ListLandingZoneOperationsOutput.add_member(:landing_zone_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneOperations, location_name: "landingZoneOperations", traits: {"smithy.api#required" => {}}))
    ListLandingZoneOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListLandingZoneOperationsOutput.type = Types::ListLandingZoneOperationsOutput
    ListLandingZonesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListLandingZonesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZonesMaxResults, location_name: "maxResults"))
    ListLandingZonesInput.type = Types::ListLandingZonesInput
    ListLandingZonesOutput.add_member(:landing_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneSummaries, location_name: "landingZones", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    ListLandingZonesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListLandingZonesOutput.type = Types::ListLandingZonesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Region.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "name"))
    Region.type = Types::Region
    ResetEnabledBaselineInput.add_member(:enabled_baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledBaselineIdentifier", traits: {"smithy.api#required" => {}}))
    ResetEnabledBaselineInput.type = Types::ResetEnabledBaselineInput
    ResetEnabledBaselineOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    ResetEnabledBaselineOutput.type = Types::ResetEnabledBaselineOutput
    ResetEnabledControlInput.add_member(:enabled_control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier", traits: {"smithy.api#required" => {}}))
    ResetEnabledControlInput.type = Types::ResetEnabledControlInput
    ResetEnabledControlOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    ResetEnabledControlOutput.type = Types::ResetEnabledControlOutput
    ResetLandingZoneInput.add_member(:landing_zone_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "landingZoneIdentifier", traits: {"smithy.api#required" => {}}))
    ResetLandingZoneInput.type = Types::ResetLandingZoneInput
    ResetLandingZoneOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    ResetLandingZoneOutput.type = Types::ResetLandingZoneOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdentifier)
    TargetRegions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateEnabledBaselineInput.add_member(:baseline_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaselineVersion, location_name: "baselineVersion", traits: {"smithy.api#required" => {}}))
    UpdateEnabledBaselineInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledBaselineParameters, location_name: "parameters"))
    UpdateEnabledBaselineInput.add_member(:enabled_baseline_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledBaselineIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateEnabledBaselineInput.type = Types::UpdateEnabledBaselineInput
    UpdateEnabledBaselineOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateEnabledBaselineOutput.type = Types::UpdateEnabledBaselineOutput
    UpdateEnabledControlInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledControlParameters, location_name: "parameters", traits: {"smithy.api#required" => {}}))
    UpdateEnabledControlInput.add_member(:enabled_control_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "enabledControlIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateEnabledControlInput.type = Types::UpdateEnabledControlInput
    UpdateEnabledControlOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateEnabledControlOutput.type = Types::UpdateEnabledControlOutput
    UpdateLandingZoneInput.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandingZoneVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    UpdateLandingZoneInput.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Manifest, location_name: "manifest", traits: {"smithy.api#required" => {}}))
    UpdateLandingZoneInput.add_member(:landing_zone_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "landingZoneIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateLandingZoneInput.type = Types::UpdateLandingZoneInput
    UpdateLandingZoneOutput.add_member(:operation_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationIdentifier, location_name: "operationIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateLandingZoneOutput.type = Types::UpdateLandingZoneOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSControlTowerApis = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.controltower#AWSControlTowerApis"
      service.name = "AWSControlTowerApis"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "ControlTower", "cloudFormationName" => "ControlTower", "arnNamespace" => "controltower", "endpointPrefix" => "controltower", "cloudTrailEventSource" => "controltower.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "controltower"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "content-length", "x-api-key", "authorization", "x-amz-date", "x-amz-security-token"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS Control Tower"}
      service.add_operation(:create_landing_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#CreateLandingZone"
        operation.name = "CreateLandingZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLandingZoneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLandingZoneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/create-landingzone"}}
      end)
      service.add_operation(:delete_landing_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#DeleteLandingZone"
        operation.name = "DeleteLandingZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLandingZoneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLandingZoneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/delete-landingzone"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#DisableBaseline"
        operation.name = "DisableBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/disable-baseline"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#DisableControl"
        operation.name = "DisableControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableControlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableControlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/disable-control"}}
      end)
      service.add_operation(:enable_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#EnableBaseline"
        operation.name = "EnableBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/enable-baseline"}}
      end)
      service.add_operation(:enable_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#EnableControl"
        operation.name = "EnableControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableControlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableControlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/enable-control"}}
      end)
      service.add_operation(:get_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetBaseline"
        operation.name = "GetBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-baseline"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_baseline_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetBaselineOperation"
        operation.name = "GetBaselineOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaselineOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBaselineOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-baseline-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_control_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetControlOperation"
        operation.name = "GetControlOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetControlOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-control-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_enabled_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetEnabledBaseline"
        operation.name = "GetEnabledBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnabledBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnabledBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-enabled-baseline"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_enabled_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetEnabledControl"
        operation.name = "GetEnabledControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnabledControlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnabledControlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-enabled-control"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_landing_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetLandingZone"
        operation.name = "GetLandingZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLandingZoneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLandingZoneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-landingzone"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_landing_zone_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#GetLandingZoneOperation"
        operation.name = "GetLandingZoneOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLandingZoneOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLandingZoneOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/get-landingzone-operation"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_baselines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListBaselines"
        operation.name = "ListBaselines"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBaselinesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBaselinesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-baselines"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBaselines.new
      end)
      service.add_operation(:list_control_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListControlOperations"
        operation.name = "ListControlOperations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlOperationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlOperationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-control-operations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListControlOperations.new
      end)
      service.add_operation(:list_enabled_baselines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListEnabledBaselines"
        operation.name = "ListEnabledBaselines"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledBaselinesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledBaselinesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-enabled-baselines"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnabledBaselines.new
      end)
      service.add_operation(:list_enabled_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListEnabledControls"
        operation.name = "ListEnabledControls"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledControlsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnabledControlsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-enabled-controls"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnabledControls.new
      end)
      service.add_operation(:list_landing_zone_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListLandingZoneOperations"
        operation.name = "ListLandingZoneOperations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZoneOperationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZoneOperationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-landingzone-operations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLandingZoneOperations.new
      end)
      service.add_operation(:list_landing_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListLandingZones"
        operation.name = "ListLandingZones"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZonesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLandingZonesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-landingzones"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLandingZones.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:reset_enabled_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ResetEnabledBaseline"
        operation.name = "ResetEnabledBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEnabledBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEnabledBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reset-enabled-baseline"}}
      end)
      service.add_operation(:reset_enabled_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ResetEnabledControl"
        operation.name = "ResetEnabledControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEnabledControlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetEnabledControlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reset-enabled-control"}}
      end)
      service.add_operation(:reset_landing_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#ResetLandingZone"
        operation.name = "ResetLandingZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetLandingZoneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetLandingZoneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/reset-landingzone"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:update_enabled_baseline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#UpdateEnabledBaseline"
        operation.name = "UpdateEnabledBaseline"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnabledBaselineInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnabledBaselineOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-enabled-baseline"}}
      end)
      service.add_operation(:update_enabled_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#UpdateEnabledControl"
        operation.name = "UpdateEnabledControl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnabledControlInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnabledControlOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-enabled-control"}}
      end)
      service.add_operation(:update_landing_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.controltower#UpdateLandingZone"
        operation.name = "UpdateLandingZone"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLandingZoneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLandingZoneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-landingzone"}}
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
