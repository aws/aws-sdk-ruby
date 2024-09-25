# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Neptunedata
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::StringShape.new(name: 'Action')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BulkLoadIdNotFoundException = Shapes::StructureShape.new(name: 'BulkLoadIdNotFoundException')
    CancelGremlinQueryInput = Shapes::StructureShape.new(name: 'CancelGremlinQueryInput')
    CancelGremlinQueryOutput = Shapes::StructureShape.new(name: 'CancelGremlinQueryOutput')
    CancelLoaderJobInput = Shapes::StructureShape.new(name: 'CancelLoaderJobInput')
    CancelLoaderJobOutput = Shapes::StructureShape.new(name: 'CancelLoaderJobOutput')
    CancelMLDataProcessingJobInput = Shapes::StructureShape.new(name: 'CancelMLDataProcessingJobInput')
    CancelMLDataProcessingJobOutput = Shapes::StructureShape.new(name: 'CancelMLDataProcessingJobOutput')
    CancelMLModelTrainingJobInput = Shapes::StructureShape.new(name: 'CancelMLModelTrainingJobInput')
    CancelMLModelTrainingJobOutput = Shapes::StructureShape.new(name: 'CancelMLModelTrainingJobOutput')
    CancelMLModelTransformJobInput = Shapes::StructureShape.new(name: 'CancelMLModelTransformJobInput')
    CancelMLModelTransformJobOutput = Shapes::StructureShape.new(name: 'CancelMLModelTransformJobOutput')
    CancelOpenCypherQueryInput = Shapes::StructureShape.new(name: 'CancelOpenCypherQueryInput')
    CancelOpenCypherQueryOutput = Shapes::StructureShape.new(name: 'CancelOpenCypherQueryOutput')
    CancelledByUserException = Shapes::StructureShape.new(name: 'CancelledByUserException')
    Classes = Shapes::ListShape.new(name: 'Classes')
    ClientTimeoutException = Shapes::StructureShape.new(name: 'ClientTimeoutException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConstraintViolationException = Shapes::StructureShape.new(name: 'ConstraintViolationException')
    CreateMLEndpointInput = Shapes::StructureShape.new(name: 'CreateMLEndpointInput')
    CreateMLEndpointOutput = Shapes::StructureShape.new(name: 'CreateMLEndpointOutput')
    CustomModelTrainingParameters = Shapes::StructureShape.new(name: 'CustomModelTrainingParameters')
    CustomModelTransformParameters = Shapes::StructureShape.new(name: 'CustomModelTransformParameters')
    DeleteMLEndpointInput = Shapes::StructureShape.new(name: 'DeleteMLEndpointInput')
    DeleteMLEndpointOutput = Shapes::StructureShape.new(name: 'DeleteMLEndpointOutput')
    DeletePropertygraphStatisticsOutput = Shapes::StructureShape.new(name: 'DeletePropertygraphStatisticsOutput')
    DeleteSparqlStatisticsOutput = Shapes::StructureShape.new(name: 'DeleteSparqlStatisticsOutput')
    DeleteStatisticsValueMap = Shapes::StructureShape.new(name: 'DeleteStatisticsValueMap')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DocumentValuedMap = Shapes::MapShape.new(name: 'DocumentValuedMap')
    EdgeLabels = Shapes::ListShape.new(name: 'EdgeLabels')
    EdgeProperties = Shapes::ListShape.new(name: 'EdgeProperties')
    EdgeStructure = Shapes::StructureShape.new(name: 'EdgeStructure')
    EdgeStructures = Shapes::ListShape.new(name: 'EdgeStructures')
    Encoding = Shapes::StringShape.new(name: 'Encoding')
    ExecuteFastResetInput = Shapes::StructureShape.new(name: 'ExecuteFastResetInput')
    ExecuteFastResetOutput = Shapes::StructureShape.new(name: 'ExecuteFastResetOutput')
    ExecuteGremlinExplainQueryInput = Shapes::StructureShape.new(name: 'ExecuteGremlinExplainQueryInput')
    ExecuteGremlinExplainQueryOutput = Shapes::StructureShape.new(name: 'ExecuteGremlinExplainQueryOutput')
    ExecuteGremlinProfileQueryInput = Shapes::StructureShape.new(name: 'ExecuteGremlinProfileQueryInput')
    ExecuteGremlinProfileQueryOutput = Shapes::StructureShape.new(name: 'ExecuteGremlinProfileQueryOutput')
    ExecuteGremlinQueryInput = Shapes::StructureShape.new(name: 'ExecuteGremlinQueryInput')
    ExecuteGremlinQueryOutput = Shapes::StructureShape.new(name: 'ExecuteGremlinQueryOutput')
    ExecuteOpenCypherExplainQueryInput = Shapes::StructureShape.new(name: 'ExecuteOpenCypherExplainQueryInput')
    ExecuteOpenCypherExplainQueryOutput = Shapes::StructureShape.new(name: 'ExecuteOpenCypherExplainQueryOutput')
    ExecuteOpenCypherQueryInput = Shapes::StructureShape.new(name: 'ExecuteOpenCypherQueryInput')
    ExecuteOpenCypherQueryOutput = Shapes::StructureShape.new(name: 'ExecuteOpenCypherQueryOutput')
    ExpiredStreamException = Shapes::StructureShape.new(name: 'ExpiredStreamException')
    FailureByQueryException = Shapes::StructureShape.new(name: 'FailureByQueryException')
    FastResetToken = Shapes::StructureShape.new(name: 'FastResetToken')
    Format = Shapes::StringShape.new(name: 'Format')
    GetEngineStatusOutput = Shapes::StructureShape.new(name: 'GetEngineStatusOutput')
    GetGremlinQueryStatusInput = Shapes::StructureShape.new(name: 'GetGremlinQueryStatusInput')
    GetGremlinQueryStatusOutput = Shapes::StructureShape.new(name: 'GetGremlinQueryStatusOutput')
    GetLoaderJobStatusInput = Shapes::StructureShape.new(name: 'GetLoaderJobStatusInput')
    GetLoaderJobStatusOutput = Shapes::StructureShape.new(name: 'GetLoaderJobStatusOutput')
    GetMLDataProcessingJobInput = Shapes::StructureShape.new(name: 'GetMLDataProcessingJobInput')
    GetMLDataProcessingJobOutput = Shapes::StructureShape.new(name: 'GetMLDataProcessingJobOutput')
    GetMLEndpointInput = Shapes::StructureShape.new(name: 'GetMLEndpointInput')
    GetMLEndpointOutput = Shapes::StructureShape.new(name: 'GetMLEndpointOutput')
    GetMLModelTrainingJobInput = Shapes::StructureShape.new(name: 'GetMLModelTrainingJobInput')
    GetMLModelTrainingJobOutput = Shapes::StructureShape.new(name: 'GetMLModelTrainingJobOutput')
    GetMLModelTransformJobInput = Shapes::StructureShape.new(name: 'GetMLModelTransformJobInput')
    GetMLModelTransformJobOutput = Shapes::StructureShape.new(name: 'GetMLModelTransformJobOutput')
    GetOpenCypherQueryStatusInput = Shapes::StructureShape.new(name: 'GetOpenCypherQueryStatusInput')
    GetOpenCypherQueryStatusOutput = Shapes::StructureShape.new(name: 'GetOpenCypherQueryStatusOutput')
    GetPropertygraphStatisticsOutput = Shapes::StructureShape.new(name: 'GetPropertygraphStatisticsOutput')
    GetPropertygraphStreamInput = Shapes::StructureShape.new(name: 'GetPropertygraphStreamInput')
    GetPropertygraphStreamInputLimitLong = Shapes::IntegerShape.new(name: 'GetPropertygraphStreamInputLimitLong')
    GetPropertygraphStreamOutput = Shapes::StructureShape.new(name: 'GetPropertygraphStreamOutput')
    GetPropertygraphSummaryInput = Shapes::StructureShape.new(name: 'GetPropertygraphSummaryInput')
    GetPropertygraphSummaryOutput = Shapes::StructureShape.new(name: 'GetPropertygraphSummaryOutput')
    GetRDFGraphSummaryInput = Shapes::StructureShape.new(name: 'GetRDFGraphSummaryInput')
    GetRDFGraphSummaryOutput = Shapes::StructureShape.new(name: 'GetRDFGraphSummaryOutput')
    GetSparqlStatisticsOutput = Shapes::StructureShape.new(name: 'GetSparqlStatisticsOutput')
    GetSparqlStreamInput = Shapes::StructureShape.new(name: 'GetSparqlStreamInput')
    GetSparqlStreamInputLimitLong = Shapes::IntegerShape.new(name: 'GetSparqlStreamInputLimitLong')
    GetSparqlStreamOutput = Shapes::StructureShape.new(name: 'GetSparqlStreamOutput')
    GraphSummaryType = Shapes::StringShape.new(name: 'GraphSummaryType')
    GremlinQueries = Shapes::ListShape.new(name: 'GremlinQueries')
    GremlinQueryStatus = Shapes::StructureShape.new(name: 'GremlinQueryStatus')
    GremlinQueryStatusAttributes = Shapes::StructureShape.new(name: 'GremlinQueryStatusAttributes')
    IllegalArgumentException = Shapes::StructureShape.new(name: 'IllegalArgumentException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidNumericDataException = Shapes::StructureShape.new(name: 'InvalidNumericDataException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IteratorType = Shapes::StringShape.new(name: 'IteratorType')
    ListGremlinQueriesInput = Shapes::StructureShape.new(name: 'ListGremlinQueriesInput')
    ListGremlinQueriesOutput = Shapes::StructureShape.new(name: 'ListGremlinQueriesOutput')
    ListLoaderJobsInput = Shapes::StructureShape.new(name: 'ListLoaderJobsInput')
    ListLoaderJobsInputLimitInteger = Shapes::IntegerShape.new(name: 'ListLoaderJobsInputLimitInteger')
    ListLoaderJobsOutput = Shapes::StructureShape.new(name: 'ListLoaderJobsOutput')
    ListMLDataProcessingJobsInput = Shapes::StructureShape.new(name: 'ListMLDataProcessingJobsInput')
    ListMLDataProcessingJobsInputMaxItemsInteger = Shapes::IntegerShape.new(name: 'ListMLDataProcessingJobsInputMaxItemsInteger')
    ListMLDataProcessingJobsOutput = Shapes::StructureShape.new(name: 'ListMLDataProcessingJobsOutput')
    ListMLEndpointsInput = Shapes::StructureShape.new(name: 'ListMLEndpointsInput')
    ListMLEndpointsInputMaxItemsInteger = Shapes::IntegerShape.new(name: 'ListMLEndpointsInputMaxItemsInteger')
    ListMLEndpointsOutput = Shapes::StructureShape.new(name: 'ListMLEndpointsOutput')
    ListMLModelTrainingJobsInput = Shapes::StructureShape.new(name: 'ListMLModelTrainingJobsInput')
    ListMLModelTrainingJobsInputMaxItemsInteger = Shapes::IntegerShape.new(name: 'ListMLModelTrainingJobsInputMaxItemsInteger')
    ListMLModelTrainingJobsOutput = Shapes::StructureShape.new(name: 'ListMLModelTrainingJobsOutput')
    ListMLModelTransformJobsInput = Shapes::StructureShape.new(name: 'ListMLModelTransformJobsInput')
    ListMLModelTransformJobsInputMaxItemsInteger = Shapes::IntegerShape.new(name: 'ListMLModelTransformJobsInputMaxItemsInteger')
    ListMLModelTransformJobsOutput = Shapes::StructureShape.new(name: 'ListMLModelTransformJobsOutput')
    ListOpenCypherQueriesInput = Shapes::StructureShape.new(name: 'ListOpenCypherQueriesInput')
    ListOpenCypherQueriesOutput = Shapes::StructureShape.new(name: 'ListOpenCypherQueriesOutput')
    LoadUrlAccessDeniedException = Shapes::StructureShape.new(name: 'LoadUrlAccessDeniedException')
    LoaderIdResult = Shapes::StructureShape.new(name: 'LoaderIdResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongValuedMap = Shapes::MapShape.new(name: 'LongValuedMap')
    LongValuedMapList = Shapes::ListShape.new(name: 'LongValuedMapList')
    MLResourceNotFoundException = Shapes::StructureShape.new(name: 'MLResourceNotFoundException')
    MalformedQueryException = Shapes::StructureShape.new(name: 'MalformedQueryException')
    ManagePropertygraphStatisticsInput = Shapes::StructureShape.new(name: 'ManagePropertygraphStatisticsInput')
    ManagePropertygraphStatisticsOutput = Shapes::StructureShape.new(name: 'ManagePropertygraphStatisticsOutput')
    ManageSparqlStatisticsInput = Shapes::StructureShape.new(name: 'ManageSparqlStatisticsInput')
    ManageSparqlStatisticsOutput = Shapes::StructureShape.new(name: 'ManageSparqlStatisticsOutput')
    MemoryLimitExceededException = Shapes::StructureShape.new(name: 'MemoryLimitExceededException')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    MissingParameterException = Shapes::StructureShape.new(name: 'MissingParameterException')
    MlConfigDefinition = Shapes::StructureShape.new(name: 'MlConfigDefinition')
    MlModels = Shapes::ListShape.new(name: 'MlModels')
    MlResourceDefinition = Shapes::StructureShape.new(name: 'MlResourceDefinition')
    Mode = Shapes::StringShape.new(name: 'Mode')
    Models = Shapes::ListShape.new(name: 'Models')
    NodeLabels = Shapes::ListShape.new(name: 'NodeLabels')
    NodeProperties = Shapes::ListShape.new(name: 'NodeProperties')
    NodeStructure = Shapes::StructureShape.new(name: 'NodeStructure')
    NodeStructures = Shapes::ListShape.new(name: 'NodeStructures')
    OpenCypherExplainMode = Shapes::StringShape.new(name: 'OpenCypherExplainMode')
    OpenCypherQueries = Shapes::ListShape.new(name: 'OpenCypherQueries')
    OutgoingEdgeLabels = Shapes::ListShape.new(name: 'OutgoingEdgeLabels')
    Parallelism = Shapes::StringShape.new(name: 'Parallelism')
    ParsingException = Shapes::StructureShape.new(name: 'ParsingException')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PreconditionsFailedException = Shapes::StructureShape.new(name: 'PreconditionsFailedException')
    Predicates = Shapes::ListShape.new(name: 'Predicates')
    PropertygraphData = Shapes::StructureShape.new(name: 'PropertygraphData')
    PropertygraphRecord = Shapes::StructureShape.new(name: 'PropertygraphRecord')
    PropertygraphRecordsList = Shapes::ListShape.new(name: 'PropertygraphRecordsList')
    PropertygraphSummary = Shapes::StructureShape.new(name: 'PropertygraphSummary')
    PropertygraphSummaryValueMap = Shapes::StructureShape.new(name: 'PropertygraphSummaryValueMap')
    QueryEvalStats = Shapes::StructureShape.new(name: 'QueryEvalStats')
    QueryLanguageVersion = Shapes::StructureShape.new(name: 'QueryLanguageVersion')
    QueryLimitExceededException = Shapes::StructureShape.new(name: 'QueryLimitExceededException')
    QueryLimitException = Shapes::StructureShape.new(name: 'QueryLimitException')
    QueryTooLargeException = Shapes::StructureShape.new(name: 'QueryTooLargeException')
    RDFGraphSummary = Shapes::StructureShape.new(name: 'RDFGraphSummary')
    RDFGraphSummaryValueMap = Shapes::StructureShape.new(name: 'RDFGraphSummaryValueMap')
    ReadOnlyViolationException = Shapes::StructureShape.new(name: 'ReadOnlyViolationException')
    RefreshStatisticsIdMap = Shapes::StructureShape.new(name: 'RefreshStatisticsIdMap')
    ReportAsText = Shapes::BlobShape.new(name: 'ReportAsText')
    S3BucketRegion = Shapes::StringShape.new(name: 'S3BucketRegion')
    S3Exception = Shapes::StructureShape.new(name: 'S3Exception')
    ServerShutdownException = Shapes::StructureShape.new(name: 'ServerShutdownException')
    SparqlData = Shapes::StructureShape.new(name: 'SparqlData')
    SparqlRecord = Shapes::StructureShape.new(name: 'SparqlRecord')
    SparqlRecordsList = Shapes::ListShape.new(name: 'SparqlRecordsList')
    StartLoaderJobInput = Shapes::StructureShape.new(name: 'StartLoaderJobInput')
    StartLoaderJobOutput = Shapes::StructureShape.new(name: 'StartLoaderJobOutput')
    StartMLDataProcessingJobInput = Shapes::StructureShape.new(name: 'StartMLDataProcessingJobInput')
    StartMLDataProcessingJobOutput = Shapes::StructureShape.new(name: 'StartMLDataProcessingJobOutput')
    StartMLModelTrainingJobInput = Shapes::StructureShape.new(name: 'StartMLModelTrainingJobInput')
    StartMLModelTrainingJobOutput = Shapes::StructureShape.new(name: 'StartMLModelTrainingJobOutput')
    StartMLModelTransformJobInput = Shapes::StructureShape.new(name: 'StartMLModelTransformJobInput')
    StartMLModelTransformJobOutput = Shapes::StructureShape.new(name: 'StartMLModelTransformJobOutput')
    Statistics = Shapes::StructureShape.new(name: 'Statistics')
    StatisticsAutoGenerationMode = Shapes::StringShape.new(name: 'StatisticsAutoGenerationMode')
    StatisticsNotAvailableException = Shapes::StructureShape.new(name: 'StatisticsNotAvailableException')
    StatisticsSummary = Shapes::StructureShape.new(name: 'StatisticsSummary')
    StreamRecordsNotFoundException = Shapes::StructureShape.new(name: 'StreamRecordsNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringValuedMap = Shapes::MapShape.new(name: 'StringValuedMap')
    SubjectStructure = Shapes::StructureShape.new(name: 'SubjectStructure')
    SubjectStructures = Shapes::ListShape.new(name: 'SubjectStructures')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeLimitExceededException = Shapes::StructureShape.new(name: 'TimeLimitExceededException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')

    AccessDeniedException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadRequestException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    BadRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BadRequestException.struct_class = Types::BadRequestException

    BulkLoadIdNotFoundException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    BulkLoadIdNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    BulkLoadIdNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BulkLoadIdNotFoundException.struct_class = Types::BulkLoadIdNotFoundException

    CancelGremlinQueryInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    CancelGremlinQueryInput.struct_class = Types::CancelGremlinQueryInput

    CancelGremlinQueryOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelGremlinQueryOutput.struct_class = Types::CancelGremlinQueryOutput

    CancelLoaderJobInput.add_member(:load_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "loadId"))
    CancelLoaderJobInput.struct_class = Types::CancelLoaderJobInput

    CancelLoaderJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelLoaderJobOutput.struct_class = Types::CancelLoaderJobOutput

    CancelMLDataProcessingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    CancelMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    CancelMLDataProcessingJobInput.add_member(:clean, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "clean"))
    CancelMLDataProcessingJobInput.struct_class = Types::CancelMLDataProcessingJobInput

    CancelMLDataProcessingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelMLDataProcessingJobOutput.struct_class = Types::CancelMLDataProcessingJobOutput

    CancelMLModelTrainingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    CancelMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    CancelMLModelTrainingJobInput.add_member(:clean, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "clean"))
    CancelMLModelTrainingJobInput.struct_class = Types::CancelMLModelTrainingJobInput

    CancelMLModelTrainingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelMLModelTrainingJobOutput.struct_class = Types::CancelMLModelTrainingJobOutput

    CancelMLModelTransformJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    CancelMLModelTransformJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    CancelMLModelTransformJobInput.add_member(:clean, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "clean"))
    CancelMLModelTransformJobInput.struct_class = Types::CancelMLModelTransformJobInput

    CancelMLModelTransformJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelMLModelTransformJobOutput.struct_class = Types::CancelMLModelTransformJobOutput

    CancelOpenCypherQueryInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    CancelOpenCypherQueryInput.add_member(:silent, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "silent"))
    CancelOpenCypherQueryInput.struct_class = Types::CancelOpenCypherQueryInput

    CancelOpenCypherQueryOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    CancelOpenCypherQueryOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Boolean, location_name: "payload"))
    CancelOpenCypherQueryOutput.struct_class = Types::CancelOpenCypherQueryOutput

    CancelledByUserException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    CancelledByUserException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    CancelledByUserException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    CancelledByUserException.struct_class = Types::CancelledByUserException

    Classes.member = Shapes::ShapeRef.new(shape: String)

    ClientTimeoutException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ClientTimeoutException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ClientTimeoutException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ClientTimeoutException.struct_class = Types::ClientTimeoutException

    ConcurrentModificationException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ConcurrentModificationException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ConcurrentModificationException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConstraintViolationException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ConstraintViolationException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ConstraintViolationException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ConstraintViolationException.struct_class = Types::ConstraintViolationException

    CreateMLEndpointInput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    CreateMLEndpointInput.add_member(:ml_model_training_job_id, Shapes::ShapeRef.new(shape: String, location_name: "mlModelTrainingJobId"))
    CreateMLEndpointInput.add_member(:ml_model_transform_job_id, Shapes::ShapeRef.new(shape: String, location_name: "mlModelTransformJobId"))
    CreateMLEndpointInput.add_member(:update, Shapes::ShapeRef.new(shape: Boolean, location_name: "update"))
    CreateMLEndpointInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "neptuneIamRoleArn"))
    CreateMLEndpointInput.add_member(:model_name, Shapes::ShapeRef.new(shape: String, location_name: "modelName"))
    CreateMLEndpointInput.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    CreateMLEndpointInput.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "instanceCount"))
    CreateMLEndpointInput.add_member(:volume_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "volumeEncryptionKMSKey"))
    CreateMLEndpointInput.struct_class = Types::CreateMLEndpointInput

    CreateMLEndpointOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    CreateMLEndpointOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    CreateMLEndpointOutput.add_member(:creation_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "creationTimeInMillis"))
    CreateMLEndpointOutput.struct_class = Types::CreateMLEndpointOutput

    CustomModelTrainingParameters.add_member(:source_s3_directory_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceS3DirectoryPath"))
    CustomModelTrainingParameters.add_member(:training_entry_point_script, Shapes::ShapeRef.new(shape: String, location_name: "trainingEntryPointScript"))
    CustomModelTrainingParameters.add_member(:transform_entry_point_script, Shapes::ShapeRef.new(shape: String, location_name: "transformEntryPointScript"))
    CustomModelTrainingParameters.struct_class = Types::CustomModelTrainingParameters

    CustomModelTransformParameters.add_member(:source_s3_directory_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceS3DirectoryPath"))
    CustomModelTransformParameters.add_member(:transform_entry_point_script, Shapes::ShapeRef.new(shape: String, location_name: "transformEntryPointScript"))
    CustomModelTransformParameters.struct_class = Types::CustomModelTransformParameters

    DeleteMLEndpointInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DeleteMLEndpointInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    DeleteMLEndpointInput.add_member(:clean, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "clean"))
    DeleteMLEndpointInput.struct_class = Types::DeleteMLEndpointInput

    DeleteMLEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    DeleteMLEndpointOutput.struct_class = Types::DeleteMLEndpointOutput

    DeletePropertygraphStatisticsOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "statusCode"))
    DeletePropertygraphStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    DeletePropertygraphStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: DeleteStatisticsValueMap, location_name: "payload"))
    DeletePropertygraphStatisticsOutput.struct_class = Types::DeletePropertygraphStatisticsOutput

    DeleteSparqlStatisticsOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "statusCode"))
    DeleteSparqlStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    DeleteSparqlStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: DeleteStatisticsValueMap, location_name: "payload"))
    DeleteSparqlStatisticsOutput.struct_class = Types::DeleteSparqlStatisticsOutput

    DeleteStatisticsValueMap.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    DeleteStatisticsValueMap.add_member(:statistics_id, Shapes::ShapeRef.new(shape: String, location_name: "statisticsId"))
    DeleteStatisticsValueMap.struct_class = Types::DeleteStatisticsValueMap

    DocumentValuedMap.key = Shapes::ShapeRef.new(shape: String)
    DocumentValuedMap.value = Shapes::ShapeRef.new(shape: Document)

    EdgeLabels.member = Shapes::ShapeRef.new(shape: String)

    EdgeProperties.member = Shapes::ShapeRef.new(shape: String)

    EdgeStructure.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    EdgeStructure.add_member(:edge_properties, Shapes::ShapeRef.new(shape: EdgeProperties, location_name: "edgeProperties"))
    EdgeStructure.struct_class = Types::EdgeStructure

    EdgeStructures.member = Shapes::ShapeRef.new(shape: EdgeStructure)

    ExecuteFastResetInput.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "action"))
    ExecuteFastResetInput.add_member(:token, Shapes::ShapeRef.new(shape: String, location_name: "token"))
    ExecuteFastResetInput.struct_class = Types::ExecuteFastResetInput

    ExecuteFastResetOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ExecuteFastResetOutput.add_member(:payload, Shapes::ShapeRef.new(shape: FastResetToken, location_name: "payload"))
    ExecuteFastResetOutput.struct_class = Types::ExecuteFastResetOutput

    ExecuteGremlinExplainQueryInput.add_member(:gremlin_query, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gremlin"))
    ExecuteGremlinExplainQueryInput.struct_class = Types::ExecuteGremlinExplainQueryInput

    ExecuteGremlinExplainQueryOutput.add_member(:output, Shapes::ShapeRef.new(shape: ReportAsText, location_name: "output"))
    ExecuteGremlinExplainQueryOutput.struct_class = Types::ExecuteGremlinExplainQueryOutput
    ExecuteGremlinExplainQueryOutput[:payload] = :output
    ExecuteGremlinExplainQueryOutput[:payload_member] = ExecuteGremlinExplainQueryOutput.member(:output)

    ExecuteGremlinProfileQueryInput.add_member(:gremlin_query, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gremlin"))
    ExecuteGremlinProfileQueryInput.add_member(:results, Shapes::ShapeRef.new(shape: Boolean, location_name: "profile.results"))
    ExecuteGremlinProfileQueryInput.add_member(:chop, Shapes::ShapeRef.new(shape: Integer, location_name: "profile.chop"))
    ExecuteGremlinProfileQueryInput.add_member(:serializer, Shapes::ShapeRef.new(shape: String, location_name: "profile.serializer"))
    ExecuteGremlinProfileQueryInput.add_member(:index_ops, Shapes::ShapeRef.new(shape: Boolean, location_name: "profile.indexOps"))
    ExecuteGremlinProfileQueryInput.struct_class = Types::ExecuteGremlinProfileQueryInput

    ExecuteGremlinProfileQueryOutput.add_member(:output, Shapes::ShapeRef.new(shape: ReportAsText, location_name: "output"))
    ExecuteGremlinProfileQueryOutput.struct_class = Types::ExecuteGremlinProfileQueryOutput
    ExecuteGremlinProfileQueryOutput[:payload] = :output
    ExecuteGremlinProfileQueryOutput[:payload_member] = ExecuteGremlinProfileQueryOutput.member(:output)

    ExecuteGremlinQueryInput.add_member(:gremlin_query, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gremlin"))
    ExecuteGremlinQueryInput.add_member(:serializer, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "accept"))
    ExecuteGremlinQueryInput.struct_class = Types::ExecuteGremlinQueryInput

    ExecuteGremlinQueryOutput.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "requestId"))
    ExecuteGremlinQueryOutput.add_member(:status, Shapes::ShapeRef.new(shape: GremlinQueryStatusAttributes, location_name: "status"))
    ExecuteGremlinQueryOutput.add_member(:result, Shapes::ShapeRef.new(shape: Document, location_name: "result"))
    ExecuteGremlinQueryOutput.add_member(:meta, Shapes::ShapeRef.new(shape: Document, location_name: "meta"))
    ExecuteGremlinQueryOutput.struct_class = Types::ExecuteGremlinQueryOutput

    ExecuteOpenCypherExplainQueryInput.add_member(:open_cypher_query, Shapes::ShapeRef.new(shape: String, required: true, location_name: "query"))
    ExecuteOpenCypherExplainQueryInput.add_member(:parameters, Shapes::ShapeRef.new(shape: String, location_name: "parameters"))
    ExecuteOpenCypherExplainQueryInput.add_member(:explain_mode, Shapes::ShapeRef.new(shape: OpenCypherExplainMode, required: true, location_name: "explain"))
    ExecuteOpenCypherExplainQueryInput.struct_class = Types::ExecuteOpenCypherExplainQueryInput

    ExecuteOpenCypherExplainQueryOutput.add_member(:results, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "results"))
    ExecuteOpenCypherExplainQueryOutput.struct_class = Types::ExecuteOpenCypherExplainQueryOutput
    ExecuteOpenCypherExplainQueryOutput[:payload] = :results
    ExecuteOpenCypherExplainQueryOutput[:payload_member] = ExecuteOpenCypherExplainQueryOutput.member(:results)

    ExecuteOpenCypherQueryInput.add_member(:open_cypher_query, Shapes::ShapeRef.new(shape: String, required: true, location_name: "query"))
    ExecuteOpenCypherQueryInput.add_member(:parameters, Shapes::ShapeRef.new(shape: String, location_name: "parameters"))
    ExecuteOpenCypherQueryInput.struct_class = Types::ExecuteOpenCypherQueryInput

    ExecuteOpenCypherQueryOutput.add_member(:results, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "results"))
    ExecuteOpenCypherQueryOutput.struct_class = Types::ExecuteOpenCypherQueryOutput

    ExpiredStreamException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ExpiredStreamException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ExpiredStreamException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ExpiredStreamException.struct_class = Types::ExpiredStreamException

    FailureByQueryException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    FailureByQueryException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    FailureByQueryException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    FailureByQueryException.struct_class = Types::FailureByQueryException

    FastResetToken.add_member(:token, Shapes::ShapeRef.new(shape: String, location_name: "token"))
    FastResetToken.struct_class = Types::FastResetToken

    GetEngineStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetEngineStatusOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: String, location_name: "startTime"))
    GetEngineStatusOutput.add_member(:db_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "dbEngineVersion"))
    GetEngineStatusOutput.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    GetEngineStatusOutput.add_member(:dfe_query_engine, Shapes::ShapeRef.new(shape: String, location_name: "dfeQueryEngine"))
    GetEngineStatusOutput.add_member(:gremlin, Shapes::ShapeRef.new(shape: QueryLanguageVersion, location_name: "gremlin"))
    GetEngineStatusOutput.add_member(:sparql, Shapes::ShapeRef.new(shape: QueryLanguageVersion, location_name: "sparql"))
    GetEngineStatusOutput.add_member(:opencypher, Shapes::ShapeRef.new(shape: QueryLanguageVersion, location_name: "opencypher"))
    GetEngineStatusOutput.add_member(:lab_mode, Shapes::ShapeRef.new(shape: StringValuedMap, location_name: "labMode"))
    GetEngineStatusOutput.add_member(:rolling_back_trx_count, Shapes::ShapeRef.new(shape: Integer, location_name: "rollingBackTrxCount"))
    GetEngineStatusOutput.add_member(:rolling_back_trx_earliest_start_time, Shapes::ShapeRef.new(shape: String, location_name: "rollingBackTrxEarliestStartTime"))
    GetEngineStatusOutput.add_member(:features, Shapes::ShapeRef.new(shape: DocumentValuedMap, location_name: "features"))
    GetEngineStatusOutput.add_member(:settings, Shapes::ShapeRef.new(shape: StringValuedMap, location_name: "settings"))
    GetEngineStatusOutput.struct_class = Types::GetEngineStatusOutput

    GetGremlinQueryStatusInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetGremlinQueryStatusInput.struct_class = Types::GetGremlinQueryStatusInput

    GetGremlinQueryStatusOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, location_name: "queryId"))
    GetGremlinQueryStatusOutput.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "queryString"))
    GetGremlinQueryStatusOutput.add_member(:query_eval_stats, Shapes::ShapeRef.new(shape: QueryEvalStats, location_name: "queryEvalStats"))
    GetGremlinQueryStatusOutput.struct_class = Types::GetGremlinQueryStatusOutput

    GetLoaderJobStatusInput.add_member(:load_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "loadId"))
    GetLoaderJobStatusInput.add_member(:details, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "details"))
    GetLoaderJobStatusInput.add_member(:errors, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "errors"))
    GetLoaderJobStatusInput.add_member(:page, Shapes::ShapeRef.new(shape: PositiveInteger, location: "querystring", location_name: "page"))
    GetLoaderJobStatusInput.add_member(:errors_per_page, Shapes::ShapeRef.new(shape: PositiveInteger, location: "querystring", location_name: "errorsPerPage"))
    GetLoaderJobStatusInput.struct_class = Types::GetLoaderJobStatusInput

    GetLoaderJobStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    GetLoaderJobStatusOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "payload"))
    GetLoaderJobStatusOutput.struct_class = Types::GetLoaderJobStatusOutput

    GetMLDataProcessingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    GetMLDataProcessingJobInput.struct_class = Types::GetMLDataProcessingJobInput

    GetMLDataProcessingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetMLDataProcessingJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetMLDataProcessingJobOutput.add_member(:processing_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "processingJob"))
    GetMLDataProcessingJobOutput.struct_class = Types::GetMLDataProcessingJobOutput

    GetMLEndpointInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetMLEndpointInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    GetMLEndpointInput.struct_class = Types::GetMLEndpointInput

    GetMLEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetMLEndpointOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetMLEndpointOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "endpoint"))
    GetMLEndpointOutput.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: MlConfigDefinition, location_name: "endpointConfig"))
    GetMLEndpointOutput.struct_class = Types::GetMLEndpointOutput

    GetMLModelTrainingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    GetMLModelTrainingJobInput.struct_class = Types::GetMLModelTrainingJobInput

    GetMLModelTrainingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetMLModelTrainingJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetMLModelTrainingJobOutput.add_member(:processing_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "processingJob"))
    GetMLModelTrainingJobOutput.add_member(:hpo_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "hpoJob"))
    GetMLModelTrainingJobOutput.add_member(:model_transform_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "modelTransformJob"))
    GetMLModelTrainingJobOutput.add_member(:ml_models, Shapes::ShapeRef.new(shape: MlModels, location_name: "mlModels"))
    GetMLModelTrainingJobOutput.struct_class = Types::GetMLModelTrainingJobOutput

    GetMLModelTransformJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetMLModelTransformJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    GetMLModelTransformJobInput.struct_class = Types::GetMLModelTransformJobInput

    GetMLModelTransformJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    GetMLModelTransformJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetMLModelTransformJobOutput.add_member(:base_processing_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "baseProcessingJob"))
    GetMLModelTransformJobOutput.add_member(:remote_model_transform_job, Shapes::ShapeRef.new(shape: MlResourceDefinition, location_name: "remoteModelTransformJob"))
    GetMLModelTransformJobOutput.add_member(:models, Shapes::ShapeRef.new(shape: Models, location_name: "models"))
    GetMLModelTransformJobOutput.struct_class = Types::GetMLModelTransformJobOutput

    GetOpenCypherQueryStatusInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetOpenCypherQueryStatusInput.struct_class = Types::GetOpenCypherQueryStatusInput

    GetOpenCypherQueryStatusOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, location_name: "queryId"))
    GetOpenCypherQueryStatusOutput.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "queryString"))
    GetOpenCypherQueryStatusOutput.add_member(:query_eval_stats, Shapes::ShapeRef.new(shape: QueryEvalStats, location_name: "queryEvalStats"))
    GetOpenCypherQueryStatusOutput.struct_class = Types::GetOpenCypherQueryStatusOutput

    GetPropertygraphStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    GetPropertygraphStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Statistics, required: true, location_name: "payload"))
    GetPropertygraphStatisticsOutput.struct_class = Types::GetPropertygraphStatisticsOutput

    GetPropertygraphStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: GetPropertygraphStreamInputLimitLong, location: "querystring", location_name: "limit"))
    GetPropertygraphStreamInput.add_member(:iterator_type, Shapes::ShapeRef.new(shape: IteratorType, location: "querystring", location_name: "iteratorType"))
    GetPropertygraphStreamInput.add_member(:commit_num, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "commitNum"))
    GetPropertygraphStreamInput.add_member(:op_num, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "opNum"))
    GetPropertygraphStreamInput.add_member(:encoding, Shapes::ShapeRef.new(shape: Encoding, location: "header", location_name: "Accept-Encoding"))
    GetPropertygraphStreamInput.struct_class = Types::GetPropertygraphStreamInput

    GetPropertygraphStreamOutput.add_member(:last_event_id, Shapes::ShapeRef.new(shape: StringValuedMap, required: true, location_name: "lastEventId"))
    GetPropertygraphStreamOutput.add_member(:last_trx_timestamp_in_millis, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "lastTrxTimestamp"))
    GetPropertygraphStreamOutput.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    GetPropertygraphStreamOutput.add_member(:records, Shapes::ShapeRef.new(shape: PropertygraphRecordsList, required: true, location_name: "records"))
    GetPropertygraphStreamOutput.add_member(:total_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalRecords"))
    GetPropertygraphStreamOutput.struct_class = Types::GetPropertygraphStreamOutput

    GetPropertygraphSummaryInput.add_member(:mode, Shapes::ShapeRef.new(shape: GraphSummaryType, location: "querystring", location_name: "mode"))
    GetPropertygraphSummaryInput.struct_class = Types::GetPropertygraphSummaryInput

    GetPropertygraphSummaryOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "statusCode"))
    GetPropertygraphSummaryOutput.add_member(:payload, Shapes::ShapeRef.new(shape: PropertygraphSummaryValueMap, location_name: "payload"))
    GetPropertygraphSummaryOutput.struct_class = Types::GetPropertygraphSummaryOutput

    GetRDFGraphSummaryInput.add_member(:mode, Shapes::ShapeRef.new(shape: GraphSummaryType, location: "querystring", location_name: "mode"))
    GetRDFGraphSummaryInput.struct_class = Types::GetRDFGraphSummaryInput

    GetRDFGraphSummaryOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "statusCode"))
    GetRDFGraphSummaryOutput.add_member(:payload, Shapes::ShapeRef.new(shape: RDFGraphSummaryValueMap, location_name: "payload"))
    GetRDFGraphSummaryOutput.struct_class = Types::GetRDFGraphSummaryOutput

    GetSparqlStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    GetSparqlStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: Statistics, required: true, location_name: "payload"))
    GetSparqlStatisticsOutput.struct_class = Types::GetSparqlStatisticsOutput

    GetSparqlStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: GetSparqlStreamInputLimitLong, location: "querystring", location_name: "limit"))
    GetSparqlStreamInput.add_member(:iterator_type, Shapes::ShapeRef.new(shape: IteratorType, location: "querystring", location_name: "iteratorType"))
    GetSparqlStreamInput.add_member(:commit_num, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "commitNum"))
    GetSparqlStreamInput.add_member(:op_num, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "opNum"))
    GetSparqlStreamInput.add_member(:encoding, Shapes::ShapeRef.new(shape: Encoding, location: "header", location_name: "Accept-Encoding"))
    GetSparqlStreamInput.struct_class = Types::GetSparqlStreamInput

    GetSparqlStreamOutput.add_member(:last_event_id, Shapes::ShapeRef.new(shape: StringValuedMap, required: true, location_name: "lastEventId"))
    GetSparqlStreamOutput.add_member(:last_trx_timestamp_in_millis, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "lastTrxTimestamp"))
    GetSparqlStreamOutput.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    GetSparqlStreamOutput.add_member(:records, Shapes::ShapeRef.new(shape: SparqlRecordsList, required: true, location_name: "records"))
    GetSparqlStreamOutput.add_member(:total_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalRecords"))
    GetSparqlStreamOutput.struct_class = Types::GetSparqlStreamOutput

    GremlinQueries.member = Shapes::ShapeRef.new(shape: GremlinQueryStatus)

    GremlinQueryStatus.add_member(:query_id, Shapes::ShapeRef.new(shape: String, location_name: "queryId"))
    GremlinQueryStatus.add_member(:query_string, Shapes::ShapeRef.new(shape: String, location_name: "queryString"))
    GremlinQueryStatus.add_member(:query_eval_stats, Shapes::ShapeRef.new(shape: QueryEvalStats, location_name: "queryEvalStats"))
    GremlinQueryStatus.struct_class = Types::GremlinQueryStatus

    GremlinQueryStatusAttributes.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    GremlinQueryStatusAttributes.add_member(:code, Shapes::ShapeRef.new(shape: Integer, location_name: "code"))
    GremlinQueryStatusAttributes.add_member(:attributes, Shapes::ShapeRef.new(shape: Document, location_name: "attributes"))
    GremlinQueryStatusAttributes.struct_class = Types::GremlinQueryStatusAttributes

    IllegalArgumentException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    IllegalArgumentException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    IllegalArgumentException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    IllegalArgumentException.struct_class = Types::IllegalArgumentException

    InternalFailureException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    InternalFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    InternalFailureException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidArgumentException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    InvalidArgumentException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    InvalidArgumentException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidNumericDataException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    InvalidNumericDataException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    InvalidNumericDataException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    InvalidNumericDataException.struct_class = Types::InvalidNumericDataException

    InvalidParameterException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    InvalidParameterException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    InvalidParameterException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListGremlinQueriesInput.add_member(:include_waiting, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeWaiting"))
    ListGremlinQueriesInput.struct_class = Types::ListGremlinQueriesInput

    ListGremlinQueriesOutput.add_member(:accepted_query_count, Shapes::ShapeRef.new(shape: Integer, location_name: "acceptedQueryCount"))
    ListGremlinQueriesOutput.add_member(:running_query_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningQueryCount"))
    ListGremlinQueriesOutput.add_member(:queries, Shapes::ShapeRef.new(shape: GremlinQueries, location_name: "queries"))
    ListGremlinQueriesOutput.struct_class = Types::ListGremlinQueriesOutput

    ListLoaderJobsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListLoaderJobsInputLimitInteger, location: "querystring", location_name: "limit"))
    ListLoaderJobsInput.add_member(:include_queued_loads, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeQueuedLoads"))
    ListLoaderJobsInput.struct_class = Types::ListLoaderJobsInput

    ListLoaderJobsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ListLoaderJobsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: LoaderIdResult, required: true, location_name: "payload"))
    ListLoaderJobsOutput.struct_class = Types::ListLoaderJobsOutput

    ListMLDataProcessingJobsInput.add_member(:max_items, Shapes::ShapeRef.new(shape: ListMLDataProcessingJobsInputMaxItemsInteger, location: "querystring", location_name: "maxItems"))
    ListMLDataProcessingJobsInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    ListMLDataProcessingJobsInput.struct_class = Types::ListMLDataProcessingJobsInput

    ListMLDataProcessingJobsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: StringList, location_name: "ids"))
    ListMLDataProcessingJobsOutput.struct_class = Types::ListMLDataProcessingJobsOutput

    ListMLEndpointsInput.add_member(:max_items, Shapes::ShapeRef.new(shape: ListMLEndpointsInputMaxItemsInteger, location: "querystring", location_name: "maxItems"))
    ListMLEndpointsInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    ListMLEndpointsInput.struct_class = Types::ListMLEndpointsInput

    ListMLEndpointsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: StringList, location_name: "ids"))
    ListMLEndpointsOutput.struct_class = Types::ListMLEndpointsOutput

    ListMLModelTrainingJobsInput.add_member(:max_items, Shapes::ShapeRef.new(shape: ListMLModelTrainingJobsInputMaxItemsInteger, location: "querystring", location_name: "maxItems"))
    ListMLModelTrainingJobsInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    ListMLModelTrainingJobsInput.struct_class = Types::ListMLModelTrainingJobsInput

    ListMLModelTrainingJobsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: StringList, location_name: "ids"))
    ListMLModelTrainingJobsOutput.struct_class = Types::ListMLModelTrainingJobsOutput

    ListMLModelTransformJobsInput.add_member(:max_items, Shapes::ShapeRef.new(shape: ListMLModelTransformJobsInputMaxItemsInteger, location: "querystring", location_name: "maxItems"))
    ListMLModelTransformJobsInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "neptuneIamRoleArn"))
    ListMLModelTransformJobsInput.struct_class = Types::ListMLModelTransformJobsInput

    ListMLModelTransformJobsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: StringList, location_name: "ids"))
    ListMLModelTransformJobsOutput.struct_class = Types::ListMLModelTransformJobsOutput

    ListOpenCypherQueriesInput.add_member(:include_waiting, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeWaiting"))
    ListOpenCypherQueriesInput.struct_class = Types::ListOpenCypherQueriesInput

    ListOpenCypherQueriesOutput.add_member(:accepted_query_count, Shapes::ShapeRef.new(shape: Integer, location_name: "acceptedQueryCount"))
    ListOpenCypherQueriesOutput.add_member(:running_query_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningQueryCount"))
    ListOpenCypherQueriesOutput.add_member(:queries, Shapes::ShapeRef.new(shape: OpenCypherQueries, location_name: "queries"))
    ListOpenCypherQueriesOutput.struct_class = Types::ListOpenCypherQueriesOutput

    LoadUrlAccessDeniedException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    LoadUrlAccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    LoadUrlAccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    LoadUrlAccessDeniedException.struct_class = Types::LoadUrlAccessDeniedException

    LoaderIdResult.add_member(:load_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "loadIds"))
    LoaderIdResult.struct_class = Types::LoaderIdResult

    LongValuedMap.key = Shapes::ShapeRef.new(shape: String)
    LongValuedMap.value = Shapes::ShapeRef.new(shape: Long)

    LongValuedMapList.member = Shapes::ShapeRef.new(shape: LongValuedMap)

    MLResourceNotFoundException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    MLResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    MLResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MLResourceNotFoundException.struct_class = Types::MLResourceNotFoundException

    MalformedQueryException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    MalformedQueryException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    MalformedQueryException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MalformedQueryException.struct_class = Types::MalformedQueryException

    ManagePropertygraphStatisticsInput.add_member(:mode, Shapes::ShapeRef.new(shape: StatisticsAutoGenerationMode, location_name: "mode"))
    ManagePropertygraphStatisticsInput.struct_class = Types::ManagePropertygraphStatisticsInput

    ManagePropertygraphStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ManagePropertygraphStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: RefreshStatisticsIdMap, location_name: "payload"))
    ManagePropertygraphStatisticsOutput.struct_class = Types::ManagePropertygraphStatisticsOutput

    ManageSparqlStatisticsInput.add_member(:mode, Shapes::ShapeRef.new(shape: StatisticsAutoGenerationMode, location_name: "mode"))
    ManageSparqlStatisticsInput.struct_class = Types::ManageSparqlStatisticsInput

    ManageSparqlStatisticsOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ManageSparqlStatisticsOutput.add_member(:payload, Shapes::ShapeRef.new(shape: RefreshStatisticsIdMap, location_name: "payload"))
    ManageSparqlStatisticsOutput.struct_class = Types::ManageSparqlStatisticsOutput

    MemoryLimitExceededException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    MemoryLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    MemoryLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MemoryLimitExceededException.struct_class = Types::MemoryLimitExceededException

    MethodNotAllowedException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    MethodNotAllowedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    MethodNotAllowedException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MethodNotAllowedException.struct_class = Types::MethodNotAllowedException

    MissingParameterException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    MissingParameterException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    MissingParameterException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MissingParameterException.struct_class = Types::MissingParameterException

    MlConfigDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MlConfigDefinition.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    MlConfigDefinition.struct_class = Types::MlConfigDefinition

    MlModels.member = Shapes::ShapeRef.new(shape: MlConfigDefinition)

    MlResourceDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MlResourceDefinition.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    MlResourceDefinition.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    MlResourceDefinition.add_member(:output_location, Shapes::ShapeRef.new(shape: String, location_name: "outputLocation"))
    MlResourceDefinition.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    MlResourceDefinition.add_member(:cloudwatch_log_url, Shapes::ShapeRef.new(shape: String, location_name: "cloudwatchLogUrl"))
    MlResourceDefinition.struct_class = Types::MlResourceDefinition

    Models.member = Shapes::ShapeRef.new(shape: MlConfigDefinition)

    NodeLabels.member = Shapes::ShapeRef.new(shape: String)

    NodeProperties.member = Shapes::ShapeRef.new(shape: String)

    NodeStructure.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    NodeStructure.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    NodeStructure.add_member(:distinct_outgoing_edge_labels, Shapes::ShapeRef.new(shape: OutgoingEdgeLabels, location_name: "distinctOutgoingEdgeLabels"))
    NodeStructure.struct_class = Types::NodeStructure

    NodeStructures.member = Shapes::ShapeRef.new(shape: NodeStructure)

    OpenCypherQueries.member = Shapes::ShapeRef.new(shape: GremlinQueryStatus)

    OutgoingEdgeLabels.member = Shapes::ShapeRef.new(shape: String)

    ParsingException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ParsingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ParsingException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ParsingException.struct_class = Types::ParsingException

    PreconditionsFailedException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    PreconditionsFailedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    PreconditionsFailedException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    PreconditionsFailedException.struct_class = Types::PreconditionsFailedException

    Predicates.member = Shapes::ShapeRef.new(shape: String)

    PropertygraphData.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    PropertygraphData.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    PropertygraphData.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    PropertygraphData.add_member(:value, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "value"))
    PropertygraphData.add_member(:from, Shapes::ShapeRef.new(shape: String, location_name: "from"))
    PropertygraphData.add_member(:to, Shapes::ShapeRef.new(shape: String, location_name: "to"))
    PropertygraphData.struct_class = Types::PropertygraphData

    PropertygraphRecord.add_member(:commit_timestamp_in_millis, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "commitTimestamp"))
    PropertygraphRecord.add_member(:event_id, Shapes::ShapeRef.new(shape: StringValuedMap, required: true, location_name: "eventId"))
    PropertygraphRecord.add_member(:data, Shapes::ShapeRef.new(shape: PropertygraphData, required: true, location_name: "data"))
    PropertygraphRecord.add_member(:op, Shapes::ShapeRef.new(shape: String, required: true, location_name: "op"))
    PropertygraphRecord.add_member(:is_last_op, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLastOp"))
    PropertygraphRecord.struct_class = Types::PropertygraphRecord

    PropertygraphRecordsList.member = Shapes::ShapeRef.new(shape: PropertygraphRecord)

    PropertygraphSummary.add_member(:num_nodes, Shapes::ShapeRef.new(shape: Long, location_name: "numNodes"))
    PropertygraphSummary.add_member(:num_edges, Shapes::ShapeRef.new(shape: Long, location_name: "numEdges"))
    PropertygraphSummary.add_member(:num_node_labels, Shapes::ShapeRef.new(shape: Long, location_name: "numNodeLabels"))
    PropertygraphSummary.add_member(:num_edge_labels, Shapes::ShapeRef.new(shape: Long, location_name: "numEdgeLabels"))
    PropertygraphSummary.add_member(:node_labels, Shapes::ShapeRef.new(shape: NodeLabels, location_name: "nodeLabels"))
    PropertygraphSummary.add_member(:edge_labels, Shapes::ShapeRef.new(shape: EdgeLabels, location_name: "edgeLabels"))
    PropertygraphSummary.add_member(:num_node_properties, Shapes::ShapeRef.new(shape: Long, location_name: "numNodeProperties"))
    PropertygraphSummary.add_member(:num_edge_properties, Shapes::ShapeRef.new(shape: Long, location_name: "numEdgeProperties"))
    PropertygraphSummary.add_member(:node_properties, Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: "nodeProperties"))
    PropertygraphSummary.add_member(:edge_properties, Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: "edgeProperties"))
    PropertygraphSummary.add_member(:total_node_property_values, Shapes::ShapeRef.new(shape: Long, location_name: "totalNodePropertyValues"))
    PropertygraphSummary.add_member(:total_edge_property_values, Shapes::ShapeRef.new(shape: Long, location_name: "totalEdgePropertyValues"))
    PropertygraphSummary.add_member(:node_structures, Shapes::ShapeRef.new(shape: NodeStructures, location_name: "nodeStructures"))
    PropertygraphSummary.add_member(:edge_structures, Shapes::ShapeRef.new(shape: EdgeStructures, location_name: "edgeStructures"))
    PropertygraphSummary.struct_class = Types::PropertygraphSummary

    PropertygraphSummaryValueMap.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    PropertygraphSummaryValueMap.add_member(:last_statistics_computation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastStatisticsComputationTime"))
    PropertygraphSummaryValueMap.add_member(:graph_summary, Shapes::ShapeRef.new(shape: PropertygraphSummary, location_name: "graphSummary"))
    PropertygraphSummaryValueMap.struct_class = Types::PropertygraphSummaryValueMap

    QueryEvalStats.add_member(:waited, Shapes::ShapeRef.new(shape: Integer, location_name: "waited"))
    QueryEvalStats.add_member(:elapsed, Shapes::ShapeRef.new(shape: Integer, location_name: "elapsed"))
    QueryEvalStats.add_member(:cancelled, Shapes::ShapeRef.new(shape: Boolean, location_name: "cancelled"))
    QueryEvalStats.add_member(:subqueries, Shapes::ShapeRef.new(shape: Document, location_name: "subqueries"))
    QueryEvalStats.struct_class = Types::QueryEvalStats

    QueryLanguageVersion.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    QueryLanguageVersion.struct_class = Types::QueryLanguageVersion

    QueryLimitExceededException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    QueryLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    QueryLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    QueryLimitExceededException.struct_class = Types::QueryLimitExceededException

    QueryLimitException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    QueryLimitException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    QueryLimitException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    QueryLimitException.struct_class = Types::QueryLimitException

    QueryTooLargeException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    QueryTooLargeException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    QueryTooLargeException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    QueryTooLargeException.struct_class = Types::QueryTooLargeException

    RDFGraphSummary.add_member(:num_distinct_subjects, Shapes::ShapeRef.new(shape: Long, location_name: "numDistinctSubjects"))
    RDFGraphSummary.add_member(:num_distinct_predicates, Shapes::ShapeRef.new(shape: Long, location_name: "numDistinctPredicates"))
    RDFGraphSummary.add_member(:num_quads, Shapes::ShapeRef.new(shape: Long, location_name: "numQuads"))
    RDFGraphSummary.add_member(:num_classes, Shapes::ShapeRef.new(shape: Long, location_name: "numClasses"))
    RDFGraphSummary.add_member(:classes, Shapes::ShapeRef.new(shape: Classes, location_name: "classes"))
    RDFGraphSummary.add_member(:predicates, Shapes::ShapeRef.new(shape: LongValuedMapList, location_name: "predicates"))
    RDFGraphSummary.add_member(:subject_structures, Shapes::ShapeRef.new(shape: SubjectStructures, location_name: "subjectStructures"))
    RDFGraphSummary.struct_class = Types::RDFGraphSummary

    RDFGraphSummaryValueMap.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    RDFGraphSummaryValueMap.add_member(:last_statistics_computation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastStatisticsComputationTime"))
    RDFGraphSummaryValueMap.add_member(:graph_summary, Shapes::ShapeRef.new(shape: RDFGraphSummary, location_name: "graphSummary"))
    RDFGraphSummaryValueMap.struct_class = Types::RDFGraphSummaryValueMap

    ReadOnlyViolationException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ReadOnlyViolationException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ReadOnlyViolationException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ReadOnlyViolationException.struct_class = Types::ReadOnlyViolationException

    RefreshStatisticsIdMap.add_member(:statistics_id, Shapes::ShapeRef.new(shape: String, location_name: "statisticsId"))
    RefreshStatisticsIdMap.struct_class = Types::RefreshStatisticsIdMap

    S3Exception.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    S3Exception.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    S3Exception.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    S3Exception.struct_class = Types::S3Exception

    ServerShutdownException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ServerShutdownException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ServerShutdownException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ServerShutdownException.struct_class = Types::ServerShutdownException

    SparqlData.add_member(:stmt, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stmt"))
    SparqlData.struct_class = Types::SparqlData

    SparqlRecord.add_member(:commit_timestamp_in_millis, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "commitTimestamp"))
    SparqlRecord.add_member(:event_id, Shapes::ShapeRef.new(shape: StringValuedMap, required: true, location_name: "eventId"))
    SparqlRecord.add_member(:data, Shapes::ShapeRef.new(shape: SparqlData, required: true, location_name: "data"))
    SparqlRecord.add_member(:op, Shapes::ShapeRef.new(shape: String, required: true, location_name: "op"))
    SparqlRecord.add_member(:is_last_op, Shapes::ShapeRef.new(shape: Boolean, location_name: "isLastOp"))
    SparqlRecord.struct_class = Types::SparqlRecord

    SparqlRecordsList.member = Shapes::ShapeRef.new(shape: SparqlRecord)

    StartLoaderJobInput.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    StartLoaderJobInput.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    StartLoaderJobInput.add_member(:s3_bucket_region, Shapes::ShapeRef.new(shape: S3BucketRegion, required: true, location_name: "region"))
    StartLoaderJobInput.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "iamRoleArn"))
    StartLoaderJobInput.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "mode"))
    StartLoaderJobInput.add_member(:fail_on_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "failOnError"))
    StartLoaderJobInput.add_member(:parallelism, Shapes::ShapeRef.new(shape: Parallelism, location_name: "parallelism"))
    StartLoaderJobInput.add_member(:parser_configuration, Shapes::ShapeRef.new(shape: StringValuedMap, location_name: "parserConfiguration"))
    StartLoaderJobInput.add_member(:update_single_cardinality_properties, Shapes::ShapeRef.new(shape: Boolean, location_name: "updateSingleCardinalityProperties"))
    StartLoaderJobInput.add_member(:queue_request, Shapes::ShapeRef.new(shape: Boolean, location_name: "queueRequest"))
    StartLoaderJobInput.add_member(:dependencies, Shapes::ShapeRef.new(shape: StringList, location_name: "dependencies"))
    StartLoaderJobInput.add_member(:user_provided_edge_ids, Shapes::ShapeRef.new(shape: Boolean, location_name: "userProvidedEdgeIds"))
    StartLoaderJobInput.struct_class = Types::StartLoaderJobInput

    StartLoaderJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    StartLoaderJobOutput.add_member(:payload, Shapes::ShapeRef.new(shape: StringValuedMap, required: true, location_name: "payload"))
    StartLoaderJobOutput.struct_class = Types::StartLoaderJobOutput

    StartMLDataProcessingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLDataProcessingJobInput.add_member(:previous_data_processing_job_id, Shapes::ShapeRef.new(shape: String, location_name: "previousDataProcessingJobId"))
    StartMLDataProcessingJobInput.add_member(:input_data_s3_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "inputDataS3Location"))
    StartMLDataProcessingJobInput.add_member(:processed_data_s3_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "processedDataS3Location"))
    StartMLDataProcessingJobInput.add_member(:sagemaker_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "sagemakerIamRoleArn"))
    StartMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "neptuneIamRoleArn"))
    StartMLDataProcessingJobInput.add_member(:processing_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "processingInstanceType"))
    StartMLDataProcessingJobInput.add_member(:processing_instance_volume_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "processingInstanceVolumeSizeInGB"))
    StartMLDataProcessingJobInput.add_member(:processing_time_out_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "processingTimeOutInSeconds"))
    StartMLDataProcessingJobInput.add_member(:model_type, Shapes::ShapeRef.new(shape: String, location_name: "modelType"))
    StartMLDataProcessingJobInput.add_member(:config_file_name, Shapes::ShapeRef.new(shape: String, location_name: "configFileName"))
    StartMLDataProcessingJobInput.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    StartMLDataProcessingJobInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    StartMLDataProcessingJobInput.add_member(:volume_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "volumeEncryptionKMSKey"))
    StartMLDataProcessingJobInput.add_member(:s3_output_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLDataProcessingJobInput.struct_class = Types::StartMLDataProcessingJobInput

    StartMLDataProcessingJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLDataProcessingJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StartMLDataProcessingJobOutput.add_member(:creation_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "creationTimeInMillis"))
    StartMLDataProcessingJobOutput.struct_class = Types::StartMLDataProcessingJobOutput

    StartMLModelTrainingJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLModelTrainingJobInput.add_member(:previous_model_training_job_id, Shapes::ShapeRef.new(shape: String, location_name: "previousModelTrainingJobId"))
    StartMLModelTrainingJobInput.add_member(:data_processing_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataProcessingJobId"))
    StartMLModelTrainingJobInput.add_member(:train_model_s3_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "trainModelS3Location"))
    StartMLModelTrainingJobInput.add_member(:sagemaker_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "sagemakerIamRoleArn"))
    StartMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "neptuneIamRoleArn"))
    StartMLModelTrainingJobInput.add_member(:base_processing_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "baseProcessingInstanceType"))
    StartMLModelTrainingJobInput.add_member(:training_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "trainingInstanceType"))
    StartMLModelTrainingJobInput.add_member(:training_instance_volume_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "trainingInstanceVolumeSizeInGB"))
    StartMLModelTrainingJobInput.add_member(:training_time_out_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "trainingTimeOutInSeconds"))
    StartMLModelTrainingJobInput.add_member(:max_hpo_number_of_training_jobs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxHPONumberOfTrainingJobs"))
    StartMLModelTrainingJobInput.add_member(:max_hpo_parallel_training_jobs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxHPOParallelTrainingJobs"))
    StartMLModelTrainingJobInput.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    StartMLModelTrainingJobInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    StartMLModelTrainingJobInput.add_member(:volume_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "volumeEncryptionKMSKey"))
    StartMLModelTrainingJobInput.add_member(:s3_output_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLModelTrainingJobInput.add_member(:enable_managed_spot_training, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableManagedSpotTraining"))
    StartMLModelTrainingJobInput.add_member(:custom_model_training_parameters, Shapes::ShapeRef.new(shape: CustomModelTrainingParameters, location_name: "customModelTrainingParameters"))
    StartMLModelTrainingJobInput.struct_class = Types::StartMLModelTrainingJobInput

    StartMLModelTrainingJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLModelTrainingJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StartMLModelTrainingJobOutput.add_member(:creation_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "creationTimeInMillis"))
    StartMLModelTrainingJobOutput.struct_class = Types::StartMLModelTrainingJobOutput

    StartMLModelTransformJobInput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLModelTransformJobInput.add_member(:data_processing_job_id, Shapes::ShapeRef.new(shape: String, location_name: "dataProcessingJobId"))
    StartMLModelTransformJobInput.add_member(:ml_model_training_job_id, Shapes::ShapeRef.new(shape: String, location_name: "mlModelTrainingJobId"))
    StartMLModelTransformJobInput.add_member(:training_job_name, Shapes::ShapeRef.new(shape: String, location_name: "trainingJobName"))
    StartMLModelTransformJobInput.add_member(:model_transform_output_s3_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelTransformOutputS3Location"))
    StartMLModelTransformJobInput.add_member(:sagemaker_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "sagemakerIamRoleArn"))
    StartMLModelTransformJobInput.add_member(:neptune_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "neptuneIamRoleArn"))
    StartMLModelTransformJobInput.add_member(:custom_model_transform_parameters, Shapes::ShapeRef.new(shape: CustomModelTransformParameters, location_name: "customModelTransformParameters"))
    StartMLModelTransformJobInput.add_member(:base_processing_instance_type, Shapes::ShapeRef.new(shape: String, location_name: "baseProcessingInstanceType"))
    StartMLModelTransformJobInput.add_member(:base_processing_instance_volume_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "baseProcessingInstanceVolumeSizeInGB"))
    StartMLModelTransformJobInput.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    StartMLModelTransformJobInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    StartMLModelTransformJobInput.add_member(:volume_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "volumeEncryptionKMSKey"))
    StartMLModelTransformJobInput.add_member(:s3_output_encryption_kms_key, Shapes::ShapeRef.new(shape: String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLModelTransformJobInput.struct_class = Types::StartMLModelTransformJobInput

    StartMLModelTransformJobOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartMLModelTransformJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    StartMLModelTransformJobOutput.add_member(:creation_time_in_millis, Shapes::ShapeRef.new(shape: Long, location_name: "creationTimeInMillis"))
    StartMLModelTransformJobOutput.struct_class = Types::StartMLModelTransformJobOutput

    Statistics.add_member(:auto_compute, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoCompute"))
    Statistics.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    Statistics.add_member(:statistics_id, Shapes::ShapeRef.new(shape: String, location_name: "statisticsId"))
    Statistics.add_member(:date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "date"))
    Statistics.add_member(:note, Shapes::ShapeRef.new(shape: String, location_name: "note"))
    Statistics.add_member(:signature_info, Shapes::ShapeRef.new(shape: StatisticsSummary, location_name: "signatureInfo"))
    Statistics.struct_class = Types::Statistics

    StatisticsNotAvailableException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    StatisticsNotAvailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    StatisticsNotAvailableException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    StatisticsNotAvailableException.struct_class = Types::StatisticsNotAvailableException

    StatisticsSummary.add_member(:signature_count, Shapes::ShapeRef.new(shape: Integer, location_name: "signatureCount"))
    StatisticsSummary.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "instanceCount"))
    StatisticsSummary.add_member(:predicate_count, Shapes::ShapeRef.new(shape: Integer, location_name: "predicateCount"))
    StatisticsSummary.struct_class = Types::StatisticsSummary

    StreamRecordsNotFoundException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    StreamRecordsNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    StreamRecordsNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    StreamRecordsNotFoundException.struct_class = Types::StreamRecordsNotFoundException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringValuedMap.key = Shapes::ShapeRef.new(shape: String)
    StringValuedMap.value = Shapes::ShapeRef.new(shape: String)

    SubjectStructure.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    SubjectStructure.add_member(:predicates, Shapes::ShapeRef.new(shape: Predicates, location_name: "predicates"))
    SubjectStructure.struct_class = Types::SubjectStructure

    SubjectStructures.member = Shapes::ShapeRef.new(shape: SubjectStructure)

    ThrottlingException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeLimitExceededException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    TimeLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    TimeLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    TimeLimitExceededException.struct_class = Types::TimeLimitExceededException

    TooManyRequestsException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    TooManyRequestsException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    TooManyRequestsException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnsupportedOperationException.add_member(:detailed_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detailedMessage"))
    UnsupportedOperationException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "requestId"))
    UnsupportedOperationException.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-08-01"

      api.metadata = {
        "apiVersion" => "2023-08-01",
        "endpointPrefix" => "neptune-db",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon NeptuneData",
        "serviceId" => "neptunedata",
        "signatureVersion" => "v4",
        "signingName" => "neptune-db",
        "uid" => "neptunedata-2023-08-01",
      }

      api.add_operation(:cancel_gremlin_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelGremlinQuery"
        o.http_method = "DELETE"
        o.http_request_uri = "/gremlin/status/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: CancelGremlinQueryInput)
        o.output = Shapes::ShapeRef.new(shape: CancelGremlinQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:cancel_loader_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelLoaderJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/loader/{loadId}"
        o.input = Shapes::ShapeRef.new(shape: CancelLoaderJobInput)
        o.output = Shapes::ShapeRef.new(shape: CancelLoaderJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: BulkLoadIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: LoadUrlAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:cancel_ml_data_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMLDataProcessingJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/ml/dataprocessing/{id}"
        o.input = Shapes::ShapeRef.new(shape: CancelMLDataProcessingJobInput)
        o.output = Shapes::ShapeRef.new(shape: CancelMLDataProcessingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:cancel_ml_model_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMLModelTrainingJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/ml/modeltraining/{id}"
        o.input = Shapes::ShapeRef.new(shape: CancelMLModelTrainingJobInput)
        o.output = Shapes::ShapeRef.new(shape: CancelMLModelTrainingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:cancel_ml_model_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMLModelTransformJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/ml/modeltransform/{id}"
        o.input = Shapes::ShapeRef.new(shape: CancelMLModelTransformJobInput)
        o.output = Shapes::ShapeRef.new(shape: CancelMLModelTransformJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:cancel_open_cypher_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelOpenCypherQuery"
        o.http_method = "DELETE"
        o.http_request_uri = "/opencypher/status/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: CancelOpenCypherQueryInput)
        o.output = Shapes::ShapeRef.new(shape: CancelOpenCypherQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumericDataException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:create_ml_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMLEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/ml/endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateMLEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMLEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_ml_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMLEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/ml/endpoints/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMLEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMLEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_propertygraph_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePropertygraphStatistics"
        o.http_method = "DELETE"
        o.http_request_uri = "/propertygraph/statistics"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DeletePropertygraphStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:delete_sparql_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSparqlStatistics"
        o.http_method = "DELETE"
        o.http_request_uri = "/sparql/statistics"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DeleteSparqlStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_fast_reset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteFastReset"
        o.http_method = "POST"
        o.http_request_uri = "/system"
        o.input = Shapes::ShapeRef.new(shape: ExecuteFastResetInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteFastResetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerShutdownException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_gremlin_explain_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteGremlinExplainQuery"
        o.http_method = "POST"
        o.http_request_uri = "/gremlin/explain"
        o.input = Shapes::ShapeRef.new(shape: ExecuteGremlinExplainQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteGremlinExplainQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: QueryTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: CancelledByUserException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_gremlin_profile_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteGremlinProfileQuery"
        o.http_method = "POST"
        o.http_request_uri = "/gremlin/profile"
        o.input = Shapes::ShapeRef.new(shape: ExecuteGremlinProfileQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteGremlinProfileQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: QueryTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: CancelledByUserException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_gremlin_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteGremlinQuery"
        o.http_method = "POST"
        o.http_request_uri = "/gremlin"
        o.input = Shapes::ShapeRef.new(shape: ExecuteGremlinQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteGremlinQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: QueryTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: CancelledByUserException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_open_cypher_explain_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteOpenCypherExplainQuery"
        o.http_method = "POST"
        o.http_request_uri = "/opencypher/explain"
        o.input = Shapes::ShapeRef.new(shape: ExecuteOpenCypherExplainQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteOpenCypherExplainQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: QueryTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumericDataException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: CancelledByUserException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:execute_open_cypher_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteOpenCypherQuery"
        o.http_method = "POST"
        o.http_request_uri = "/opencypher"
        o.input = Shapes::ShapeRef.new(shape: ExecuteOpenCypherQueryInput)
        o.output = Shapes::ShapeRef.new(shape: ExecuteOpenCypherQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: QueryTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumericDataException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: CancelledByUserException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_engine_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEngineStatus"
        o.http_method = "GET"
        o.http_request_uri = "/status"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetEngineStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_gremlin_query_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGremlinQueryStatus"
        o.http_method = "GET"
        o.http_request_uri = "/gremlin/status/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: GetGremlinQueryStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetGremlinQueryStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_loader_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoaderJobStatus"
        o.http_method = "GET"
        o.http_request_uri = "/loader/{loadId}"
        o.input = Shapes::ShapeRef.new(shape: GetLoaderJobStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetLoaderJobStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: BulkLoadIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: LoadUrlAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_ml_data_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLDataProcessingJob"
        o.http_method = "GET"
        o.http_request_uri = "/ml/dataprocessing/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMLDataProcessingJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetMLDataProcessingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_ml_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/ml/endpoints/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMLEndpointInput)
        o.output = Shapes::ShapeRef.new(shape: GetMLEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_ml_model_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLModelTrainingJob"
        o.http_method = "GET"
        o.http_request_uri = "/ml/modeltraining/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMLModelTrainingJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetMLModelTrainingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_ml_model_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMLModelTransformJob"
        o.http_method = "GET"
        o.http_request_uri = "/ml/modeltransform/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMLModelTransformJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetMLModelTransformJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_open_cypher_query_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpenCypherQueryStatus"
        o.http_method = "GET"
        o.http_request_uri = "/opencypher/status/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: GetOpenCypherQueryStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetOpenCypherQueryStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumericDataException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_propertygraph_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPropertygraphStatistics"
        o.http_method = "GET"
        o.http_request_uri = "/propertygraph/statistics"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetPropertygraphStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_propertygraph_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPropertygraphStream"
        o.http_method = "GET"
        o.http_request_uri = "/propertygraph/stream"
        o.input = Shapes::ShapeRef.new(shape: GetPropertygraphStreamInput)
        o.output = Shapes::ShapeRef.new(shape: GetPropertygraphStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredStreamException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: StreamRecordsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_propertygraph_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPropertygraphSummary"
        o.http_method = "GET"
        o.http_request_uri = "/propertygraph/statistics/summary"
        o.input = Shapes::ShapeRef.new(shape: GetPropertygraphSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetPropertygraphSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_rdf_graph_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRDFGraphSummary"
        o.http_method = "GET"
        o.http_request_uri = "/rdf/statistics/summary"
        o.input = Shapes::ShapeRef.new(shape: GetRDFGraphSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetRDFGraphSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_sparql_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSparqlStatistics"
        o.http_method = "GET"
        o.http_request_uri = "/sparql/statistics"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetSparqlStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:get_sparql_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSparqlStream"
        o.http_method = "GET"
        o.http_request_uri = "/sparql/stream"
        o.input = Shapes::ShapeRef.new(shape: GetSparqlStreamInput)
        o.output = Shapes::ShapeRef.new(shape: GetSparqlStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredStreamException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MemoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: StreamRecordsNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_gremlin_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGremlinQueries"
        o.http_method = "GET"
        o.http_request_uri = "/gremlin/status"
        o.input = Shapes::ShapeRef.new(shape: ListGremlinQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGremlinQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:list_loader_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLoaderJobs"
        o.http_method = "GET"
        o.http_request_uri = "/loader"
        o.input = Shapes::ShapeRef.new(shape: ListLoaderJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLoaderJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: BulkLoadIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LoadUrlAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_ml_data_processing_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLDataProcessingJobs"
        o.http_method = "GET"
        o.http_request_uri = "/ml/dataprocessing"
        o.input = Shapes::ShapeRef.new(shape: ListMLDataProcessingJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMLDataProcessingJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_ml_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/ml/endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListMLEndpointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMLEndpointsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_ml_model_training_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLModelTrainingJobs"
        o.http_method = "GET"
        o.http_request_uri = "/ml/modeltraining"
        o.input = Shapes::ShapeRef.new(shape: ListMLModelTrainingJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMLModelTrainingJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_ml_model_transform_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMLModelTransformJobs"
        o.http_method = "GET"
        o.http_request_uri = "/ml/modeltransform"
        o.input = Shapes::ShapeRef.new(shape: ListMLModelTransformJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMLModelTransformJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_open_cypher_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpenCypherQueries"
        o.http_method = "GET"
        o.http_request_uri = "/opencypher/status"
        o.input = Shapes::ShapeRef.new(shape: ListOpenCypherQueriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListOpenCypherQueriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNumericDataException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: FailureByQueryException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ParsingException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: TimeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:manage_propertygraph_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ManagePropertygraphStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/propertygraph/statistics"
        o.input = Shapes::ShapeRef.new(shape: ManagePropertygraphStatisticsInput)
        o.output = Shapes::ShapeRef.new(shape: ManagePropertygraphStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:manage_sparql_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ManageSparqlStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/sparql/statistics"
        o.input = Shapes::ShapeRef.new(shape: ManageSparqlStatisticsInput)
        o.output = Shapes::ShapeRef.new(shape: ManageSparqlStatisticsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: StatisticsNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ReadOnlyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:start_loader_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLoaderJob"
        o.http_method = "POST"
        o.http_request_uri = "/loader"
        o.input = Shapes::ShapeRef.new(shape: StartLoaderJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartLoaderJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: BulkLoadIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: LoadUrlAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: S3Exception)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
      end)

      api.add_operation(:start_ml_data_processing_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMLDataProcessingJob"
        o.http_method = "POST"
        o.http_request_uri = "/ml/dataprocessing"
        o.input = Shapes::ShapeRef.new(shape: StartMLDataProcessingJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartMLDataProcessingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_ml_model_training_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMLModelTrainingJob"
        o.http_method = "POST"
        o.http_request_uri = "/ml/modeltraining"
        o.input = Shapes::ShapeRef.new(shape: StartMLModelTrainingJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartMLModelTrainingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_ml_model_transform_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMLModelTransformJob"
        o.http_method = "POST"
        o.http_request_uri = "/ml/modeltransform"
        o.input = Shapes::ShapeRef.new(shape: StartMLModelTransformJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartMLModelTransformJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MLResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionsFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: MissingParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
