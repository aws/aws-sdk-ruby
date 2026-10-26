# frozen_string_literal: true

# This is generated code!

module Aws::Athena
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AclConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#AclConfiguration", name: "AclConfiguration")
    Age = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#Age", name: "Age", traits: {"smithy.api#range" => {"min" => 0, "max" => 10080}})
    AllocatedDpusInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#AllocatedDpusInteger", name: "AllocatedDpusInteger", traits: {"smithy.api#range" => {"min" => 0}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ApplicationDPUSizes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ApplicationDPUSizes", name: "ApplicationDPUSizes")
    ApplicationDPUSizesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ApplicationDPUSizesList", name: "ApplicationDPUSizesList")
    AthenaError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#AthenaError", name: "AthenaError")
    AuthToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#AuthToken", name: "AuthToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#AuthenticationType", name: "AuthenticationType")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    BatchGetNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetNamedQueryInput", name: "BatchGetNamedQueryInput")
    BatchGetNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetNamedQueryOutput", name: "BatchGetNamedQueryOutput")
    BatchGetPreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetPreparedStatementInput", name: "BatchGetPreparedStatementInput")
    BatchGetPreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetPreparedStatementOutput", name: "BatchGetPreparedStatementOutput")
    BatchGetQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetQueryExecutionInput", name: "BatchGetQueryExecutionInput")
    BatchGetQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#BatchGetQueryExecutionOutput", name: "BatchGetQueryExecutionOutput")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.athena#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.athena#BoxedBoolean", name: "BoxedBoolean")
    BytesScannedCutoffValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#BytesScannedCutoffValue", name: "BytesScannedCutoffValue", traits: {"smithy.api#range" => {"min" => 10000000}})
    CalculationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CalculationConfiguration", name: "CalculationConfiguration")
    CalculationExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CalculationExecutionId", name: "CalculationExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    CalculationExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#CalculationExecutionState", name: "CalculationExecutionState")
    CalculationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CalculationResult", name: "CalculationResult")
    CalculationResultType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CalculationResultType", name: "CalculationResultType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\w+\\/[-+.\\w]+$"})
    CalculationStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CalculationStatistics", name: "CalculationStatistics")
    CalculationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CalculationStatus", name: "CalculationStatus")
    CalculationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CalculationSummary", name: "CalculationSummary")
    CalculationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#CalculationsList", name: "CalculationsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CancelCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CancelCapacityReservationInput", name: "CancelCapacityReservationInput")
    CancelCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CancelCapacityReservationOutput", name: "CancelCapacityReservationOutput")
    CapacityAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CapacityAllocation", name: "CapacityAllocation")
    CapacityAllocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#CapacityAllocationStatus", name: "CapacityAllocationStatus")
    CapacityAssignment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CapacityAssignment", name: "CapacityAssignment")
    CapacityAssignmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CapacityAssignmentConfiguration", name: "CapacityAssignmentConfiguration")
    CapacityAssignmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#CapacityAssignmentsList", name: "CapacityAssignmentsList")
    CapacityReservation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CapacityReservation", name: "CapacityReservation")
    CapacityReservationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CapacityReservationName", name: "CapacityReservationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    CapacityReservationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#CapacityReservationStatus", name: "CapacityReservationStatus")
    CapacityReservationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#CapacityReservationsList", name: "CapacityReservationsList")
    CatalogNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CatalogNameString", name: "CatalogNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    Classification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Classification", name: "Classification")
    ClassificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ClassificationList", name: "ClassificationList")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    CloudWatchLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CloudWatchLoggingConfiguration", name: "CloudWatchLoggingConfiguration")
    CodeBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CodeBlock", name: "CodeBlock", traits: {"smithy.api#length" => {"min" => 0, "max" => 68000}})
    Column = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Column", name: "Column")
    ColumnInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ColumnInfo", name: "ColumnInfo")
    ColumnInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ColumnInfoList", name: "ColumnInfoList")
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ColumnList", name: "ColumnList")
    ColumnNullable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#ColumnNullable", name: "ColumnNullable")
    CommentString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#CommentString", name: "CommentString", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#ConnectionType", name: "ConnectionType")
    CoordinatorDpuSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#CoordinatorDpuSize", name: "CoordinatorDpuSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    CreateCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateCapacityReservationInput", name: "CreateCapacityReservationInput")
    CreateCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateCapacityReservationOutput", name: "CreateCapacityReservationOutput")
    CreateDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateDataCatalogInput", name: "CreateDataCatalogInput")
    CreateDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateDataCatalogOutput", name: "CreateDataCatalogOutput")
    CreateNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateNamedQueryInput", name: "CreateNamedQueryInput")
    CreateNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateNamedQueryOutput", name: "CreateNamedQueryOutput")
    CreateNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateNotebookInput", name: "CreateNotebookInput")
    CreateNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateNotebookOutput", name: "CreateNotebookOutput")
    CreatePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreatePreparedStatementInput", name: "CreatePreparedStatementInput")
    CreatePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreatePreparedStatementOutput", name: "CreatePreparedStatementOutput")
    CreatePresignedNotebookUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreatePresignedNotebookUrlRequest", name: "CreatePresignedNotebookUrlRequest")
    CreatePresignedNotebookUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreatePresignedNotebookUrlResponse", name: "CreatePresignedNotebookUrlResponse")
    CreateWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateWorkGroupInput", name: "CreateWorkGroupInput")
    CreateWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CreateWorkGroupOutput", name: "CreateWorkGroupOutput")
    CustomerContentEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#CustomerContentEncryptionConfiguration", name: "CustomerContentEncryptionConfiguration")
    DataCatalog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DataCatalog", name: "DataCatalog")
    DataCatalogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#DataCatalogStatus", name: "DataCatalogStatus")
    DataCatalogSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DataCatalogSummary", name: "DataCatalogSummary")
    DataCatalogSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#DataCatalogSummaryList", name: "DataCatalogSummaryList")
    DataCatalogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#DataCatalogType", name: "DataCatalogType")
    Database = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Database", name: "Database")
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#DatabaseList", name: "DatabaseList")
    DatabaseString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#DatabaseString", name: "DatabaseString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.athena#Date", name: "Date")
    Datum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Datum", name: "Datum")
    DefaultExecutorDpuSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#DefaultExecutorDpuSize", name: "DefaultExecutorDpuSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    DeleteCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteCapacityReservationInput", name: "DeleteCapacityReservationInput")
    DeleteCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteCapacityReservationOutput", name: "DeleteCapacityReservationOutput")
    DeleteDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteDataCatalogInput", name: "DeleteDataCatalogInput")
    DeleteDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteDataCatalogOutput", name: "DeleteDataCatalogOutput")
    DeleteNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteNamedQueryInput", name: "DeleteNamedQueryInput")
    DeleteNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteNamedQueryOutput", name: "DeleteNamedQueryOutput")
    DeleteNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteNotebookInput", name: "DeleteNotebookInput")
    DeleteNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteNotebookOutput", name: "DeleteNotebookOutput")
    DeletePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeletePreparedStatementInput", name: "DeletePreparedStatementInput")
    DeletePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeletePreparedStatementOutput", name: "DeletePreparedStatementOutput")
    DeleteWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteWorkGroupInput", name: "DeleteWorkGroupInput")
    DeleteWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#DeleteWorkGroupOutput", name: "DeleteWorkGroupOutput")
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#DescriptionString", name: "DescriptionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DpuCount = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.athena#DpuCount", name: "DpuCount")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#EncryptionOption", name: "EncryptionOption")
    EngineConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#EngineConfiguration", name: "EngineConfiguration")
    EngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#EngineVersion", name: "EngineVersion")
    EngineVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#EngineVersionsList", name: "EngineVersionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ErrorCategory = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#ErrorCategory", name: "ErrorCategory", traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ErrorMessage", name: "ErrorMessage")
    ErrorType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#ErrorType", name: "ErrorType", traits: {"smithy.api#range" => {"min" => 0, "max" => 9999}})
    ExecutionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ExecutionParameter", name: "ExecutionParameter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExecutionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ExecutionParameters", name: "ExecutionParameters", traits: {"smithy.api#length" => {"min" => 1}})
    ExecutorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ExecutorId", name: "ExecutorId", traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => ".*"})
    ExecutorState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#ExecutorState", name: "ExecutorState")
    ExecutorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#ExecutorType", name: "ExecutorType")
    ExecutorsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ExecutorsSummary", name: "ExecutorsSummary")
    ExecutorsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#ExecutorsSummaryList", name: "ExecutorsSummaryList")
    ExportNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ExportNotebookInput", name: "ExportNotebookInput")
    ExportNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ExportNotebookOutput", name: "ExportNotebookOutput")
    ExpressionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ExpressionString", name: "ExpressionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FilterDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#FilterDefinition", name: "FilterDefinition")
    GetCalculationExecutionCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionCodeRequest", name: "GetCalculationExecutionCodeRequest")
    GetCalculationExecutionCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionCodeResponse", name: "GetCalculationExecutionCodeResponse")
    GetCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionRequest", name: "GetCalculationExecutionRequest")
    GetCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionResponse", name: "GetCalculationExecutionResponse")
    GetCalculationExecutionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionStatusRequest", name: "GetCalculationExecutionStatusRequest")
    GetCalculationExecutionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCalculationExecutionStatusResponse", name: "GetCalculationExecutionStatusResponse")
    GetCapacityAssignmentConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCapacityAssignmentConfigurationInput", name: "GetCapacityAssignmentConfigurationInput")
    GetCapacityAssignmentConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCapacityAssignmentConfigurationOutput", name: "GetCapacityAssignmentConfigurationOutput")
    GetCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCapacityReservationInput", name: "GetCapacityReservationInput")
    GetCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetCapacityReservationOutput", name: "GetCapacityReservationOutput")
    GetDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetDataCatalogInput", name: "GetDataCatalogInput")
    GetDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetDataCatalogOutput", name: "GetDataCatalogOutput")
    GetDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetDatabaseInput", name: "GetDatabaseInput")
    GetDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetDatabaseOutput", name: "GetDatabaseOutput")
    GetNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetNamedQueryInput", name: "GetNamedQueryInput")
    GetNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetNamedQueryOutput", name: "GetNamedQueryOutput")
    GetNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetNotebookMetadataInput", name: "GetNotebookMetadataInput")
    GetNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetNotebookMetadataOutput", name: "GetNotebookMetadataOutput")
    GetPreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetPreparedStatementInput", name: "GetPreparedStatementInput")
    GetPreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetPreparedStatementOutput", name: "GetPreparedStatementOutput")
    GetQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryExecutionInput", name: "GetQueryExecutionInput")
    GetQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryExecutionOutput", name: "GetQueryExecutionOutput")
    GetQueryResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryResultsInput", name: "GetQueryResultsInput")
    GetQueryResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryResultsOutput", name: "GetQueryResultsOutput")
    GetQueryRuntimeStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryRuntimeStatisticsInput", name: "GetQueryRuntimeStatisticsInput")
    GetQueryRuntimeStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetQueryRuntimeStatisticsOutput", name: "GetQueryRuntimeStatisticsOutput")
    GetResourceDashboardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetResourceDashboardRequest", name: "GetResourceDashboardRequest")
    GetResourceDashboardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetResourceDashboardResponse", name: "GetResourceDashboardResponse")
    GetSessionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionEndpointRequest", name: "GetSessionEndpointRequest")
    GetSessionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionEndpointResponse", name: "GetSessionEndpointResponse")
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionRequest", name: "GetSessionRequest")
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionResponse", name: "GetSessionResponse")
    GetSessionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionStatusRequest", name: "GetSessionStatusRequest")
    GetSessionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetSessionStatusResponse", name: "GetSessionStatusResponse")
    GetTableMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetTableMetadataInput", name: "GetTableMetadataInput")
    GetTableMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetTableMetadataOutput", name: "GetTableMetadataOutput")
    GetWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetWorkGroupInput", name: "GetWorkGroupInput")
    GetWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#GetWorkGroupOutput", name: "GetWorkGroupOutput")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 128}})
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#IdentityCenterApplicationArn", name: "IdentityCenterApplicationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#IdentityCenterConfiguration", name: "IdentityCenterConfiguration")
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    ImportNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ImportNotebookInput", name: "ImportNotebookInput")
    ImportNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ImportNotebookOutput", name: "ImportNotebookOutput")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    KeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#KeyString", name: "KeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#KmsKey", name: "KmsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:key/?[a-zA-Z_0-9+=,.@\\-_/]+$|^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:alias/?[a-zA-Z_0-9+=,.@\\-_/]+$|^alias/[a-zA-Z0-9/_-]+$|[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ListApplicationDPUSizesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListApplicationDPUSizesInput", name: "ListApplicationDPUSizesInput")
    ListApplicationDPUSizesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListApplicationDPUSizesOutput", name: "ListApplicationDPUSizesOutput")
    ListCalculationExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListCalculationExecutionsRequest", name: "ListCalculationExecutionsRequest")
    ListCalculationExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListCalculationExecutionsResponse", name: "ListCalculationExecutionsResponse")
    ListCapacityReservationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListCapacityReservationsInput", name: "ListCapacityReservationsInput")
    ListCapacityReservationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListCapacityReservationsOutput", name: "ListCapacityReservationsOutput")
    ListDataCatalogsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListDataCatalogsInput", name: "ListDataCatalogsInput")
    ListDataCatalogsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListDataCatalogsOutput", name: "ListDataCatalogsOutput")
    ListDatabasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListDatabasesInput", name: "ListDatabasesInput")
    ListDatabasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListDatabasesOutput", name: "ListDatabasesOutput")
    ListEngineVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListEngineVersionsInput", name: "ListEngineVersionsInput")
    ListEngineVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListEngineVersionsOutput", name: "ListEngineVersionsOutput")
    ListExecutorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListExecutorsRequest", name: "ListExecutorsRequest")
    ListExecutorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListExecutorsResponse", name: "ListExecutorsResponse")
    ListNamedQueriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNamedQueriesInput", name: "ListNamedQueriesInput")
    ListNamedQueriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNamedQueriesOutput", name: "ListNamedQueriesOutput")
    ListNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNotebookMetadataInput", name: "ListNotebookMetadataInput")
    ListNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNotebookMetadataOutput", name: "ListNotebookMetadataOutput")
    ListNotebookSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNotebookSessionsRequest", name: "ListNotebookSessionsRequest")
    ListNotebookSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListNotebookSessionsResponse", name: "ListNotebookSessionsResponse")
    ListPreparedStatementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListPreparedStatementsInput", name: "ListPreparedStatementsInput")
    ListPreparedStatementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListPreparedStatementsOutput", name: "ListPreparedStatementsOutput")
    ListQueryExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListQueryExecutionsInput", name: "ListQueryExecutionsInput")
    ListQueryExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListQueryExecutionsOutput", name: "ListQueryExecutionsOutput")
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListSessionsRequest", name: "ListSessionsRequest")
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListSessionsResponse", name: "ListSessionsResponse")
    ListTableMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListTableMetadataInput", name: "ListTableMetadataInput")
    ListTableMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListTableMetadataOutput", name: "ListTableMetadataOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWorkGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListWorkGroupsInput", name: "ListWorkGroupsInput")
    ListWorkGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ListWorkGroupsOutput", name: "ListWorkGroupsOutput")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9._/-]+$"})
    LogStreamNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#LogStreamNamePrefix", name: "LogStreamNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    LogTypeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#LogTypeKey", name: "LogTypeKey")
    LogTypeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#LogTypeValue", name: "LogTypeValue")
    LogTypeValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#LogTypeValuesList", name: "LogTypeValuesList")
    LogTypesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.athena#LogTypesMap", name: "LogTypesMap")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#Long", name: "Long")
    ManagedLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ManagedLoggingConfiguration", name: "ManagedLoggingConfiguration")
    ManagedQueryResultsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ManagedQueryResultsConfiguration", name: "ManagedQueryResultsConfiguration")
    ManagedQueryResultsConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ManagedQueryResultsConfigurationUpdates", name: "ManagedQueryResultsConfigurationUpdates")
    ManagedQueryResultsEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ManagedQueryResultsEncryptionConfiguration", name: "ManagedQueryResultsEncryptionConfiguration")
    MaxApplicationDPUSizesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxApplicationDPUSizesCount", name: "MaxApplicationDPUSizesCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCalculationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxCalculationsCount", name: "MaxCalculationsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCapacityReservationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxCapacityReservationsCount", name: "MaxCapacityReservationsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxConcurrentDpus = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxConcurrentDpus", name: "MaxConcurrentDpus", traits: {"smithy.api#range" => {"min" => 2, "max" => 5000}})
    MaxDataCatalogsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxDataCatalogsCount", name: "MaxDataCatalogsCount", traits: {"smithy.api#range" => {"min" => 2, "max" => 50}})
    MaxDatabasesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxDatabasesCount", name: "MaxDatabasesCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxEngineVersionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxEngineVersionsCount", name: "MaxEngineVersionsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxListExecutorsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxListExecutorsCount", name: "MaxListExecutorsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxNamedQueriesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxNamedQueriesCount", name: "MaxNamedQueriesCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxNotebooksCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxNotebooksCount", name: "MaxNotebooksCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxPreparedStatementsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxPreparedStatementsCount", name: "MaxPreparedStatementsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxQueryExecutionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxQueryExecutionsCount", name: "MaxQueryExecutionsCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxQueryResults", name: "MaxQueryResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSessionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxSessionsCount", name: "MaxSessionsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxTableMetadataCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxTableMetadataCount", name: "MaxTableMetadataCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxTagsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxTagsCount", name: "MaxTagsCount", traits: {"smithy.api#range" => {"min" => 75}})
    MaxWorkGroupsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#MaxWorkGroupsCount", name: "MaxWorkGroupsCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MetadataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#MetadataException", name: "MetadataException", traits: {"smithy.api#error" => "client"})
    MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#MonitoringConfiguration", name: "MonitoringConfiguration")
    NameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#NameString", name: "NameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    NamedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#NamedQuery", name: "NamedQuery")
    NamedQueryDescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#NamedQueryDescriptionString", name: "NamedQueryDescriptionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    NamedQueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#NamedQueryId", name: "NamedQueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    NamedQueryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#NamedQueryIdList", name: "NamedQueryIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NamedQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#NamedQueryList", name: "NamedQueryList")
    NotebookId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#NotebookId", name: "NotebookId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NotebookMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#NotebookMetadata", name: "NotebookMetadata")
    NotebookMetadataArray = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#NotebookMetadataArray", name: "NotebookMetadataArray")
    NotebookName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#NotebookName", name: "NotebookName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!.*[/:\\\\])[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]+$"})
    NotebookSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#NotebookSessionSummary", name: "NotebookSessionSummary")
    NotebookSessionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#NotebookSessionsList", name: "NotebookSessionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NotebookType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#NotebookType", name: "NotebookType")
    ParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.athena#ParametersMap", name: "ParametersMap")
    ParametersMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ParametersMapValue", name: "ParametersMapValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}})
    Payload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#Payload", name: "Payload", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    PreparedStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#PreparedStatement", name: "PreparedStatement")
    PreparedStatementDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#PreparedStatementDetailsList", name: "PreparedStatementDetailsList")
    PreparedStatementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#PreparedStatementNameList", name: "PreparedStatementNameList")
    PreparedStatementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#PreparedStatementSummary", name: "PreparedStatementSummary")
    PreparedStatementsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#PreparedStatementsList", name: "PreparedStatementsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PutCapacityAssignmentConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#PutCapacityAssignmentConfigurationInput", name: "PutCapacityAssignmentConfigurationInput")
    PutCapacityAssignmentConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#PutCapacityAssignmentConfigurationOutput", name: "PutCapacityAssignmentConfigurationOutput")
    QueryExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryExecution", name: "QueryExecution")
    QueryExecutionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryExecutionContext", name: "QueryExecutionContext")
    QueryExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#QueryExecutionId", name: "QueryExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    QueryExecutionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#QueryExecutionIdList", name: "QueryExecutionIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    QueryExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#QueryExecutionList", name: "QueryExecutionList")
    QueryExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#QueryExecutionState", name: "QueryExecutionState")
    QueryExecutionStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryExecutionStatistics", name: "QueryExecutionStatistics")
    QueryExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryExecutionStatus", name: "QueryExecutionStatus")
    QueryResultType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#QueryResultType", name: "QueryResultType")
    QueryResultsS3AccessGrantsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryResultsS3AccessGrantsConfiguration", name: "QueryResultsS3AccessGrantsConfiguration")
    QueryRuntimeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryRuntimeStatistics", name: "QueryRuntimeStatistics")
    QueryRuntimeStatisticsRows = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryRuntimeStatisticsRows", name: "QueryRuntimeStatisticsRows")
    QueryRuntimeStatisticsTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryRuntimeStatisticsTimeline", name: "QueryRuntimeStatisticsTimeline")
    QueryStage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryStage", name: "QueryStage")
    QueryStagePlanNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#QueryStagePlanNode", name: "QueryStagePlanNode")
    QueryStagePlanNodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#QueryStagePlanNodes", name: "QueryStagePlanNodes")
    QueryStages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#QueryStages", name: "QueryStages")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResultConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultConfiguration", name: "ResultConfiguration")
    ResultConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultConfigurationUpdates", name: "ResultConfigurationUpdates")
    ResultOutputLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#ResultOutputLocation", name: "ResultOutputLocation")
    ResultReuseByAgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultReuseByAgeConfiguration", name: "ResultReuseByAgeConfiguration")
    ResultReuseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultReuseConfiguration", name: "ResultReuseConfiguration")
    ResultReuseInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultReuseInformation", name: "ResultReuseInformation")
    ResultSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultSet", name: "ResultSet")
    ResultSetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#ResultSetMetadata", name: "ResultSetMetadata")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Row", name: "Row")
    RowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#RowList", name: "RowList")
    S3AclOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#S3AclOption", name: "S3AclOption")
    S3LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#S3LoggingConfiguration", name: "S3LoggingConfiguration")
    S3OutputLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#S3OutputLocation", name: "S3OutputLocation", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9\\-]*[a-z0-9](/.*)?$"})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(https|s3|S3)://([^/]+)/?(.*)$"})
    SessionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#SessionAlreadyExistsException", name: "SessionAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    SessionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#SessionConfiguration", name: "SessionConfiguration")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SessionIdleTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#SessionIdleTimeoutInMinutes", name: "SessionIdleTimeoutInMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 480}})
    SessionManagerToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#SessionManagerToken", name: "SessionManagerToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SessionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#SessionState", name: "SessionState")
    SessionStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#SessionStatistics", name: "SessionStatistics")
    SessionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#SessionStatus", name: "SessionStatus")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#SessionSummary", name: "SessionSummary")
    SessionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#SessionsList", name: "SessionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartCalculationExecutionRequest", name: "StartCalculationExecutionRequest")
    StartCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartCalculationExecutionResponse", name: "StartCalculationExecutionResponse")
    StartQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartQueryExecutionInput", name: "StartQueryExecutionInput")
    StartQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartQueryExecutionOutput", name: "StartQueryExecutionOutput")
    StartSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartSessionRequest", name: "StartSessionRequest")
    StartSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StartSessionResponse", name: "StartSessionResponse")
    StatementName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#StatementName", name: "StatementName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_@:]{1,256}$"})
    StatementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#StatementType", name: "StatementType")
    StopCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StopCalculationExecutionRequest", name: "StopCalculationExecutionRequest")
    StopCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StopCalculationExecutionResponse", name: "StopCalculationExecutionResponse")
    StopQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StopQueryExecutionInput", name: "StopQueryExecutionInput")
    StopQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#StopQueryExecutionOutput", name: "StopQueryExecutionOutput")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#StringList", name: "StringList")
    SupportedDPUSizeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#SupportedDPUSizeList", name: "SupportedDPUSizeList")
    TableMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TableMetadata", name: "TableMetadata")
    TableMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#TableMetadataList", name: "TableMetadataList")
    TableTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#TableTypeString", name: "TableTypeString", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetDpusInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.athena#TargetDpusInteger", name: "TargetDpusInteger", traits: {"smithy.api#range" => {"min" => 4}})
    TerminateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TerminateSessionRequest", name: "TerminateSessionRequest")
    TerminateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TerminateSessionResponse", name: "TerminateSessionResponse")
    ThrottleReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#ThrottleReason", name: "ThrottleReason")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.athena#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client"})
    TypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#TypeString", name: "TypeString", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    UnprocessedNamedQueryId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UnprocessedNamedQueryId", name: "UnprocessedNamedQueryId")
    UnprocessedNamedQueryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#UnprocessedNamedQueryIdList", name: "UnprocessedNamedQueryIdList")
    UnprocessedPreparedStatementName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UnprocessedPreparedStatementName", name: "UnprocessedPreparedStatementName")
    UnprocessedPreparedStatementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#UnprocessedPreparedStatementNameList", name: "UnprocessedPreparedStatementNameList")
    UnprocessedQueryExecutionId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UnprocessedQueryExecutionId", name: "UnprocessedQueryExecutionId")
    UnprocessedQueryExecutionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#UnprocessedQueryExecutionIdList", name: "UnprocessedQueryExecutionIdList")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateCapacityReservationInput", name: "UpdateCapacityReservationInput")
    UpdateCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateCapacityReservationOutput", name: "UpdateCapacityReservationOutput")
    UpdateDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateDataCatalogInput", name: "UpdateDataCatalogInput")
    UpdateDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateDataCatalogOutput", name: "UpdateDataCatalogOutput")
    UpdateNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNamedQueryInput", name: "UpdateNamedQueryInput")
    UpdateNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNamedQueryOutput", name: "UpdateNamedQueryOutput")
    UpdateNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNotebookInput", name: "UpdateNotebookInput")
    UpdateNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNotebookMetadataInput", name: "UpdateNotebookMetadataInput")
    UpdateNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNotebookMetadataOutput", name: "UpdateNotebookMetadataOutput")
    UpdateNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateNotebookOutput", name: "UpdateNotebookOutput")
    UpdatePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdatePreparedStatementInput", name: "UpdatePreparedStatementInput")
    UpdatePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdatePreparedStatementOutput", name: "UpdatePreparedStatementOutput")
    UpdateWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateWorkGroupInput", name: "UpdateWorkGroupInput")
    UpdateWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#UpdateWorkGroupOutput", name: "UpdateWorkGroupOutput")
    WorkGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#WorkGroup", name: "WorkGroup")
    WorkGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#WorkGroupConfiguration", name: "WorkGroupConfiguration")
    WorkGroupConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#WorkGroupConfigurationUpdates", name: "WorkGroupConfigurationUpdates")
    WorkGroupDescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#WorkGroupDescriptionString", name: "WorkGroupDescriptionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    WorkGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#WorkGroupName", name: "WorkGroupName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]{1,128}$"})
    WorkGroupNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#WorkGroupNamesList", name: "WorkGroupNamesList")
    WorkGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.athena#WorkGroupState", name: "WorkGroupState")
    WorkGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.athena#WorkGroupSummary", name: "WorkGroupSummary")
    WorkGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#WorkGroupsList", name: "WorkGroupsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DatumList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.athena#datumList", name: "DatumList")
    DatumString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.athena#datumString", name: "DatumString")

    AclConfiguration.add_member(:s3_acl_option, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AclOption, name: "S3AclOption", traits: {"smithy.api#required" => {}}))
    AclConfiguration.type = Types::AclConfiguration
    ApplicationDPUSizes.add_member(:application_runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "ApplicationRuntimeId"))
    ApplicationDPUSizes.add_member(:supported_dpu_sizes, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedDPUSizeList, name: "SupportedDPUSizes"))
    ApplicationDPUSizes.type = Types::ApplicationDPUSizes
    ApplicationDPUSizesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDPUSizes, name: "member"))
    AthenaError.add_member(:error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCategory, name: "ErrorCategory"))
    AthenaError.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorType, name: "ErrorType"))
    AthenaError.add_member(:retryable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Retryable", traits: {"smithy.api#default" => false}))
    AthenaError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    AthenaError.type = Types::AthenaError
    AuthenticationType.add_member(:directory_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_IDENTITY", traits: {"smithy.api#enumValue" => "DIRECTORY_IDENTITY"}))
    BatchGetNamedQueryInput.add_member(:named_query_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryIdList, name: "NamedQueryIds", traits: {"smithy.api#required" => {}}))
    BatchGetNamedQueryInput.type = Types::BatchGetNamedQueryInput
    BatchGetNamedQueryOutput.add_member(:named_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryList, name: "NamedQueries"))
    BatchGetNamedQueryOutput.add_member(:unprocessed_named_query_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedNamedQueryIdList, name: "UnprocessedNamedQueryIds"))
    BatchGetNamedQueryOutput.type = Types::BatchGetNamedQueryOutput
    BatchGetPreparedStatementInput.add_member(:prepared_statement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementNameList, name: "PreparedStatementNames", traits: {"smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.type = Types::BatchGetPreparedStatementInput
    BatchGetPreparedStatementOutput.add_member(:prepared_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementDetailsList, name: "PreparedStatements"))
    BatchGetPreparedStatementOutput.add_member(:unprocessed_prepared_statement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedPreparedStatementNameList, name: "UnprocessedPreparedStatementNames"))
    BatchGetPreparedStatementOutput.type = Types::BatchGetPreparedStatementOutput
    BatchGetQueryExecutionInput.add_member(:query_execution_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionIdList, name: "QueryExecutionIds", traits: {"smithy.api#required" => {}}))
    BatchGetQueryExecutionInput.type = Types::BatchGetQueryExecutionInput
    BatchGetQueryExecutionOutput.add_member(:query_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionList, name: "QueryExecutions"))
    BatchGetQueryExecutionOutput.add_member(:unprocessed_query_execution_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedQueryExecutionIdList, name: "UnprocessedQueryExecutionIds"))
    BatchGetQueryExecutionOutput.type = Types::BatchGetQueryExecutionOutput
    CalculationConfiguration.add_member(:code_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeBlock, name: "CodeBlock"))
    CalculationConfiguration.type = Types::CalculationConfiguration
    CalculationExecutionState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CalculationExecutionState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    CalculationExecutionState.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    CalculationExecutionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    CalculationExecutionState.add_member(:canceling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELING", traits: {"smithy.api#enumValue" => "CANCELING"}))
    CalculationExecutionState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    CalculationExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CalculationExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CalculationResult.add_member(:std_out_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "StdOutS3Uri"))
    CalculationResult.add_member(:std_error_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "StdErrorS3Uri"))
    CalculationResult.add_member(:result_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "ResultS3Uri"))
    CalculationResult.add_member(:result_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationResultType, name: "ResultType"))
    CalculationResult.type = Types::CalculationResult
    CalculationStatistics.add_member(:dpu_execution_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DpuExecutionInMillis"))
    CalculationStatistics.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Progress"))
    CalculationStatistics.type = Types::CalculationStatistics
    CalculationStatus.add_member(:submission_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "SubmissionDateTime"))
    CalculationStatus.add_member(:completion_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CompletionDateTime"))
    CalculationStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionState, name: "State"))
    CalculationStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "StateChangeReason"))
    CalculationStatus.type = Types::CalculationStatus
    CalculationSummary.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId"))
    CalculationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CalculationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationStatus, name: "Status"))
    CalculationSummary.type = Types::CalculationSummary
    CalculationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationSummary, name: "member"))
    CancelCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CancelCapacityReservationInput.type = Types::CancelCapacityReservationInput
    CancelCapacityReservationOutput.type = Types::CancelCapacityReservationOutput
    CapacityAllocation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAllocationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CapacityAllocation.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    CapacityAllocation.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RequestTime", traits: {"smithy.api#required" => {}}))
    CapacityAllocation.add_member(:request_completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RequestCompletionTime"))
    CapacityAllocation.type = Types::CapacityAllocation
    CapacityAllocationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityAllocationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CapacityAllocationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityAssignment.add_member(:work_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupNamesList, name: "WorkGroupNames"))
    CapacityAssignment.type = Types::CapacityAssignment
    CapacityAssignmentConfiguration.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "CapacityReservationName"))
    CapacityAssignmentConfiguration.add_member(:capacity_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAssignmentsList, name: "CapacityAssignments"))
    CapacityAssignmentConfiguration.type = Types::CapacityAssignmentConfiguration
    CapacityAssignmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAssignment, name: "member"))
    CapacityReservation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:target_dpus, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDpusInteger, name: "TargetDpus", traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:allocated_dpus, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedDpusInteger, name: "AllocatedDpus", traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:last_allocation, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAllocation, name: "LastAllocation"))
    CapacityReservation.add_member(:last_successful_allocation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSuccessfulAllocationTime"))
    CapacityReservation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CapacityReservation.type = Types::CapacityReservation
    CapacityReservationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityReservationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CapacityReservationStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    CapacityReservationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CapacityReservationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityReservationStatus.add_member(:update_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_PENDING", traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    CapacityReservationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservation, name: "member"))
    Classification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name"))
    Classification.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Properties"))
    Classification.type = Types::Classification
    ClassificationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Classification, name: "member"))
    CloudWatchLoggingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingConfiguration.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroup"))
    CloudWatchLoggingConfiguration.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamNamePrefix, name: "LogStreamNamePrefix"))
    CloudWatchLoggingConfiguration.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypesMap, name: "LogTypes"))
    CloudWatchLoggingConfiguration.type = Types::CloudWatchLoggingConfiguration
    Column.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    Column.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeString, name: "Type"))
    Column.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentString, name: "Comment"))
    Column.type = Types::Column
    ColumnInfo.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CatalogName"))
    ColumnInfo.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    ColumnInfo.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableName"))
    ColumnInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ColumnInfo.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Label"))
    ColumnInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#required" => {}}))
    ColumnInfo.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Precision", traits: {"smithy.api#default" => 0}))
    ColumnInfo.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Scale", traits: {"smithy.api#default" => 0}))
    ColumnInfo.add_member(:nullable, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnNullable, name: "Nullable"))
    ColumnInfo.add_member(:case_sensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CaseSensitive", traits: {"smithy.api#default" => false}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnInfo, name: "member"))
    ColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Column, name: "member"))
    ColumnNullable.add_member(:not_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_NULL", traits: {"smithy.api#enumValue" => "NOT_NULL"}))
    ColumnNullable.add_member(:nullable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NULLABLE", traits: {"smithy.api#enumValue" => "NULLABLE"}))
    ColumnNullable.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ConnectionType.add_member(:dynamodb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMODB", traits: {"smithy.api#enumValue" => "DYNAMODB"}))
    ConnectionType.add_member(:mysql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYSQL", traits: {"smithy.api#enumValue" => "MYSQL"}))
    ConnectionType.add_member(:postgresql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTGRESQL", traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    ConnectionType.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT", traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    ConnectionType.add_member(:oracle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORACLE", traits: {"smithy.api#enumValue" => "ORACLE"}))
    ConnectionType.add_member(:synapse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNAPSE", traits: {"smithy.api#enumValue" => "SYNAPSE"}))
    ConnectionType.add_member(:sqlserver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQLSERVER", traits: {"smithy.api#enumValue" => "SQLSERVER"}))
    ConnectionType.add_member(:db2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB2", traits: {"smithy.api#enumValue" => "DB2"}))
    ConnectionType.add_member(:opensearch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENSEARCH", traits: {"smithy.api#enumValue" => "OPENSEARCH"}))
    ConnectionType.add_member(:bigquery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIGQUERY", traits: {"smithy.api#enumValue" => "BIGQUERY"}))
    ConnectionType.add_member(:googlecloudstorage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOGLECLOUDSTORAGE", traits: {"smithy.api#enumValue" => "GOOGLECLOUDSTORAGE"}))
    ConnectionType.add_member(:hbase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HBASE", traits: {"smithy.api#enumValue" => "HBASE"}))
    ConnectionType.add_member(:documentdb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENTDB", traits: {"smithy.api#enumValue" => "DOCUMENTDB"}))
    ConnectionType.add_member(:cmdb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMDB", traits: {"smithy.api#enumValue" => "CMDB"}))
    ConnectionType.add_member(:tpcds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TPCDS", traits: {"smithy.api#enumValue" => "TPCDS"}))
    ConnectionType.add_member(:timestream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMESTREAM", traits: {"smithy.api#enumValue" => "TIMESTREAM"}))
    ConnectionType.add_member(:saphana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAPHANA", traits: {"smithy.api#enumValue" => "SAPHANA"}))
    ConnectionType.add_member(:snowflake, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOWFLAKE", traits: {"smithy.api#enumValue" => "SNOWFLAKE"}))
    ConnectionType.add_member(:datalakegen2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATALAKEGEN2", traits: {"smithy.api#enumValue" => "DATALAKEGEN2"}))
    ConnectionType.add_member(:db2_as400, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB2AS400", traits: {"smithy.api#enumValue" => "DB2AS400"}))
    CreateCapacityReservationInput.add_member(:target_dpus, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDpusInteger, name: "TargetDpus", traits: {"smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCapacityReservationInput.type = Types::CreateCapacityReservationInput
    CreateCapacityReservationOutput.type = Types::CreateCapacityReservationOutput
    CreateDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreateDataCatalogInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    CreateDataCatalogInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDataCatalogInput.type = Types::CreateDataCatalogInput
    CreateDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalog, name: "DataCatalog"))
    CreateDataCatalogOutput.type = Types::CreateDataCatalogOutput
    CreateNamedQueryInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreateNamedQueryInput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseString, name: "Database", traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNamedQueryInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    CreateNamedQueryInput.type = Types::CreateNamedQueryInput
    CreateNamedQueryOutput.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId"))
    CreateNamedQueryOutput.type = Types::CreateNamedQueryOutput
    CreateNotebookInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    CreateNotebookInput.type = Types::CreateNotebookInput
    CreateNotebookOutput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId"))
    CreateNotebookOutput.type = Types::CreateNotebookOutput
    CreatePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName", traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryStatement", traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreatePreparedStatementInput.type = Types::CreatePreparedStatementInput
    CreatePreparedStatementOutput.type = Types::CreatePreparedStatementOutput
    CreatePresignedNotebookUrlRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlRequest.type = Types::CreatePresignedNotebookUrlRequest
    CreatePresignedNotebookUrlResponse.add_member(:notebook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotebookUrl", traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthToken, name: "AuthToken", traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AuthTokenExpirationTime", traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.type = Types::CreatePresignedNotebookUrlResponse
    CreateWorkGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWorkGroupInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupConfiguration, name: "Configuration"))
    CreateWorkGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupDescriptionString, name: "Description"))
    CreateWorkGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWorkGroupInput.type = Types::CreateWorkGroupInput
    CreateWorkGroupOutput.type = Types::CreateWorkGroupOutput
    CustomerContentEncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey", traits: {"smithy.api#required" => {}}))
    CustomerContentEncryptionConfiguration.type = Types::CustomerContentEncryptionConfiguration
    DataCatalog.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    DataCatalog.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    DataCatalog.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogType, name: "Type", traits: {"smithy.api#required" => {}}))
    DataCatalog.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    DataCatalog.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogStatus, name: "Status"))
    DataCatalog.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType"))
    DataCatalog.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Error"))
    DataCatalog.type = Types::DataCatalog
    DataCatalogStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED_CLEANUP_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED_CLEANUP_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED_CLEANUP_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_FAILED"}))
    DataCatalogStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    DataCatalogStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DataCatalogSummary.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "CatalogName"))
    DataCatalogSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogType, name: "Type"))
    DataCatalogSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogStatus, name: "Status"))
    DataCatalogSummary.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType"))
    DataCatalogSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Error"))
    DataCatalogSummary.type = Types::DataCatalogSummary
    DataCatalogSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogSummary, name: "member"))
    DataCatalogType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    DataCatalogType.add_member(:glue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLUE", traits: {"smithy.api#enumValue" => "GLUE"}))
    DataCatalogType.add_member(:hive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIVE", traits: {"smithy.api#enumValue" => "HIVE"}))
    DataCatalogType.add_member(:federated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEDERATED", traits: {"smithy.api#enumValue" => "FEDERATED"}))
    Database.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    Database.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    Database.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    Database.type = Types::Database
    DatabaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "member"))
    Datum.add_member(:var_char_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumString, name: "VarCharValue"))
    Datum.type = Types::Datum
    DeleteCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteCapacityReservationInput.type = Types::DeleteCapacityReservationInput
    DeleteCapacityReservationOutput.type = Types::DeleteCapacityReservationOutput
    DeleteDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteDataCatalogInput.add_member(:delete_catalog_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteCatalogOnly", traits: {"smithy.api#default" => false}))
    DeleteDataCatalogInput.type = Types::DeleteDataCatalogInput
    DeleteDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalog, name: "DataCatalog"))
    DeleteDataCatalogOutput.type = Types::DeleteDataCatalogOutput
    DeleteNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteNamedQueryInput.type = Types::DeleteNamedQueryInput
    DeleteNamedQueryOutput.type = Types::DeleteNamedQueryOutput
    DeleteNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    DeleteNotebookInput.type = Types::DeleteNotebookInput
    DeleteNotebookOutput.type = Types::DeleteNotebookOutput
    DeletePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName", traits: {"smithy.api#required" => {}}))
    DeletePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    DeletePreparedStatementInput.type = Types::DeletePreparedStatementInput
    DeletePreparedStatementOutput.type = Types::DeletePreparedStatementOutput
    DeleteWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    DeleteWorkGroupInput.add_member(:recursive_delete_option, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RecursiveDeleteOption"))
    DeleteWorkGroupInput.type = Types::DeleteWorkGroupInput
    DeleteWorkGroupOutput.type = Types::DeleteWorkGroupOutput
    EncryptionConfiguration.add_member(:encryption_option, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionOption, name: "EncryptionOption", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKey"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionOption.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_S3", traits: {"smithy.api#enumValue" => "SSE_S3"}))
    EncryptionOption.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_KMS", traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    EncryptionOption.add_member(:cse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSE_KMS", traits: {"smithy.api#enumValue" => "CSE_KMS"}))
    EngineConfiguration.add_member(:coordinator_dpu_size, ::Smithy::Schema::Shapes::MemberShape.new(target: CoordinatorDpuSize, name: "CoordinatorDpuSize"))
    EngineConfiguration.add_member(:max_concurrent_dpus, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentDpus, name: "MaxConcurrentDpus", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 20}))
    EngineConfiguration.add_member(:default_executor_dpu_size, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultExecutorDpuSize, name: "DefaultExecutorDpuSize"))
    EngineConfiguration.add_member(:additional_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "AdditionalConfigs"))
    EngineConfiguration.add_member(:spark_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "SparkProperties"))
    EngineConfiguration.add_member(:classifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassificationList, name: "Classifications"))
    EngineConfiguration.type = Types::EngineConfiguration
    EngineVersion.add_member(:selected_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "SelectedEngineVersion"))
    EngineVersion.add_member(:effective_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "EffectiveEngineVersion"))
    EngineVersion.type = Types::EngineVersion
    EngineVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "member"))
    ExecutionParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameter, name: "member"))
    ExecutorState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ExecutorState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ExecutorState.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    ExecutorState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ExecutorState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ExecutorState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutorType.add_member(:coordinator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COORDINATOR", traits: {"smithy.api#enumValue" => "COORDINATOR"}))
    ExecutorType.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GATEWAY", traits: {"smithy.api#enumValue" => "GATEWAY"}))
    ExecutorType.add_member(:worker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKER", traits: {"smithy.api#enumValue" => "WORKER"}))
    ExecutorsSummary.add_member(:executor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorId, name: "ExecutorId", traits: {"smithy.api#required" => {}}))
    ExecutorsSummary.add_member(:executor_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorType, name: "ExecutorType"))
    ExecutorsSummary.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "StartDateTime"))
    ExecutorsSummary.add_member(:termination_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TerminationDateTime"))
    ExecutorsSummary.add_member(:executor_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorState, name: "ExecutorState"))
    ExecutorsSummary.add_member(:executor_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ExecutorSize"))
    ExecutorsSummary.type = Types::ExecutorsSummary
    ExecutorsSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorsSummary, name: "member"))
    ExportNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    ExportNotebookInput.type = Types::ExportNotebookInput
    ExportNotebookOutput.add_member(:notebook_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookMetadata, name: "NotebookMetadata"))
    ExportNotebookOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload"))
    ExportNotebookOutput.type = Types::ExportNotebookOutput
    FilterDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookName, name: "Name"))
    FilterDefinition.type = Types::FilterDefinition
    GetCalculationExecutionCodeRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId", traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionCodeRequest.type = Types::GetCalculationExecutionCodeRequest
    GetCalculationExecutionCodeResponse.add_member(:code_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeBlock, name: "CodeBlock"))
    GetCalculationExecutionCodeResponse.type = Types::GetCalculationExecutionCodeResponse
    GetCalculationExecutionRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId", traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionRequest.type = Types::GetCalculationExecutionRequest
    GetCalculationExecutionResponse.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId"))
    GetCalculationExecutionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    GetCalculationExecutionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    GetCalculationExecutionResponse.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "WorkingDirectory"))
    GetCalculationExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationStatus, name: "Status"))
    GetCalculationExecutionResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationStatistics, name: "Statistics"))
    GetCalculationExecutionResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationResult, name: "Result"))
    GetCalculationExecutionResponse.type = Types::GetCalculationExecutionResponse
    GetCalculationExecutionStatusRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId", traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionStatusRequest.type = Types::GetCalculationExecutionStatusRequest
    GetCalculationExecutionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationStatus, name: "Status"))
    GetCalculationExecutionStatusResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationStatistics, name: "Statistics"))
    GetCalculationExecutionStatusResponse.type = Types::GetCalculationExecutionStatusResponse
    GetCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "CapacityReservationName", traits: {"smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationInput.type = Types::GetCapacityAssignmentConfigurationInput
    GetCapacityAssignmentConfigurationOutput.add_member(:capacity_assignment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAssignmentConfiguration, name: "CapacityAssignmentConfiguration", traits: {"smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationOutput.type = Types::GetCapacityAssignmentConfigurationOutput
    GetCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetCapacityReservationInput.type = Types::GetCapacityReservationInput
    GetCapacityReservationOutput.add_member(:capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservation, name: "CapacityReservation", traits: {"smithy.api#required" => {}}))
    GetCapacityReservationOutput.type = Types::GetCapacityReservationOutput
    GetDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    GetDataCatalogInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    GetDataCatalogInput.type = Types::GetDataCatalogInput
    GetDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalog, name: "DataCatalog"))
    GetDataCatalogOutput.type = Types::GetDataCatalogOutput
    GetDatabaseInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "CatalogName", traits: {"smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    GetDatabaseInput.type = Types::GetDatabaseInput
    GetDatabaseOutput.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: Database, name: "Database"))
    GetDatabaseOutput.type = Types::GetDatabaseOutput
    GetNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId", traits: {"smithy.api#required" => {}}))
    GetNamedQueryInput.type = Types::GetNamedQueryInput
    GetNamedQueryOutput.add_member(:named_query, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQuery, name: "NamedQuery"))
    GetNamedQueryOutput.type = Types::GetNamedQueryOutput
    GetNotebookMetadataInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    GetNotebookMetadataInput.type = Types::GetNotebookMetadataInput
    GetNotebookMetadataOutput.add_member(:notebook_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookMetadata, name: "NotebookMetadata"))
    GetNotebookMetadataOutput.type = Types::GetNotebookMetadataOutput
    GetPreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName", traits: {"smithy.api#required" => {}}))
    GetPreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    GetPreparedStatementInput.type = Types::GetPreparedStatementInput
    GetPreparedStatementOutput.add_member(:prepared_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatement, name: "PreparedStatement"))
    GetPreparedStatementOutput.type = Types::GetPreparedStatementOutput
    GetQueryExecutionInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId", traits: {"smithy.api#required" => {}}))
    GetQueryExecutionInput.type = Types::GetQueryExecutionInput
    GetQueryExecutionOutput.add_member(:query_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecution, name: "QueryExecution"))
    GetQueryExecutionOutput.type = Types::GetQueryExecutionOutput
    GetQueryResultsInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId", traits: {"smithy.api#required" => {}}))
    GetQueryResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetQueryResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxQueryResults, name: "MaxResults"))
    GetQueryResultsInput.add_member(:query_result_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultType, name: "QueryResultType"))
    GetQueryResultsInput.type = Types::GetQueryResultsInput
    GetQueryResultsOutput.add_member(:update_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "UpdateCount"))
    GetQueryResultsOutput.add_member(:result_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSet, name: "ResultSet"))
    GetQueryResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    GetQueryResultsOutput.type = Types::GetQueryResultsOutput
    GetQueryRuntimeStatisticsInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId", traits: {"smithy.api#required" => {}}))
    GetQueryRuntimeStatisticsInput.type = Types::GetQueryRuntimeStatisticsInput
    GetQueryRuntimeStatisticsOutput.add_member(:query_runtime_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRuntimeStatistics, name: "QueryRuntimeStatistics"))
    GetQueryRuntimeStatisticsOutput.type = Types::GetQueryRuntimeStatisticsOutput
    GetResourceDashboardRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    GetResourceDashboardRequest.type = Types::GetResourceDashboardRequest
    GetResourceDashboardResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#required" => {}}))
    GetResourceDashboardResponse.type = Types::GetResourceDashboardResponse
    GetSessionEndpointRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetSessionEndpointRequest.type = Types::GetSessionEndpointRequest
    GetSessionEndpointResponse.add_member(:endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointUrl", traits: {"smithy.api#required" => {}}))
    GetSessionEndpointResponse.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthToken", traits: {"smithy.api#required" => {}}))
    GetSessionEndpointResponse.add_member(:auth_token_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AuthTokenExpirationTime", traits: {"smithy.api#required" => {}}))
    GetSessionEndpointResponse.type = Types::GetSessionEndpointResponse
    GetSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    GetSessionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    GetSessionResponse.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    GetSessionResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "EngineVersion"))
    GetSessionResponse.add_member(:engine_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineConfiguration, name: "EngineConfiguration"))
    GetSessionResponse.add_member(:notebook_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "NotebookVersion"))
    GetSessionResponse.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "MonitoringConfiguration"))
    GetSessionResponse.add_member(:session_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionConfiguration, name: "SessionConfiguration"))
    GetSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "Status"))
    GetSessionResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatistics, name: "Statistics"))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionStatusRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetSessionStatusRequest.type = Types::GetSessionStatusRequest
    GetSessionStatusResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    GetSessionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "Status"))
    GetSessionStatusResponse.type = Types::GetSessionStatusResponse
    GetTableMetadataInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "CatalogName", traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "TableName", traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    GetTableMetadataInput.type = Types::GetTableMetadataInput
    GetTableMetadataOutput.add_member(:table_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMetadata, name: "TableMetadata"))
    GetTableMetadataOutput.type = Types::GetTableMetadataOutput
    GetWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    GetWorkGroupInput.type = Types::GetWorkGroupInput
    GetWorkGroupOutput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroup, name: "WorkGroup"))
    GetWorkGroupOutput.type = Types::GetWorkGroupOutput
    IdentityCenterConfiguration.add_member(:enable_identity_center, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnableIdentityCenter"))
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "IdentityCenterInstanceArn"))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    ImportNotebookInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookName, name: "Name", traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload"))
    ImportNotebookInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookType, name: "Type", traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:notebook_s3_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "NotebookS3LocationUri"))
    ImportNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    ImportNotebookInput.type = Types::ImportNotebookInput
    ImportNotebookOutput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId"))
    ImportNotebookOutput.type = Types::ImportNotebookOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:athena_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "AthenaErrorCode"))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListApplicationDPUSizesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxApplicationDPUSizesCount, name: "MaxResults"))
    ListApplicationDPUSizesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationDPUSizesInput.type = Types::ListApplicationDPUSizesInput
    ListApplicationDPUSizesOutput.add_member(:application_dpu_sizes, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDPUSizesList, name: "ApplicationDPUSizes"))
    ListApplicationDPUSizesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListApplicationDPUSizesOutput.type = Types::ListApplicationDPUSizesOutput
    ListCalculationExecutionsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    ListCalculationExecutionsRequest.add_member(:state_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionState, name: "StateFilter"))
    ListCalculationExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCalculationsCount, name: "MaxResults"))
    ListCalculationExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListCalculationExecutionsRequest.type = Types::ListCalculationExecutionsRequest
    ListCalculationExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListCalculationExecutionsResponse.add_member(:calculations, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationsList, name: "Calculations"))
    ListCalculationExecutionsResponse.type = Types::ListCalculationExecutionsResponse
    ListCapacityReservationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCapacityReservationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxCapacityReservationsCount, name: "MaxResults"))
    ListCapacityReservationsInput.type = Types::ListCapacityReservationsInput
    ListCapacityReservationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListCapacityReservationsOutput.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationsList, name: "CapacityReservations", traits: {"smithy.api#required" => {}}))
    ListCapacityReservationsOutput.type = Types::ListCapacityReservationsOutput
    ListDataCatalogsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDataCatalogsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDataCatalogsCount, name: "MaxResults"))
    ListDataCatalogsInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    ListDataCatalogsInput.type = Types::ListDataCatalogsInput
    ListDataCatalogsOutput.add_member(:data_catalogs_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogSummaryList, name: "DataCatalogsSummary"))
    ListDataCatalogsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDataCatalogsOutput.type = Types::ListDataCatalogsOutput
    ListDatabasesInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "CatalogName", traits: {"smithy.api#required" => {}}))
    ListDatabasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDatabasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDatabasesCount, name: "MaxResults"))
    ListDatabasesInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    ListDatabasesInput.type = Types::ListDatabasesInput
    ListDatabasesOutput.add_member(:database_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "DatabaseList"))
    ListDatabasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListDatabasesOutput.type = Types::ListDatabasesOutput
    ListEngineVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListEngineVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEngineVersionsCount, name: "MaxResults"))
    ListEngineVersionsInput.type = Types::ListEngineVersionsInput
    ListEngineVersionsOutput.add_member(:engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersionsList, name: "EngineVersions"))
    ListEngineVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListEngineVersionsOutput.type = Types::ListEngineVersionsOutput
    ListExecutorsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    ListExecutorsRequest.add_member(:executor_state_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorState, name: "ExecutorStateFilter"))
    ListExecutorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListExecutorsCount, name: "MaxResults"))
    ListExecutorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListExecutorsRequest.type = Types::ListExecutorsRequest
    ListExecutorsResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    ListExecutorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListExecutorsResponse.add_member(:executors_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorsSummaryList, name: "ExecutorsSummary"))
    ListExecutorsResponse.type = Types::ListExecutorsResponse
    ListNamedQueriesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNamedQueriesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxNamedQueriesCount, name: "MaxResults"))
    ListNamedQueriesInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    ListNamedQueriesInput.type = Types::ListNamedQueriesInput
    ListNamedQueriesOutput.add_member(:named_query_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryIdList, name: "NamedQueryIds"))
    ListNamedQueriesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNamedQueriesOutput.type = Types::ListNamedQueriesOutput
    ListNotebookMetadataInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDefinition, name: "Filters"))
    ListNotebookMetadataInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNotebookMetadataInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxNotebooksCount, name: "MaxResults"))
    ListNotebookMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    ListNotebookMetadataInput.type = Types::ListNotebookMetadataInput
    ListNotebookMetadataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNotebookMetadataOutput.add_member(:notebook_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookMetadataArray, name: "NotebookMetadataList"))
    ListNotebookMetadataOutput.type = Types::ListNotebookMetadataOutput
    ListNotebookSessionsRequest.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    ListNotebookSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSessionsCount, name: "MaxResults"))
    ListNotebookSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNotebookSessionsRequest.type = Types::ListNotebookSessionsRequest
    ListNotebookSessionsResponse.add_member(:notebook_sessions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookSessionsList, name: "NotebookSessionsList", traits: {"smithy.api#required" => {}}))
    ListNotebookSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListNotebookSessionsResponse.type = Types::ListNotebookSessionsResponse
    ListPreparedStatementsInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    ListPreparedStatementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPreparedStatementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPreparedStatementsCount, name: "MaxResults"))
    ListPreparedStatementsInput.type = Types::ListPreparedStatementsInput
    ListPreparedStatementsOutput.add_member(:prepared_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementsList, name: "PreparedStatements"))
    ListPreparedStatementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListPreparedStatementsOutput.type = Types::ListPreparedStatementsOutput
    ListQueryExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListQueryExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxQueryExecutionsCount, name: "MaxResults"))
    ListQueryExecutionsInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    ListQueryExecutionsInput.type = Types::ListQueryExecutionsInput
    ListQueryExecutionsOutput.add_member(:query_execution_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionIdList, name: "QueryExecutionIds"))
    ListQueryExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListQueryExecutionsOutput.type = Types::ListQueryExecutionsOutput
    ListSessionsRequest.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:state_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "StateFilter"))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSessionsCount, name: "MaxResults"))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionManagerToken, name: "NextToken"))
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionsList, name: "Sessions"))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTableMetadataInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "CatalogName", traits: {"smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionString, name: "Expression"))
    ListTableMetadataInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTableMetadataInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTableMetadataCount, name: "MaxResults"))
    ListTableMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    ListTableMetadataInput.type = Types::ListTableMetadataInput
    ListTableMetadataOutput.add_member(:table_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMetadataList, name: "TableMetadataList"))
    ListTableMetadataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTableMetadataOutput.type = Types::ListTableMetadataOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTagsCount, name: "MaxResults"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListWorkGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxWorkGroupsCount, name: "MaxResults"))
    ListWorkGroupsInput.type = Types::ListWorkGroupsInput
    ListWorkGroupsOutput.add_member(:work_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupsList, name: "WorkGroups"))
    ListWorkGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListWorkGroupsOutput.type = Types::ListWorkGroupsOutput
    LogTypeValuesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeValue, name: "member"))
    LogTypesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeKey, name: "key"))
    LogTypesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeValuesList, name: "value"))
    ManagedLoggingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    ManagedLoggingConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey"))
    ManagedLoggingConfiguration.type = Types::ManagedLoggingConfiguration
    ManagedQueryResultsConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ManagedQueryResultsConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedQueryResultsEncryptionConfiguration, name: "EncryptionConfiguration"))
    ManagedQueryResultsConfiguration.type = Types::ManagedQueryResultsConfiguration
    ManagedQueryResultsConfigurationUpdates.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "Enabled"))
    ManagedQueryResultsConfigurationUpdates.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedQueryResultsEncryptionConfiguration, name: "EncryptionConfiguration"))
    ManagedQueryResultsConfigurationUpdates.add_member(:remove_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveEncryptionConfiguration"))
    ManagedQueryResultsConfigurationUpdates.type = Types::ManagedQueryResultsConfigurationUpdates
    ManagedQueryResultsEncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey", traits: {"smithy.api#required" => {}}))
    ManagedQueryResultsEncryptionConfiguration.type = Types::ManagedQueryResultsEncryptionConfiguration
    MetadataException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MetadataException.type = Types::MetadataException
    MonitoringConfiguration.add_member(:cloud_watch_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingConfiguration, name: "CloudWatchLoggingConfiguration"))
    MonitoringConfiguration.add_member(:managed_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoggingConfiguration, name: "ManagedLoggingConfiguration"))
    MonitoringConfiguration.add_member(:s3_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LoggingConfiguration, name: "S3LoggingConfiguration"))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    NamedQuery.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    NamedQuery.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseString, name: "Database", traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId"))
    NamedQuery.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    NamedQuery.type = Types::NamedQuery
    NamedQueryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "member"))
    NamedQueryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQuery, name: "member"))
    NotebookMetadata.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId"))
    NotebookMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookName, name: "Name"))
    NotebookMetadata.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    NotebookMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    NotebookMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookType, name: "Type"))
    NotebookMetadata.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedTime"))
    NotebookMetadata.type = Types::NotebookMetadata
    NotebookMetadataArray.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookMetadata, name: "member"))
    NotebookSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    NotebookSessionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    NotebookSessionSummary.type = Types::NotebookSessionSummary
    NotebookSessionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookSessionSummary, name: "member"))
    NotebookType.add_member(:ipynb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPYNB", traits: {"smithy.api#enumValue" => "IPYNB"}))
    ParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyString, name: "key"))
    ParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMapValue, name: "value"))
    PreparedStatement.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName"))
    PreparedStatement.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryStatement"))
    PreparedStatement.add_member(:work_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroupName"))
    PreparedStatement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    PreparedStatement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedTime"))
    PreparedStatement.type = Types::PreparedStatement
    PreparedStatementDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatement, name: "member"))
    PreparedStatementNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "member"))
    PreparedStatementSummary.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName"))
    PreparedStatementSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedTime"))
    PreparedStatementSummary.type = Types::PreparedStatementSummary
    PreparedStatementsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementSummary, name: "member"))
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "CapacityReservationName", traits: {"smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityAssignmentsList, name: "CapacityAssignments", traits: {"smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.type = Types::PutCapacityAssignmentConfigurationInput
    PutCapacityAssignmentConfigurationOutput.type = Types::PutCapacityAssignmentConfigurationOutput
    QueryExecution.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId"))
    QueryExecution.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "Query"))
    QueryExecution.add_member(:statement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementType, name: "StatementType"))
    QueryExecution.add_member(:managed_query_results_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedQueryResultsConfiguration, name: "ManagedQueryResultsConfiguration"))
    QueryExecution.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultConfiguration, name: "ResultConfiguration"))
    QueryExecution.add_member(:result_reuse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultReuseConfiguration, name: "ResultReuseConfiguration"))
    QueryExecution.add_member(:query_execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionContext, name: "QueryExecutionContext"))
    QueryExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionStatus, name: "Status"))
    QueryExecution.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionStatistics, name: "Statistics"))
    QueryExecution.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    QueryExecution.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    QueryExecution.add_member(:execution_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameters, name: "ExecutionParameters"))
    QueryExecution.add_member(:substatement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubstatementType"))
    QueryExecution.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultsS3AccessGrantsConfiguration, name: "QueryResultsS3AccessGrantsConfiguration"))
    QueryExecution.type = Types::QueryExecution
    QueryExecutionContext.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseString, name: "Database"))
    QueryExecutionContext.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Catalog"))
    QueryExecutionContext.type = Types::QueryExecutionContext
    QueryExecutionIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "member"))
    QueryExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecution, name: "member"))
    QueryExecutionState.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryExecutionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryExecutionState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    QueryExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryExecutionState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    QueryExecutionStatistics.add_member(:engine_execution_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EngineExecutionTimeInMillis"))
    QueryExecutionStatistics.add_member(:data_scanned_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DataScannedInBytes"))
    QueryExecutionStatistics.add_member(:data_manifest_location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataManifestLocation"))
    QueryExecutionStatistics.add_member(:total_execution_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalExecutionTimeInMillis"))
    QueryExecutionStatistics.add_member(:query_queue_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "QueryQueueTimeInMillis"))
    QueryExecutionStatistics.add_member(:service_pre_processing_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ServicePreProcessingTimeInMillis"))
    QueryExecutionStatistics.add_member(:query_planning_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "QueryPlanningTimeInMillis"))
    QueryExecutionStatistics.add_member(:service_processing_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ServiceProcessingTimeInMillis"))
    QueryExecutionStatistics.add_member(:result_reuse_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultReuseInformation, name: "ResultReuseInformation"))
    QueryExecutionStatistics.add_member(:dpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: DpuCount, name: "DpuCount"))
    QueryExecutionStatistics.type = Types::QueryExecutionStatistics
    QueryExecutionStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionState, name: "State"))
    QueryExecutionStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateChangeReason"))
    QueryExecutionStatus.add_member(:submission_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "SubmissionDateTime"))
    QueryExecutionStatus.add_member(:completion_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CompletionDateTime"))
    QueryExecutionStatus.add_member(:athena_error, ::Smithy::Schema::Shapes::MemberShape.new(target: AthenaError, name: "AthenaError"))
    QueryExecutionStatus.type = Types::QueryExecutionStatus
    QueryResultType.add_member(:data_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_MANIFEST", traits: {"smithy.api#enumValue" => "DATA_MANIFEST"}))
    QueryResultType.add_member(:data_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_ROWS", traits: {"smithy.api#enumValue" => "DATA_ROWS"}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:enable_s3_access_grants, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnableS3AccessGrants", traits: {"smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:create_user_level_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "CreateUserLevelPrefix"))
    QueryResultsS3AccessGrantsConfiguration.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.type = Types::QueryResultsS3AccessGrantsConfiguration
    QueryRuntimeStatistics.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRuntimeStatisticsTimeline, name: "Timeline"))
    QueryRuntimeStatistics.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRuntimeStatisticsRows, name: "Rows"))
    QueryRuntimeStatistics.add_member(:output_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStage, name: "OutputStage"))
    QueryRuntimeStatistics.type = Types::QueryRuntimeStatistics
    QueryRuntimeStatisticsRows.add_member(:input_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "InputRows"))
    QueryRuntimeStatisticsRows.add_member(:input_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "InputBytes"))
    QueryRuntimeStatisticsRows.add_member(:output_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OutputBytes"))
    QueryRuntimeStatisticsRows.add_member(:output_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OutputRows"))
    QueryRuntimeStatisticsRows.type = Types::QueryRuntimeStatisticsRows
    QueryRuntimeStatisticsTimeline.add_member(:query_queue_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "QueryQueueTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:service_pre_processing_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ServicePreProcessingTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:query_planning_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "QueryPlanningTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:engine_execution_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EngineExecutionTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:service_processing_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ServiceProcessingTimeInMillis"))
    QueryRuntimeStatisticsTimeline.add_member(:total_execution_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalExecutionTimeInMillis"))
    QueryRuntimeStatisticsTimeline.type = Types::QueryRuntimeStatisticsTimeline
    QueryStage.add_member(:stage_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "StageId"))
    QueryStage.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    QueryStage.add_member(:output_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OutputBytes"))
    QueryStage.add_member(:output_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OutputRows"))
    QueryStage.add_member(:input_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "InputBytes"))
    QueryStage.add_member(:input_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "InputRows"))
    QueryStage.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ExecutionTime"))
    QueryStage.add_member(:query_stage_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStagePlanNode, name: "QueryStagePlan"))
    QueryStage.add_member(:sub_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStages, name: "SubStages"))
    QueryStage.type = Types::QueryStage
    QueryStagePlanNode.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    QueryStagePlanNode.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Identifier"))
    QueryStagePlanNode.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStagePlanNodes, name: "Children"))
    QueryStagePlanNode.add_member(:remote_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "RemoteSources"))
    QueryStagePlanNode.type = Types::QueryStagePlanNode
    QueryStagePlanNodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStagePlanNode, name: "member"))
    QueryStages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStage, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultConfiguration.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultOutputLocation, name: "OutputLocation"))
    ResultConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    ResultConfiguration.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ExpectedBucketOwner"))
    ResultConfiguration.add_member(:acl_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AclConfiguration, name: "AclConfiguration"))
    ResultConfiguration.type = Types::ResultConfiguration
    ResultConfigurationUpdates.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultOutputLocation, name: "OutputLocation"))
    ResultConfigurationUpdates.add_member(:remove_output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveOutputLocation"))
    ResultConfigurationUpdates.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    ResultConfigurationUpdates.add_member(:remove_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveEncryptionConfiguration"))
    ResultConfigurationUpdates.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ExpectedBucketOwner"))
    ResultConfigurationUpdates.add_member(:remove_expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveExpectedBucketOwner"))
    ResultConfigurationUpdates.add_member(:acl_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AclConfiguration, name: "AclConfiguration"))
    ResultConfigurationUpdates.add_member(:remove_acl_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveAclConfiguration"))
    ResultConfigurationUpdates.type = Types::ResultConfigurationUpdates
    ResultReuseByAgeConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ResultReuseByAgeConfiguration.add_member(:max_age_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Age, name: "MaxAgeInMinutes"))
    ResultReuseByAgeConfiguration.type = Types::ResultReuseByAgeConfiguration
    ResultReuseConfiguration.add_member(:result_reuse_by_age_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultReuseByAgeConfiguration, name: "ResultReuseByAgeConfiguration"))
    ResultReuseConfiguration.type = Types::ResultReuseConfiguration
    ResultReuseInformation.add_member(:reused_previous_result, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReusedPreviousResult", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ResultReuseInformation.type = Types::ResultReuseInformation
    ResultSet.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: RowList, name: "Rows"))
    ResultSet.add_member(:result_set_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSetMetadata, name: "ResultSetMetadata"))
    ResultSet.type = Types::ResultSet
    ResultSetMetadata.add_member(:column_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnInfoList, name: "ColumnInfo"))
    ResultSetMetadata.type = Types::ResultSetMetadata
    Row.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DatumList, name: "Data"))
    Row.type = Types::Row
    RowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member"))
    S3AclOption.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    S3LoggingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    S3LoggingConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey"))
    S3LoggingConfiguration.add_member(:log_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputLocation, name: "LogLocation"))
    S3LoggingConfiguration.type = Types::S3LoggingConfiguration
    SessionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SessionAlreadyExistsException.type = Types::SessionAlreadyExistsException
    SessionConfiguration.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "ExecutionRole"))
    SessionConfiguration.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultOutputLocation, name: "WorkingDirectory"))
    SessionConfiguration.add_member(:idle_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "IdleTimeoutSeconds"))
    SessionConfiguration.add_member(:session_idle_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdleTimeoutInMinutes, name: "SessionIdleTimeoutInMinutes"))
    SessionConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    SessionConfiguration.type = Types::SessionConfiguration
    SessionState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    SessionState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    SessionState.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    SessionState.add_member(:busy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSY", traits: {"smithy.api#enumValue" => "BUSY"}))
    SessionState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    SessionState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    SessionState.add_member(:degraded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEGRADED", traits: {"smithy.api#enumValue" => "DEGRADED"}))
    SessionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatistics.add_member(:dpu_execution_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DpuExecutionInMillis"))
    SessionStatistics.type = Types::SessionStatistics
    SessionStatus.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartDateTime"))
    SessionStatus.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedDateTime"))
    SessionStatus.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    SessionStatus.add_member(:idle_since_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "IdleSinceDateTime"))
    SessionStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "State"))
    SessionStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "StateChangeReason"))
    SessionStatus.type = Types::SessionStatus
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    SessionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    SessionSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    SessionSummary.add_member(:notebook_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "NotebookVersion"))
    SessionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "Status"))
    SessionSummary.type = Types::SessionSummary
    SessionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    StartCalculationExecutionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    StartCalculationExecutionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    StartCalculationExecutionRequest.add_member(:calculation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationConfiguration, name: "CalculationConfiguration", traits: {"smithy.api#deprecated" => {"message" => "Structure is deprecated."}}))
    StartCalculationExecutionRequest.add_member(:code_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeBlock, name: "CodeBlock"))
    StartCalculationExecutionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientRequestToken"))
    StartCalculationExecutionRequest.type = Types::StartCalculationExecutionRequest
    StartCalculationExecutionResponse.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId"))
    StartCalculationExecutionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionState, name: "State"))
    StartCalculationExecutionResponse.type = Types::StartCalculationExecutionResponse
    StartQueryExecutionInput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    StartQueryExecutionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartQueryExecutionInput.add_member(:query_execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionContext, name: "QueryExecutionContext"))
    StartQueryExecutionInput.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultConfiguration, name: "ResultConfiguration"))
    StartQueryExecutionInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup"))
    StartQueryExecutionInput.add_member(:execution_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameters, name: "ExecutionParameters"))
    StartQueryExecutionInput.add_member(:result_reuse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultReuseConfiguration, name: "ResultReuseConfiguration"))
    StartQueryExecutionInput.add_member(:engine_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineConfiguration, name: "EngineConfiguration"))
    StartQueryExecutionInput.type = Types::StartQueryExecutionInput
    StartQueryExecutionOutput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId"))
    StartQueryExecutionOutput.type = Types::StartQueryExecutionOutput
    StartSessionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    StartSessionRequest.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    StartSessionRequest.add_member(:engine_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineConfiguration, name: "EngineConfiguration", traits: {"smithy.api#required" => {}}))
    StartSessionRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "ExecutionRole"))
    StartSessionRequest.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "MonitoringConfiguration"))
    StartSessionRequest.add_member(:notebook_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "NotebookVersion"))
    StartSessionRequest.add_member(:session_idle_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionIdleTimeoutInMinutes, name: "SessionIdleTimeoutInMinutes"))
    StartSessionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ClientRequestToken"))
    StartSessionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartSessionRequest.add_member(:copy_work_group_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "CopyWorkGroupTags"))
    StartSessionRequest.type = Types::StartSessionRequest
    StartSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    StartSessionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "State"))
    StartSessionResponse.type = Types::StartSessionResponse
    StatementType.add_member(:ddl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DDL", traits: {"smithy.api#enumValue" => "DDL"}))
    StatementType.add_member(:dml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DML", traits: {"smithy.api#enumValue" => "DML"}))
    StatementType.add_member(:utility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILITY", traits: {"smithy.api#enumValue" => "UTILITY"}))
    StopCalculationExecutionRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionId, name: "CalculationExecutionId", traits: {"smithy.api#required" => {}}))
    StopCalculationExecutionRequest.type = Types::StopCalculationExecutionRequest
    StopCalculationExecutionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CalculationExecutionState, name: "State"))
    StopCalculationExecutionResponse.type = Types::StopCalculationExecutionResponse
    StopQueryExecutionInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StopQueryExecutionInput.type = Types::StopQueryExecutionInput
    StopQueryExecutionOutput.type = Types::StopQueryExecutionOutput
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SupportedDPUSizeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member"))
    TableMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    TableMetadata.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTime"))
    TableMetadata.add_member(:last_access_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastAccessTime"))
    TableMetadata.add_member(:table_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TableTypeString, name: "TableType"))
    TableMetadata.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "Columns"))
    TableMetadata.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnList, name: "PartitionKeys"))
    TableMetadata.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    TableMetadata.type = Types::TableMetadata
    TableMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableMetadata, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TerminateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    TerminateSessionRequest.type = Types::TerminateSessionRequest
    TerminateSessionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "State"))
    TerminateSessionResponse.type = Types::TerminateSessionResponse
    ThrottleReason.add_member(:concurrent_query_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_QUERY_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "CONCURRENT_QUERY_LIMIT_EXCEEDED"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyRequestsException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleReason, name: "Reason"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessedNamedQueryId.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId"))
    UnprocessedNamedQueryId.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    UnprocessedNamedQueryId.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    UnprocessedNamedQueryId.type = Types::UnprocessedNamedQueryId
    UnprocessedNamedQueryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedNamedQueryId, name: "member"))
    UnprocessedPreparedStatementName.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName"))
    UnprocessedPreparedStatementName.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    UnprocessedPreparedStatementName.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    UnprocessedPreparedStatementName.type = Types::UnprocessedPreparedStatementName
    UnprocessedPreparedStatementNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedPreparedStatementName, name: "member"))
    UnprocessedQueryExecutionId.add_member(:query_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExecutionId, name: "QueryExecutionId"))
    UnprocessedQueryExecutionId.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    UnprocessedQueryExecutionId.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    UnprocessedQueryExecutionId.type = Types::UnprocessedQueryExecutionId
    UnprocessedQueryExecutionIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedQueryExecutionId, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCapacityReservationInput.add_member(:target_dpus, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDpusInteger, name: "TargetDpus", traits: {"smithy.api#required" => {}}))
    UpdateCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateCapacityReservationInput.type = Types::UpdateCapacityReservationInput
    UpdateCapacityReservationOutput.type = Types::UpdateCapacityReservationOutput
    UpdateDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogNameString, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCatalogType, name: "Type", traits: {"smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    UpdateDataCatalogInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersMap, name: "Parameters"))
    UpdateDataCatalogInput.type = Types::UpdateDataCatalogInput
    UpdateDataCatalogOutput.type = Types::UpdateDataCatalogOutput
    UpdateNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryId, name: "NamedQueryId", traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NamedQueryDescriptionString, name: "Description"))
    UpdateNamedQueryInput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.type = Types::UpdateNamedQueryInput
    UpdateNamedQueryOutput.type = Types::UpdateNamedQueryOutput
    UpdateNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload", traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookType, name: "Type", traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    UpdateNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    UpdateNotebookInput.type = Types::UpdateNotebookInput
    UpdateNotebookMetadataInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookId, name: "NotebookId", traits: {"smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    UpdateNotebookMetadataInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.type = Types::UpdateNotebookMetadataInput
    UpdateNotebookMetadataOutput.type = Types::UpdateNotebookMetadataOutput
    UpdateNotebookOutput.type = Types::UpdateNotebookOutput
    UpdatePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementName, name: "StatementName", traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryStatement", traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    UpdatePreparedStatementInput.type = Types::UpdatePreparedStatementInput
    UpdatePreparedStatementOutput.type = Types::UpdatePreparedStatementOutput
    UpdateWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "WorkGroup", traits: {"smithy.api#required" => {}}))
    UpdateWorkGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupDescriptionString, name: "Description"))
    UpdateWorkGroupInput.add_member(:configuration_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupConfigurationUpdates, name: "ConfigurationUpdates"))
    UpdateWorkGroupInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupState, name: "State"))
    UpdateWorkGroupInput.type = Types::UpdateWorkGroupInput
    UpdateWorkGroupOutput.type = Types::UpdateWorkGroupOutput
    WorkGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    WorkGroup.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupState, name: "State"))
    WorkGroup.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupConfiguration, name: "Configuration"))
    WorkGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupDescriptionString, name: "Description"))
    WorkGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    WorkGroup.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "IdentityCenterApplicationArn"))
    WorkGroup.type = Types::WorkGroup
    WorkGroupConfiguration.add_member(:result_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultConfiguration, name: "ResultConfiguration"))
    WorkGroupConfiguration.add_member(:managed_query_results_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedQueryResultsConfiguration, name: "ManagedQueryResultsConfiguration"))
    WorkGroupConfiguration.add_member(:enforce_work_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfiguration.add_member(:publish_cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfiguration.add_member(:bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesScannedCutoffValue, name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfiguration.add_member(:requester_pays_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RequesterPaysEnabled"))
    WorkGroupConfiguration.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    WorkGroupConfiguration.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "AdditionalConfiguration"))
    WorkGroupConfiguration.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "ExecutionRole"))
    WorkGroupConfiguration.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "MonitoringConfiguration"))
    WorkGroupConfiguration.add_member(:engine_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineConfiguration, name: "EngineConfiguration"))
    WorkGroupConfiguration.add_member(:customer_content_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContentEncryptionConfiguration, name: "CustomerContentEncryptionConfiguration"))
    WorkGroupConfiguration.add_member(:enable_minimum_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnableMinimumEncryptionConfiguration"))
    WorkGroupConfiguration.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfiguration, name: "IdentityCenterConfiguration"))
    WorkGroupConfiguration.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultsS3AccessGrantsConfiguration, name: "QueryResultsS3AccessGrantsConfiguration"))
    WorkGroupConfiguration.type = Types::WorkGroupConfiguration
    WorkGroupConfigurationUpdates.add_member(:enforce_work_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnforceWorkGroupConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:result_configuration_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultConfigurationUpdates, name: "ResultConfigurationUpdates"))
    WorkGroupConfigurationUpdates.add_member(:managed_query_results_configuration_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedQueryResultsConfigurationUpdates, name: "ManagedQueryResultsConfigurationUpdates"))
    WorkGroupConfigurationUpdates.add_member(:publish_cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "PublishCloudWatchMetricsEnabled"))
    WorkGroupConfigurationUpdates.add_member(:bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesScannedCutoffValue, name: "BytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.add_member(:remove_bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveBytesScannedCutoffPerQuery"))
    WorkGroupConfigurationUpdates.add_member(:requester_pays_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RequesterPaysEnabled"))
    WorkGroupConfigurationUpdates.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    WorkGroupConfigurationUpdates.add_member(:remove_customer_content_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "RemoveCustomerContentEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NameString, name: "AdditionalConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "ExecutionRole"))
    WorkGroupConfigurationUpdates.add_member(:customer_content_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContentEncryptionConfiguration, name: "CustomerContentEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:enable_minimum_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "EnableMinimumEncryptionConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultsS3AccessGrantsConfiguration, name: "QueryResultsS3AccessGrantsConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "MonitoringConfiguration"))
    WorkGroupConfigurationUpdates.add_member(:engine_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineConfiguration, name: "EngineConfiguration"))
    WorkGroupConfigurationUpdates.type = Types::WorkGroupConfigurationUpdates
    WorkGroupNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "member"))
    WorkGroupState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    WorkGroupState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupName, name: "Name"))
    WorkGroupSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupState, name: "State"))
    WorkGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupDescriptionString, name: "Description"))
    WorkGroupSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    WorkGroupSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "EngineVersion"))
    WorkGroupSummary.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "IdentityCenterApplicationArn"))
    WorkGroupSummary.type = Types::WorkGroupSummary
    WorkGroupsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkGroupSummary, name: "member"))
    DatumList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Datum, name: "member"))

    AmazonAthena = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.athena#AmazonAthena"
      service.name = "AmazonAthena"
      service.version = "2017-05-18"
      service.traits = {"aws.api#service" => {"sdkId" => "Athena", "arnNamespace" => "athena", "cloudFormationName" => "Athena", "cloudTrailEventSource" => "athena.amazonaws.com", "endpointPrefix" => "athena"}, "aws.auth#sigv4" => {"name" => "athena"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Athena", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://athena-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://athena-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://athena.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://athena.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_get_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetNamedQuery"
        operation.name = "BatchGetNamedQuery"
        operation.input = BatchGetNamedQueryInput
        operation.output = BatchGetNamedQueryOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetPreparedStatement"
        operation.name = "BatchGetPreparedStatement"
        operation.input = BatchGetPreparedStatementInput
        operation.output = BatchGetPreparedStatementOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetQueryExecution"
        operation.name = "BatchGetQueryExecution"
        operation.input = BatchGetQueryExecutionInput
        operation.output = BatchGetQueryExecutionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:cancel_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CancelCapacityReservation"
        operation.name = "CancelCapacityReservation"
        operation.input = CancelCapacityReservationInput
        operation.output = CancelCapacityReservationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateCapacityReservation"
        operation.name = "CreateCapacityReservation"
        operation.input = CreateCapacityReservationInput
        operation.output = CreateCapacityReservationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateDataCatalog"
        operation.name = "CreateDataCatalog"
        operation.input = CreateDataCatalogInput
        operation.output = CreateDataCatalogOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNamedQuery"
        operation.name = "CreateNamedQuery"
        operation.input = CreateNamedQueryInput
        operation.output = CreateNamedQueryOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNotebook"
        operation.name = "CreateNotebook"
        operation.input = CreateNotebookInput
        operation.output = CreateNotebookOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:create_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePreparedStatement"
        operation.name = "CreatePreparedStatement"
        operation.input = CreatePreparedStatementInput
        operation.output = CreatePreparedStatementOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_presigned_notebook_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePresignedNotebookUrl"
        operation.name = "CreatePresignedNotebookUrl"
        operation.input = CreatePresignedNotebookUrlRequest
        operation.output = CreatePresignedNotebookUrlResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateWorkGroup"
        operation.name = "CreateWorkGroup"
        operation.input = CreateWorkGroupInput
        operation.output = CreateWorkGroupOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteCapacityReservation"
        operation.name = "DeleteCapacityReservation"
        operation.input = DeleteCapacityReservationInput
        operation.output = DeleteCapacityReservationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteDataCatalog"
        operation.name = "DeleteDataCatalog"
        operation.input = DeleteDataCatalogInput
        operation.output = DeleteDataCatalogOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNamedQuery"
        operation.name = "DeleteNamedQuery"
        operation.input = DeleteNamedQueryInput
        operation.output = DeleteNamedQueryOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNotebook"
        operation.name = "DeleteNotebook"
        operation.input = DeleteNotebookInput
        operation.output = DeleteNotebookOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:delete_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeletePreparedStatement"
        operation.name = "DeletePreparedStatement"
        operation.input = DeletePreparedStatementInput
        operation.output = DeletePreparedStatementOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteWorkGroup"
        operation.name = "DeleteWorkGroup"
        operation.input = DeleteWorkGroupInput
        operation.output = DeleteWorkGroupOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ExportNotebook"
        operation.name = "ExportNotebook"
        operation.input = ExportNotebookInput
        operation.output = ExportNotebookOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecution"
        operation.name = "GetCalculationExecution"
        operation.input = GetCalculationExecutionRequest
        operation.output = GetCalculationExecutionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionCode"
        operation.name = "GetCalculationExecutionCode"
        operation.input = GetCalculationExecutionCodeRequest
        operation.output = GetCalculationExecutionCodeResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionStatus"
        operation.name = "GetCalculationExecutionStatus"
        operation.input = GetCalculationExecutionStatusRequest
        operation.output = GetCalculationExecutionStatusResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityAssignmentConfiguration"
        operation.name = "GetCapacityAssignmentConfiguration"
        operation.input = GetCapacityAssignmentConfigurationInput
        operation.output = GetCapacityAssignmentConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityReservation"
        operation.name = "GetCapacityReservation"
        operation.input = GetCapacityReservationInput
        operation.output = GetCapacityReservationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDataCatalog"
        operation.name = "GetDataCatalog"
        operation.input = GetDataCatalogInput
        operation.output = GetDataCatalogOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDatabase"
        operation.name = "GetDatabase"
        operation.input = GetDatabaseInput
        operation.output = GetDatabaseOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << MetadataException
        operation.traits = {}
      end)
      service.add_operation(:get_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNamedQuery"
        operation.name = "GetNamedQuery"
        operation.input = GetNamedQueryInput
        operation.output = GetNamedQueryOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNotebookMetadata"
        operation.name = "GetNotebookMetadata"
        operation.input = GetNotebookMetadataInput
        operation.output = GetNotebookMetadataOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:get_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetPreparedStatement"
        operation.name = "GetPreparedStatement"
        operation.input = GetPreparedStatementInput
        operation.output = GetPreparedStatementOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryExecution"
        operation.name = "GetQueryExecution"
        operation.input = GetQueryExecutionInput
        operation.output = GetQueryExecutionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = GetQueryResultsInput
        operation.output = GetQueryResultsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_query_runtime_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryRuntimeStatistics"
        operation.name = "GetQueryRuntimeStatistics"
        operation.input = GetQueryRuntimeStatisticsInput
        operation.output = GetQueryRuntimeStatisticsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetResourceDashboard"
        operation.name = "GetResourceDashboard"
        operation.input = GetResourceDashboardRequest
        operation.output = GetResourceDashboardResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionRequest
        operation.output = GetSessionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_session_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSessionEndpoint"
        operation.name = "GetSessionEndpoint"
        operation.input = GetSessionEndpointRequest
        operation.output = GetSessionEndpointResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_session_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSessionStatus"
        operation.name = "GetSessionStatus"
        operation.input = GetSessionStatusRequest
        operation.output = GetSessionStatusResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_table_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetTableMetadata"
        operation.name = "GetTableMetadata"
        operation.input = GetTableMetadataInput
        operation.output = GetTableMetadataOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << MetadataException
        operation.traits = {}
      end)
      service.add_operation(:get_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetWorkGroup"
        operation.name = "GetWorkGroup"
        operation.input = GetWorkGroupInput
        operation.output = GetWorkGroupOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:import_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ImportNotebook"
        operation.name = "ImportNotebook"
        operation.input = ImportNotebookInput
        operation.output = ImportNotebookOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_application_dpu_sizes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListApplicationDPUSizes"
        operation.name = "ListApplicationDPUSizes"
        operation.input = ListApplicationDPUSizesInput
        operation.output = ListApplicationDPUSizesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationDPUSizes.new
      end)
      service.add_operation(:list_calculation_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCalculationExecutions"
        operation.name = "ListCalculationExecutions"
        operation.input = ListCalculationExecutionsRequest
        operation.output = ListCalculationExecutionsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCalculationExecutions.new
      end)
      service.add_operation(:list_capacity_reservations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCapacityReservations"
        operation.name = "ListCapacityReservations"
        operation.input = ListCapacityReservationsInput
        operation.output = ListCapacityReservationsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCapacityReservations.new
      end)
      service.add_operation(:list_data_catalogs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDataCatalogs"
        operation.name = "ListDataCatalogs"
        operation.input = ListDataCatalogsInput
        operation.output = ListDataCatalogsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataCatalogs.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ListDatabasesInput
        operation.output = ListDatabasesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << MetadataException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListEngineVersions"
        operation.name = "ListEngineVersions"
        operation.input = ListEngineVersionsInput
        operation.output = ListEngineVersionsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEngineVersions.new
      end)
      service.add_operation(:list_executors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListExecutors"
        operation.name = "ListExecutors"
        operation.input = ListExecutorsRequest
        operation.output = ListExecutorsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListExecutors.new
      end)
      service.add_operation(:list_named_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNamedQueries"
        operation.name = "ListNamedQueries"
        operation.input = ListNamedQueriesInput
        operation.output = ListNamedQueriesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListNamedQueriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListNamedQueries.new
      end)
      service.add_operation(:list_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookMetadata"
        operation.name = "ListNotebookMetadata"
        operation.input = ListNotebookMetadataInput
        operation.output = ListNotebookMetadataOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:list_notebook_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookSessions"
        operation.name = "ListNotebookSessions"
        operation.input = ListNotebookSessionsRequest
        operation.output = ListNotebookSessionsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_prepared_statements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListPreparedStatements"
        operation.name = "ListPreparedStatements"
        operation.input = ListPreparedStatementsInput
        operation.output = ListPreparedStatementsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPreparedStatements.new
      end)
      service.add_operation(:list_query_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListQueryExecutions"
        operation.name = "ListQueryExecutions"
        operation.input = ListQueryExecutionsInput
        operation.output = ListQueryExecutionsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListQueryExecutions.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsRequest
        operation.output = ListSessionsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_table_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTableMetadata"
        operation.name = "ListTableMetadata"
        operation.input = ListTableMetadataInput
        operation.output = ListTableMetadataOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << MetadataException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTableMetadata.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_work_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListWorkGroups"
        operation.name = "ListWorkGroups"
        operation.input = ListWorkGroupsInput
        operation.output = ListWorkGroupsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkGroups.new
      end)
      service.add_operation(:put_capacity_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#PutCapacityAssignmentConfiguration"
        operation.name = "PutCapacityAssignmentConfiguration"
        operation.input = PutCapacityAssignmentConfigurationInput
        operation.output = PutCapacityAssignmentConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartCalculationExecution"
        operation.name = "StartCalculationExecution"
        operation.input = StartCalculationExecutionRequest
        operation.output = StartCalculationExecutionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartQueryExecution"
        operation.name = "StartQueryExecution"
        operation.input = StartQueryExecutionInput
        operation.output = StartQueryExecutionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartSession"
        operation.name = "StartSession"
        operation.input = StartSessionRequest
        operation.output = StartSessionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << SessionAlreadyExistsException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:stop_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopCalculationExecution"
        operation.name = "StopCalculationExecution"
        operation.input = StopCalculationExecutionRequest
        operation.output = StopCalculationExecutionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopQueryExecution"
        operation.name = "StopQueryExecution"
        operation.input = StopQueryExecutionInput
        operation.output = StopQueryExecutionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:terminate_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TerminateSession"
        operation.name = "TerminateSession"
        operation.input = TerminateSessionRequest
        operation.output = TerminateSessionResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateCapacityReservation"
        operation.name = "UpdateCapacityReservation"
        operation.input = UpdateCapacityReservationInput
        operation.output = UpdateCapacityReservationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateDataCatalog"
        operation.name = "UpdateDataCatalog"
        operation.input = UpdateDataCatalogInput
        operation.output = UpdateDataCatalogOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNamedQuery"
        operation.name = "UpdateNamedQuery"
        operation.input = UpdateNamedQueryInput
        operation.output = UpdateNamedQueryOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebook"
        operation.name = "UpdateNotebook"
        operation.input = UpdateNotebookInput
        operation.output = UpdateNotebookOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebookMetadata"
        operation.name = "UpdateNotebookMetadata"
        operation.input = UpdateNotebookMetadataInput
        operation.output = UpdateNotebookMetadataOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {}
      end)
      service.add_operation(:update_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdatePreparedStatement"
        operation.name = "UpdatePreparedStatement"
        operation.input = UpdatePreparedStatementInput
        operation.output = UpdatePreparedStatementOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateWorkGroup"
        operation.name = "UpdateWorkGroup"
        operation.input = UpdateWorkGroupInput
        operation.output = UpdateWorkGroupOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
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
