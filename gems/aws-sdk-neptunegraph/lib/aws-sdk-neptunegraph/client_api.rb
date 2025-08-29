# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NeptuneGraph
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BlankNodeHandling = Shapes::StringShape.new(name: 'BlankNodeHandling')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelExportTaskInput = Shapes::StructureShape.new(name: 'CancelExportTaskInput')
    CancelExportTaskOutput = Shapes::StructureShape.new(name: 'CancelExportTaskOutput')
    CancelExportTaskOutputDestinationString = Shapes::StringShape.new(name: 'CancelExportTaskOutputDestinationString')
    CancelImportTaskInput = Shapes::StructureShape.new(name: 'CancelImportTaskInput')
    CancelImportTaskOutput = Shapes::StructureShape.new(name: 'CancelImportTaskOutput')
    CancelQueryInput = Shapes::StructureShape.new(name: 'CancelQueryInput')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateGraphInput = Shapes::StructureShape.new(name: 'CreateGraphInput')
    CreateGraphOutput = Shapes::StructureShape.new(name: 'CreateGraphOutput')
    CreateGraphSnapshotInput = Shapes::StructureShape.new(name: 'CreateGraphSnapshotInput')
    CreateGraphSnapshotOutput = Shapes::StructureShape.new(name: 'CreateGraphSnapshotOutput')
    CreateGraphUsingImportTaskInput = Shapes::StructureShape.new(name: 'CreateGraphUsingImportTaskInput')
    CreateGraphUsingImportTaskOutput = Shapes::StructureShape.new(name: 'CreateGraphUsingImportTaskOutput')
    CreatePrivateGraphEndpointInput = Shapes::StructureShape.new(name: 'CreatePrivateGraphEndpointInput')
    CreatePrivateGraphEndpointOutput = Shapes::StructureShape.new(name: 'CreatePrivateGraphEndpointOutput')
    DeleteGraphInput = Shapes::StructureShape.new(name: 'DeleteGraphInput')
    DeleteGraphOutput = Shapes::StructureShape.new(name: 'DeleteGraphOutput')
    DeleteGraphSnapshotInput = Shapes::StructureShape.new(name: 'DeleteGraphSnapshotInput')
    DeleteGraphSnapshotOutput = Shapes::StructureShape.new(name: 'DeleteGraphSnapshotOutput')
    DeletePrivateGraphEndpointInput = Shapes::StructureShape.new(name: 'DeletePrivateGraphEndpointInput')
    DeletePrivateGraphEndpointOutput = Shapes::StructureShape.new(name: 'DeletePrivateGraphEndpointOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DocumentValuedMap = Shapes::MapShape.new(name: 'DocumentValuedMap')
    EdgeLabels = Shapes::ListShape.new(name: 'EdgeLabels')
    EdgeProperties = Shapes::ListShape.new(name: 'EdgeProperties')
    EdgeStructure = Shapes::StructureShape.new(name: 'EdgeStructure')
    EdgeStructures = Shapes::ListShape.new(name: 'EdgeStructures')
    ExecuteQueryInput = Shapes::StructureShape.new(name: 'ExecuteQueryInput')
    ExecuteQueryOutput = Shapes::StructureShape.new(name: 'ExecuteQueryOutput')
    ExplainMode = Shapes::StringShape.new(name: 'ExplainMode')
    ExportFilter = Shapes::StructureShape.new(name: 'ExportFilter')
    ExportFilterElement = Shapes::StructureShape.new(name: 'ExportFilterElement')
    ExportFilterLabel = Shapes::StringShape.new(name: 'ExportFilterLabel')
    ExportFilterOutputDataType = Shapes::StringShape.new(name: 'ExportFilterOutputDataType')
    ExportFilterOutputPropertyName = Shapes::StringShape.new(name: 'ExportFilterOutputPropertyName')
    ExportFilterPerLabelMap = Shapes::MapShape.new(name: 'ExportFilterPerLabelMap')
    ExportFilterPropertyAttributes = Shapes::StructureShape.new(name: 'ExportFilterPropertyAttributes')
    ExportFilterPropertyMap = Shapes::MapShape.new(name: 'ExportFilterPropertyMap')
    ExportFilterSourcePropertyName = Shapes::StringShape.new(name: 'ExportFilterSourcePropertyName')
    ExportFormat = Shapes::StringShape.new(name: 'ExportFormat')
    ExportTaskDetails = Shapes::StructureShape.new(name: 'ExportTaskDetails')
    ExportTaskId = Shapes::StringShape.new(name: 'ExportTaskId')
    ExportTaskStatus = Shapes::StringShape.new(name: 'ExportTaskStatus')
    ExportTaskSummary = Shapes::StructureShape.new(name: 'ExportTaskSummary')
    ExportTaskSummaryDestinationString = Shapes::StringShape.new(name: 'ExportTaskSummaryDestinationString')
    ExportTaskSummaryList = Shapes::ListShape.new(name: 'ExportTaskSummaryList')
    Format = Shapes::StringShape.new(name: 'Format')
    GetExportTaskInput = Shapes::StructureShape.new(name: 'GetExportTaskInput')
    GetExportTaskOutput = Shapes::StructureShape.new(name: 'GetExportTaskOutput')
    GetExportTaskOutputDestinationString = Shapes::StringShape.new(name: 'GetExportTaskOutputDestinationString')
    GetGraphInput = Shapes::StructureShape.new(name: 'GetGraphInput')
    GetGraphOutput = Shapes::StructureShape.new(name: 'GetGraphOutput')
    GetGraphSnapshotInput = Shapes::StructureShape.new(name: 'GetGraphSnapshotInput')
    GetGraphSnapshotOutput = Shapes::StructureShape.new(name: 'GetGraphSnapshotOutput')
    GetGraphSummaryInput = Shapes::StructureShape.new(name: 'GetGraphSummaryInput')
    GetGraphSummaryOutput = Shapes::StructureShape.new(name: 'GetGraphSummaryOutput')
    GetImportTaskInput = Shapes::StructureShape.new(name: 'GetImportTaskInput')
    GetImportTaskOutput = Shapes::StructureShape.new(name: 'GetImportTaskOutput')
    GetPrivateGraphEndpointInput = Shapes::StructureShape.new(name: 'GetPrivateGraphEndpointInput')
    GetPrivateGraphEndpointOutput = Shapes::StructureShape.new(name: 'GetPrivateGraphEndpointOutput')
    GetQueryInput = Shapes::StructureShape.new(name: 'GetQueryInput')
    GetQueryOutput = Shapes::StructureShape.new(name: 'GetQueryOutput')
    GraphDataSummary = Shapes::StructureShape.new(name: 'GraphDataSummary')
    GraphId = Shapes::StringShape.new(name: 'GraphId')
    GraphIdentifier = Shapes::StringShape.new(name: 'GraphIdentifier')
    GraphName = Shapes::StringShape.new(name: 'GraphName')
    GraphSnapshotSummary = Shapes::StructureShape.new(name: 'GraphSnapshotSummary')
    GraphSnapshotSummaryList = Shapes::ListShape.new(name: 'GraphSnapshotSummaryList')
    GraphStatus = Shapes::StringShape.new(name: 'GraphStatus')
    GraphSummary = Shapes::StructureShape.new(name: 'GraphSummary')
    GraphSummaryList = Shapes::ListShape.new(name: 'GraphSummaryList')
    GraphSummaryMode = Shapes::StringShape.new(name: 'GraphSummaryMode')
    ImportOptions = Shapes::UnionShape.new(name: 'ImportOptions')
    ImportTaskDetails = Shapes::StructureShape.new(name: 'ImportTaskDetails')
    ImportTaskStatus = Shapes::StringShape.new(name: 'ImportTaskStatus')
    ImportTaskSummary = Shapes::StructureShape.new(name: 'ImportTaskSummary')
    ImportTaskSummaryList = Shapes::ListShape.new(name: 'ImportTaskSummaryList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListExportTasksInput = Shapes::StructureShape.new(name: 'ListExportTasksInput')
    ListExportTasksOutput = Shapes::StructureShape.new(name: 'ListExportTasksOutput')
    ListGraphSnapshotsInput = Shapes::StructureShape.new(name: 'ListGraphSnapshotsInput')
    ListGraphSnapshotsOutput = Shapes::StructureShape.new(name: 'ListGraphSnapshotsOutput')
    ListGraphsInput = Shapes::StructureShape.new(name: 'ListGraphsInput')
    ListGraphsOutput = Shapes::StructureShape.new(name: 'ListGraphsOutput')
    ListImportTasksInput = Shapes::StructureShape.new(name: 'ListImportTasksInput')
    ListImportTasksOutput = Shapes::StructureShape.new(name: 'ListImportTasksOutput')
    ListPrivateGraphEndpointsInput = Shapes::StructureShape.new(name: 'ListPrivateGraphEndpointsInput')
    ListPrivateGraphEndpointsOutput = Shapes::StructureShape.new(name: 'ListPrivateGraphEndpointsOutput')
    ListQueriesInput = Shapes::StructureShape.new(name: 'ListQueriesInput')
    ListQueriesOutput = Shapes::StructureShape.new(name: 'ListQueriesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongValuedMap = Shapes::MapShape.new(name: 'LongValuedMap')
    LongValuedMapList = Shapes::ListShape.new(name: 'LongValuedMapList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MultiValueHandlingType = Shapes::StringShape.new(name: 'MultiValueHandlingType')
    NeptuneImportOptions = Shapes::StructureShape.new(name: 'NeptuneImportOptions')
    NeptuneImportOptionsS3ExportKmsKeyIdString = Shapes::StringShape.new(name: 'NeptuneImportOptionsS3ExportKmsKeyIdString')
    NeptuneImportOptionsS3ExportPathString = Shapes::StringShape.new(name: 'NeptuneImportOptionsS3ExportPathString')
    NodeLabels = Shapes::ListShape.new(name: 'NodeLabels')
    NodeProperties = Shapes::ListShape.new(name: 'NodeProperties')
    NodeStructure = Shapes::StructureShape.new(name: 'NodeStructure')
    NodeStructures = Shapes::ListShape.new(name: 'NodeStructures')
    OutgoingEdgeLabels = Shapes::ListShape.new(name: 'OutgoingEdgeLabels')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParquetType = Shapes::StringShape.new(name: 'ParquetType')
    PlanCacheType = Shapes::StringShape.new(name: 'PlanCacheType')
    PrivateGraphEndpointStatus = Shapes::StringShape.new(name: 'PrivateGraphEndpointStatus')
    PrivateGraphEndpointSummary = Shapes::StructureShape.new(name: 'PrivateGraphEndpointSummary')
    PrivateGraphEndpointSummaryList = Shapes::ListShape.new(name: 'PrivateGraphEndpointSummaryList')
    ProvisionedMemory = Shapes::IntegerShape.new(name: 'ProvisionedMemory')
    QueryLanguage = Shapes::StringShape.new(name: 'QueryLanguage')
    QueryResponseBlob = Shapes::BlobShape.new(name: 'QueryResponseBlob', streaming: true)
    QueryState = Shapes::StringShape.new(name: 'QueryState')
    QueryStateInput = Shapes::StringShape.new(name: 'QueryStateInput')
    QuerySummary = Shapes::StructureShape.new(name: 'QuerySummary')
    QuerySummaryList = Shapes::ListShape.new(name: 'QuerySummaryList')
    ReplicaCount = Shapes::IntegerShape.new(name: 'ReplicaCount')
    ResetGraphInput = Shapes::StructureShape.new(name: 'ResetGraphInput')
    ResetGraphOutput = Shapes::StructureShape.new(name: 'ResetGraphOutput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreGraphFromSnapshotInput = Shapes::StructureShape.new(name: 'RestoreGraphFromSnapshotInput')
    RestoreGraphFromSnapshotOutput = Shapes::StructureShape.new(name: 'RestoreGraphFromSnapshotOutput')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SnapshotIdentifier = Shapes::StringShape.new(name: 'SnapshotIdentifier')
    SnapshotName = Shapes::StringShape.new(name: 'SnapshotName')
    SnapshotStatus = Shapes::StringShape.new(name: 'SnapshotStatus')
    StartExportTaskInput = Shapes::StructureShape.new(name: 'StartExportTaskInput')
    StartExportTaskInputDestinationString = Shapes::StringShape.new(name: 'StartExportTaskInputDestinationString')
    StartExportTaskOutput = Shapes::StructureShape.new(name: 'StartExportTaskOutput')
    StartExportTaskOutputDestinationString = Shapes::StringShape.new(name: 'StartExportTaskOutputDestinationString')
    StartGraphInput = Shapes::StructureShape.new(name: 'StartGraphInput')
    StartGraphOutput = Shapes::StructureShape.new(name: 'StartGraphOutput')
    StartImportTaskInput = Shapes::StructureShape.new(name: 'StartImportTaskInput')
    StartImportTaskOutput = Shapes::StructureShape.new(name: 'StartImportTaskOutput')
    StopGraphInput = Shapes::StructureShape.new(name: 'StopGraphInput')
    StopGraphOutput = Shapes::StructureShape.new(name: 'StopGraphOutput')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnprocessableException = Shapes::StructureShape.new(name: 'UnprocessableException')
    UnprocessableExceptionReason = Shapes::StringShape.new(name: 'UnprocessableExceptionReason')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateGraphInput = Shapes::StructureShape.new(name: 'UpdateGraphInput')
    UpdateGraphOutput = Shapes::StructureShape.new(name: 'UpdateGraphOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VectorSearchConfiguration = Shapes::StructureShape.new(name: 'VectorSearchConfiguration')
    VectorSearchDimension = Shapes::IntegerShape.new(name: 'VectorSearchDimension')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelExportTaskInput.add_member(:task_identifier, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location: "uri", location_name: "taskIdentifier"))
    CancelExportTaskInput.struct_class = Types::CancelExportTaskInput

    CancelExportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "graphId"))
    CancelExportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CancelExportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    CancelExportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, required: true, location_name: "status"))
    CancelExportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: ExportFormat, required: true, location_name: "format"))
    CancelExportTaskOutput.add_member(:destination, Shapes::ShapeRef.new(shape: CancelExportTaskOutputDestinationString, required: true, location_name: "destination"))
    CancelExportTaskOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyIdentifier"))
    CancelExportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    CancelExportTaskOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CancelExportTaskOutput.struct_class = Types::CancelExportTaskOutput

    CancelImportTaskInput.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskIdentifier"))
    CancelImportTaskInput.struct_class = Types::CancelImportTaskInput

    CancelImportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "graphId"))
    CancelImportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    CancelImportTaskOutput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    CancelImportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    CancelImportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    CancelImportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CancelImportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, required: true, location_name: "status"))
    CancelImportTaskOutput.struct_class = Types::CancelImportTaskOutput

    CancelQueryInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "header", location_name: "graphIdentifier", metadata: {"hostLabel" => true, "hostLabelName" => "graphIdentifier"}))
    CancelQueryInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    CancelQueryInput.struct_class = Types::CancelQueryInput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateGraphInput.add_member(:graph_name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "graphName"))
    CreateGraphInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGraphInput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    CreateGraphInput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateGraphInput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    CreateGraphInput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    CreateGraphInput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    CreateGraphInput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, required: true, location_name: "provisionedMemory"))
    CreateGraphInput.struct_class = Types::CreateGraphInput

    CreateGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    CreateGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    CreateGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    CreateGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    CreateGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CreateGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    CreateGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    CreateGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    CreateGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    CreateGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    CreateGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    CreateGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    CreateGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    CreateGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    CreateGraphOutput.struct_class = Types::CreateGraphOutput

    CreateGraphSnapshotInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location_name: "graphIdentifier"))
    CreateGraphSnapshotInput.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "snapshotName"))
    CreateGraphSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGraphSnapshotInput.struct_class = Types::CreateGraphSnapshotInput

    CreateGraphSnapshotOutput.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "id"))
    CreateGraphSnapshotOutput.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "name"))
    CreateGraphSnapshotOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    CreateGraphSnapshotOutput.add_member(:source_graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "sourceGraphId"))
    CreateGraphSnapshotOutput.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "snapshotCreateTime"))
    CreateGraphSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "status"))
    CreateGraphSnapshotOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateGraphSnapshotOutput.struct_class = Types::CreateGraphSnapshotOutput

    CreateGraphUsingImportTaskInput.add_member(:graph_name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "graphName"))
    CreateGraphUsingImportTaskInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGraphUsingImportTaskInput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    CreateGraphUsingImportTaskInput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    CreateGraphUsingImportTaskInput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    CreateGraphUsingImportTaskInput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    CreateGraphUsingImportTaskInput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    CreateGraphUsingImportTaskInput.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, location_name: "importOptions"))
    CreateGraphUsingImportTaskInput.add_member(:max_provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "maxProvisionedMemory"))
    CreateGraphUsingImportTaskInput.add_member(:min_provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "minProvisionedMemory"))
    CreateGraphUsingImportTaskInput.add_member(:fail_on_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "failOnError"))
    CreateGraphUsingImportTaskInput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    CreateGraphUsingImportTaskInput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    CreateGraphUsingImportTaskInput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    CreateGraphUsingImportTaskInput.add_member(:blank_node_handling, Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: "blankNodeHandling"))
    CreateGraphUsingImportTaskInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateGraphUsingImportTaskInput.struct_class = Types::CreateGraphUsingImportTaskInput

    CreateGraphUsingImportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "graphId"))
    CreateGraphUsingImportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    CreateGraphUsingImportTaskOutput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    CreateGraphUsingImportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    CreateGraphUsingImportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    CreateGraphUsingImportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateGraphUsingImportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, required: true, location_name: "status"))
    CreateGraphUsingImportTaskOutput.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, location_name: "importOptions"))
    CreateGraphUsingImportTaskOutput.struct_class = Types::CreateGraphUsingImportTaskOutput

    CreatePrivateGraphEndpointInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    CreatePrivateGraphEndpointInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    CreatePrivateGraphEndpointInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    CreatePrivateGraphEndpointInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "vpcSecurityGroupIds"))
    CreatePrivateGraphEndpointInput.struct_class = Types::CreatePrivateGraphEndpointInput

    CreatePrivateGraphEndpointOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreatePrivateGraphEndpointOutput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    CreatePrivateGraphEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, required: true, location_name: "status"))
    CreatePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "vpcEndpointId"))
    CreatePrivateGraphEndpointOutput.struct_class = Types::CreatePrivateGraphEndpointOutput

    DeleteGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    DeleteGraphInput.add_member(:skip_snapshot, Shapes::ShapeRef.new(shape: Boolean, required: true, location: "querystring", location_name: "skipSnapshot"))
    DeleteGraphInput.struct_class = Types::DeleteGraphInput

    DeleteGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    DeleteGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    DeleteGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    DeleteGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    DeleteGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DeleteGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    DeleteGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    DeleteGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DeleteGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    DeleteGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    DeleteGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    DeleteGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    DeleteGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    DeleteGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    DeleteGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    DeleteGraphOutput.struct_class = Types::DeleteGraphOutput

    DeleteGraphSnapshotInput.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: SnapshotIdentifier, required: true, location: "uri", location_name: "snapshotIdentifier"))
    DeleteGraphSnapshotInput.struct_class = Types::DeleteGraphSnapshotInput

    DeleteGraphSnapshotOutput.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "id"))
    DeleteGraphSnapshotOutput.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "name"))
    DeleteGraphSnapshotOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    DeleteGraphSnapshotOutput.add_member(:source_graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "sourceGraphId"))
    DeleteGraphSnapshotOutput.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "snapshotCreateTime"))
    DeleteGraphSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "status"))
    DeleteGraphSnapshotOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    DeleteGraphSnapshotOutput.struct_class = Types::DeleteGraphSnapshotOutput

    DeletePrivateGraphEndpointInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    DeletePrivateGraphEndpointInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location: "uri", location_name: "vpcId"))
    DeletePrivateGraphEndpointInput.struct_class = Types::DeletePrivateGraphEndpointInput

    DeletePrivateGraphEndpointOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    DeletePrivateGraphEndpointOutput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    DeletePrivateGraphEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, required: true, location_name: "status"))
    DeletePrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "vpcEndpointId"))
    DeletePrivateGraphEndpointOutput.struct_class = Types::DeletePrivateGraphEndpointOutput

    DocumentValuedMap.key = Shapes::ShapeRef.new(shape: String)
    DocumentValuedMap.value = Shapes::ShapeRef.new(shape: Document)

    EdgeLabels.member = Shapes::ShapeRef.new(shape: String)

    EdgeProperties.member = Shapes::ShapeRef.new(shape: String)

    EdgeStructure.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    EdgeStructure.add_member(:edge_properties, Shapes::ShapeRef.new(shape: EdgeProperties, location_name: "edgeProperties"))
    EdgeStructure.struct_class = Types::EdgeStructure

    EdgeStructures.member = Shapes::ShapeRef.new(shape: EdgeStructure)

    ExecuteQueryInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "header", location_name: "graphIdentifier", metadata: {"hostLabel" => true, "hostLabelName" => "graphIdentifier"}))
    ExecuteQueryInput.add_member(:query_string, Shapes::ShapeRef.new(shape: String, required: true, location_name: "query"))
    ExecuteQueryInput.add_member(:language, Shapes::ShapeRef.new(shape: QueryLanguage, required: true, location_name: "language"))
    ExecuteQueryInput.add_member(:parameters, Shapes::ShapeRef.new(shape: DocumentValuedMap, location_name: "parameters"))
    ExecuteQueryInput.add_member(:plan_cache, Shapes::ShapeRef.new(shape: PlanCacheType, location_name: "planCache"))
    ExecuteQueryInput.add_member(:explain_mode, Shapes::ShapeRef.new(shape: ExplainMode, location_name: "explain"))
    ExecuteQueryInput.add_member(:query_timeout_milliseconds, Shapes::ShapeRef.new(shape: Integer, location_name: "queryTimeoutMilliseconds"))
    ExecuteQueryInput.struct_class = Types::ExecuteQueryInput

    ExecuteQueryOutput.add_member(:payload, Shapes::ShapeRef.new(shape: QueryResponseBlob, required: true, location_name: "payload"))
    ExecuteQueryOutput.struct_class = Types::ExecuteQueryOutput
    ExecuteQueryOutput[:payload] = :payload
    ExecuteQueryOutput[:payload_member] = ExecuteQueryOutput.member(:payload)

    ExportFilter.add_member(:vertex_filter, Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: "vertexFilter"))
    ExportFilter.add_member(:edge_filter, Shapes::ShapeRef.new(shape: ExportFilterPerLabelMap, location_name: "edgeFilter"))
    ExportFilter.struct_class = Types::ExportFilter

    ExportFilterElement.add_member(:properties, Shapes::ShapeRef.new(shape: ExportFilterPropertyMap, location_name: "properties"))
    ExportFilterElement.struct_class = Types::ExportFilterElement

    ExportFilterPerLabelMap.key = Shapes::ShapeRef.new(shape: ExportFilterLabel)
    ExportFilterPerLabelMap.value = Shapes::ShapeRef.new(shape: ExportFilterElement)

    ExportFilterPropertyAttributes.add_member(:output_type, Shapes::ShapeRef.new(shape: ExportFilterOutputDataType, location_name: "outputType"))
    ExportFilterPropertyAttributes.add_member(:source_property_name, Shapes::ShapeRef.new(shape: ExportFilterSourcePropertyName, location_name: "sourcePropertyName"))
    ExportFilterPropertyAttributes.add_member(:multi_value_handling, Shapes::ShapeRef.new(shape: MultiValueHandlingType, location_name: "multiValueHandling"))
    ExportFilterPropertyAttributes.struct_class = Types::ExportFilterPropertyAttributes

    ExportFilterPropertyMap.key = Shapes::ShapeRef.new(shape: ExportFilterOutputPropertyName)
    ExportFilterPropertyMap.value = Shapes::ShapeRef.new(shape: ExportFilterPropertyAttributes)

    ExportTaskDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ExportTaskDetails.add_member(:time_elapsed_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "timeElapsedSeconds"))
    ExportTaskDetails.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "progressPercentage"))
    ExportTaskDetails.add_member(:num_vertices_written, Shapes::ShapeRef.new(shape: Long, location_name: "numVerticesWritten"))
    ExportTaskDetails.add_member(:num_edges_written, Shapes::ShapeRef.new(shape: Long, location_name: "numEdgesWritten"))
    ExportTaskDetails.struct_class = Types::ExportTaskDetails

    ExportTaskSummary.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "graphId"))
    ExportTaskSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ExportTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    ExportTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, required: true, location_name: "status"))
    ExportTaskSummary.add_member(:format, Shapes::ShapeRef.new(shape: ExportFormat, required: true, location_name: "format"))
    ExportTaskSummary.add_member(:destination, Shapes::ShapeRef.new(shape: ExportTaskSummaryDestinationString, required: true, location_name: "destination"))
    ExportTaskSummary.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyIdentifier"))
    ExportTaskSummary.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    ExportTaskSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ExportTaskSummary.struct_class = Types::ExportTaskSummary

    ExportTaskSummaryList.member = Shapes::ShapeRef.new(shape: ExportTaskSummary)

    GetExportTaskInput.add_member(:task_identifier, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location: "uri", location_name: "taskIdentifier"))
    GetExportTaskInput.struct_class = Types::GetExportTaskInput

    GetExportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "graphId"))
    GetExportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetExportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    GetExportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, required: true, location_name: "status"))
    GetExportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: ExportFormat, required: true, location_name: "format"))
    GetExportTaskOutput.add_member(:destination, Shapes::ShapeRef.new(shape: GetExportTaskOutputDestinationString, required: true, location_name: "destination"))
    GetExportTaskOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyIdentifier"))
    GetExportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    GetExportTaskOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetExportTaskOutput.add_member(:export_task_details, Shapes::ShapeRef.new(shape: ExportTaskDetails, location_name: "exportTaskDetails"))
    GetExportTaskOutput.add_member(:export_filter, Shapes::ShapeRef.new(shape: ExportFilter, location_name: "exportFilter"))
    GetExportTaskOutput.struct_class = Types::GetExportTaskOutput

    GetGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    GetGraphInput.struct_class = Types::GetGraphInput

    GetGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    GetGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    GetGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    GetGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    GetGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    GetGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    GetGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    GetGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    GetGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    GetGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    GetGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    GetGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    GetGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    GetGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    GetGraphOutput.struct_class = Types::GetGraphOutput

    GetGraphSnapshotInput.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: SnapshotIdentifier, required: true, location: "uri", location_name: "snapshotIdentifier"))
    GetGraphSnapshotInput.struct_class = Types::GetGraphSnapshotInput

    GetGraphSnapshotOutput.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "id"))
    GetGraphSnapshotOutput.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "name"))
    GetGraphSnapshotOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    GetGraphSnapshotOutput.add_member(:source_graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "sourceGraphId"))
    GetGraphSnapshotOutput.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "snapshotCreateTime"))
    GetGraphSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "status"))
    GetGraphSnapshotOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    GetGraphSnapshotOutput.struct_class = Types::GetGraphSnapshotOutput

    GetGraphSummaryInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "header", location_name: "graphIdentifier", metadata: {"hostLabel" => true, "hostLabelName" => "graphIdentifier"}))
    GetGraphSummaryInput.add_member(:mode, Shapes::ShapeRef.new(shape: GraphSummaryMode, location: "querystring", location_name: "mode"))
    GetGraphSummaryInput.struct_class = Types::GetGraphSummaryInput

    GetGraphSummaryOutput.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    GetGraphSummaryOutput.add_member(:last_statistics_computation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastStatisticsComputationTime"))
    GetGraphSummaryOutput.add_member(:graph_summary, Shapes::ShapeRef.new(shape: GraphDataSummary, location_name: "graphSummary"))
    GetGraphSummaryOutput.struct_class = Types::GetGraphSummaryOutput

    GetImportTaskInput.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskIdentifier"))
    GetImportTaskInput.struct_class = Types::GetImportTaskInput

    GetImportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "graphId"))
    GetImportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    GetImportTaskOutput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    GetImportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    GetImportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    GetImportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetImportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, required: true, location_name: "status"))
    GetImportTaskOutput.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, location_name: "importOptions"))
    GetImportTaskOutput.add_member(:import_task_details, Shapes::ShapeRef.new(shape: ImportTaskDetails, location_name: "importTaskDetails"))
    GetImportTaskOutput.add_member(:attempt_number, Shapes::ShapeRef.new(shape: Integer, location_name: "attemptNumber"))
    GetImportTaskOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetImportTaskOutput.struct_class = Types::GetImportTaskOutput

    GetPrivateGraphEndpointInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    GetPrivateGraphEndpointInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location: "uri", location_name: "vpcId"))
    GetPrivateGraphEndpointInput.struct_class = Types::GetPrivateGraphEndpointInput

    GetPrivateGraphEndpointOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    GetPrivateGraphEndpointOutput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    GetPrivateGraphEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, required: true, location_name: "status"))
    GetPrivateGraphEndpointOutput.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "vpcEndpointId"))
    GetPrivateGraphEndpointOutput.struct_class = Types::GetPrivateGraphEndpointOutput

    GetQueryInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "header", location_name: "graphIdentifier", metadata: {"hostLabel" => true, "hostLabelName" => "graphIdentifier"}))
    GetQueryInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryInput.struct_class = Types::GetQueryInput

    GetQueryOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetQueryOutput.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "queryString"))
    GetQueryOutput.add_member(:waited, Shapes::ShapeRef.new(shape: Integer, location_name: "waited"))
    GetQueryOutput.add_member(:elapsed, Shapes::ShapeRef.new(shape: Integer, location_name: "elapsed"))
    GetQueryOutput.add_member(:state, Shapes::ShapeRef.new(shape: QueryState, location_name: "state"))
    GetQueryOutput.struct_class = Types::GetQueryOutput

    GraphDataSummary.add_member(:num_nodes, Shapes::ShapeRef.new(shape: Long, location_name: "numNodes"))
    GraphDataSummary.add_member(:num_edges, Shapes::ShapeRef.new(shape: Long, location_name: "numEdges"))
    GraphDataSummary.add_member(:num_node_labels, Shapes::ShapeRef.new(shape: Long, location_name: "numNodeLabels"))
    GraphDataSummary.add_member(:num_edge_labels, Shapes::ShapeRef.new(shape: Long, location_name: "numEdgeLabels"))
    GraphDataSummary.add_member(:node_labels, Shapes::ShapeRef.new(shape: NodeLabels, location_name: "nodeLabels"))
    GraphDataSummary.add_member(:edge_labels, Shapes::ShapeRef.new(shape: EdgeLabels, location_name: "edgeLabels"))
    GraphDataSummary.add_member(:num_node_properties, Shapes::ShapeRef.new(shape: Long, location_name: "numNodeProperties"))
    GraphDataSummary.add_member(:num_edge_properties, Shapes::ShapeRef.new(shape: Long, location_name: "numEdgeProperties"))
    GraphDataSummary.add_member(:node_properties, Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: "nodeProperties"))
    GraphDataSummary.add_member(:edge_properties, Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: "edgeProperties"))
    GraphDataSummary.add_member(:total_node_property_values, Shapes::ShapeRef.new(shape: Long, location_name: "totalNodePropertyValues"))
    GraphDataSummary.add_member(:total_edge_property_values, Shapes::ShapeRef.new(shape: Long, location_name: "totalEdgePropertyValues"))
    GraphDataSummary.add_member(:node_structures, Shapes::ShapeRef.new(shape: NodeStructures, location_name: "nodeStructures"))
    GraphDataSummary.add_member(:edge_structures, Shapes::ShapeRef.new(shape: EdgeStructures, location_name: "edgeStructures"))
    GraphDataSummary.struct_class = Types::GraphDataSummary

    GraphSnapshotSummary.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "id"))
    GraphSnapshotSummary.add_member(:name, Shapes::ShapeRef.new(shape: SnapshotName, required: true, location_name: "name"))
    GraphSnapshotSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    GraphSnapshotSummary.add_member(:source_graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "sourceGraphId"))
    GraphSnapshotSummary.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "snapshotCreateTime"))
    GraphSnapshotSummary.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "status"))
    GraphSnapshotSummary.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    GraphSnapshotSummary.struct_class = Types::GraphSnapshotSummary

    GraphSnapshotSummaryList.member = Shapes::ShapeRef.new(shape: GraphSnapshotSummary)

    GraphSummary.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    GraphSummary.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    GraphSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    GraphSummary.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    GraphSummary.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    GraphSummary.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    GraphSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    GraphSummary.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    GraphSummary.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyIdentifier"))
    GraphSummary.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    GraphSummary.struct_class = Types::GraphSummary

    GraphSummaryList.member = Shapes::ShapeRef.new(shape: GraphSummary)

    ImportOptions.add_member(:neptune, Shapes::ShapeRef.new(shape: NeptuneImportOptions, location_name: "neptune"))
    ImportOptions.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImportOptions.add_member_subclass(:neptune, Types::ImportOptions::Neptune)
    ImportOptions.add_member_subclass(:unknown, Types::ImportOptions::Unknown)
    ImportOptions.struct_class = Types::ImportOptions

    ImportTaskDetails.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ImportTaskDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    ImportTaskDetails.add_member(:time_elapsed_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "timeElapsedSeconds"))
    ImportTaskDetails.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "progressPercentage"))
    ImportTaskDetails.add_member(:error_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "errorCount"))
    ImportTaskDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    ImportTaskDetails.add_member(:statement_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "statementCount"))
    ImportTaskDetails.add_member(:dictionary_entry_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "dictionaryEntryCount"))
    ImportTaskDetails.struct_class = Types::ImportTaskDetails

    ImportTaskSummary.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "graphId"))
    ImportTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    ImportTaskSummary.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    ImportTaskSummary.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    ImportTaskSummary.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    ImportTaskSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ImportTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, required: true, location_name: "status"))
    ImportTaskSummary.struct_class = Types::ImportTaskSummary

    ImportTaskSummaryList.member = Shapes::ShapeRef.new(shape: ImportTaskSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListExportTasksInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, location: "querystring", location_name: "graphIdentifier"))
    ListExportTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListExportTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListExportTasksInput.struct_class = Types::ListExportTasksInput

    ListExportTasksOutput.add_member(:tasks, Shapes::ShapeRef.new(shape: ExportTaskSummaryList, required: true, location_name: "tasks"))
    ListExportTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExportTasksOutput.struct_class = Types::ListExportTasksOutput

    ListGraphSnapshotsInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, location: "querystring", location_name: "graphIdentifier"))
    ListGraphSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGraphSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGraphSnapshotsInput.struct_class = Types::ListGraphSnapshotsInput

    ListGraphSnapshotsOutput.add_member(:graph_snapshots, Shapes::ShapeRef.new(shape: GraphSnapshotSummaryList, required: true, location_name: "graphSnapshots"))
    ListGraphSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGraphSnapshotsOutput.struct_class = Types::ListGraphSnapshotsOutput

    ListGraphsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGraphsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGraphsInput.struct_class = Types::ListGraphsInput

    ListGraphsOutput.add_member(:graphs, Shapes::ShapeRef.new(shape: GraphSummaryList, required: true, location_name: "graphs"))
    ListGraphsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGraphsOutput.struct_class = Types::ListGraphsOutput

    ListImportTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListImportTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListImportTasksInput.struct_class = Types::ListImportTasksInput

    ListImportTasksOutput.add_member(:tasks, Shapes::ShapeRef.new(shape: ImportTaskSummaryList, required: true, location_name: "tasks"))
    ListImportTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportTasksOutput.struct_class = Types::ListImportTasksOutput

    ListPrivateGraphEndpointsInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    ListPrivateGraphEndpointsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPrivateGraphEndpointsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPrivateGraphEndpointsInput.struct_class = Types::ListPrivateGraphEndpointsInput

    ListPrivateGraphEndpointsOutput.add_member(:private_graph_endpoints, Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummaryList, required: true, location_name: "privateGraphEndpoints"))
    ListPrivateGraphEndpointsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPrivateGraphEndpointsOutput.struct_class = Types::ListPrivateGraphEndpointsOutput

    ListQueriesInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "header", location_name: "graphIdentifier", metadata: {"hostLabel" => true, "hostLabelName" => "graphIdentifier"}))
    ListQueriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, required: true, location: "querystring", location_name: "maxResults"))
    ListQueriesInput.add_member(:state, Shapes::ShapeRef.new(shape: QueryStateInput, location: "querystring", location_name: "state"))
    ListQueriesInput.struct_class = Types::ListQueriesInput

    ListQueriesOutput.add_member(:queries, Shapes::ShapeRef.new(shape: QuerySummaryList, required: true, location_name: "queries"))
    ListQueriesOutput.struct_class = Types::ListQueriesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    LongValuedMap.key = Shapes::ShapeRef.new(shape: String)
    LongValuedMap.value = Shapes::ShapeRef.new(shape: Long)

    LongValuedMapList.member = Shapes::ShapeRef.new(shape: LongValuedMap)

    NeptuneImportOptions.add_member(:s3_export_path, Shapes::ShapeRef.new(shape: NeptuneImportOptionsS3ExportPathString, required: true, location_name: "s3ExportPath"))
    NeptuneImportOptions.add_member(:s3_export_kms_key_id, Shapes::ShapeRef.new(shape: NeptuneImportOptionsS3ExportKmsKeyIdString, required: true, location_name: "s3ExportKmsKeyId"))
    NeptuneImportOptions.add_member(:preserve_default_vertex_labels, Shapes::ShapeRef.new(shape: Boolean, location_name: "preserveDefaultVertexLabels"))
    NeptuneImportOptions.add_member(:preserve_edge_ids, Shapes::ShapeRef.new(shape: Boolean, location_name: "preserveEdgeIds"))
    NeptuneImportOptions.struct_class = Types::NeptuneImportOptions

    NodeLabels.member = Shapes::ShapeRef.new(shape: String)

    NodeProperties.member = Shapes::ShapeRef.new(shape: String)

    NodeStructure.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    NodeStructure.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    NodeStructure.add_member(:distinct_outgoing_edge_labels, Shapes::ShapeRef.new(shape: OutgoingEdgeLabels, location_name: "distinctOutgoingEdgeLabels"))
    NodeStructure.struct_class = Types::NodeStructure

    NodeStructures.member = Shapes::ShapeRef.new(shape: NodeStructure)

    OutgoingEdgeLabels.member = Shapes::ShapeRef.new(shape: String)

    PrivateGraphEndpointSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    PrivateGraphEndpointSummary.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    PrivateGraphEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: PrivateGraphEndpointStatus, required: true, location_name: "status"))
    PrivateGraphEndpointSummary.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "vpcEndpointId"))
    PrivateGraphEndpointSummary.struct_class = Types::PrivateGraphEndpointSummary

    PrivateGraphEndpointSummaryList.member = Shapes::ShapeRef.new(shape: PrivateGraphEndpointSummary)

    QuerySummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    QuerySummary.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "queryString"))
    QuerySummary.add_member(:waited, Shapes::ShapeRef.new(shape: Integer, location_name: "waited"))
    QuerySummary.add_member(:elapsed, Shapes::ShapeRef.new(shape: Integer, location_name: "elapsed"))
    QuerySummary.add_member(:state, Shapes::ShapeRef.new(shape: QueryState, location_name: "state"))
    QuerySummary.struct_class = Types::QuerySummary

    QuerySummaryList.member = Shapes::ShapeRef.new(shape: QuerySummary)

    ResetGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    ResetGraphInput.add_member(:skip_snapshot, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "skipSnapshot"))
    ResetGraphInput.struct_class = Types::ResetGraphInput

    ResetGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    ResetGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    ResetGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    ResetGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    ResetGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ResetGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    ResetGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    ResetGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    ResetGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    ResetGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    ResetGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    ResetGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    ResetGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    ResetGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    ResetGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    ResetGraphOutput.struct_class = Types::ResetGraphOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreGraphFromSnapshotInput.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: SnapshotIdentifier, required: true, location: "uri", location_name: "snapshotIdentifier"))
    RestoreGraphFromSnapshotInput.add_member(:graph_name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "graphName"))
    RestoreGraphFromSnapshotInput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    RestoreGraphFromSnapshotInput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    RestoreGraphFromSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RestoreGraphFromSnapshotInput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    RestoreGraphFromSnapshotInput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    RestoreGraphFromSnapshotInput.struct_class = Types::RestoreGraphFromSnapshotInput

    RestoreGraphFromSnapshotOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    RestoreGraphFromSnapshotOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    RestoreGraphFromSnapshotOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    RestoreGraphFromSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    RestoreGraphFromSnapshotOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RestoreGraphFromSnapshotOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    RestoreGraphFromSnapshotOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    RestoreGraphFromSnapshotOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    RestoreGraphFromSnapshotOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    RestoreGraphFromSnapshotOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    RestoreGraphFromSnapshotOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    RestoreGraphFromSnapshotOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    RestoreGraphFromSnapshotOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    RestoreGraphFromSnapshotOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    RestoreGraphFromSnapshotOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    RestoreGraphFromSnapshotOutput.struct_class = Types::RestoreGraphFromSnapshotOutput

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartExportTaskInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location_name: "graphIdentifier"))
    StartExportTaskInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartExportTaskInput.add_member(:format, Shapes::ShapeRef.new(shape: ExportFormat, required: true, location_name: "format"))
    StartExportTaskInput.add_member(:destination, Shapes::ShapeRef.new(shape: StartExportTaskInputDestinationString, required: true, location_name: "destination"))
    StartExportTaskInput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyIdentifier"))
    StartExportTaskInput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    StartExportTaskInput.add_member(:export_filter, Shapes::ShapeRef.new(shape: ExportFilter, location_name: "exportFilter"))
    StartExportTaskInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartExportTaskInput.struct_class = Types::StartExportTaskInput

    StartExportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "graphId"))
    StartExportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartExportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    StartExportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, required: true, location_name: "status"))
    StartExportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: ExportFormat, required: true, location_name: "format"))
    StartExportTaskOutput.add_member(:destination, Shapes::ShapeRef.new(shape: StartExportTaskOutputDestinationString, required: true, location_name: "destination"))
    StartExportTaskOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyIdentifier"))
    StartExportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    StartExportTaskOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StartExportTaskOutput.add_member(:export_filter, Shapes::ShapeRef.new(shape: ExportFilter, location_name: "exportFilter"))
    StartExportTaskOutput.struct_class = Types::StartExportTaskOutput

    StartGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    StartGraphInput.struct_class = Types::StartGraphInput

    StartGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    StartGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    StartGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    StartGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    StartGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StartGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    StartGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    StartGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    StartGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    StartGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    StartGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    StartGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    StartGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    StartGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    StartGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    StartGraphOutput.struct_class = Types::StartGraphOutput

    StartImportTaskInput.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, location_name: "importOptions"))
    StartImportTaskInput.add_member(:fail_on_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "failOnError"))
    StartImportTaskInput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    StartImportTaskInput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    StartImportTaskInput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    StartImportTaskInput.add_member(:blank_node_handling, Shapes::ShapeRef.new(shape: BlankNodeHandling, location_name: "blankNodeHandling"))
    StartImportTaskInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    StartImportTaskInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartImportTaskInput.struct_class = Types::StartImportTaskInput

    StartImportTaskOutput.add_member(:graph_id, Shapes::ShapeRef.new(shape: GraphId, location_name: "graphId"))
    StartImportTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    StartImportTaskOutput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    StartImportTaskOutput.add_member(:format, Shapes::ShapeRef.new(shape: Format, location_name: "format"))
    StartImportTaskOutput.add_member(:parquet_type, Shapes::ShapeRef.new(shape: ParquetType, location_name: "parquetType"))
    StartImportTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartImportTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, required: true, location_name: "status"))
    StartImportTaskOutput.add_member(:import_options, Shapes::ShapeRef.new(shape: ImportOptions, location_name: "importOptions"))
    StartImportTaskOutput.struct_class = Types::StartImportTaskOutput

    StopGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    StopGraphInput.struct_class = Types::StopGraphInput

    StopGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    StopGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    StopGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    StopGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    StopGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    StopGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    StopGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    StopGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    StopGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    StopGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    StopGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    StopGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    StopGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    StopGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    StopGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    StopGraphOutput.struct_class = Types::StopGraphOutput

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnprocessableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    UnprocessableException.add_member(:reason, Shapes::ShapeRef.new(shape: UnprocessableExceptionReason, required: true, location_name: "reason"))
    UnprocessableException.struct_class = Types::UnprocessableException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateGraphInput.add_member(:graph_identifier, Shapes::ShapeRef.new(shape: GraphIdentifier, required: true, location: "uri", location_name: "graphIdentifier"))
    UpdateGraphInput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    UpdateGraphInput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    UpdateGraphInput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    UpdateGraphInput.struct_class = Types::UpdateGraphInput

    UpdateGraphOutput.add_member(:id, Shapes::ShapeRef.new(shape: GraphId, required: true, location_name: "id"))
    UpdateGraphOutput.add_member(:name, Shapes::ShapeRef.new(shape: GraphName, required: true, location_name: "name"))
    UpdateGraphOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    UpdateGraphOutput.add_member(:status, Shapes::ShapeRef.new(shape: GraphStatus, location_name: "status"))
    UpdateGraphOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateGraphOutput.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    UpdateGraphOutput.add_member(:provisioned_memory, Shapes::ShapeRef.new(shape: ProvisionedMemory, location_name: "provisionedMemory"))
    UpdateGraphOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    UpdateGraphOutput.add_member(:public_connectivity, Shapes::ShapeRef.new(shape: Boolean, location_name: "publicConnectivity"))
    UpdateGraphOutput.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: VectorSearchConfiguration, location_name: "vectorSearchConfiguration"))
    UpdateGraphOutput.add_member(:replica_count, Shapes::ShapeRef.new(shape: ReplicaCount, location_name: "replicaCount"))
    UpdateGraphOutput.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyIdentifier"))
    UpdateGraphOutput.add_member(:source_snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "sourceSnapshotId"))
    UpdateGraphOutput.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "deletionProtection"))
    UpdateGraphOutput.add_member(:build_number, Shapes::ShapeRef.new(shape: String, location_name: "buildNumber"))
    UpdateGraphOutput.struct_class = Types::UpdateGraphOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    VectorSearchConfiguration.add_member(:dimension, Shapes::ShapeRef.new(shape: VectorSearchDimension, required: true, location_name: "dimension"))
    VectorSearchConfiguration.struct_class = Types::VectorSearchConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-11-29"

      api.metadata = {
        "apiVersion" => "2023-11-29",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "neptune-graph",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Neptune Graph",
        "serviceFullName" => "Amazon Neptune Graph",
        "serviceId" => "Neptune Graph",
        "signatureVersion" => "v4",
        "signingName" => "neptune-graph",
        "uid" => "neptune-graph-2023-11-29",
      }

      api.add_operation(:cancel_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelExportTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/exporttasks/{taskIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: CancelExportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CancelExportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:cancel_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelImportTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/importtasks/{taskIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: CancelImportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CancelImportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:cancel_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuery"
        o.http_method = "DELETE"
        o.http_request_uri = "/queries/{queryId}"
        o.endpoint_pattern = {
          "hostPrefix" => "{graphIdentifier}.",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelQueryInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGraph"
        o.http_method = "POST"
        o.http_request_uri = "/graphs"
        o.input = Shapes::ShapeRef.new(shape: CreateGraphInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_graph_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGraphSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateGraphSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGraphSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_graph_using_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGraphUsingImportTask"
        o.http_method = "POST"
        o.http_request_uri = "/importtasks"
        o.input = Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGraphUsingImportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_private_graph_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivateGraphEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/{graphIdentifier}/endpoints/"
        o.input = Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePrivateGraphEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGraph"
        o.http_method = "DELETE"
        o.http_request_uri = "/graphs/{graphIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGraphInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_graph_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGraphSnapshot"
        o.http_method = "DELETE"
        o.http_request_uri = "/snapshots/{snapshotIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGraphSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGraphSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_private_graph_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrivateGraphEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/graphs/{graphIdentifier}/endpoints/{vpcId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePrivateGraphEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:execute_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteQuery"
        o.http_method = "POST"
        o.http_request_uri = "/queries"
        o.endpoint_pattern = {
          "hostPrefix" => "{graphIdentifier}.",
        }
        o.input = Shapes::ShapeRef.new(shape: ExecuteQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExportTask"
        o.http_method = "GET"
        o.http_request_uri = "/exporttasks/{taskIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetExportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetExportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGraph"
        o.http_method = "GET"
        o.http_request_uri = "/graphs/{graphIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGraphInput)
        o.output = Shapes::ShapeRef.new(shape: GetGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_graph_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGraphSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots/{snapshotIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGraphSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: GetGraphSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_graph_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGraphSummary"
        o.http_method = "GET"
        o.http_request_uri = "/summary"
        o.endpoint_pattern = {
          "hostPrefix" => "{graphIdentifier}.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetGraphSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetGraphSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportTask"
        o.http_method = "GET"
        o.http_request_uri = "/importtasks/{taskIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetImportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetImportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_private_graph_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPrivateGraphEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/graphs/{graphIdentifier}/endpoints/{vpcId}"
        o.input = Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: GetPrivateGraphEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuery"
        o.http_method = "GET"
        o.http_request_uri = "/queries/{queryId}"
        o.endpoint_pattern = {
          "hostPrefix" => "{graphIdentifier}.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_export_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExportTasks"
        o.http_method = "GET"
        o.http_request_uri = "/exporttasks"
        o.input = Shapes::ShapeRef.new(shape: ListExportTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListExportTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_graph_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGraphSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListGraphSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGraphSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_graphs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGraphs"
        o.http_method = "GET"
        o.http_request_uri = "/graphs"
        o.input = Shapes::ShapeRef.new(shape: ListGraphsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGraphsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportTasks"
        o.http_method = "GET"
        o.http_request_uri = "/importtasks"
        o.input = Shapes::ShapeRef.new(shape: ListImportTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListImportTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_private_graph_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrivateGraphEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/graphs/{graphIdentifier}/endpoints/"
        o.input = Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrivateGraphEndpointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueries"
        o.http_method = "GET"
        o.http_request_uri = "/queries"
        o.endpoint_pattern = {
          "hostPrefix" => "{graphIdentifier}.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reset_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetGraph"
        o.http_method = "PUT"
        o.http_request_uri = "/graphs/{graphIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: ResetGraphInput)
        o.output = Shapes::ShapeRef.new(shape: ResetGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:restore_graph_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreGraphFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/snapshots/{snapshotIdentifier}/restore"
        o.input = Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreGraphFromSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/exporttasks"
        o.input = Shapes::ShapeRef.new(shape: StartExportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartExportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartGraph"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/{graphIdentifier}/start"
        o.input = Shapes::ShapeRef.new(shape: StartGraphInput)
        o.output = Shapes::ShapeRef.new(shape: StartGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImportTask"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/{graphIdentifier}/importtasks"
        o.input = Shapes::ShapeRef.new(shape: StartImportTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartImportTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopGraph"
        o.http_method = "POST"
        o.http_request_uri = "/graphs/{graphIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopGraphInput)
        o.output = Shapes::ShapeRef.new(shape: StopGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGraph"
        o.http_method = "PATCH"
        o.http_request_uri = "/graphs/{graphIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGraphInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
