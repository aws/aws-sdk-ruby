# frozen_string_literal: true

# This is generated code!

module Aws::Athena
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AclConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#AclConfiguration', name: 'AclConfiguration')
    Age = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Age', name: 'Age', traits: {"smithy.api#range" => {"min" => 0, "max" => 10080}})
    AllocatedDpusInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#AllocatedDpusInteger', name: 'AllocatedDpusInteger', traits: {"smithy.api#range" => {"min" => 0}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ApplicationDPUSizes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ApplicationDPUSizes', name: 'ApplicationDPUSizes')
    ApplicationDPUSizesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ApplicationDPUSizesList', name: 'ApplicationDPUSizesList')
    AthenaError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#AthenaError', name: 'AthenaError')
    AuthToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AuthToken', name: 'AuthToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#AuthenticationType', name: 'AuthenticationType')
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    BatchGetNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetNamedQueryInput', name: 'BatchGetNamedQueryInput')
    BatchGetNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetNamedQueryOutput', name: 'BatchGetNamedQueryOutput')
    BatchGetPreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetPreparedStatementInput', name: 'BatchGetPreparedStatementInput')
    BatchGetPreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetPreparedStatementOutput', name: 'BatchGetPreparedStatementOutput')
    BatchGetQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetQueryExecutionInput', name: 'BatchGetQueryExecutionInput')
    BatchGetQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#BatchGetQueryExecutionOutput', name: 'BatchGetQueryExecutionOutput')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.athena#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.athena#BoxedBoolean', name: 'BoxedBoolean')
    BytesScannedCutoffValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#BytesScannedCutoffValue', name: 'BytesScannedCutoffValue', traits: {"smithy.api#range" => {"min" => 10000000}})
    CalculationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationConfiguration', name: 'CalculationConfiguration')
    CalculationExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CalculationExecutionId', name: 'CalculationExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    CalculationExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CalculationExecutionState', name: 'CalculationExecutionState')
    CalculationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationResult', name: 'CalculationResult')
    CalculationResultType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CalculationResultType', name: 'CalculationResultType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\w+\\/[-+.\\w]+$"})
    CalculationStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationStatistics', name: 'CalculationStatistics')
    CalculationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationStatus', name: 'CalculationStatus')
    CalculationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CalculationSummary', name: 'CalculationSummary')
    CalculationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CalculationsList', name: 'CalculationsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CancelCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CancelCapacityReservationInput', name: 'CancelCapacityReservationInput')
    CancelCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CancelCapacityReservationOutput', name: 'CancelCapacityReservationOutput')
    CapacityAllocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAllocation', name: 'CapacityAllocation')
    CapacityAllocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CapacityAllocationStatus', name: 'CapacityAllocationStatus')
    CapacityAssignment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAssignment', name: 'CapacityAssignment')
    CapacityAssignmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityAssignmentConfiguration', name: 'CapacityAssignmentConfiguration')
    CapacityAssignmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CapacityAssignmentsList', name: 'CapacityAssignmentsList')
    CapacityReservation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CapacityReservation', name: 'CapacityReservation')
    CapacityReservationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CapacityReservationName', name: 'CapacityReservationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    CapacityReservationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#CapacityReservationStatus', name: 'CapacityReservationStatus')
    CapacityReservationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#CapacityReservationsList', name: 'CapacityReservationsList')
    CatalogNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CatalogNameString', name: 'CatalogNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    CodeBlock = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CodeBlock', name: 'CodeBlock', traits: {"smithy.api#length" => {"min" => 0, "max" => 68000}})
    Column = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Column', name: 'Column')
    ColumnInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ColumnInfo', name: 'ColumnInfo')
    ColumnInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ColumnInfoList', name: 'ColumnInfoList')
    ColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ColumnList', name: 'ColumnList')
    ColumnNullable = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ColumnNullable', name: 'ColumnNullable')
    CommentString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#CommentString', name: 'CommentString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ConnectionType', name: 'ConnectionType')
    CoordinatorDpuSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#CoordinatorDpuSize', name: 'CoordinatorDpuSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    CreateCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateCapacityReservationInput', name: 'CreateCapacityReservationInput')
    CreateCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateCapacityReservationOutput', name: 'CreateCapacityReservationOutput')
    CreateDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateDataCatalogInput', name: 'CreateDataCatalogInput')
    CreateDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateDataCatalogOutput', name: 'CreateDataCatalogOutput')
    CreateNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNamedQueryInput', name: 'CreateNamedQueryInput')
    CreateNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNamedQueryOutput', name: 'CreateNamedQueryOutput')
    CreateNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNotebookInput', name: 'CreateNotebookInput')
    CreateNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateNotebookOutput', name: 'CreateNotebookOutput')
    CreatePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePreparedStatementInput', name: 'CreatePreparedStatementInput')
    CreatePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePreparedStatementOutput', name: 'CreatePreparedStatementOutput')
    CreatePresignedNotebookUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePresignedNotebookUrlRequest', name: 'CreatePresignedNotebookUrlRequest')
    CreatePresignedNotebookUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreatePresignedNotebookUrlResponse', name: 'CreatePresignedNotebookUrlResponse')
    CreateWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateWorkGroupInput', name: 'CreateWorkGroupInput')
    CreateWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CreateWorkGroupOutput', name: 'CreateWorkGroupOutput')
    CustomerContentEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#CustomerContentEncryptionConfiguration', name: 'CustomerContentEncryptionConfiguration')
    DataCatalog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DataCatalog', name: 'DataCatalog')
    DataCatalogStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#DataCatalogStatus', name: 'DataCatalogStatus')
    DataCatalogSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DataCatalogSummary', name: 'DataCatalogSummary')
    DataCatalogSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#DataCatalogSummaryList', name: 'DataCatalogSummaryList')
    DataCatalogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#DataCatalogType', name: 'DataCatalogType')
    Database = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Database', name: 'Database')
    DatabaseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#DatabaseList', name: 'DatabaseList')
    DatabaseString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#DatabaseString', name: 'DatabaseString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.athena#Date', name: 'Date')
    Datum = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Datum', name: 'Datum')
    DefaultExecutorDpuSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#DefaultExecutorDpuSize', name: 'DefaultExecutorDpuSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    DeleteCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteCapacityReservationInput', name: 'DeleteCapacityReservationInput')
    DeleteCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteCapacityReservationOutput', name: 'DeleteCapacityReservationOutput')
    DeleteDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteDataCatalogInput', name: 'DeleteDataCatalogInput')
    DeleteDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteDataCatalogOutput', name: 'DeleteDataCatalogOutput')
    DeleteNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNamedQueryInput', name: 'DeleteNamedQueryInput')
    DeleteNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNamedQueryOutput', name: 'DeleteNamedQueryOutput')
    DeleteNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNotebookInput', name: 'DeleteNotebookInput')
    DeleteNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteNotebookOutput', name: 'DeleteNotebookOutput')
    DeletePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeletePreparedStatementInput', name: 'DeletePreparedStatementInput')
    DeletePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeletePreparedStatementOutput', name: 'DeletePreparedStatementOutput')
    DeleteWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteWorkGroupInput', name: 'DeleteWorkGroupInput')
    DeleteWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#DeleteWorkGroupOutput', name: 'DeleteWorkGroupOutput')
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EncryptionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#EncryptionOption', name: 'EncryptionOption')
    EngineConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EngineConfiguration', name: 'EngineConfiguration')
    EngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#EngineVersion', name: 'EngineVersion')
    EngineVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#EngineVersionsList', name: 'EngineVersionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ErrorCategory = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#ErrorCategory', name: 'ErrorCategory', traits: {"smithy.api#range" => {"min" => 1, "max" => 3}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ErrorMessage', name: 'ErrorMessage')
    ErrorType = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#ErrorType', name: 'ErrorType', traits: {"smithy.api#range" => {"min" => 0, "max" => 9999}})
    ExecutionParameter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExecutionParameter', name: 'ExecutionParameter', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExecutionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ExecutionParameters', name: 'ExecutionParameters', traits: {"smithy.api#length" => {"min" => 1}})
    ExecutorId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExecutorId', name: 'ExecutorId', traits: {"smithy.api#length" => {"min" => 0, "max" => 100000}, "smithy.api#pattern" => ".*"})
    ExecutorState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ExecutorState', name: 'ExecutorState')
    ExecutorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ExecutorType', name: 'ExecutorType')
    ExecutorsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExecutorsSummary', name: 'ExecutorsSummary')
    ExecutorsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#ExecutorsSummaryList', name: 'ExecutorsSummaryList')
    ExportNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExportNotebookInput', name: 'ExportNotebookInput')
    ExportNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ExportNotebookOutput', name: 'ExportNotebookOutput')
    ExpressionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ExpressionString', name: 'ExpressionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FilterDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#FilterDefinition', name: 'FilterDefinition')
    GetCalculationExecutionCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionCodeRequest', name: 'GetCalculationExecutionCodeRequest')
    GetCalculationExecutionCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionCodeResponse', name: 'GetCalculationExecutionCodeResponse')
    GetCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionRequest', name: 'GetCalculationExecutionRequest')
    GetCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionResponse', name: 'GetCalculationExecutionResponse')
    GetCalculationExecutionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionStatusRequest', name: 'GetCalculationExecutionStatusRequest')
    GetCalculationExecutionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCalculationExecutionStatusResponse', name: 'GetCalculationExecutionStatusResponse')
    GetCapacityAssignmentConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityAssignmentConfigurationInput', name: 'GetCapacityAssignmentConfigurationInput')
    GetCapacityAssignmentConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityAssignmentConfigurationOutput', name: 'GetCapacityAssignmentConfigurationOutput')
    GetCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityReservationInput', name: 'GetCapacityReservationInput')
    GetCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetCapacityReservationOutput', name: 'GetCapacityReservationOutput')
    GetDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDataCatalogInput', name: 'GetDataCatalogInput')
    GetDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDataCatalogOutput', name: 'GetDataCatalogOutput')
    GetDatabaseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDatabaseInput', name: 'GetDatabaseInput')
    GetDatabaseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetDatabaseOutput', name: 'GetDatabaseOutput')
    GetNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNamedQueryInput', name: 'GetNamedQueryInput')
    GetNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNamedQueryOutput', name: 'GetNamedQueryOutput')
    GetNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNotebookMetadataInput', name: 'GetNotebookMetadataInput')
    GetNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetNotebookMetadataOutput', name: 'GetNotebookMetadataOutput')
    GetPreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetPreparedStatementInput', name: 'GetPreparedStatementInput')
    GetPreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetPreparedStatementOutput', name: 'GetPreparedStatementOutput')
    GetQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryExecutionInput', name: 'GetQueryExecutionInput')
    GetQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryExecutionOutput', name: 'GetQueryExecutionOutput')
    GetQueryResultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryResultsInput', name: 'GetQueryResultsInput')
    GetQueryResultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryResultsOutput', name: 'GetQueryResultsOutput')
    GetQueryRuntimeStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryRuntimeStatisticsInput', name: 'GetQueryRuntimeStatisticsInput')
    GetQueryRuntimeStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetQueryRuntimeStatisticsOutput', name: 'GetQueryRuntimeStatisticsOutput')
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionResponse', name: 'GetSessionResponse')
    GetSessionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionStatusRequest', name: 'GetSessionStatusRequest')
    GetSessionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetSessionStatusResponse', name: 'GetSessionStatusResponse')
    GetTableMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetTableMetadataInput', name: 'GetTableMetadataInput')
    GetTableMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetTableMetadataOutput', name: 'GetTableMetadataOutput')
    GetWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetWorkGroupInput', name: 'GetWorkGroupInput')
    GetWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#GetWorkGroupOutput', name: 'GetWorkGroupOutput')
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 32, "max" => 128}})
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdentityCenterApplicationArn', name: 'IdentityCenterApplicationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#IdentityCenterConfiguration', name: 'IdentityCenterConfiguration')
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#IdentityCenterInstanceArn', name: 'IdentityCenterInstanceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    ImportNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ImportNotebookInput', name: 'ImportNotebookInput')
    ImportNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ImportNotebookOutput', name: 'ImportNotebookOutput')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    KeyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#KeyString', name: 'KeyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:key/?[a-zA-Z_0-9+=,.@\\-_/]+$|^arn:aws[a-z\\-]*:kms:([a-z0-9\\-]+):\\d{12}:alias/?[a-zA-Z_0-9+=,.@\\-_/]+$|^alias/[a-zA-Z0-9/_-]+$|[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ListApplicationDPUSizesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListApplicationDPUSizesInput', name: 'ListApplicationDPUSizesInput')
    ListApplicationDPUSizesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListApplicationDPUSizesOutput', name: 'ListApplicationDPUSizesOutput')
    ListCalculationExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCalculationExecutionsRequest', name: 'ListCalculationExecutionsRequest')
    ListCalculationExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCalculationExecutionsResponse', name: 'ListCalculationExecutionsResponse')
    ListCapacityReservationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCapacityReservationsInput', name: 'ListCapacityReservationsInput')
    ListCapacityReservationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListCapacityReservationsOutput', name: 'ListCapacityReservationsOutput')
    ListDataCatalogsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDataCatalogsInput', name: 'ListDataCatalogsInput')
    ListDataCatalogsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDataCatalogsOutput', name: 'ListDataCatalogsOutput')
    ListDatabasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDatabasesInput', name: 'ListDatabasesInput')
    ListDatabasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListDatabasesOutput', name: 'ListDatabasesOutput')
    ListEngineVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListEngineVersionsInput', name: 'ListEngineVersionsInput')
    ListEngineVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListEngineVersionsOutput', name: 'ListEngineVersionsOutput')
    ListExecutorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListExecutorsRequest', name: 'ListExecutorsRequest')
    ListExecutorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListExecutorsResponse', name: 'ListExecutorsResponse')
    ListNamedQueriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNamedQueriesInput', name: 'ListNamedQueriesInput')
    ListNamedQueriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNamedQueriesOutput', name: 'ListNamedQueriesOutput')
    ListNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookMetadataInput', name: 'ListNotebookMetadataInput')
    ListNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookMetadataOutput', name: 'ListNotebookMetadataOutput')
    ListNotebookSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookSessionsRequest', name: 'ListNotebookSessionsRequest')
    ListNotebookSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListNotebookSessionsResponse', name: 'ListNotebookSessionsResponse')
    ListPreparedStatementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListPreparedStatementsInput', name: 'ListPreparedStatementsInput')
    ListPreparedStatementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListPreparedStatementsOutput', name: 'ListPreparedStatementsOutput')
    ListQueryExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListQueryExecutionsInput', name: 'ListQueryExecutionsInput')
    ListQueryExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListQueryExecutionsOutput', name: 'ListQueryExecutionsOutput')
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListSessionsResponse', name: 'ListSessionsResponse')
    ListTableMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTableMetadataInput', name: 'ListTableMetadataInput')
    ListTableMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTableMetadataOutput', name: 'ListTableMetadataOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWorkGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListWorkGroupsInput', name: 'ListWorkGroupsInput')
    ListWorkGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ListWorkGroupsOutput', name: 'ListWorkGroupsOutput')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#Long', name: 'Long')
    ManagedQueryResultsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsConfiguration', name: 'ManagedQueryResultsConfiguration')
    ManagedQueryResultsConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsConfigurationUpdates', name: 'ManagedQueryResultsConfigurationUpdates')
    ManagedQueryResultsEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ManagedQueryResultsEncryptionConfiguration', name: 'ManagedQueryResultsEncryptionConfiguration')
    MaxApplicationDPUSizesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxApplicationDPUSizesCount', name: 'MaxApplicationDPUSizesCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCalculationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxCalculationsCount', name: 'MaxCalculationsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxCapacityReservationsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxCapacityReservationsCount', name: 'MaxCapacityReservationsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxConcurrentDpus = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxConcurrentDpus', name: 'MaxConcurrentDpus', traits: {"smithy.api#range" => {"min" => 2, "max" => 5000}})
    MaxDataCatalogsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxDataCatalogsCount', name: 'MaxDataCatalogsCount', traits: {"smithy.api#range" => {"min" => 2, "max" => 50}})
    MaxDatabasesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxDatabasesCount', name: 'MaxDatabasesCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxEngineVersionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxEngineVersionsCount', name: 'MaxEngineVersionsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxListExecutorsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxListExecutorsCount', name: 'MaxListExecutorsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxNamedQueriesCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxNamedQueriesCount', name: 'MaxNamedQueriesCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxNotebooksCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxNotebooksCount', name: 'MaxNotebooksCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxPreparedStatementsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxPreparedStatementsCount', name: 'MaxPreparedStatementsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxQueryExecutionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxQueryExecutionsCount', name: 'MaxQueryExecutionsCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxQueryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxQueryResults', name: 'MaxQueryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxSessionsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxSessionsCount', name: 'MaxSessionsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxTableMetadataCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxTableMetadataCount', name: 'MaxTableMetadataCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxTagsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxTagsCount', name: 'MaxTagsCount', traits: {"smithy.api#range" => {"min" => 75}})
    MaxWorkGroupsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#MaxWorkGroupsCount', name: 'MaxWorkGroupsCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MetadataException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#MetadataException', name: 'MetadataException', traits: {"smithy.api#error" => "client"})
    NameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    NamedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NamedQuery', name: 'NamedQuery')
    NamedQueryDescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NamedQueryDescriptionString', name: 'NamedQueryDescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    NamedQueryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NamedQueryId', name: 'NamedQueryId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    NamedQueryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NamedQueryIdList', name: 'NamedQueryIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NamedQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NamedQueryList', name: 'NamedQueryList')
    NotebookId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NotebookId', name: 'NotebookId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NotebookMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NotebookMetadata', name: 'NotebookMetadata')
    NotebookMetadataArray = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NotebookMetadataArray', name: 'NotebookMetadataArray')
    NotebookName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#NotebookName', name: 'NotebookName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!.*[/:\\\\])[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]+$"})
    NotebookSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#NotebookSessionSummary', name: 'NotebookSessionSummary')
    NotebookSessionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#NotebookSessionsList', name: 'NotebookSessionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NotebookType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#NotebookType', name: 'NotebookType')
    ParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.athena#ParametersMap', name: 'ParametersMap')
    ParametersMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ParametersMapValue', name: 'ParametersMapValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 51200}})
    Payload = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#Payload', name: 'Payload', traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    PreparedStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PreparedStatement', name: 'PreparedStatement')
    PreparedStatementDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementDetailsList', name: 'PreparedStatementDetailsList')
    PreparedStatementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementNameList', name: 'PreparedStatementNameList')
    PreparedStatementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PreparedStatementSummary', name: 'PreparedStatementSummary')
    PreparedStatementsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#PreparedStatementsList', name: 'PreparedStatementsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PutCapacityAssignmentConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PutCapacityAssignmentConfigurationInput', name: 'PutCapacityAssignmentConfigurationInput')
    PutCapacityAssignmentConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#PutCapacityAssignmentConfigurationOutput', name: 'PutCapacityAssignmentConfigurationOutput')
    QueryExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecution', name: 'QueryExecution')
    QueryExecutionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionContext', name: 'QueryExecutionContext')
    QueryExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#QueryExecutionId', name: 'QueryExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    QueryExecutionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryExecutionIdList', name: 'QueryExecutionIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    QueryExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryExecutionList', name: 'QueryExecutionList')
    QueryExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#QueryExecutionState', name: 'QueryExecutionState')
    QueryExecutionStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionStatistics', name: 'QueryExecutionStatistics')
    QueryExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryExecutionStatus', name: 'QueryExecutionStatus')
    QueryResultType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#QueryResultType', name: 'QueryResultType')
    QueryResultsS3AccessGrantsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryResultsS3AccessGrantsConfiguration', name: 'QueryResultsS3AccessGrantsConfiguration')
    QueryRuntimeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatistics', name: 'QueryRuntimeStatistics')
    QueryRuntimeStatisticsRows = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatisticsRows', name: 'QueryRuntimeStatisticsRows')
    QueryRuntimeStatisticsTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryRuntimeStatisticsTimeline', name: 'QueryRuntimeStatisticsTimeline')
    QueryStage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryStage', name: 'QueryStage')
    QueryStagePlanNode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#QueryStagePlanNode', name: 'QueryStagePlanNode')
    QueryStagePlanNodes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryStagePlanNodes', name: 'QueryStagePlanNodes')
    QueryStages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#QueryStages', name: 'QueryStages')
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResultConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultConfiguration', name: 'ResultConfiguration')
    ResultConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultConfigurationUpdates', name: 'ResultConfigurationUpdates')
    ResultOutputLocation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#ResultOutputLocation', name: 'ResultOutputLocation')
    ResultReuseByAgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseByAgeConfiguration', name: 'ResultReuseByAgeConfiguration')
    ResultReuseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseConfiguration', name: 'ResultReuseConfiguration')
    ResultReuseInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultReuseInformation', name: 'ResultReuseInformation')
    ResultSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultSet', name: 'ResultSet')
    ResultSetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#ResultSetMetadata', name: 'ResultSetMetadata')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Row', name: 'Row')
    RowList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#RowList', name: 'RowList')
    S3AclOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#S3AclOption', name: 'S3AclOption')
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(https|s3|S3)://([^/]+)/?(.*)$"})
    SessionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionAlreadyExistsException', name: 'SessionAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    SessionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionConfiguration', name: 'SessionConfiguration')
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SessionIdleTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#SessionIdleTimeoutInMinutes', name: 'SessionIdleTimeoutInMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 480}})
    SessionManagerToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#SessionManagerToken', name: 'SessionManagerToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SessionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#SessionState', name: 'SessionState')
    SessionStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionStatistics', name: 'SessionStatistics')
    SessionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionStatus', name: 'SessionStatus')
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#SessionSummary', name: 'SessionSummary')
    SessionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#SessionsList', name: 'SessionsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartCalculationExecutionRequest', name: 'StartCalculationExecutionRequest')
    StartCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartCalculationExecutionResponse', name: 'StartCalculationExecutionResponse')
    StartQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartQueryExecutionInput', name: 'StartQueryExecutionInput')
    StartQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartQueryExecutionOutput', name: 'StartQueryExecutionOutput')
    StartSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartSessionRequest', name: 'StartSessionRequest')
    StartSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StartSessionResponse', name: 'StartSessionResponse')
    StatementName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#StatementName', name: 'StatementName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_][a-zA-Z0-9_@:]{1,256}$"})
    StatementType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#StatementType', name: 'StatementType')
    StopCalculationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopCalculationExecutionRequest', name: 'StopCalculationExecutionRequest')
    StopCalculationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopCalculationExecutionResponse', name: 'StopCalculationExecutionResponse')
    StopQueryExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopQueryExecutionInput', name: 'StopQueryExecutionInput')
    StopQueryExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#StopQueryExecutionOutput', name: 'StopQueryExecutionOutput')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#StringList', name: 'StringList')
    SupportedDPUSizeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#SupportedDPUSizeList', name: 'SupportedDPUSizeList')
    TableMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TableMetadata', name: 'TableMetadata')
    TableMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TableMetadataList', name: 'TableMetadataList')
    TableTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TableTypeString', name: 'TableTypeString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TagKeyList', name: 'TagKeyList')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#TagList', name: 'TagList')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetDpusInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.athena#TargetDpusInteger', name: 'TargetDpusInteger', traits: {"smithy.api#range" => {"min" => 24}})
    TerminateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TerminateSessionRequest', name: 'TerminateSessionRequest')
    TerminateSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TerminateSessionResponse', name: 'TerminateSessionResponse')
    ThrottleReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#ThrottleReason', name: 'ThrottleReason')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.athena#Timestamp', name: 'Timestamp')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client"})
    TypeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#TypeString', name: 'TypeString', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*$"})
    UnprocessedNamedQueryId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedNamedQueryId', name: 'UnprocessedNamedQueryId')
    UnprocessedNamedQueryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedNamedQueryIdList', name: 'UnprocessedNamedQueryIdList')
    UnprocessedPreparedStatementName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedPreparedStatementName', name: 'UnprocessedPreparedStatementName')
    UnprocessedPreparedStatementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedPreparedStatementNameList', name: 'UnprocessedPreparedStatementNameList')
    UnprocessedQueryExecutionId = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UnprocessedQueryExecutionId', name: 'UnprocessedQueryExecutionId')
    UnprocessedQueryExecutionIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#UnprocessedQueryExecutionIdList', name: 'UnprocessedQueryExecutionIdList')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCapacityReservationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateCapacityReservationInput', name: 'UpdateCapacityReservationInput')
    UpdateCapacityReservationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateCapacityReservationOutput', name: 'UpdateCapacityReservationOutput')
    UpdateDataCatalogInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateDataCatalogInput', name: 'UpdateDataCatalogInput')
    UpdateDataCatalogOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateDataCatalogOutput', name: 'UpdateDataCatalogOutput')
    UpdateNamedQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNamedQueryInput', name: 'UpdateNamedQueryInput')
    UpdateNamedQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNamedQueryOutput', name: 'UpdateNamedQueryOutput')
    UpdateNotebookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookInput', name: 'UpdateNotebookInput')
    UpdateNotebookMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookMetadataInput', name: 'UpdateNotebookMetadataInput')
    UpdateNotebookMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookMetadataOutput', name: 'UpdateNotebookMetadataOutput')
    UpdateNotebookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateNotebookOutput', name: 'UpdateNotebookOutput')
    UpdatePreparedStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdatePreparedStatementInput', name: 'UpdatePreparedStatementInput')
    UpdatePreparedStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdatePreparedStatementOutput', name: 'UpdatePreparedStatementOutput')
    UpdateWorkGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateWorkGroupInput', name: 'UpdateWorkGroupInput')
    UpdateWorkGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#UpdateWorkGroupOutput', name: 'UpdateWorkGroupOutput')
    WorkGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroup', name: 'WorkGroup')
    WorkGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupConfiguration', name: 'WorkGroupConfiguration')
    WorkGroupConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupConfigurationUpdates', name: 'WorkGroupConfigurationUpdates')
    WorkGroupDescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#WorkGroupDescriptionString', name: 'WorkGroupDescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    WorkGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#WorkGroupName', name: 'WorkGroupName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]{1,128}$"})
    WorkGroupNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#WorkGroupNamesList', name: 'WorkGroupNamesList')
    WorkGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.athena#WorkGroupState', name: 'WorkGroupState')
    WorkGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.athena#WorkGroupSummary', name: 'WorkGroupSummary')
    WorkGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#WorkGroupsList', name: 'WorkGroupsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DatumList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.athena#datumList', name: 'DatumList')
    DatumString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.athena#datumString', name: 'DatumString')

    AclConfiguration.add_member(:s3_acl_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AclOption, location_name: 'S3AclOption', traits: {"smithy.api#required" => {}}))
    AclConfiguration.type = Types::AclConfiguration
    ApplicationDPUSizes.add_member(:application_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'ApplicationRuntimeId'))
    ApplicationDPUSizes.add_member(:supported_dpu_sizes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedDPUSizeList, location_name: 'SupportedDPUSizes'))
    ApplicationDPUSizes.type = Types::ApplicationDPUSizes
    ApplicationDPUSizesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDPUSizes)
    AthenaError.add_member(:error_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCategory, location_name: 'ErrorCategory'))
    AthenaError.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorType'))
    AthenaError.add_member(:retryable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Retryable', traits: {"smithy.api#default" => false}))
    AthenaError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    AthenaError.type = Types::AthenaError
    AuthenticationType.add_member(:directory_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_IDENTITY', traits: {"smithy.api#enumValue" => "DIRECTORY_IDENTITY"}))
    BatchGetNamedQueryInput.add_member(:named_query_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: 'NamedQueryIds', traits: {"smithy.api#required" => {}}))
    BatchGetNamedQueryInput.type = Types::BatchGetNamedQueryInput
    BatchGetNamedQueryOutput.add_member(:named_queries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryList, location_name: 'NamedQueries'))
    BatchGetNamedQueryOutput.add_member(:unprocessed_named_query_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedNamedQueryIdList, location_name: 'UnprocessedNamedQueryIds'))
    BatchGetNamedQueryOutput.type = Types::BatchGetNamedQueryOutput
    BatchGetPreparedStatementInput.add_member(:prepared_statement_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementNameList, location_name: 'PreparedStatementNames', traits: {"smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    BatchGetPreparedStatementInput.type = Types::BatchGetPreparedStatementInput
    BatchGetPreparedStatementOutput.add_member(:prepared_statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementDetailsList, location_name: 'PreparedStatements'))
    BatchGetPreparedStatementOutput.add_member(:unprocessed_prepared_statement_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementNameList, location_name: 'UnprocessedPreparedStatementNames'))
    BatchGetPreparedStatementOutput.type = Types::BatchGetPreparedStatementOutput
    BatchGetQueryExecutionInput.add_member(:query_execution_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: 'QueryExecutionIds', traits: {"smithy.api#required" => {}}))
    BatchGetQueryExecutionInput.type = Types::BatchGetQueryExecutionInput
    BatchGetQueryExecutionOutput.add_member(:query_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionList, location_name: 'QueryExecutions'))
    BatchGetQueryExecutionOutput.add_member(:unprocessed_query_execution_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionIdList, location_name: 'UnprocessedQueryExecutionIds'))
    BatchGetQueryExecutionOutput.type = Types::BatchGetQueryExecutionOutput
    CalculationConfiguration.add_member(:code_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock'))
    CalculationConfiguration.type = Types::CalculationConfiguration
    CalculationExecutionState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CalculationExecutionState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    CalculationExecutionState.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    CalculationExecutionState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CalculationExecutionState.add_member(:canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELING', traits: {"smithy.api#enumValue" => "CANCELING"}))
    CalculationExecutionState.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    CalculationExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CalculationExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CalculationResult.add_member(:std_out_s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'StdOutS3Uri'))
    CalculationResult.add_member(:std_error_s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'StdErrorS3Uri'))
    CalculationResult.add_member(:result_s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'ResultS3Uri'))
    CalculationResult.add_member(:result_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationResultType, location_name: 'ResultType'))
    CalculationResult.type = Types::CalculationResult
    CalculationStatistics.add_member(:dpu_execution_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DpuExecutionInMillis'))
    CalculationStatistics.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Progress'))
    CalculationStatistics.type = Types::CalculationStatistics
    CalculationStatus.add_member(:submission_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'SubmissionDateTime'))
    CalculationStatus.add_member(:completion_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletionDateTime'))
    CalculationStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State'))
    CalculationStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'StateChangeReason'))
    CalculationStatus.type = Types::CalculationStatus
    CalculationSummary.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId'))
    CalculationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    CalculationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status'))
    CalculationSummary.type = Types::CalculationSummary
    CalculationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationSummary)
    CancelCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CancelCapacityReservationInput.type = Types::CancelCapacityReservationInput
    CancelCapacityReservationOutput.type = Types::CancelCapacityReservationOutput
    CapacityAllocation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAllocationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CapacityAllocation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    CapacityAllocation.add_member(:request_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestTime', traits: {"smithy.api#required" => {}}))
    CapacityAllocation.add_member(:request_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RequestCompletionTime'))
    CapacityAllocation.type = Types::CapacityAllocation
    CapacityAllocationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityAllocationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CapacityAllocationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityAssignment.add_member(:work_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupNamesList, location_name: 'WorkGroupNames'))
    CapacityAssignment.type = Types::CapacityAssignment
    CapacityAssignmentConfiguration.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName'))
    CapacityAssignmentConfiguration.add_member(:capacity_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentsList, location_name: 'CapacityAssignments'))
    CapacityAssignmentConfiguration.type = Types::CapacityAssignmentConfiguration
    CapacityAssignmentsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignment)
    CapacityReservation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:target_dpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:allocated_dpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllocatedDpusInteger, location_name: 'AllocatedDpus', traits: {"smithy.api#required" => {}}))
    CapacityReservation.add_member(:last_allocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAllocation, location_name: 'LastAllocation'))
    CapacityReservation.add_member(:last_successful_allocation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSuccessfulAllocationTime'))
    CapacityReservation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    CapacityReservation.type = Types::CapacityReservation
    CapacityReservationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    CapacityReservationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CapacityReservationStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    CapacityReservationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    CapacityReservationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CapacityReservationStatus.add_member(:update_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING', traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    CapacityReservationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservation)
    Column.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Column.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TypeString, location_name: 'Type'))
    Column.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommentString, location_name: 'Comment'))
    Column.type = Types::Column
    ColumnInfo.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CatalogName'))
    ColumnInfo.add_member(:schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SchemaName'))
    ColumnInfo.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableName'))
    ColumnInfo.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ColumnInfo.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Label'))
    ColumnInfo.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ColumnInfo.add_member(:precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Precision', traits: {"smithy.api#default" => 0}))
    ColumnInfo.add_member(:scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Scale', traits: {"smithy.api#default" => 0}))
    ColumnInfo.add_member(:nullable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnNullable, location_name: 'Nullable'))
    ColumnInfo.add_member(:case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CaseSensitive', traits: {"smithy.api#default" => false}))
    ColumnInfo.type = Types::ColumnInfo
    ColumnInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfo)
    ColumnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Column)
    ColumnNullable.add_member(:not_null, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_NULL', traits: {"smithy.api#enumValue" => "NOT_NULL"}))
    ColumnNullable.add_member(:nullable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NULLABLE', traits: {"smithy.api#enumValue" => "NULLABLE"}))
    ColumnNullable.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ConnectionType.add_member(:dynamodb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMODB', traits: {"smithy.api#enumValue" => "DYNAMODB"}))
    ConnectionType.add_member(:mysql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL', traits: {"smithy.api#enumValue" => "MYSQL"}))
    ConnectionType.add_member(:postgresql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRESQL', traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    ConnectionType.add_member(:redshift, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDSHIFT', traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    ConnectionType.add_member(:oracle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORACLE', traits: {"smithy.api#enumValue" => "ORACLE"}))
    ConnectionType.add_member(:synapse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNAPSE', traits: {"smithy.api#enumValue" => "SYNAPSE"}))
    ConnectionType.add_member(:sqlserver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQLSERVER', traits: {"smithy.api#enumValue" => "SQLSERVER"}))
    ConnectionType.add_member(:db2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DB2', traits: {"smithy.api#enumValue" => "DB2"}))
    ConnectionType.add_member(:opensearch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH', traits: {"smithy.api#enumValue" => "OPENSEARCH"}))
    ConnectionType.add_member(:bigquery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIGQUERY', traits: {"smithy.api#enumValue" => "BIGQUERY"}))
    ConnectionType.add_member(:googlecloudstorage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOGLECLOUDSTORAGE', traits: {"smithy.api#enumValue" => "GOOGLECLOUDSTORAGE"}))
    ConnectionType.add_member(:hbase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HBASE', traits: {"smithy.api#enumValue" => "HBASE"}))
    ConnectionType.add_member(:documentdb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENTDB', traits: {"smithy.api#enumValue" => "DOCUMENTDB"}))
    ConnectionType.add_member(:cmdb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CMDB', traits: {"smithy.api#enumValue" => "CMDB"}))
    ConnectionType.add_member(:tpcds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TPCDS', traits: {"smithy.api#enumValue" => "TPCDS"}))
    ConnectionType.add_member(:timestream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMESTREAM', traits: {"smithy.api#enumValue" => "TIMESTREAM"}))
    ConnectionType.add_member(:saphana, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAPHANA', traits: {"smithy.api#enumValue" => "SAPHANA"}))
    ConnectionType.add_member(:snowflake, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOWFLAKE', traits: {"smithy.api#enumValue" => "SNOWFLAKE"}))
    ConnectionType.add_member(:datalakegen2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATALAKEGEN2', traits: {"smithy.api#enumValue" => "DATALAKEGEN2"}))
    ConnectionType.add_member(:db2_as400, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DB2AS400', traits: {"smithy.api#enumValue" => "DB2AS400"}))
    CreateCapacityReservationInput.add_member(:target_dpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateCapacityReservationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCapacityReservationInput.type = Types::CreateCapacityReservationInput
    CreateCapacityReservationOutput.type = Types::CreateCapacityReservationOutput
    CreateDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreateDataCatalogInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    CreateDataCatalogInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters'))
    CreateDataCatalogInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDataCatalogInput.type = Types::CreateDataCatalogInput
    CreateDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog'))
    CreateDataCatalogOutput.type = Types::CreateDataCatalogOutput
    CreateNamedQueryInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    CreateNamedQueryInput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#required" => {}}))
    CreateNamedQueryInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNamedQueryInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    CreateNamedQueryInput.type = Types::CreateNamedQueryInput
    CreateNamedQueryOutput.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId'))
    CreateNamedQueryOutput.type = Types::CreateNamedQueryOutput
    CreateNotebookInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    CreateNotebookInput.type = Types::CreateNotebookInput
    CreateNotebookOutput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId'))
    CreateNotebookOutput.type = Types::CreateNotebookOutput
    CreatePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement', traits: {"smithy.api#required" => {}}))
    CreatePreparedStatementInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    CreatePreparedStatementInput.type = Types::CreatePreparedStatementInput
    CreatePreparedStatementOutput.type = Types::CreatePreparedStatementOutput
    CreatePresignedNotebookUrlRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlRequest.type = Types::CreatePresignedNotebookUrlRequest
    CreatePresignedNotebookUrlResponse.add_member(:notebook_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotebookUrl', traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthToken, location_name: 'AuthToken', traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.add_member(:auth_token_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AuthTokenExpirationTime', traits: {"smithy.api#required" => {}}))
    CreatePresignedNotebookUrlResponse.type = Types::CreatePresignedNotebookUrlResponse
    CreateWorkGroupInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateWorkGroupInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: 'Configuration'))
    CreateWorkGroupInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description'))
    CreateWorkGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateWorkGroupInput.type = Types::CreateWorkGroupInput
    CreateWorkGroupOutput.type = Types::CreateWorkGroupOutput
    CustomerContentEncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#required" => {}}))
    CustomerContentEncryptionConfiguration.type = Types::CustomerContentEncryptionConfiguration
    DataCatalog.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    DataCatalog.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    DataCatalog.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    DataCatalog.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters'))
    DataCatalog.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogStatus, location_name: 'Status'))
    DataCatalog.add_member(:connection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'ConnectionType'))
    DataCatalog.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error'))
    DataCatalog.type = Types::DataCatalog
    DataCatalogStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_COMPLETE', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_COMPLETE"}))
    DataCatalogStatus.add_member(:create_failed_cleanup_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED_CLEANUP_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED_CLEANUP_FAILED"}))
    DataCatalogStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DataCatalogStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_COMPLETE', traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    DataCatalogStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    DataCatalogSummary.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName'))
    DataCatalogSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type'))
    DataCatalogSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogStatus, location_name: 'Status'))
    DataCatalogSummary.add_member(:connection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'ConnectionType'))
    DataCatalogSummary.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error'))
    DataCatalogSummary.type = Types::DataCatalogSummary
    DataCatalogSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogSummary)
    DataCatalogType.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    DataCatalogType.add_member(:glue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLUE', traits: {"smithy.api#enumValue" => "GLUE"}))
    DataCatalogType.add_member(:hive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIVE', traits: {"smithy.api#enumValue" => "HIVE"}))
    DataCatalogType.add_member(:federated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEDERATED', traits: {"smithy.api#enumValue" => "FEDERATED"}))
    Database.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Database.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    Database.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters'))
    Database.type = Types::Database
    DatabaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Database)
    Datum.add_member(:var_char_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatumString, location_name: 'VarCharValue'))
    Datum.type = Types::Datum
    DeleteCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    DeleteCapacityReservationInput.type = Types::DeleteCapacityReservationInput
    DeleteCapacityReservationOutput.type = Types::DeleteCapacityReservationOutput
    DeleteDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    DeleteDataCatalogInput.add_member(:delete_catalog_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteCatalogOnly', traits: {"smithy.api#default" => false}))
    DeleteDataCatalogInput.type = Types::DeleteDataCatalogInput
    DeleteDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog'))
    DeleteDataCatalogOutput.type = Types::DeleteDataCatalogOutput
    DeleteNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteNamedQueryInput.type = Types::DeleteNamedQueryInput
    DeleteNamedQueryOutput.type = Types::DeleteNamedQueryOutput
    DeleteNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    DeleteNotebookInput.type = Types::DeleteNotebookInput
    DeleteNotebookOutput.type = Types::DeleteNotebookOutput
    DeletePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#required" => {}}))
    DeletePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    DeletePreparedStatementInput.type = Types::DeletePreparedStatementInput
    DeletePreparedStatementOutput.type = Types::DeletePreparedStatementOutput
    DeleteWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    DeleteWorkGroupInput.add_member(:recursive_delete_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RecursiveDeleteOption'))
    DeleteWorkGroupInput.type = Types::DeleteWorkGroupInput
    DeleteWorkGroupOutput.type = Types::DeleteWorkGroupOutput
    EncryptionConfiguration.add_member(:encryption_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionOption, location_name: 'EncryptionOption', traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKey'))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionOption.add_member(:sse_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    EncryptionOption.add_member(:sse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    EncryptionOption.add_member(:cse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSE_KMS', traits: {"smithy.api#enumValue" => "CSE_KMS"}))
    EngineConfiguration.add_member(:coordinator_dpu_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoordinatorDpuSize, location_name: 'CoordinatorDpuSize'))
    EngineConfiguration.add_member(:max_concurrent_dpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxConcurrentDpus, location_name: 'MaxConcurrentDpus', traits: {"smithy.api#required" => {}}))
    EngineConfiguration.add_member(:default_executor_dpu_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultExecutorDpuSize, location_name: 'DefaultExecutorDpuSize'))
    EngineConfiguration.add_member(:additional_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'AdditionalConfigs'))
    EngineConfiguration.add_member(:spark_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'SparkProperties'))
    EngineConfiguration.type = Types::EngineConfiguration
    EngineVersion.add_member(:selected_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'SelectedEngineVersion'))
    EngineVersion.add_member(:effective_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'EffectiveEngineVersion'))
    EngineVersion.type = Types::EngineVersion
    EngineVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion)
    ExecutionParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameter)
    ExecutorState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ExecutorState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ExecutorState.add_member(:registered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "REGISTERED"}))
    ExecutorState.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ExecutorState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ExecutorState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutorType.add_member(:coordinator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COORDINATOR', traits: {"smithy.api#enumValue" => "COORDINATOR"}))
    ExecutorType.add_member(:gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GATEWAY', traits: {"smithy.api#enumValue" => "GATEWAY"}))
    ExecutorType.add_member(:worker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKER', traits: {"smithy.api#enumValue" => "WORKER"}))
    ExecutorsSummary.add_member(:executor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorId, location_name: 'ExecutorId', traits: {"smithy.api#required" => {}}))
    ExecutorsSummary.add_member(:executor_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorType, location_name: 'ExecutorType'))
    ExecutorsSummary.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StartDateTime'))
    ExecutorsSummary.add_member(:termination_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TerminationDateTime'))
    ExecutorsSummary.add_member(:executor_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorState, location_name: 'ExecutorState'))
    ExecutorsSummary.add_member(:executor_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExecutorSize'))
    ExecutorsSummary.type = Types::ExecutorsSummary
    ExecutorsSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorsSummary)
    ExportNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    ExportNotebookInput.type = Types::ExportNotebookInput
    ExportNotebookOutput.add_member(:notebook_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: 'NotebookMetadata'))
    ExportNotebookOutput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload'))
    ExportNotebookOutput.type = Types::ExportNotebookOutput
    FilterDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name'))
    FilterDefinition.type = Types::FilterDefinition
    GetCalculationExecutionCodeRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionCodeRequest.type = Types::GetCalculationExecutionCodeRequest
    GetCalculationExecutionCodeResponse.add_member(:code_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock'))
    GetCalculationExecutionCodeResponse.type = Types::GetCalculationExecutionCodeResponse
    GetCalculationExecutionRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionRequest.type = Types::GetCalculationExecutionRequest
    GetCalculationExecutionResponse.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId'))
    GetCalculationExecutionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    GetCalculationExecutionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    GetCalculationExecutionResponse.add_member(:working_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'WorkingDirectory'))
    GetCalculationExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status'))
    GetCalculationExecutionResponse.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: 'Statistics'))
    GetCalculationExecutionResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationResult, location_name: 'Result'))
    GetCalculationExecutionResponse.type = Types::GetCalculationExecutionResponse
    GetCalculationExecutionStatusRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#required" => {}}))
    GetCalculationExecutionStatusRequest.type = Types::GetCalculationExecutionStatusRequest
    GetCalculationExecutionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatus, location_name: 'Status'))
    GetCalculationExecutionStatusResponse.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationStatistics, location_name: 'Statistics'))
    GetCalculationExecutionStatusResponse.type = Types::GetCalculationExecutionStatusResponse
    GetCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName', traits: {"smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationInput.type = Types::GetCapacityAssignmentConfigurationInput
    GetCapacityAssignmentConfigurationOutput.add_member(:capacity_assignment_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentConfiguration, location_name: 'CapacityAssignmentConfiguration', traits: {"smithy.api#required" => {}}))
    GetCapacityAssignmentConfigurationOutput.type = Types::GetCapacityAssignmentConfigurationOutput
    GetCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    GetCapacityReservationInput.type = Types::GetCapacityReservationInput
    GetCapacityReservationOutput.add_member(:capacity_reservation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservation, location_name: 'CapacityReservation', traits: {"smithy.api#required" => {}}))
    GetCapacityReservationOutput.type = Types::GetCapacityReservationOutput
    GetDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    GetDataCatalogInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    GetDataCatalogInput.type = Types::GetDataCatalogInput
    GetDataCatalogOutput.add_member(:data_catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalog, location_name: 'DataCatalog'))
    GetDataCatalogOutput.type = Types::GetDataCatalogOutput
    GetDatabaseInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#required" => {}}))
    GetDatabaseInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    GetDatabaseInput.type = Types::GetDatabaseInput
    GetDatabaseOutput.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Database, location_name: 'Database'))
    GetDatabaseOutput.type = Types::GetDatabaseOutput
    GetNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#required" => {}}))
    GetNamedQueryInput.type = Types::GetNamedQueryInput
    GetNamedQueryOutput.add_member(:named_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQuery, location_name: 'NamedQuery'))
    GetNamedQueryOutput.type = Types::GetNamedQueryOutput
    GetNotebookMetadataInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    GetNotebookMetadataInput.type = Types::GetNotebookMetadataInput
    GetNotebookMetadataOutput.add_member(:notebook_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata, location_name: 'NotebookMetadata'))
    GetNotebookMetadataOutput.type = Types::GetNotebookMetadataOutput
    GetPreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#required" => {}}))
    GetPreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    GetPreparedStatementInput.type = Types::GetPreparedStatementInput
    GetPreparedStatementOutput.add_member(:prepared_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatement, location_name: 'PreparedStatement'))
    GetPreparedStatementOutput.type = Types::GetPreparedStatementOutput
    GetQueryExecutionInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#required" => {}}))
    GetQueryExecutionInput.type = Types::GetQueryExecutionInput
    GetQueryExecutionOutput.add_member(:query_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecution, location_name: 'QueryExecution'))
    GetQueryExecutionOutput.type = Types::GetQueryExecutionOutput
    GetQueryResultsInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#required" => {}}))
    GetQueryResultsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetQueryResultsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: 'MaxResults'))
    GetQueryResultsInput.add_member(:query_result_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultType, location_name: 'QueryResultType'))
    GetQueryResultsInput.type = Types::GetQueryResultsInput
    GetQueryResultsOutput.add_member(:update_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'UpdateCount'))
    GetQueryResultsOutput.add_member(:result_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSet, location_name: 'ResultSet'))
    GetQueryResultsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetQueryResultsOutput.type = Types::GetQueryResultsOutput
    GetQueryRuntimeStatisticsInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#required" => {}}))
    GetQueryRuntimeStatisticsInput.type = Types::GetQueryRuntimeStatisticsInput
    GetQueryRuntimeStatisticsOutput.add_member(:query_runtime_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatistics, location_name: 'QueryRuntimeStatistics'))
    GetQueryRuntimeStatisticsOutput.type = Types::GetQueryRuntimeStatisticsOutput
    GetSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    GetSessionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    GetSessionResponse.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    GetSessionResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'EngineVersion'))
    GetSessionResponse.add_member(:engine_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfiguration, location_name: 'EngineConfiguration'))
    GetSessionResponse.add_member(:notebook_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion'))
    GetSessionResponse.add_member(:session_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionConfiguration, location_name: 'SessionConfiguration'))
    GetSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status'))
    GetSessionResponse.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatistics, location_name: 'Statistics'))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionStatusRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    GetSessionStatusRequest.type = Types::GetSessionStatusRequest
    GetSessionStatusResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    GetSessionStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status'))
    GetSessionStatusResponse.type = Types::GetSessionStatusResponse
    GetTableMetadataInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'TableName', traits: {"smithy.api#required" => {}}))
    GetTableMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    GetTableMetadataInput.type = Types::GetTableMetadataInput
    GetTableMetadataOutput.add_member(:table_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadata, location_name: 'TableMetadata'))
    GetTableMetadataOutput.type = Types::GetTableMetadataOutput
    GetWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    GetWorkGroupInput.type = Types::GetWorkGroupInput
    GetWorkGroupOutput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroup, location_name: 'WorkGroup'))
    GetWorkGroupOutput.type = Types::GetWorkGroupOutput
    IdentityCenterConfiguration.add_member(:enable_identity_center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableIdentityCenter'))
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: 'IdentityCenterInstanceArn'))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    ImportNotebookInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload'))
    ImportNotebookInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ImportNotebookInput.add_member(:notebook_s3_location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'NotebookS3LocationUri'))
    ImportNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    ImportNotebookInput.type = Types::ImportNotebookInput
    ImportNotebookOutput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId'))
    ImportNotebookOutput.type = Types::ImportNotebookOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:athena_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'AthenaErrorCode'))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    ListApplicationDPUSizesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxApplicationDPUSizesCount, location_name: 'MaxResults'))
    ListApplicationDPUSizesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListApplicationDPUSizesInput.type = Types::ListApplicationDPUSizesInput
    ListApplicationDPUSizesOutput.add_member(:application_dpu_sizes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDPUSizesList, location_name: 'ApplicationDPUSizes'))
    ListApplicationDPUSizesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListApplicationDPUSizesOutput.type = Types::ListApplicationDPUSizesOutput
    ListCalculationExecutionsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    ListCalculationExecutionsRequest.add_member(:state_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'StateFilter'))
    ListCalculationExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCalculationsCount, location_name: 'MaxResults'))
    ListCalculationExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListCalculationExecutionsRequest.type = Types::ListCalculationExecutionsRequest
    ListCalculationExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListCalculationExecutionsResponse.add_member(:calculations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationsList, location_name: 'Calculations'))
    ListCalculationExecutionsResponse.type = Types::ListCalculationExecutionsResponse
    ListCapacityReservationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListCapacityReservationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCapacityReservationsCount, location_name: 'MaxResults'))
    ListCapacityReservationsInput.type = Types::ListCapacityReservationsInput
    ListCapacityReservationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListCapacityReservationsOutput.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationsList, location_name: 'CapacityReservations', traits: {"smithy.api#required" => {}}))
    ListCapacityReservationsOutput.type = Types::ListCapacityReservationsOutput
    ListDataCatalogsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDataCatalogsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDataCatalogsCount, location_name: 'MaxResults'))
    ListDataCatalogsInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    ListDataCatalogsInput.type = Types::ListDataCatalogsInput
    ListDataCatalogsOutput.add_member(:data_catalogs_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogSummaryList, location_name: 'DataCatalogsSummary'))
    ListDataCatalogsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDataCatalogsOutput.type = Types::ListDataCatalogsOutput
    ListDatabasesInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#required" => {}}))
    ListDatabasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDatabasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDatabasesCount, location_name: 'MaxResults'))
    ListDatabasesInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    ListDatabasesInput.type = Types::ListDatabasesInput
    ListDatabasesOutput.add_member(:database_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseList, location_name: 'DatabaseList'))
    ListDatabasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListDatabasesOutput.type = Types::ListDatabasesOutput
    ListEngineVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListEngineVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxEngineVersionsCount, location_name: 'MaxResults'))
    ListEngineVersionsInput.type = Types::ListEngineVersionsInput
    ListEngineVersionsOutput.add_member(:engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionsList, location_name: 'EngineVersions'))
    ListEngineVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListEngineVersionsOutput.type = Types::ListEngineVersionsOutput
    ListExecutorsRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    ListExecutorsRequest.add_member(:executor_state_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorState, location_name: 'ExecutorStateFilter'))
    ListExecutorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxListExecutorsCount, location_name: 'MaxResults'))
    ListExecutorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListExecutorsRequest.type = Types::ListExecutorsRequest
    ListExecutorsResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    ListExecutorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListExecutorsResponse.add_member(:executors_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorsSummaryList, location_name: 'ExecutorsSummary'))
    ListExecutorsResponse.type = Types::ListExecutorsResponse
    ListNamedQueriesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNamedQueriesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxNamedQueriesCount, location_name: 'MaxResults'))
    ListNamedQueriesInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    ListNamedQueriesInput.type = Types::ListNamedQueriesInput
    ListNamedQueriesOutput.add_member(:named_query_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryIdList, location_name: 'NamedQueryIds'))
    ListNamedQueriesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNamedQueriesOutput.type = Types::ListNamedQueriesOutput
    ListNotebookMetadataInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterDefinition, location_name: 'Filters'))
    ListNotebookMetadataInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNotebookMetadataInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxNotebooksCount, location_name: 'MaxResults'))
    ListNotebookMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    ListNotebookMetadataInput.type = Types::ListNotebookMetadataInput
    ListNotebookMetadataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNotebookMetadataOutput.add_member(:notebook_metadata_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadataArray, location_name: 'NotebookMetadataList'))
    ListNotebookMetadataOutput.type = Types::ListNotebookMetadataOutput
    ListNotebookSessionsRequest.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    ListNotebookSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: 'MaxResults'))
    ListNotebookSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNotebookSessionsRequest.type = Types::ListNotebookSessionsRequest
    ListNotebookSessionsResponse.add_member(:notebook_sessions_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookSessionsList, location_name: 'NotebookSessionsList', traits: {"smithy.api#required" => {}}))
    ListNotebookSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListNotebookSessionsResponse.type = Types::ListNotebookSessionsResponse
    ListPreparedStatementsInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    ListPreparedStatementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPreparedStatementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPreparedStatementsCount, location_name: 'MaxResults'))
    ListPreparedStatementsInput.type = Types::ListPreparedStatementsInput
    ListPreparedStatementsOutput.add_member(:prepared_statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementsList, location_name: 'PreparedStatements'))
    ListPreparedStatementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPreparedStatementsOutput.type = Types::ListPreparedStatementsOutput
    ListQueryExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListQueryExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxQueryExecutionsCount, location_name: 'MaxResults'))
    ListQueryExecutionsInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    ListQueryExecutionsInput.type = Types::ListQueryExecutionsInput
    ListQueryExecutionsOutput.add_member(:query_execution_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionIdList, location_name: 'QueryExecutionIds'))
    ListQueryExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListQueryExecutionsOutput.type = Types::ListQueryExecutionsOutput
    ListSessionsRequest.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:state_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'StateFilter'))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSessionsCount, location_name: 'MaxResults'))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionManagerToken, location_name: 'NextToken'))
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionsList, location_name: 'Sessions'))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListTableMetadataInput.add_member(:catalog_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'CatalogName', traits: {"smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'DatabaseName', traits: {"smithy.api#required" => {}}))
    ListTableMetadataInput.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionString, location_name: 'Expression'))
    ListTableMetadataInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTableMetadataInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTableMetadataCount, location_name: 'MaxResults'))
    ListTableMetadataInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    ListTableMetadataInput.type = Types::ListTableMetadataInput
    ListTableMetadataOutput.add_member(:table_metadata_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadataList, location_name: 'TableMetadataList'))
    ListTableMetadataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTableMetadataOutput.type = Types::ListTableMetadataOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTagsCount, location_name: 'MaxResults'))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListWorkGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxWorkGroupsCount, location_name: 'MaxResults'))
    ListWorkGroupsInput.type = Types::ListWorkGroupsInput
    ListWorkGroupsOutput.add_member(:work_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupsList, location_name: 'WorkGroups'))
    ListWorkGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListWorkGroupsOutput.type = Types::ListWorkGroupsOutput
    ManagedQueryResultsConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ManagedQueryResultsConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsEncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    ManagedQueryResultsConfiguration.type = Types::ManagedQueryResultsConfiguration
    ManagedQueryResultsConfigurationUpdates.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'Enabled'))
    ManagedQueryResultsConfigurationUpdates.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsEncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    ManagedQueryResultsConfigurationUpdates.add_member(:remove_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveEncryptionConfiguration'))
    ManagedQueryResultsConfigurationUpdates.type = Types::ManagedQueryResultsConfigurationUpdates
    ManagedQueryResultsEncryptionConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#required" => {}}))
    ManagedQueryResultsEncryptionConfiguration.type = Types::ManagedQueryResultsEncryptionConfiguration
    MetadataException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MetadataException.type = Types::MetadataException
    NamedQuery.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    NamedQuery.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database', traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#required" => {}}))
    NamedQuery.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId'))
    NamedQuery.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    NamedQuery.type = Types::NamedQuery
    NamedQueryIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId)
    NamedQueryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQuery)
    NotebookMetadata.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId'))
    NotebookMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name'))
    NotebookMetadata.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    NotebookMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    NotebookMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type'))
    NotebookMetadata.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime'))
    NotebookMetadata.type = Types::NotebookMetadata
    NotebookMetadataArray.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookMetadata)
    NotebookSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    NotebookSessionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    NotebookSessionSummary.type = Types::NotebookSessionSummary
    NotebookSessionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookSessionSummary)
    NotebookType.add_member(:ipynb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPYNB', traits: {"smithy.api#enumValue" => "IPYNB"}))
    ParametersMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyString)
    ParametersMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMapValue)
    PreparedStatement.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName'))
    PreparedStatement.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement'))
    PreparedStatement.add_member(:work_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroupName'))
    PreparedStatement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    PreparedStatement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime'))
    PreparedStatement.type = Types::PreparedStatement
    PreparedStatementDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatement)
    PreparedStatementNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName)
    PreparedStatementSummary.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName'))
    PreparedStatementSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime'))
    PreparedStatementSummary.type = Types::PreparedStatementSummary
    PreparedStatementsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementSummary)
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_reservation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'CapacityReservationName', traits: {"smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.add_member(:capacity_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityAssignmentsList, location_name: 'CapacityAssignments', traits: {"smithy.api#required" => {}}))
    PutCapacityAssignmentConfigurationInput.type = Types::PutCapacityAssignmentConfigurationInput
    PutCapacityAssignmentConfigurationOutput.type = Types::PutCapacityAssignmentConfigurationOutput
    QueryExecution.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId'))
    QueryExecution.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'Query'))
    QueryExecution.add_member(:statement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementType, location_name: 'StatementType'))
    QueryExecution.add_member(:managed_query_results_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfiguration, location_name: 'ManagedQueryResultsConfiguration'))
    QueryExecution.add_member(:result_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration'))
    QueryExecution.add_member(:result_reuse_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: 'ResultReuseConfiguration'))
    QueryExecution.add_member(:query_execution_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: 'QueryExecutionContext'))
    QueryExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionStatus, location_name: 'Status'))
    QueryExecution.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionStatistics, location_name: 'Statistics'))
    QueryExecution.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    QueryExecution.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    QueryExecution.add_member(:execution_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: 'ExecutionParameters'))
    QueryExecution.add_member(:substatement_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubstatementType'))
    QueryExecution.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration'))
    QueryExecution.type = Types::QueryExecution
    QueryExecutionContext.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseString, location_name: 'Database'))
    QueryExecutionContext.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Catalog'))
    QueryExecutionContext.type = Types::QueryExecutionContext
    QueryExecutionIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId)
    QueryExecutionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecution)
    QueryExecutionState.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryExecutionState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryExecutionState.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    QueryExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryExecutionState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    QueryExecutionStatistics.add_member(:engine_execution_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EngineExecutionTimeInMillis'))
    QueryExecutionStatistics.add_member(:data_scanned_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DataScannedInBytes'))
    QueryExecutionStatistics.add_member(:data_manifest_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataManifestLocation'))
    QueryExecutionStatistics.add_member(:total_execution_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalExecutionTimeInMillis'))
    QueryExecutionStatistics.add_member(:query_queue_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryQueueTimeInMillis'))
    QueryExecutionStatistics.add_member(:service_pre_processing_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServicePreProcessingTimeInMillis'))
    QueryExecutionStatistics.add_member(:query_planning_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryPlanningTimeInMillis'))
    QueryExecutionStatistics.add_member(:service_processing_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServiceProcessingTimeInMillis'))
    QueryExecutionStatistics.add_member(:result_reuse_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseInformation, location_name: 'ResultReuseInformation'))
    QueryExecutionStatistics.type = Types::QueryExecutionStatistics
    QueryExecutionStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionState, location_name: 'State'))
    QueryExecutionStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateChangeReason'))
    QueryExecutionStatus.add_member(:submission_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'SubmissionDateTime'))
    QueryExecutionStatus.add_member(:completion_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CompletionDateTime'))
    QueryExecutionStatus.add_member(:athena_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AthenaError, location_name: 'AthenaError'))
    QueryExecutionStatus.type = Types::QueryExecutionStatus
    QueryResultType.add_member(:data_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_MANIFEST', traits: {"smithy.api#enumValue" => "DATA_MANIFEST"}))
    QueryResultType.add_member(:data_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_ROWS', traits: {"smithy.api#enumValue" => "DATA_ROWS"}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:enable_s3_access_grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableS3AccessGrants', traits: {"smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.add_member(:create_user_level_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'CreateUserLevelPrefix'))
    QueryResultsS3AccessGrantsConfiguration.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#required" => {}}))
    QueryResultsS3AccessGrantsConfiguration.type = Types::QueryResultsS3AccessGrantsConfiguration
    QueryRuntimeStatistics.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsTimeline, location_name: 'Timeline'))
    QueryRuntimeStatistics.add_member(:rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryRuntimeStatisticsRows, location_name: 'Rows'))
    QueryRuntimeStatistics.add_member(:output_stage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStage, location_name: 'OutputStage'))
    QueryRuntimeStatistics.type = Types::QueryRuntimeStatistics
    QueryRuntimeStatisticsRows.add_member(:input_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputRows'))
    QueryRuntimeStatisticsRows.add_member(:input_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputBytes'))
    QueryRuntimeStatisticsRows.add_member(:output_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes'))
    QueryRuntimeStatisticsRows.add_member(:output_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows'))
    QueryRuntimeStatisticsRows.type = Types::QueryRuntimeStatisticsRows
    QueryRuntimeStatisticsTimeline.add_member(:query_queue_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryQueueTimeInMillis'))
    QueryRuntimeStatisticsTimeline.add_member(:service_pre_processing_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServicePreProcessingTimeInMillis'))
    QueryRuntimeStatisticsTimeline.add_member(:query_planning_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'QueryPlanningTimeInMillis'))
    QueryRuntimeStatisticsTimeline.add_member(:engine_execution_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EngineExecutionTimeInMillis'))
    QueryRuntimeStatisticsTimeline.add_member(:service_processing_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ServiceProcessingTimeInMillis'))
    QueryRuntimeStatisticsTimeline.add_member(:total_execution_time_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalExecutionTimeInMillis'))
    QueryRuntimeStatisticsTimeline.type = Types::QueryRuntimeStatisticsTimeline
    QueryStage.add_member(:stage_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StageId'))
    QueryStage.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    QueryStage.add_member(:output_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputBytes'))
    QueryStage.add_member(:output_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OutputRows'))
    QueryStage.add_member(:input_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputBytes'))
    QueryStage.add_member(:input_rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'InputRows'))
    QueryStage.add_member(:execution_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ExecutionTime'))
    QueryStage.add_member(:query_stage_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNode, location_name: 'QueryStagePlan'))
    QueryStage.add_member(:sub_stages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStages, location_name: 'SubStages'))
    QueryStage.type = Types::QueryStage
    QueryStagePlanNode.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    QueryStagePlanNode.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier'))
    QueryStagePlanNode.add_member(:children, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNodes, location_name: 'Children'))
    QueryStagePlanNode.add_member(:remote_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'RemoteSources'))
    QueryStagePlanNode.type = Types::QueryStagePlanNode
    QueryStagePlanNodes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStagePlanNode)
    QueryStages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStage)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultConfiguration.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'OutputLocation'))
    ResultConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    ResultConfiguration.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'ExpectedBucketOwner'))
    ResultConfiguration.add_member(:acl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclConfiguration, location_name: 'AclConfiguration'))
    ResultConfiguration.type = Types::ResultConfiguration
    ResultConfigurationUpdates.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'OutputLocation'))
    ResultConfigurationUpdates.add_member(:remove_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveOutputLocation'))
    ResultConfigurationUpdates.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    ResultConfigurationUpdates.add_member(:remove_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveEncryptionConfiguration'))
    ResultConfigurationUpdates.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'ExpectedBucketOwner'))
    ResultConfigurationUpdates.add_member(:remove_expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveExpectedBucketOwner'))
    ResultConfigurationUpdates.add_member(:acl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclConfiguration, location_name: 'AclConfiguration'))
    ResultConfigurationUpdates.add_member(:remove_acl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveAclConfiguration'))
    ResultConfigurationUpdates.type = Types::ResultConfigurationUpdates
    ResultReuseByAgeConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ResultReuseByAgeConfiguration.add_member(:max_age_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: 'MaxAgeInMinutes'))
    ResultReuseByAgeConfiguration.type = Types::ResultReuseByAgeConfiguration
    ResultReuseConfiguration.add_member(:result_reuse_by_age_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseByAgeConfiguration, location_name: 'ResultReuseByAgeConfiguration'))
    ResultReuseConfiguration.type = Types::ResultReuseConfiguration
    ResultReuseInformation.add_member(:reused_previous_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReusedPreviousResult', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ResultReuseInformation.type = Types::ResultReuseInformation
    ResultSet.add_member(:rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RowList, location_name: 'Rows'))
    ResultSet.add_member(:result_set_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSetMetadata, location_name: 'ResultSetMetadata'))
    ResultSet.type = Types::ResultSet
    ResultSetMetadata.add_member(:column_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: 'ColumnInfo'))
    ResultSetMetadata.type = Types::ResultSetMetadata
    Row.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatumList, location_name: 'Data'))
    Row.type = Types::Row
    RowList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    S3AclOption.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_OWNER_FULL_CONTROL', traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    SessionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SessionAlreadyExistsException.type = Types::SessionAlreadyExistsException
    SessionConfiguration.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole'))
    SessionConfiguration.add_member(:working_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultOutputLocation, location_name: 'WorkingDirectory'))
    SessionConfiguration.add_member(:idle_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'IdleTimeoutSeconds'))
    SessionConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'EncryptionConfiguration'))
    SessionConfiguration.type = Types::SessionConfiguration
    SessionState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SessionState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    SessionState.add_member(:idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    SessionState.add_member(:busy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUSY', traits: {"smithy.api#enumValue" => "BUSY"}))
    SessionState.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    SessionState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    SessionState.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    SessionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatistics.add_member(:dpu_execution_in_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DpuExecutionInMillis'))
    SessionStatistics.type = Types::SessionStatistics
    SessionStatus.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime'))
    SessionStatus.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedDateTime'))
    SessionStatus.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    SessionStatus.add_member(:idle_since_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'IdleSinceDateTime'))
    SessionStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State'))
    SessionStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'StateChangeReason'))
    SessionStatus.type = Types::SessionStatus
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    SessionSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    SessionSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    SessionSummary.add_member(:notebook_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion'))
    SessionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status'))
    SessionSummary.type = Types::SessionSummary
    SessionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionSummary)
    StartCalculationExecutionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    StartCalculationExecutionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    StartCalculationExecutionRequest.add_member(:calculation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationConfiguration, location_name: 'CalculationConfiguration', traits: {"smithy.api#deprecated" => {"message" => "Structure is deprecated."}}))
    StartCalculationExecutionRequest.add_member(:code_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBlock, location_name: 'CodeBlock'))
    StartCalculationExecutionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken'))
    StartCalculationExecutionRequest.type = Types::StartCalculationExecutionRequest
    StartCalculationExecutionResponse.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId'))
    StartCalculationExecutionResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State'))
    StartCalculationExecutionResponse.type = Types::StartCalculationExecutionResponse
    StartQueryExecutionInput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#required" => {}}))
    StartQueryExecutionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartQueryExecutionInput.add_member(:query_execution_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionContext, location_name: 'QueryExecutionContext'))
    StartQueryExecutionInput.add_member(:result_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration'))
    StartQueryExecutionInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup'))
    StartQueryExecutionInput.add_member(:execution_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionParameters, location_name: 'ExecutionParameters'))
    StartQueryExecutionInput.add_member(:result_reuse_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultReuseConfiguration, location_name: 'ResultReuseConfiguration'))
    StartQueryExecutionInput.type = Types::StartQueryExecutionInput
    StartQueryExecutionOutput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId'))
    StartQueryExecutionOutput.type = Types::StartQueryExecutionOutput
    StartSessionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    StartSessionRequest.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    StartSessionRequest.add_member(:engine_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfiguration, location_name: 'EngineConfiguration', traits: {"smithy.api#required" => {}}))
    StartSessionRequest.add_member(:notebook_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'NotebookVersion'))
    StartSessionRequest.add_member(:session_idle_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIdleTimeoutInMinutes, location_name: 'SessionIdleTimeoutInMinutes'))
    StartSessionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'ClientRequestToken'))
    StartSessionRequest.type = Types::StartSessionRequest
    StartSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    StartSessionResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State'))
    StartSessionResponse.type = Types::StartSessionResponse
    StatementType.add_member(:ddl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DDL', traits: {"smithy.api#enumValue" => "DDL"}))
    StatementType.add_member(:dml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DML', traits: {"smithy.api#enumValue" => "DML"}))
    StatementType.add_member(:utility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTILITY', traits: {"smithy.api#enumValue" => "UTILITY"}))
    StopCalculationExecutionRequest.add_member(:calculation_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionId, location_name: 'CalculationExecutionId', traits: {"smithy.api#required" => {}}))
    StopCalculationExecutionRequest.type = Types::StopCalculationExecutionRequest
    StopCalculationExecutionResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CalculationExecutionState, location_name: 'State'))
    StopCalculationExecutionResponse.type = Types::StopCalculationExecutionResponse
    StopQueryExecutionInput.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StopQueryExecutionInput.type = Types::StopQueryExecutionInput
    StopQueryExecutionOutput.type = Types::StopQueryExecutionOutput
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportedDPUSizeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    TableMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    TableMetadata.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTime'))
    TableMetadata.add_member(:last_access_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessTime'))
    TableMetadata.add_member(:table_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableTypeString, location_name: 'TableType'))
    TableMetadata.add_member(:columns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'Columns'))
    TableMetadata.add_member(:partition_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnList, location_name: 'PartitionKeys'))
    TableMetadata.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters'))
    TableMetadata.type = Types::TableMetadata
    TableMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableMetadata)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TerminateSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#required" => {}}))
    TerminateSessionRequest.type = Types::TerminateSessionRequest
    TerminateSessionResponse.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State'))
    TerminateSessionResponse.type = Types::TerminateSessionResponse
    ThrottleReason.add_member(:concurrent_query_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENT_QUERY_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "CONCURRENT_QUERY_LIMIT_EXCEEDED"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottleReason, location_name: 'Reason'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnprocessedNamedQueryId.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId'))
    UnprocessedNamedQueryId.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    UnprocessedNamedQueryId.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    UnprocessedNamedQueryId.type = Types::UnprocessedNamedQueryId
    UnprocessedNamedQueryIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedNamedQueryId)
    UnprocessedPreparedStatementName.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName'))
    UnprocessedPreparedStatementName.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    UnprocessedPreparedStatementName.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    UnprocessedPreparedStatementName.type = Types::UnprocessedPreparedStatementName
    UnprocessedPreparedStatementNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedPreparedStatementName)
    UnprocessedQueryExecutionId.add_member(:query_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryExecutionId, location_name: 'QueryExecutionId'))
    UnprocessedQueryExecutionId.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    UnprocessedQueryExecutionId.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage'))
    UnprocessedQueryExecutionId.type = Types::UnprocessedQueryExecutionId
    UnprocessedQueryExecutionIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedQueryExecutionId)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCapacityReservationInput.add_member(:target_dpus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDpusInteger, location_name: 'TargetDpus', traits: {"smithy.api#required" => {}}))
    UpdateCapacityReservationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityReservationName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateCapacityReservationInput.type = Types::UpdateCapacityReservationInput
    UpdateCapacityReservationOutput.type = Types::UpdateCapacityReservationOutput
    UpdateDataCatalogInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CatalogNameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCatalogType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    UpdateDataCatalogInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    UpdateDataCatalogInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersMap, location_name: 'Parameters'))
    UpdateDataCatalogInput.type = Types::UpdateDataCatalogInput
    UpdateDataCatalogOutput.type = Types::UpdateDataCatalogOutput
    UpdateNamedQueryInput.add_member(:named_query_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryId, location_name: 'NamedQueryId', traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamedQueryDescriptionString, location_name: 'Description'))
    UpdateNamedQueryInput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#required" => {}}))
    UpdateNamedQueryInput.type = Types::UpdateNamedQueryInput
    UpdateNamedQueryOutput.type = Types::UpdateNamedQueryOutput
    UpdateNotebookInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'Payload', traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    UpdateNotebookInput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    UpdateNotebookInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    UpdateNotebookInput.type = Types::UpdateNotebookInput
    UpdateNotebookMetadataInput.add_member(:notebook_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookId, location_name: 'NotebookId', traits: {"smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken'))
    UpdateNotebookMetadataInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateNotebookMetadataInput.type = Types::UpdateNotebookMetadataInput
    UpdateNotebookMetadataOutput.type = Types::UpdateNotebookMetadataOutput
    UpdateNotebookOutput.type = Types::UpdateNotebookOutput
    UpdatePreparedStatementInput.add_member(:statement_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementName, location_name: 'StatementName', traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryStatement', traits: {"smithy.api#required" => {}}))
    UpdatePreparedStatementInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description'))
    UpdatePreparedStatementInput.type = Types::UpdatePreparedStatementInput
    UpdatePreparedStatementOutput.type = Types::UpdatePreparedStatementOutput
    UpdateWorkGroupInput.add_member(:work_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'WorkGroup', traits: {"smithy.api#required" => {}}))
    UpdateWorkGroupInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description'))
    UpdateWorkGroupInput.add_member(:configuration_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfigurationUpdates, location_name: 'ConfigurationUpdates'))
    UpdateWorkGroupInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State'))
    UpdateWorkGroupInput.type = Types::UpdateWorkGroupInput
    UpdateWorkGroupOutput.type = Types::UpdateWorkGroupOutput
    WorkGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    WorkGroup.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State'))
    WorkGroup.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupConfiguration, location_name: 'Configuration'))
    WorkGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description'))
    WorkGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    WorkGroup.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'IdentityCenterApplicationArn'))
    WorkGroup.type = Types::WorkGroup
    WorkGroupConfiguration.add_member(:result_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfiguration, location_name: 'ResultConfiguration'))
    WorkGroupConfiguration.add_member(:managed_query_results_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfiguration, location_name: 'ManagedQueryResultsConfiguration'))
    WorkGroupConfiguration.add_member(:enforce_work_group_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnforceWorkGroupConfiguration'))
    WorkGroupConfiguration.add_member(:publish_cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'PublishCloudWatchMetricsEnabled'))
    WorkGroupConfiguration.add_member(:bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: 'BytesScannedCutoffPerQuery'))
    WorkGroupConfiguration.add_member(:requester_pays_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RequesterPaysEnabled'))
    WorkGroupConfiguration.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    WorkGroupConfiguration.add_member(:additional_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'AdditionalConfiguration'))
    WorkGroupConfiguration.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole'))
    WorkGroupConfiguration.add_member(:customer_content_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: 'CustomerContentEncryptionConfiguration'))
    WorkGroupConfiguration.add_member(:enable_minimum_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableMinimumEncryptionConfiguration'))
    WorkGroupConfiguration.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: 'IdentityCenterConfiguration'))
    WorkGroupConfiguration.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration'))
    WorkGroupConfiguration.type = Types::WorkGroupConfiguration
    WorkGroupConfigurationUpdates.add_member(:enforce_work_group_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnforceWorkGroupConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:result_configuration_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultConfigurationUpdates, location_name: 'ResultConfigurationUpdates'))
    WorkGroupConfigurationUpdates.add_member(:managed_query_results_configuration_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedQueryResultsConfigurationUpdates, location_name: 'ManagedQueryResultsConfigurationUpdates'))
    WorkGroupConfigurationUpdates.add_member(:publish_cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'PublishCloudWatchMetricsEnabled'))
    WorkGroupConfigurationUpdates.add_member(:bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BytesScannedCutoffValue, location_name: 'BytesScannedCutoffPerQuery'))
    WorkGroupConfigurationUpdates.add_member(:remove_bytes_scanned_cutoff_per_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveBytesScannedCutoffPerQuery'))
    WorkGroupConfigurationUpdates.add_member(:requester_pays_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RequesterPaysEnabled'))
    WorkGroupConfigurationUpdates.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    WorkGroupConfigurationUpdates.add_member(:remove_customer_content_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'RemoveCustomerContentEncryptionConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:additional_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'AdditionalConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRole'))
    WorkGroupConfigurationUpdates.add_member(:customer_content_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerContentEncryptionConfiguration, location_name: 'CustomerContentEncryptionConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:enable_minimum_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'EnableMinimumEncryptionConfiguration'))
    WorkGroupConfigurationUpdates.add_member(:query_results_s3_access_grants_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultsS3AccessGrantsConfiguration, location_name: 'QueryResultsS3AccessGrantsConfiguration'))
    WorkGroupConfigurationUpdates.type = Types::WorkGroupConfigurationUpdates
    WorkGroupNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName)
    WorkGroupState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    WorkGroupState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    WorkGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupName, location_name: 'Name'))
    WorkGroupSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupState, location_name: 'State'))
    WorkGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupDescriptionString, location_name: 'Description'))
    WorkGroupSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    WorkGroupSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'EngineVersion'))
    WorkGroupSummary.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: 'IdentityCenterApplicationArn'))
    WorkGroupSummary.type = Types::WorkGroupSummary
    WorkGroupsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkGroupSummary)
    DatumList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datum)

    AmazonAthena = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.athena#AmazonAthena"
      service.name = "AmazonAthena"
      service.version = "2017-05-18"
      service.traits = {"aws.api#service" => {"sdkId" => "Athena", "arnNamespace" => "athena", "cloudFormationName" => "Athena", "cloudTrailEventSource" => "athena.amazonaws.com", "endpointPrefix" => "athena"}, "aws.auth#sigv4" => {"name" => "athena"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Athena"}
      service.add_operation(:batch_get_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetNamedQuery"
        operation.name = "BatchGetNamedQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetNamedQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetNamedQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetPreparedStatement"
        operation.name = "BatchGetPreparedStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetPreparedStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetPreparedStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#BatchGetQueryExecution"
        operation.name = "BatchGetQueryExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetQueryExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetQueryExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CancelCapacityReservation"
        operation.name = "CancelCapacityReservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityReservationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelCapacityReservationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateCapacityReservation"
        operation.name = "CreateCapacityReservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCapacityReservationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCapacityReservationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateDataCatalog"
        operation.name = "CreateDataCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCatalogInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataCatalogOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNamedQuery"
        operation.name = "CreateNamedQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamedQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNamedQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateNotebook"
        operation.name = "CreateNotebook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotebookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotebookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePreparedStatement"
        operation.name = "CreatePreparedStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePreparedStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePreparedStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_presigned_notebook_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreatePresignedNotebookUrl"
        operation.name = "CreatePresignedNotebookUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePresignedNotebookUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#CreateWorkGroup"
        operation.name = "CreateWorkGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteCapacityReservation"
        operation.name = "DeleteCapacityReservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCapacityReservationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCapacityReservationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteDataCatalog"
        operation.name = "DeleteDataCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCatalogInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataCatalogOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNamedQuery"
        operation.name = "DeleteNamedQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamedQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNamedQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteNotebook"
        operation.name = "DeleteNotebook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotebookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotebookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeletePreparedStatement"
        operation.name = "DeletePreparedStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePreparedStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePreparedStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#DeleteWorkGroup"
        operation.name = "DeleteWorkGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ExportNotebook"
        operation.name = "ExportNotebook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNotebookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNotebookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecution"
        operation.name = "GetCalculationExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionCode"
        operation.name = "GetCalculationExecutionCode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionCodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_calculation_execution_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCalculationExecutionStatus"
        operation.name = "GetCalculationExecutionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCalculationExecutionStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityAssignmentConfiguration"
        operation.name = "GetCapacityAssignmentConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityAssignmentConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetCapacityReservation"
        operation.name = "GetCapacityReservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityReservationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCapacityReservationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDataCatalog"
        operation.name = "GetDataCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCatalogInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataCatalogOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetDatabase"
        operation.name = "GetDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDatabaseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
      end)
      service.add_operation(:get_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNamedQuery"
        operation.name = "GetNamedQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamedQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNamedQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetNotebookMetadata"
        operation.name = "GetNotebookMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotebookMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotebookMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetPreparedStatement"
        operation.name = "GetPreparedStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreparedStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPreparedStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryExecution"
        operation.name = "GetQueryExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryResults"
        operation.name = "GetQueryResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryResultsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetQueryResults.new
      end)
      service.add_operation(:get_query_runtime_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetQueryRuntimeStatistics"
        operation.name = "GetQueryRuntimeStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueryRuntimeStatisticsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSession"
        operation.name = "GetSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_session_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetSessionStatus"
        operation.name = "GetSessionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_table_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetTableMetadata"
        operation.name = "GetTableMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
      end)
      service.add_operation(:get_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#GetWorkGroup"
        operation.name = "GetWorkGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:import_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ImportNotebook"
        operation.name = "ImportNotebook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotebookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotebookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_application_dpu_sizes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListApplicationDPUSizes"
        operation.name = "ListApplicationDPUSizes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationDPUSizesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationDPUSizesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationDPUSizes.new
      end)
      service.add_operation(:list_calculation_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCalculationExecutions"
        operation.name = "ListCalculationExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCalculationExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCalculationExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCalculationExecutions.new
      end)
      service.add_operation(:list_capacity_reservations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListCapacityReservations"
        operation.name = "ListCapacityReservations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityReservationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCapacityReservationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCapacityReservations.new
      end)
      service.add_operation(:list_data_catalogs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDataCatalogs"
        operation.name = "ListDataCatalogs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCatalogsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataCatalogsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataCatalogs.new
      end)
      service.add_operation(:list_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListDatabases"
        operation.name = "ListDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDatabasesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDatabases.new
      end)
      service.add_operation(:list_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListEngineVersions"
        operation.name = "ListEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEngineVersions.new
      end)
      service.add_operation(:list_executors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListExecutors"
        operation.name = "ListExecutors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExecutors.new
      end)
      service.add_operation(:list_named_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNamedQueries"
        operation.name = "ListNamedQueries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedQueriesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNamedQueriesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListNamedQueriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListNamedQueries.new
      end)
      service.add_operation(:list_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookMetadata"
        operation.name = "ListNotebookMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_notebook_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListNotebookSessions"
        operation.name = "ListNotebookSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookSessionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_prepared_statements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListPreparedStatements"
        operation.name = "ListPreparedStatements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreparedStatementsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPreparedStatementsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPreparedStatements.new
      end)
      service.add_operation(:list_query_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListQueryExecutions"
        operation.name = "ListQueryExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryExecutionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueryExecutionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListQueryExecutions.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListSessions"
        operation.name = "ListSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_table_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTableMetadata"
        operation.name = "ListTableMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTableMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTableMetadata.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_work_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#ListWorkGroups"
        operation.name = "ListWorkGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWorkGroups.new
      end)
      service.add_operation(:put_capacity_assignment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#PutCapacityAssignmentConfiguration"
        operation.name = "PutCapacityAssignmentConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutCapacityAssignmentConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartCalculationExecution"
        operation.name = "StartCalculationExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCalculationExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCalculationExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartQueryExecution"
        operation.name = "StartQueryExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartQueryExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StartSession"
        operation.name = "StartSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:stop_calculation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopCalculationExecution"
        operation.name = "StopCalculationExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCalculationExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCalculationExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_query_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#StopQueryExecution"
        operation.name = "StopQueryExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopQueryExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#TerminateSession"
        operation.name = "TerminateSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_capacity_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateCapacityReservation"
        operation.name = "UpdateCapacityReservation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCapacityReservationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCapacityReservationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_data_catalog, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateDataCatalog"
        operation.name = "UpdateDataCatalog"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCatalogInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataCatalogOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_named_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNamedQuery"
        operation.name = "UpdateNamedQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamedQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNamedQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notebook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebook"
        operation.name = "UpdateNotebook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_notebook_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateNotebookMetadata"
        operation.name = "UpdateNotebookMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookMetadataInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotebookMetadataOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:update_prepared_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdatePreparedStatement"
        operation.name = "UpdatePreparedStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreparedStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePreparedStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_work_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.athena#UpdateWorkGroup"
        operation.name = "UpdateWorkGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
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
