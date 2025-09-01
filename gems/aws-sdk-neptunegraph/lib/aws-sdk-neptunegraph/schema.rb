# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$"})
    BlankNodeHandling = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#BlankNodeHandling', name: 'BlankNodeHandling')
    CancelExportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelExportTaskInput', name: 'CancelExportTaskInput')
    CancelExportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelExportTaskOutput', name: 'CancelExportTaskOutput')
    CancelImportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelImportTaskInput', name: 'CancelImportTaskInput')
    CancelImportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelImportTaskOutput', name: 'CancelImportTaskOutput')
    CancelQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CancelQueryInput', name: 'CancelQueryInput')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ConflictExceptionReason', name: 'ConflictExceptionReason')
    CreateGraphInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphInput', name: 'CreateGraphInput')
    CreateGraphOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphOutput', name: 'CreateGraphOutput')
    CreateGraphSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphSnapshotInput', name: 'CreateGraphSnapshotInput')
    CreateGraphSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphSnapshotOutput', name: 'CreateGraphSnapshotOutput')
    CreateGraphUsingImportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphUsingImportTaskInput', name: 'CreateGraphUsingImportTaskInput')
    CreateGraphUsingImportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreateGraphUsingImportTaskOutput', name: 'CreateGraphUsingImportTaskOutput')
    CreatePrivateGraphEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreatePrivateGraphEndpointInput', name: 'CreatePrivateGraphEndpointInput')
    CreatePrivateGraphEndpointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#CreatePrivateGraphEndpointOutput', name: 'CreatePrivateGraphEndpointOutput')
    DeleteGraphInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphInput', name: 'DeleteGraphInput')
    DeleteGraphOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphOutput', name: 'DeleteGraphOutput')
    DeleteGraphSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphSnapshotInput', name: 'DeleteGraphSnapshotInput')
    DeleteGraphSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeleteGraphSnapshotOutput', name: 'DeleteGraphSnapshotOutput')
    DeletePrivateGraphEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeletePrivateGraphEndpointInput', name: 'DeletePrivateGraphEndpointInput')
    DeletePrivateGraphEndpointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#DeletePrivateGraphEndpointOutput', name: 'DeletePrivateGraphEndpointOutput')
    DocumentValuedMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#DocumentValuedMap', name: 'DocumentValuedMap')
    EdgeLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeLabels', name: 'EdgeLabels')
    EdgeProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeProperties', name: 'EdgeProperties')
    EdgeStructure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#EdgeStructure', name: 'EdgeStructure')
    EdgeStructures = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#EdgeStructures', name: 'EdgeStructures')
    ExecuteQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExecuteQueryInput', name: 'ExecuteQueryInput')
    ExecuteQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExecuteQueryOutput', name: 'ExecuteQueryOutput')
    ExplainMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExplainMode', name: 'ExplainMode')
    ExportFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilter', name: 'ExportFilter')
    ExportFilterElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterElement', name: 'ExportFilterElement')
    ExportFilterLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterLabel', name: 'ExportFilterLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ExportFilterOutputDataType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterOutputDataType', name: 'ExportFilterOutputDataType', traits: {"smithy.api#pattern" => "^(Any|Byte|Short|Int|Long|Float|Double|String|Bool|Boolean|Float\\[\\]|Double\\[\\])$"})
    ExportFilterOutputPropertyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterOutputPropertyName', name: 'ExportFilterOutputPropertyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    ExportFilterPerLabelMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPerLabelMap', name: 'ExportFilterPerLabelMap')
    ExportFilterPropertyAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPropertyAttributes', name: 'ExportFilterPropertyAttributes')
    ExportFilterPropertyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterPropertyMap', name: 'ExportFilterPropertyMap')
    ExportFilterSourcePropertyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportFilterSourcePropertyName', name: 'ExportFilterSourcePropertyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ExportFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExportFormat', name: 'ExportFormat')
    ExportTaskDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskDetails', name: 'ExportTaskDetails')
    ExportTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskId', name: 'ExportTaskId', traits: {"smithy.api#pattern" => "^t-[a-z0-9]{10}$"})
    ExportTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskStatus', name: 'ExportTaskStatus')
    ExportTaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskSummary', name: 'ExportTaskSummary')
    ExportTaskSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#ExportTaskSummaryList', name: 'ExportTaskSummaryList')
    Format = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#Format', name: 'Format')
    GetExportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetExportTaskInput', name: 'GetExportTaskInput')
    GetExportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetExportTaskOutput', name: 'GetExportTaskOutput')
    GetGraphInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphInput', name: 'GetGraphInput')
    GetGraphOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphOutput', name: 'GetGraphOutput')
    GetGraphSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSnapshotInput', name: 'GetGraphSnapshotInput')
    GetGraphSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSnapshotOutput', name: 'GetGraphSnapshotOutput')
    GetGraphSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSummaryInput', name: 'GetGraphSummaryInput')
    GetGraphSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetGraphSummaryOutput', name: 'GetGraphSummaryOutput')
    GetImportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetImportTaskInput', name: 'GetImportTaskInput')
    GetImportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetImportTaskOutput', name: 'GetImportTaskOutput')
    GetPrivateGraphEndpointInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetPrivateGraphEndpointInput', name: 'GetPrivateGraphEndpointInput')
    GetPrivateGraphEndpointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetPrivateGraphEndpointOutput', name: 'GetPrivateGraphEndpointOutput')
    GetQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetQueryInput', name: 'GetQueryInput')
    GetQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GetQueryOutput', name: 'GetQueryOutput')
    GraphDataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphDataSummary', name: 'GraphDataSummary')
    GraphId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphId', name: 'GraphId', traits: {"smithy.api#pattern" => "^g-[a-z0-9]{10}$"})
    GraphIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphIdentifier', name: 'GraphIdentifier', traits: {"smithy.api#pattern" => "^g-[a-z0-9]{10}$"})
    GraphName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#GraphName', name: 'GraphName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!g-)[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    GraphSnapshotSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphSnapshotSummary', name: 'GraphSnapshotSummary')
    GraphSnapshotSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#GraphSnapshotSummaryList', name: 'GraphSnapshotSummaryList')
    GraphStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#GraphStatus', name: 'GraphStatus')
    GraphSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#GraphSummary', name: 'GraphSummary')
    GraphSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#GraphSummaryList', name: 'GraphSummaryList')
    GraphSummaryMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#GraphSummaryMode', name: 'GraphSummaryMode')
    ImportOptions = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.neptunegraph#ImportOptions', name: 'ImportOptions')
    ImportTaskDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskDetails', name: 'ImportTaskDetails')
    ImportTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskStatus', name: 'ImportTaskStatus')
    ImportTaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskSummary', name: 'ImportTaskSummary')
    ImportTaskSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#ImportTaskSummaryList', name: 'ImportTaskSummaryList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    ListExportTasksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListExportTasksInput', name: 'ListExportTasksInput')
    ListExportTasksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListExportTasksOutput', name: 'ListExportTasksOutput')
    ListGraphSnapshotsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphSnapshotsInput', name: 'ListGraphSnapshotsInput')
    ListGraphSnapshotsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphSnapshotsOutput', name: 'ListGraphSnapshotsOutput')
    ListGraphsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphsInput', name: 'ListGraphsInput')
    ListGraphsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListGraphsOutput', name: 'ListGraphsOutput')
    ListImportTasksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListImportTasksInput', name: 'ListImportTasksInput')
    ListImportTasksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListImportTasksOutput', name: 'ListImportTasksOutput')
    ListPrivateGraphEndpointsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListPrivateGraphEndpointsInput', name: 'ListPrivateGraphEndpointsInput')
    ListPrivateGraphEndpointsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListPrivateGraphEndpointsOutput', name: 'ListPrivateGraphEndpointsOutput')
    ListQueriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListQueriesInput', name: 'ListQueriesInput')
    ListQueriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListQueriesOutput', name: 'ListQueriesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LongValuedMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#LongValuedMap', name: 'LongValuedMap')
    LongValuedMapList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#LongValuedMapList', name: 'LongValuedMapList')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiValueHandlingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#MultiValueHandlingType', name: 'MultiValueHandlingType')
    NeptuneImportOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#NeptuneImportOptions', name: 'NeptuneImportOptions')
    NodeLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeLabels', name: 'NodeLabels')
    NodeProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeProperties', name: 'NodeProperties')
    NodeStructure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#NodeStructure', name: 'NodeStructure')
    NodeStructures = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#NodeStructures', name: 'NodeStructures')
    OutgoingEdgeLabels = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#OutgoingEdgeLabels', name: 'OutgoingEdgeLabels')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    ParquetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ParquetType', name: 'ParquetType')
    PlanCacheType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#PlanCacheType', name: 'PlanCacheType')
    PrivateGraphEndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointStatus', name: 'PrivateGraphEndpointStatus')
    PrivateGraphEndpointSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointSummary', name: 'PrivateGraphEndpointSummary')
    PrivateGraphEndpointSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#PrivateGraphEndpointSummaryList', name: 'PrivateGraphEndpointSummaryList')
    ProvisionedMemory = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#ProvisionedMemory', name: 'ProvisionedMemory', traits: {"smithy.api#range" => {"min" => 16, "max" => 24576}})
    QueryLanguage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryLanguage', name: 'QueryLanguage')
    QueryResponseBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.neptunegraph#QueryResponseBlob', name: 'QueryResponseBlob', traits: {"smithy.api#streaming" => {}})
    QueryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryState', name: 'QueryState')
    QueryStateInput = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#QueryStateInput', name: 'QueryStateInput')
    QuerySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#QuerySummary', name: 'QuerySummary')
    QuerySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#QuerySummaryList', name: 'QuerySummaryList')
    ReplicaCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#ReplicaCount', name: 'ReplicaCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    ResetGraphInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResetGraphInput', name: 'ResetGraphInput')
    ResetGraphOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResetGraphOutput', name: 'ResetGraphOutput')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreGraphFromSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#RestoreGraphFromSnapshotInput', name: 'RestoreGraphFromSnapshotInput')
    RestoreGraphFromSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#RestoreGraphFromSnapshotOutput', name: 'RestoreGraphFromSnapshotOutput')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:aws[^:]*:iam::\\d{12}:(role|role/service-role)(/[\\w+=,.@-]+)+$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-[a-z0-9]+$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnapshotId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotId', name: 'SnapshotId', traits: {"smithy.api#pattern" => "^gs-[a-z0-9]{10}$"})
    SnapshotIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotIdentifier', name: 'SnapshotIdentifier', traits: {"smithy.api#pattern" => "^gs-[a-z0-9]{10}$"})
    SnapshotName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SnapshotName', name: 'SnapshotName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!gs-)[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    SnapshotStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#SnapshotStatus', name: 'SnapshotStatus')
    StartExportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartExportTaskInput', name: 'StartExportTaskInput')
    StartExportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartExportTaskOutput', name: 'StartExportTaskOutput')
    StartImportTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartImportTaskInput', name: 'StartImportTaskInput')
    StartImportTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#StartImportTaskOutput', name: 'StartImportTaskOutput')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-[a-z0-9]+$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}, "smithy.api#uniqueItems" => {}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptunegraph#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.neptunegraph#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#TaskId', name: 'TaskId', traits: {"smithy.api#pattern" => "^t-[a-z0-9]{10}$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UnprocessableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UnprocessableException', name: 'UnprocessableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UnprocessableExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#UnprocessableExceptionReason', name: 'UnprocessableExceptionReason')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateGraphInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UpdateGraphInput', name: 'UpdateGraphInput')
    UpdateGraphOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#UpdateGraphOutput', name: 'UpdateGraphOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptunegraph#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VectorSearchConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptunegraph#VectorSearchConfiguration', name: 'VectorSearchConfiguration')
    VectorSearchDimension = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptunegraph#VectorSearchDimension', name: 'VectorSearchDimension', traits: {"smithy.api#range" => {"min" => 1, "max" => 65536}})
    VpcEndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#VpcEndpointId', name: 'VpcEndpointId', traits: {"smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptunegraph#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-[a-z0-9]+$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BlankNodeHandling.add_member(:convert_to_iri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERT_TO_IRI', traits: {"smithy.api#enumValue" => "convertToIri"}))
    CancelExportTaskInput.add_member(:task_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelExportTaskInput.type = Types::CancelExportTaskInput
    CancelExportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The source graph identifier of the cancelled export task.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow the exporting of data to the destination.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the export task. The status is <code>CANCELLING</code> when the \n      export task is cancelled.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the cancelled export task.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI of the cancelled export task where data will be exported to.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier of the cancelled export task.</p>", "smithy.api#required" => {}}))
    CancelExportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the cancelled export task.</p>"}))
    CancelExportTaskOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the export task has this status value.</p>"}))
    CancelExportTaskOutput.type = Types::CancelExportTaskOutput
    CancelImportTaskInput.add_member(:task_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelImportTaskInput.type = Types::CancelImportTaskInput
    CancelImportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>"}))
    CancelImportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path,\n      or can point to a Neptune database endpoint or snapshot.</p>", "smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies\n      the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html\">Gremlin\n      CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html\">openCypher\n      load format</a>.</p>"}))
    CancelImportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the cancelled import task.</p>"}))
    CancelImportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    CancelImportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Current status of the task. Status is CANCELLING when the import task is cancelled.</p>", "smithy.api#required" => {}}))
    CancelImportTaskOutput.type = Types::CancelImportTaskOutput
    CancelQueryInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    CancelQueryInput.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the query to cancel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelQueryInput.type = Types::CancelQueryInput
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the conflict exception.</p>"}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:concurrent_modification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_MODIFICATION', traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    CreateGraphInput.add_member(:graph_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#documentation" => "<p>A name for the new Neptune Analytics graph to be created.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    CreateGraphInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Adds metadata tags to the new graph.\n        These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>"}))
    CreateGraphInput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.\n       (<code>true</code> to enable, or <code>false</code> to disable.</p>"}))
    CreateGraphInput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies a KMS key to use to encrypt data in the new graph.</p>"}))
    CreateGraphInput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph.\n      The value is specified as <code>dimension=</code>value. Max = 65,535</p>"}))
    CreateGraphInput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas in other AZs. Min =0, Max = 2, Default = 1.</p>\n         <important>\n            <p>\n        Additional charges equivalent to the m-NCUs selected for the graph apply for each replica.\n      </p>\n         </important>"}))
    CreateGraphInput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled.\n      (<code>true</code> or <code>false</code>).</p>"}))
    CreateGraphInput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Min = 16</p>", "smithy.api#required" => {}}))
    CreateGraphInput.type = Types::CreateGraphInput
    CreateGraphOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the graph.</p>", "smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The graph name. For example: <code>my-graph-1</code>.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the graph.</p>", "smithy.api#required" => {}}))
    CreateGraphOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the graph.</p>"}))
    CreateGraphOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason the status was given.</p>"}))
    CreateGraphOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the graph was created.</p>"}))
    CreateGraphOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p>\n         <p>Min = 16</p>"}))
    CreateGraphOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    CreateGraphOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.</p>\n         <note>\n            <p>If enabling public connectivity for the first time, there will be a delay while it is enabled.</p>\n         </note>"}))
    CreateGraphOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration', traits: {"smithy.api#documentation" => "<p>The vector-search configuration for the graph, which specifies the vector dimension\n      to use in the vector index, if any.</p>"}))
    CreateGraphOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas in other AZs.</p>\n         <p>Default: If not specified, the default value is 1.</p>"}))
    CreateGraphOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key used to encrypt data in the new graph.</p>"}))
    CreateGraphOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the source graph.</p>"}))
    CreateGraphOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the graph has deletion protection enabled.\n      The graph can't be deleted when deletion protection is enabled.</p>"}))
    CreateGraphOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number of the graph software.</p>"}))
    CreateGraphOutput.type = Types::CreateGraphOutput
    CreateGraphSnapshotInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#required" => {}}))
    CreateGraphSnapshotInput.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The snapshot name. For example: <code>my-snapshot-1</code>.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    CreateGraphSnapshotInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Adds metadata tags to the new graph.\n        These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>"}))
    CreateGraphSnapshotInput.type = Types::CreateGraphSnapshotInput
    CreateGraphSnapshotOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot created.</p>", "smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the snapshot created.</p>", "smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the snapshot created.</p>", "smithy.api#required" => {}}))
    CreateGraphSnapshotOutput.add_member(:source_graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId', traits: {"smithy.api#documentation" => "<p>The Id of the Neptune Analytics graph from which the snapshot is created.</p>"}))
    CreateGraphSnapshotOutput.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The snapshot creation time</p>"}))
    CreateGraphSnapshotOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the snapshot.</p>"}))
    CreateGraphSnapshotOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    CreateGraphSnapshotOutput.type = Types::CreateGraphSnapshotOutput
    CreateGraphUsingImportTaskInput.add_member(:graph_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#documentation" => "<p>A name for the new Neptune Analytics graph to be created.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Adds metadata tags to the new graph. These tags can also be used with cost allocation\n     reporting, or used in a Condition statement in an IAM policy.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.\n       (<code>true</code> to enable, or <code>false</code> to disable).</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies a KMS key to use to encrypt data imported into the new graph.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph.\n    The value is specified as <code>dimension=</code>value. Max = 65,535 </p>"}))
    CreateGraphUsingImportTaskInput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas in other AZs to provision on the new graph after import. Default = 0, Min = 0, Max = 2.</p>\n         <important>\n            <p>\n        Additional charges equivalent to the m-NCUs selected for the graph apply for each replica.\n      </p>\n         </important>"}))
    CreateGraphUsingImportTaskInput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled.\n      (<code>true</code> or <code>false</code>).</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:import_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions', traits: {"smithy.api#documentation" => "<p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key\n      is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to\n    <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is\n      encountered.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:max_provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'maxProvisionedMemory', traits: {"smithy.api#documentation" => "<p>The maximum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 1024,\n       or the approved upper limit for your account.</p>\n         <p> If both the minimum and maximum values are specified, the final\n    <code>provisioned-memory</code> will be chosen per the actual size of your imported data. If neither value is specified, \n     128 m-NCUs are used.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:min_provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'minProvisionedMemory', traits: {"smithy.api#documentation" => "<p>The minimum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 16</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:fail_on_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failOnError', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, the task halts when an import error is encountered. If set to <code>false</code>,\n      the task skips the data that caused the error and continues if possible.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path,\n      or can point to a Neptune database endpoint or snapshot.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies\n      the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html\">Gremlin\n        CSV format</a>, <code>OPEN_CYPHER</code>, which identifies the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html\">openCypher\n          load format</a>, or <code>ntriples</code>, which identifies the\n      <a href=\"https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html\">RDF n-triples</a> format.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:blank_node_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: 'blankNodeHandling', traits: {"smithy.api#documentation" => "<p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, \n      meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. \n      For more information, see <a href=\"https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling\">Handling RDF values</a>.</p>"}))
    CreateGraphUsingImportTaskInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskInput.type = Types::CreateGraphUsingImportTaskInput
    CreateGraphUsingImportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>"}))
    CreateGraphUsingImportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path,\n      or can point to a Neptune database endpoint or snapshot.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies\n      the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html\">Gremlin\n      CSV format</a>, <code>OPENCYPHER</code>, which identifies the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html\">openCypher\n      load format</a>, or <code>ntriples</code>, which identifies the\n     <a href=\"https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html\">RDF n-triples</a> format.</p>"}))
    CreateGraphUsingImportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    CreateGraphUsingImportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import task.</p>", "smithy.api#required" => {}}))
    CreateGraphUsingImportTaskOutput.add_member(:import_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions', traits: {"smithy.api#documentation" => "<p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key\n      is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to\n    <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is\n      encountered.</p>"}))
    CreateGraphUsingImportTaskOutput.type = Types::CreateGraphUsingImportTaskOutput
    CreatePrivateGraphEndpointInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrivateGraphEndpointInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p> The VPC in which the private graph endpoint needs to be created.</p>"}))
    CreatePrivateGraphEndpointInput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>Subnets in which private graph endpoint ENIs are created.</p>"}))
    CreatePrivateGraphEndpointInput.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>Security groups to be attached to the private graph endpoint..</p>"}))
    CreatePrivateGraphEndpointInput.type = Types::CreatePrivateGraphEndpointInput
    CreatePrivateGraphEndpointOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>VPC in which the private graph endpoint is created.</p>", "smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>Subnets in which the private graph endpoint ENIs are created. </p>", "smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the private graph endpoint.</p>", "smithy.api#required" => {}}))
    CreatePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>Endpoint ID of the prviate grpah endpoint.</p>"}))
    CreatePrivateGraphEndpointOutput.type = Types::CreatePrivateGraphEndpointOutput
    DeleteGraphInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphInput.add_member(:skip_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipSnapshot', traits: {"smithy.api#documentation" => "<p>Determines whether a final graph snapshot is created before the graph is deleted.\n      If <code>true</code> is specified, no graph snapshot is created. If <code>false</code>\n      is specified, a graph snapshot is created before the graph is deleted.</p>", "smithy.api#httpQuery" => "skipSnapshot", "smithy.api#required" => {}}))
    DeleteGraphInput.type = Types::DeleteGraphInput
    DeleteGraphOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    DeleteGraphOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    DeleteGraphOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the status of the graph.</p>"}))
    DeleteGraphOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the graph was created.</p>"}))
    DeleteGraphOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    DeleteGraphOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    DeleteGraphOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    DeleteGraphOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    DeleteGraphOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    DeleteGraphOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    DeleteGraphOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which the graph was created, if the graph was recovered from a snapshot.</p>"}))
    DeleteGraphOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection was enabled for the graph.</p>"}))
    DeleteGraphOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number associated with the graph.</p>"}))
    DeleteGraphOutput.type = Types::DeleteGraphOutput
    DeleteGraphSnapshotInput.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#documentation" => "<p>ID of the graph snapshot to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGraphSnapshotInput.type = Types::DeleteGraphSnapshotInput
    DeleteGraphSnapshotOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph snapshot.</p>", "smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The snapshot name. For example: <code>my-snapshot-1</code>.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the graph snapshot.</p>", "smithy.api#required" => {}}))
    DeleteGraphSnapshotOutput.add_member(:source_graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId', traits: {"smithy.api#documentation" => "<p>The graph identifier for the graph from which the snapshot was created.</p>"}))
    DeleteGraphSnapshotOutput.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The time when the snapshot was created.</p>"}))
    DeleteGraphSnapshotOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph snapshot.</p>"}))
    DeleteGraphSnapshotOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>"}))
    DeleteGraphSnapshotOutput.type = Types::DeleteGraphSnapshotOutput
    DeletePrivateGraphEndpointInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC where the private endpoint is located.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointInput.type = Types::DeletePrivateGraphEndpointInput
    DeletePrivateGraphEndpointOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC where the private endpoint was deleted.</p>", "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs involved.</p>", "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the delete operation.</p>", "smithy.api#required" => {}}))
    DeletePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint that was deleted.</p>"}))
    DeletePrivateGraphEndpointOutput.type = Types::DeletePrivateGraphEndpointOutput
    DocumentValuedMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    DocumentValuedMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document)
    EdgeLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    EdgeProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    EdgeStructure.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of instances of the edge in the graph.</p>"}))
    EdgeStructure.add_member(:edge_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeProperties, location_name: 'edgeProperties', traits: {"smithy.api#documentation" => "<p>A list of the properties associated with the edge.</p>"}))
    EdgeStructure.type = Types::EdgeStructure
    EdgeStructures.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStructure)
    ExecuteQueryInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query string to be executed.</p>", "smithy.api#jsonName" => "query", "smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryLanguage, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The query language the query is written in. Currently only openCypher is supported.</p>", "smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentValuedMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The data parameters the query can use in JSON format. For example: {\"name\": \"john\", \"age\": 20}. (optional) </p>"}))
    ExecuteQueryInput.add_member(:plan_cache, Smithy::Schema::Shapes::ShapeRef.new(shape: PlanCacheType, location_name: 'planCache', traits: {"smithy.api#documentation" => "<p>Query plan cache is a feature that saves the query plan and reuses it on successive executions of the same query. \n      This reduces query latency, and works for both <code>READ</code> and <code>UPDATE</code> queries. The plan cache is an \n      LRU cache with a 5 minute TTL and a capacity of 1000.</p>"}))
    ExecuteQueryInput.add_member(:explain_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExplainMode, location_name: 'explainMode', traits: {"smithy.api#documentation" => "<p>The explain mode parameter returns a query explain instead of the actual query results. A query explain can \n      be used to gather insights about the query execution such as planning decisions, time spent on each operator, solutions \n      flowing etc.</p>", "smithy.api#jsonName" => "explain"}))
    ExecuteQueryInput.add_member(:query_timeout_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'queryTimeoutMilliseconds', traits: {"smithy.api#documentation" => "<p>Specifies the query timeout duration, in milliseconds. (optional)</p>"}))
    ExecuteQueryInput.type = Types::ExecuteQueryInput
    ExecuteQueryOutput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResponseBlob, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The query results.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExecuteQueryOutput[:http_payload] = :payload
    ExecuteQueryOutput[:http_payload_member] = ExecuteQueryOutput.member(:payload)
    ExecuteQueryOutput.type = Types::ExecuteQueryOutput
    ExplainMode.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATIC', traits: {"smithy.api#enumValue" => "STATIC"}))
    ExplainMode.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETAILS', traits: {"smithy.api#enumValue" => "DETAILS"}))
    ExportFilter.add_member(:vertex_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: 'vertexFilter', traits: {"smithy.api#documentation" => "<p>Used to specify filters on a per-label basis for vertices. This allows you to control which vertex labels \n      and properties are included in the export.</p>"}))
    ExportFilter.add_member(:edge_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: 'edgeFilter', traits: {"smithy.api#documentation" => "<p>Used to specify filters on a per-label basis for edges. This allows you to control which edge labels \n      and properties are included in the export.</p>"}))
    ExportFilter.type = Types::ExportFilter
    ExportFilterElement.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPropertyMap, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>Each property is defined by a key-value pair, where the key is the desired output property name (e.g. \"name\"), \n      and the value is an object.</p>"}))
    ExportFilterElement.type = Types::ExportFilterElement
    ExportFilterPerLabelMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterLabel)
    ExportFilterPerLabelMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterElement)
    ExportFilterPropertyAttributes.add_member(:output_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterOutputDataType, location_name: 'outputType', traits: {"smithy.api#documentation" => "<p>Specifies the data type to use for the property in the exported data (e.g. \"String\", \"Int\", \"Float\"). \n       If a type is not provided, the export process will determine the type. If a given property is present as multiple \n       types (e.g. one vertex has \"height\" stored as a double, and another edge has it stored as a string), the type \n       will be of Any type, otherwise, it will be the type of the property as present in vertices.</p>"}))
    ExportFilterPropertyAttributes.add_member(:source_property_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterSourcePropertyName, location_name: 'sourcePropertyName', traits: {"smithy.api#documentation" => "<p>The name of the property as it exists in the original graph data. If not provided, it is assumed that the key \n       matches the desired sourcePropertyName.</p>"}))
    ExportFilterPropertyAttributes.add_member(:multi_value_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiValueHandlingType, location_name: 'multiValueHandling', traits: {"smithy.api#default" => "PICK_FIRST", "smithy.api#documentation" => "<p>Specifies how to handle properties that have multiple values. Can be either <code>TO_LIST</code> to export all \n      values as a list, or <code>PICK_FIRST</code> to export the first value encountered. If not specified, the default \n      value is <code>PICK_FIRST</code>.</p>"}))
    ExportFilterPropertyAttributes.type = Types::ExportFilterPropertyAttributes
    ExportFilterPropertyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterOutputPropertyName)
    ExportFilterPropertyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilterPropertyAttributes)
    ExportFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    ExportFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ExportTaskDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:time_elapsed_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'timeElapsedSeconds', traits: {"smithy.api#documentation" => "<p>The time elapsed, in seconds, since the start time of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'progressPercentage', traits: {"smithy.api#documentation" => "<p>The number of progress percentage of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskDetails.add_member(:num_vertices_written, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numVerticesWritten', traits: {"smithy.api#documentation" => "<p>The number of exported vertices.</p>"}))
    ExportTaskDetails.add_member(:num_edges_written, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgesWritten', traits: {"smithy.api#documentation" => "<p>The number of exported edges.</p>"}))
    ExportTaskDetails.type = Types::ExportTaskDetails
    ExportTaskStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ExportTaskStatus.add_member(:exporting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORTING', traits: {"smithy.api#enumValue" => "EXPORTING"}))
    ExportTaskStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportTaskStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ExportTaskStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ExportTaskStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ExportTaskSummary.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The source graph identifier of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow the data to be exported to the destination.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI of the export task where data will be exported to.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier of the export task.</p>", "smithy.api#required" => {}}))
    ExportTaskSummary.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the export task.</p>"}))
    ExportTaskSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the export task has this status value.</p>"}))
    ExportTaskSummary.type = Types::ExportTaskSummary
    ExportTaskSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskSummary)
    Format.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:open_cypher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_CYPHER', traits: {"smithy.api#enumValue" => "OPEN_CYPHER"}))
    Format.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    Format.add_member(:ntriples, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NTRIPLES', traits: {"smithy.api#enumValue" => "NTRIPLES"}))
    GetExportTaskInput.add_member(:task_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportTaskInput.type = Types::GetExportTaskInput
    GetExportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The source graph identifier of the export task.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow data to be exported to the destination.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the export task.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the export task.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI of the export task where data will be exported.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier of the export task.</p>", "smithy.api#required" => {}}))
    GetExportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the export task.</p>"}))
    GetExportTaskOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the export task has this status value.</p>"}))
    GetExportTaskOutput.add_member(:export_task_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskDetails, location_name: 'exportTaskDetails', traits: {"smithy.api#documentation" => "<p>The details of the export task.</p>"}))
    GetExportTaskOutput.add_member(:export_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter', traits: {"smithy.api#documentation" => "<p>The export filter of the export task.</p>"}))
    GetExportTaskOutput.type = Types::GetExportTaskOutput
    GetGraphInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphInput.type = Types::GetGraphInput
    GetGraphOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    GetGraphOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    GetGraphOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    GetGraphOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    GetGraphOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the graph has this status.</p>"}))
    GetGraphOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the graph was created.</p>"}))
    GetGraphOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    GetGraphOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    GetGraphOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    GetGraphOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    GetGraphOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    GetGraphOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    GetGraphOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which the graph was created, if it was created from a snapshot.</p>"}))
    GetGraphOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection is enabled for the graph.</p>"}))
    GetGraphOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number of the graph.</p>"}))
    GetGraphOutput.type = Types::GetGraphOutput
    GetGraphSnapshotInput.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGraphSnapshotInput.type = Types::GetGraphSnapshotInput
    GetGraphSnapshotOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph snapshot.</p>", "smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The snapshot name. For example: <code>my-snapshot-1</code>.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the graph snapshot.</p>", "smithy.api#required" => {}}))
    GetGraphSnapshotOutput.add_member(:source_graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId', traits: {"smithy.api#documentation" => "<p>The graph identifier for the graph for which a snapshot is to be created.</p>"}))
    GetGraphSnapshotOutput.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The time when the snapshot was created.</p>"}))
    GetGraphSnapshotOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph snapshot.</p>"}))
    GetGraphSnapshotOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>"}))
    GetGraphSnapshotOutput.type = Types::GetGraphSnapshotOutput
    GetGraphSummaryInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    GetGraphSummaryInput.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummaryMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The summary mode can take one of two values: <code>basic</code> (the default), and\n   <code>detailed</code>.</p>", "smithy.api#httpQuery" => "mode"}))
    GetGraphSummaryInput.type = Types::GetGraphSummaryInput
    GetGraphSummaryOutput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>Display the version of this tool.</p>"}))
    GetGraphSummaryOutput.add_member(:last_statistics_computation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastStatisticsComputationTime', traits: {"smithy.api#documentation" => "<p>The timestamp, in ISO 8601 format, of the time at which Neptune Analytics last computed statistics.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetGraphSummaryOutput.add_member(:graph_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphDataSummary, location_name: 'graphSummary', traits: {"smithy.api#documentation" => "<p>The graph summary.</p>"}))
    GetGraphSummaryOutput.type = Types::GetGraphSummaryOutput
    GetImportTaskInput.add_member(:task_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportTaskInput.type = Types::GetImportTaskInput
    GetImportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>"}))
    GetImportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path,\n      or can point to a Neptune database endpoint or snapshot</p>", "smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies\n      the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html\">Gremlin\n      CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html\">openCypher\n      load format</a>.</p>"}))
    GetImportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    GetImportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import task:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>INITIALIZING</b>   –  \n        The necessary resources needed to create the graph are being prepared.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ANALYZING_DATA</b>   –  \n        The data is being analyzed to determine the optimal infrastructure configuration\n        for the new graph.</p>\n            </li>\n            <li>\n               <p>\n                  <b>RE_PROVISIONING</b>   –  \n        The data did not fit into the provisioned graph, so it is being re-provisioned\n        with more capacity.</p>\n            </li>\n            <li>\n               <p>\n                  <b>IMPORTING</b>   –  \n        The data is being loaded.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ERROR_ENCOUNTERED</b>   –  \n        An error has been encountered while trying to create the graph and import the data.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ERROR_ENCOUNTERED_ROLLING_BACK</b>   –  \n        Because of the error that was encountered, the graph is being rolled back and all\n        its resources released.</p>\n            </li>\n            <li>\n               <p>\n                  <b>SUCCEEDED</b>   –  \n        Graph creation and data loading succeeded.</p>\n            </li>\n            <li>\n               <p>\n                  <b>FAILED</b>   –  \n        Graph creation or data loading failed. When the status is <code>FAILED</code>,\n        you can use <code>get-graphs</code> to get more information about the state of\n        the graph.</p>\n            </li>\n            <li>\n               <p>\n                  <b>CANCELLING</b>   –  \n        Because you cancelled the import task, cancellation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <b>CANCELLED</b>   –  \n        You have successfully cancelled the import task.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetImportTaskOutput.add_member(:import_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions', traits: {"smithy.api#documentation" => "<p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key\n      is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to\n    <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is\n      encountered.</p>"}))
    GetImportTaskOutput.add_member(:import_task_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskDetails, location_name: 'importTaskDetails', traits: {"smithy.api#documentation" => "<p>Contains details about the specified import task.</p>"}))
    GetImportTaskOutput.add_member(:attempt_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'attemptNumber', traits: {"smithy.api#documentation" => "<p>The number of the current attempts to execute the import task.</p>"}))
    GetImportTaskOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the import task has this status value.</p>"}))
    GetImportTaskOutput.type = Types::GetImportTaskOutput
    GetPrivateGraphEndpointInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrivateGraphEndpointInput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC where the private endpoint is located.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrivateGraphEndpointInput.type = Types::GetPrivateGraphEndpointInput
    GetPrivateGraphEndpointOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC where the private endpoint is located.</p>", "smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs involved.</p>", "smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the private endpoint.</p>", "smithy.api#required" => {}}))
    GetPrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the private endpoint.</p>"}))
    GetPrivateGraphEndpointOutput.type = Types::GetPrivateGraphEndpointOutput
    GetQueryInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    GetQueryInput.add_member(:query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryId', traits: {"smithy.api#documentation" => "<p>The ID of the query in question.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryInput.type = Types::GetQueryInput
    GetQueryOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the query in question.</p>"}))
    GetQueryOutput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The query in question.</p>"}))
    GetQueryOutput.add_member(:waited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'waited', traits: {"smithy.api#documentation" => "<p>Indicates how long the query waited, in milliseconds.</p>"}))
    GetQueryOutput.add_member(:elapsed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'elapsed', traits: {"smithy.api#documentation" => "<p>The number of milliseconds the query has been running.</p>"}))
    GetQueryOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the query.</p>"}))
    GetQueryOutput.type = Types::GetQueryOutput
    GraphDataSummary.add_member(:num_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes in the graph.</p>"}))
    GraphDataSummary.add_member(:num_edges, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdges', traits: {"smithy.api#documentation" => "<p>The number of edges in the graph.</p>"}))
    GraphDataSummary.add_member(:num_node_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodeLabels', traits: {"smithy.api#documentation" => "<p>The number of distinct node labels in the graph.</p>"}))
    GraphDataSummary.add_member(:num_edge_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgeLabels', traits: {"smithy.api#documentation" => "<p>The number of unique edge labels in the graph.</p>"}))
    GraphDataSummary.add_member(:node_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeLabels, location_name: 'nodeLabels', traits: {"smithy.api#documentation" => "<p>A list of distinct node labels in the graph.</p>"}))
    GraphDataSummary.add_member(:edge_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeLabels, location_name: 'edgeLabels', traits: {"smithy.api#documentation" => "<p>A list of the edge labels in the graph.</p>"}))
    GraphDataSummary.add_member(:num_node_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numNodeProperties', traits: {"smithy.api#documentation" => "<p>The number of distinct node properties in the graph.</p>"}))
    GraphDataSummary.add_member(:num_edge_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'numEdgeProperties', traits: {"smithy.api#documentation" => "<p>The number of edge properties in the graph.</p>"}))
    GraphDataSummary.add_member(:node_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: 'nodeProperties', traits: {"smithy.api#documentation" => "<p>A list of the distinct node properties in the graph, along with the count of nodes where each property is used.</p>"}))
    GraphDataSummary.add_member(:edge_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: 'edgeProperties', traits: {"smithy.api#documentation" => "<p>A list of the distinct edge properties in the graph, along with the count of edges\n      where each property is used.</p>"}))
    GraphDataSummary.add_member(:total_node_property_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalNodePropertyValues', traits: {"smithy.api#documentation" => "<p>The total number of usages of all node properties.</p>"}))
    GraphDataSummary.add_member(:total_edge_property_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalEdgePropertyValues', traits: {"smithy.api#documentation" => "<p>The total number of usages of all edge properties.</p>"}))
    GraphDataSummary.add_member(:node_structures, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStructures, location_name: 'nodeStructures', traits: {"smithy.api#documentation" => "<p>This field is only present when the requested mode is DETAILED. It contains a list of node structures.</p>"}))
    GraphDataSummary.add_member(:edge_structures, Smithy::Schema::Shapes::ShapeRef.new(shape: EdgeStructures, location_name: 'edgeStructures', traits: {"smithy.api#documentation" => "<p>This field is only present when the requested mode is DETAILED. It contains a list of edge structures.</p>"}))
    GraphDataSummary.type = Types::GraphDataSummary
    GraphSnapshotSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph snapshot.</p>", "smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The snapshot name. For example: <code>my-snapshot-1</code>.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the graph snapshot.</p>", "smithy.api#required" => {}}))
    GraphSnapshotSummary.add_member(:source_graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'sourceGraphId', traits: {"smithy.api#documentation" => "<p>The graph identifier for the graph for which a snapshot is to be created.</p>"}))
    GraphSnapshotSummary.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'snapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The time when the snapshot was created.</p>"}))
    GraphSnapshotSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph snapshot.</p>"}))
    GraphSnapshotSummary.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>"}))
    GraphSnapshotSummary.type = Types::GraphSnapshotSummary
    GraphSnapshotSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSnapshotSummary)
    GraphStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    GraphStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    GraphStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    GraphStatus.add_member(:resetting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESETTING', traits: {"smithy.api#enumValue" => "RESETTING"}))
    GraphStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    GraphStatus.add_member(:snapshotting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOTTING', traits: {"smithy.api#enumValue" => "SNAPSHOTTING"}))
    GraphStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GraphStatus.add_member(:importing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    GraphSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    GraphSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    GraphSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    GraphSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    GraphSummary.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    GraphSummary.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    GraphSummary.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    GraphSummary.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    GraphSummary.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    GraphSummary.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection is enabled for the graph.</p>"}))
    GraphSummary.type = Types::GraphSummary
    GraphSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummary)
    GraphSummaryMode.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    GraphSummaryMode.add_member(:detailed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETAILED', traits: {"smithy.api#enumValue" => "DETAILED"}))
    ImportOptions.add_member(:neptune, Types::ImportOptions::Neptune, Smithy::Schema::Shapes::ShapeRef.new(shape: NeptuneImportOptions, location_name: 'neptune', traits: {"smithy.api#documentation" => "<p>Options for importing data from a Neptune database.</p>"}))
    ImportOptions.add_member(:unknown, Types::ImportOptions::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ImportOptions.type = Types::ImportOptions
    ImportTaskDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the import task.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Time at which the import task started.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:time_elapsed_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'timeElapsedSeconds', traits: {"smithy.api#documentation" => "<p>Seconds elapsed since the import task started.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'progressPercentage', traits: {"smithy.api#documentation" => "<p>The percentage progress so far.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:error_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'errorCount', traits: {"smithy.api#documentation" => "<p>The number of errors encountered so far.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorDetails', traits: {"smithy.api#documentation" => "<p>Details about the errors that have been encountered.</p>"}))
    ImportTaskDetails.add_member(:statement_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'statementCount', traits: {"smithy.api#documentation" => "<p>The number of statements in the import task.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.add_member(:dictionary_entry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'dictionaryEntryCount', traits: {"smithy.api#documentation" => "<p>The number of dictionary entries in the import task.</p>", "smithy.api#required" => {}}))
    ImportTaskDetails.type = Types::ImportTaskDetails
    ImportTaskStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ImportTaskStatus.add_member(:exporting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPORTING', traits: {"smithy.api#enumValue" => "EXPORTING"}))
    ImportTaskStatus.add_member(:analyzing_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANALYZING_DATA', traits: {"smithy.api#enumValue" => "ANALYZING_DATA"}))
    ImportTaskStatus.add_member(:importing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ImportTaskStatus.add_member(:reprovisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPROVISIONING', traits: {"smithy.api#enumValue" => "REPROVISIONING"}))
    ImportTaskStatus.add_member(:rolling_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLING_BACK', traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    ImportTaskStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ImportTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportTaskStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ImportTaskStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImportTaskStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ImportTaskSummary.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>"}))
    ImportTaskSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path,\n      or can point to a Neptune database endpoint or snapshot</p>", "smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies\n      the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html\">Gremlin\n      CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html\">openCypher\n      load format</a>.</p>"}))
    ImportTaskSummary.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    ImportTaskSummary.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    ImportTaskSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the import task.</p>", "smithy.api#required" => {}}))
    ImportTaskSummary.type = Types::ImportTaskSummary
    ImportTaskSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummary)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListExportTasksInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpQuery" => "graphIdentifier"}))
    ListExportTasksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate input.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExportTasksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of export tasks to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExportTasksInput.type = Types::ListExportTasksInput
    ListExportTasksOutput.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskSummaryList, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>The requested list of export tasks.</p>", "smithy.api#required" => {}}))
    ListExportTasksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>"}))
    ListExportTasksOutput.type = Types::ListExportTasksOutput
    ListGraphSnapshotsInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpQuery" => "graphIdentifier"}))
    ListGraphSnapshotsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGraphSnapshotsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of records to return in the command's output.</p>\n         <p>If the total number of records available is more than the value specified,\n      <code>nextToken</code> is provided in the command's output. To resume pagination,\n      provide the <code>nextToken</code> output value in the <code>nextToken</code> argument\n      of a subsequent command. Do not use the <code>nextToken</code> response element directly\n      outside of the Amazon CLI.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGraphSnapshotsInput.type = Types::ListGraphSnapshotsInput
    ListGraphSnapshotsOutput.add_member(:graph_snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSnapshotSummaryList, location_name: 'graphSnapshots', traits: {"smithy.api#documentation" => "<p>The requested list of snapshots.</p>", "smithy.api#required" => {}}))
    ListGraphSnapshotsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>"}))
    ListGraphSnapshotsOutput.type = Types::ListGraphSnapshotsOutput
    ListGraphsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGraphsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of records to return in the command's output.</p>\n         <p>If the total number of records available is more than the value specified,\n      <code>nextToken</code> is provided in the command's output. To resume pagination,\n      provide the <code>nextToken</code> output value in the <code>nextToken</code> argument\n      of a subsequent command. Do not use the <code>nextToken</code> response element directly\n      outside of the Amazon CLI.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGraphsInput.type = Types::ListGraphsInput
    ListGraphsOutput.add_member(:graphs, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphSummaryList, location_name: 'graphs', traits: {"smithy.api#documentation" => "<p>A list of the graphs.</p>", "smithy.api#required" => {}}))
    ListGraphsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>"}))
    ListGraphsOutput.type = Types::ListGraphsOutput
    ListImportTasksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListImportTasksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of records to return in the command's output.</p>\n         <p>If the total number of records available is more than the value specified,\n      <code>nextToken</code> is provided in the command's output. To resume pagination,\n      provide the <code>nextToken</code> output value in the <code>nextToken</code> argument\n      of a subsequent command. Do not use the <code>nextToken</code> response element directly\n      outside of the Amazon CLI.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListImportTasksInput.type = Types::ListImportTasksInput
    ListImportTasksOutput.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummaryList, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>The requested list of import tasks.</p>", "smithy.api#required" => {}}))
    ListImportTasksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>"}))
    ListImportTasksOutput.type = Types::ListImportTasksOutput
    ListPrivateGraphEndpointsInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrivateGraphEndpointsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPrivateGraphEndpointsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of records to return in the command's output.</p>\n         <p>If the total number of records available is more than the value specified,\n      <code>nextToken</code> is provided in the command's output. To resume pagination,\n      provide the <code>nextToken</code> output value in the <code>nextToken</code> argument\n      of a subsequent command. Do not use the <code>nextToken</code> response element directly\n      outside of the Amazon CLI.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPrivateGraphEndpointsInput.type = Types::ListPrivateGraphEndpointsInput
    ListPrivateGraphEndpointsOutput.add_member(:private_graph_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummaryList, location_name: 'privateGraphEndpoints', traits: {"smithy.api#documentation" => "<p>A list of private endpoints for the specified Neptune Analytics graph.</p>", "smithy.api#required" => {}}))
    ListPrivateGraphEndpointsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token used to paginate output.</p>\n         <p>When this value is provided as input, the service returns results from where\n      the previous response left off. When this value is present in output, it indicates\n      that there are more results to retrieve.</p>"}))
    ListPrivateGraphEndpointsOutput.type = Types::ListPrivateGraphEndpointsOutput
    ListQueriesInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "graphIdentifier", "smithy.api#required" => {}}))
    ListQueriesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be fetched by the API.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#required" => {}}))
    ListQueriesInput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStateInput, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Filtered list of queries based on state.</p>", "smithy.api#httpQuery" => "state"}))
    ListQueriesInput.type = Types::ListQueriesInput
    ListQueriesOutput.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySummaryList, location_name: 'queries', traits: {"smithy.api#documentation" => "<p>A list of current openCypher queries.</p>", "smithy.api#required" => {}}))
    ListQueriesOutput.type = Types::ListQueriesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of metadata tags associated with the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LongValuedMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    LongValuedMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long)
    LongValuedMapList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LongValuedMap)
    MultiValueHandlingType.add_member(:to_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO_LIST', traits: {"smithy.api#enumValue" => "TO_LIST"}))
    MultiValueHandlingType.add_member(:pick_first, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PICK_FIRST', traits: {"smithy.api#enumValue" => "PICK_FIRST"}))
    NeptuneImportOptions.add_member(:s3_export_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 's3ExportPath', traits: {"smithy.api#documentation" => "<p>The path to an S3 bucket from which to import data.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    NeptuneImportOptions.add_member(:s3_export_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 's3ExportKmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key to use to encrypt data in the S3 bucket where the graph data is exported</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    NeptuneImportOptions.add_member(:preserve_default_vertex_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'preserveDefaultVertexLabels', traits: {"smithy.api#documentation" => "<p>Neptune Analytics supports label-less vertices and no labels are assigned unless one is explicitly\n           provided. Neptune assigns default labels when none is explicitly provided. When importing the data into\n           Neptune Analytics, the default vertex labels can be omitted by setting\n           <i>preserveDefaultVertexLabels</i> to false. Note that if the vertex only has default labels,\n           and has no other properties or edges, then the vertex will effectively not get\n           imported into Neptune Analytics when preserveDefaultVertexLabels is set to false.</p>"}))
    NeptuneImportOptions.add_member(:preserve_edge_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'preserveEdgeIds', traits: {"smithy.api#documentation" => "<p>Neptune Analytics currently does not support user defined edge ids. The edge ids are not imported by\n          default. They are imported if <i>preserveEdgeIds</i> is set to true, and ids are stored as\n          properties on the relationships with the property name <i>neptuneEdgeId</i>.</p>"}))
    NeptuneImportOptions.type = Types::NeptuneImportOptions
    NodeLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    NodeProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    NodeStructure.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of instances of this node.</p>"}))
    NodeStructure.add_member(:node_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeProperties, location_name: 'nodeProperties', traits: {"smithy.api#documentation" => "<p>Properties associated with this node.</p>"}))
    NodeStructure.add_member(:distinct_outgoing_edge_labels, Smithy::Schema::Shapes::ShapeRef.new(shape: OutgoingEdgeLabels, location_name: 'distinctOutgoingEdgeLabels', traits: {"smithy.api#documentation" => "<p>The outgoing edge labels associated with this node.</p>"}))
    NodeStructure.type = Types::NodeStructure
    NodeStructures.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeStructure)
    OutgoingEdgeLabels.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ParquetType.add_member(:columnar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLUMNAR', traits: {"smithy.api#enumValue" => "COLUMNAR"}))
    PlanCacheType.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PlanCacheType.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PlanCacheType.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "AUTO"}))
    PrivateGraphEndpointStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    PrivateGraphEndpointStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PrivateGraphEndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PrivateGraphEndpointStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PrivateGraphEndpointSummary.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC in which the private graph endpoint is located.</p>", "smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The subnet IDs associated with the private graph endpoint.</p>", "smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the private graph endpoint.</p>", "smithy.api#required" => {}}))
    PrivateGraphEndpointSummary.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: 'vpcEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC endpoint.</p>"}))
    PrivateGraphEndpointSummary.type = Types::PrivateGraphEndpointSummary
    PrivateGraphEndpointSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummary)
    QueryLanguage.add_member(:open_cypher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_CYPHER', traits: {"smithy.api#enumValue" => "OPEN_CYPHER"}))
    QueryState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryState.add_member(:waiting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    QueryState.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    QueryStateInput.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    QueryStateInput.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryStateInput.add_member(:waiting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    QueryStateInput.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    QuerySummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>A string representation of the id of the query.</p>"}))
    QuerySummary.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queryString', traits: {"smithy.api#documentation" => "<p>The actual query text. The <code>queryString</code> may be truncated if the actual query string is too long.</p>"}))
    QuerySummary.add_member(:waited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'waited', traits: {"smithy.api#documentation" => "<p>The amount of time, in milliseconds, the query has waited in the queue before being picked up by a worker thread.</p>"}))
    QuerySummary.add_member(:elapsed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'elapsed', traits: {"smithy.api#documentation" => "<p>The running time of the query, in milliseconds.</p>"}))
    QuerySummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>State of the query.</p>"}))
    QuerySummary.type = Types::QuerySummary
    QuerySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QuerySummary)
    ResetGraphInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>ID of the graph to reset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetGraphInput.add_member(:skip_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'skipSnapshot', traits: {"smithy.api#documentation" => "<p>Determines whether a final graph snapshot is created before the graph data is deleted.\n      If set to <code>true</code>, no graph snapshot is created. If set to <code>false</code>,\n      a graph snapshot is created before the data is deleted.</p>", "smithy.api#required" => {}}))
    ResetGraphInput.type = Types::ResetGraphInput
    ResetGraphOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    ResetGraphOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    ResetGraphOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the graph has this status.</p>"}))
    ResetGraphOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the graph was created.</p>"}))
    ResetGraphOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    ResetGraphOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    ResetGraphOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    ResetGraphOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    ResetGraphOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    ResetGraphOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    ResetGraphOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which the graph was created, if any.</p>"}))
    ResetGraphOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection is enabled for the graph.</p>"}))
    ResetGraphOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number of the graph.</p>"}))
    ResetGraphOutput.type = Types::ResetGraphOutput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreGraphFromSnapshotInput.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifier, location_name: 'snapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot in question.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotInput.add_member(:graph_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'graphName', traits: {"smithy.api#documentation" => "<p>A name for the new Neptune Analytics graph to be created from the snapshot.</p>\n         <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its\n      first character must be a letter. It cannot end with a hyphen or contain two\n      consecutive hyphens. Only lowercase letters are allowed.</p>", "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotInput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p>\n         <p>Min = 16</p>"}))
    RestoreGraphFromSnapshotInput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the graph has deletion protection enabled.\n      The graph can't be deleted when deletion protection is enabled.</p>"}))
    RestoreGraphFromSnapshotInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Adds metadata tags to the snapshot.\n        These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>"}))
    RestoreGraphFromSnapshotInput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas in other AZs. Min =0, Max = 2, Default =1</p>\n         <important>\n            <p>\n        Additional charges equivalent to the m-NCUs selected for the graph apply for each replica.\n      </p>\n         </important>"}))
    RestoreGraphFromSnapshotInput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.\n      (<code>true</code> to enable, or <code>false</code> to disable).</p>"}))
    RestoreGraphFromSnapshotInput.type = Types::RestoreGraphFromSnapshotInput
    RestoreGraphFromSnapshotOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    RestoreGraphFromSnapshotOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the graph has this status.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the graph was created.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    RestoreGraphFromSnapshotOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which the graph was created, if any.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection is enabled for the graph.</p>"}))
    RestoreGraphFromSnapshotOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number of the graph.</p>"}))
    RestoreGraphFromSnapshotOutput.type = Types::RestoreGraphFromSnapshotOutput
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource that exceeded quota.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that exceeded quota. Ex: Graph, Snapshot</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The service code that exceeded quota.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Service quota code of the resource for which quota was exceeded.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnapshotStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SnapshotStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    SnapshotStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    SnapshotStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StartExportTaskInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The source graph identifier of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow data to be exported to the destination.</p>", "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI where data will be exported to.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskInput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the export task.</p>"}))
    StartExportTaskInput.add_member(:export_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter', traits: {"smithy.api#documentation" => "<p>The export filter of the export task.</p>"}))
    StartExportTaskInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags to be applied to the export task.</p>"}))
    StartExportTaskInput.type = Types::StartExportTaskInput
    StartExportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The source graph identifier of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow data to be exported to the destination.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URI of the export task where data will be exported to.</p>", "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier of the export task.</p>", "smithy.api#required" => {}}))
    StartExportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the export task.</p>"}))
    StartExportTaskOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the export task has this status value.</p>"}))
    StartExportTaskOutput.add_member(:export_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter, location_name: 'exportFilter', traits: {"smithy.api#documentation" => "<p>The export filter of the export task.</p>"}))
    StartExportTaskOutput.type = Types::StartExportTaskOutput
    StartImportTaskInput.add_member(:import_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    StartImportTaskInput.add_member(:fail_on_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failOnError', traits: {"smithy.api#documentation" => "<p>If set to true, the task halts when an import error is encountered. If set to false, the task skips the data that \n      caused the error and continues if possible.</p>"}))
    StartImportTaskInput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying the location of the data to be imported. This can be an Amazon S3 path, or can point to a \n      Neptune database endpoint or snapshot.</p>", "smithy.api#required" => {}}))
    StartImportTaskInput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of Amazon S3 data to be imported. Valid values are CSV, which identifies the Gremlin CSV format or \n      OPENCYPHER, which identies the openCypher load format.</p>"}))
    StartImportTaskInput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    StartImportTaskInput.add_member(:blank_node_handling, Smithy::Schema::Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: 'blankNodeHandling', traits: {"smithy.api#documentation" => "<p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, \n      meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. \n      For more information, see <a href=\"https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling\">Handling RDF values</a>.</p>"}))
    StartImportTaskInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartImportTaskInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    StartImportTaskInput.type = Types::StartImportTaskInput
    StartImportTaskOutput.add_member(:graph_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'graphId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>"}))
    StartImportTaskOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the import task.</p>", "smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source', traits: {"smithy.api#documentation" => "<p>A URL identifying the location of the data to be imported. This can be an Amazon S3 path, or can point to a \n      Neptune database endpoint or snapshot.</p>", "smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: 'format', traits: {"smithy.api#documentation" => "<p>Specifies the format of Amazon S3 data to be imported. Valid values are CSV, which identifies the Gremlin CSV format or \n      OPENCYPHER, which identies the openCypher load format.</p>"}))
    StartImportTaskOutput.add_member(:parquet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParquetType, location_name: 'parquetType', traits: {"smithy.api#documentation" => "<p>The parquet type of the import task.</p>"}))
    StartImportTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>", "smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import task.</p>", "smithy.api#required" => {}}))
    StartImportTaskOutput.add_member(:import_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportOptions, location_name: 'importOptions'))
    StartImportTaskOutput.type = Types::StartImportTaskOutput
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource for which tags need to be added.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the Neptune Analytics resource.</p>\n         <p>The tags are metadata that are specified as a list of key-value pairs:</p>\n         <p>\n            <b>Key</b> (string)   –  \n       A key is the required name of the tag. The string value can be\n       from 1 to 128 Unicode characters in length. It can't be\n       prefixed with <code>aws:</code> and can only contain the\n       set of Unicode characters specified by this Java regular expression:\n     <code>\"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$\")</code>.</p>\n         <p>\n            <b>Value</b> (string)   –  \n       A value is the optional value of the tag. The string value can\n       be from 1 to 256 Unicode characters in length. It can't be\n       prefixed with <code>aws:</code> and can only contain the\n       set of Unicode characters specified by this Java regular expression:\n     <code>\"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$\")</code>.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UnprocessableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnprocessableException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the unprocessable exception.</p>", "smithy.api#required" => {}}))
    UnprocessableException.type = Types::UnprocessableException
    UnprocessableExceptionReason.add_member(:query_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_TIMEOUT', traits: {"smithy.api#enumValue" => "QUERY_TIMEOUT"}))
    UnprocessableExceptionReason.add_member(:internal_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "INTERNAL_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:memory_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "MEMORY_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:storage_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "STORAGE_LIMIT_EXCEEDED"}))
    UnprocessableExceptionReason.add_member(:partition_full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTITION_FULL', traits: {"smithy.api#enumValue" => "PARTITION_FULL"}))
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource whose tag needs to be removed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Tag keys for the tags to be removed.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateGraphInput.add_member(:graph_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphIdentifier, location_name: 'graphIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Neptune Analytics graph.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGraphInput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.\n      (<code>true</code> to enable, or <code>false</code> to disable.</p>"}))
    UpdateGraphInput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p>\n         <p>Min = 16</p>"}))
    UpdateGraphInput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the graph has deletion protection enabled.\n      The graph can't be deleted when deletion protection is enabled.</p>"}))
    UpdateGraphInput.type = Types::UpdateGraphInput
    UpdateGraphOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the graph.</p>", "smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the graph.</p>", "smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN associated with the graph.</p>", "smithy.api#required" => {}}))
    UpdateGraphOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the graph.</p>"}))
    UpdateGraphOutput.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason that the graph has this status.</p>"}))
    UpdateGraphOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the graph was created.</p>"}))
    UpdateGraphOutput.add_member(:provisioned_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: 'provisionedMemory', traits: {"smithy.api#documentation" => "<p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>"}))
    UpdateGraphOutput.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The graph endpoint.</p>"}))
    UpdateGraphOutput.add_member(:public_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'publicConnectivity', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>"}))
    UpdateGraphOutput.add_member(:vector_search_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: 'vectorSearchConfiguration'))
    UpdateGraphOutput.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaCount, location_name: 'replicaCount', traits: {"smithy.api#documentation" => "<p>The number of replicas for the graph.</p>"}))
    UpdateGraphOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt and decrypt graph data.</p>"}))
    UpdateGraphOutput.add_member(:source_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotId, location_name: 'sourceSnapshotId', traits: {"smithy.api#documentation" => "<p>The ID of the snapshot from which the graph was created, if any.</p>"}))
    UpdateGraphOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deletionProtection', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, deletion protection is enabled for the graph.</p>"}))
    UpdateGraphOutput.add_member(:build_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'buildNumber', traits: {"smithy.api#documentation" => "<p>The build number of the graph.</p>"}))
    UpdateGraphOutput.type = Types::UpdateGraphOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing the problem.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason that the resource could not be validated.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:constraint_violation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONSTRAINT_VIOLATION', traits: {"smithy.api#enumValue" => "CONSTRAINT_VIOLATION"}))
    ValidationExceptionReason.add_member(:illegal_argument, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ILLEGAL_ARGUMENT', traits: {"smithy.api#enumValue" => "ILLEGAL_ARGUMENT"}))
    ValidationExceptionReason.add_member(:malformed_query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MALFORMED_QUERY', traits: {"smithy.api#enumValue" => "MALFORMED_QUERY"}))
    ValidationExceptionReason.add_member(:query_cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_CANCELLED', traits: {"smithy.api#enumValue" => "QUERY_CANCELLED"}))
    ValidationExceptionReason.add_member(:query_too_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_TOO_LARGE', traits: {"smithy.api#enumValue" => "QUERY_TOO_LARGE"}))
    ValidationExceptionReason.add_member(:unsupported_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OPERATION', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OPERATION"}))
    ValidationExceptionReason.add_member(:bad_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAD_REQUEST', traits: {"smithy.api#enumValue" => "BAD_REQUEST"}))
    VectorSearchConfiguration.add_member(:dimension, Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchDimension, location_name: 'dimension', traits: {"smithy.api#documentation" => "<p>The number of dimensions.</p>", "smithy.api#required" => {}}))
    VectorSearchConfiguration.type = Types::VectorSearchConfiguration

    AmazonNeptuneGraph = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.neptunegraph#AmazonNeptuneGraph"
      service.name = "AmazonNeptuneGraph"
      service.version = "2023-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "Neptune Graph", "arnNamespace" => "neptune-graph", "cloudTrailEventSource" => "neptune-graph.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "neptune-graph"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400, "additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"]}, "smithy.api#title" => "Amazon Neptune Graph"}
      service.add_operation(:cancel_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/exporttasks/{taskIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:cancel_import_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelImportTask"
        operation.name = "CancelImportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelImportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelImportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/importtasks/{taskIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:cancel_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CancelQuery"
        operation.name = "CancelQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/queries/{queryId}", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:create_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraph"
        operation.name = "CreateGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_graph_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraphSnapshot"
        operation.name = "CreateGraphSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/snapshots"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_graph_using_import_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreateGraphUsingImportTask"
        operation.name = "CreateGraphUsingImportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/importtasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:create_private_graph_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#CreatePrivateGraphEndpoint"
        operation.name = "CreatePrivateGraphEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/endpoints/"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeleteGraph"
        operation.name = "DeleteGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_graph_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeleteGraphSnapshot"
        operation.name = "DeleteGraphSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGraphSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/snapshots/{snapshotIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:delete_private_graph_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#DeletePrivateGraphEndpoint"
        operation.name = "DeletePrivateGraphEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/graphs/{graphIdentifier}/endpoints/{vpcId}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:execute_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "POST", "uri" => "/queries", "code" => 200}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:get_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetExportTask"
        operation.name = "GetExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/exporttasks/{taskIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraph"
        operation.name = "GetGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraphSnapshot"
        operation.name = "GetGraphSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/snapshots/{snapshotIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_graph_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetGraphSummary"
        operation.name = "GetGraphSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGraphSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/summary", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:get_import_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetImportTask"
        operation.name = "GetImportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/importtasks/{taskIdentifier}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_private_graph_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetPrivateGraphEndpoint"
        operation.name = "GetPrivateGraphEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}/endpoints/{vpcId}"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:get_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#GetQuery"
        operation.name = "GetQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/queries/{queryId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:list_export_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListExportTasks"
        operation.name = "ListExportTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportTasksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportTasksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/exporttasks"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListExportTasks.new
      end)
      service.add_operation(:list_graph_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListGraphSnapshots"
        operation.name = "ListGraphSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphSnapshotsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphSnapshotsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/snapshots"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListGraphSnapshots.new
      end)
      service.add_operation(:list_graphs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListGraphs"
        operation.name = "ListGraphs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGraphsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListGraphs.new
      end)
      service.add_operation(:list_import_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListImportTasks"
        operation.name = "ListImportTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportTasksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportTasksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/importtasks"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListImportTasks.new
      end)
      service.add_operation(:list_private_graph_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListPrivateGraphEndpoints"
        operation.name = "ListPrivateGraphEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/graphs/{graphIdentifier}/endpoints/"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
        operation[:paginator] = Paginators::ListPrivateGraphEndpoints.new
      end)
      service.add_operation(:list_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListQueries"
        operation.name = "ListQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#endpoint" => {"hostPrefix" => "{graphIdentifier}."}, "smithy.api#http" => {"method" => "GET", "uri" => "/queries", "code" => 200}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "DataPlane"}}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:reset_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#ResetGraph"
        operation.name = "ResetGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetGraphInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetGraphOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:restore_graph_from_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#RestoreGraphFromSnapshot"
        operation.name = "RestoreGraphFromSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/snapshots/{snapshotIdentifier}/restore"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:start_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/exporttasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:start_import_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#StartImportTask"
        operation.name = "StartImportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/graphs/{graphIdentifier}/importtasks"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
      end)
      service.add_operation(:update_graph, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunegraph#UpdateGraph"
        operation.name = "UpdateGraph"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGraphOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/graphs/{graphIdentifier}"}, "smithy.rules#staticContextParams" => {"ApiType" => {"value" => "ControlPlane"}}}
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
