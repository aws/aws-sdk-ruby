# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$"})
    BlankNodeHandling = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#BlankNodeHandling', name: 'BlankNodeHandling')
    CancelExportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelExportTaskInput', name: 'CancelExportTaskInput')
    CancelExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelExportTaskOutput', name: 'CancelExportTaskOutput')
    CancelImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelImportTaskInput', name: 'CancelImportTaskInput')
    CancelImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelImportTaskOutput', name: 'CancelImportTaskOutput')
    CancelQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelQueryInput', name: 'CancelQueryInput')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ConflictExceptionReason', name: 'ConflictExceptionReason')
    CreateGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphInput', name: 'CreateGraphInput')
    CreateGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphOutput', name: 'CreateGraphOutput')
    CreateGraphSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphSnapshotInput', name: 'CreateGraphSnapshotInput')
    CreateGraphSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphSnapshotOutput', name: 'CreateGraphSnapshotOutput')
    CreateGraphUsingImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphUsingImportTaskInput', name: 'CreateGraphUsingImportTaskInput')
    CreateGraphUsingImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphUsingImportTaskOutput', name: 'CreateGraphUsingImportTaskOutput')
    CreatePrivateGraphEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreatePrivateGraphEndpointInput', name: 'CreatePrivateGraphEndpointInput')
    CreatePrivateGraphEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreatePrivateGraphEndpointOutput', name: 'CreatePrivateGraphEndpointOutput')
    DeleteGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphInput', name: 'DeleteGraphInput')
    DeleteGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphOutput', name: 'DeleteGraphOutput')
    DeleteGraphSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphSnapshotInput', name: 'DeleteGraphSnapshotInput')
    DeleteGraphSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphSnapshotOutput', name: 'DeleteGraphSnapshotOutput')
    DeletePrivateGraphEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeletePrivateGraphEndpointInput', name: 'DeletePrivateGraphEndpointInput')
    DeletePrivateGraphEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeletePrivateGraphEndpointOutput', name: 'DeletePrivateGraphEndpointOutput')
    DocumentValuedMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#DocumentValuedMap', name: 'DocumentValuedMap')
    EdgeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeLabels', name: 'EdgeLabels')
    EdgeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeProperties', name: 'EdgeProperties')
    EdgeStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#EdgeStructure', name: 'EdgeStructure')
    EdgeStructures = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeStructures', name: 'EdgeStructures')
    ExecuteQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExecuteQueryInput', name: 'ExecuteQueryInput')
    ExecuteQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExecuteQueryOutput', name: 'ExecuteQueryOutput')
    ExplainMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExplainMode', name: 'ExplainMode')
    ExportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilter', name: 'ExportFilter')
    ExportFilterElement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterElement', name: 'ExportFilterElement')
    ExportFilterLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterLabel', name: 'ExportFilterLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ExportFilterOutputDataType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterOutputDataType', name: 'ExportFilterOutputDataType', traits: {"smithy.api#pattern" => "^(Any|Byte|Short|Int|Long|Float|Double|String|Bool|Boolean|Float\\[\\]|Double\\[\\])$"})
    ExportFilterOutputPropertyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterOutputPropertyName', name: 'ExportFilterOutputPropertyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    ExportFilterPerLabelMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPerLabelMap', name: 'ExportFilterPerLabelMap')
    ExportFilterPropertyAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPropertyAttributes', name: 'ExportFilterPropertyAttributes')
    ExportFilterPropertyMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPropertyMap', name: 'ExportFilterPropertyMap')
    ExportFilterSourcePropertyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterSourcePropertyName', name: 'ExportFilterSourcePropertyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ExportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExportFormat', name: 'ExportFormat')
    ExportTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskDetails', name: 'ExportTaskDetails')
    ExportTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskId', name: 'ExportTaskId', traits: {"smithy.api#pattern" => "^t-[a-z0-9]{10}$"})
    ExportTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskStatus', name: 'ExportTaskStatus')
    ExportTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskSummary', name: 'ExportTaskSummary')
    ExportTaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskSummaryList', name: 'ExportTaskSummaryList')
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#Format', name: 'Format')
    GetExportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetExportTaskInput', name: 'GetExportTaskInput')
    GetExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetExportTaskOutput', name: 'GetExportTaskOutput')
    GetGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphInput', name: 'GetGraphInput')
    GetGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphOutput', name: 'GetGraphOutput')
    GetGraphSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSnapshotInput', name: 'GetGraphSnapshotInput')
    GetGraphSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSnapshotOutput', name: 'GetGraphSnapshotOutput')
    GetGraphSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSummaryInput', name: 'GetGraphSummaryInput')
    GetGraphSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSummaryOutput', name: 'GetGraphSummaryOutput')
    GetImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetImportTaskInput', name: 'GetImportTaskInput')
    GetImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetImportTaskOutput', name: 'GetImportTaskOutput')
    GetPrivateGraphEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetPrivateGraphEndpointInput', name: 'GetPrivateGraphEndpointInput')
    GetPrivateGraphEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetPrivateGraphEndpointOutput', name: 'GetPrivateGraphEndpointOutput')
    GetQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetQueryInput', name: 'GetQueryInput')
    GetQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetQueryOutput', name: 'GetQueryOutput')
    GraphDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphDataSummary', name: 'GraphDataSummary')
    GraphId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphId', name: 'GraphId', traits: {"smithy.api#pattern" => "^g-[a-z0-9]{10}$"})
    GraphIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphIdentifier', name: 'GraphIdentifier', traits: {"smithy.api#pattern" => "^g-[a-z0-9]{10}$"})
    GraphName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphName', name: 'GraphName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!g-)[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    GraphSnapshotSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphSnapshotSummary', name: 'GraphSnapshotSummary')
    GraphSnapshotSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#GraphSnapshotSummaryList', name: 'GraphSnapshotSummaryList')
    GraphStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#GraphStatus', name: 'GraphStatus')
    GraphSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphSummary', name: 'GraphSummary')
    GraphSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#GraphSummaryList', name: 'GraphSummaryList')
    GraphSummaryMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#GraphSummaryMode', name: 'GraphSummaryMode')
    ImportOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.neptunegraph#ImportOptions', name: 'ImportOptions')
    ImportTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskDetails', name: 'ImportTaskDetails')
    ImportTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskStatus', name: 'ImportTaskStatus')
    ImportTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskSummary', name: 'ImportTaskSummary')
    ImportTaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskSummaryList', name: 'ImportTaskSummaryList')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    ListExportTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListExportTasksInput', name: 'ListExportTasksInput')
    ListExportTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListExportTasksOutput', name: 'ListExportTasksOutput')
    ListGraphSnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphSnapshotsInput', name: 'ListGraphSnapshotsInput')
    ListGraphSnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphSnapshotsOutput', name: 'ListGraphSnapshotsOutput')
    ListGraphsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphsInput', name: 'ListGraphsInput')
    ListGraphsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphsOutput', name: 'ListGraphsOutput')
    ListImportTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListImportTasksInput', name: 'ListImportTasksInput')
    ListImportTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListImportTasksOutput', name: 'ListImportTasksOutput')
    ListPrivateGraphEndpointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListPrivateGraphEndpointsInput', name: 'ListPrivateGraphEndpointsInput')
    ListPrivateGraphEndpointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListPrivateGraphEndpointsOutput', name: 'ListPrivateGraphEndpointsOutput')
    ListQueriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListQueriesInput', name: 'ListQueriesInput')
    ListQueriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListQueriesOutput', name: 'ListQueriesOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LongValuedMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#LongValuedMap', name: 'LongValuedMap')
    LongValuedMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#LongValuedMapList', name: 'LongValuedMapList')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiValueHandlingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#MultiValueHandlingType', name: 'MultiValueHandlingType')
    NeptuneImportOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#NeptuneImportOptions', name: 'NeptuneImportOptions')
    NodeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeLabels', name: 'NodeLabels')
    NodeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeProperties', name: 'NodeProperties')
    NodeStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#NodeStructure', name: 'NodeStructure')
    NodeStructures = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeStructures', name: 'NodeStructures')
    OutgoingEdgeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#OutgoingEdgeLabels', name: 'OutgoingEdgeLabels')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ParquetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ParquetType', name: 'ParquetType')
    PlanCacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#PlanCacheType', name: 'PlanCacheType')
    PrivateGraphEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointStatus', name: 'PrivateGraphEndpointStatus')
    PrivateGraphEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointSummary', name: 'PrivateGraphEndpointSummary')
    PrivateGraphEndpointSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointSummaryList', name: 'PrivateGraphEndpointSummaryList')
    ProvisionedMemory = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#ProvisionedMemory', name: 'ProvisionedMemory', traits: {"smithy.api#range" => {"min" => 16, "max" => 24576}})
    QueryLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryLanguage', name: 'QueryLanguage')
    QueryResponseBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.neptunegraph#QueryResponseBlob', name: 'QueryResponseBlob', traits: {"smithy.api#streaming" => {}})
    QueryState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryState', name: 'QueryState')
    QueryStateInput = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryStateInput', name: 'QueryStateInput')
    QuerySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#QuerySummary', name: 'QuerySummary')
    QuerySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#QuerySummaryList', name: 'QuerySummaryList')
    ReplicaCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#ReplicaCount', name: 'ReplicaCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    ResetGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResetGraphInput', name: 'ResetGraphInput')
    ResetGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResetGraphOutput', name: 'ResetGraphOutput')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreGraphFromSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#RestoreGraphFromSnapshotInput', name: 'RestoreGraphFromSnapshotInput')
    RestoreGraphFromSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#RestoreGraphFromSnapshotOutput', name: 'RestoreGraphFromSnapshotOutput')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:aws[^:]*:iam::\\d{12}:(role|role/service-role)(/[\\w+=,.@-]+)+$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-[a-z0-9]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnapshotId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#pattern" => "^gs-[a-z0-9]{10}$"})
    SnapshotIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotIdentifier', name: 'SnapshotIdentifier', traits: {"smithy.api#pattern" => "^gs-[a-z0-9]{10}$"})
    SnapshotName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotName', name: 'SnapshotName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!gs-)[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    SnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#SnapshotStatus', name: 'SnapshotStatus')
    StartExportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartExportTaskInput', name: 'StartExportTaskInput')
    StartExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartExportTaskOutput', name: 'StartExportTaskOutput')
    StartGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartGraphInput', name: 'StartGraphInput')
    StartGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartGraphOutput', name: 'StartGraphOutput')
    StartImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartImportTaskInput', name: 'StartImportTaskInput')
    StartImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartImportTaskOutput', name: 'StartImportTaskOutput')
    StopGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StopGraphInput', name: 'StopGraphInput')
    StopGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StopGraphOutput', name: 'StopGraphOutput')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-[a-z0-9]+$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#uniqueItems" => {}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TaskId', name: 'TaskId', traits: {"smithy.api#pattern" => "^t-[a-z0-9]{10}$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UnprocessableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UnprocessableException', name: 'UnprocessableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UnprocessableExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#UnprocessableExceptionReason', name: 'UnprocessableExceptionReason')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UpdateGraphInput', name: 'UpdateGraphInput')
    UpdateGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UpdateGraphOutput', name: 'UpdateGraphOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VectorSearchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#VectorSearchConfiguration', name: 'VectorSearchConfiguration')
    VectorSearchDimension = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#VectorSearchDimension', name: 'VectorSearchDimension', traits: {"smithy.api#range" => {"min" => 1, "max" => 65536}})
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-[a-z0-9]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BlankNodeHandling.add_member(:convert_to_iri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERT_TO_IRI', traits: {"smithy.api#enumValue" => "convertToIri"}))
    CancelExportTaskInput.add_member(:task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelExportTaskInput.type = Types::CancelExportTaskInput
    CancelExportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    CancelExportTaskOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    CancelExportTaskOutput.type = Types::CancelExportTaskOutput
    CancelImportTaskInput.add_member(:task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelImportTaskInput.type = Types::CancelImportTaskInput
    CancelImportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId'))
    CancelImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    CancelImportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    CancelImportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CancelImportTaskOutput.type = Types::CancelImportTaskOutput
    CancelQueryInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    CancelQueryInput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelQueryInput.type = Types::CancelQueryInput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'reason'))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:concurrent_modification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_MODIFICATION', traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    CreateGraphInput.add_member(:graph_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#required" => {}}))
    CreateGraphInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateGraphInput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    CreateGraphInput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    CreateGraphInput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    CreateGraphInput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    CreateGraphInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    CreateGraphInput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#required" => {}}))
    CreateGraphInput.type = Types::CreateGraphInput
    CreateGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    CreateGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    CreateGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    CreateGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    CreateGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    CreateGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    CreateGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    CreateGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    CreateGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    CreateGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    CreateGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    CreateGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    CreateGraphOutput.type = Types::CreateGraphOutput
    CreateGraphSnapshotInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#required" => {}}))
    CreateGraphSnapshotInput.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'snapshotName', traits: {"smithy.api#required" => {}}))
    CreateGraphSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateGraphSnapshotInput.type = Types::CreateGraphSnapshotInput
    CreateGraphSnapshotOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:source_graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId'))
    CreateGraphSnapshotOutput.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime'))
    CreateGraphSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status'))
    CreateGraphSnapshotOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    CreateGraphSnapshotOutput.type = Types::CreateGraphSnapshotOutput
    CreateGraphUsingImportTaskInput.add_member(:graph_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateGraphUsingImportTaskInput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    CreateGraphUsingImportTaskInput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    CreateGraphUsingImportTaskInput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    CreateGraphUsingImportTaskInput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    CreateGraphUsingImportTaskInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    CreateGraphUsingImportTaskInput.add_member(:import_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    CreateGraphUsingImportTaskInput.add_member(:max_provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'maxProvisionedMemory'))
    CreateGraphUsingImportTaskInput.add_member(:min_provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'minProvisionedMemory'))
    CreateGraphUsingImportTaskInput.add_member(:fail_on_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failOnError'))
    CreateGraphUsingImportTaskInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    CreateGraphUsingImportTaskInput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    CreateGraphUsingImportTaskInput.add_member(:blank_node_handling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: 'blankNodeHandling'))
    CreateGraphUsingImportTaskInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.type = Types::CreateGraphUsingImportTaskInput
    CreateGraphUsingImportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId'))
    CreateGraphUsingImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    CreateGraphUsingImportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    CreateGraphUsingImportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:import_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    CreateGraphUsingImportTaskOutput.type = Types::CreateGraphUsingImportTaskOutput
    CreatePrivateGraphEndpointInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrivateGraphEndpointInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId'))
    CreatePrivateGraphEndpointInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds'))
    CreatePrivateGraphEndpointInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'vpcSecurityGroupIds'))
    CreatePrivateGraphEndpointInput.type = Types::CreatePrivateGraphEndpointInput
    CreatePrivateGraphEndpointOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId'))
    CreatePrivateGraphEndpointOutput.type = Types::CreatePrivateGraphEndpointOutput
    DeleteGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphInput.add_member(:skip_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipSnapshot', traits: {"smithy.api#httpQuery" => "skipSnapshot", "smithy.api#required" => {}}))
    DeleteGraphInput.type = Types::DeleteGraphInput
    DeleteGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    DeleteGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    DeleteGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    DeleteGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    DeleteGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    DeleteGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    DeleteGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    DeleteGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    DeleteGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    DeleteGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    DeleteGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    DeleteGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    DeleteGraphOutput.type = Types::DeleteGraphOutput
    DeleteGraphSnapshotInput.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphSnapshotInput.type = Types::DeleteGraphSnapshotInput
    DeleteGraphSnapshotOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:source_graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId'))
    DeleteGraphSnapshotOutput.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime'))
    DeleteGraphSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status'))
    DeleteGraphSnapshotOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    DeleteGraphSnapshotOutput.type = Types::DeleteGraphSnapshotOutput
    DeletePrivateGraphEndpointInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointInput.type = Types::DeletePrivateGraphEndpointInput
    DeletePrivateGraphEndpointOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId'))
    DeletePrivateGraphEndpointOutput.type = Types::DeletePrivateGraphEndpointOutput
    DocumentValuedMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    DocumentValuedMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document)
    EdgeLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    EdgeProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    EdgeStructure.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'count'))
    EdgeStructure.add_member(:edge_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeProperties, location_name: 'edgeProperties'))
    EdgeStructure.type = Types::EdgeStructure
    EdgeStructures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStructure)
    ExecuteQueryInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#jsonName" => "query", "smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'language', traits: {"smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentValuedMap, location_name: 'parameters'))
    ExecuteQueryInput.add_member(:plan_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanCacheType, location_name: 'planCache'))
    ExecuteQueryInput.add_member(:explain_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExplainMode, location_name: 'explainMode', traits: {"smithy.api#jsonName" => "explain"}))
    ExecuteQueryInput.add_member(:query_timeout_milliseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'queryTimeoutMilliseconds'))
    ExecuteQueryInput.type = Types::ExecuteQueryInput
    ExecuteQueryOutput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResponseBlob, location_name: 'payload', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExecuteQueryOutput[:http_payload] = :payload
    ExecuteQueryOutput[:http_payload_member] = ExecuteQueryOutput.member(:payload)
    ExecuteQueryOutput.type = Types::ExecuteQueryOutput
    ExplainMode.add_member(:static, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    ExplainMode.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETAILS', traits: {"smithy.api#enumValue" => "DETAILS"}))
    ExportFilter.add_member(:vertex_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: 'vertexFilter'))
    ExportFilter.add_member(:edge_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: 'edgeFilter'))
    ExportFilter.type = Types::ExportFilter
    ExportFilterElement.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPropertyMap, location_name: 'properties'))
    ExportFilterElement.type = Types::ExportFilterElement
    ExportFilterPerLabelMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterLabel)
    ExportFilterPerLabelMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterElement)
    ExportFilterPropertyAttributes.add_member(:output_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterOutputDataType, location_name: 'outputType'))
    ExportFilterPropertyAttributes.add_member(:source_property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterSourcePropertyName, location_name: 'sourcePropertyName'))
    ExportFilterPropertyAttributes.add_member(:multi_value_handling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiValueHandlingType, location_name: 'multiValueHandling', traits: {"smithy.api#default" => "PICK_FIRST"}))
    ExportFilterPropertyAttributes.type = Types::ExportFilterPropertyAttributes
    ExportFilterPropertyMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterOutputPropertyName)
    ExportFilterPropertyMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPropertyAttributes)
    ExportFormat.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    ExportFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ExportTaskDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:time_elapsed_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'timeElapsedSeconds', traits: {"smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:progress_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'progressPercentage', traits: {"smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:num_vertices_written, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numVerticesWritten'))
    ExportTaskDetails.add_member(:num_edges_written, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgesWritten'))
    ExportTaskDetails.type = Types::ExportTaskDetails
    ExportTaskStatus.add_member(:initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ExportTaskStatus.add_member(:exporting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORTING', traits: {"smithy.api#enumValue" => "EXPORTING"}))
    ExportTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportTaskStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ExportTaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportTaskStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ExportTaskSummary.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    ExportTaskSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    ExportTaskSummary.type = Types::ExportTaskSummary
    ExportTaskSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskSummary)
    Format.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:open_cypher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_CYPHER', traits: {"smithy.api#enumValue" => "OPEN_CYPHER"}))
    Format.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    Format.add_member(:ntriples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NTRIPLES', traits: {"smithy.api#enumValue" => "NTRIPLES"}))
    GetExportTaskInput.add_member(:task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportTaskInput.type = Types::GetExportTaskInput
    GetExportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    GetExportTaskOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetExportTaskOutput.add_member(:export_task_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskDetails, location_name: 'exportTaskDetails'))
    GetExportTaskOutput.add_member(:export_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter'))
    GetExportTaskOutput.type = Types::GetExportTaskOutput
    GetGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphInput.type = Types::GetGraphInput
    GetGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    GetGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    GetGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    GetGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    GetGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    GetGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    GetGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    GetGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    GetGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    GetGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    GetGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    GetGraphOutput.type = Types::GetGraphOutput
    GetGraphSnapshotInput.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphSnapshotInput.type = Types::GetGraphSnapshotInput
    GetGraphSnapshotOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:source_graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId'))
    GetGraphSnapshotOutput.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime'))
    GetGraphSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status'))
    GetGraphSnapshotOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    GetGraphSnapshotOutput.type = Types::GetGraphSnapshotOutput
    GetGraphSummaryInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    GetGraphSummaryInput.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummaryMode, location_name: 'mode', traits: {"smithy.api#httpQuery" => "mode"}))
    GetGraphSummaryInput.type = Types::GetGraphSummaryInput
    GetGraphSummaryOutput.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version'))
    GetGraphSummaryOutput.add_member(:last_statistics_computation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastStatisticsComputationTime', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetGraphSummaryOutput.add_member(:graph_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphDataSummary, location_name: 'graphSummary'))
    GetGraphSummaryOutput.type = Types::GetGraphSummaryOutput
    GetImportTaskInput.add_member(:task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportTaskInput.type = Types::GetImportTaskInput
    GetImportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId'))
    GetImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    GetImportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    GetImportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:import_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    GetImportTaskOutput.add_member(:import_task_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskDetails, location_name: 'importTaskDetails'))
    GetImportTaskOutput.add_member(:attempt_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'attemptNumber'))
    GetImportTaskOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetImportTaskOutput.type = Types::GetImportTaskOutput
    GetPrivateGraphEndpointInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrivateGraphEndpointInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrivateGraphEndpointInput.type = Types::GetPrivateGraphEndpointInput
    GetPrivateGraphEndpointOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId'))
    GetPrivateGraphEndpointOutput.type = Types::GetPrivateGraphEndpointOutput
    GetQueryInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    GetQueryInput.add_member(:query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryInput.type = Types::GetQueryInput
    GetQueryOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    GetQueryOutput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString'))
    GetQueryOutput.add_member(:waited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'waited'))
    GetQueryOutput.add_member(:elapsed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'elapsed'))
    GetQueryOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryState, location_name: 'state'))
    GetQueryOutput.type = Types::GetQueryOutput
    GraphDataSummary.add_member(:num_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodes'))
    GraphDataSummary.add_member(:num_edges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdges'))
    GraphDataSummary.add_member(:num_node_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodeLabels'))
    GraphDataSummary.add_member(:num_edge_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgeLabels'))
    GraphDataSummary.add_member(:node_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeLabels, location_name: 'nodeLabels'))
    GraphDataSummary.add_member(:edge_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeLabels, location_name: 'edgeLabels'))
    GraphDataSummary.add_member(:num_node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodeProperties'))
    GraphDataSummary.add_member(:num_edge_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgeProperties'))
    GraphDataSummary.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: 'nodeProperties'))
    GraphDataSummary.add_member(:edge_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: 'edgeProperties'))
    GraphDataSummary.add_member(:total_node_property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalNodePropertyValues'))
    GraphDataSummary.add_member(:total_edge_property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalEdgePropertyValues'))
    GraphDataSummary.add_member(:node_structures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStructures, location_name: 'nodeStructures'))
    GraphDataSummary.add_member(:edge_structures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStructures, location_name: 'edgeStructures'))
    GraphDataSummary.type = Types::GraphDataSummary
    GraphSnapshotSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:source_graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId'))
    GraphSnapshotSummary.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime'))
    GraphSnapshotSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status'))
    GraphSnapshotSummary.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    GraphSnapshotSummary.type = Types::GraphSnapshotSummary
    GraphSnapshotSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSnapshotSummary)
    GraphStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    GraphStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    GraphStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    GraphStatus.add_member(:resetting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESETTING', traits: {"smithy.api#enumValue" => "RESETTING"}))
    GraphStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    GraphStatus.add_member(:snapshotting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOTTING', traits: {"smithy.api#enumValue" => "SNAPSHOTTING"}))
    GraphStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GraphStatus.add_member(:importing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    GraphStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    GraphStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    GraphStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    GraphSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GraphSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GraphSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GraphSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    GraphSummary.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    GraphSummary.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    GraphSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    GraphSummary.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    GraphSummary.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyIdentifier'))
    GraphSummary.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    GraphSummary.type = Types::GraphSummary
    GraphSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummary)
    GraphSummaryMode.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    GraphSummaryMode.add_member(:detailed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETAILED', traits: {"smithy.api#enumValue" => "DETAILED"}))
    ImportOptions.add_member(:neptune, Types::ImportOptions::Neptune, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneImportOptions, location_name: 'neptune'))
    ImportOptions.add_member(:unknown, Types::ImportOptions::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImportOptions.type = Types::ImportOptions
    ImportTaskDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:time_elapsed_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'timeElapsedSeconds', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:progress_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'progressPercentage', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:error_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'errorCount', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorDetails'))
    ImportTaskDetails.add_member(:statement_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'statementCount', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:dictionary_entry_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'dictionaryEntryCount', traits: {"smithy.api#required" => {}}))
    ImportTaskDetails.type = Types::ImportTaskDetails
    ImportTaskStatus.add_member(:initializing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ImportTaskStatus.add_member(:exporting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORTING', traits: {"smithy.api#enumValue" => "EXPORTING"}))
    ImportTaskStatus.add_member(:analyzing_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYZING_DATA', traits: {"smithy.api#enumValue" => "ANALYZING_DATA"}))
    ImportTaskStatus.add_member(:importing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ImportTaskStatus.add_member(:reprovisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPROVISIONING', traits: {"smithy.api#enumValue" => "REPROVISIONING"}))
    ImportTaskStatus.add_member(:rolling_back, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLING_BACK', traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    ImportTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ImportTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportTaskStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ImportTaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImportTaskStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ImportTaskSummary.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId'))
    ImportTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    ImportTaskSummary.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    ImportTaskSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ImportTaskSummary.type = Types::ImportTaskSummary
    ImportTaskSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummary)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListExportTasksInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpQuery" => "graphIdentifier"}))
    ListExportTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExportTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExportTasksInput.type = Types::ListExportTasksInput
    ListExportTasksOutput.add_member(:tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskSummaryList, location_name: 'tasks', traits: {"smithy.api#required" => {}}))
    ListExportTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListExportTasksOutput.type = Types::ListExportTasksOutput
    ListGraphSnapshotsInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpQuery" => "graphIdentifier"}))
    ListGraphSnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGraphSnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGraphSnapshotsInput.type = Types::ListGraphSnapshotsInput
    ListGraphSnapshotsOutput.add_member(:graph_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSnapshotSummaryList, location_name: 'graphSnapshots', traits: {"smithy.api#required" => {}}))
    ListGraphSnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListGraphSnapshotsOutput.type = Types::ListGraphSnapshotsOutput
    ListGraphsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGraphsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGraphsInput.type = Types::ListGraphsInput
    ListGraphsOutput.add_member(:graphs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummaryList, location_name: 'graphs', traits: {"smithy.api#required" => {}}))
    ListGraphsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListGraphsOutput.type = Types::ListGraphsOutput
    ListImportTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportTasksInput.type = Types::ListImportTasksInput
    ListImportTasksOutput.add_member(:tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummaryList, location_name: 'tasks', traits: {"smithy.api#required" => {}}))
    ListImportTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListImportTasksOutput.type = Types::ListImportTasksOutput
    ListPrivateGraphEndpointsInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrivateGraphEndpointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPrivateGraphEndpointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPrivateGraphEndpointsInput.type = Types::ListPrivateGraphEndpointsInput
    ListPrivateGraphEndpointsOutput.add_member(:private_graph_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummaryList, location_name: 'privateGraphEndpoints', traits: {"smithy.api#required" => {}}))
    ListPrivateGraphEndpointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListPrivateGraphEndpointsOutput.type = Types::ListPrivateGraphEndpointsOutput
    ListQueriesInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    ListQueriesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListQueriesInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStateInput, location_name: 'state', traits: {"smithy.api#httpQuery" => "state"}))
    ListQueriesInput.type = Types::ListQueriesInput
    ListQueriesOutput.add_member(:queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySummaryList, location_name: 'queries', traits: {"smithy.api#required" => {}}))
    ListQueriesOutput.type = Types::ListQueriesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LongValuedMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    LongValuedMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long)
    LongValuedMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMap)
    MultiValueHandlingType.add_member(:to_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO_LIST', traits: {"smithy.api#enumValue" => "TO_LIST"}))
    MultiValueHandlingType.add_member(:pick_first, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PICK_FIRST', traits: {"smithy.api#enumValue" => "PICK_FIRST"}))
    NeptuneImportOptions.add_member(:s3_export_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 's3ExportPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    NeptuneImportOptions.add_member(:s3_export_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 's3ExportKmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    NeptuneImportOptions.add_member(:preserve_default_vertex_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'preserveDefaultVertexLabels'))
    NeptuneImportOptions.add_member(:preserve_edge_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'preserveEdgeIds'))
    NeptuneImportOptions.type = Types::NeptuneImportOptions
    NodeLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    NodeProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    NodeStructure.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'count'))
    NodeStructure.add_member(:node_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeProperties, location_name: 'nodeProperties'))
    NodeStructure.add_member(:distinct_outgoing_edge_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutgoingEdgeLabels, location_name: 'distinctOutgoingEdgeLabels'))
    NodeStructure.type = Types::NodeStructure
    NodeStructures.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStructure)
    OutgoingEdgeLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ParquetType.add_member(:columnar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLUMNAR', traits: {"smithy.api#enumValue" => "COLUMNAR"}))
    PlanCacheType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PlanCacheType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PlanCacheType.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    PrivateGraphEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    PrivateGraphEndpointStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PrivateGraphEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PrivateGraphEndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PrivateGraphEndpointSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId'))
    PrivateGraphEndpointSummary.type = Types::PrivateGraphEndpointSummary
    PrivateGraphEndpointSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummary)
    QueryLanguage.add_member(:open_cypher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_CYPHER', traits: {"smithy.api#enumValue" => "OPEN_CYPHER"}))
    QueryState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryState.add_member(:waiting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    QueryState.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    QueryStateInput.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    QueryStateInput.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryStateInput.add_member(:waiting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    QueryStateInput.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    QuerySummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id'))
    QuerySummary.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString'))
    QuerySummary.add_member(:waited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'waited'))
    QuerySummary.add_member(:elapsed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'elapsed'))
    QuerySummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryState, location_name: 'state'))
    QuerySummary.type = Types::QuerySummary
    QuerySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySummary)
    ResetGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetGraphInput.add_member(:skip_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipSnapshot', traits: {"smithy.api#required" => {}}))
    ResetGraphInput.type = Types::ResetGraphInput
    ResetGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    ResetGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    ResetGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    ResetGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    ResetGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    ResetGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    ResetGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    ResetGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    ResetGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    ResetGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    ResetGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    ResetGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    ResetGraphOutput.type = Types::ResetGraphOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreGraphFromSnapshotInput.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotInput.add_member(:graph_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#required" => {}}))
    RestoreGraphFromSnapshotInput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    RestoreGraphFromSnapshotInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    RestoreGraphFromSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    RestoreGraphFromSnapshotInput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    RestoreGraphFromSnapshotInput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    RestoreGraphFromSnapshotInput.type = Types::RestoreGraphFromSnapshotInput
    RestoreGraphFromSnapshotOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    RestoreGraphFromSnapshotOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    RestoreGraphFromSnapshotOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    RestoreGraphFromSnapshotOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    RestoreGraphFromSnapshotOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    RestoreGraphFromSnapshotOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    RestoreGraphFromSnapshotOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    RestoreGraphFromSnapshotOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    RestoreGraphFromSnapshotOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    RestoreGraphFromSnapshotOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    RestoreGraphFromSnapshotOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    RestoreGraphFromSnapshotOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    RestoreGraphFromSnapshotOutput.type = Types::RestoreGraphFromSnapshotOutput
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnapshotStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SnapshotStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SnapshotStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    SnapshotStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StartExportTaskInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    StartExportTaskInput.add_member(:export_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter'))
    StartExportTaskInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    StartExportTaskInput.type = Types::StartExportTaskInput
    StartExportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    StartExportTaskOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    StartExportTaskOutput.add_member(:export_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter'))
    StartExportTaskOutput.type = Types::StartExportTaskOutput
    StartGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartGraphInput.type = Types::StartGraphInput
    StartGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    StartGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StartGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    StartGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    StartGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    StartGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    StartGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    StartGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    StartGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    StartGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    StartGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    StartGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    StartGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    StartGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    StartGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    StartGraphOutput.type = Types::StartGraphOutput
    StartImportTaskInput.add_member(:import_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    StartImportTaskInput.add_member(:fail_on_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failOnError'))
    StartImportTaskInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    StartImportTaskInput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    StartImportTaskInput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    StartImportTaskInput.add_member(:blank_node_handling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: 'blankNodeHandling'))
    StartImportTaskInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportTaskInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    StartImportTaskInput.type = Types::StartImportTaskInput
    StartImportTaskOutput.add_member(:graph_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId'))
    StartImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format'))
    StartImportTaskOutput.add_member(:parquet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType'))
    StartImportTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:import_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    StartImportTaskOutput.type = Types::StartImportTaskOutput
    StopGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopGraphInput.type = Types::StopGraphInput
    StopGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    StopGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    StopGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    StopGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    StopGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    StopGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    StopGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    StopGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    StopGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    StopGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    StopGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    StopGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    StopGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    StopGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    StopGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    StopGraphOutput.type = Types::StopGraphOutput
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UnprocessableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnprocessableException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    UnprocessableException.type = Types::UnprocessableException
    UnprocessableExceptionReason.add_member(:query_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_TIMEOUT', traits: {"smithy.api#enumValue" => "QUERY_TIMEOUT"}))
    UnprocessableExceptionReason.add_member(:internal_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "INTERNAL_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:memory_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MEMORY_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:storage_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "STORAGE_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:partition_full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTITION_FULL', traits: {"smithy.api#enumValue" => "PARTITION_FULL"}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateGraphInput.add_member(:graph_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGraphInput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    UpdateGraphInput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    UpdateGraphInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    UpdateGraphInput.type = Types::UpdateGraphInput
    UpdateGraphOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status'))
    UpdateGraphOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    UpdateGraphOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime'))
    UpdateGraphOutput.add_member(:provisioned_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory'))
    UpdateGraphOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint'))
    UpdateGraphOutput.add_member(:public_connectivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity'))
    UpdateGraphOutput.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    UpdateGraphOutput.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount'))
    UpdateGraphOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier'))
    UpdateGraphOutput.add_member(:source_snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId'))
    UpdateGraphOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection'))
    UpdateGraphOutput.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber'))
    UpdateGraphOutput.type = Types::UpdateGraphOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:constraint_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSTRAINT_VIOLATION', traits: {"smithy.api#enumValue" => "CONSTRAINT_VIOLATION"}))
    ValidationExceptionReason.add_member(:illegal_argument, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ILLEGAL_ARGUMENT', traits: {"smithy.api#enumValue" => "ILLEGAL_ARGUMENT"}))
    ValidationExceptionReason.add_member(:malformed_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_QUERY', traits: {"smithy.api#enumValue" => "MALFORMED_QUERY"}))
    ValidationExceptionReason.add_member(:query_cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_CANCELLED', traits: {"smithy.api#enumValue" => "QUERY_CANCELLED"}))
    ValidationExceptionReason.add_member(:query_too_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_TOO_LARGE', traits: {"smithy.api#enumValue" => "QUERY_TOO_LARGE"}))
    ValidationExceptionReason.add_member(:unsupported_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OPERATION', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OPERATION"}))
    ValidationExceptionReason.add_member(:bad_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD_REQUEST', traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    VectorSearchConfiguration.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchDimension, location_name: 'dimension', traits: {"smithy.api#required" => {}}))
    VectorSearchConfiguration.type = Types::VectorSearchConfiguration

    AmazonNeptuneGraph = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.neptunegraph#AmazonNeptuneGraph"
      service.name = "AmazonNeptuneGraph"
      service.version = "2023-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "Neptune Graph", "arnNamespace" => "neptune-graph", "cloudTrailEventSource" => "neptune-graph.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "neptune-graph"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400, "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Neptune Graph"}
      service.add_operation(:cancel_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/exporttasks/{taskIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:cancel_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelImportTask"
        operation.name = "CancelImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/importtasks/{taskIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:cancel_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/queries/{queryId}", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:create_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraph"
        operation.name = "CreateGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_graph_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraphSnapshot"
        operation.name = "CreateGraphSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/snapshots"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_graph_using_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraphUsingImportTask"
        operation.name = "CreateGraphUsingImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/importtasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_private_graph_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreatePrivateGraphEndpoint"
        operation.name = "CreatePrivateGraphEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/endpoints/"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeleteGraph"
        operation.name = "DeleteGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_graph_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeleteGraphSnapshot"
        operation.name = "DeleteGraphSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/snapshots/{snapshotIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_private_graph_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeletePrivateGraphEndpoint"
        operation.name = "DeletePrivateGraphEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/graphs/{graphIdentifier}/endpoints/{vpcId}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:execute_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "POST", "uri" => "/queries", "code" => 200}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:get_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetExportTask"
        operation.name = "GetExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/exporttasks/{taskIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraph"
        operation.name = "GetGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraphSnapshot"
        operation.name = "GetGraphSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/snapshots/{snapshotIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraphSummary"
        operation.name = "GetGraphSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSummaryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSummaryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/summary", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:get_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetImportTask"
        operation.name = "GetImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/importtasks/{taskIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_private_graph_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetPrivateGraphEndpoint"
        operation.name = "GetPrivateGraphEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}/endpoints/{vpcId}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetQuery"
        operation.name = "GetQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/queries/{queryId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:list_export_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListExportTasks"
        operation.name = "ListExportTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportTasksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportTasksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/exporttasks"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListExportTasks.new
      end)
      service.add_operation(:list_graph_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListGraphSnapshots"
        operation.name = "ListGraphSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphSnapshotsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphSnapshotsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/snapshots"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListGraphSnapshots.new
      end)
      service.add_operation(:list_graphs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListGraphs"
        operation.name = "ListGraphs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListGraphs.new
      end)
      service.add_operation(:list_import_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListImportTasks"
        operation.name = "ListImportTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportTasksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportTasksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/importtasks"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListImportTasks.new
      end)
      service.add_operation(:list_private_graph_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListPrivateGraphEndpoints"
        operation.name = "ListPrivateGraphEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}/endpoints/"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListPrivateGraphEndpoints.new
      end)
      service.add_operation(:list_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListQueries"
        operation.name = "ListQueries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/queries", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:reset_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ResetGraph"
        operation.name = "ResetGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:restore_graph_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#RestoreGraphFromSnapshot"
        operation.name = "RestoreGraphFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/snapshots/{snapshotIdentifier}/restore"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:start_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/exporttasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:start_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StartGraph"
        operation.name = "StartGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/start"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:start_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StartImportTask"
        operation.name = "StartImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/importtasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:stop_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StopGraph"
        operation.name = "StopGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/stop"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:update_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#UpdateGraph"
        operation.name = "UpdateGraph"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
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
