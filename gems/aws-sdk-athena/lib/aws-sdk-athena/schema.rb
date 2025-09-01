# frozen_string_literal: true

# This is generated code!

module Aws::Athena
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AclConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#AclConfiguration', name: 'AclConfiguration')
    Age = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Age', name: 'Age', traits: {"smithy.api#range" => {"min" => 0, "max" => 10080}})
    AllocatedDpusInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#AllocatedDpusInteger', name: 'AllocatedDpusInteger', traits: {"smithy.api#range" => {"min" => 0}})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ApplicationDPUSizes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ApplicationDPUSizes', name: 'ApplicationDPUSizes')
    ApplicationDPUSizesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ApplicationDPUSizesList', name: 'ApplicationDPUSizesList')
    AthenaError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#AthenaError', name: 'AthenaError')
    AuthToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AuthToken', name: 'AuthToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    AuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#AuthenticationType', name: 'AuthenticationType')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    BatchGetNamedQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetNamedQueryInput', name: 'BatchGetNamedQueryInput')
    BatchGetNamedQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetNamedQueryOutput', name: 'BatchGetNamedQueryOutput')
    BatchGetPreparedStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetPreparedStatementInput', name: 'BatchGetPreparedStatementInput')
    BatchGetPreparedStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetPreparedStatementOutput', name: 'BatchGetPreparedStatementOutput')
    BatchGetQueryExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetQueryExecutionInput', name: 'BatchGetQueryExecutionInput')
    BatchGetQueryExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetQueryExecutionOutput', name: 'BatchGetQueryExecutionOutput')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.athena#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.athena#BoxedBoolean', name: 'BoxedBoolean')
    BytesScannedCutoffValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#BytesScannedCutoffValue', name: 'BytesScannedCutoffValue', traits: {"smithy.api#range" => {"min" => 10000000}})
    CalculationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationConfiguration', name: 'CalculationConfiguration')
    CalculationExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CalculationExecutionId', name: 'CalculationExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    CalculationExecutionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CalculationExecutionState', name: 'CalculationExecutionState')
    CalculationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationResult', name: 'CalculationResult')
    CalculationResultType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CalculationResultType', name: 'CalculationResultType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\w+\\/[-+.\\w]+$"})
    CalculationStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationStatistics', name: 'CalculationStatistics')
    CalculationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationStatus', name: 'CalculationStatus')
    CalculationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationSummary', name: 'CalculationSummary')
    CalculationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CalculationsList', name: 'CalculationsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CancelCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CancelCapacityReservationInput', name: 'CancelCapacityReservationInput')
    CancelCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CancelCapacityReservationOutput', name: 'CancelCapacityReservationOutput')
    CapacityAllocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAllocation', name: 'CapacityAllocation')
    CapacityAllocationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CapacityAllocationStatus', name: 'CapacityAllocationStatus')
    CapacityAssignment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAssignment', name: 'CapacityAssignment')
    CapacityAssignmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAssignmentConfiguration', name: 'CapacityAssignmentConfiguration')
    CapacityAssignmentsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CapacityAssignmentsList', name: 'CapacityAssignmentsList')
    CapacityReservation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityReservation', name: 'CapacityReservation')
    CapacityReservationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CapacityReservationName', name: 'CapacityReservationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    CapacityReservationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CapacityReservationStatus', name: 'CapacityReservationStatus')
    CapacityReservationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CapacityReservationsList', name: 'CapacityReservationsList')
    CatalogNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CatalogNameString', name: 'CatalogNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    CodeBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CodeBlock', name: 'CodeBlock', traits: {"smithy.api#length" => {"min" => 0, "max" => 68000}})
    Column = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Column', name: 'Column')
    ColumnInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ColumnInfo', name: 'ColumnInfo')
    ColumnInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ColumnInfoList', name: 'ColumnInfoList')
    ColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ColumnList', name: 'ColumnList')
    ColumnNullable = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ColumnNullable', name: 'ColumnNullable')
    CommentString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CommentString', name: 'CommentString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ConnectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ConnectionType', name: 'ConnectionType')
    CoordinatorDpuSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#CoordinatorDpuSize', name: 'CoordinatorDpuSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    CreateCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateCapacityReservationInput', name: 'CreateCapacityReservationInput')
    CreateCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateCapacityReservationOutput', name: 'CreateCapacityReservationOutput')
    CreateDataCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateDataCatalogInput', name: 'CreateDataCatalogInput')
    CreateDataCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateDataCatalogOutput', name: 'CreateDataCatalogOutput')
    CreateNamedQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNamedQueryInput', name: 'CreateNamedQueryInput')
    CreateNamedQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNamedQueryOutput', name: 'CreateNamedQueryOutput')
    CreateNotebookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNotebookInput', name: 'CreateNotebookInput')
    CreateNotebookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNotebookOutput', name: 'CreateNotebookOutput')
    CreatePreparedStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePreparedStatementInput', name: 'CreatePreparedStatementInput')
    CreatePreparedStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePreparedStatementOutput', name: 'CreatePreparedStatementOutput')
    CreatePresignedNotebookUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePresignedNotebookUrlRequest', name: 'CreatePresignedNotebookUrlRequest')
    CreatePresignedNotebookUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePresignedNotebookUrlResponse', name: 'CreatePresignedNotebookUrlResponse')
    CreateWorkGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateWorkGroupInput', name: 'CreateWorkGroupInput')
    CreateWorkGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateWorkGroupOutput', name: 'CreateWorkGroupOutput')
    CustomerContentEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CustomerContentEncryptionConfiguration', name: 'CustomerContentEncryptionConfiguration')
    DataCatalog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DataCatalog', name: 'DataCatalog')
    DataCatalogStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#DataCatalogStatus', name: 'DataCatalogStatus')
    DataCatalogSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DataCatalogSummary', name: 'DataCatalogSummary')
    DataCatalogSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#DataCatalogSummaryList', name: 'DataCatalogSummaryList')
    DataCatalogType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#DataCatalogType', name: 'DataCatalogType')
    Database = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Database', name: 'Database')
    DatabaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#DatabaseList', name: 'DatabaseList')
    DatabaseString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#DatabaseString', name: 'DatabaseString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.athena#Date', name: 'Date')
    Datum = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Datum', name: 'Datum')
    DefaultExecutorDpuSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#DefaultExecutorDpuSize', name: 'DefaultExecutorDpuSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    DeleteCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteCapacityReservationInput', name: 'DeleteCapacityReservationInput')
    DeleteCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteCapacityReservationOutput', name: 'DeleteCapacityReservationOutput')
    DeleteDataCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteDataCatalogInput', name: 'DeleteDataCatalogInput')
    DeleteDataCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteDataCatalogOutput', name: 'DeleteDataCatalogOutput')
    DeleteNamedQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNamedQueryInput', name: 'DeleteNamedQueryInput')
    DeleteNamedQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNamedQueryOutput', name: 'DeleteNamedQueryOutput')
    DeleteNotebookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNotebookInput', name: 'DeleteNotebookInput')
    DeleteNotebookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNotebookOutput', name: 'DeleteNotebookOutput')
    DeletePreparedStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeletePreparedStatementInput', name: 'DeletePreparedStatementInput')
    DeletePreparedStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeletePreparedStatementOutput', name: 'DeletePreparedStatementOutput')
    DeleteWorkGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteWorkGroupInput', name: 'DeleteWorkGroupInput')
    DeleteWorkGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteWorkGroupOutput', name: 'DeleteWorkGroupOutput')
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EncryptionOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#EncryptionOption', name: 'EncryptionOption')
    EngineConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EngineConfiguration', name: 'EngineConfiguration')
    EngineVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EngineVersion', name: 'EngineVersion')
    EngineVersionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#EngineVersionsList', name: 'EngineVersionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ErrorCategory = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#ErrorCategory', name: 'ErrorCategory', traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ErrorMessage', name: 'ErrorMessage')
    ErrorType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#ErrorType', name: 'ErrorType', traits: {"smithy.api#range" => {"min" => 0, "max" => 9999}})
    ExecutionParameter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExecutionParameter', name: 'ExecutionParameter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExecutionParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ExecutionParameters', name: 'ExecutionParameters', traits: {"smithy.api#length" => {"min" => 1}})
    ExecutorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExecutorId', name: 'ExecutorId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => ".*"})
    ExecutorState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ExecutorState', name: 'ExecutorState')
    ExecutorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ExecutorType', name: 'ExecutorType')
    ExecutorsSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExecutorsSummary', name: 'ExecutorsSummary')
    ExecutorsSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ExecutorsSummaryList', name: 'ExecutorsSummaryList')
    ExportNotebookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExportNotebookInput', name: 'ExportNotebookInput')
    ExportNotebookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExportNotebookOutput', name: 'ExportNotebookOutput')
    ExpressionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExpressionString', name: 'ExpressionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FilterDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#FilterDefinition', name: 'FilterDefinition')
    GetCalculationExecutionCodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionCodeRequest', name: 'GetCalculationExecutionCodeRequest')
    GetCalculationExecutionCodeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionCodeResponse', name: 'GetCalculationExecutionCodeResponse')
    GetCalculationExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionRequest', name: 'GetCalculationExecutionRequest')
    GetCalculationExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionResponse', name: 'GetCalculationExecutionResponse')
    GetCalculationExecutionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionStatusRequest', name: 'GetCalculationExecutionStatusRequest')
    GetCalculationExecutionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionStatusResponse', name: 'GetCalculationExecutionStatusResponse')
    GetCapacityAssignmentConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityAssignmentConfigurationInput', name: 'GetCapacityAssignmentConfigurationInput')
    GetCapacityAssignmentConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityAssignmentConfigurationOutput', name: 'GetCapacityAssignmentConfigurationOutput')
    GetCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityReservationInput', name: 'GetCapacityReservationInput')
    GetCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityReservationOutput', name: 'GetCapacityReservationOutput')
    GetDataCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDataCatalogInput', name: 'GetDataCatalogInput')
    GetDataCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDataCatalogOutput', name: 'GetDataCatalogOutput')
    GetDatabaseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDatabaseInput', name: 'GetDatabaseInput')
    GetDatabaseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDatabaseOutput', name: 'GetDatabaseOutput')
    GetNamedQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNamedQueryInput', name: 'GetNamedQueryInput')
    GetNamedQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNamedQueryOutput', name: 'GetNamedQueryOutput')
    GetNotebookMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNotebookMetadataInput', name: 'GetNotebookMetadataInput')
    GetNotebookMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNotebookMetadataOutput', name: 'GetNotebookMetadataOutput')
    GetPreparedStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetPreparedStatementInput', name: 'GetPreparedStatementInput')
    GetPreparedStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetPreparedStatementOutput', name: 'GetPreparedStatementOutput')
    GetQueryExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryExecutionInput', name: 'GetQueryExecutionInput')
    GetQueryExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryExecutionOutput', name: 'GetQueryExecutionOutput')
    GetQueryResultsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryResultsInput', name: 'GetQueryResultsInput')
    GetQueryResultsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryResultsOutput', name: 'GetQueryResultsOutput')
    GetQueryRuntimeStatisticsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryRuntimeStatisticsInput', name: 'GetQueryRuntimeStatisticsInput')
    GetQueryRuntimeStatisticsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryRuntimeStatisticsOutput', name: 'GetQueryRuntimeStatisticsOutput')
    GetSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionResponse', name: 'GetSessionResponse')
    GetSessionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionStatusRequest', name: 'GetSessionStatusRequest')
    GetSessionStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionStatusResponse', name: 'GetSessionStatusResponse')
    GetTableMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetTableMetadataInput', name: 'GetTableMetadataInput')
    GetTableMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetTableMetadataOutput', name: 'GetTableMetadataOutput')
    GetWorkGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetWorkGroupInput', name: 'GetWorkGroupInput')
    GetWorkGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetWorkGroupOutput', name: 'GetWorkGroupOutput')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 32, "max" => 128}})
    IdentityCenterApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdentityCenterApplicationArn', name: 'IdentityCenterApplicationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#IdentityCenterConfiguration', name: 'IdentityCenterConfiguration')
    IdentityCenterInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    ImportNotebookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ImportNotebookInput', name: 'ImportNotebookInput')
    ImportNotebookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ImportNotebookOutput', name: 'ImportNotebookOutput')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    KeyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#KeyString', name: 'KeyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    KmsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:key/?[a-zA-Z_0-9+=,.@\\-_/]+$|^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:alias/?[a-zA-Z_0-9+=,.@\\-_/]+$|^alias/[a-zA-Z0-9/_-]+$|[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ListApplicationDPUSizesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListApplicationDPUSizesInput', name: 'ListApplicationDPUSizesInput')
    ListApplicationDPUSizesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListApplicationDPUSizesOutput', name: 'ListApplicationDPUSizesOutput')
    ListCalculationExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCalculationExecutionsRequest', name: 'ListCalculationExecutionsRequest')
    ListCalculationExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCalculationExecutionsResponse', name: 'ListCalculationExecutionsResponse')
    ListCapacityReservationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCapacityReservationsInput', name: 'ListCapacityReservationsInput')
    ListCapacityReservationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCapacityReservationsOutput', name: 'ListCapacityReservationsOutput')
    ListDataCatalogsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDataCatalogsInput', name: 'ListDataCatalogsInput')
    ListDataCatalogsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDataCatalogsOutput', name: 'ListDataCatalogsOutput')
    ListDatabasesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDatabasesInput', name: 'ListDatabasesInput')
    ListDatabasesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDatabasesOutput', name: 'ListDatabasesOutput')
    ListEngineVersionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListEngineVersionsInput', name: 'ListEngineVersionsInput')
    ListEngineVersionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListEngineVersionsOutput', name: 'ListEngineVersionsOutput')
    ListExecutorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListExecutorsRequest', name: 'ListExecutorsRequest')
    ListExecutorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListExecutorsResponse', name: 'ListExecutorsResponse')
    ListNamedQueriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNamedQueriesInput', name: 'ListNamedQueriesInput')
    ListNamedQueriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNamedQueriesOutput', name: 'ListNamedQueriesOutput')
    ListNotebookMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookMetadataInput', name: 'ListNotebookMetadataInput')
    ListNotebookMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookMetadataOutput', name: 'ListNotebookMetadataOutput')
    ListNotebookSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookSessionsRequest', name: 'ListNotebookSessionsRequest')
    ListNotebookSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookSessionsResponse', name: 'ListNotebookSessionsResponse')
    ListPreparedStatementsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListPreparedStatementsInput', name: 'ListPreparedStatementsInput')
    ListPreparedStatementsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListPreparedStatementsOutput', name: 'ListPreparedStatementsOutput')
    ListQueryExecutionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListQueryExecutionsInput', name: 'ListQueryExecutionsInput')
    ListQueryExecutionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListQueryExecutionsOutput', name: 'ListQueryExecutionsOutput')
    ListSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListSessionsResponse', name: 'ListSessionsResponse')
    ListTableMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTableMetadataInput', name: 'ListTableMetadataInput')
    ListTableMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTableMetadataOutput', name: 'ListTableMetadataOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWorkGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListWorkGroupsInput', name: 'ListWorkGroupsInput')
    ListWorkGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListWorkGroupsOutput', name: 'ListWorkGroupsOutput')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Long', name: 'Long')
    ManagedQueryResultsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsConfiguration', name: 'ManagedQueryResultsConfiguration')
    ManagedQueryResultsConfigurationUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsConfigurationUpdates', name: 'ManagedQueryResultsConfigurationUpdates')
    ManagedQueryResultsEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsEncryptionConfiguration', name: 'ManagedQueryResultsEncryptionConfiguration')
    MaxApplicationDPUSizesCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxApplicationDPUSizesCount', name: 'MaxApplicationDPUSizesCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCalculationsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxCalculationsCount', name: 'MaxCalculationsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCapacityReservationsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxCapacityReservationsCount', name: 'MaxCapacityReservationsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxConcurrentDpus = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxConcurrentDpus', name: 'MaxConcurrentDpus', traits: {"smithy.api#range" => {"min" => 2, "max" => 5000}})
    MaxDataCatalogsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxDataCatalogsCount', name: 'MaxDataCatalogsCount', traits: {"smithy.api#range" => {"min" => 2, "max" => 50}})
    MaxDatabasesCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxDatabasesCount', name: 'MaxDatabasesCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxEngineVersionsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxEngineVersionsCount', name: 'MaxEngineVersionsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxListExecutorsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxListExecutorsCount', name: 'MaxListExecutorsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxNamedQueriesCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxNamedQueriesCount', name: 'MaxNamedQueriesCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxNotebooksCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxNotebooksCount', name: 'MaxNotebooksCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxPreparedStatementsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxPreparedStatementsCount', name: 'MaxPreparedStatementsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxQueryExecutionsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxQueryExecutionsCount', name: 'MaxQueryExecutionsCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxQueryResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSessionsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxSessionsCount', name: 'MaxSessionsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxTableMetadataCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxTableMetadataCount', name: 'MaxTableMetadataCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxTagsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxTagsCount', name: 'MaxTagsCount', traits: {"smithy.api#range" => {"min" => 75}})
    MaxWorkGroupsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxWorkGroupsCount', name: 'MaxWorkGroupsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MetadataException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#MetadataException', name: 'MetadataException', traits: {"smithy.api#error" => "client"})
    NameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    NamedQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NamedQuery', name: 'NamedQuery')
    NamedQueryDescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NamedQueryDescriptionString', name: 'NamedQueryDescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    NamedQueryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NamedQueryId', name: 'NamedQueryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    NamedQueryIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NamedQueryIdList', name: 'NamedQueryIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NamedQueryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NamedQueryList', name: 'NamedQueryList')
    NotebookId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NotebookId', name: 'NotebookId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NotebookMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NotebookMetadata', name: 'NotebookMetadata')
    NotebookMetadataArray = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NotebookMetadataArray', name: 'NotebookMetadataArray')
    NotebookName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NotebookName', name: 'NotebookName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!.*[/:\\\\])[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]+$"})
    NotebookSessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NotebookSessionSummary', name: 'NotebookSessionSummary')
    NotebookSessionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NotebookSessionsList', name: 'NotebookSessionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NotebookType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#NotebookType', name: 'NotebookType')
    ParametersMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.athena#ParametersMap', name: 'ParametersMap')
    ParametersMapValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ParametersMapValue', name: 'ParametersMapValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}})
    Payload = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#Payload', name: 'Payload', traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    PreparedStatement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PreparedStatement', name: 'PreparedStatement')
    PreparedStatementDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementDetailsList', name: 'PreparedStatementDetailsList')
    PreparedStatementNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementNameList', name: 'PreparedStatementNameList')
    PreparedStatementSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PreparedStatementSummary', name: 'PreparedStatementSummary')
    PreparedStatementsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementsList', name: 'PreparedStatementsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PutCapacityAssignmentConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PutCapacityAssignmentConfigurationInput', name: 'PutCapacityAssignmentConfigurationInput')
    PutCapacityAssignmentConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PutCapacityAssignmentConfigurationOutput', name: 'PutCapacityAssignmentConfigurationOutput')
    QueryExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecution', name: 'QueryExecution')
    QueryExecutionContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionContext', name: 'QueryExecutionContext')
    QueryExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#QueryExecutionId', name: 'QueryExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    QueryExecutionIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryExecutionIdList', name: 'QueryExecutionIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    QueryExecutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryExecutionList', name: 'QueryExecutionList')
    QueryExecutionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#QueryExecutionState', name: 'QueryExecutionState')
    QueryExecutionStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionStatistics', name: 'QueryExecutionStatistics')
    QueryExecutionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionStatus', name: 'QueryExecutionStatus')
    QueryResultType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#QueryResultType', name: 'QueryResultType')
    QueryResultsS3AccessGrantsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryResultsS3AccessGrantsConfiguration', name: 'QueryResultsS3AccessGrantsConfiguration')
    QueryRuntimeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatistics', name: 'QueryRuntimeStatistics')
    QueryRuntimeStatisticsRows = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatisticsRows', name: 'QueryRuntimeStatisticsRows')
    QueryRuntimeStatisticsTimeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatisticsTimeline', name: 'QueryRuntimeStatisticsTimeline')
    QueryStage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryStage', name: 'QueryStage')
    QueryStagePlanNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryStagePlanNode', name: 'QueryStagePlanNode')
    QueryStagePlanNodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryStagePlanNodes', name: 'QueryStagePlanNodes')
    QueryStages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryStages', name: 'QueryStages')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResultConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultConfiguration', name: 'ResultConfiguration')
    ResultConfigurationUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultConfigurationUpdates', name: 'ResultConfigurationUpdates')
    ResultOutputLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ResultOutputLocation', name: 'ResultOutputLocation')
    ResultReuseByAgeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseByAgeConfiguration', name: 'ResultReuseByAgeConfiguration')
    ResultReuseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseConfiguration', name: 'ResultReuseConfiguration')
    ResultReuseInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseInformation', name: 'ResultReuseInformation')
    ResultSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultSet', name: 'ResultSet')
    ResultSetMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultSetMetadata', name: 'ResultSetMetadata')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Row = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Row', name: 'Row')
    RowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#RowList', name: 'RowList')
    S3AclOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#S3AclOption', name: 'S3AclOption')
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(https|s3|S3)://([^/]+)/?(.*)$"})
    SessionAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionAlreadyExistsException', name: 'SessionAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    SessionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionConfiguration', name: 'SessionConfiguration')
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SessionIdleTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#SessionIdleTimeoutInMinutes', name: 'SessionIdleTimeoutInMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 480}})
    SessionManagerToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#SessionManagerToken', name: 'SessionManagerToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SessionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#SessionState', name: 'SessionState')
    SessionStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionStatistics', name: 'SessionStatistics')
    SessionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionStatus', name: 'SessionStatus')
    SessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionSummary', name: 'SessionSummary')
    SessionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#SessionsList', name: 'SessionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartCalculationExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartCalculationExecutionRequest', name: 'StartCalculationExecutionRequest')
    StartCalculationExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartCalculationExecutionResponse', name: 'StartCalculationExecutionResponse')
    StartQueryExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartQueryExecutionInput', name: 'StartQueryExecutionInput')
    StartQueryExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartQueryExecutionOutput', name: 'StartQueryExecutionOutput')
    StartSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartSessionRequest', name: 'StartSessionRequest')
    StartSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartSessionResponse', name: 'StartSessionResponse')
    StatementName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#StatementName', name: 'StatementName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_@:]{1,256}$"})
    StatementType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#StatementType', name: 'StatementType')
    StopCalculationExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopCalculationExecutionRequest', name: 'StopCalculationExecutionRequest')
    StopCalculationExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopCalculationExecutionResponse', name: 'StopCalculationExecutionResponse')
    StopQueryExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopQueryExecutionInput', name: 'StopQueryExecutionInput')
    StopQueryExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopQueryExecutionOutput', name: 'StopQueryExecutionOutput')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#StringList', name: 'StringList')
    SupportedDPUSizeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#SupportedDPUSizeList', name: 'SupportedDPUSizeList')
    TableMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TableMetadata', name: 'TableMetadata')
    TableMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TableMetadataList', name: 'TableMetadataList')
    TableTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TableTypeString', name: 'TableTypeString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TagList', name: 'TagList')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetDpusInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#TargetDpusInteger', name: 'TargetDpusInteger', traits: {"smithy.api#range" => {"min" => 24}})
    TerminateSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TerminateSessionRequest', name: 'TerminateSessionRequest')
    TerminateSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TerminateSessionResponse', name: 'TerminateSessionResponse')
    ThrottleReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ThrottleReason', name: 'ThrottleReason')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.athena#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client"})
    TypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TypeString', name: 'TypeString', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    UnprocessedNamedQueryId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedNamedQueryId', name: 'UnprocessedNamedQueryId')
    UnprocessedNamedQueryIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedNamedQueryIdList', name: 'UnprocessedNamedQueryIdList')
    UnprocessedPreparedStatementName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedPreparedStatementName', name: 'UnprocessedPreparedStatementName')
    UnprocessedPreparedStatementNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedPreparedStatementNameList', name: 'UnprocessedPreparedStatementNameList')
    UnprocessedQueryExecutionId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedQueryExecutionId', name: 'UnprocessedQueryExecutionId')
    UnprocessedQueryExecutionIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedQueryExecutionIdList', name: 'UnprocessedQueryExecutionIdList')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCapacityReservationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateCapacityReservationInput', name: 'UpdateCapacityReservationInput')
    UpdateCapacityReservationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateCapacityReservationOutput', name: 'UpdateCapacityReservationOutput')
    UpdateDataCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateDataCatalogInput', name: 'UpdateDataCatalogInput')
    UpdateDataCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateDataCatalogOutput', name: 'UpdateDataCatalogOutput')
    UpdateNamedQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNamedQueryInput', name: 'UpdateNamedQueryInput')
    UpdateNamedQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNamedQueryOutput', name: 'UpdateNamedQueryOutput')
    UpdateNotebookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookInput', name: 'UpdateNotebookInput')
    UpdateNotebookMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookMetadataInput', name: 'UpdateNotebookMetadataInput')
    UpdateNotebookMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookMetadataOutput', name: 'UpdateNotebookMetadataOutput')
    UpdateNotebookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookOutput', name: 'UpdateNotebookOutput')
    UpdatePreparedStatementInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdatePreparedStatementInput', name: 'UpdatePreparedStatementInput')
    UpdatePreparedStatementOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdatePreparedStatementOutput', name: 'UpdatePreparedStatementOutput')
    UpdateWorkGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateWorkGroupInput', name: 'UpdateWorkGroupInput')
    UpdateWorkGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateWorkGroupOutput', name: 'UpdateWorkGroupOutput')
    WorkGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroup', name: 'WorkGroup')
    WorkGroupConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupConfiguration', name: 'WorkGroupConfiguration')
    WorkGroupConfigurationUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupConfigurationUpdates', name: 'WorkGroupConfigurationUpdates')
    WorkGroupDescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#WorkGroupDescriptionString', name: 'WorkGroupDescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    WorkGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#WorkGroupName', name: 'WorkGroupName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]{1,128}$"})
    WorkGroupNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#WorkGroupNamesList', name: 'WorkGroupNamesList')
    WorkGroupState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#WorkGroupState', name: 'WorkGroupState')
    WorkGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupSummary', name: 'WorkGroupSummary')
    WorkGroupsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#WorkGroupsList', name: 'WorkGroupsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DatumList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#datumList', name: 'DatumList')
    DatumString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#datumString', name: 'DatumString')

    AclConfiguration.add_member(:s3_acl_option, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AclOption, location_name: 'S3AclOption', traits: {"smithy.api#documentation" => "<p>The Amazon S3 canned ACL that Athena should specify when storing\n            query results, including data files inserted by Athena as the result\n            of statements like CTAS or INSERT INTO. Currently the only supported canned ACL is\n                <code>BUCKET_OWNER_FULL_CONTROL</code>. If a query runs in a workgroup and the\n            workgroup overrides client-side settings, then the Amazon S3 canned ACL\n            specified in the workgroup's settings is used for all queries that run in the workgroup.\n            For more information about Amazon S3 canned ACLs, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl\">Canned ACL</a> in the <i>Amazon S3 User Guide</i>.</p>", "smithy.api#required" => {}}))
    AclConfiguration.type = Types::AclConfiguration
    ApplicationDPUSizes.add_member(:application_runtime_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'ApplicationRuntimeId', traits: {"smithy.api#documentation" => "<p>The name of the supported application runtime (for example, <code>Athena notebook\n                version 1</code>).</p>"}))
    ApplicationDPUSizes.add_member(:supported_dpu_sizes, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedDPUSizeList, location_name: 'SupportedDPUSizes', traits: {"smithy.api#documentation" => "<p>A list of the supported DPU sizes that the application runtime supports.</p>"}))
    ApplicationDPUSizes.type = Types::ApplicationDPUSizes
    ApplicationDPUSizesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDPUSizes)
    AthenaError.add_member(:error_category, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCategory, location_name: 'ErrorCategory', traits: {"smithy.api#documentation" => "<p>An integer value that specifies the category of a query failure error. The following\n            list shows the category for each integer value.</p>\n         <p>\n            <b>1</b> - System</p>\n         <p>\n            <b>2</b> - User</p>\n         <p>\n            <b>3</b> - Other</p>"}))
    AthenaError.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorType', traits: {"smithy.api#documentation" => "<p>An integer value that provides specific information about an Athena query\n            error. For the meaning of specific values, see the <a href=\"https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference\">Error Type Reference</a> in the <i>Amazon Athena User\n                Guide</i>.</p>"}))
    AthenaError.add_member(:retryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Retryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the query might succeed if resubmitted.</p>"}))
    AthenaError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Contains a short description of the error that occurred.</p>"}))
    AthenaError.type = Types::AthenaError
    AuthenticationType.add_member(:directory_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_IDENTITY', traits: {"smithy.api#enumValue" => "DIRECTORY_IDENTITY"}))
    BatchGetNamedQueryInput.add_member(:named_query_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: 'NamedQueryIds', traits: {"smithy.api#documentation" => "<p>An array of query IDs.</p>", "smithy.api#required" => {}}))
    BatchGetNamedQueryInput.type = Types::BatchGetNamedQueryInput
    BatchGetNamedQueryOutput.add_member(:named_queries, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryList, location_name: 'NamedQueries', traits: {"smithy.api#documentation" => "<p>Information about the named query IDs submitted.</p>"}))
    BatchGetNamedQueryOutput.add_member(:unprocessed_named_query_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedNamedQueryIdList, location_name: 'UnprocessedNamedQueryIds', traits: {"smithy.api#documentation" => "<p>Information about provided query IDs.</p>"}))
    BatchGetNamedQueryOutput.type = Types::BatchGetNamedQueryOutput
    BatchGetPreparedStatementInput.add_member(:prepared_statement_names, Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementNameList, location_name: 'PreparedStatementNames', traits: {"smithy.api#documentation" => "<p>A list of prepared statement names to return.</p>", "smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to which the prepared statements belong.</p>", "smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.type = Types::BatchGetPreparedStatementInput
    BatchGetPreparedStatementOutput.add_member(:prepared_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementDetailsList, location_name: 'PreparedStatements', traits: {"smithy.api#documentation" => "<p>The list of prepared statements returned.</p>"}))
    BatchGetPreparedStatementOutput.add_member(:unprocessed_prepared_statement_names, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementNameList, location_name: 'UnprocessedPreparedStatementNames', traits: {"smithy.api#documentation" => "<p>A list of one or more prepared statements that were requested but could not be\n            returned.</p>"}))
    BatchGetPreparedStatementOutput.type = Types::BatchGetPreparedStatementOutput
    BatchGetQueryExecutionInput.add_member(:query_execution_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: 'QueryExecutionIds', traits: {"smithy.api#documentation" => "<p>An array of query execution IDs.</p>", "smithy.api#required" => {}}))
    BatchGetQueryExecutionInput.type = Types::BatchGetQueryExecutionInput
    BatchGetQueryExecutionOutput.add_member(:query_executions, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionList, location_name: 'QueryExecutions', traits: {"smithy.api#documentation" => "<p>Information about a query execution.</p>"}))
    BatchGetQueryExecutionOutput.add_member(:unprocessed_query_execution_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionIdList, location_name: 'UnprocessedQueryExecutionIds', traits: {"smithy.api#documentation" => "<p>Information about the query executions that failed to run.</p>"}))
    BatchGetQueryExecutionOutput.type = Types::BatchGetQueryExecutionOutput
    CalculationConfiguration.add_member(:code_block, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock', traits: {"smithy.api#documentation" => "<p>A string that contains the code for the calculation.</p>"}))
    CalculationConfiguration.type = Types::CalculationConfiguration
    CalculationExecutionState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CalculationExecutionState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    CalculationExecutionState.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    CalculationExecutionState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CalculationExecutionState.add_member(:canceling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELING', traits: {"smithy.api#enumValue" => "CANCELING"}))
    CalculationExecutionState.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    CalculationExecutionState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CalculationExecutionState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CalculationResult.add_member(:std_out_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'StdOutS3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the <code>stdout</code> file for the calculation.</p>"}))
    CalculationResult.add_member(:std_error_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'StdErrorS3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the <code>stderr</code> error messages file for the\n            calculation.</p>"}))
    CalculationResult.add_member(:result_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'ResultS3Uri', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location of the folder for the calculation results.</p>"}))
    CalculationResult.add_member(:result_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationResultType, location_name: 'ResultType', traits: {"smithy.api#documentation" => "<p>The data format of the calculation result.</p>"}))
    CalculationResult.type = Types::CalculationResult
    CalculationStatistics.add_member(:dpu_execution_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DpuExecutionInMillis', traits: {"smithy.api#documentation" => "<p>The data processing unit execution time in milliseconds for the calculation.</p>"}))
    CalculationStatistics.add_member(:progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Progress', traits: {"smithy.api#documentation" => "<p>The progress of the calculation.</p>"}))
    CalculationStatistics.type = Types::CalculationStatistics
    CalculationStatus.add_member(:submission_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'SubmissionDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the calculation was submitted for processing.</p>"}))
    CalculationStatus.add_member(:completion_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletionDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the calculation completed processing.</p>"}))
    CalculationStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the calculation execution. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The calculation is in the process of being created.</p>\n         <p>\n            <code>CREATED</code> - The calculation has been created and is ready to run.</p>\n         <p>\n            <code>QUEUED</code> - The calculation has been queued for processing.</p>\n         <p>\n            <code>RUNNING</code> - The calculation is running.</p>\n         <p>\n            <code>CANCELING</code> - A request to cancel the calculation has been received and the\n            system is working to stop it.</p>\n         <p>\n            <code>CANCELED</code> - The calculation is no longer running as the result of a cancel\n            request.</p>\n         <p>\n            <code>COMPLETED</code> - The calculation has completed without error.</p>\n         <p>\n            <code>FAILED</code> - The calculation failed and is no longer running.</p>"}))
    CalculationStatus.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>The reason for the calculation state change (for example, the calculation was canceled\n            because the session was terminated).</p>"}))
    CalculationStatus.type = Types::CalculationStatus
    CalculationSummary.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>"}))
    CalculationSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the calculation.</p>"}))
    CalculationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the status of the calculation.</p>"}))
    CalculationSummary.type = Types::CalculationSummary
    CalculationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationSummary)
    CancelCapacityReservationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation to cancel.</p>", "smithy.api#required" => {}}))
    CancelCapacityReservationInput.type = Types::CancelCapacityReservationInput
    CancelCapacityReservationOutput.type = Types::CancelCapacityReservationOutput
    CapacityAllocation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAllocationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the capacity allocation.</p>", "smithy.api#required" => {}}))
    CapacityAllocation.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the capacity allocation.</p>"}))
    CapacityAllocation.add_member(:request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestTime', traits: {"smithy.api#documentation" => "<p>The time when the capacity allocation was requested.</p>", "smithy.api#required" => {}}))
    CapacityAllocation.add_member(:request_completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestCompletionTime', traits: {"smithy.api#documentation" => "<p>The time when the capacity allocation request was completed.</p>"}))
    CapacityAllocation.type = Types::CapacityAllocation
    CapacityAllocationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityAllocationStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CapacityAllocationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityAssignment.add_member(:work_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupNamesList, location_name: 'WorkGroupNames', traits: {"smithy.api#documentation" => "<p>The list of workgroup names for the capacity assignment.</p>"}))
    CapacityAssignment.type = Types::CapacityAssignment
    CapacityAssignmentConfiguration.add_member(:capacity_reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName', traits: {"smithy.api#documentation" => "<p>The name of the reservation that the capacity assignment configuration is for.</p>"}))
    CapacityAssignmentConfiguration.add_member(:capacity_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentsList, location_name: 'CapacityAssignments', traits: {"smithy.api#documentation" => "<p>The list of assignments that make up the capacity assignment configuration.</p>"}))
    CapacityAssignmentConfiguration.type = Types::CapacityAssignmentConfiguration
    CapacityAssignmentsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignment)
    CapacityReservation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation.</p>", "smithy.api#required" => {}}))
    CapacityReservation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the capacity reservation.</p>", "smithy.api#required" => {}}))
    CapacityReservation.add_member(:target_dpus, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#documentation" => "<p>The number of data processing units requested.</p>", "smithy.api#required" => {}}))
    CapacityReservation.add_member(:allocated_dpus, Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatedDpusInteger, location_name: 'AllocatedDpus', traits: {"smithy.api#documentation" => "<p>The number of data processing units currently allocated.</p>", "smithy.api#required" => {}}))
    CapacityReservation.add_member(:last_allocation, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAllocation, location_name: 'LastAllocation'))
    CapacityReservation.add_member(:last_successful_allocation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSuccessfulAllocationTime', traits: {"smithy.api#documentation" => "<p>The time of the most recent capacity allocation that succeeded.</p>"}))
    CapacityReservation.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time in UTC epoch millis when the capacity reservation was created.</p>", "smithy.api#required" => {}}))
    CapacityReservation.type = Types::CapacityReservation
    CapacityReservationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityReservationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CapacityReservationStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    CapacityReservationStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CapacityReservationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityReservationStatus.add_member(:update_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING', traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    CapacityReservationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservation)
    Column.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the column.</p>", "smithy.api#required" => {}}))
    Column.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data type of the column.</p>"}))
    Column.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentString, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>Optional information about the column.</p>"}))
    Column.type = Types::Column
    ColumnInfo.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The catalog to which the query results belong.</p>"}))
    ColumnInfo.add_member(:schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaName', traits: {"smithy.api#documentation" => "<p>The schema name (database name) to which the query results belong.</p>"}))
    ColumnInfo.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The table name for the query results.</p>"}))
    ColumnInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the column.</p>", "smithy.api#required" => {}}))
    ColumnInfo.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>A column label.</p>"}))
    ColumnInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data type of the column.</p>", "smithy.api#required" => {}}))
    ColumnInfo.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Precision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38.\n            For performance reasons, we recommend up to 18 digits.</p>"}))
    ColumnInfo.add_member(:scale, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Scale', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>For <code>DECIMAL</code> data types, specifies the total number of digits in the\n            fractional part of the value. Defaults to 0.</p>"}))
    ColumnInfo.add_member(:nullable, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNullable, location_name: 'Nullable', traits: {"smithy.api#documentation" => "<p>Unsupported constraint. This value always shows as <code>UNKNOWN</code>.</p>"}))
    ColumnInfo.add_member(:case_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CaseSensitive', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether values in the column are case-sensitive.</p>"}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo)
    ColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    ColumnNullable.add_member(:not_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_NULL', traits: {"smithy.api#enumValue" => "NOT_NULL"}))
    ColumnNullable.add_member(:nullable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NULLABLE', traits: {"smithy.api#enumValue" => "NULLABLE"}))
    ColumnNullable.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ConnectionType.add_member(:dynamodb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMODB', traits: {"smithy.api#enumValue" => "DYNAMODB"}))
    ConnectionType.add_member(:mysql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL', traits: {"smithy.api#enumValue" => "MYSQL"}))
    ConnectionType.add_member(:postgresql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRESQL', traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    ConnectionType.add_member(:redshift, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT', traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    ConnectionType.add_member(:oracle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORACLE', traits: {"smithy.api#enumValue" => "ORACLE"}))
    ConnectionType.add_member(:synapse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNAPSE', traits: {"smithy.api#enumValue" => "SYNAPSE"}))
    ConnectionType.add_member(:sqlserver, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQLSERVER', traits: {"smithy.api#enumValue" => "SQLSERVER"}))
    ConnectionType.add_member(:db2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DB2', traits: {"smithy.api#enumValue" => "DB2"}))
    ConnectionType.add_member(:opensearch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH', traits: {"smithy.api#enumValue" => "OPENSEARCH"}))
    ConnectionType.add_member(:bigquery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGQUERY', traits: {"smithy.api#enumValue" => "BIGQUERY"}))
    ConnectionType.add_member(:googlecloudstorage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOGLECLOUDSTORAGE', traits: {"smithy.api#enumValue" => "GOOGLECLOUDSTORAGE"}))
    ConnectionType.add_member(:hbase, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HBASE', traits: {"smithy.api#enumValue" => "HBASE"}))
    ConnectionType.add_member(:documentdb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENTDB', traits: {"smithy.api#enumValue" => "DOCUMENTDB"}))
    ConnectionType.add_member(:cmdb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CMDB', traits: {"smithy.api#enumValue" => "CMDB"}))
    ConnectionType.add_member(:tpcds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TPCDS', traits: {"smithy.api#enumValue" => "TPCDS"}))
    ConnectionType.add_member(:timestream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTREAM', traits: {"smithy.api#enumValue" => "TIMESTREAM"}))
    ConnectionType.add_member(:saphana, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAPHANA', traits: {"smithy.api#enumValue" => "SAPHANA"}))
    ConnectionType.add_member(:snowflake, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOWFLAKE', traits: {"smithy.api#enumValue" => "SNOWFLAKE"}))
    ConnectionType.add_member(:datalakegen2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATALAKEGEN2', traits: {"smithy.api#enumValue" => "DATALAKEGEN2"}))
    ConnectionType.add_member(:db2_as400, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DB2AS400', traits: {"smithy.api#enumValue" => "DB2AS400"}))
    CreateCapacityReservationInput.add_member(:target_dpus, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#documentation" => "<p>The number of requested data processing units.</p>", "smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation to create.</p>", "smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the capacity reservation.</p>"}))
    CreateCapacityReservationInput.type = Types::CreateCapacityReservationInput
    CreateCapacityReservationOutput.type = Types::CreateCapacityReservationOutput
    CreateDataCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data catalog to create. The catalog name must be unique for the\n                Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at\n            sign, or hyphen characters. The remainder of the length constraint of 256 is reserved\n            for use by Athena.</p>\n         <p>For <code>FEDERATED</code> type the catalog name has following considerations and\n            limits:</p>\n         <ul>\n            <li>\n               <p>The catalog name allows special characters such as <code>_ , @ , \\ , -\n                    </code>. These characters are replaced with a hyphen (-) when creating the CFN\n                    Stack Name and with an underscore (_) when creating the Lambda Function and Glue\n                    Connection Name.</p>\n            </li>\n            <li>\n               <p>The catalog name has a theoretical limit of 128 characters. However, since we\n                    use it to create other resources that allow less characters and we prepend a\n                    prefix to it, the actual catalog name limit for <code>FEDERATED</code> catalog\n                    is 64 - 23 = 41 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,\n                <code>GLUE</code> for an Glue Data Catalog, and <code>HIVE</code> for an\n            external Apache Hive metastore. <code>FEDERATED</code> is a federated catalog for which\n                Athena creates the connection and the Lambda function for\n            you based on the parameters that you pass.</p>\n         <p>For <code>FEDERATED</code> type, we do not support IAM identity center.</p>", "smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the data catalog to be created.</p>"}))
    CreateDataCatalogInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Specifies the Lambda function or functions to use for creating the data\n            catalog. This is a mapping whose values depend on the catalog type. </p>\n         <ul>\n            <li>\n               <p>For the <code>HIVE</code> data catalog type, use the following syntax. The\n                        <code>metadata-function</code> parameter is required. <code>The\n                        sdk-version</code> parameter is optional and defaults to the currently\n                    supported version.</p>\n               <p>\n                  <code>metadata-function=<i>lambda_arn</i>,\n                            sdk-version=<i>version_number</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets\n                    of required parameters, but not both.</p>\n               <ul>\n                  <li>\n                     <p>If you have one Lambda function that processes metadata\n                            and another for reading the actual data, use the following syntax. Both\n                            parameters are required.</p>\n                     <p>\n                        <code>metadata-function=<i>lambda_arn</i>,\n                                    record-function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n                  <li>\n                     <p> If you have a composite Lambda function that processes\n                            both metadata and data, use the following syntax to specify your Lambda function.</p>\n                     <p>\n                        <code>function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The\n                            <code>\n                     <i>catalog_id</i>\n                  </code> is the account ID of the\n                        Amazon Web Services account to which the Glue Data Catalog\n                    belongs.</p>\n               <p>\n                  <code>catalog-id=<i>catalog_id</i>\n                  </code>\n               </p>\n               <ul>\n                  <li>\n                     <p>The <code>GLUE</code> data catalog type also applies to the default\n                                <code>AwsDataCatalog</code> that already exists in your account, of\n                            which you can have only one and cannot modify.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The <code>FEDERATED</code> data catalog type uses one of the following\n                    parameters, but not both. Use <code>connection-arn</code> for an existing\n                        Glue connection. Use <code>connection-type</code> and\n                        <code>connection-properties</code> to specify the configuration setting for\n                    a new connection.</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>connection-arn:<i><glue_connection_arn_to_reuse></i>\n                        </code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>lambda-role-arn</code> (optional): The execution role to use for the\n                            Lambda function. If not provided, one is created.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>connection-type:MYSQL|REDSHIFT|....,\n                                    connection-properties:\"<i><json_string></i>\"</code>\n                     </p>\n                     <p>For <i>\n                           <code><json_string></code>\n                        </i>, use escaped\n                            JSON text, as in the following example.</p>\n                     <p>\n                        <code>\"{\\\"spill_bucket\\\":\\\"my_spill\\\",\\\"spill_prefix\\\":\\\"athena-spill\\\",\\\"host\\\":\\\"abc12345.snowflakecomputing.com\\\",\\\"port\\\":\\\"1234\\\",\\\"warehouse\\\":\\\"DEV_WH\\\",\\\"database\\\":\\\"TEST\\\",\\\"schema\\\":\\\"PUBLIC\\\",\\\"SecretArn\\\":\\\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\\\"}\"</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    CreateDataCatalogInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of comma separated tags to add to the data catalog that is created. All the\n            resources that are created by the <code>CreateDataCatalog</code> API operation with\n                <code>FEDERATED</code> type will have the tag\n                <code>federated_athena_datacatalog=\"true\"</code>. This includes the CFN Stack, Glue\n            Connection, Athena DataCatalog, and all the resources created as part of the CFN Stack\n            (Lambda Function, IAM policies/roles).</p>"}))
    CreateDataCatalogInput.type = Types::CreateDataCatalogInput
    CreateDataCatalogOutput.add_member(:data_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog'))
    CreateDataCatalogOutput.type = Types::CreateDataCatalogOutput
    CreateNamedQueryInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The query name.</p>", "smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The query description.</p>"}))
    CreateNamedQueryInput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The database to which the query belongs.</p>", "smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The contents of the query with all query statements.</p>", "smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the query is\n            idempotent (executes only once). If another <code>CreateNamedQuery</code> request is\n            received, the same response is returned and another query is not created. If a parameter\n            has changed, for example, the <code>QueryString</code>, an error is returned.</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for users. If you are\n                not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>", "smithy.api#idempotencyToken" => {}}))
    CreateNamedQueryInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup in which the named query is being created.</p>"}))
    CreateNamedQueryInput.type = Types::CreateNamedQueryInput
    CreateNamedQueryOutput.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query.</p>"}))
    CreateNamedQueryOutput.type = Types::CreateNamedQueryOutput
    CreateNotebookInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the Spark enabled workgroup in which the notebook will be created.</p>", "smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the <code>ipynb</code> file to be created in the Spark workgroup, without\n            the <code>.ipynb</code> extension.</p>", "smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the notebook is\n            idempotent (executes only once).</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not\n                using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    CreateNotebookInput.type = Types::CreateNotebookInput
    CreateNotebookOutput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the notebook.</p>"}))
    CreateNotebookOutput.type = Types::CreateNotebookOutput
    CreatePreparedStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement.</p>", "smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to which the prepared statement belongs.</p>", "smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>The query string for the prepared statement.</p>", "smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the prepared statement.</p>"}))
    CreatePreparedStatementInput.type = Types::CreatePreparedStatementInput
    CreatePreparedStatementOutput.type = Types::CreatePreparedStatementOutput
    CreatePresignedNotebookUrlRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    CreatePresignedNotebookUrlRequest.type = Types::CreatePresignedNotebookUrlRequest
    CreatePresignedNotebookUrlResponse.add_member(:notebook_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotebookUrl', traits: {"smithy.api#documentation" => "<p>The URL of the notebook. The URL includes the authentication token and notebook file\n            name and points directly to the opened notebook.</p>", "smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthToken, location_name: 'AuthToken', traits: {"smithy.api#documentation" => "<p>The authentication token for the notebook.</p>", "smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token_expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AuthTokenExpirationTime', traits: {"smithy.api#documentation" => "<p>The UTC epoch time when the authentication token expires.</p>", "smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.type = Types::CreatePresignedNotebookUrlResponse
    CreateWorkGroupInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The workgroup name.</p>", "smithy.api#required" => {}}))
    CreateWorkGroupInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>Contains configuration information for creating an Athena SQL workgroup or\n            Spark enabled Athena workgroup. Athena SQL workgroup\n            configuration includes the location in Amazon S3 where query and calculation\n            results are stored, the encryption configuration, if any, used for encrypting query\n            results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the\n            limit for the amount of bytes scanned (cutoff) per query, if it is specified, and\n            whether workgroup's settings (specified with <code>EnforceWorkGroupConfiguration</code>)\n            in the <code>WorkGroupConfiguration</code> override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"}))
    CreateWorkGroupInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The workgroup description.</p>"}))
    CreateWorkGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of comma separated tags to add to the workgroup that is created.</p>"}))
    CreateWorkGroupInput.type = Types::CreateWorkGroupInput
    CreateWorkGroupOutput.type = Types::CreateWorkGroupOutput
    CustomerContentEncryptionConfiguration.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The customer managed KMS key that is used to encrypt the user's data stores in Athena.</p>", "smithy.api#required" => {}}))
    CustomerContentEncryptionConfiguration.type = Types::CustomerContentEncryptionConfiguration
    DataCatalog.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data catalog. The catalog name must be unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,\n            or hyphen characters. The remainder of the length constraint of 256 is reserved for use\n            by Athena.</p>", "smithy.api#required" => {}}))
    DataCatalog.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the data catalog.</p>"}))
    DataCatalog.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog,\n                <code>GLUE</code> for an Glue Data Catalog, and <code>HIVE</code> for an\n            external Apache Hive metastore. <code>FEDERATED</code> is a federated catalog for which\n                Athena creates the connection and the Lambda function for\n            you based on the parameters that you pass.</p>", "smithy.api#required" => {}}))
    DataCatalog.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Specifies the Lambda function or functions to use for the data catalog.\n            This is a mapping whose values depend on the catalog type. </p>\n         <ul>\n            <li>\n               <p>For the <code>HIVE</code> data catalog type, use the following syntax. The\n                        <code>metadata-function</code> parameter is required. <code>The\n                        sdk-version</code> parameter is optional and defaults to the currently\n                    supported version.</p>\n               <p>\n                  <code>metadata-function=<i>lambda_arn</i>,\n                            sdk-version=<i>version_number</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets\n                    of required parameters, but not both.</p>\n               <ul>\n                  <li>\n                     <p>If you have one Lambda function that processes metadata\n                            and another for reading the actual data, use the following syntax. Both\n                            parameters are required.</p>\n                     <p>\n                        <code>metadata-function=<i>lambda_arn</i>,\n                                    record-function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n                  <li>\n                     <p> If you have a composite Lambda function that processes\n                            both metadata and data, use the following syntax to specify your Lambda function.</p>\n                     <p>\n                        <code>function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The <code>GLUE</code> type takes a catalog ID parameter and is required. The\n                            <code>\n                     <i>catalog_id</i>\n                  </code> is the account ID of the\n                        Amazon Web Services account to which the Glue catalog\n                    belongs.</p>\n               <p>\n                  <code>catalog-id=<i>catalog_id</i>\n                  </code>\n               </p>\n               <ul>\n                  <li>\n                     <p>The <code>GLUE</code> data catalog type also applies to the default\n                                <code>AwsDataCatalog</code> that already exists in your account, of\n                            which you can have only one and cannot modify.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>The <code>FEDERATED</code> data catalog type uses one of the following\n                    parameters, but not both. Use <code>connection-arn</code> for an existing\n                        Glue connection. Use <code>connection-type</code> and\n                        <code>connection-properties</code> to specify the configuration setting for\n                    a new connection.</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>connection-arn:<i><glue_connection_arn_to_reuse></i>\n                        </code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>connection-type:MYSQL|REDSHIFT|....,\n                                    connection-properties:\"<i><json_string></i>\"</code>\n                     </p>\n                     <p>For <i>\n                           <code><json_string></code>\n                        </i>, use escaped\n                            JSON text, as in the following example.</p>\n                     <p>\n                        <code>\"{\\\"spill_bucket\\\":\\\"my_spill\\\",\\\"spill_prefix\\\":\\\"athena-spill\\\",\\\"host\\\":\\\"abc12345.snowflakecomputing.com\\\",\\\"port\\\":\\\"1234\\\",\\\"warehouse\\\":\\\"DEV_WH\\\",\\\"database\\\":\\\"TEST\\\",\\\"schema\\\":\\\"PUBLIC\\\",\\\"SecretArn\\\":\\\"arn:aws:secretsmanager:ap-south-1:111122223333:secret:snowflake-XHb67j\\\"}\"</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    DataCatalog.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the creation or deletion of the data catalog.</p>\n         <ul>\n            <li>\n               <p>The <code>LAMBDA</code>, <code>GLUE</code>, and <code>HIVE</code> data catalog\n                    types are created synchronously. Their status is either\n                        <code>CREATE_COMPLETE</code> or <code>CREATE_FAILED</code>.</p>\n            </li>\n            <li>\n               <p>The <code>FEDERATED</code> data catalog type is created asynchronously.</p>\n            </li>\n         </ul>\n         <p>Data catalog creation status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_IN_PROGRESS</code>: Federated data catalog creation in\n                    progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_COMPLETE</code>: Data catalog creation complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code>: Data catalog could not be created.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_IN_PROGRESS</code>: Federated data catalog\n                    creation failed and is being removed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_COMPLETE</code>: Federated data catalog creation\n                    failed and was removed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_FAILED</code>: Federated data catalog creation\n                    failed but could not be removed.</p>\n            </li>\n         </ul>\n         <p>Data catalog deletion status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DELETE_IN_PROGRESS</code>: Federated data catalog deletion in\n                    progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_COMPLETE</code>: Federated data catalog deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_FAILED</code>: Federated data catalog could not be\n                    deleted.</p>\n            </li>\n         </ul>"}))
    DataCatalog.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'ConnectionType', traits: {"smithy.api#documentation" => "<p>The type of connection for a <code>FEDERATED</code> data catalog (for example,\n                <code>REDSHIFT</code>, <code>MYSQL</code>, or <code>SQLSERVER</code>). For\n            information about individual connectors, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/connectors-available.html\">Available data source\n                connectors</a>.</p>"}))
    DataCatalog.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Text of the error that occurred during data catalog creation or deletion.</p>"}))
    DataCatalog.type = Types::DataCatalog
    DataCatalogStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_FAILED"}))
    DataCatalogStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:delete_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_COMPLETE', traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    DataCatalogStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DataCatalogSummary.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The name of the data catalog. The catalog name is unique for the Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at sign,\n            or hyphen characters. The remainder of the length constraint of 256 is reserved for use\n            by Athena.</p>"}))
    DataCatalogSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data catalog type.</p>"}))
    DataCatalogSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the creation or deletion of the data catalog.</p>\n         <ul>\n            <li>\n               <p>The <code>LAMBDA</code>, <code>GLUE</code>, and <code>HIVE</code> data catalog\n                    types are created synchronously. Their status is either\n                        <code>CREATE_COMPLETE</code> or <code>CREATE_FAILED</code>.</p>\n            </li>\n            <li>\n               <p>The <code>FEDERATED</code> data catalog type is created asynchronously.</p>\n            </li>\n         </ul>\n         <p>Data catalog creation status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATE_IN_PROGRESS</code>: Federated data catalog creation in\n                    progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_COMPLETE</code>: Data catalog creation complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED</code>: Data catalog could not be created.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_IN_PROGRESS</code>: Federated data catalog\n                    creation failed and is being removed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_COMPLETE</code>: Federated data catalog creation\n                    failed and was removed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATE_FAILED_CLEANUP_FAILED</code>: Federated data catalog creation\n                    failed but could not be removed.</p>\n            </li>\n         </ul>\n         <p>Data catalog deletion status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DELETE_IN_PROGRESS</code>: Federated data catalog deletion in\n                    progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_COMPLETE</code>: Federated data catalog deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETE_FAILED</code>: Federated data catalog could not be\n                    deleted.</p>\n            </li>\n         </ul>"}))
    DataCatalogSummary.add_member(:connection_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'ConnectionType', traits: {"smithy.api#documentation" => "<p>The type of connection for a <code>FEDERATED</code> data catalog (for example,\n                <code>REDSHIFT</code>, <code>MYSQL</code>, or <code>SQLSERVER</code>). For\n            information about individual connectors, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/connectors-available.html\">Available data source\n                connectors</a>.</p>"}))
    DataCatalogSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>Text of the error that occurred during data catalog creation or deletion.</p>"}))
    DataCatalogSummary.type = Types::DataCatalogSummary
    DataCatalogSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogSummary)
    DataCatalogType.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    DataCatalogType.add_member(:glue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLUE', traits: {"smithy.api#enumValue" => "GLUE"}))
    DataCatalogType.add_member(:hive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIVE', traits: {"smithy.api#enumValue" => "HIVE"}))
    DataCatalogType.add_member(:federated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEDERATED', traits: {"smithy.api#enumValue" => "FEDERATED"}))
    Database.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the database.</p>", "smithy.api#required" => {}}))
    Database.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the database.</p>"}))
    Database.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A set of custom key/value pairs.</p>"}))
    Database.type = Types::Database
    DatabaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Database)
    Datum.add_member(:var_char_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumString, location_name: 'VarCharValue', traits: {"smithy.api#documentation" => "<p>The value of the datum.</p>"}))
    Datum.type = Types::Datum
    DeleteCapacityReservationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation to delete.</p>", "smithy.api#required" => {}}))
    DeleteCapacityReservationInput.type = Types::DeleteCapacityReservationInput
    DeleteCapacityReservationOutput.type = Types::DeleteCapacityReservationOutput
    DeleteDataCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data catalog to delete.</p>", "smithy.api#required" => {}}))
    DeleteDataCatalogInput.add_member(:delete_catalog_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteCatalogOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Deletes the Athena Data Catalog. You can only use this with the <code>FEDERATED</code>\n            catalogs. You usually perform this before registering the connector with Glue Data\n            Catalog. After deletion, you will have to manage the Glue Connection and Lambda\n            function. </p>"}))
    DeleteDataCatalogInput.type = Types::DeleteDataCatalogInput
    DeleteDataCatalogOutput.add_member(:data_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog'))
    DeleteDataCatalogOutput.type = Types::DeleteDataCatalogOutput
    DeleteNamedQueryInput.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query to delete.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteNamedQueryInput.type = Types::DeleteNamedQueryInput
    DeleteNamedQueryOutput.type = Types::DeleteNamedQueryOutput
    DeleteNotebookInput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook to delete.</p>", "smithy.api#required" => {}}))
    DeleteNotebookInput.type = Types::DeleteNotebookInput
    DeleteNotebookOutput.type = Types::DeleteNotebookOutput
    DeletePreparedStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement to delete.</p>", "smithy.api#required" => {}}))
    DeletePreparedStatementInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to which the statement to be deleted belongs.</p>", "smithy.api#required" => {}}))
    DeletePreparedStatementInput.type = Types::DeletePreparedStatementInput
    DeletePreparedStatementOutput.type = Types::DeletePreparedStatementOutput
    DeleteWorkGroupInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The unique name of the workgroup to delete.</p>", "smithy.api#required" => {}}))
    DeleteWorkGroupInput.add_member(:recursive_delete_option, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RecursiveDeleteOption', traits: {"smithy.api#documentation" => "<p>The option to delete the workgroup and its contents even if the workgroup contains any\n            named queries, query executions, or notebooks.</p>"}))
    DeleteWorkGroupInput.type = Types::DeleteWorkGroupInput
    DeleteWorkGroupOutput.type = Types::DeleteWorkGroupOutput
    EncryptionConfiguration.add_member(:encryption_option, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionOption, location_name: 'EncryptionOption', traits: {"smithy.api#documentation" => "<p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE_S3</code>), server-side encryption with KMS-managed keys\n                (<code>SSE_KMS</code>), or client-side encryption with KMS-managed keys\n                (<code>CSE_KMS</code>) is used.</p>\n         <p>If a query runs in a workgroup and the workgroup overrides client-side settings, then\n            the workgroup's setting for encryption is used. It specifies whether query results must\n            be encrypted, for all queries that run in this workgroup. </p>", "smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>For <code>SSE_KMS</code> and <code>CSE_KMS</code>, this is the KMS key ARN or\n            ID.</p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionOption.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    EncryptionOption.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    EncryptionOption.add_member(:cse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSE_KMS', traits: {"smithy.api#enumValue" => "CSE_KMS"}))
    EngineConfiguration.add_member(:coordinator_dpu_size, Smithy::Schema::Shapes::ShapeRef.new(shape: CoordinatorDpuSize, location_name: 'CoordinatorDpuSize', traits: {"smithy.api#documentation" => "<p>The number of DPUs to use for the coordinator. A coordinator is a special executor\n            that orchestrates processing work and manages other executors in a notebook session. The\n            default is 1.</p>"}))
    EngineConfiguration.add_member(:max_concurrent_dpus, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentDpus, location_name: 'MaxConcurrentDpus', traits: {"smithy.api#documentation" => "<p>The maximum number of DPUs that can run concurrently.</p>", "smithy.api#required" => {}}))
    EngineConfiguration.add_member(:default_executor_dpu_size, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExecutorDpuSize, location_name: 'DefaultExecutorDpuSize', traits: {"smithy.api#documentation" => "<p>The default number of DPUs to use for executors. An executor is the smallest unit of\n            compute that a notebook session can request from Athena. The default is\n            1.</p>"}))
    EngineConfiguration.add_member(:additional_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'AdditionalConfigs', traits: {"smithy.api#documentation" => "<p>Contains additional notebook engine <code>MAP<string, string></code> parameter\n            mappings in the form of key-value pairs. To specify an Athena notebook that\n            the Jupyter server will download and serve, specify a value for the <a>StartSessionRequest$NotebookVersion</a> field, and then add a key named\n                <code>NotebookId</code> to <code>AdditionalConfigs</code> that has the value of the\n                Athena notebook ID.</p>"}))
    EngineConfiguration.add_member(:spark_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'SparkProperties', traits: {"smithy.api#documentation" => "<p>Specifies custom jar files and Spark properties for use cases like cluster encryption,\n            table formats, and general Spark tuning.</p>"}))
    EngineConfiguration.type = Types::EngineConfiguration
    EngineVersion.add_member(:selected_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'SelectedEngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version requested by the user. Possible values are determined by the output\n            of <code>ListEngineVersions</code>, including AUTO. The default is AUTO.</p>"}))
    EngineVersion.add_member(:effective_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'EffectiveEngineVersion', traits: {"smithy.api#documentation" => "<p>Read only. The engine version on which the query runs. If the user requests a valid\n            engine version other than Auto, the effective engine version is the same as the engine\n            version that the user requested. If the user requests Auto, the effective engine version\n            is chosen by Athena. When a request to update the engine version is made by\n            a <code>CreateWorkGroup</code> or <code>UpdateWorkGroup</code> operation, the\n                <code>EffectiveEngineVersion</code> field is ignored.</p>"}))
    EngineVersion.type = Types::EngineVersion
    EngineVersionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion)
    ExecutionParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameter)
    ExecutorState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ExecutorState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ExecutorState.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "REGISTERED"}))
    ExecutorState.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ExecutorState.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ExecutorState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutorType.add_member(:coordinator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COORDINATOR', traits: {"smithy.api#enumValue" => "COORDINATOR"}))
    ExecutorType.add_member(:gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GATEWAY', traits: {"smithy.api#enumValue" => "GATEWAY"}))
    ExecutorType.add_member(:worker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKER', traits: {"smithy.api#enumValue" => "WORKER"}))
    ExecutorsSummary.add_member(:executor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorId, location_name: 'ExecutorId', traits: {"smithy.api#documentation" => "<p>The UUID of the executor.</p>", "smithy.api#required" => {}}))
    ExecutorsSummary.add_member(:executor_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorType, location_name: 'ExecutorType', traits: {"smithy.api#documentation" => "<p>The type of executor used for the application (<code>COORDINATOR</code>,\n                <code>GATEWAY</code>, or <code>WORKER</code>).</p>"}))
    ExecutorsSummary.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StartDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the executor started.</p>"}))
    ExecutorsSummary.add_member(:termination_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TerminationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the executor was terminated.</p>"}))
    ExecutorsSummary.add_member(:executor_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorState, location_name: 'ExecutorState', traits: {"smithy.api#documentation" => "<p>The processing state of the executor. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The executor is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The executor has been started.</p>\n         <p>\n            <code>REGISTERED</code> - The executor has been registered.</p>\n         <p>\n            <code>TERMINATING</code> - The executor is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The executor is no longer running.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the executor is no longer running.</p>"}))
    ExecutorsSummary.add_member(:executor_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExecutorSize', traits: {"smithy.api#documentation" => "<p>The smallest unit of compute that a session can request from Athena. Size\n            is measured in data processing unit (DPU) values, a relative measure of processing\n            power.</p>"}))
    ExecutorsSummary.type = Types::ExecutorsSummary
    ExecutorsSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorsSummary)
    ExportNotebookInput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook to export.</p>", "smithy.api#required" => {}}))
    ExportNotebookInput.type = Types::ExportNotebookInput
    ExportNotebookOutput.add_member(:notebook_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: 'NotebookMetadata', traits: {"smithy.api#documentation" => "<p>The notebook metadata, including notebook ID, notebook name, and workgroup\n            name.</p>"}))
    ExportNotebookOutput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#documentation" => "<p>The content of the exported notebook.</p>"}))
    ExportNotebookOutput.type = Types::ExportNotebookOutput
    FilterDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the notebook to search for.</p>"}))
    FilterDefinition.type = Types::FilterDefinition
    GetCalculationExecutionCodeRequest.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>", "smithy.api#required" => {}}))
    GetCalculationExecutionCodeRequest.type = Types::GetCalculationExecutionCodeRequest
    GetCalculationExecutionCodeResponse.add_member(:code_block, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock', traits: {"smithy.api#documentation" => "<p>The unencrypted code that was executed for the calculation.</p>"}))
    GetCalculationExecutionCodeResponse.type = Types::GetCalculationExecutionCodeResponse
    GetCalculationExecutionRequest.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>", "smithy.api#required" => {}}))
    GetCalculationExecutionRequest.type = Types::GetCalculationExecutionRequest
    GetCalculationExecutionResponse.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>"}))
    GetCalculationExecutionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID that the calculation ran in.</p>"}))
    GetCalculationExecutionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the calculation execution.</p>"}))
    GetCalculationExecutionResponse.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'WorkingDirectory', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location in which calculation results are stored.</p>"}))
    GetCalculationExecutionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the status of the calculation.</p>"}))
    GetCalculationExecutionResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>Contains information about the data processing unit (DPU) execution time and progress.\n            This field is populated only when statistics are available.</p>"}))
    GetCalculationExecutionResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationResult, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>Contains result information. This field is populated only if the calculation is\n            completed.</p>"}))
    GetCalculationExecutionResponse.type = Types::GetCalculationExecutionResponse
    GetCalculationExecutionStatusRequest.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>", "smithy.api#required" => {}}))
    GetCalculationExecutionStatusRequest.type = Types::GetCalculationExecutionStatusRequest
    GetCalculationExecutionStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the calculation execution status.</p>"}))
    GetCalculationExecutionStatusResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>Contains information about the DPU execution time and progress.</p>"}))
    GetCalculationExecutionStatusResponse.type = Types::GetCalculationExecutionStatusResponse
    GetCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation to retrieve the capacity assignment configuration\n            for.</p>", "smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationInput.type = Types::GetCapacityAssignmentConfigurationInput
    GetCapacityAssignmentConfigurationOutput.add_member(:capacity_assignment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentConfiguration, location_name: 'CapacityAssignmentConfiguration', traits: {"smithy.api#documentation" => "<p>The requested capacity assignment configuration for the specified capacity\n            reservation.</p>", "smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationOutput.type = Types::GetCapacityAssignmentConfigurationOutput
    GetCapacityReservationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation.</p>", "smithy.api#required" => {}}))
    GetCapacityReservationInput.type = Types::GetCapacityReservationInput
    GetCapacityReservationOutput.add_member(:capacity_reservation, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservation, location_name: 'CapacityReservation', traits: {"smithy.api#documentation" => "<p>The requested capacity reservation structure.</p>", "smithy.api#required" => {}}))
    GetCapacityReservationOutput.type = Types::GetCapacityReservationOutput
    GetDataCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data catalog to return.</p>", "smithy.api#required" => {}}))
    GetDataCatalogInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup. Required if making an IAM Identity Center request.</p>"}))
    GetDataCatalogInput.type = Types::GetDataCatalogInput
    GetDataCatalogOutput.add_member(:data_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog', traits: {"smithy.api#documentation" => "<p>The data catalog returned.</p>"}))
    GetDataCatalogOutput.type = Types::GetDataCatalogOutput
    GetDatabaseInput.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The name of the data catalog that contains the database to return.</p>", "smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to return.</p>", "smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup for which the metadata is being fetched. Required if\n            requesting an IAM Identity Center enabled Glue Data Catalog.</p>"}))
    GetDatabaseInput.type = Types::GetDatabaseInput
    GetDatabaseOutput.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The database returned.</p>"}))
    GetDatabaseOutput.type = Types::GetDatabaseOutput
    GetNamedQueryInput.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query\n            IDs.</p>", "smithy.api#required" => {}}))
    GetNamedQueryInput.type = Types::GetNamedQueryInput
    GetNamedQueryOutput.add_member(:named_query, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQuery, location_name: 'NamedQuery', traits: {"smithy.api#documentation" => "<p>Information about the query.</p>"}))
    GetNamedQueryOutput.type = Types::GetNamedQueryOutput
    GetNotebookMetadataInput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook whose metadata is to be retrieved.</p>", "smithy.api#required" => {}}))
    GetNotebookMetadataInput.type = Types::GetNotebookMetadataInput
    GetNotebookMetadataOutput.add_member(:notebook_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: 'NotebookMetadata', traits: {"smithy.api#documentation" => "<p>The metadata that is returned for the specified notebook ID.</p>"}))
    GetNotebookMetadataOutput.type = Types::GetNotebookMetadataOutput
    GetPreparedStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement to retrieve.</p>", "smithy.api#required" => {}}))
    GetPreparedStatementInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to which the statement to be retrieved belongs.</p>", "smithy.api#required" => {}}))
    GetPreparedStatementInput.type = Types::GetPreparedStatementInput
    GetPreparedStatementOutput.add_member(:prepared_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatement, location_name: 'PreparedStatement', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement that was retrieved.</p>"}))
    GetPreparedStatementOutput.type = Types::GetPreparedStatementOutput
    GetQueryExecutionInput.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query execution.</p>", "smithy.api#required" => {}}))
    GetQueryExecutionInput.type = Types::GetQueryExecutionInput
    GetQueryExecutionOutput.add_member(:query_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecution, location_name: 'QueryExecution', traits: {"smithy.api#documentation" => "<p>Information about the query execution.</p>"}))
    GetQueryExecutionOutput.type = Types::GetQueryExecutionOutput
    GetQueryResultsInput.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query execution.</p>", "smithy.api#required" => {}}))
    GetQueryResultsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    GetQueryResultsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results (rows) to return in this request.</p>"}))
    GetQueryResultsInput.add_member(:query_result_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultType, location_name: 'QueryResultType', traits: {"smithy.api#documentation" => "<p> When you set this to <code>DATA_ROWS</code> or empty, <code>GetQueryResults</code>\n            returns the query results in rows. If set to <code>DATA_MANIFEST</code>, it returns the\n            manifest file in rows. Only the query types <code>CREATE TABLE AS SELECT</code>,\n                <code>UNLOAD</code>, and <code>INSERT</code> can generate a manifest file. If you\n            use <code>DATA_MANIFEST</code> for other query types, the query will fail. </p>"}))
    GetQueryResultsInput.type = Types::GetQueryResultsInput
    GetQueryResultsOutput.add_member(:update_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UpdateCount', traits: {"smithy.api#documentation" => "<p>The number of rows inserted with a <code>CREATE TABLE AS SELECT</code>, <code>INSERT\n                INTO</code>, or <code>UPDATE</code> statement. </p>"}))
    GetQueryResultsOutput.add_member(:result_set, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSet, location_name: 'ResultSet', traits: {"smithy.api#documentation" => "<p>The results of the query execution.</p>"}))
    GetQueryResultsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    GetQueryResultsOutput.type = Types::GetQueryResultsOutput
    GetQueryRuntimeStatisticsInput.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query execution.</p>", "smithy.api#required" => {}}))
    GetQueryRuntimeStatisticsInput.type = Types::GetQueryRuntimeStatisticsInput
    GetQueryRuntimeStatisticsOutput.add_member(:query_runtime_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatistics, location_name: 'QueryRuntimeStatistics', traits: {"smithy.api#documentation" => "<p>Runtime statistics about the query execution.</p>"}))
    GetQueryRuntimeStatisticsOutput.type = Types::GetQueryRuntimeStatisticsOutput
    GetSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>"}))
    GetSessionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The session description.</p>"}))
    GetSessionResponse.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to which the session belongs.</p>"}))
    GetSessionResponse.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version used by the session (for example, <code>PySpark engine version\n                3</code>). You can get a list of engine versions by calling <a>ListEngineVersions</a>.</p>"}))
    GetSessionResponse.add_member(:engine_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfiguration, location_name: 'EngineConfiguration', traits: {"smithy.api#documentation" => "<p>Contains engine configuration information like DPU usage.</p>"}))
    GetSessionResponse.add_member(:notebook_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion', traits: {"smithy.api#documentation" => "<p>The notebook version.</p>"}))
    GetSessionResponse.add_member(:session_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionConfiguration, location_name: 'SessionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the workgroup configuration information used by the session.</p>"}))
    GetSessionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the status of the session.</p>"}))
    GetSessionResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatistics, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>Contains the DPU execution time.</p>"}))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionStatusRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    GetSessionStatusRequest.type = Types::GetSessionStatusRequest
    GetSessionStatusResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>"}))
    GetSessionStatusResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the status of the session.</p>"}))
    GetSessionStatusResponse.type = Types::GetSessionStatusResponse
    GetTableMetadataInput.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The name of the data catalog that contains the database and table metadata to\n            return.</p>", "smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database that contains the table metadata to return.</p>", "smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The name of the table for which metadata is returned.</p>", "smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup for which the metadata is being fetched. Required if\n            requesting an IAM Identity Center enabled Glue Data Catalog.</p>"}))
    GetTableMetadataInput.type = Types::GetTableMetadataInput
    GetTableMetadataOutput.add_member(:table_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadata, location_name: 'TableMetadata', traits: {"smithy.api#documentation" => "<p>An object that contains table metadata.</p>"}))
    GetTableMetadataOutput.type = Types::GetTableMetadataOutput
    GetWorkGroupInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup.</p>", "smithy.api#required" => {}}))
    GetWorkGroupInput.type = Types::GetWorkGroupInput
    GetWorkGroupOutput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroup, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>Information about the workgroup.</p>"}))
    GetWorkGroupOutput.type = Types::GetWorkGroupOutput
    IdentityCenterConfiguration.add_member(:enable_identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableIdentityCenter', traits: {"smithy.api#documentation" => "<p>Specifies whether the workgroup is IAM Identity Center supported.</p>"}))
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'IdentityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center instance ARN that the workgroup associates to.</p>"}))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    ImportNotebookInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the Spark enabled workgroup to import the notebook to.</p>", "smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the notebook to import.</p>", "smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#documentation" => "<p>The notebook content to be imported. The payload must be in <code>ipynb</code>\n            format.</p>"}))
    ImportNotebookInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The notebook content type. Currently, the only valid type is\n            <code>IPYNB</code>.</p>", "smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:notebook_s3_location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'NotebookS3LocationUri', traits: {"smithy.api#documentation" => "<p>A URI that specifies the Amazon S3 location of a notebook file in\n                <code>ipynb</code> format.</p>"}))
    ImportNotebookInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to import the notebook is\n            idempotent (executes only once).</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not\n                using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    ImportNotebookInput.type = Types::ImportNotebookInput
    ImportNotebookOutput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID assigned to the imported notebook.</p>"}))
    ImportNotebookOutput.type = Types::ImportNotebookOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:athena_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'AthenaErrorCode'))
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    ListApplicationDPUSizesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxApplicationDPUSizesCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to return.</p>"}))
    ListApplicationDPUSizesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated.</p>"}))
    ListApplicationDPUSizesInput.type = Types::ListApplicationDPUSizesInput
    ListApplicationDPUSizesOutput.add_member(:application_dpu_sizes, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDPUSizesList, location_name: 'ApplicationDPUSizes', traits: {"smithy.api#documentation" => "<p>A list of the supported DPU sizes that the application runtime supports.</p>"}))
    ListApplicationDPUSizesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListApplicationDPUSizesOutput.type = Types::ListApplicationDPUSizesOutput
    ListCalculationExecutionsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    ListCalculationExecutionsRequest.add_member(:state_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'StateFilter', traits: {"smithy.api#documentation" => "<p>A filter for a specific calculation execution state. A description of each state\n            follows.</p>\n         <p>\n            <code>CREATING</code> - The calculation is in the process of being created.</p>\n         <p>\n            <code>CREATED</code> - The calculation has been created and is ready to run.</p>\n         <p>\n            <code>QUEUED</code> - The calculation has been queued for processing.</p>\n         <p>\n            <code>RUNNING</code> - The calculation is running.</p>\n         <p>\n            <code>CANCELING</code> - A request to cancel the calculation has been received and the\n            system is working to stop it.</p>\n         <p>\n            <code>CANCELED</code> - The calculation is no longer running as the result of a cancel\n            request.</p>\n         <p>\n            <code>COMPLETED</code> - The calculation has completed without error.</p>\n         <p>\n            <code>FAILED</code> - The calculation failed and is no longer running.</p>"}))
    ListCalculationExecutionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCalculationsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of calculation executions to return.</p>"}))
    ListCalculationExecutionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListCalculationExecutionsRequest.type = Types::ListCalculationExecutionsRequest
    ListCalculationExecutionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListCalculationExecutionsResponse.add_member(:calculations, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationsList, location_name: 'Calculations', traits: {"smithy.api#documentation" => "<p>A list of <a>CalculationSummary</a> objects.</p>"}))
    ListCalculationExecutionsResponse.type = Types::ListCalculationExecutionsResponse
    ListCapacityReservationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated.</p>"}))
    ListCapacityReservationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacityReservationsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to return.</p>"}))
    ListCapacityReservationsInput.type = Types::ListCapacityReservationsInput
    ListCapacityReservationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListCapacityReservationsOutput.add_member(:capacity_reservations, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationsList, location_name: 'CapacityReservations', traits: {"smithy.api#documentation" => "<p>The capacity reservations for the current account.</p>", "smithy.api#required" => {}}))
    ListCapacityReservationsOutput.type = Types::ListCapacityReservationsOutput
    ListDataCatalogsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListDataCatalogsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDataCatalogsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of data catalogs to return.</p>"}))
    ListDataCatalogsInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup. Required if making an IAM Identity Center request.</p>"}))
    ListDataCatalogsInput.type = Types::ListDataCatalogsInput
    ListDataCatalogsOutput.add_member(:data_catalogs_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogSummaryList, location_name: 'DataCatalogsSummary', traits: {"smithy.api#documentation" => "<p>A summary list of data catalogs.</p>"}))
    ListDataCatalogsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListDataCatalogsOutput.type = Types::ListDataCatalogsOutput
    ListDatabasesInput.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The name of the data catalog that contains the databases to return.</p>", "smithy.api#required" => {}}))
    ListDatabasesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListDatabasesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDatabasesCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to return.</p>"}))
    ListDatabasesInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup for which the metadata is being fetched. Required if\n            requesting an IAM Identity Center enabled Glue Data Catalog.</p>"}))
    ListDatabasesInput.type = Types::ListDatabasesInput
    ListDatabasesOutput.add_member(:database_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: 'DatabaseList', traits: {"smithy.api#documentation" => "<p>A list of databases from a data catalog.</p>"}))
    ListDatabasesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListDatabasesOutput.type = Types::ListDatabasesOutput
    ListEngineVersionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListEngineVersionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEngineVersionsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of engine versions to return in this request.</p>"}))
    ListEngineVersionsInput.type = Types::ListEngineVersionsInput
    ListEngineVersionsOutput.add_member(:engine_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionsList, location_name: 'EngineVersions', traits: {"smithy.api#documentation" => "<p>A list of engine versions that are available to choose from.</p>"}))
    ListEngineVersionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListEngineVersionsOutput.type = Types::ListEngineVersionsOutput
    ListExecutorsRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    ListExecutorsRequest.add_member(:executor_state_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorState, location_name: 'ExecutorStateFilter', traits: {"smithy.api#documentation" => "<p>A filter for a specific executor state. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The executor is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The executor has been started.</p>\n         <p>\n            <code>REGISTERED</code> - The executor has been registered.</p>\n         <p>\n            <code>TERMINATING</code> - The executor is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The executor is no longer running.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the executor is no longer running.</p>"}))
    ListExecutorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListExecutorsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of executors to return.</p>"}))
    ListExecutorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListExecutorsRequest.type = Types::ListExecutorsRequest
    ListExecutorsResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    ListExecutorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListExecutorsResponse.add_member(:executors_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorsSummaryList, location_name: 'ExecutorsSummary', traits: {"smithy.api#documentation" => "<p>Contains summary information about the executor.</p>"}))
    ListExecutorsResponse.type = Types::ListExecutorsResponse
    ListNamedQueriesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListNamedQueriesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxNamedQueriesCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of queries to return in this request.</p>"}))
    ListNamedQueriesInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup from which the named queries are being returned. If a\n            workgroup is not specified, the saved queries for the primary workgroup are\n            returned.</p>"}))
    ListNamedQueriesInput.type = Types::ListNamedQueriesInput
    ListNamedQueriesOutput.add_member(:named_query_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: 'NamedQueryIds', traits: {"smithy.api#documentation" => "<p>The list of unique query IDs.</p>"}))
    ListNamedQueriesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListNamedQueriesOutput.type = Types::ListNamedQueriesOutput
    ListNotebookMetadataInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterDefinition, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Search filter string.</p>"}))
    ListNotebookMetadataInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated.</p>"}))
    ListNotebookMetadataInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxNotebooksCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to return.</p>"}))
    ListNotebookMetadataInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the Spark enabled workgroup to retrieve notebook metadata for.</p>", "smithy.api#required" => {}}))
    ListNotebookMetadataInput.type = Types::ListNotebookMetadataInput
    ListNotebookMetadataOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListNotebookMetadataOutput.add_member(:notebook_metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadataArray, location_name: 'NotebookMetadataList', traits: {"smithy.api#documentation" => "<p>The list of notebook metadata for the specified workgroup.</p>"}))
    ListNotebookMetadataOutput.type = Types::ListNotebookMetadataOutput
    ListNotebookSessionsRequest.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook to list sessions for.</p>", "smithy.api#required" => {}}))
    ListNotebookSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of notebook sessions to return.</p>"}))
    ListNotebookSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListNotebookSessionsRequest.type = Types::ListNotebookSessionsRequest
    ListNotebookSessionsResponse.add_member(:notebook_sessions_list, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookSessionsList, location_name: 'NotebookSessionsList', traits: {"smithy.api#documentation" => "<p>A list of the sessions belonging to the notebook.</p>", "smithy.api#required" => {}}))
    ListNotebookSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListNotebookSessionsResponse.type = Types::ListNotebookSessionsResponse
    ListPreparedStatementsInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to list the prepared statements for.</p>", "smithy.api#required" => {}}))
    ListPreparedStatementsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListPreparedStatementsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPreparedStatementsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in this request.</p>"}))
    ListPreparedStatementsInput.type = Types::ListPreparedStatementsInput
    ListPreparedStatementsOutput.add_member(:prepared_statements, Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementsList, location_name: 'PreparedStatements', traits: {"smithy.api#documentation" => "<p>The list of prepared statements for the workgroup.</p>"}))
    ListPreparedStatementsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListPreparedStatementsOutput.type = Types::ListPreparedStatementsOutput
    ListQueryExecutionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListQueryExecutionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryExecutionsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of query executions to return in this request.</p>"}))
    ListQueryExecutionsInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup from which queries are being returned. If a workgroup is not\n            specified, a list of available query execution IDs for the queries in the primary\n            workgroup is returned.</p>"}))
    ListQueryExecutionsInput.type = Types::ListQueryExecutionsInput
    ListQueryExecutionsOutput.add_member(:query_execution_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: 'QueryExecutionIds', traits: {"smithy.api#documentation" => "<p>The unique IDs of each query execution as an array of strings.</p>"}))
    ListQueryExecutionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to be used by the next request if this request is truncated.</p>"}))
    ListQueryExecutionsOutput.type = Types::ListQueryExecutionsOutput
    ListSessionsRequest.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to which the session belongs.</p>", "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:state_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'StateFilter', traits: {"smithy.api#documentation" => "<p>A filter for a specific session state. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The session is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The session has been started.</p>\n         <p>\n            <code>IDLE</code> - The session is able to accept a calculation.</p>\n         <p>\n            <code>BUSY</code> - The session is processing another task and is unable to accept a\n            calculation.</p>\n         <p>\n            <code>TERMINATING</code> - The session is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The session and its resources are no longer running.</p>\n         <p>\n            <code>DEGRADED</code> - The session has no healthy coordinators.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the session and its resources are no longer\n            running.</p>"}))
    ListSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of sessions to return.</p>"}))
    ListSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListSessionsResponse.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionsList, location_name: 'Sessions', traits: {"smithy.api#documentation" => "<p>A list of sessions.</p>"}))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTableMetadataInput.add_member(:catalog_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#documentation" => "<p>The name of the data catalog for which table metadata should be returned.</p>", "smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database for which table metadata should be returned.</p>", "smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionString, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A regex filter that pattern-matches table names. If no expression is supplied,\n            metadata for all tables are listed.</p>"}))
    ListTableMetadataInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListTableMetadataInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTableMetadataCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to return.</p>"}))
    ListTableMetadataInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup for which the metadata is being fetched. Required if\n            requesting an IAM Identity Center enabled Glue Data Catalog.</p>"}))
    ListTableMetadataInput.type = Types::ListTableMetadataInput
    ListTableMetadataOutput.add_member(:table_metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadataList, location_name: 'TableMetadataList', traits: {"smithy.api#documentation" => "<p>A list of table metadata.</p>"}))
    ListTableMetadataOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the NextToken from the response object of the previous page call.</p>"}))
    ListTableMetadataOutput.type = Types::ListTableMetadataOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Lists the tags for the resource with the specified ARN.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or null if there are no additional results for\n            this request, where the request lists the tags for the resource with the specified\n            ARN.</p>"}))
    ListTagsForResourceInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTagsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request that lists the tags for the\n            resource.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the specified resource.</p>"}))
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to be used by the next request if this request is truncated.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListWorkGroupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkGroupsCount, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of workgroups to return in this request.</p>"}))
    ListWorkGroupsInput.type = Types::ListWorkGroupsInput
    ListWorkGroupsOutput.add_member(:work_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupsList, location_name: 'WorkGroups', traits: {"smithy.api#documentation" => "<p>A list of <a>WorkGroupSummary</a> objects that include the names,\n            descriptions, creation times, and states for each workgroup.</p>"}))
    ListWorkGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token generated by the Athena service that specifies where to continue\n            pagination if a previous request was truncated. To obtain the next set of pages, pass in\n            the <code>NextToken</code> from the response object of the previous page call.</p>"}))
    ListWorkGroupsOutput.type = Types::ListWorkGroupsOutput
    ManagedQueryResultsConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If set to true, allows you to store query results in Athena owned storage. If set to\n            false, workgroup member stores query results in location specified under\n                <code>ResultConfiguration$OutputLocation</code>. The default is false. A workgroup\n            cannot have the <code>ResultConfiguration$OutputLocation</code> parameter when you set\n            this field to true. </p>", "smithy.api#required" => {}}))
    ManagedQueryResultsConfiguration.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsEncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>If you encrypt query and calculation results in Athena owned storage, this field\n            indicates the encryption option (for example, SSE_KMS or CSE_KMS) and key\n            information.</p>"}))
    ManagedQueryResultsConfiguration.type = Types::ManagedQueryResultsConfiguration
    ManagedQueryResultsConfigurationUpdates.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>If set to true, specifies that Athena manages query results in Athena owned\n            storage.</p>"}))
    ManagedQueryResultsConfigurationUpdates.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsEncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>If you encrypt query and calculation results in Athena owned storage, this field\n            indicates the encryption option (for example, SSE_KMS or CSE_KMS) and key\n            information.</p>"}))
    ManagedQueryResultsConfigurationUpdates.add_member(:remove_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>If set to true, it removes workgroup from Athena owned storage. The existing query\n            results are cleaned up after 24hrs. You must provide query results in location specified\n            under <code>ResultConfiguration$OutputLocation</code>.</p>"}))
    ManagedQueryResultsConfigurationUpdates.type = Types::ManagedQueryResultsConfigurationUpdates
    ManagedQueryResultsEncryptionConfiguration.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The ARN of an KMS key for encrypting managed query results.</p>", "smithy.api#required" => {}}))
    ManagedQueryResultsEncryptionConfiguration.type = Types::ManagedQueryResultsEncryptionConfiguration
    MetadataException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MetadataException.type = Types::MetadataException
    NamedQuery.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The query name.</p>", "smithy.api#required" => {}}))
    NamedQuery.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The query description.</p>"}))
    NamedQuery.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The database to which the query belongs.</p>", "smithy.api#required" => {}}))
    NamedQuery.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL statements that make up the query.</p>", "smithy.api#required" => {}}))
    NamedQuery.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the query.</p>"}))
    NamedQuery.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup that contains the named query.</p>"}))
    NamedQuery.type = Types::NamedQuery
    NamedQueryIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId)
    NamedQueryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQuery)
    NotebookMetadata.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The notebook ID.</p>"}))
    NotebookMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the notebook.</p>"}))
    NotebookMetadata.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the Spark enabled workgroup to which the notebook belongs.</p>"}))
    NotebookMetadata.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the notebook was created.</p>"}))
    NotebookMetadata.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of notebook. Currently, the only valid type is <code>IPYNB</code>.</p>"}))
    NotebookMetadata.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time when the notebook was last modified.</p>"}))
    NotebookMetadata.type = Types::NotebookMetadata
    NotebookMetadataArray.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata)
    NotebookSessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The notebook session ID.</p>"}))
    NotebookSessionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the notebook session was created.</p>"}))
    NotebookSessionSummary.type = Types::NotebookSessionSummary
    NotebookSessionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookSessionSummary)
    NotebookType.add_member(:ipynb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPYNB', traits: {"smithy.api#enumValue" => "IPYNB"}))
    ParametersMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMapValue)
    PreparedStatement.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement.</p>"}))
    PreparedStatement.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>The query string for the prepared statement.</p>"}))
    PreparedStatement.add_member(:work_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroupName', traits: {"smithy.api#documentation" => "<p>The name of the workgroup to which the prepared statement belongs.</p>"}))
    PreparedStatement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the prepared statement.</p>"}))
    PreparedStatement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last modified time of the prepared statement.</p>"}))
    PreparedStatement.type = Types::PreparedStatement
    PreparedStatementDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatement)
    PreparedStatementNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName)
    PreparedStatementSummary.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement.</p>"}))
    PreparedStatementSummary.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The last modified time of the prepared statement.</p>"}))
    PreparedStatementSummary.type = Types::PreparedStatementSummary
    PreparedStatementsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementSummary)
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation to put a capacity assignment configuration\n            for.</p>", "smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentsList, location_name: 'CapacityAssignments', traits: {"smithy.api#documentation" => "<p>The list of assignments for the capacity assignment configuration.</p>", "smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.type = Types::PutCapacityAssignmentConfigurationInput
    PutCapacityAssignmentConfigurationOutput.type = Types::PutCapacityAssignmentConfigurationOutput
    QueryExecution.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for each query execution.</p>"}))
    QueryExecution.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'Query', traits: {"smithy.api#documentation" => "<p>The SQL query statements which the query execution ran.</p>"}))
    QueryExecution.add_member(:statement_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementType, location_name: 'StatementType', traits: {"smithy.api#documentation" => "<p>The type of query statement that was run. <code>DDL</code> indicates DDL query\n            statements. <code>DML</code> indicates DML (Data Manipulation Language) query\n            statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates\n            query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>, or\n                <code>DESCRIBE TABLE</code>.</p>"}))
    QueryExecution.add_member(:managed_query_results_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfiguration, location_name: 'ManagedQueryResultsConfiguration', traits: {"smithy.api#documentation" => "<p> The configuration for storing results in Athena owned storage, which includes whether\n            this feature is enabled; whether encryption configuration, if any, is used for\n            encrypting query results. </p>"}))
    QueryExecution.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where query and calculation results are stored and\n            the encryption option, if any, used for query results. These are known as \"client-side\n            settings\". If workgroup settings override client-side settings, then the query uses the\n            location for the query results and the encryption configuration that are specified for\n            the workgroup.</p>"}))
    QueryExecution.add_member(:result_reuse_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: 'ResultReuseConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the query result reuse behavior that was used for the query.</p>"}))
    QueryExecution.add_member(:query_execution_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: 'QueryExecutionContext', traits: {"smithy.api#documentation" => "<p>The database in which the query execution occurred.</p>"}))
    QueryExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The completion date, current state, submission time, and state change reason (if\n            applicable) for the query execution.</p>"}))
    QueryExecution.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionStatistics, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>Query execution statistics, such as the amount of data scanned, the amount of time\n            that the query took to process, and the type of statement that was run.</p>"}))
    QueryExecution.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup in which the query ran.</p>"}))
    QueryExecution.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version that executed the query.</p>"}))
    QueryExecution.add_member(:execution_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: 'ExecutionParameters', traits: {"smithy.api#documentation" => "<p>A list of values for the parameters in a query. The values are applied sequentially to\n            the parameters in the query in the order in which the parameters occur. The list of\n            parameters is not returned in the response.</p>"}))
    QueryExecution.add_member(:substatement_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubstatementType', traits: {"smithy.api#documentation" => "<p>The kind of query statement that was run.</p>"}))
    QueryExecution.add_member(:query_results_s3_access_grants_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 access grants are enabled for query\n            results.</p>"}))
    QueryExecution.type = Types::QueryExecution
    QueryExecutionContext.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The name of the database used in the query execution. The database must exist in the\n            catalog.</p>"}))
    QueryExecutionContext.add_member(:catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Catalog', traits: {"smithy.api#documentation" => "<p>The name of the data catalog used in the query execution.</p>"}))
    QueryExecutionContext.type = Types::QueryExecutionContext
    QueryExecutionIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId)
    QueryExecutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecution)
    QueryExecutionState.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryExecutionState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryExecutionState.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    QueryExecutionState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryExecutionState.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    QueryExecutionStatistics.add_member(:engine_execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EngineExecutionTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that the query took to execute.</p>"}))
    QueryExecutionStatistics.add_member(:data_scanned_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DataScannedInBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes in the data that was queried.</p>"}))
    QueryExecutionStatistics.add_member(:data_manifest_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataManifestLocation', traits: {"smithy.api#documentation" => "<p>The location and file name of a data manifest file. The manifest file is saved to the\n                Athena query results location in Amazon S3. The manifest file\n            tracks files that the query wrote to Amazon S3. If the query fails, the manifest\n            file also tracks files that the query intended to write. The manifest is useful for\n            identifying orphaned files resulting from a failed query. For more information, see\n                <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Working with Query\n                Results, Output Files, and Query History</a> in the <i>Amazon Athena User Guide</i>.</p>"}))
    QueryExecutionStatistics.add_member(:total_execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalExecutionTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to run the query.</p>"}))
    QueryExecutionStatistics.add_member(:query_queue_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryQueueTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that the query was in your query queue waiting for\n            resources. Note that if transient errors occur, Athena might automatically\n            add the query back to the queue.</p>"}))
    QueryExecutionStatistics.add_member(:service_pre_processing_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServicePreProcessingTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to preprocess the query before\n            submitting the query to the query engine.</p>"}))
    QueryExecutionStatistics.add_member(:query_planning_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryPlanningTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to plan the query processing\n            flow. This includes the time spent retrieving table partitions from the data source.\n            Note that because the query engine performs the query planning, query planning time is a\n            subset of engine processing time.</p>"}))
    QueryExecutionStatistics.add_member(:service_processing_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServiceProcessingTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to finalize and publish the\n            query results after the query engine finished running the query.</p>"}))
    QueryExecutionStatistics.add_member(:result_reuse_information, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseInformation, location_name: 'ResultReuseInformation', traits: {"smithy.api#documentation" => "<p>Contains information about whether previous query results were reused for the\n            query.</p>"}))
    QueryExecutionStatistics.type = Types::QueryExecutionStatistics
    QueryExecutionStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of query execution. <code>QUEUED</code> indicates that the query has been\n            submitted to the service, and Athena will execute the query as soon as\n            resources are available. <code>RUNNING</code> indicates that the query is in execution\n            phase. <code>SUCCEEDED</code> indicates that the query completed without errors.\n                <code>FAILED</code> indicates that the query experienced an error and did not\n            complete processing. <code>CANCELLED</code> indicates that a user input interrupted\n            query execution.</p>\n         <note>\n            <p>Athena automatically retries your queries in cases of certain\n                transient errors. As a result, you may see the query state transition from\n                    <code>RUNNING</code> or <code>FAILED</code> to <code>QUEUED</code>. </p>\n         </note>"}))
    QueryExecutionStatus.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>Further detail about the status of the query.</p>"}))
    QueryExecutionStatus.add_member(:submission_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'SubmissionDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the query was submitted.</p>"}))
    QueryExecutionStatus.add_member(:completion_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletionDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the query completed.</p>"}))
    QueryExecutionStatus.add_member(:athena_error, Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaError, location_name: 'AthenaError', traits: {"smithy.api#documentation" => "<p>Provides information about an Athena query error.</p>"}))
    QueryExecutionStatus.type = Types::QueryExecutionStatus
    QueryResultType.add_member(:data_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_MANIFEST', traits: {"smithy.api#enumValue" => "DATA_MANIFEST"}))
    QueryResultType.add_member(:data_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_ROWS', traits: {"smithy.api#enumValue" => "DATA_ROWS"}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:enable_s3_access_grants, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableS3AccessGrants', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 access grants are enabled for query\n            results.</p>", "smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:create_user_level_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'CreateUserLevelPrefix', traits: {"smithy.api#documentation" => "<p>When enabled, appends the user ID as an Amazon S3 path prefix to the query\n            result output location.</p>"}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#documentation" => "<p>The authentication type used for Amazon S3 access grants. Currently, only\n                <code>DIRECTORY_IDENTITY</code> is supported.</p>", "smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.type = Types::QueryResultsS3AccessGrantsConfiguration
    QueryRuntimeStatistics.add_member(:timeline, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsTimeline, location_name: 'Timeline'))
    QueryRuntimeStatistics.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsRows, location_name: 'Rows'))
    QueryRuntimeStatistics.add_member(:output_stage, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStage, location_name: 'OutputStage', traits: {"smithy.api#documentation" => "<p>Stage statistics such as input and output rows and bytes, execution time, and stage\n            state. This information also includes substages and the query stage plan.</p>"}))
    QueryRuntimeStatistics.type = Types::QueryRuntimeStatistics
    QueryRuntimeStatisticsRows.add_member(:input_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputRows', traits: {"smithy.api#documentation" => "<p>The number of rows read to execute the query.</p>"}))
    QueryRuntimeStatisticsRows.add_member(:input_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes read to execute the query.</p>"}))
    QueryRuntimeStatisticsRows.add_member(:output_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes returned by the query.</p>"}))
    QueryRuntimeStatisticsRows.add_member(:output_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows', traits: {"smithy.api#documentation" => "<p>The number of rows returned by the query.</p>"}))
    QueryRuntimeStatisticsRows.type = Types::QueryRuntimeStatisticsRows
    QueryRuntimeStatisticsTimeline.add_member(:query_queue_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryQueueTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that the query was in your query queue waiting for\n            resources. Note that if transient errors occur, Athena might automatically\n            add the query back to the queue.</p>"}))
    QueryRuntimeStatisticsTimeline.add_member(:service_pre_processing_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServicePreProcessingTimeInMillis', traits: {"smithy.api#documentation" => "<p> The number of milliseconds that Athena spends on preprocessing before it\n            submits the query to the engine. </p>"}))
    QueryRuntimeStatisticsTimeline.add_member(:query_planning_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryPlanningTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to plan the query processing\n            flow. This includes the time spent retrieving table partitions from the data source.\n            Note that because the query engine performs the query planning, query planning time is a\n            subset of engine processing time.</p>"}))
    QueryRuntimeStatisticsTimeline.add_member(:engine_execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EngineExecutionTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that the query took to execute.</p>"}))
    QueryRuntimeStatisticsTimeline.add_member(:service_processing_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServiceProcessingTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to finalize and publish the\n            query results after the query engine finished running the query.</p>"}))
    QueryRuntimeStatisticsTimeline.add_member(:total_execution_time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalExecutionTimeInMillis', traits: {"smithy.api#documentation" => "<p>The number of milliseconds that Athena took to run the query.</p>"}))
    QueryRuntimeStatisticsTimeline.type = Types::QueryRuntimeStatisticsTimeline
    QueryStage.add_member(:stage_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StageId', traits: {"smithy.api#documentation" => "<p>The identifier for a stage.</p>"}))
    QueryStage.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of the stage after query execution.</p>"}))
    QueryStage.add_member(:output_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes output from the stage after execution.</p>"}))
    QueryStage.add_member(:output_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows', traits: {"smithy.api#documentation" => "<p>The number of rows output from the stage after execution.</p>"}))
    QueryStage.add_member(:input_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputBytes', traits: {"smithy.api#documentation" => "<p>The number of bytes input into the stage for execution.</p>"}))
    QueryStage.add_member(:input_rows, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputRows', traits: {"smithy.api#documentation" => "<p>The number of rows input into the stage for execution.</p>"}))
    QueryStage.add_member(:execution_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExecutionTime', traits: {"smithy.api#documentation" => "<p>Time taken to execute this stage.</p>"}))
    QueryStage.add_member(:query_stage_plan, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNode, location_name: 'QueryStagePlan', traits: {"smithy.api#documentation" => "<p>Stage plan information such as name, identifier, sub plans, and source stages.</p>"}))
    QueryStage.add_member(:sub_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStages, location_name: 'SubStages', traits: {"smithy.api#documentation" => "<p>List of sub query stages that form this stage execution plan.</p>"}))
    QueryStage.type = Types::QueryStage
    QueryStagePlanNode.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the query stage plan that describes the operation this stage is performing as\n            part of query execution.</p>"}))
    QueryStagePlanNode.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>Information about the operation this query stage plan node is performing.</p>"}))
    QueryStagePlanNode.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNodes, location_name: 'Children', traits: {"smithy.api#documentation" => "<p>Stage plan information such as name, identifier, sub plans, and remote sources of\n            child plan nodes/</p>"}))
    QueryStagePlanNode.add_member(:remote_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'RemoteSources', traits: {"smithy.api#documentation" => "<p>Source plan node IDs.</p>"}))
    QueryStagePlanNode.type = Types::QueryStagePlanNode
    QueryStagePlanNodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNode)
    QueryStages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStage)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultConfiguration.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where your query and calculation results are stored,\n            such as <code>s3://path/to/query/bucket/</code>. To run the query, you must specify the\n            query results location using one of the ways: either for individual queries using either\n            this setting (client-side), or in the workgroup, using <a>WorkGroupConfiguration</a>. If none of them is set, Athena\n            issues an error that no output location is provided. If workgroup settings override\n            client-side settings, then the query uses the settings specified for the workgroup. See\n                <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"}))
    ResultConfiguration.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>If query and calculation results are encrypted in Amazon S3, indicates the\n            encryption option used (for example, <code>SSE_KMS</code> or <code>CSE_KMS</code>) and\n            key information. This is a client-side setting. If workgroup settings override\n            client-side settings, then the query uses the encryption configuration that is specified\n            for the workgroup, and also uses the location for storing query results specified in the\n            workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>\n            and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    ResultConfiguration.add_member(:expected_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'ExpectedBucketOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.\n            If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it\n            makes Amazon S3 calls to your specified output location. If the\n                <code>ExpectedBucketOwner</code>\n            Amazon Web Services account ID does not match the actual owner of the Amazon S3\n            bucket, the call fails with a permissions error.</p>\n         <p>This is a client-side setting. If workgroup settings override client-side settings,\n            then the query uses the <code>ExpectedBucketOwner</code> setting that is specified for\n            the workgroup, and also uses the location for storing query results specified in the\n            workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>\n            and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    ResultConfiguration.add_member(:acl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AclConfiguration, location_name: 'AclConfiguration', traits: {"smithy.api#documentation" => "<p>Indicates that an Amazon S3 canned ACL should be set to control ownership of\n            stored query results. Currently the only supported canned ACL is\n                <code>BUCKET_OWNER_FULL_CONTROL</code>. This is a client-side setting. If workgroup\n            settings override client-side settings, then the query uses the ACL configuration that\n            is specified for the workgroup, and also uses the location for storing query results\n            specified in the workgroup. For more information, see <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    ResultConfiguration.type = Types::ResultConfiguration
    ResultConfigurationUpdates.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where your query and calculation results are stored,\n            such as <code>s3://path/to/query/bucket/</code>. If workgroup settings override\n            client-side settings, then the query uses the location for the query results and the\n            encryption configuration that are specified for the workgroup. The \"workgroup settings\n            override\" is specified in <code>EnforceWorkGroupConfiguration</code> (true/false) in the\n                <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"}))
    ResultConfigurationUpdates.add_member(:remove_output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveOutputLocation', traits: {"smithy.api#documentation" => "<p>If set to \"true\", indicates that the previously-specified query results location (also\n            known as a client-side setting) for queries in this workgroup should be ignored and set\n            to null. If set to \"false\" or not set, and a value is present in the\n                <code>OutputLocation</code> in <code>ResultConfigurationUpdates</code> (the\n            client-side setting), the <code>OutputLocation</code> in the workgroup's\n                <code>ResultConfiguration</code> will be updated with the new value. For more\n            information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override\n                Client-Side Settings</a>.</p>"}))
    ResultConfigurationUpdates.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption configuration for query and calculation results.</p>"}))
    ResultConfigurationUpdates.add_member(:remove_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>If set to \"true\", indicates that the previously-specified encryption configuration\n            (also known as the client-side setting) for queries in this workgroup should be ignored\n            and set to null. If set to \"false\" or not set, and a value is present in the\n                <code>EncryptionConfiguration</code> in <code>ResultConfigurationUpdates</code> (the\n            client-side setting), the <code>EncryptionConfiguration</code> in the workgroup's\n                <code>ResultConfiguration</code> will be updated with the new value. For more\n            information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override\n                Client-Side Settings</a>.</p>"}))
    ResultConfigurationUpdates.add_member(:expected_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'ExpectedBucketOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that you expect to be the owner of the Amazon S3 bucket specified by <a>ResultConfiguration$OutputLocation</a>.\n            If set, Athena uses the value for <code>ExpectedBucketOwner</code> when it\n            makes Amazon S3 calls to your specified output location. If the\n                <code>ExpectedBucketOwner</code>\n            Amazon Web Services account ID does not match the actual owner of the Amazon S3\n            bucket, the call fails with a permissions error.</p>\n         <p>If workgroup settings override client-side settings, then the query uses the\n                <code>ExpectedBucketOwner</code> setting that is specified for the workgroup, and\n            also uses the location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    ResultConfigurationUpdates.add_member(:remove_expected_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveExpectedBucketOwner', traits: {"smithy.api#documentation" => "<p>If set to \"true\", removes the Amazon Web Services account ID previously specified for\n                <a>ResultConfiguration$ExpectedBucketOwner</a>. If set to \"false\" or not\n            set, and a value is present in the <code>ExpectedBucketOwner</code> in\n                <code>ResultConfigurationUpdates</code> (the client-side setting), the\n                <code>ExpectedBucketOwner</code> in the workgroup's <code>ResultConfiguration</code>\n            is updated with the new value. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override\n                Client-Side Settings</a>.</p>"}))
    ResultConfigurationUpdates.add_member(:acl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AclConfiguration, location_name: 'AclConfiguration', traits: {"smithy.api#documentation" => "<p>The ACL configuration for the query results.</p>"}))
    ResultConfigurationUpdates.add_member(:remove_acl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveAclConfiguration', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, indicates that the previously-specified ACL configuration\n            for queries in this workgroup should be ignored and set to null. If set to\n                <code>false</code> or not set, and a value is present in the\n                <code>AclConfiguration</code> of <code>ResultConfigurationUpdates</code>, the\n                <code>AclConfiguration</code> in the workgroup's <code>ResultConfiguration</code> is\n            updated with the new value. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override\n                Client-Side Settings</a>.</p>"}))
    ResultConfigurationUpdates.type = Types::ResultConfigurationUpdates
    ResultReuseByAgeConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if previous query results can be reused when the query is run; otherwise, false.\n            The default is false.</p>", "smithy.api#required" => {}}))
    ResultReuseByAgeConfiguration.add_member(:max_age_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: 'MaxAgeInMinutes', traits: {"smithy.api#documentation" => "<p>Specifies, in minutes, the maximum age of a previous query result that Athena should consider for reuse. The default is 60.</p>"}))
    ResultReuseByAgeConfiguration.type = Types::ResultReuseByAgeConfiguration
    ResultReuseConfiguration.add_member(:result_reuse_by_age_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseByAgeConfiguration, location_name: 'ResultReuseByAgeConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether previous query results are reused, and if so, their maximum\n            age.</p>"}))
    ResultReuseConfiguration.type = Types::ResultReuseConfiguration
    ResultReuseInformation.add_member(:reused_previous_result, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReusedPreviousResult', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if a previous query result was reused; false if the result was generated from a\n            new run of the query.</p>", "smithy.api#required" => {}}))
    ResultReuseInformation.type = Types::ResultReuseInformation
    ResultSet.add_member(:rows, Smithy::Schema::Shapes::ShapeRef.new(shape: RowList, location_name: 'Rows', traits: {"smithy.api#documentation" => "<p>The rows in the table.</p>"}))
    ResultSet.add_member(:result_set_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: 'ResultSetMetadata', traits: {"smithy.api#documentation" => "<p>The metadata that describes the column structure and data types of a table of query\n            results.</p>"}))
    ResultSet.type = Types::ResultSet
    ResultSetMetadata.add_member(:column_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: 'ColumnInfo', traits: {"smithy.api#documentation" => "<p>Information about the columns returned in a query result metadata.</p>"}))
    ResultSetMetadata.type = Types::ResultSetMetadata
    Row.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The data that populates a row in a query result table.</p>"}))
    Row.type = Types::Row
    RowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    S3AclOption.add_member(:bucket_owner_full_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_OWNER_FULL_CONTROL', traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    SessionAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SessionAlreadyExistsException.type = Types::SessionAlreadyExistsException
    SessionConfiguration.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole', traits: {"smithy.api#documentation" => "<p>The ARN of the execution role used to access user resources for Spark sessions and\n            Identity Center enabled workgroups. This property applies only to Spark enabled\n            workgroups and Identity Center enabled workgroups.</p>"}))
    SessionConfiguration.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'WorkingDirectory', traits: {"smithy.api#documentation" => "<p>The Amazon S3 location that stores information for the notebook.</p>"}))
    SessionConfiguration.add_member(:idle_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'IdleTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>The idle timeout in seconds for the session.</p>"}))
    SessionConfiguration.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    SessionConfiguration.type = Types::SessionConfiguration
    SessionState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SessionState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    SessionState.add_member(:idle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    SessionState.add_member(:busy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSY', traits: {"smithy.api#enumValue" => "BUSY"}))
    SessionState.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    SessionState.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    SessionState.add_member(:degraded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    SessionState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatistics.add_member(:dpu_execution_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DpuExecutionInMillis', traits: {"smithy.api#documentation" => "<p>The data processing unit execution time for a session in milliseconds.</p>"}))
    SessionStatistics.type = Types::SessionStatistics
    SessionStatus.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the session started.</p>"}))
    SessionStatus.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>The most recent date and time that the session was modified.</p>"}))
    SessionStatus.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the session ended.</p>"}))
    SessionStatus.add_member(:idle_since_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'IdleSinceDateTime', traits: {"smithy.api#documentation" => "<p>The date and time starting at which the session became idle. Can be empty if the\n            session is not currently idle.</p>"}))
    SessionStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the session. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The session is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The session has been started.</p>\n         <p>\n            <code>IDLE</code> - The session is able to accept a calculation.</p>\n         <p>\n            <code>BUSY</code> - The session is processing another task and is unable to accept a\n            calculation.</p>\n         <p>\n            <code>TERMINATING</code> - The session is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The session and its resources are no longer running.</p>\n         <p>\n            <code>DEGRADED</code> - The session has no healthy coordinators.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the session and its resources are no longer\n            running.</p>"}))
    SessionStatus.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>The reason for the session state change (for example, canceled because the session was\n            terminated).</p>"}))
    SessionStatus.type = Types::SessionStatus
    SessionSummary.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>"}))
    SessionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The session description.</p>"}))
    SessionSummary.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version used by the session (for example, <code>PySpark engine version\n                3</code>).</p>"}))
    SessionSummary.add_member(:notebook_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion', traits: {"smithy.api#documentation" => "<p>The notebook version.</p>"}))
    SessionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information about the session status.</p>"}))
    SessionSummary.type = Types::SessionSummary
    SessionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    StartCalculationExecutionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    StartCalculationExecutionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the calculation.</p>"}))
    StartCalculationExecutionRequest.add_member(:calculation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationConfiguration, location_name: 'CalculationConfiguration', traits: {"smithy.api#deprecated" => {"message" => "Structure is deprecated."}, "smithy.api#documentation" => "<p>Contains configuration information for the calculation.</p>"}))
    StartCalculationExecutionRequest.add_member(:code_block, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock', traits: {"smithy.api#documentation" => "<p>A string that contains the code of the calculation. Use this parameter instead of\n                <a>CalculationConfiguration$CodeBlock</a>, which is deprecated.</p>"}))
    StartCalculationExecutionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the calculation is\n            idempotent (executes only once). If another\n                <code>StartCalculationExecutionRequest</code> is received, the same response is\n            returned and another calculation is not created. If a parameter has changed, an error is\n            returned.</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for users. If you are\n                not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    StartCalculationExecutionRequest.type = Types::StartCalculationExecutionRequest
    StartCalculationExecutionResponse.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>"}))
    StartCalculationExecutionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>\n            <code>CREATING</code> - The calculation is in the process of being created.</p>\n         <p>\n            <code>CREATED</code> - The calculation has been created and is ready to run.</p>\n         <p>\n            <code>QUEUED</code> - The calculation has been queued for processing.</p>\n         <p>\n            <code>RUNNING</code> - The calculation is running.</p>\n         <p>\n            <code>CANCELING</code> - A request to cancel the calculation has been received and the\n            system is working to stop it.</p>\n         <p>\n            <code>CANCELED</code> - The calculation is no longer running as the result of a cancel\n            request.</p>\n         <p>\n            <code>COMPLETED</code> - The calculation has completed without error.</p>\n         <p>\n            <code>FAILED</code> - The calculation failed and is no longer running.</p>"}))
    StartCalculationExecutionResponse.type = Types::StartCalculationExecutionResponse
    StartQueryExecutionInput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The SQL query statements to be executed.</p>", "smithy.api#required" => {}}))
    StartQueryExecutionInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the query is\n            idempotent (executes only once). If another <code>StartQueryExecution</code> request is\n            received, the same response is returned and another query is not created. An error is\n            returned if a parameter, such as <code>QueryString</code>, has changed. A call to\n                <code>StartQueryExecution</code> that uses a previous client request token returns\n            the same <code>QueryExecutionId</code> even if the requester doesn't have permission on\n            the tables specified in <code>QueryString</code>.</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for users. If you are\n                not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>", "smithy.api#idempotencyToken" => {}}))
    StartQueryExecutionInput.add_member(:query_execution_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: 'QueryExecutionContext', traits: {"smithy.api#documentation" => "<p>The database within which the query executes.</p>"}))
    StartQueryExecutionInput.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies information about where and how to save the results of the query execution.\n            If the query runs in a workgroup, then workgroup's settings may override query settings.\n            This affects the query results location. The workgroup settings override is specified in\n            EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"}))
    StartQueryExecutionInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The name of the workgroup in which the query is being started.</p>"}))
    StartQueryExecutionInput.add_member(:execution_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: 'ExecutionParameters', traits: {"smithy.api#documentation" => "<p>A list of values for the parameters in a query. The values are applied sequentially to\n            the parameters in the query in the order in which the parameters occur.</p>"}))
    StartQueryExecutionInput.add_member(:result_reuse_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: 'ResultReuseConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the query result reuse behavior for the query.</p>"}))
    StartQueryExecutionInput.type = Types::StartQueryExecutionInput
    StartQueryExecutionOutput.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query that ran as a result of this request.</p>"}))
    StartQueryExecutionOutput.type = Types::StartQueryExecutionOutput
    StartSessionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The session description.</p>"}))
    StartSessionRequest.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup to which the session belongs.</p>", "smithy.api#required" => {}}))
    StartSessionRequest.add_member(:engine_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfiguration, location_name: 'EngineConfiguration', traits: {"smithy.api#documentation" => "<p>Contains engine data processing unit (DPU) configuration settings and parameter\n            mappings.</p>", "smithy.api#required" => {}}))
    StartSessionRequest.add_member(:notebook_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion', traits: {"smithy.api#documentation" => "<p>The notebook version. This value is supplied automatically for notebook sessions in\n            the Athena console and is not required for programmatic session access. The\n            only valid notebook version is <code>Athena notebook version 1</code>. If\n            you specify a value for <code>NotebookVersion</code>, you must also specify a value for\n                <code>NotebookId</code>. See <a>EngineConfiguration$AdditionalConfigs</a>.</p>"}))
    StartSessionRequest.add_member(:session_idle_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIdleTimeoutInMinutes, location_name: 'SessionIdleTimeoutInMinutes', traits: {"smithy.api#documentation" => "<p>The idle timeout in minutes for the session.</p>"}))
    StartSessionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the session is\n            idempotent (executes only once). If another <code>StartSessionRequest</code> is\n            received, the same response is returned and another session is not created. If a\n            parameter has changed, an error is returned.</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for users. If you are\n                not using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    StartSessionRequest.type = Types::StartSessionRequest
    StartSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>"}))
    StartSessionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the session. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The session is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The session has been started.</p>\n         <p>\n            <code>IDLE</code> - The session is able to accept a calculation.</p>\n         <p>\n            <code>BUSY</code> - The session is processing another task and is unable to accept a\n            calculation.</p>\n         <p>\n            <code>TERMINATING</code> - The session is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The session and its resources are no longer running.</p>\n         <p>\n            <code>DEGRADED</code> - The session has no healthy coordinators.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the session and its resources are no longer\n            running.</p>"}))
    StartSessionResponse.type = Types::StartSessionResponse
    StatementType.add_member(:ddl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DDL', traits: {"smithy.api#enumValue" => "DDL"}))
    StatementType.add_member(:dml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DML', traits: {"smithy.api#enumValue" => "DML"}))
    StatementType.add_member(:utility, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTILITY', traits: {"smithy.api#enumValue" => "UTILITY"}))
    StopCalculationExecutionRequest.add_member(:calculation_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#documentation" => "<p>The calculation execution UUID.</p>", "smithy.api#required" => {}}))
    StopCalculationExecutionRequest.type = Types::StopCalculationExecutionRequest
    StopCalculationExecutionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>\n            <code>CREATING</code> - The calculation is in the process of being created.</p>\n         <p>\n            <code>CREATED</code> - The calculation has been created and is ready to run.</p>\n         <p>\n            <code>QUEUED</code> - The calculation has been queued for processing.</p>\n         <p>\n            <code>RUNNING</code> - The calculation is running.</p>\n         <p>\n            <code>CANCELING</code> - A request to cancel the calculation has been received and the\n            system is working to stop it.</p>\n         <p>\n            <code>CANCELED</code> - The calculation is no longer running as the result of a cancel\n            request.</p>\n         <p>\n            <code>COMPLETED</code> - The calculation has completed without error.</p>\n         <p>\n            <code>FAILED</code> - The calculation failed and is no longer running.</p>"}))
    StopCalculationExecutionResponse.type = Types::StopCalculationExecutionResponse
    StopQueryExecutionInput.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique ID of the query execution to stop.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StopQueryExecutionInput.type = Types::StopQueryExecutionInput
    StopQueryExecutionOutput.type = Types::StopQueryExecutionOutput
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportedDPUSizeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    TableMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    TableMetadata.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time that the table was created.</p>"}))
    TableMetadata.add_member(:last_access_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessTime', traits: {"smithy.api#documentation" => "<p>The last time the table was accessed.</p>"}))
    TableMetadata.add_member(:table_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TableTypeString, location_name: 'TableType', traits: {"smithy.api#documentation" => "<p>The type of table. In Athena, only <code>EXTERNAL_TABLE</code> is\n            supported.</p>"}))
    TableMetadata.add_member(:columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'Columns', traits: {"smithy.api#documentation" => "<p>A list of the columns in the table.</p>"}))
    TableMetadata.add_member(:partition_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'PartitionKeys', traits: {"smithy.api#documentation" => "<p>A list of the partition keys in the table.</p>"}))
    TableMetadata.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A set of custom key/value pairs for table properties.</p>"}))
    TableMetadata.type = Types::TableMetadata
    TableMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadata)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can\n            use letters and numbers representable in UTF-8, and the following characters: + - = . _\n            : / @. Tag keys are case-sensitive and must be unique per resource. </p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You\n            can use letters and numbers representable in UTF-8, and the following characters: + - =\n            . _ : / @. Tag values are case-sensitive. </p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the Athena resource to which tags are to be\n            added.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A collection of one or more tags, separated by commas, to be added to an Athena resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TerminateSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The session ID.</p>", "smithy.api#required" => {}}))
    TerminateSessionRequest.type = Types::TerminateSessionRequest
    TerminateSessionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the session. A description of each state follows.</p>\n         <p>\n            <code>CREATING</code> - The session is being started, including acquiring\n            resources.</p>\n         <p>\n            <code>CREATED</code> - The session has been started.</p>\n         <p>\n            <code>IDLE</code> - The session is able to accept a calculation.</p>\n         <p>\n            <code>BUSY</code> - The session is processing another task and is unable to accept a\n            calculation.</p>\n         <p>\n            <code>TERMINATING</code> - The session is in the process of shutting down.</p>\n         <p>\n            <code>TERMINATED</code> - The session and its resources are no longer running.</p>\n         <p>\n            <code>DEGRADED</code> - The session has no healthy coordinators.</p>\n         <p>\n            <code>FAILED</code> - Due to a failure, the session and its resources are no longer\n            running.</p>"}))
    TerminateSessionResponse.type = Types::TerminateSessionResponse
    ThrottleReason.add_member(:concurrent_query_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_QUERY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "CONCURRENT_QUERY_LIMIT_EXCEEDED"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleReason, location_name: 'Reason'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessedNamedQueryId.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the named query.</p>"}))
    UnprocessedNamedQueryId.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code returned when the processing request for the named query failed, if\n            applicable.</p>"}))
    UnprocessedNamedQueryId.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message returned when the processing request for the named query failed, if\n            applicable.</p>"}))
    UnprocessedNamedQueryId.type = Types::UnprocessedNamedQueryId
    UnprocessedNamedQueryIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedNamedQueryId)
    UnprocessedPreparedStatementName.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of a prepared statement that could not be returned due to an error.</p>"}))
    UnprocessedPreparedStatementName.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code returned when the request for the prepared statement failed.</p>"}))
    UnprocessedPreparedStatementName.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message containing the reason why the prepared statement could not be\n            returned. The following error messages are possible:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INVALID_INPUT</code> - The name of the prepared statement that was\n                    provided is not valid (for example, the name is too long).</p>\n            </li>\n            <li>\n               <p>\n                  <code>STATEMENT_NOT_FOUND</code> - A prepared statement with the name provided\n                    could not be found.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNAUTHORIZED</code> - The requester does not have permission to access\n                    the workgroup that contains the prepared statement.</p>\n            </li>\n         </ul>"}))
    UnprocessedPreparedStatementName.type = Types::UnprocessedPreparedStatementName
    UnprocessedPreparedStatementNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementName)
    UnprocessedQueryExecutionId.add_member(:query_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the query execution.</p>"}))
    UnprocessedQueryExecutionId.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code returned when the query execution failed to process, if\n            applicable.</p>"}))
    UnprocessedQueryExecutionId.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message returned when the query execution failed to process, if\n            applicable.</p>"}))
    UnprocessedQueryExecutionId.type = Types::UnprocessedQueryExecutionId
    UnprocessedQueryExecutionIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionId)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the resource from which tags are to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A comma-separated list of one or more tag keys whose tags are to be removed from the\n            specified resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCapacityReservationInput.add_member(:target_dpus, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#documentation" => "<p>The new number of requested data processing units.</p>", "smithy.api#required" => {}}))
    UpdateCapacityReservationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the capacity reservation.</p>", "smithy.api#required" => {}}))
    UpdateCapacityReservationInput.type = Types::UpdateCapacityReservationInput
    UpdateCapacityReservationOutput.type = Types::UpdateCapacityReservationOutput
    UpdateDataCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data catalog to update. The catalog name must be unique for the\n                Amazon Web Services account and can use a maximum of 127 alphanumeric, underscore, at\n            sign, or hyphen characters. The remainder of the length constraint of 256 is reserved\n            for use by Athena.</p>", "smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a\n            federated catalog, <code>HIVE</code> for an external hive metastore, or\n                <code>GLUE</code> for an Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>New or modified text that describes the data catalog.</p>"}))
    UpdateDataCatalogInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Specifies the Lambda function or functions to use for updating the data\n            catalog. This is a mapping whose values depend on the catalog type. </p>\n         <ul>\n            <li>\n               <p>For the <code>HIVE</code> data catalog type, use the following syntax. The\n                        <code>metadata-function</code> parameter is required. <code>The\n                        sdk-version</code> parameter is optional and defaults to the currently\n                    supported version.</p>\n               <p>\n                  <code>metadata-function=<i>lambda_arn</i>,\n                            sdk-version=<i>version_number</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets\n                    of required parameters, but not both.</p>\n               <ul>\n                  <li>\n                     <p>If you have one Lambda function that processes metadata\n                            and another for reading the actual data, use the following syntax. Both\n                            parameters are required.</p>\n                     <p>\n                        <code>metadata-function=<i>lambda_arn</i>,\n                                    record-function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n                  <li>\n                     <p> If you have a composite Lambda function that processes\n                            both metadata and data, use the following syntax to specify your Lambda function.</p>\n                     <p>\n                        <code>function=<i>lambda_arn</i>\n                        </code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    UpdateDataCatalogInput.type = Types::UpdateDataCatalogInput
    UpdateDataCatalogOutput.type = Types::UpdateDataCatalogOutput
    UpdateNamedQueryInput.add_member(:named_query_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#documentation" => "<p>The unique identifier (UUID) of the query.</p>", "smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the query.</p>", "smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryDescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The query description.</p>"}))
    UpdateNamedQueryInput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>The contents of the query with all query statements.</p>", "smithy.api#required" => {}}))
    UpdateNamedQueryInput.type = Types::UpdateNamedQueryInput
    UpdateNamedQueryOutput.type = Types::UpdateNamedQueryOutput
    UpdateNotebookInput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook to update.</p>", "smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#documentation" => "<p>The updated content for the notebook.</p>", "smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The notebook content type. Currently, the only valid type is\n            <code>IPYNB</code>.</p>", "smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The active notebook session ID. Required if the notebook has an active session.</p>"}))
    UpdateNotebookInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the notebook is\n            idempotent (executes only once).</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not\n                using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    UpdateNotebookInput.type = Types::UpdateNotebookInput
    UpdateNotebookMetadataInput.add_member(:notebook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#documentation" => "<p>The ID of the notebook to update the metadata for.</p>", "smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique case-sensitive string used to ensure the request to create the notebook is\n            idempotent (executes only once).</p>\n         <important>\n            <p>This token is listed as not required because Amazon Web Services SDKs (for example\n                the Amazon Web Services SDK for Java) auto-generate the token for you. If you are not\n                using the Amazon Web Services SDK or the Amazon Web Services CLI, you must provide\n                this token or the action will fail.</p>\n         </important>"}))
    UpdateNotebookMetadataInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name to update the notebook to.</p>", "smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.type = Types::UpdateNotebookMetadataInput
    UpdateNotebookMetadataOutput.type = Types::UpdateNotebookMetadataOutput
    UpdateNotebookOutput.type = Types::UpdateNotebookOutput
    UpdatePreparedStatementInput.add_member(:statement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#documentation" => "<p>The name of the prepared statement.</p>", "smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The workgroup for the prepared statement.</p>", "smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:query_statement, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement', traits: {"smithy.api#documentation" => "<p>The query string for the prepared statement.</p>", "smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the prepared statement.</p>"}))
    UpdatePreparedStatementInput.type = Types::UpdatePreparedStatementInput
    UpdatePreparedStatementOutput.type = Types::UpdatePreparedStatementOutput
    UpdateWorkGroupInput.add_member(:work_group, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#documentation" => "<p>The specified workgroup that will be updated.</p>", "smithy.api#required" => {}}))
    UpdateWorkGroupInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The workgroup description.</p>"}))
    UpdateWorkGroupInput.add_member(:configuration_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfigurationUpdates, location_name: 'ConfigurationUpdates', traits: {"smithy.api#documentation" => "<p>Contains configuration updates for an Athena SQL workgroup.</p>"}))
    UpdateWorkGroupInput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The workgroup state that will be updated for the given workgroup.</p>"}))
    UpdateWorkGroupInput.type = Types::UpdateWorkGroupInput
    UpdateWorkGroupOutput.type = Types::UpdateWorkGroupOutput
    WorkGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The workgroup name.</p>", "smithy.api#required" => {}}))
    WorkGroup.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the workgroup: ENABLED or DISABLED.</p>"}))
    WorkGroup.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration of the workgroup, which includes the location in Amazon S3\n            where query and calculation results are stored, the encryption configuration, if any,\n            used for query and calculation results; whether the Amazon CloudWatch Metrics are\n            enabled for the workgroup; whether workgroup settings override client-side settings; and\n            the data usage limits for the amount of data scanned per query or per workgroup. The\n            workgroup settings override is specified in <code>EnforceWorkGroupConfiguration</code>\n            (true/false) in the <code>WorkGroupConfiguration</code>. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"}))
    WorkGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The workgroup description.</p>"}))
    WorkGroup.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the workgroup was created.</p>"}))
    WorkGroup.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'IdentityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center enabled application associated with the\n            workgroup.</p>"}))
    WorkGroup.type = Types::WorkGroup
    WorkGroupConfiguration.add_member(:result_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the workgroup, which includes the location in Amazon S3\n            where query and calculation results are stored and the encryption option, if any, used\n            for query and calculation results. To run the query, you must specify the query results\n            location using one of the ways: either in the workgroup using this setting, or for\n            individual queries (client-side), using <a>ResultConfiguration$OutputLocation</a>. If none of them is set, Athena issues an error that no output location is provided.</p>"}))
    WorkGroupConfiguration.add_member(:managed_query_results_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfiguration, location_name: 'ManagedQueryResultsConfiguration', traits: {"smithy.api#documentation" => "<p> The configuration for storing results in Athena owned storage, which includes whether\n            this feature is enabled; whether encryption configuration, if any, is used for\n            encrypting query results. </p>"}))
    WorkGroupConfiguration.add_member(:enforce_work_group_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnforceWorkGroupConfiguration', traits: {"smithy.api#documentation" => "<p>If set to \"true\", the settings for the workgroup override client-side settings. If set\n            to \"false\", client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    WorkGroupConfiguration.add_member(:publish_cloud_watch_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'PublishCloudWatchMetricsEnabled', traits: {"smithy.api#documentation" => "<p>Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.</p>"}))
    WorkGroupConfiguration.add_member(:bytes_scanned_cutoff_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: 'BytesScannedCutoffPerQuery', traits: {"smithy.api#documentation" => "<p>The upper data usage limit (cutoff) for the amount of bytes a single query in a\n            workgroup is allowed to scan.</p>"}))
    WorkGroupConfiguration.add_member(:requester_pays_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RequesterPaysEnabled', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, allows members assigned to a workgroup to reference\n                Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>,\n            workgroup members cannot query data from Requester Pays buckets, and queries that\n            retrieve data from Requester Pays buckets cause an error. The default is\n                <code>false</code>. For more information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester\n                Pays Buckets</a> in the <i>Amazon Simple Storage Service Developer\n                Guide</i>.</p>"}))
    WorkGroupConfiguration.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version that all queries running on the workgroup use. Queries on the\n                <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine\n            regardless of this setting.</p>"}))
    WorkGroupConfiguration.add_member(:additional_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'AdditionalConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies a user defined JSON string that is passed to the notebook engine.</p>"}))
    WorkGroupConfiguration.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole', traits: {"smithy.api#documentation" => "<p>The ARN of the execution role used to access user resources for Spark sessions and\n                IAM Identity Center enabled workgroups. This property applies only to Spark enabled\n            workgroups and IAM Identity Center enabled workgroups. The property is required for\n                IAM Identity Center enabled workgroups.</p>"}))
    WorkGroupConfiguration.add_member(:customer_content_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: 'CustomerContentEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the KMS key that is used to encrypt the user's data stores in Athena. This setting does not apply to Athena SQL workgroups.</p>"}))
    WorkGroupConfiguration.add_member(:enable_minimum_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableMinimumEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Enforces a minimal level of encryption for the workgroup for query and calculation\n            results that are written to Amazon S3. When enabled, workgroup users can set\n            encryption only to the minimum level set by the administrator or higher when they submit\n            queries.</p>\n         <p>The <code>EnforceWorkGroupConfiguration</code> setting takes precedence over the\n                <code>EnableMinimumEncryptionConfiguration</code> flag. This means that if\n                <code>EnforceWorkGroupConfiguration</code> is true, the\n                <code>EnableMinimumEncryptionConfiguration</code> flag is ignored, and the workgroup\n            configuration for encryption is used.</p>"}))
    WorkGroupConfiguration.add_member(:identity_center_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: 'IdentityCenterConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether the workgroup is IAM Identity Center supported.</p>"}))
    WorkGroupConfiguration.add_member(:query_results_s3_access_grants_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 access grants are enabled for query\n            results.</p>"}))
    WorkGroupConfiguration.type = Types::WorkGroupConfiguration
    WorkGroupConfigurationUpdates.add_member(:enforce_work_group_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnforceWorkGroupConfiguration', traits: {"smithy.api#documentation" => "<p>If set to \"true\", the settings for the workgroup override client-side settings. If set\n            to \"false\" client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:result_configuration_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfigurationUpdates, location_name: 'ResultConfigurationUpdates', traits: {"smithy.api#documentation" => "<p>The result configuration information about the queries in this workgroup that will be\n            updated. Includes the updated results location and an updated option for encrypting\n            query results.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:managed_query_results_configuration_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfigurationUpdates, location_name: 'ManagedQueryResultsConfigurationUpdates', traits: {"smithy.api#documentation" => "<p>Updates configuration information for managed query results in the workgroup.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:publish_cloud_watch_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'PublishCloudWatchMetricsEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:bytes_scanned_cutoff_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: 'BytesScannedCutoffPerQuery', traits: {"smithy.api#documentation" => "<p>The upper limit (cutoff) for the amount of bytes a single query in a workgroup is\n            allowed to scan.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:remove_bytes_scanned_cutoff_per_query, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveBytesScannedCutoffPerQuery', traits: {"smithy.api#documentation" => "<p>Indicates that the data usage control limit per query is removed. <a>WorkGroupConfiguration$BytesScannedCutoffPerQuery</a>\n         </p>"}))
    WorkGroupConfigurationUpdates.add_member(:requester_pays_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RequesterPaysEnabled', traits: {"smithy.api#documentation" => "<p>If set to <code>true</code>, allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup\n            members cannot query data from Requester Pays buckets, and queries that retrieve data\n            from Requester Pays buckets cause an error. The default is <code>false</code>. For more\n            information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester Pays Buckets</a>\n            in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version requested when a workgroup is updated. After the update, all\n            queries on the workgroup run on the requested engine version. If no value was previously\n            set, the default is Auto. Queries on the <code>AmazonAthenaPreviewFunctionality</code>\n            workgroup run on the preview engine regardless of this setting.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:remove_customer_content_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveCustomerContentEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Removes content encryption configuration from an Apache Spark-enabled Athena workgroup.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:additional_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'AdditionalConfiguration', traits: {"smithy.api#documentation" => "<p>Contains a user defined string in JSON format for a Spark-enabled workgroup.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:execution_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole', traits: {"smithy.api#documentation" => "<p>The ARN of the execution role used to access user resources for Spark sessions and\n            Identity Center enabled workgroups. This property applies only to Spark enabled\n            workgroups and Identity Center enabled workgroups.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:customer_content_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: 'CustomerContentEncryptionConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:enable_minimum_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableMinimumEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>Enforces a minimal level of encryption for the workgroup for query and calculation\n            results that are written to Amazon S3. When enabled, workgroup users can set\n            encryption only to the minimum level set by the administrator or higher when they submit\n            queries. This setting does not apply to Spark-enabled workgroups.</p>\n         <p>The <code>EnforceWorkGroupConfiguration</code> setting takes precedence over the\n                <code>EnableMinimumEncryptionConfiguration</code> flag. This means that if\n                <code>EnforceWorkGroupConfiguration</code> is true, the\n                <code>EnableMinimumEncryptionConfiguration</code> flag is ignored, and the workgroup\n            configuration for encryption is used.</p>"}))
    WorkGroupConfigurationUpdates.add_member(:query_results_s3_access_grants_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 access grants are enabled for query\n            results.</p>"}))
    WorkGroupConfigurationUpdates.type = Types::WorkGroupConfigurationUpdates
    WorkGroupNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName)
    WorkGroupState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    WorkGroupState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the workgroup.</p>"}))
    WorkGroupSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the workgroup.</p>"}))
    WorkGroupSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The workgroup description.</p>"}))
    WorkGroupSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The workgroup creation date and time.</p>"}))
    WorkGroupSummary.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version setting for all queries on the workgroup. Queries on the\n                <code>AmazonAthenaPreviewFunctionality</code> workgroup run on the preview engine\n            regardless of this setting.</p>"}))
    WorkGroupSummary.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'IdentityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM Identity Center enabled application associated with the\n            workgroup.</p>"}))
    WorkGroupSummary.type = Types::WorkGroupSummary
    WorkGroupsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupSummary)
    DatumList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Datum)

    AmazonAthena = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.athena#AmazonAthena"
      service.name = "AmazonAthena"
      service.version = "2017-05-18"
      service.traits = {"aws.api#service" => {"sdkId" => "Athena", "arnNamespace" => "athena", "cloudFormationName" => "Athena", "cloudTrailEventSource" => "athena.amazonaws.com", "endpointPrefix" => "athena"}, "aws.auth#sigv4" => {"name" => "athena"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Athena"}
      service.add_operation(:batch_get_named_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetNamedQuery"
        operation.name = "BatchGetNamedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetNamedQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetNamedQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_prepared_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetPreparedStatement"
        operation.name = "BatchGetPreparedStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetPreparedStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetPreparedStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_query_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetQueryExecution"
        operation.name = "BatchGetQueryExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetQueryExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetQueryExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CancelCapacityReservation"
        operation.name = "CancelCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateCapacityReservation"
        operation.name = "CreateCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateDataCatalog"
        operation.name = "CreateDataCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_named_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNamedQuery"
        operation.name = "CreateNamedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamedQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamedQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_notebook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNotebook"
        operation.name = "CreateNotebook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotebookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotebookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_prepared_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePreparedStatement"
        operation.name = "CreatePreparedStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePreparedStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePreparedStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_presigned_notebook_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePresignedNotebookUrl"
        operation.name = "CreatePresignedNotebookUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_work_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateWorkGroup"
        operation.name = "CreateWorkGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteCapacityReservation"
        operation.name = "DeleteCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteDataCatalog"
        operation.name = "DeleteDataCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_named_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNamedQuery"
        operation.name = "DeleteNamedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamedQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamedQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notebook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNotebook"
        operation.name = "DeleteNotebook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotebookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotebookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_prepared_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeletePreparedStatement"
        operation.name = "DeletePreparedStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePreparedStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePreparedStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_work_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteWorkGroup"
        operation.name = "DeleteWorkGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_notebook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ExportNotebook"
        operation.name = "ExportNotebook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNotebookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNotebookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecution"
        operation.name = "GetCalculationExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_code, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionCode"
        operation.name = "GetCalculationExecutionCode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionStatus"
        operation.name = "GetCalculationExecutionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_assignment_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityAssignmentConfiguration"
        operation.name = "GetCapacityAssignmentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityReservation"
        operation.name = "GetCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_data_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDataCatalog"
        operation.name = "GetDataCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_database, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDatabase"
        operation.name = "GetDatabase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
      end)
      service.add_operation(:get_named_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNamedQuery"
        operation.name = "GetNamedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamedQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamedQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_notebook_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNotebookMetadata"
        operation.name = "GetNotebookMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotebookMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotebookMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_prepared_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetPreparedStatement"
        operation.name = "GetPreparedStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreparedStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreparedStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_query_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryExecution"
        operation.name = "GetQueryExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_query_results, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_query_runtime_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryRuntimeStatistics"
        operation.name = "GetQueryRuntimeStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_session_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSessionStatus"
        operation.name = "GetSessionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_table_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetTableMetadata"
        operation.name = "GetTableMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
      end)
      service.add_operation(:get_work_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetWorkGroup"
        operation.name = "GetWorkGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:import_notebook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ImportNotebook"
        operation.name = "ImportNotebook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotebookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotebookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_application_dpu_sizes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListApplicationDPUSizes"
        operation.name = "ListApplicationDPUSizes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationDPUSizesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationDPUSizesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationDPUSizes.new
      end)
      service.add_operation(:list_calculation_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCalculationExecutions"
        operation.name = "ListCalculationExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCalculationExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCalculationExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCalculationExecutions.new
      end)
      service.add_operation(:list_capacity_reservations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCapacityReservations"
        operation.name = "ListCapacityReservations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityReservationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityReservationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCapacityReservations.new
      end)
      service.add_operation(:list_data_catalogs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDataCatalogs"
        operation.name = "ListDataCatalogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCatalogsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCatalogsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataCatalogs.new
      end)
      service.add_operation(:list_databases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_engine_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListEngineVersions"
        operation.name = "ListEngineVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEngineVersions.new
      end)
      service.add_operation(:list_executors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListExecutors"
        operation.name = "ListExecutors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExecutors.new
      end)
      service.add_operation(:list_named_queries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNamedQueries"
        operation.name = "ListNamedQueries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedQueriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedQueriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListNamedQueriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListNamedQueries.new
      end)
      service.add_operation(:list_notebook_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookMetadata"
        operation.name = "ListNotebookMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_notebook_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookSessions"
        operation.name = "ListNotebookSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_prepared_statements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListPreparedStatements"
        operation.name = "ListPreparedStatements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreparedStatementsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreparedStatementsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPreparedStatements.new
      end)
      service.add_operation(:list_query_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListQueryExecutions"
        operation.name = "ListQueryExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryExecutionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryExecutionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListQueryExecutions.new
      end)
      service.add_operation(:list_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListSessions"
        operation.name = "ListSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_table_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTableMetadata"
        operation.name = "ListTableMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTableMetadata.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_work_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListWorkGroups"
        operation.name = "ListWorkGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkGroups.new
      end)
      service.add_operation(:put_capacity_assignment_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#PutCapacityAssignmentConfiguration"
        operation.name = "PutCapacityAssignmentConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_calculation_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartCalculationExecution"
        operation.name = "StartCalculationExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCalculationExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCalculationExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_query_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartQueryExecution"
        operation.name = "StartQueryExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartSession"
        operation.name = "StartSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:stop_calculation_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopCalculationExecution"
        operation.name = "StopCalculationExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCalculationExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCalculationExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_query_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopQueryExecution"
        operation.name = "StopQueryExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TerminateSession"
        operation.name = "TerminateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_capacity_reservation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateCapacityReservation"
        operation.name = "UpdateCapacityReservation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCapacityReservationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCapacityReservationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_data_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateDataCatalog"
        operation.name = "UpdateDataCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_named_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNamedQuery"
        operation.name = "UpdateNamedQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamedQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamedQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notebook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebook"
        operation.name = "UpdateNotebook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_notebook_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebookMetadata"
        operation.name = "UpdateNotebookMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_prepared_statement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdatePreparedStatement"
        operation.name = "UpdatePreparedStatement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreparedStatementInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreparedStatementOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_work_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateWorkGroup"
        operation.name = "UpdateWorkGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
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
