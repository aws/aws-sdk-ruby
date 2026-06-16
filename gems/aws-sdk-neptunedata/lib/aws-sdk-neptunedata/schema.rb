# frozen_string_literal: true

# This is generated code!

module Aws::Neptunedata
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#Action", name: "Action")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BulkLoadIdNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#BulkLoadIdNotFoundException", name: "BulkLoadIdNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404, "smithy.api#retryable" => {}})
    CancelGremlinQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelGremlinQueryInput", name: "CancelGremlinQueryInput")
    CancelGremlinQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelGremlinQueryOutput", name: "CancelGremlinQueryOutput")
    CancelLoaderJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelLoaderJobInput", name: "CancelLoaderJobInput")
    CancelLoaderJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelLoaderJobOutput", name: "CancelLoaderJobOutput")
    CancelMLDataProcessingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLDataProcessingJobInput", name: "CancelMLDataProcessingJobInput")
    CancelMLDataProcessingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLDataProcessingJobOutput", name: "CancelMLDataProcessingJobOutput")
    CancelMLModelTrainingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLModelTrainingJobInput", name: "CancelMLModelTrainingJobInput")
    CancelMLModelTrainingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLModelTrainingJobOutput", name: "CancelMLModelTrainingJobOutput")
    CancelMLModelTransformJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLModelTransformJobInput", name: "CancelMLModelTransformJobInput")
    CancelMLModelTransformJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelMLModelTransformJobOutput", name: "CancelMLModelTransformJobOutput")
    CancelOpenCypherQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelOpenCypherQueryInput", name: "CancelOpenCypherQueryInput")
    CancelOpenCypherQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelOpenCypherQueryOutput", name: "CancelOpenCypherQueryOutput")
    CancelledByUserException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CancelledByUserException", name: "CancelledByUserException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Classes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#Classes", name: "Classes")
    ClientTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ClientTimeoutException", name: "ClientTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#retryable" => {}})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ConstraintViolationException", name: "ConstraintViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    CreateMLEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CreateMLEndpointInput", name: "CreateMLEndpointInput")
    CreateMLEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CreateMLEndpointOutput", name: "CreateMLEndpointOutput")
    CustomModelTrainingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CustomModelTrainingParameters", name: "CustomModelTrainingParameters")
    CustomModelTransformParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#CustomModelTransformParameters", name: "CustomModelTransformParameters")
    DeleteMLEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#DeleteMLEndpointInput", name: "DeleteMLEndpointInput")
    DeleteMLEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#DeleteMLEndpointOutput", name: "DeleteMLEndpointOutput")
    DeletePropertygraphStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#DeletePropertygraphStatisticsOutput", name: "DeletePropertygraphStatisticsOutput")
    DeleteSparqlStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#DeleteSparqlStatisticsOutput", name: "DeleteSparqlStatisticsOutput")
    DeleteStatisticsValueMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#DeleteStatisticsValueMap", name: "DeleteStatisticsValueMap")
    DocumentValuedMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.neptunedata#DocumentValuedMap", name: "DocumentValuedMap")
    EdgeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#EdgeLabels", name: "EdgeLabels")
    EdgeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#EdgeProperties", name: "EdgeProperties")
    EdgeStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#EdgeStructure", name: "EdgeStructure")
    EdgeStructures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#EdgeStructures", name: "EdgeStructures")
    Encoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#Encoding", name: "Encoding")
    ExecuteFastResetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteFastResetInput", name: "ExecuteFastResetInput")
    ExecuteFastResetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteFastResetOutput", name: "ExecuteFastResetOutput")
    ExecuteGremlinExplainQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinExplainQueryInput", name: "ExecuteGremlinExplainQueryInput")
    ExecuteGremlinExplainQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinExplainQueryOutput", name: "ExecuteGremlinExplainQueryOutput")
    ExecuteGremlinProfileQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinProfileQueryInput", name: "ExecuteGremlinProfileQueryInput")
    ExecuteGremlinProfileQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinProfileQueryOutput", name: "ExecuteGremlinProfileQueryOutput")
    ExecuteGremlinQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinQueryInput", name: "ExecuteGremlinQueryInput")
    ExecuteGremlinQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteGremlinQueryOutput", name: "ExecuteGremlinQueryOutput")
    ExecuteOpenCypherExplainQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteOpenCypherExplainQueryInput", name: "ExecuteOpenCypherExplainQueryInput")
    ExecuteOpenCypherExplainQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteOpenCypherExplainQueryOutput", name: "ExecuteOpenCypherExplainQueryOutput")
    ExecuteOpenCypherQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteOpenCypherQueryInput", name: "ExecuteOpenCypherQueryInput")
    ExecuteOpenCypherQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExecuteOpenCypherQueryOutput", name: "ExecuteOpenCypherQueryOutput")
    ExpiredStreamException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ExpiredStreamException", name: "ExpiredStreamException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    FailureByQueryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#FailureByQueryException", name: "FailureByQueryException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    FastResetToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#FastResetToken", name: "FastResetToken")
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#Format", name: "Format")
    GetEngineStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetEngineStatusOutput", name: "GetEngineStatusOutput")
    GetGremlinQueryStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetGremlinQueryStatusInput", name: "GetGremlinQueryStatusInput")
    GetGremlinQueryStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetGremlinQueryStatusOutput", name: "GetGremlinQueryStatusOutput")
    GetLoaderJobStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetLoaderJobStatusInput", name: "GetLoaderJobStatusInput")
    GetLoaderJobStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetLoaderJobStatusOutput", name: "GetLoaderJobStatusOutput")
    GetMLDataProcessingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLDataProcessingJobInput", name: "GetMLDataProcessingJobInput")
    GetMLDataProcessingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLDataProcessingJobOutput", name: "GetMLDataProcessingJobOutput")
    GetMLEndpointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLEndpointInput", name: "GetMLEndpointInput")
    GetMLEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLEndpointOutput", name: "GetMLEndpointOutput")
    GetMLModelTrainingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLModelTrainingJobInput", name: "GetMLModelTrainingJobInput")
    GetMLModelTrainingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLModelTrainingJobOutput", name: "GetMLModelTrainingJobOutput")
    GetMLModelTransformJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLModelTransformJobInput", name: "GetMLModelTransformJobInput")
    GetMLModelTransformJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetMLModelTransformJobOutput", name: "GetMLModelTransformJobOutput")
    GetOpenCypherQueryStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetOpenCypherQueryStatusInput", name: "GetOpenCypherQueryStatusInput")
    GetOpenCypherQueryStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetOpenCypherQueryStatusOutput", name: "GetOpenCypherQueryStatusOutput")
    GetPropertygraphStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetPropertygraphStatisticsOutput", name: "GetPropertygraphStatisticsOutput")
    GetPropertygraphStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetPropertygraphStreamInput", name: "GetPropertygraphStreamInput")
    GetPropertygraphStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetPropertygraphStreamOutput", name: "GetPropertygraphStreamOutput")
    GetPropertygraphSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetPropertygraphSummaryInput", name: "GetPropertygraphSummaryInput")
    GetPropertygraphSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetPropertygraphSummaryOutput", name: "GetPropertygraphSummaryOutput")
    GetRDFGraphSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetRDFGraphSummaryInput", name: "GetRDFGraphSummaryInput")
    GetRDFGraphSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetRDFGraphSummaryOutput", name: "GetRDFGraphSummaryOutput")
    GetSparqlStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetSparqlStatisticsOutput", name: "GetSparqlStatisticsOutput")
    GetSparqlStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetSparqlStreamInput", name: "GetSparqlStreamInput")
    GetSparqlStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GetSparqlStreamOutput", name: "GetSparqlStreamOutput")
    GraphSummaryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#GraphSummaryType", name: "GraphSummaryType")
    GremlinQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#GremlinQueries", name: "GremlinQueries")
    GremlinQueryStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GremlinQueryStatus", name: "GremlinQueryStatus")
    GremlinQueryStatusAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#GremlinQueryStatusAttributes", name: "GremlinQueryStatusAttributes")
    IllegalArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#IllegalArgumentException", name: "IllegalArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNumericDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#InvalidNumericDataException", name: "InvalidNumericDataException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IteratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#IteratorType", name: "IteratorType")
    ListGremlinQueriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListGremlinQueriesInput", name: "ListGremlinQueriesInput")
    ListGremlinQueriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListGremlinQueriesOutput", name: "ListGremlinQueriesOutput")
    ListLoaderJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListLoaderJobsInput", name: "ListLoaderJobsInput")
    ListLoaderJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListLoaderJobsOutput", name: "ListLoaderJobsOutput")
    ListMLDataProcessingJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLDataProcessingJobsInput", name: "ListMLDataProcessingJobsInput")
    ListMLDataProcessingJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLDataProcessingJobsOutput", name: "ListMLDataProcessingJobsOutput")
    ListMLEndpointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLEndpointsInput", name: "ListMLEndpointsInput")
    ListMLEndpointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLEndpointsOutput", name: "ListMLEndpointsOutput")
    ListMLModelTrainingJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLModelTrainingJobsInput", name: "ListMLModelTrainingJobsInput")
    ListMLModelTrainingJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLModelTrainingJobsOutput", name: "ListMLModelTrainingJobsOutput")
    ListMLModelTransformJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLModelTransformJobsInput", name: "ListMLModelTransformJobsInput")
    ListMLModelTransformJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListMLModelTransformJobsOutput", name: "ListMLModelTransformJobsOutput")
    ListOpenCypherQueriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListOpenCypherQueriesInput", name: "ListOpenCypherQueriesInput")
    ListOpenCypherQueriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ListOpenCypherQueriesOutput", name: "ListOpenCypherQueriesOutput")
    LoadUrlAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#LoadUrlAccessDeniedException", name: "LoadUrlAccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoaderIdResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#LoaderIdResult", name: "LoaderIdResult")
    LongValuedMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.neptunedata#LongValuedMap", name: "LongValuedMap")
    LongValuedMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#LongValuedMapList", name: "LongValuedMapList")
    MLResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MLResourceNotFoundException", name: "MLResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    MalformedQueryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MalformedQueryException", name: "MalformedQueryException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ManagePropertygraphStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ManagePropertygraphStatisticsInput", name: "ManagePropertygraphStatisticsInput")
    ManagePropertygraphStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ManagePropertygraphStatisticsOutput", name: "ManagePropertygraphStatisticsOutput")
    ManageSparqlStatisticsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ManageSparqlStatisticsInput", name: "ManageSparqlStatisticsInput")
    ManageSparqlStatisticsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ManageSparqlStatisticsOutput", name: "ManageSparqlStatisticsOutput")
    MemoryLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MemoryLimitExceededException", name: "MemoryLimitExceededException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    MethodNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MethodNotAllowedException", name: "MethodNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    MissingParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MissingParameterException", name: "MissingParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MlConfigDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MlConfigDefinition", name: "MlConfigDefinition")
    MlModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#MlModels", name: "MlModels")
    MlResourceDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#MlResourceDefinition", name: "MlResourceDefinition")
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#Mode", name: "Mode")
    Models = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#Models", name: "Models")
    NodeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#NodeLabels", name: "NodeLabels")
    NodeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#NodeProperties", name: "NodeProperties")
    NodeStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#NodeStructure", name: "NodeStructure")
    NodeStructures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#NodeStructures", name: "NodeStructures")
    OpenCypherExplainMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#OpenCypherExplainMode", name: "OpenCypherExplainMode")
    OpenCypherQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#OpenCypherQueries", name: "OpenCypherQueries")
    OutgoingEdgeLabels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#OutgoingEdgeLabels", name: "OutgoingEdgeLabels")
    Parallelism = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#Parallelism", name: "Parallelism")
    ParsingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ParsingException", name: "ParsingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.neptunedata#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PreconditionsFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#PreconditionsFailedException", name: "PreconditionsFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Predicates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#Predicates", name: "Predicates")
    PropertygraphData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#PropertygraphData", name: "PropertygraphData")
    PropertygraphRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#PropertygraphRecord", name: "PropertygraphRecord")
    PropertygraphRecordsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#PropertygraphRecordsList", name: "PropertygraphRecordsList")
    PropertygraphSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#PropertygraphSummary", name: "PropertygraphSummary")
    PropertygraphSummaryValueMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#PropertygraphSummaryValueMap", name: "PropertygraphSummaryValueMap")
    QueryEvalStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#QueryEvalStats", name: "QueryEvalStats")
    QueryLanguageVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#QueryLanguageVersion", name: "QueryLanguageVersion")
    QueryLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#QueryLimitExceededException", name: "QueryLimitExceededException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    QueryLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#QueryLimitException", name: "QueryLimitException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    QueryTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#QueryTooLargeException", name: "QueryTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RDFGraphSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#RDFGraphSummary", name: "RDFGraphSummary")
    RDFGraphSummaryValueMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#RDFGraphSummaryValueMap", name: "RDFGraphSummaryValueMap")
    ReadOnlyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ReadOnlyViolationException", name: "ReadOnlyViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RefreshStatisticsIdMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#RefreshStatisticsIdMap", name: "RefreshStatisticsIdMap")
    ReportAsText = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.neptunedata#ReportAsText", name: "ReportAsText", traits: {"smithy.api#mediaType" => "text/plain"})
    S3BucketRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#S3BucketRegion", name: "S3BucketRegion")
    S3Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#S3Exception", name: "S3Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    ServerShutdownException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ServerShutdownException", name: "ServerShutdownException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SparqlData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#SparqlData", name: "SparqlData")
    SparqlRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#SparqlRecord", name: "SparqlRecord")
    SparqlRecordsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#SparqlRecordsList", name: "SparqlRecordsList")
    StartLoaderJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartLoaderJobInput", name: "StartLoaderJobInput")
    StartLoaderJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartLoaderJobOutput", name: "StartLoaderJobOutput")
    StartMLDataProcessingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLDataProcessingJobInput", name: "StartMLDataProcessingJobInput")
    StartMLDataProcessingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLDataProcessingJobOutput", name: "StartMLDataProcessingJobOutput")
    StartMLModelTrainingJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLModelTrainingJobInput", name: "StartMLModelTrainingJobInput")
    StartMLModelTrainingJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLModelTrainingJobOutput", name: "StartMLModelTrainingJobOutput")
    StartMLModelTransformJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLModelTransformJobInput", name: "StartMLModelTransformJobInput")
    StartMLModelTransformJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StartMLModelTransformJobOutput", name: "StartMLModelTransformJobOutput")
    Statistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#Statistics", name: "Statistics")
    StatisticsAutoGenerationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.neptunedata#StatisticsAutoGenerationMode", name: "StatisticsAutoGenerationMode")
    StatisticsNotAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StatisticsNotAvailableException", name: "StatisticsNotAvailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StatisticsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StatisticsSummary", name: "StatisticsSummary")
    StreamRecordsNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#StreamRecordsNotFoundException", name: "StreamRecordsNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#StringList", name: "StringList")
    StringValuedMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.neptunedata#StringValuedMap", name: "StringValuedMap")
    SubjectStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#SubjectStructure", name: "SubjectStructure")
    SubjectStructures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.neptunedata#SubjectStructures", name: "SubjectStructures")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    TimeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#TimeLimitExceededException", name: "TimeLimitExceededException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.neptunedata#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:initialize_reset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZE_RESET", traits: {"smithy.api#enumValue" => "initiateDatabaseReset"}))
    Action.add_member(:perform_reset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERFORM_RESET", traits: {"smithy.api#enumValue" => "performDatabaseReset"}))
    BadRequestException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    BadRequestException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    BulkLoadIdNotFoundException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    BulkLoadIdNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    BulkLoadIdNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    BulkLoadIdNotFoundException.type = Types::BulkLoadIdNotFoundException
    CancelGremlinQueryInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelGremlinQueryInput.type = Types::CancelGremlinQueryInput
    CancelGremlinQueryOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelGremlinQueryOutput.type = Types::CancelGremlinQueryOutput
    CancelLoaderJobInput.add_member(:load_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "loadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelLoaderJobInput.type = Types::CancelLoaderJobInput
    CancelLoaderJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelLoaderJobOutput.type = Types::CancelLoaderJobOutput
    CancelMLDataProcessingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    CancelMLDataProcessingJobInput.add_member(:clean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "clean", traits: {"smithy.api#httpQuery" => "clean"}))
    CancelMLDataProcessingJobInput.type = Types::CancelMLDataProcessingJobInput
    CancelMLDataProcessingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelMLDataProcessingJobOutput.type = Types::CancelMLDataProcessingJobOutput
    CancelMLModelTrainingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    CancelMLModelTrainingJobInput.add_member(:clean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "clean", traits: {"smithy.api#httpQuery" => "clean"}))
    CancelMLModelTrainingJobInput.type = Types::CancelMLModelTrainingJobInput
    CancelMLModelTrainingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelMLModelTrainingJobOutput.type = Types::CancelMLModelTrainingJobOutput
    CancelMLModelTransformJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMLModelTransformJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    CancelMLModelTransformJobInput.add_member(:clean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "clean", traits: {"smithy.api#httpQuery" => "clean"}))
    CancelMLModelTransformJobInput.type = Types::CancelMLModelTransformJobInput
    CancelMLModelTransformJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelMLModelTransformJobOutput.type = Types::CancelMLModelTransformJobOutput
    CancelOpenCypherQueryInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelOpenCypherQueryInput.add_member(:silent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "silent", traits: {"smithy.api#httpQuery" => "silent"}))
    CancelOpenCypherQueryInput.type = Types::CancelOpenCypherQueryInput
    CancelOpenCypherQueryOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    CancelOpenCypherQueryOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "payload"))
    CancelOpenCypherQueryOutput.type = Types::CancelOpenCypherQueryOutput
    CancelledByUserException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    CancelledByUserException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    CancelledByUserException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    CancelledByUserException.type = Types::CancelledByUserException
    Classes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    ClientTimeoutException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ClientTimeoutException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ClientTimeoutException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ClientTimeoutException.type = Types::ClientTimeoutException
    ConcurrentModificationException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConstraintViolationException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ConstraintViolationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ConstraintViolationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ConstraintViolationException.type = Types::ConstraintViolationException
    CreateMLEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    CreateMLEndpointInput.add_member(:ml_model_training_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mlModelTrainingJobId"))
    CreateMLEndpointInput.add_member(:ml_model_transform_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mlModelTransformJobId"))
    CreateMLEndpointInput.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "update"))
    CreateMLEndpointInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn"))
    CreateMLEndpointInput.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "modelName"))
    CreateMLEndpointInput.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "instanceType"))
    CreateMLEndpointInput.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "instanceCount"))
    CreateMLEndpointInput.add_member(:volume_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "volumeEncryptionKMSKey"))
    CreateMLEndpointInput.type = Types::CreateMLEndpointInput
    CreateMLEndpointOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    CreateMLEndpointOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    CreateMLEndpointOutput.add_member(:creation_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "creationTimeInMillis"))
    CreateMLEndpointOutput.type = Types::CreateMLEndpointOutput
    CustomModelTrainingParameters.add_member(:source_s3_directory_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sourceS3DirectoryPath", traits: {"smithy.api#required" => {}}))
    CustomModelTrainingParameters.add_member(:training_entry_point_script, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "trainingEntryPointScript"))
    CustomModelTrainingParameters.add_member(:transform_entry_point_script, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "transformEntryPointScript"))
    CustomModelTrainingParameters.type = Types::CustomModelTrainingParameters
    CustomModelTransformParameters.add_member(:source_s3_directory_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sourceS3DirectoryPath", traits: {"smithy.api#required" => {}}))
    CustomModelTransformParameters.add_member(:transform_entry_point_script, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "transformEntryPointScript"))
    CustomModelTransformParameters.type = Types::CustomModelTransformParameters
    DeleteMLEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMLEndpointInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    DeleteMLEndpointInput.add_member(:clean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "clean", traits: {"smithy.api#httpQuery" => "clean"}))
    DeleteMLEndpointInput.type = Types::DeleteMLEndpointInput
    DeleteMLEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    DeleteMLEndpointOutput.type = Types::DeleteMLEndpointOutput
    DeletePropertygraphStatisticsOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    DeletePropertygraphStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    DeletePropertygraphStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteStatisticsValueMap, location_name: "payload"))
    DeletePropertygraphStatisticsOutput.type = Types::DeletePropertygraphStatisticsOutput
    DeleteSparqlStatisticsOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    DeleteSparqlStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    DeleteSparqlStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteStatisticsValueMap, location_name: "payload"))
    DeleteSparqlStatisticsOutput.type = Types::DeleteSparqlStatisticsOutput
    DeleteStatisticsValueMap.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "active"))
    DeleteStatisticsValueMap.add_member(:statistics_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statisticsId"))
    DeleteStatisticsValueMap.type = Types::DeleteStatisticsValueMap
    DocumentValuedMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    DocumentValuedMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document)
    EdgeLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    EdgeProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    EdgeStructure.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "count"))
    EdgeStructure.add_member(:edge_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeProperties, location_name: "edgeProperties"))
    EdgeStructure.type = Types::EdgeStructure
    EdgeStructures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeStructure)
    Encoding.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GZIP", traits: {"smithy.api#enumValue" => "gzip"}))
    ExecuteFastResetInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, location_name: "action", traits: {"smithy.api#required" => {}}))
    ExecuteFastResetInput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "token"))
    ExecuteFastResetInput.type = Types::ExecuteFastResetInput
    ExecuteFastResetOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    ExecuteFastResetOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: FastResetToken, location_name: "payload"))
    ExecuteFastResetOutput.type = Types::ExecuteFastResetOutput
    ExecuteGremlinExplainQueryInput.add_member(:gremlin_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "gremlinQuery", traits: {"smithy.api#jsonName" => "gremlin", "smithy.api#required" => {}}))
    ExecuteGremlinExplainQueryInput.type = Types::ExecuteGremlinExplainQueryInput
    ExecuteGremlinExplainQueryOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportAsText, location_name: "output", traits: {"smithy.api#httpPayload" => {}}))
    ExecuteGremlinExplainQueryOutput[:http_payload] = :output
    ExecuteGremlinExplainQueryOutput[:http_payload_member] = ExecuteGremlinExplainQueryOutput.member(:output)
    ExecuteGremlinExplainQueryOutput.type = Types::ExecuteGremlinExplainQueryOutput
    ExecuteGremlinProfileQueryInput.add_member(:gremlin_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "gremlinQuery", traits: {"smithy.api#jsonName" => "gremlin", "smithy.api#required" => {}}))
    ExecuteGremlinProfileQueryInput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "results", traits: {"smithy.api#jsonName" => "profile.results"}))
    ExecuteGremlinProfileQueryInput.add_member(:chop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "chop", traits: {"smithy.api#jsonName" => "profile.chop"}))
    ExecuteGremlinProfileQueryInput.add_member(:serializer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serializer", traits: {"smithy.api#jsonName" => "profile.serializer"}))
    ExecuteGremlinProfileQueryInput.add_member(:index_ops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "indexOps", traits: {"smithy.api#jsonName" => "profile.indexOps"}))
    ExecuteGremlinProfileQueryInput.type = Types::ExecuteGremlinProfileQueryInput
    ExecuteGremlinProfileQueryOutput.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportAsText, location_name: "output", traits: {"smithy.api#httpPayload" => {}}))
    ExecuteGremlinProfileQueryOutput[:http_payload] = :output
    ExecuteGremlinProfileQueryOutput[:http_payload_member] = ExecuteGremlinProfileQueryOutput.member(:output)
    ExecuteGremlinProfileQueryOutput.type = Types::ExecuteGremlinProfileQueryOutput
    ExecuteGremlinQueryInput.add_member(:gremlin_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "gremlinQuery", traits: {"smithy.api#jsonName" => "gremlin", "smithy.api#required" => {}}))
    ExecuteGremlinQueryInput.add_member(:serializer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serializer", traits: {"smithy.api#httpHeader" => "accept"}))
    ExecuteGremlinQueryInput.type = Types::ExecuteGremlinQueryInput
    ExecuteGremlinQueryOutput.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId"))
    ExecuteGremlinQueryOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GremlinQueryStatusAttributes, location_name: "status"))
    ExecuteGremlinQueryOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "result"))
    ExecuteGremlinQueryOutput.add_member(:meta, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "meta"))
    ExecuteGremlinQueryOutput.type = Types::ExecuteGremlinQueryOutput
    ExecuteOpenCypherExplainQueryInput.add_member(:open_cypher_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "openCypherQuery", traits: {"smithy.api#jsonName" => "query", "smithy.api#required" => {}}))
    ExecuteOpenCypherExplainQueryInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "parameters"))
    ExecuteOpenCypherExplainQueryInput.add_member(:explain_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenCypherExplainMode, location_name: "explainMode", traits: {"smithy.api#jsonName" => "explain", "smithy.api#required" => {}}))
    ExecuteOpenCypherExplainQueryInput.type = Types::ExecuteOpenCypherExplainQueryInput
    ExecuteOpenCypherExplainQueryOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "results", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExecuteOpenCypherExplainQueryOutput[:http_payload] = :results
    ExecuteOpenCypherExplainQueryOutput[:http_payload_member] = ExecuteOpenCypherExplainQueryOutput.member(:results)
    ExecuteOpenCypherExplainQueryOutput.type = Types::ExecuteOpenCypherExplainQueryOutput
    ExecuteOpenCypherQueryInput.add_member(:open_cypher_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "openCypherQuery", traits: {"smithy.api#jsonName" => "query", "smithy.api#required" => {}}))
    ExecuteOpenCypherQueryInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "parameters"))
    ExecuteOpenCypherQueryInput.type = Types::ExecuteOpenCypherQueryInput
    ExecuteOpenCypherQueryOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "results", traits: {"smithy.api#required" => {}}))
    ExecuteOpenCypherQueryOutput.type = Types::ExecuteOpenCypherQueryOutput
    ExpiredStreamException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ExpiredStreamException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ExpiredStreamException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ExpiredStreamException.type = Types::ExpiredStreamException
    FailureByQueryException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    FailureByQueryException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    FailureByQueryException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    FailureByQueryException.type = Types::FailureByQueryException
    FastResetToken.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "token"))
    FastResetToken.type = Types::FastResetToken
    Format.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    Format.add_member(:opencypher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPENCYPHER", traits: {"smithy.api#enumValue" => "opencypher"}))
    Format.add_member(:ntriples, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NTRIPLES", traits: {"smithy.api#enumValue" => "ntriples"}))
    Format.add_member(:nquads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NQUADS", traits: {"smithy.api#enumValue" => "nquads"}))
    Format.add_member(:rdfxml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RDFXML", traits: {"smithy.api#enumValue" => "rdfxml"}))
    Format.add_member(:turtle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TURTLE", traits: {"smithy.api#enumValue" => "turtle"}))
    GetEngineStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    GetEngineStatusOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "startTime"))
    GetEngineStatusOutput.add_member(:db_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dbEngineVersion"))
    GetEngineStatusOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "role"))
    GetEngineStatusOutput.add_member(:dfe_query_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dfeQueryEngine"))
    GetEngineStatusOutput.add_member(:gremlin, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguageVersion, location_name: "gremlin"))
    GetEngineStatusOutput.add_member(:sparql, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguageVersion, location_name: "sparql"))
    GetEngineStatusOutput.add_member(:opencypher, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguageVersion, location_name: "opencypher"))
    GetEngineStatusOutput.add_member(:lab_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "labMode"))
    GetEngineStatusOutput.add_member(:rolling_back_trx_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "rollingBackTrxCount"))
    GetEngineStatusOutput.add_member(:rolling_back_trx_earliest_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "rollingBackTrxEarliestStartTime"))
    GetEngineStatusOutput.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentValuedMap, location_name: "features"))
    GetEngineStatusOutput.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "settings"))
    GetEngineStatusOutput.type = Types::GetEngineStatusOutput
    GetGremlinQueryStatusInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGremlinQueryStatusInput.type = Types::GetGremlinQueryStatusInput
    GetGremlinQueryStatusOutput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId"))
    GetGremlinQueryStatusOutput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryString"))
    GetGremlinQueryStatusOutput.add_member(:query_eval_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryEvalStats, location_name: "queryEvalStats"))
    GetGremlinQueryStatusOutput.type = Types::GetGremlinQueryStatusOutput
    GetLoaderJobStatusInput.add_member(:load_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "loadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLoaderJobStatusInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "details", traits: {"smithy.api#httpQuery" => "details"}))
    GetLoaderJobStatusInput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "errors", traits: {"smithy.api#httpQuery" => "errors"}))
    GetLoaderJobStatusInput.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "page", traits: {"smithy.api#httpQuery" => "page"}))
    GetLoaderJobStatusInput.add_member(:errors_per_page, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "errorsPerPage", traits: {"smithy.api#httpQuery" => "errorsPerPage"}))
    GetLoaderJobStatusInput.type = Types::GetLoaderJobStatusInput
    GetLoaderJobStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetLoaderJobStatusOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "payload", traits: {"smithy.api#required" => {}}))
    GetLoaderJobStatusOutput.type = Types::GetLoaderJobStatusOutput
    GetMLDataProcessingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    GetMLDataProcessingJobInput.type = Types::GetMLDataProcessingJobInput
    GetMLDataProcessingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    GetMLDataProcessingJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetMLDataProcessingJobOutput.add_member(:processing_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "processingJob"))
    GetMLDataProcessingJobOutput.type = Types::GetMLDataProcessingJobOutput
    GetMLEndpointInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLEndpointInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    GetMLEndpointInput.type = Types::GetMLEndpointInput
    GetMLEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    GetMLEndpointOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetMLEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "endpoint"))
    GetMLEndpointOutput.add_member(:endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MlConfigDefinition, location_name: "endpointConfig"))
    GetMLEndpointOutput.type = Types::GetMLEndpointOutput
    GetMLModelTrainingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    GetMLModelTrainingJobInput.type = Types::GetMLModelTrainingJobInput
    GetMLModelTrainingJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    GetMLModelTrainingJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetMLModelTrainingJobOutput.add_member(:processing_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "processingJob"))
    GetMLModelTrainingJobOutput.add_member(:hpo_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "hpoJob"))
    GetMLModelTrainingJobOutput.add_member(:model_transform_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "modelTransformJob"))
    GetMLModelTrainingJobOutput.add_member(:ml_models, ::Smithy::Schema::Shapes::MemberShape.new(target: MlModels, location_name: "mlModels"))
    GetMLModelTrainingJobOutput.type = Types::GetMLModelTrainingJobOutput
    GetMLModelTransformJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMLModelTransformJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    GetMLModelTransformJobInput.type = Types::GetMLModelTransformJobInput
    GetMLModelTransformJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    GetMLModelTransformJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    GetMLModelTransformJobOutput.add_member(:base_processing_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "baseProcessingJob"))
    GetMLModelTransformJobOutput.add_member(:remote_model_transform_job, ::Smithy::Schema::Shapes::MemberShape.new(target: MlResourceDefinition, location_name: "remoteModelTransformJob"))
    GetMLModelTransformJobOutput.add_member(:models, ::Smithy::Schema::Shapes::MemberShape.new(target: Models, location_name: "models"))
    GetMLModelTransformJobOutput.type = Types::GetMLModelTransformJobOutput
    GetOpenCypherQueryStatusInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOpenCypherQueryStatusInput.type = Types::GetOpenCypherQueryStatusInput
    GetOpenCypherQueryStatusOutput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId"))
    GetOpenCypherQueryStatusOutput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryString"))
    GetOpenCypherQueryStatusOutput.add_member(:query_eval_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryEvalStats, location_name: "queryEvalStats"))
    GetOpenCypherQueryStatusOutput.type = Types::GetOpenCypherQueryStatusOutput
    GetPropertygraphStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, location_name: "payload", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStatisticsOutput.type = Types::GetPropertygraphStatisticsOutput
    GetPropertygraphStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetPropertygraphStreamInput.add_member(:iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IteratorType, location_name: "iteratorType", traits: {"smithy.api#httpQuery" => "iteratorType"}))
    GetPropertygraphStreamInput.add_member(:commit_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "commitNum", traits: {"smithy.api#httpQuery" => "commitNum"}))
    GetPropertygraphStreamInput.add_member(:op_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "opNum", traits: {"smithy.api#httpQuery" => "opNum"}))
    GetPropertygraphStreamInput.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: Encoding, location_name: "encoding", traits: {"smithy.api#httpHeader" => "Accept-Encoding"}))
    GetPropertygraphStreamInput.type = Types::GetPropertygraphStreamInput
    GetPropertygraphStreamOutput.add_member(:last_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "lastEventId", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStreamOutput.add_member(:last_trx_timestamp_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "lastTrxTimestampInMillis", traits: {"smithy.api#jsonName" => "lastTrxTimestamp", "smithy.api#required" => {}}))
    GetPropertygraphStreamOutput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "format", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStreamOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertygraphRecordsList, location_name: "records", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStreamOutput.add_member(:total_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalRecords", traits: {"smithy.api#required" => {}}))
    GetPropertygraphStreamOutput.type = Types::GetPropertygraphStreamOutput
    GetPropertygraphSummaryInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphSummaryType, location_name: "mode", traits: {"smithy.api#default" => "basic", "smithy.api#httpQuery" => "mode"}))
    GetPropertygraphSummaryInput.type = Types::GetPropertygraphSummaryInput
    GetPropertygraphSummaryOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    GetPropertygraphSummaryOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertygraphSummaryValueMap, location_name: "payload"))
    GetPropertygraphSummaryOutput.type = Types::GetPropertygraphSummaryOutput
    GetRDFGraphSummaryInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphSummaryType, location_name: "mode", traits: {"smithy.api#default" => "basic", "smithy.api#httpQuery" => "mode"}))
    GetRDFGraphSummaryInput.type = Types::GetRDFGraphSummaryInput
    GetRDFGraphSummaryOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    GetRDFGraphSummaryOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: RDFGraphSummaryValueMap, location_name: "payload"))
    GetRDFGraphSummaryOutput.type = Types::GetRDFGraphSummaryOutput
    GetSparqlStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetSparqlStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, location_name: "payload", traits: {"smithy.api#required" => {}}))
    GetSparqlStatisticsOutput.type = Types::GetSparqlStatisticsOutput
    GetSparqlStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetSparqlStreamInput.add_member(:iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IteratorType, location_name: "iteratorType", traits: {"smithy.api#httpQuery" => "iteratorType"}))
    GetSparqlStreamInput.add_member(:commit_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "commitNum", traits: {"smithy.api#httpQuery" => "commitNum"}))
    GetSparqlStreamInput.add_member(:op_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "opNum", traits: {"smithy.api#httpQuery" => "opNum"}))
    GetSparqlStreamInput.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: Encoding, location_name: "encoding", traits: {"smithy.api#httpHeader" => "Accept-Encoding"}))
    GetSparqlStreamInput.type = Types::GetSparqlStreamInput
    GetSparqlStreamOutput.add_member(:last_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "lastEventId", traits: {"smithy.api#required" => {}}))
    GetSparqlStreamOutput.add_member(:last_trx_timestamp_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "lastTrxTimestampInMillis", traits: {"smithy.api#jsonName" => "lastTrxTimestamp", "smithy.api#required" => {}}))
    GetSparqlStreamOutput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "format", traits: {"smithy.api#required" => {}}))
    GetSparqlStreamOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: SparqlRecordsList, location_name: "records", traits: {"smithy.api#required" => {}}))
    GetSparqlStreamOutput.add_member(:total_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalRecords", traits: {"smithy.api#required" => {}}))
    GetSparqlStreamOutput.type = Types::GetSparqlStreamOutput
    GraphSummaryType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "basic"}))
    GraphSummaryType.add_member(:detailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DETAILED", traits: {"smithy.api#enumValue" => "detailed"}))
    GremlinQueries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GremlinQueryStatus)
    GremlinQueryStatus.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId"))
    GremlinQueryStatus.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryString"))
    GremlinQueryStatus.add_member(:query_eval_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryEvalStats, location_name: "queryEvalStats"))
    GremlinQueryStatus.type = Types::GremlinQueryStatus
    GremlinQueryStatusAttributes.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    GremlinQueryStatusAttributes.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "code"))
    GremlinQueryStatusAttributes.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "attributes"))
    GremlinQueryStatusAttributes.type = Types::GremlinQueryStatusAttributes
    IllegalArgumentException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    IllegalArgumentException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    IllegalArgumentException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    IllegalArgumentException.type = Types::IllegalArgumentException
    InternalFailureException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    InternalFailureException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    InternalFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    InternalFailureException.type = Types::InternalFailureException
    InvalidArgumentException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    InvalidArgumentException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    InvalidArgumentException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidNumericDataException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    InvalidNumericDataException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    InvalidNumericDataException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    InvalidNumericDataException.type = Types::InvalidNumericDataException
    InvalidParameterException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    IteratorType.add_member(:at_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AT_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    IteratorType.add_member(:after_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AFTER_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    IteratorType.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    IteratorType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ListGremlinQueriesInput.add_member(:include_waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "includeWaiting", traits: {"smithy.api#httpQuery" => "includeWaiting"}))
    ListGremlinQueriesInput.type = Types::ListGremlinQueriesInput
    ListGremlinQueriesOutput.add_member(:accepted_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "acceptedQueryCount"))
    ListGremlinQueriesOutput.add_member(:running_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "runningQueryCount"))
    ListGremlinQueriesOutput.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: GremlinQueries, location_name: "queries"))
    ListGremlinQueriesOutput.type = Types::ListGremlinQueriesOutput
    ListLoaderJobsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListLoaderJobsInput.add_member(:include_queued_loads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "includeQueuedLoads", traits: {"smithy.api#httpQuery" => "includeQueuedLoads"}))
    ListLoaderJobsInput.type = Types::ListLoaderJobsInput
    ListLoaderJobsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    ListLoaderJobsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: LoaderIdResult, location_name: "payload", traits: {"smithy.api#required" => {}}))
    ListLoaderJobsOutput.type = Types::ListLoaderJobsOutput
    ListMLDataProcessingJobsInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "maxItems", traits: {"smithy.api#httpQuery" => "maxItems", "smithy.api#range" => {"min" => 1, "max" => 1024}}))
    ListMLDataProcessingJobsInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    ListMLDataProcessingJobsInput.type = Types::ListMLDataProcessingJobsInput
    ListMLDataProcessingJobsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ids"))
    ListMLDataProcessingJobsOutput.type = Types::ListMLDataProcessingJobsOutput
    ListMLEndpointsInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "maxItems", traits: {"smithy.api#httpQuery" => "maxItems", "smithy.api#range" => {"min" => 1, "max" => 1024}}))
    ListMLEndpointsInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    ListMLEndpointsInput.type = Types::ListMLEndpointsInput
    ListMLEndpointsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ids"))
    ListMLEndpointsOutput.type = Types::ListMLEndpointsOutput
    ListMLModelTrainingJobsInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "maxItems", traits: {"smithy.api#httpQuery" => "maxItems", "smithy.api#range" => {"min" => 1, "max" => 1024}}))
    ListMLModelTrainingJobsInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    ListMLModelTrainingJobsInput.type = Types::ListMLModelTrainingJobsInput
    ListMLModelTrainingJobsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ids"))
    ListMLModelTrainingJobsOutput.type = Types::ListMLModelTrainingJobsOutput
    ListMLModelTransformJobsInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "maxItems", traits: {"smithy.api#httpQuery" => "maxItems", "smithy.api#range" => {"min" => 1, "max" => 1024}}))
    ListMLModelTransformJobsInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn", traits: {"smithy.api#httpQuery" => "neptuneIamRoleArn"}))
    ListMLModelTransformJobsInput.type = Types::ListMLModelTransformJobsInput
    ListMLModelTransformJobsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "ids"))
    ListMLModelTransformJobsOutput.type = Types::ListMLModelTransformJobsOutput
    ListOpenCypherQueriesInput.add_member(:include_waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "includeWaiting", traits: {"smithy.api#httpQuery" => "includeWaiting"}))
    ListOpenCypherQueriesInput.type = Types::ListOpenCypherQueriesInput
    ListOpenCypherQueriesOutput.add_member(:accepted_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "acceptedQueryCount"))
    ListOpenCypherQueriesOutput.add_member(:running_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "runningQueryCount"))
    ListOpenCypherQueriesOutput.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenCypherQueries, location_name: "queries"))
    ListOpenCypherQueriesOutput.type = Types::ListOpenCypherQueriesOutput
    LoadUrlAccessDeniedException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    LoadUrlAccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    LoadUrlAccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    LoadUrlAccessDeniedException.type = Types::LoadUrlAccessDeniedException
    LoaderIdResult.add_member(:load_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "loadIds"))
    LoaderIdResult.type = Types::LoaderIdResult
    LongValuedMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    LongValuedMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long)
    LongValuedMapList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LongValuedMap)
    MLResourceNotFoundException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    MLResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    MLResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    MLResourceNotFoundException.type = Types::MLResourceNotFoundException
    MalformedQueryException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    MalformedQueryException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    MalformedQueryException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    MalformedQueryException.type = Types::MalformedQueryException
    ManagePropertygraphStatisticsInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsAutoGenerationMode, location_name: "mode"))
    ManagePropertygraphStatisticsInput.type = Types::ManagePropertygraphStatisticsInput
    ManagePropertygraphStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    ManagePropertygraphStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshStatisticsIdMap, location_name: "payload"))
    ManagePropertygraphStatisticsOutput.type = Types::ManagePropertygraphStatisticsOutput
    ManageSparqlStatisticsInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsAutoGenerationMode, location_name: "mode"))
    ManageSparqlStatisticsInput.type = Types::ManageSparqlStatisticsInput
    ManageSparqlStatisticsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    ManageSparqlStatisticsOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshStatisticsIdMap, location_name: "payload"))
    ManageSparqlStatisticsOutput.type = Types::ManageSparqlStatisticsOutput
    MemoryLimitExceededException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    MemoryLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    MemoryLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    MemoryLimitExceededException.type = Types::MemoryLimitExceededException
    MethodNotAllowedException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    MethodNotAllowedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    MethodNotAllowedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    MissingParameterException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    MissingParameterException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    MissingParameterException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    MissingParameterException.type = Types::MissingParameterException
    MlConfigDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    MlConfigDefinition.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    MlConfigDefinition.type = Types::MlConfigDefinition
    MlModels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MlConfigDefinition)
    MlResourceDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    MlResourceDefinition.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    MlResourceDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status"))
    MlResourceDefinition.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "outputLocation"))
    MlResourceDefinition.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "failureReason"))
    MlResourceDefinition.add_member(:cloudwatch_log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cloudwatchLogUrl"))
    MlResourceDefinition.type = Types::MlResourceDefinition
    Mode.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESUME", traits: {"smithy.api#enumValue" => "RESUME"}))
    Mode.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    Mode.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    Models.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MlConfigDefinition)
    NodeLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    NodeProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    NodeStructure.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "count"))
    NodeStructure.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeProperties, location_name: "nodeProperties"))
    NodeStructure.add_member(:distinct_outgoing_edge_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: OutgoingEdgeLabels, location_name: "distinctOutgoingEdgeLabels"))
    NodeStructure.type = Types::NodeStructure
    NodeStructures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NodeStructure)
    OpenCypherExplainMode.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATIC", traits: {"smithy.api#enumValue" => "static"}))
    OpenCypherExplainMode.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DYNAMIC", traits: {"smithy.api#enumValue" => "dynamic"}))
    OpenCypherExplainMode.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DETAILS", traits: {"smithy.api#enumValue" => "details"}))
    OpenCypherQueries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GremlinQueryStatus)
    OutgoingEdgeLabels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    Parallelism.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    Parallelism.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Parallelism.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Parallelism.add_member(:oversubscribe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERSUBSCRIBE", traits: {"smithy.api#enumValue" => "OVERSUBSCRIBE"}))
    ParsingException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ParsingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ParsingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ParsingException.type = Types::ParsingException
    PreconditionsFailedException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    PreconditionsFailedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    PreconditionsFailedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    PreconditionsFailedException.type = Types::PreconditionsFailedException
    Predicates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    PropertygraphData.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    PropertygraphData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "type", traits: {"smithy.api#required" => {}}))
    PropertygraphData.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#required" => {}}))
    PropertygraphData.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "value", traits: {"smithy.api#required" => {}}))
    PropertygraphData.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "from"))
    PropertygraphData.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "to"))
    PropertygraphData.type = Types::PropertygraphData
    PropertygraphRecord.add_member(:commit_timestamp_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "commitTimestampInMillis", traits: {"smithy.api#jsonName" => "commitTimestamp", "smithy.api#required" => {}}))
    PropertygraphRecord.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "eventId", traits: {"smithy.api#required" => {}}))
    PropertygraphRecord.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertygraphData, location_name: "data", traits: {"smithy.api#required" => {}}))
    PropertygraphRecord.add_member(:op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "op", traits: {"smithy.api#required" => {}}))
    PropertygraphRecord.add_member(:is_last_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isLastOp"))
    PropertygraphRecord.type = Types::PropertygraphRecord
    PropertygraphRecordsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PropertygraphRecord)
    PropertygraphSummary.add_member(:num_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numNodes"))
    PropertygraphSummary.add_member(:num_edges, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numEdges"))
    PropertygraphSummary.add_member(:num_node_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numNodeLabels"))
    PropertygraphSummary.add_member(:num_edge_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numEdgeLabels"))
    PropertygraphSummary.add_member(:node_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLabels, location_name: "nodeLabels"))
    PropertygraphSummary.add_member(:edge_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeLabels, location_name: "edgeLabels"))
    PropertygraphSummary.add_member(:num_node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numNodeProperties"))
    PropertygraphSummary.add_member(:num_edge_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numEdgeProperties"))
    PropertygraphSummary.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LongValuedMapList, location_name: "nodeProperties"))
    PropertygraphSummary.add_member(:edge_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LongValuedMapList, location_name: "edgeProperties"))
    PropertygraphSummary.add_member(:total_node_property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "totalNodePropertyValues"))
    PropertygraphSummary.add_member(:total_edge_property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "totalEdgePropertyValues"))
    PropertygraphSummary.add_member(:node_structures, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeStructures, location_name: "nodeStructures"))
    PropertygraphSummary.add_member(:edge_structures, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeStructures, location_name: "edgeStructures"))
    PropertygraphSummary.type = Types::PropertygraphSummary
    PropertygraphSummaryValueMap.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    PropertygraphSummaryValueMap.add_member(:last_statistics_computation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStatisticsComputationTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PropertygraphSummaryValueMap.add_member(:graph_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertygraphSummary, location_name: "graphSummary"))
    PropertygraphSummaryValueMap.type = Types::PropertygraphSummaryValueMap
    QueryEvalStats.add_member(:waited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "waited"))
    QueryEvalStats.add_member(:elapsed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "elapsed"))
    QueryEvalStats.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "cancelled"))
    QueryEvalStats.add_member(:subqueries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "subqueries"))
    QueryEvalStats.type = Types::QueryEvalStats
    QueryLanguageVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version", traits: {"smithy.api#required" => {}}))
    QueryLanguageVersion.type = Types::QueryLanguageVersion
    QueryLimitExceededException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    QueryLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    QueryLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    QueryLimitExceededException.type = Types::QueryLimitExceededException
    QueryLimitException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    QueryLimitException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    QueryLimitException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    QueryLimitException.type = Types::QueryLimitException
    QueryTooLargeException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    QueryTooLargeException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    QueryTooLargeException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    QueryTooLargeException.type = Types::QueryTooLargeException
    RDFGraphSummary.add_member(:num_distinct_subjects, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numDistinctSubjects"))
    RDFGraphSummary.add_member(:num_distinct_predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numDistinctPredicates"))
    RDFGraphSummary.add_member(:num_quads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numQuads"))
    RDFGraphSummary.add_member(:num_classes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "numClasses"))
    RDFGraphSummary.add_member(:classes, ::Smithy::Schema::Shapes::MemberShape.new(target: Classes, location_name: "classes"))
    RDFGraphSummary.add_member(:predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: LongValuedMapList, location_name: "predicates"))
    RDFGraphSummary.add_member(:subject_structures, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectStructures, location_name: "subjectStructures"))
    RDFGraphSummary.type = Types::RDFGraphSummary
    RDFGraphSummaryValueMap.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "version"))
    RDFGraphSummaryValueMap.add_member(:last_statistics_computation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastStatisticsComputationTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RDFGraphSummaryValueMap.add_member(:graph_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RDFGraphSummary, location_name: "graphSummary"))
    RDFGraphSummaryValueMap.type = Types::RDFGraphSummaryValueMap
    ReadOnlyViolationException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ReadOnlyViolationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ReadOnlyViolationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ReadOnlyViolationException.type = Types::ReadOnlyViolationException
    RefreshStatisticsIdMap.add_member(:statistics_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statisticsId"))
    RefreshStatisticsIdMap.type = Types::RefreshStatisticsIdMap
    S3BucketRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    S3BucketRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    S3BucketRegion.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_WEST_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    S3BucketRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    S3BucketRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    S3BucketRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SA_EAST_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    S3BucketRegion.add_member(:eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_NORTH_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    S3BucketRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    S3BucketRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    S3BucketRegion.add_member(:eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_WEST_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    S3BucketRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    S3BucketRegion.add_member(:me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ME_SOUTH_1", traits: {"smithy.api#enumValue" => "me-south-1"}))
    S3BucketRegion.add_member(:af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AF_SOUTH_1", traits: {"smithy.api#enumValue" => "af-south-1"}))
    S3BucketRegion.add_member(:ap_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_EAST_1", traits: {"smithy.api#enumValue" => "ap-east-1"}))
    S3BucketRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    S3BucketRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    S3BucketRegion.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    S3BucketRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    S3BucketRegion.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTH_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    S3BucketRegion.add_member(:cn_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CN_NORTH_1", traits: {"smithy.api#enumValue" => "cn-north-1"}))
    S3BucketRegion.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CN_NORTHWEST_1", traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    S3BucketRegion.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_GOV_WEST_1", traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    S3BucketRegion.add_member(:us_gov_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_GOV_EAST_1", traits: {"smithy.api#enumValue" => "us-gov-east-1"}))
    S3BucketRegion.add_member(:ca_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_WEST_1", traits: {"smithy.api#enumValue" => "ca-west-1"}))
    S3BucketRegion.add_member(:eu_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_SOUTH_2", traits: {"smithy.api#enumValue" => "eu-south-2"}))
    S3BucketRegion.add_member(:il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IL_CENTRAL_1", traits: {"smithy.api#enumValue" => "il-central-1"}))
    S3BucketRegion.add_member(:me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ME_CENTRAL_1", traits: {"smithy.api#enumValue" => "me-central-1"}))
    S3BucketRegion.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_NORTHEAST_3", traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    S3BucketRegion.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    S3BucketRegion.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_4", traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    S3BucketRegion.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_5", traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    S3BucketRegion.add_member(:ap_southeast_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTHEAST_7", traits: {"smithy.api#enumValue" => "ap-southeast-7"}))
    S3BucketRegion.add_member(:mx_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MX_CENTRAL_1", traits: {"smithy.api#enumValue" => "mx-central-1"}))
    S3BucketRegion.add_member(:ap_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_EAST_2", traits: {"smithy.api#enumValue" => "ap-east-2"}))
    S3BucketRegion.add_member(:ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AP_SOUTH_2", traits: {"smithy.api#enumValue" => "ap-south-2"}))
    S3BucketRegion.add_member(:eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU_CENTRAL_2", traits: {"smithy.api#enumValue" => "eu-central-2"}))
    S3Exception.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    S3Exception.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    S3Exception.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    S3Exception.type = Types::S3Exception
    ServerShutdownException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ServerShutdownException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ServerShutdownException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ServerShutdownException.type = Types::ServerShutdownException
    SparqlData.add_member(:stmt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stmt", traits: {"smithy.api#required" => {}}))
    SparqlData.type = Types::SparqlData
    SparqlRecord.add_member(:commit_timestamp_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "commitTimestampInMillis", traits: {"smithy.api#jsonName" => "commitTimestamp", "smithy.api#required" => {}}))
    SparqlRecord.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "eventId", traits: {"smithy.api#required" => {}}))
    SparqlRecord.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: SparqlData, location_name: "data", traits: {"smithy.api#required" => {}}))
    SparqlRecord.add_member(:op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "op", traits: {"smithy.api#required" => {}}))
    SparqlRecord.add_member(:is_last_op, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isLastOp"))
    SparqlRecord.type = Types::SparqlRecord
    SparqlRecordsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SparqlRecord)
    StartLoaderJobInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "source", traits: {"smithy.api#required" => {}}))
    StartLoaderJobInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, location_name: "format", traits: {"smithy.api#required" => {}}))
    StartLoaderJobInput.add_member(:s3_bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketRegion, location_name: "s3BucketRegion", traits: {"smithy.api#jsonName" => "region", "smithy.api#required" => {}}))
    StartLoaderJobInput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "iamRoleArn", traits: {"smithy.api#required" => {}}))
    StartLoaderJobInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, location_name: "mode"))
    StartLoaderJobInput.add_member(:fail_on_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "failOnError"))
    StartLoaderJobInput.add_member(:parallelism, ::Smithy::Schema::Shapes::MemberShape.new(target: Parallelism, location_name: "parallelism"))
    StartLoaderJobInput.add_member(:parser_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "parserConfiguration"))
    StartLoaderJobInput.add_member(:update_single_cardinality_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "updateSingleCardinalityProperties"))
    StartLoaderJobInput.add_member(:queue_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "queueRequest"))
    StartLoaderJobInput.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "dependencies"))
    StartLoaderJobInput.add_member(:user_provided_edge_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "userProvidedEdgeIds"))
    StartLoaderJobInput.type = Types::StartLoaderJobInput
    StartLoaderJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "status", traits: {"smithy.api#required" => {}}))
    StartLoaderJobOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValuedMap, location_name: "payload", traits: {"smithy.api#required" => {}}))
    StartLoaderJobOutput.type = Types::StartLoaderJobOutput
    StartMLDataProcessingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLDataProcessingJobInput.add_member(:previous_data_processing_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "previousDataProcessingJobId"))
    StartMLDataProcessingJobInput.add_member(:input_data_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "inputDataS3Location", traits: {"smithy.api#required" => {}}))
    StartMLDataProcessingJobInput.add_member(:processed_data_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "processedDataS3Location", traits: {"smithy.api#required" => {}}))
    StartMLDataProcessingJobInput.add_member(:sagemaker_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sagemakerIamRoleArn"))
    StartMLDataProcessingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn"))
    StartMLDataProcessingJobInput.add_member(:processing_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "processingInstanceType"))
    StartMLDataProcessingJobInput.add_member(:processing_instance_volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "processingInstanceVolumeSizeInGB"))
    StartMLDataProcessingJobInput.add_member(:processing_time_out_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "processingTimeOutInSeconds"))
    StartMLDataProcessingJobInput.add_member(:model_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "modelType"))
    StartMLDataProcessingJobInput.add_member(:config_file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "configFileName"))
    StartMLDataProcessingJobInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "subnets"))
    StartMLDataProcessingJobInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "securityGroupIds"))
    StartMLDataProcessingJobInput.add_member(:volume_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "volumeEncryptionKMSKey"))
    StartMLDataProcessingJobInput.add_member(:s3_output_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLDataProcessingJobInput.type = Types::StartMLDataProcessingJobInput
    StartMLDataProcessingJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLDataProcessingJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    StartMLDataProcessingJobOutput.add_member(:creation_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "creationTimeInMillis"))
    StartMLDataProcessingJobOutput.type = Types::StartMLDataProcessingJobOutput
    StartMLModelTrainingJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLModelTrainingJobInput.add_member(:previous_model_training_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "previousModelTrainingJobId"))
    StartMLModelTrainingJobInput.add_member(:data_processing_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dataProcessingJobId", traits: {"smithy.api#required" => {}}))
    StartMLModelTrainingJobInput.add_member(:train_model_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "trainModelS3Location", traits: {"smithy.api#required" => {}}))
    StartMLModelTrainingJobInput.add_member(:sagemaker_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sagemakerIamRoleArn"))
    StartMLModelTrainingJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn"))
    StartMLModelTrainingJobInput.add_member(:base_processing_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baseProcessingInstanceType"))
    StartMLModelTrainingJobInput.add_member(:training_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "trainingInstanceType"))
    StartMLModelTrainingJobInput.add_member(:training_instance_volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "trainingInstanceVolumeSizeInGB"))
    StartMLModelTrainingJobInput.add_member(:training_time_out_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "trainingTimeOutInSeconds"))
    StartMLModelTrainingJobInput.add_member(:max_hpo_number_of_training_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxHPONumberOfTrainingJobs"))
    StartMLModelTrainingJobInput.add_member(:max_hpo_parallel_training_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxHPOParallelTrainingJobs"))
    StartMLModelTrainingJobInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "subnets"))
    StartMLModelTrainingJobInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "securityGroupIds"))
    StartMLModelTrainingJobInput.add_member(:volume_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "volumeEncryptionKMSKey"))
    StartMLModelTrainingJobInput.add_member(:s3_output_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLModelTrainingJobInput.add_member(:enable_managed_spot_training, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enableManagedSpotTraining"))
    StartMLModelTrainingJobInput.add_member(:custom_model_training_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomModelTrainingParameters, location_name: "customModelTrainingParameters"))
    StartMLModelTrainingJobInput.type = Types::StartMLModelTrainingJobInput
    StartMLModelTrainingJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLModelTrainingJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    StartMLModelTrainingJobOutput.add_member(:creation_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "creationTimeInMillis"))
    StartMLModelTrainingJobOutput.type = Types::StartMLModelTrainingJobOutput
    StartMLModelTransformJobInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLModelTransformJobInput.add_member(:data_processing_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dataProcessingJobId"))
    StartMLModelTransformJobInput.add_member(:ml_model_training_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "mlModelTrainingJobId"))
    StartMLModelTransformJobInput.add_member(:training_job_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "trainingJobName"))
    StartMLModelTransformJobInput.add_member(:model_transform_output_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "modelTransformOutputS3Location", traits: {"smithy.api#required" => {}}))
    StartMLModelTransformJobInput.add_member(:sagemaker_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sagemakerIamRoleArn"))
    StartMLModelTransformJobInput.add_member(:neptune_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "neptuneIamRoleArn"))
    StartMLModelTransformJobInput.add_member(:custom_model_transform_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomModelTransformParameters, location_name: "customModelTransformParameters"))
    StartMLModelTransformJobInput.add_member(:base_processing_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "baseProcessingInstanceType"))
    StartMLModelTransformJobInput.add_member(:base_processing_instance_volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "baseProcessingInstanceVolumeSizeInGB"))
    StartMLModelTransformJobInput.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "subnets"))
    StartMLModelTransformJobInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "securityGroupIds"))
    StartMLModelTransformJobInput.add_member(:volume_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "volumeEncryptionKMSKey"))
    StartMLModelTransformJobInput.add_member(:s3_output_encryption_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "s3OutputEncryptionKMSKey"))
    StartMLModelTransformJobInput.type = Types::StartMLModelTransformJobInput
    StartMLModelTransformJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    StartMLModelTransformJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    StartMLModelTransformJobOutput.add_member(:creation_time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "creationTimeInMillis"))
    StartMLModelTransformJobOutput.type = Types::StartMLModelTransformJobOutput
    Statistics.add_member(:auto_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoCompute"))
    Statistics.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "active"))
    Statistics.add_member(:statistics_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statisticsId"))
    Statistics.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "date", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Statistics.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "note"))
    Statistics.add_member(:signature_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StatisticsSummary, location_name: "signatureInfo"))
    Statistics.type = Types::Statistics
    StatisticsAutoGenerationMode.add_member(:disable_autocompute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE_AUTOCOMPUTE", traits: {"smithy.api#enumValue" => "disableAutoCompute"}))
    StatisticsAutoGenerationMode.add_member(:enable_autocompute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_AUTOCOMPUTE", traits: {"smithy.api#enumValue" => "enableAutoCompute"}))
    StatisticsAutoGenerationMode.add_member(:refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFRESH", traits: {"smithy.api#enumValue" => "refresh"}))
    StatisticsNotAvailableException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    StatisticsNotAvailableException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    StatisticsNotAvailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    StatisticsNotAvailableException.type = Types::StatisticsNotAvailableException
    StatisticsSummary.add_member(:signature_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "signatureCount"))
    StatisticsSummary.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "instanceCount"))
    StatisticsSummary.add_member(:predicate_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "predicateCount"))
    StatisticsSummary.type = Types::StatisticsSummary
    StreamRecordsNotFoundException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    StreamRecordsNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    StreamRecordsNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    StreamRecordsNotFoundException.type = Types::StreamRecordsNotFoundException
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    StringValuedMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    StringValuedMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    SubjectStructure.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "count"))
    SubjectStructure.add_member(:predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicates, location_name: "predicates"))
    SubjectStructure.type = Types::SubjectStructure
    SubjectStructures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectStructure)
    ThrottlingException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeLimitExceededException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    TimeLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    TimeLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    TimeLimitExceededException.type = Types::TimeLimitExceededException
    TooManyRequestsException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnsupportedOperationException.add_member(:detailed_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detailedMessage", traits: {"smithy.api#required" => {}}))
    UnsupportedOperationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "requestId", traits: {"smithy.api#required" => {}}))
    UnsupportedOperationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    UnsupportedOperationException.type = Types::UnsupportedOperationException

    AmazonNeptuneDataplane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.neptunedata#AmazonNeptuneDataplane"
      service.name = "AmazonNeptuneDataplane"
      service.version = "2023-08-01"
      service.traits = {"aws.api#service" => {"sdkId" => "neptunedata", "arnNamespace" => "neptune-db"}, "aws.auth#sigv4" => {"name" => "neptune-db"}, "aws.protocols#restJson1" => {}, "smithy.api#externalDocumentation" => {"API Reference" => "https://docs.aws.amazon.com/neptune/latest/userguide/intro.html"}, "smithy.api#title" => "Amazon NeptuneData"}
      service.add_operation(:cancel_gremlin_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelGremlinQuery"
        operation.name = "CancelGremlinQuery"
        operation.input = CancelGremlinQueryInput
        operation.output = CancelGremlinQueryOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/gremlin/status/{queryId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_loader_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelLoaderJob"
        operation.name = "CancelLoaderJob"
        operation.input = CancelLoaderJobInput
        operation.output = CancelLoaderJobOutput
        operation.errors << BadRequestException
        operation.errors << BulkLoadIdNotFoundException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << LoadUrlAccessDeniedException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/loader/{loadId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_ml_data_processing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelMLDataProcessingJob"
        operation.name = "CancelMLDataProcessingJob"
        operation.input = CancelMLDataProcessingJobInput
        operation.output = CancelMLDataProcessingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ml/dataprocessing/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_ml_model_training_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelMLModelTrainingJob"
        operation.name = "CancelMLModelTrainingJob"
        operation.input = CancelMLModelTrainingJobInput
        operation.output = CancelMLModelTrainingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ml/modeltraining/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_ml_model_transform_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelMLModelTransformJob"
        operation.name = "CancelMLModelTransformJob"
        operation.input = CancelMLModelTransformJobInput
        operation.output = CancelMLModelTransformJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ml/modeltransform/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_open_cypher_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CancelOpenCypherQuery"
        operation.name = "CancelOpenCypherQuery"
        operation.input = CancelOpenCypherQueryInput
        operation.output = CancelOpenCypherQueryOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidNumericDataException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/opencypher/status/{queryId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ml_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#CreateMLEndpoint"
        operation.name = "CreateMLEndpoint"
        operation.input = CreateMLEndpointInput
        operation.output = CreateMLEndpointOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ml/endpoints", "code" => 200}}
      end)
      service.add_operation(:delete_ml_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#DeleteMLEndpoint"
        operation.name = "DeleteMLEndpoint"
        operation.input = DeleteMLEndpointInput
        operation.output = DeleteMLEndpointOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ml/endpoints/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_propertygraph_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#DeletePropertygraphStatistics"
        operation.name = "DeletePropertygraphStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DeletePropertygraphStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/propertygraph/statistics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sparql_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#DeleteSparqlStatistics"
        operation.name = "DeleteSparqlStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DeleteSparqlStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sparql/statistics"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:execute_fast_reset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteFastReset"
        operation.name = "ExecuteFastReset"
        operation.input = ExecuteFastResetInput
        operation.output = ExecuteFastResetOutput
        operation.errors << AccessDeniedException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MethodNotAllowedException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << ServerShutdownException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/system", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:execute_gremlin_explain_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteGremlinExplainQuery"
        operation.name = "ExecuteGremlinExplainQuery"
        operation.input = ExecuteGremlinExplainQueryInput
        operation.output = ExecuteGremlinExplainQueryOutput
        operation.errors << BadRequestException
        operation.errors << CancelledByUserException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MalformedQueryException
        operation.errors << MemoryLimitExceededException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << QueryLimitExceededException
        operation.errors << QueryLimitException
        operation.errors << QueryTooLargeException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/gremlin/explain", "code" => 200}}
      end)
      service.add_operation(:execute_gremlin_profile_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteGremlinProfileQuery"
        operation.name = "ExecuteGremlinProfileQuery"
        operation.input = ExecuteGremlinProfileQueryInput
        operation.output = ExecuteGremlinProfileQueryOutput
        operation.errors << BadRequestException
        operation.errors << CancelledByUserException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MalformedQueryException
        operation.errors << MemoryLimitExceededException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << QueryLimitExceededException
        operation.errors << QueryLimitException
        operation.errors << QueryTooLargeException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/gremlin/profile", "code" => 200}}
      end)
      service.add_operation(:execute_gremlin_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteGremlinQuery"
        operation.name = "ExecuteGremlinQuery"
        operation.input = ExecuteGremlinQueryInput
        operation.output = ExecuteGremlinQueryOutput
        operation.errors << BadRequestException
        operation.errors << CancelledByUserException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MalformedQueryException
        operation.errors << MemoryLimitExceededException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << QueryLimitExceededException
        operation.errors << QueryLimitException
        operation.errors << QueryTooLargeException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/gremlin", "code" => 200}}
      end)
      service.add_operation(:execute_open_cypher_explain_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteOpenCypherExplainQuery"
        operation.name = "ExecuteOpenCypherExplainQuery"
        operation.input = ExecuteOpenCypherExplainQueryInput
        operation.output = ExecuteOpenCypherExplainQueryOutput
        operation.errors << BadRequestException
        operation.errors << CancelledByUserException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidNumericDataException
        operation.errors << InvalidParameterException
        operation.errors << MalformedQueryException
        operation.errors << MemoryLimitExceededException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << QueryLimitExceededException
        operation.errors << QueryLimitException
        operation.errors << QueryTooLargeException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/opencypher/explain", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:execute_open_cypher_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ExecuteOpenCypherQuery"
        operation.name = "ExecuteOpenCypherQuery"
        operation.input = ExecuteOpenCypherQueryInput
        operation.output = ExecuteOpenCypherQueryOutput
        operation.errors << BadRequestException
        operation.errors << CancelledByUserException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidNumericDataException
        operation.errors << InvalidParameterException
        operation.errors << MalformedQueryException
        operation.errors << MemoryLimitExceededException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << QueryLimitExceededException
        operation.errors << QueryLimitException
        operation.errors << QueryTooLargeException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/opencypher", "code" => 200}}
      end)
      service.add_operation(:get_engine_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetEngineStatus"
        operation.name = "GetEngineStatus"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetEngineStatusOutput
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/status", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gremlin_query_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetGremlinQueryStatus"
        operation.name = "GetGremlinQueryStatus"
        operation.input = GetGremlinQueryStatusInput
        operation.output = GetGremlinQueryStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/gremlin/status/{queryId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_loader_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetLoaderJobStatus"
        operation.name = "GetLoaderJobStatus"
        operation.input = GetLoaderJobStatusInput
        operation.output = GetLoaderJobStatusOutput
        operation.errors << BadRequestException
        operation.errors << BulkLoadIdNotFoundException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << LoadUrlAccessDeniedException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/loader/{loadId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_data_processing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetMLDataProcessingJob"
        operation.name = "GetMLDataProcessingJob"
        operation.input = GetMLDataProcessingJobInput
        operation.output = GetMLDataProcessingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/dataprocessing/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetMLEndpoint"
        operation.name = "GetMLEndpoint"
        operation.input = GetMLEndpointInput
        operation.output = GetMLEndpointOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/endpoints/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_model_training_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetMLModelTrainingJob"
        operation.name = "GetMLModelTrainingJob"
        operation.input = GetMLModelTrainingJobInput
        operation.output = GetMLModelTrainingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/modeltraining/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ml_model_transform_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetMLModelTransformJob"
        operation.name = "GetMLModelTransformJob"
        operation.input = GetMLModelTransformJobInput
        operation.output = GetMLModelTransformJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/modeltransform/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_open_cypher_query_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetOpenCypherQueryStatus"
        operation.name = "GetOpenCypherQueryStatus"
        operation.input = GetOpenCypherQueryStatusInput
        operation.output = GetOpenCypherQueryStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidNumericDataException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/opencypher/status/{queryId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_propertygraph_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetPropertygraphStatistics"
        operation.name = "GetPropertygraphStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetPropertygraphStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/propertygraph/statistics", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_propertygraph_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetPropertygraphStream"
        operation.name = "GetPropertygraphStream"
        operation.input = GetPropertygraphStreamInput
        operation.output = GetPropertygraphStreamOutput
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << ExpiredStreamException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MemoryLimitExceededException
        operation.errors << PreconditionsFailedException
        operation.errors << StreamRecordsNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/propertygraph/stream", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_propertygraph_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetPropertygraphSummary"
        operation.name = "GetPropertygraphSummary"
        operation.input = GetPropertygraphSummaryInput
        operation.output = GetPropertygraphSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/propertygraph/statistics/summary", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rdf_graph_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetRDFGraphSummary"
        operation.name = "GetRDFGraphSummary"
        operation.input = GetRDFGraphSummaryInput
        operation.output = GetRDFGraphSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rdf/statistics/summary", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sparql_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetSparqlStatistics"
        operation.name = "GetSparqlStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetSparqlStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sparql/statistics", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sparql_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#GetSparqlStream"
        operation.name = "GetSparqlStream"
        operation.input = GetSparqlStreamInput
        operation.output = GetSparqlStreamOutput
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << ExpiredStreamException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MemoryLimitExceededException
        operation.errors << PreconditionsFailedException
        operation.errors << StreamRecordsNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sparql/stream", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_gremlin_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListGremlinQueries"
        operation.name = "ListGremlinQueries"
        operation.input = ListGremlinQueriesInput
        operation.output = ListGremlinQueriesOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/gremlin/status", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_loader_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListLoaderJobs"
        operation.name = "ListLoaderJobs"
        operation.input = ListLoaderJobsInput
        operation.output = ListLoaderJobsOutput
        operation.errors << BadRequestException
        operation.errors << BulkLoadIdNotFoundException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << LoadUrlAccessDeniedException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/loader", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ml_data_processing_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListMLDataProcessingJobs"
        operation.name = "ListMLDataProcessingJobs"
        operation.input = ListMLDataProcessingJobsInput
        operation.output = ListMLDataProcessingJobsOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/dataprocessing", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ml_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListMLEndpoints"
        operation.name = "ListMLEndpoints"
        operation.input = ListMLEndpointsInput
        operation.output = ListMLEndpointsOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/endpoints", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ml_model_training_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListMLModelTrainingJobs"
        operation.name = "ListMLModelTrainingJobs"
        operation.input = ListMLModelTrainingJobsInput
        operation.output = ListMLModelTrainingJobsOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/modeltraining", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_ml_model_transform_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListMLModelTransformJobs"
        operation.name = "ListMLModelTransformJobs"
        operation.input = ListMLModelTransformJobsInput
        operation.output = ListMLModelTransformJobsOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ml/modeltransform", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_open_cypher_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ListOpenCypherQueries"
        operation.name = "ListOpenCypherQueries"
        operation.input = ListOpenCypherQueriesInput
        operation.output = ListOpenCypherQueriesOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << FailureByQueryException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidNumericDataException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << ParsingException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << TimeLimitExceededException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/opencypher/status", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:manage_propertygraph_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ManagePropertygraphStatistics"
        operation.name = "ManagePropertygraphStatistics"
        operation.input = ManagePropertygraphStatisticsInput
        operation.output = ManagePropertygraphStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/propertygraph/statistics", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:manage_sparql_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#ManageSparqlStatistics"
        operation.name = "ManageSparqlStatistics"
        operation.input = ManageSparqlStatisticsInput
        operation.output = ManageSparqlStatisticsOutput
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << ReadOnlyViolationException
        operation.errors << StatisticsNotAvailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sparql/statistics", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_loader_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#StartLoaderJob"
        operation.name = "StartLoaderJob"
        operation.input = StartLoaderJobInput
        operation.output = StartLoaderJobOutput
        operation.errors << BadRequestException
        operation.errors << BulkLoadIdNotFoundException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << LoadUrlAccessDeniedException
        operation.errors << MissingParameterException
        operation.errors << PreconditionsFailedException
        operation.errors << S3Exception
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/loader", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_ml_data_processing_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#StartMLDataProcessingJob"
        operation.name = "StartMLDataProcessingJob"
        operation.input = StartMLDataProcessingJobInput
        operation.output = StartMLDataProcessingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ml/dataprocessing", "code" => 200}}
      end)
      service.add_operation(:start_ml_model_training_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#StartMLModelTrainingJob"
        operation.name = "StartMLModelTrainingJob"
        operation.input = StartMLModelTrainingJobInput
        operation.output = StartMLModelTrainingJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ml/modeltraining", "code" => 200}}
      end)
      service.add_operation(:start_ml_model_transform_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptunedata#StartMLModelTransformJob"
        operation.name = "StartMLModelTransformJob"
        operation.input = StartMLModelTransformJobInput
        operation.output = StartMLModelTransformJobOutput
        operation.errors << BadRequestException
        operation.errors << ClientTimeoutException
        operation.errors << ConstraintViolationException
        operation.errors << IllegalArgumentException
        operation.errors << InvalidArgumentException
        operation.errors << InvalidParameterException
        operation.errors << MissingParameterException
        operation.errors << MLResourceNotFoundException
        operation.errors << PreconditionsFailedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedOperationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ml/modeltransform", "code" => 200}}
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
