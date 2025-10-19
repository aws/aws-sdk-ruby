# frozen_string_literal: true

# This is generated code!

module Aws::LaunchWizard
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowedValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#AllowedValues", name: "AllowedValues")
    CreateDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#CreateDeploymentInput", name: "CreateDeploymentInput")
    CreateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#CreateDeploymentOutput", name: "CreateDeploymentOutput")
    DeleteDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeleteDeploymentInput", name: "DeleteDeploymentInput")
    DeleteDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeleteDeploymentOutput", name: "DeleteDeploymentOutput")
    DeploymentConditionalField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentConditionalField", name: "DeploymentConditionalField")
    DeploymentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentData", name: "DeploymentData")
    DeploymentDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentDataSummary", name: "DeploymentDataSummary")
    DeploymentDataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#DeploymentDataSummaryList", name: "DeploymentDataSummaryList")
    DeploymentEventDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentEventDataSummary", name: "DeploymentEventDataSummary")
    DeploymentEventDataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#DeploymentEventDataSummaryList", name: "DeploymentEventDataSummaryList")
    DeploymentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentFilter", name: "DeploymentFilter")
    DeploymentFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.launchwizard#DeploymentFilterKey", name: "DeploymentFilterKey")
    DeploymentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#DeploymentFilterList", name: "DeploymentFilterList", traits: {"smithy.api#length" => {"min" => 1}})
    DeploymentFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#DeploymentFilterValues", name: "DeploymentFilterValues")
    DeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#DeploymentId", name: "DeploymentId", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    DeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#DeploymentName", name: "DeploymentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.-]+$"})
    DeploymentPatternName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#DeploymentPatternName", name: "DeploymentPatternName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9][a-zA-Z0-9-]*$"})
    DeploymentSpecifications = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.launchwizard#DeploymentSpecifications", name: "DeploymentSpecifications", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    DeploymentSpecificationsData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#DeploymentSpecificationsData", name: "DeploymentSpecificationsData", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentSpecificationsField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#DeploymentSpecificationsField", name: "DeploymentSpecificationsField")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.launchwizard#DeploymentStatus", name: "DeploymentStatus")
    EventStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.launchwizard#EventStatus", name: "EventStatus")
    GetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetDeploymentInput", name: "GetDeploymentInput")
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetDeploymentOutput", name: "GetDeploymentOutput")
    GetWorkloadDeploymentPatternInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetWorkloadDeploymentPatternInput", name: "GetWorkloadDeploymentPatternInput")
    GetWorkloadDeploymentPatternOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetWorkloadDeploymentPatternOutput", name: "GetWorkloadDeploymentPatternOutput")
    GetWorkloadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetWorkloadInput", name: "GetWorkloadInput")
    GetWorkloadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#GetWorkloadOutput", name: "GetWorkloadOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#KeyString", name: "KeyString", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-:]+$"})
    ListDeploymentEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListDeploymentEventsInput", name: "ListDeploymentEventsInput")
    ListDeploymentEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListDeploymentEventsOutput", name: "ListDeploymentEventsOutput")
    ListDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListDeploymentsInput", name: "ListDeploymentsInput")
    ListDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListDeploymentsOutput", name: "ListDeploymentsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWorkloadDeploymentPatternsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListWorkloadDeploymentPatternsInput", name: "ListWorkloadDeploymentPatternsInput")
    ListWorkloadDeploymentPatternsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListWorkloadDeploymentPatternsOutput", name: "ListWorkloadDeploymentPatternsOutput")
    ListWorkloadsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListWorkloadsInput", name: "ListWorkloadsInput")
    ListWorkloadsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ListWorkloadsOutput", name: "ListWorkloadsOutput")
    MaxDeploymentEventResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.launchwizard#MaxDeploymentEventResults", name: "MaxDeploymentEventResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxDeploymentResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.launchwizard#MaxDeploymentResults", name: "MaxDeploymentResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxWorkloadDeploymentPatternResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.launchwizard#MaxWorkloadDeploymentPatternResults", name: "MaxWorkloadDeploymentPatternResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxWorkloadResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.launchwizard#MaxWorkloadResults", name: "MaxWorkloadResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ResourceLimitException", name: "ResourceLimitException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SpecificationsConditionalData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#SpecificationsConditionalData", name: "SpecificationsConditionalData", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.launchwizard#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#UntagResourceOutput", name: "UntagResourceOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#ValueString", name: "ValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    WorkloadData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#WorkloadData", name: "WorkloadData")
    WorkloadDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#WorkloadDataSummary", name: "WorkloadDataSummary")
    WorkloadDataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#WorkloadDataSummaryList", name: "WorkloadDataSummaryList")
    WorkloadDeploymentPatternData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#WorkloadDeploymentPatternData", name: "WorkloadDeploymentPatternData")
    WorkloadDeploymentPatternDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.launchwizard#WorkloadDeploymentPatternDataSummary", name: "WorkloadDeploymentPatternDataSummary")
    WorkloadDeploymentPatternDataSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.launchwizard#WorkloadDeploymentPatternDataSummaryList", name: "WorkloadDeploymentPatternDataSummaryList")
    WorkloadDeploymentPatternStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.launchwizard#WorkloadDeploymentPatternStatus", name: "WorkloadDeploymentPatternStatus")
    WorkloadName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#WorkloadName", name: "WorkloadName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z][a-zA-Z0-9-_]*$"})
    WorkloadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.launchwizard#WorkloadStatus", name: "WorkloadStatus")
    WorkloadVersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.launchwizard#WorkloadVersionName", name: "WorkloadVersionName", traits: {"smithy.api#length" => {"min" => 5, "max" => 30}, "smithy.api#pattern" => "^[A-Za-z0-9][a-zA-Z0-9-]*$"})

    AllowedValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueString)
    CreateDeploymentInput.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:deployment_pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "deploymentPatternName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSpecifications, location_name: "specifications", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateDeploymentInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDeploymentInput.type = Types::CreateDeploymentInput
    CreateDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    DeleteDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId", traits: {"smithy.api#required" => {}}))
    DeleteDeploymentInput.type = Types::DeleteDeploymentInput
    DeleteDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeleteDeploymentOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DeleteDeploymentOutput.type = Types::DeleteDeploymentOutput
    DeploymentConditionalField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DeploymentConditionalField.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "value"))
    DeploymentConditionalField.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "comparator"))
    DeploymentConditionalField.type = Types::DeploymentConditionalField
    DeploymentData.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DeploymentData.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "id"))
    DeploymentData.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    DeploymentData.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "patternName"))
    DeploymentData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentData.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    DeploymentData.add_member(:specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSpecifications, location_name: "specifications"))
    DeploymentData.add_member(:resource_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceGroup"))
    DeploymentData.add_member(:deleted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "deletedAt"))
    DeploymentData.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeploymentData.add_member(:deployment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "deploymentArn"))
    DeploymentData.type = Types::DeploymentData
    DeploymentDataSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DeploymentDataSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "id"))
    DeploymentDataSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    DeploymentDataSummary.add_member(:pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "patternName"))
    DeploymentDataSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentDataSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    DeploymentDataSummary.type = Types::DeploymentDataSummary
    DeploymentDataSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDataSummary)
    DeploymentEventDataSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DeploymentEventDataSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    DeploymentEventDataSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventStatus, location_name: "status"))
    DeploymentEventDataSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    DeploymentEventDataSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timestamp"))
    DeploymentEventDataSummary.type = Types::DeploymentEventDataSummary
    DeploymentEventDataSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEventDataSummary)
    DeploymentFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilterKey, location_name: "name"))
    DeploymentFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilterValues, location_name: "values"))
    DeploymentFilter.type = Types::DeploymentFilter
    DeploymentFilterKey.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKLOAD_NAME", traits: {"smithy.api#enumValue" => "WORKLOAD_NAME"}))
    DeploymentFilterKey.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYMENT_STATUS", traits: {"smithy.api#enumValue" => "DEPLOYMENT_STATUS"}))
    DeploymentFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilter)
    DeploymentFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentSpecifications.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyString)
    DeploymentSpecifications.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueString)
    DeploymentSpecificationsData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSpecificationsField)
    DeploymentSpecificationsField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    DeploymentSpecificationsField.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    DeploymentSpecificationsField.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedValues, location_name: "allowedValues"))
    DeploymentSpecificationsField.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "required"))
    DeploymentSpecificationsField.add_member(:conditionals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpecificationsConditionalData, location_name: "conditionals"))
    DeploymentSpecificationsField.type = Types::DeploymentSpecificationsField
    DeploymentStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DeploymentStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DeploymentStatus.add_member(:delete_initiating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_INITIATING", traits: {"smithy.api#enumValue" => "DELETE_INITIATING"}))
    DeploymentStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DeploymentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    EventStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    EventStatus.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELING", traits: {"smithy.api#enumValue" => "CANCELING"}))
    EventStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    EventStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    EventStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EventStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    EventStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    EventStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    GetDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId", traits: {"smithy.api#required" => {}}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentOutput.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentData, location_name: "deployment"))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetWorkloadDeploymentPatternInput.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName", traits: {"smithy.api#required" => {}}))
    GetWorkloadDeploymentPatternInput.add_member(:deployment_pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "deploymentPatternName", traits: {"smithy.api#required" => {}}))
    GetWorkloadDeploymentPatternInput.type = Types::GetWorkloadDeploymentPatternInput
    GetWorkloadDeploymentPatternOutput.add_member(:workload_deployment_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternData, location_name: "workloadDeploymentPattern"))
    GetWorkloadDeploymentPatternOutput.type = Types::GetWorkloadDeploymentPatternOutput
    GetWorkloadInput.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName", traits: {"smithy.api#required" => {}}))
    GetWorkloadInput.type = Types::GetWorkloadInput
    GetWorkloadOutput.add_member(:workload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadData, location_name: "workload"))
    GetWorkloadOutput.type = Types::GetWorkloadOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListDeploymentEventsInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId", traits: {"smithy.api#required" => {}}))
    ListDeploymentEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDeploymentEventResults, location_name: "maxResults", traits: {"smithy.api#default" => nil}))
    ListDeploymentEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentEventsInput.type = Types::ListDeploymentEventsInput
    ListDeploymentEventsOutput.add_member(:deployment_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEventDataSummaryList, location_name: "deploymentEvents"))
    ListDeploymentEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentEventsOutput.type = Types::ListDeploymentEventsOutput
    ListDeploymentsInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilterList, location_name: "filters"))
    ListDeploymentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDeploymentResults, location_name: "maxResults", traits: {"smithy.api#default" => nil}))
    ListDeploymentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDataSummaryList, location_name: "deployments"))
    ListDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkloadDeploymentPatternsInput.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName", traits: {"smithy.api#required" => {}}))
    ListWorkloadDeploymentPatternsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkloadDeploymentPatternResults, location_name: "maxResults", traits: {"smithy.api#default" => nil}))
    ListWorkloadDeploymentPatternsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadDeploymentPatternsInput.type = Types::ListWorkloadDeploymentPatternsInput
    ListWorkloadDeploymentPatternsOutput.add_member(:workload_deployment_patterns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternDataSummaryList, location_name: "workloadDeploymentPatterns"))
    ListWorkloadDeploymentPatternsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadDeploymentPatternsOutput.type = Types::ListWorkloadDeploymentPatternsOutput
    ListWorkloadsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkloadResults, location_name: "maxResults", traits: {"smithy.api#default" => nil}))
    ListWorkloadsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadsInput.type = Types::ListWorkloadsInput
    ListWorkloadsOutput.add_member(:workloads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDataSummaryList, location_name: "workloads"))
    ListWorkloadsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadsOutput.type = Types::ListWorkloadsOutput
    ResourceLimitException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ResourceLimitException.type = Types::ResourceLimitException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SpecificationsConditionalData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConditionalField)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ValidationException.type = Types::ValidationException
    WorkloadData.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadData.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    WorkloadData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    WorkloadData.add_member(:documentation_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "documentationUrl"))
    WorkloadData.add_member(:icon_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "iconUrl"))
    WorkloadData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadStatus, location_name: "status"))
    WorkloadData.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    WorkloadData.type = Types::WorkloadData
    WorkloadDataSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadDataSummary.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    WorkloadDataSummary.type = Types::WorkloadDataSummary
    WorkloadDataSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDataSummary)
    WorkloadDeploymentPatternData.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadDeploymentPatternData.add_member(:deployment_pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "deploymentPatternName"))
    WorkloadDeploymentPatternData.add_member(:workload_version_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadVersionName, location_name: "workloadVersionName"))
    WorkloadDeploymentPatternData.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    WorkloadDeploymentPatternData.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    WorkloadDeploymentPatternData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternStatus, location_name: "status"))
    WorkloadDeploymentPatternData.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    WorkloadDeploymentPatternData.add_member(:specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSpecificationsData, location_name: "specifications"))
    WorkloadDeploymentPatternData.type = Types::WorkloadDeploymentPatternData
    WorkloadDeploymentPatternDataSummary.add_member(:workload_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadDeploymentPatternDataSummary.add_member(:deployment_pattern_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "deploymentPatternName"))
    WorkloadDeploymentPatternDataSummary.add_member(:workload_version_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadVersionName, location_name: "workloadVersionName"))
    WorkloadDeploymentPatternDataSummary.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "displayName"))
    WorkloadDeploymentPatternDataSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    WorkloadDeploymentPatternDataSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternStatus, location_name: "status"))
    WorkloadDeploymentPatternDataSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    WorkloadDeploymentPatternDataSummary.type = Types::WorkloadDeploymentPatternDataSummary
    WorkloadDeploymentPatternDataSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternDataSummary)
    WorkloadDeploymentPatternStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WorkloadDeploymentPatternStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    WorkloadDeploymentPatternStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkloadDeploymentPatternStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    WorkloadStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WorkloadStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    WorkloadStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkloadStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))

    LaunchWizard = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.launchwizard#LaunchWizard"
      service.name = "LaunchWizard"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Launch Wizard", "cloudFormationName" => "LaunchWizard", "arnNamespace" => "launchwizard", "endpointPrefix" => "launchwizard", "cloudTrailEventSource" => "launchwizard.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "launchwizard"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Launch Wizard"}
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/createDeployment"}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/deleteDeployment"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getDeployment"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#GetWorkload"
        operation.name = "GetWorkload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getWorkload"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload_deployment_pattern, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#GetWorkloadDeploymentPattern"
        operation.name = "GetWorkloadDeploymentPattern"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadDeploymentPatternInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadDeploymentPatternOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getWorkloadDeploymentPattern"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_deployment_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#ListDeploymentEvents"
        operation.name = "ListDeploymentEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentEventsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentEventsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listDeploymentEvents"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeploymentEvents.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listDeployments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_workload_deployment_patterns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#ListWorkloadDeploymentPatterns"
        operation.name = "ListWorkloadDeploymentPatterns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadDeploymentPatternsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadDeploymentPatternsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listWorkloadDeploymentPatterns"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkloadDeploymentPatterns.new
      end)
      service.add_operation(:list_workloads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#ListWorkloads"
        operation.name = "ListWorkloads"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listWorkloads"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkloads.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.launchwizard#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
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
