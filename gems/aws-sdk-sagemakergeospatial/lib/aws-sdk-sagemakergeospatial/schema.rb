# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerGeospatial
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlgorithmNameCloudRemoval = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#AlgorithmNameCloudRemoval', name: 'AlgorithmNameCloudRemoval', traits: {"smithy.api#enum" => [{"value" => "INTERPOLATION", "name" => "INTERPOLATION", "documentation" => "INTERPOLATION"}]})
    AlgorithmNameGeoMosaic = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#AlgorithmNameGeoMosaic', name: 'AlgorithmNameGeoMosaic', traits: {"smithy.api#enum" => [{"value" => "NEAR", "name" => "NEAR", "documentation" => "NEAR"}, {"value" => "BILINEAR", "name" => "BILINEAR", "documentation" => "BILINEAR"}, {"value" => "CUBIC", "name" => "CUBIC", "documentation" => "CUBIC"}, {"value" => "CUBICSPLINE", "name" => "CUBICSPLINE", "documentation" => "CUBICSPLINE"}, {"value" => "LANCZOS", "name" => "LANCZOS", "documentation" => "LANCZOS"}, {"value" => "AVERAGE", "name" => "AVERAGE", "documentation" => "AVERAGE"}, {"value" => "RMS", "name" => "RMS", "documentation" => "RMS"}, {"value" => "MODE", "name" => "MODE", "documentation" => "MODE"}, {"value" => "MAX", "name" => "MAX", "documentation" => "MAX"}, {"value" => "MIN", "name" => "MIN", "documentation" => "MIN"}, {"value" => "MED", "name" => "MED", "documentation" => "MED"}, {"value" => "Q1", "name" => "Q1", "documentation" => "Q1"}, {"value" => "Q3", "name" => "Q3", "documentation" => "Q3"}, {"value" => "SUM", "name" => "SUM", "documentation" => "SUM"}]})
    AlgorithmNameResampling = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#AlgorithmNameResampling', name: 'AlgorithmNameResampling', traits: {"smithy.api#enum" => [{"value" => "NEAR", "name" => "NEAR", "documentation" => "NEAR"}, {"value" => "BILINEAR", "name" => "BILINEAR", "documentation" => "BILINEAR"}, {"value" => "CUBIC", "name" => "CUBIC", "documentation" => "CUBIC"}, {"value" => "CUBICSPLINE", "name" => "CUBICSPLINE", "documentation" => "CUBICSPLINE"}, {"value" => "LANCZOS", "name" => "LANCZOS", "documentation" => "LANCZOS"}, {"value" => "AVERAGE", "name" => "AVERAGE", "documentation" => "AVERAGE"}, {"value" => "RMS", "name" => "RMS", "documentation" => "RMS"}, {"value" => "MODE", "name" => "MODE", "documentation" => "MODE"}, {"value" => "MAX", "name" => "MAX", "documentation" => "MAX"}, {"value" => "MIN", "name" => "MIN", "documentation" => "MIN"}, {"value" => "MED", "name" => "MED", "documentation" => "MED"}, {"value" => "Q1", "name" => "Q1", "documentation" => "Q1"}, {"value" => "Q3", "name" => "Q3", "documentation" => "Q3"}, {"value" => "SUM", "name" => "SUM", "documentation" => "SUM"}]})
    AreaOfInterest = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#AreaOfInterest', name: 'AreaOfInterest')
    AreaOfInterestGeometry = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#AreaOfInterestGeometry', name: 'AreaOfInterestGeometry')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AssetValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#AssetValue', name: 'AssetValue')
    AssetsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sagemakergeospatial#AssetsMap', name: 'AssetsMap')
    BandMathConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#BandMathConfigInput', name: 'BandMathConfigInput')
    BinaryFile = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sagemakergeospatial#BinaryFile', name: 'BinaryFile', traits: {"smithy.api#mediaType" => "application/x-binary", "smithy.api#streaming" => {}})
    CloudMaskingConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#CloudMaskingConfigInput', name: 'CloudMaskingConfigInput')
    CloudRemovalConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#CloudRemovalConfigInput', name: 'CloudRemovalConfigInput')
    ComparisonOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#ComparisonOperator', name: 'ComparisonOperator', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS", "documentation" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS", "documentation" => "NOT_EQUALS"}, {"value" => "STARTS_WITH", "name" => "STARTS_WITH", "documentation" => "STARTS_WITH"}]})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CustomIndicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#CustomIndicesInput', name: 'CustomIndicesInput')
    DataCollectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#DataCollectionArn', name: 'DataCollectionArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,12}:sagemaker-geospatial:[a-z0-9-]{1,25}:[0-9]{12}:raster-data-collection/(public|premium|user)/[a-z0-9]{12,}$"})
    DataCollectionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#DataCollectionType', name: 'DataCollectionType', traits: {"smithy.api#enum" => [{"value" => "PUBLIC", "name" => "PUBLIC", "documentation" => "PUBLIC"}, {"value" => "PREMIUM", "name" => "PREMIUM", "documentation" => "PREMIUM"}, {"value" => "USER", "name" => "USER", "documentation" => "USER"}]})
    DataCollectionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#DataCollectionsList', name: 'DataCollectionsList')
    DeleteEarthObservationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#DeleteEarthObservationJobInput', name: 'DeleteEarthObservationJobInput')
    DeleteEarthObservationJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#DeleteEarthObservationJobOutput', name: 'DeleteEarthObservationJobOutput')
    DeleteVectorEnrichmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#DeleteVectorEnrichmentJobInput', name: 'DeleteVectorEnrichmentJobInput')
    DeleteVectorEnrichmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#DeleteVectorEnrichmentJobOutput', name: 'DeleteVectorEnrichmentJobOutput')
    EarthObservationJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobArn', name: 'EarthObservationJobArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,12}:sagemaker-geospatial:[a-z0-9-]{1,25}:[0-9]{12}:earth-observation-job/[a-z0-9]{12,}$"})
    EarthObservationJobErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobErrorDetails', name: 'EarthObservationJobErrorDetails')
    EarthObservationJobErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobErrorType', name: 'EarthObservationJobErrorType', traits: {"smithy.api#enum" => [{"value" => "CLIENT_ERROR", "name" => "CLIENT_ERROR", "documentation" => "CLIENT_ERROR"}, {"value" => "SERVER_ERROR", "name" => "SERVER_ERROR", "documentation" => "SERVER_ERROR"}]})
    EarthObservationJobExportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobExportStatus', name: 'EarthObservationJobExportStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED", "documentation" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "FAILED"}]})
    EarthObservationJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobList', name: 'EarthObservationJobList')
    EarthObservationJobOutputBands = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobOutputBands', name: 'EarthObservationJobOutputBands')
    EarthObservationJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#EarthObservationJobStatus', name: 'EarthObservationJobStatus', traits: {"smithy.api#enum" => [{"value" => "INITIALIZING", "name" => "INITIALIZING", "documentation" => "INITIALIZING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "IN_PROGRESS"}, {"value" => "STOPPING", "name" => "STOPPING", "documentation" => "STOPPING"}, {"value" => "COMPLETED", "name" => "COMPLETED", "documentation" => "COMPLETED"}, {"value" => "STOPPED", "name" => "STOPPED", "documentation" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED", "documentation" => "DELETED"}]})
    EoCloudCoverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#EoCloudCoverInput', name: 'EoCloudCoverInput')
    ExecutionRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#ExecutionRoleArn', name: 'ExecutionRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-z-]*):iam::([0-9]{12}):role/[a-zA-Z0-9+=,.@_/-]+$"})
    ExportEarthObservationJobOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportEarthObservationJobOperationInput', name: 'ExportEarthObservationJobOperationInput')
    ExportEarthObservationJobOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportEarthObservationJobOperationOutput', name: 'ExportEarthObservationJobOperationOutput')
    ExportErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportErrorDetails', name: 'ExportErrorDetails')
    ExportErrorDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportErrorDetailsOutput', name: 'ExportErrorDetailsOutput')
    ExportErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportErrorType', name: 'ExportErrorType', traits: {"smithy.api#enum" => [{"value" => "CLIENT_ERROR", "name" => "CLIENT_ERROR", "documentation" => "CLIENT_ERROR"}, {"value" => "SERVER_ERROR", "name" => "SERVER_ERROR", "documentation" => "SERVER_ERROR"}]})
    ExportS3DataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportS3DataInput', name: 'ExportS3DataInput')
    ExportVectorEnrichmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportVectorEnrichmentJobInput', name: 'ExportVectorEnrichmentJobInput')
    ExportVectorEnrichmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportVectorEnrichmentJobOutput', name: 'ExportVectorEnrichmentJobOutput')
    ExportVectorEnrichmentJobOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ExportVectorEnrichmentJobOutputConfig', name: 'ExportVectorEnrichmentJobOutputConfig')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#FilterList', name: 'FilterList')
    GeoMosaicConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GeoMosaicConfigInput', name: 'GeoMosaicConfigInput')
    Geometry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#Geometry', name: 'Geometry')
    GetEarthObservationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetEarthObservationJobInput', name: 'GetEarthObservationJobInput')
    GetEarthObservationJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetEarthObservationJobOutput', name: 'GetEarthObservationJobOutput')
    GetRasterDataCollectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetRasterDataCollectionOperationInput', name: 'GetRasterDataCollectionOperationInput')
    GetRasterDataCollectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetRasterDataCollectionOperationOutput', name: 'GetRasterDataCollectionOperationOutput')
    GetTileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetTileInput', name: 'GetTileInput')
    GetTileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetTileOutput', name: 'GetTileOutput')
    GetVectorEnrichmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetVectorEnrichmentJobInput', name: 'GetVectorEnrichmentJobInput')
    GetVectorEnrichmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#GetVectorEnrichmentJobOutput', name: 'GetVectorEnrichmentJobOutput')
    GroupBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#GroupBy', name: 'GroupBy', traits: {"smithy.api#enum" => [{"value" => "ALL", "name" => "ALL", "documentation" => "ALL"}, {"value" => "YEARLY", "name" => "YEARLY", "documentation" => "YEARLY"}]})
    ImageSourceBandList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#ImageSourceBandList', name: 'ImageSourceBandList')
    InputConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#InputConfigInput', name: 'InputConfigInput')
    InputConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#InputConfigOutput', name: 'InputConfigOutput')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ItemSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ItemSource', name: 'ItemSource')
    ItemSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#ItemSourceList', name: 'ItemSourceList')
    JobConfigInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#JobConfigInput', name: 'JobConfigInput')
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    LandCoverSegmentationConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#LandCoverSegmentationConfigInput', name: 'LandCoverSegmentationConfigInput')
    LandsatCloudCoverLandInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#LandsatCloudCoverLandInput', name: 'LandsatCloudCoverLandInput')
    LinearRing = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#LinearRing', name: 'LinearRing', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.6"}, "smithy.api#length" => {"min" => 4}})
    LinearRings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#LinearRings', name: 'LinearRings', traits: {"smithy.api#length" => {"min" => 1}})
    LinearRingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#LinearRingsList', name: 'LinearRingsList')
    ListEarthObservationJobOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListEarthObservationJobOutputConfig', name: 'ListEarthObservationJobOutputConfig')
    ListEarthObservationJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListEarthObservationJobsInput', name: 'ListEarthObservationJobsInput')
    ListEarthObservationJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListEarthObservationJobsOutput', name: 'ListEarthObservationJobsOutput')
    ListRasterDataCollectionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListRasterDataCollectionsOperationInput', name: 'ListRasterDataCollectionsOperationInput')
    ListRasterDataCollectionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListRasterDataCollectionsOperationOutput', name: 'ListRasterDataCollectionsOperationOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVectorEnrichmentJobOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListVectorEnrichmentJobOutputConfig', name: 'ListVectorEnrichmentJobOutputConfig')
    ListVectorEnrichmentJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListVectorEnrichmentJobsInput', name: 'ListVectorEnrichmentJobsInput')
    ListVectorEnrichmentJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ListVectorEnrichmentJobsOutput', name: 'ListVectorEnrichmentJobsOutput')
    LogicalOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#LogicalOperator', name: 'LogicalOperator', traits: {"smithy.api#enum" => [{"value" => "AND", "name" => "AND", "documentation" => "AND"}]})
    MapMatchingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#MapMatchingConfig', name: 'MapMatchingConfig')
    MultiPolygonGeometryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#MultiPolygonGeometryInput', name: 'MultiPolygonGeometryInput')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 8192}, "smithy.api#sensitive" => {}})
    Operation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#Operation', name: 'Operation')
    OperationsListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#OperationsListInput', name: 'OperationsListInput', traits: {"smithy.api#length" => {"min" => 1}})
    OutputBand = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#OutputBand', name: 'OutputBand')
    OutputConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#OutputConfigInput', name: 'OutputConfigInput')
    OutputResolutionResamplingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#OutputResolutionResamplingInput', name: 'OutputResolutionResamplingInput')
    OutputResolutionStackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#OutputResolutionStackInput', name: 'OutputResolutionStackInput')
    OutputType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#OutputType', name: 'OutputType', traits: {"smithy.api#enum" => [{"value" => "INT32", "name" => "INT32", "documentation" => "INT32"}, {"value" => "FLOAT32", "name" => "FLOAT32", "documentation" => "FLOAT32"}, {"value" => "INT16", "name" => "INT16", "documentation" => "INT16"}, {"value" => "FLOAT64", "name" => "FLOAT64", "documentation" => "FLOAT64"}, {"value" => "UINT16", "name" => "UINT16", "documentation" => "UINT16"}]})
    PlatformInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#PlatformInput', name: 'PlatformInput')
    PolygonGeometryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#PolygonGeometryInput', name: 'PolygonGeometryInput')
    Position = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#Position', name: 'Position', traits: {"smithy.api#externalDocumentation" => {"Documentation" => "https://tools.ietf.org/html/rfc7946#section-3.1.1"}, "smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#sensitive" => {}})
    PredefinedResolution = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#PredefinedResolution', name: 'PredefinedResolution', traits: {"smithy.api#enum" => [{"value" => "HIGHEST", "name" => "HIGHEST", "documentation" => "HIGHEST"}, {"value" => "LOWEST", "name" => "LOWEST", "documentation" => "LOWEST"}, {"value" => "AVERAGE", "name" => "AVERAGE", "documentation" => "AVERAGE"}]})
    Properties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#Properties', name: 'Properties')
    Property = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#Property', name: 'Property')
    PropertyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#PropertyFilter', name: 'PropertyFilter')
    PropertyFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#PropertyFilters', name: 'PropertyFilters')
    PropertyFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#PropertyFiltersList', name: 'PropertyFiltersList')
    RasterDataCollectionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#RasterDataCollectionMetadata', name: 'RasterDataCollectionMetadata')
    RasterDataCollectionQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#RasterDataCollectionQueryInput', name: 'RasterDataCollectionQueryInput')
    RasterDataCollectionQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#RasterDataCollectionQueryOutput', name: 'RasterDataCollectionQueryOutput')
    RasterDataCollectionQueryWithBandFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#RasterDataCollectionQueryWithBandFilterInput', name: 'RasterDataCollectionQueryWithBandFilterInput')
    ResamplingConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ResamplingConfigInput', name: 'ResamplingConfigInput')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReverseGeocodingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ReverseGeocodingConfig', name: 'ReverseGeocodingConfig')
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#S3Uri', name: 'S3Uri', traits: {"smithy.api#pattern" => "^s3://([^/]+)/?(.*)$"})
    SearchRasterDataCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#SearchRasterDataCollectionInput', name: 'SearchRasterDataCollectionInput')
    SearchRasterDataCollectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#SearchRasterDataCollectionOutput', name: 'SearchRasterDataCollectionOutput')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING", "documentation" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING", "documentation" => "DESCENDING"}]})
    StackConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StackConfigInput', name: 'StackConfigInput')
    StartEarthObservationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StartEarthObservationJobInput', name: 'StartEarthObservationJobInput')
    StartEarthObservationJobOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StartEarthObservationJobOperationOutput', name: 'StartEarthObservationJobOperationOutput')
    StartVectorEnrichmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StartVectorEnrichmentJobInput', name: 'StartVectorEnrichmentJobInput')
    StartVectorEnrichmentJobOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StartVectorEnrichmentJobOperationOutput', name: 'StartVectorEnrichmentJobOperationOutput')
    StopEarthObservationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StopEarthObservationJobInput', name: 'StopEarthObservationJobInput')
    StopEarthObservationJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StopEarthObservationJobOutput', name: 'StopEarthObservationJobOutput')
    StopVectorEnrichmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StopVectorEnrichmentJobInput', name: 'StopVectorEnrichmentJobInput')
    StopVectorEnrichmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#StopVectorEnrichmentJobOutput', name: 'StopVectorEnrichmentJobOutput')
    StringListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#StringListInput', name: 'StringListInput', traits: {"smithy.api#length" => {"min" => 1}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#TagResourceOutput', name: 'TagResourceOutput')
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sagemakergeospatial#Tags', name: 'Tags')
    TargetOptions = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#TargetOptions', name: 'TargetOptions', traits: {"smithy.api#enum" => [{"value" => "INPUT", "name" => "INPUT", "documentation" => "INPUT"}, {"value" => "OUTPUT", "name" => "OUTPUT", "documentation" => "OUTPUT"}]})
    TemporalStatistics = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#TemporalStatistics', name: 'TemporalStatistics', traits: {"smithy.api#enum" => [{"value" => "MEAN", "name" => "MEAN", "documentation" => "MEAN"}, {"value" => "MEDIAN", "name" => "MEDIAN", "documentation" => "MEDIAN"}, {"value" => "STANDARD_DEVIATION", "name" => "STANDARD_DEVIATION", "documentation" => "STANDARD_DEVIATION"}]})
    TemporalStatisticsConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#TemporalStatisticsConfigInput', name: 'TemporalStatisticsConfigInput')
    TemporalStatisticsListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#TemporalStatisticsListInput', name: 'TemporalStatisticsListInput', traits: {"smithy.api#length" => {"min" => 1}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRangeFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#TimeRangeFilterInput', name: 'TimeRangeFilterInput', traits: {"smithy.api#sensitive" => {}})
    TimeRangeFilterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#TimeRangeFilterOutput', name: 'TimeRangeFilterOutput', traits: {"smithy.api#sensitive" => {}})
    Unit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#Unit', name: 'Unit', traits: {"smithy.api#enum" => [{"value" => "METERS", "name" => "METERS", "documentation" => "METERS"}]})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#UntagResourceOutput', name: 'UntagResourceOutput')
    UserDefined = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#UserDefined', name: 'UserDefined')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VectorEnrichmentJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobArn', name: 'VectorEnrichmentJobArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,12}:sagemaker-geospatial:[a-z0-9-]{1,25}:[0-9]{12}:vector-enrichment-job/[a-z0-9]{12,}$"})
    VectorEnrichmentJobConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobConfig', name: 'VectorEnrichmentJobConfig')
    VectorEnrichmentJobDataSourceConfigInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobDataSourceConfigInput', name: 'VectorEnrichmentJobDataSourceConfigInput')
    VectorEnrichmentJobDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobDocumentType', name: 'VectorEnrichmentJobDocumentType', traits: {"smithy.api#enum" => [{"value" => "CSV", "name" => "CSV"}]})
    VectorEnrichmentJobErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobErrorDetails', name: 'VectorEnrichmentJobErrorDetails')
    VectorEnrichmentJobErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobErrorType', name: 'VectorEnrichmentJobErrorType', traits: {"smithy.api#enum" => [{"value" => "CLIENT_ERROR", "name" => "CLIENT_ERROR", "documentation" => "CLIENT_ERROR"}, {"value" => "SERVER_ERROR", "name" => "SERVER_ERROR", "documentation" => "SERVER_ERROR"}]})
    VectorEnrichmentJobExportErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobExportErrorDetails', name: 'VectorEnrichmentJobExportErrorDetails')
    VectorEnrichmentJobExportErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobExportErrorType', name: 'VectorEnrichmentJobExportErrorType', traits: {"smithy.api#enum" => [{"value" => "CLIENT_ERROR", "name" => "CLIENT_ERROR"}, {"value" => "SERVER_ERROR", "name" => "SERVER_ERROR"}]})
    VectorEnrichmentJobExportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobExportStatus', name: 'VectorEnrichmentJobExportStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    VectorEnrichmentJobInputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobInputConfig', name: 'VectorEnrichmentJobInputConfig')
    VectorEnrichmentJobList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobList', name: 'VectorEnrichmentJobList')
    VectorEnrichmentJobS3Data = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobS3Data', name: 'VectorEnrichmentJobS3Data')
    VectorEnrichmentJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobStatus', name: 'VectorEnrichmentJobStatus', traits: {"smithy.api#enum" => [{"value" => "INITIALIZING", "name" => "INITIALIZING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}]})
    VectorEnrichmentJobType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#VectorEnrichmentJobType', name: 'VectorEnrichmentJobType', traits: {"smithy.api#enum" => [{"value" => "REVERSE_GEOCODING", "name" => "REVERSE_GEOCODING"}, {"value" => "MAP_MATCHING", "name" => "MAP_MATCHING"}]})
    ViewOffNadirInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ViewOffNadirInput', name: 'ViewOffNadirInput')
    ViewSunAzimuthInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ViewSunAzimuthInput', name: 'ViewSunAzimuthInput')
    ViewSunElevationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ViewSunElevationInput', name: 'ViewSunElevationInput')
    ZonalStatistics = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sagemakergeospatial#ZonalStatistics', name: 'ZonalStatistics', traits: {"smithy.api#enum" => [{"value" => "MEAN", "name" => "MEAN", "documentation" => "MEAN"}, {"value" => "MEDIAN", "name" => "MEDIAN", "documentation" => "MEDIAN"}, {"value" => "STANDARD_DEVIATION", "name" => "STANDARD_DEVIATION", "documentation" => "STANDARD_DEVIATION"}, {"value" => "MAX", "name" => "MAX", "documentation" => "MAX"}, {"value" => "MIN", "name" => "MIN", "documentation" => "MIN"}, {"value" => "SUM", "name" => "SUM", "documentation" => "SUM"}]})
    ZonalStatisticsConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sagemakergeospatial#ZonalStatisticsConfigInput', name: 'ZonalStatisticsConfigInput')
    ZonalStatisticsListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sagemakergeospatial#ZonalStatisticsListInput', name: 'ZonalStatisticsListInput', traits: {"smithy.api#length" => {"min" => 1}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AreaOfInterest.add_member(:area_of_interest_geometry, Types::AreaOfInterest::AreaOfInterestGeometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AreaOfInterestGeometry, location_name: 'AreaOfInterestGeometry'))
    AreaOfInterest.add_member(:unknown, Types::AreaOfInterest::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AreaOfInterest.type = Types::AreaOfInterest
    AreaOfInterestGeometry.add_member(:polygon_geometry, Types::AreaOfInterestGeometry::PolygonGeometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolygonGeometryInput, location_name: 'PolygonGeometry'))
    AreaOfInterestGeometry.add_member(:multi_polygon_geometry, Types::AreaOfInterestGeometry::MultiPolygonGeometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiPolygonGeometryInput, location_name: 'MultiPolygonGeometry'))
    AreaOfInterestGeometry.add_member(:unknown, Types::AreaOfInterestGeometry::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AreaOfInterestGeometry.type = Types::AreaOfInterestGeometry
    AssetValue.add_member(:href, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Href'))
    AssetValue.type = Types::AssetValue
    AssetsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    AssetsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetValue)
    BandMathConfigInput.add_member(:predefined_indices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'PredefinedIndices'))
    BandMathConfigInput.add_member(:custom_indices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomIndicesInput, location_name: 'CustomIndices'))
    BandMathConfigInput.type = Types::BandMathConfigInput
    CloudMaskingConfigInput.type = Types::CloudMaskingConfigInput
    CloudRemovalConfigInput.add_member(:algorithm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmNameCloudRemoval, location_name: 'AlgorithmName'))
    CloudRemovalConfigInput.add_member(:interpolation_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'InterpolationValue'))
    CloudRemovalConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    CloudRemovalConfigInput.type = Types::CloudRemovalConfigInput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ConflictException.type = Types::ConflictException
    CustomIndicesInput.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsListInput, location_name: 'Operations'))
    CustomIndicesInput.type = Types::CustomIndicesInput
    DataCollectionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RasterDataCollectionMetadata)
    DeleteEarthObservationJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEarthObservationJobInput.type = Types::DeleteEarthObservationJobInput
    DeleteEarthObservationJobOutput.type = Types::DeleteEarthObservationJobOutput
    DeleteVectorEnrichmentJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVectorEnrichmentJobInput.type = Types::DeleteVectorEnrichmentJobInput
    DeleteVectorEnrichmentJobOutput.type = Types::DeleteVectorEnrichmentJobOutput
    EarthObservationJobErrorDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobErrorType, location_name: 'Type'))
    EarthObservationJobErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    EarthObservationJobErrorDetails.type = Types::EarthObservationJobErrorDetails
    EarthObservationJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEarthObservationJobOutputConfig)
    EarthObservationJobOutputBands.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputBand)
    EoCloudCoverInput.add_member(:lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LowerBound', traits: {"smithy.api#required" => {}}))
    EoCloudCoverInput.add_member(:upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'UpperBound', traits: {"smithy.api#required" => {}}))
    EoCloudCoverInput.type = Types::EoCloudCoverInput
    ExportEarthObservationJobOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 36, "max" => 64}}))
    ExportEarthObservationJobOperationInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationInput.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfigInput, location_name: 'OutputConfig', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationInput.add_member(:export_source_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ExportSourceImages'))
    ExportEarthObservationJobOperationInput.type = Types::ExportEarthObservationJobOperationInput
    ExportEarthObservationJobOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExportEarthObservationJobOperationOutput.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobExportStatus, location_name: 'ExportStatus', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationOutput.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfigInput, location_name: 'OutputConfig', traits: {"smithy.api#required" => {}}))
    ExportEarthObservationJobOperationOutput.add_member(:export_source_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ExportSourceImages'))
    ExportEarthObservationJobOperationOutput.type = Types::ExportEarthObservationJobOperationOutput
    ExportErrorDetails.add_member(:export_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrorDetailsOutput, location_name: 'ExportResults'))
    ExportErrorDetails.add_member(:export_source_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrorDetailsOutput, location_name: 'ExportSourceImages'))
    ExportErrorDetails.type = Types::ExportErrorDetails
    ExportErrorDetailsOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrorType, location_name: 'Type'))
    ExportErrorDetailsOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ExportErrorDetailsOutput.type = Types::ExportErrorDetailsOutput
    ExportS3DataInput.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#required" => {}}))
    ExportS3DataInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    ExportS3DataInput.type = Types::ExportS3DataInput
    ExportVectorEnrichmentJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 36, "max" => 64}}))
    ExportVectorEnrichmentJobInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobInput.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobInput.type = Types::ExportVectorEnrichmentJobInput
    ExportVectorEnrichmentJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExportVectorEnrichmentJobOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobOutput.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportStatus, location_name: 'ExportStatus', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobOutput.add_member(:output_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobOutput.type = Types::ExportVectorEnrichmentJobOutput
    ExportVectorEnrichmentJobOutputConfig.add_member(:s3_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobS3Data, location_name: 'S3Data', traits: {"smithy.api#required" => {}}))
    ExportVectorEnrichmentJobOutputConfig.type = Types::ExportVectorEnrichmentJobOutputConfig
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Filter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Filter.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'Minimum'))
    Filter.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'Maximum'))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GeoMosaicConfigInput.add_member(:algorithm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmNameGeoMosaic, location_name: 'AlgorithmName'))
    GeoMosaicConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    GeoMosaicConfigInput.type = Types::GeoMosaicConfigInput
    Geometry.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Geometry.add_member(:coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings, location_name: 'Coordinates', traits: {"smithy.api#required" => {}}))
    Geometry.type = Types::Geometry
    GetEarthObservationJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEarthObservationJobInput.type = Types::GetEarthObservationJobInput
    GetEarthObservationJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetEarthObservationJobOutput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    GetEarthObservationJobOutput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfigOutput, location_name: 'InputConfig', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfigInput, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    GetEarthObservationJobOutput.add_member(:output_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobOutputBands, location_name: 'OutputBands'))
    GetEarthObservationJobOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn'))
    GetEarthObservationJobOutput.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobErrorDetails, location_name: 'ErrorDetails'))
    GetEarthObservationJobOutput.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobExportStatus, location_name: 'ExportStatus'))
    GetEarthObservationJobOutput.add_member(:export_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrorDetails, location_name: 'ExportErrorDetails'))
    GetEarthObservationJobOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    GetEarthObservationJobOutput.type = Types::GetEarthObservationJobOutput
    GetRasterDataCollectionOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRasterDataCollectionOperationInput.type = Types::GetRasterDataCollectionOperationInput
    GetRasterDataCollectionOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:description_page_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DescriptionPageUrl', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:supported_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'SupportedFilters', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:image_source_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSourceBandList, location_name: 'ImageSourceBands', traits: {"smithy.api#required" => {}}))
    GetRasterDataCollectionOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    GetRasterDataCollectionOperationOutput.type = Types::GetRasterDataCollectionOperationOutput
    GetTileInput.add_member(:x, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'x', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTileInput.add_member(:y, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'y', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTileInput.add_member(:z, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'z', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTileInput.add_member(:image_assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'ImageAssets', traits: {"smithy.api#httpQuery" => "ImageAssets", "smithy.api#required" => {}}))
    GetTileInput.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetOptions, location_name: 'Target', traits: {"smithy.api#httpQuery" => "Target", "smithy.api#required" => {}}))
    GetTileInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#httpQuery" => "Arn", "smithy.api#required" => {}}))
    GetTileInput.add_member(:image_mask, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ImageMask', traits: {"smithy.api#httpQuery" => "ImageMask"}))
    GetTileInput.add_member(:output_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'OutputFormat', traits: {"smithy.api#httpQuery" => "OutputFormat"}))
    GetTileInput.add_member(:time_range_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'TimeRangeFilter', traits: {"smithy.api#httpQuery" => "TimeRangeFilter"}))
    GetTileInput.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'PropertyFilters', traits: {"smithy.api#httpQuery" => "PropertyFilters"}))
    GetTileInput.add_member(:output_data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputType, location_name: 'OutputDataType', traits: {"smithy.api#httpQuery" => "OutputDataType"}))
    GetTileInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#httpQuery" => "ExecutionRoleArn"}))
    GetTileInput.type = Types::GetTileInput
    GetTileOutput.add_member(:binary_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryFile, location_name: 'BinaryFile', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetTileOutput[:http_payload] = :binary_file
    GetTileOutput[:http_payload_member] = GetTileOutput.member(:binary_file)
    GetTileOutput.type = Types::GetTileOutput
    GetVectorEnrichmentJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVectorEnrichmentJobInput.type = Types::GetVectorEnrichmentJobInput
    GetVectorEnrichmentJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetVectorEnrichmentJobOutput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    GetVectorEnrichmentJobOutput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, location_name: 'InputConfig', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    GetVectorEnrichmentJobOutput.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobErrorDetails, location_name: 'ErrorDetails'))
    GetVectorEnrichmentJobOutput.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportStatus, location_name: 'ExportStatus'))
    GetVectorEnrichmentJobOutput.add_member(:export_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportErrorDetails, location_name: 'ExportErrorDetails'))
    GetVectorEnrichmentJobOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    GetVectorEnrichmentJobOutput.type = Types::GetVectorEnrichmentJobOutput
    ImageSourceBandList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    InputConfigInput.add_member(:previous_earth_observation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'PreviousEarthObservationJobArn'))
    InputConfigInput.add_member(:raster_data_collection_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RasterDataCollectionQueryInput, location_name: 'RasterDataCollectionQuery'))
    InputConfigInput.type = Types::InputConfigInput
    InputConfigOutput.add_member(:previous_earth_observation_job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'PreviousEarthObservationJobArn'))
    InputConfigOutput.add_member(:raster_data_collection_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RasterDataCollectionQueryOutput, location_name: 'RasterDataCollectionQuery'))
    InputConfigOutput.type = Types::InputConfigOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    InternalServerException.type = Types::InternalServerException
    ItemSource.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#required" => {}}))
    ItemSource.add_member(:geometry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry', traits: {"smithy.api#required" => {}}))
    ItemSource.add_member(:assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetsMap, location_name: 'Assets'))
    ItemSource.add_member(:date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'DateTime', traits: {"smithy.api#required" => {}}))
    ItemSource.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: 'Properties'))
    ItemSource.type = Types::ItemSource
    ItemSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemSource)
    JobConfigInput.add_member(:band_math_config, Types::JobConfigInput::BandMathConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BandMathConfigInput, location_name: 'BandMathConfig'))
    JobConfigInput.add_member(:resampling_config, Types::JobConfigInput::ResamplingConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResamplingConfigInput, location_name: 'ResamplingConfig'))
    JobConfigInput.add_member(:temporal_statistics_config, Types::JobConfigInput::TemporalStatisticsConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporalStatisticsConfigInput, location_name: 'TemporalStatisticsConfig'))
    JobConfigInput.add_member(:cloud_removal_config, Types::JobConfigInput::CloudRemovalConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudRemovalConfigInput, location_name: 'CloudRemovalConfig'))
    JobConfigInput.add_member(:zonal_statistics_config, Types::JobConfigInput::ZonalStatisticsConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalStatisticsConfigInput, location_name: 'ZonalStatisticsConfig'))
    JobConfigInput.add_member(:geo_mosaic_config, Types::JobConfigInput::GeoMosaicConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeoMosaicConfigInput, location_name: 'GeoMosaicConfig'))
    JobConfigInput.add_member(:stack_config, Types::JobConfigInput::StackConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigInput, location_name: 'StackConfig'))
    JobConfigInput.add_member(:cloud_masking_config, Types::JobConfigInput::CloudMaskingConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudMaskingConfigInput, location_name: 'CloudMaskingConfig'))
    JobConfigInput.add_member(:land_cover_segmentation_config, Types::JobConfigInput::LandCoverSegmentationConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandCoverSegmentationConfigInput, location_name: 'LandCoverSegmentationConfig'))
    JobConfigInput.add_member(:unknown, Types::JobConfigInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobConfigInput.type = Types::JobConfigInput
    LandCoverSegmentationConfigInput.type = Types::LandCoverSegmentationConfigInput
    LandsatCloudCoverLandInput.add_member(:lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LowerBound', traits: {"smithy.api#required" => {}}))
    LandsatCloudCoverLandInput.add_member(:upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'UpperBound', traits: {"smithy.api#required" => {}}))
    LandsatCloudCoverLandInput.type = Types::LandsatCloudCoverLandInput
    LinearRing.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position)
    LinearRings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRing)
    LinearRingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings)
    ListEarthObservationJobOutputConfig.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobOutputConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobOutputConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListEarthObservationJobOutputConfig.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobOutputConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobOutputConfig.add_member(:operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'OperationType', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobOutputConfig.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListEarthObservationJobOutputConfig.type = Types::ListEarthObservationJobOutputConfig
    ListEarthObservationJobsInput.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobStatus, location_name: 'StatusEquals'))
    ListEarthObservationJobsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    ListEarthObservationJobsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SortBy'))
    ListEarthObservationJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEarthObservationJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListEarthObservationJobsInput.type = Types::ListEarthObservationJobsInput
    ListEarthObservationJobsOutput.add_member(:earth_observation_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobList, location_name: 'EarthObservationJobSummaries', traits: {"smithy.api#required" => {}}))
    ListEarthObservationJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListEarthObservationJobsOutput.type = Types::ListEarthObservationJobsOutput
    ListRasterDataCollectionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRasterDataCollectionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults", "smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListRasterDataCollectionsOperationInput.type = Types::ListRasterDataCollectionsOperationInput
    ListRasterDataCollectionsOperationOutput.add_member(:raster_data_collection_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionsList, location_name: 'RasterDataCollectionSummaries', traits: {"smithy.api#required" => {}}))
    ListRasterDataCollectionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRasterDataCollectionsOperationOutput.type = Types::ListRasterDataCollectionsOperationOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVectorEnrichmentJobOutputConfig.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobOutputConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobOutputConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobOutputConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListVectorEnrichmentJobOutputConfig.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobOutputConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobOutputConfig.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListVectorEnrichmentJobOutputConfig.type = Types::ListVectorEnrichmentJobOutputConfig
    ListVectorEnrichmentJobsInput.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusEquals'))
    ListVectorEnrichmentJobsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    ListVectorEnrichmentJobsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SortBy'))
    ListVectorEnrichmentJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListVectorEnrichmentJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListVectorEnrichmentJobsInput.type = Types::ListVectorEnrichmentJobsInput
    ListVectorEnrichmentJobsOutput.add_member(:vector_enrichment_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobList, location_name: 'VectorEnrichmentJobSummaries', traits: {"smithy.api#required" => {}}))
    ListVectorEnrichmentJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListVectorEnrichmentJobsOutput.type = Types::ListVectorEnrichmentJobsOutput
    MapMatchingConfig.add_member(:id_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'IdAttributeName', traits: {"smithy.api#required" => {}}))
    MapMatchingConfig.add_member(:y_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'YAttributeName', traits: {"smithy.api#required" => {}}))
    MapMatchingConfig.add_member(:x_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'XAttributeName', traits: {"smithy.api#required" => {}}))
    MapMatchingConfig.add_member(:timestamp_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'TimestampAttributeName', traits: {"smithy.api#required" => {}}))
    MapMatchingConfig.type = Types::MapMatchingConfig
    MultiPolygonGeometryInput.add_member(:coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRingsList, location_name: 'Coordinates', traits: {"smithy.api#required" => {}}))
    MultiPolygonGeometryInput.type = Types::MultiPolygonGeometryInput
    Operation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    Operation.add_member(:equation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Equation', traits: {"smithy.api#required" => {}}))
    Operation.add_member(:output_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputType, location_name: 'OutputType'))
    Operation.type = Types::Operation
    OperationsListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operation)
    OutputBand.add_member(:band_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'BandName', traits: {"smithy.api#required" => {}}))
    OutputBand.add_member(:output_data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputType, location_name: 'OutputDataType', traits: {"smithy.api#required" => {}}))
    OutputBand.type = Types::OutputBand
    OutputConfigInput.add_member(:s3_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportS3DataInput, location_name: 'S3Data', traits: {"smithy.api#required" => {}}))
    OutputConfigInput.type = Types::OutputConfigInput
    OutputResolutionResamplingInput.add_member(:user_defined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDefined, location_name: 'UserDefined', traits: {"smithy.api#required" => {}}))
    OutputResolutionResamplingInput.type = Types::OutputResolutionResamplingInput
    OutputResolutionStackInput.add_member(:predefined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredefinedResolution, location_name: 'Predefined'))
    OutputResolutionStackInput.add_member(:user_defined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDefined, location_name: 'UserDefined'))
    OutputResolutionStackInput.type = Types::OutputResolutionStackInput
    PlatformInput.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    PlatformInput.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator'))
    PlatformInput.type = Types::PlatformInput
    PolygonGeometryInput.add_member(:coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinearRings, location_name: 'Coordinates', traits: {"smithy.api#required" => {}}))
    PolygonGeometryInput.type = Types::PolygonGeometryInput
    Position.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double)
    Properties.add_member(:eo_cloud_cover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'EoCloudCover'))
    Properties.add_member(:view_off_nadir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'ViewOffNadir'))
    Properties.add_member(:view_sun_azimuth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'ViewSunAzimuth'))
    Properties.add_member(:view_sun_elevation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'ViewSunElevation'))
    Properties.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Platform'))
    Properties.add_member(:landsat_cloud_cover_land, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LandsatCloudCoverLand'))
    Properties.type = Types::Properties
    Property.add_member(:eo_cloud_cover, Types::Property::EoCloudCover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EoCloudCoverInput, location_name: 'EoCloudCover'))
    Property.add_member(:view_off_nadir, Types::Property::ViewOffNadir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewOffNadirInput, location_name: 'ViewOffNadir'))
    Property.add_member(:view_sun_azimuth, Types::Property::ViewSunAzimuth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewSunAzimuthInput, location_name: 'ViewSunAzimuth'))
    Property.add_member(:view_sun_elevation, Types::Property::ViewSunElevation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewSunElevationInput, location_name: 'ViewSunElevation'))
    Property.add_member(:platform, Types::Property::Platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformInput, location_name: 'Platform'))
    Property.add_member(:landsat_cloud_cover_land, Types::Property::LandsatCloudCoverLand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LandsatCloudCoverLandInput, location_name: 'LandsatCloudCoverLand'))
    Property.add_member(:unknown, Types::Property::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Property.type = Types::Property
    PropertyFilter.add_member(:property, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Property, location_name: 'Property', traits: {"smithy.api#required" => {}}))
    PropertyFilter.type = Types::PropertyFilter
    PropertyFilters.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFiltersList, location_name: 'Properties'))
    PropertyFilters.add_member(:logical_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogicalOperator, location_name: 'LogicalOperator'))
    PropertyFilters.type = Types::PropertyFilters
    PropertyFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilter)
    RasterDataCollectionMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionMetadata.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionMetadata.add_member(:description_page_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'DescriptionPageUrl'))
    RasterDataCollectionMetadata.add_member(:supported_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'SupportedFilters', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionMetadata.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    RasterDataCollectionMetadata.type = Types::RasterDataCollectionMetadata
    RasterDataCollectionQueryInput.add_member(:raster_data_collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'RasterDataCollectionArn', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryInput.add_member(:time_range_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeFilterInput, location_name: 'TimeRangeFilter', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryInput.add_member(:area_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: 'AreaOfInterest'))
    RasterDataCollectionQueryInput.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilters, location_name: 'PropertyFilters'))
    RasterDataCollectionQueryInput.type = Types::RasterDataCollectionQueryInput
    RasterDataCollectionQueryOutput.add_member(:raster_data_collection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'RasterDataCollectionArn', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryOutput.add_member(:raster_data_collection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'RasterDataCollectionName', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryOutput.add_member(:time_range_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeFilterOutput, location_name: 'TimeRangeFilter', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryOutput.add_member(:area_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: 'AreaOfInterest'))
    RasterDataCollectionQueryOutput.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilters, location_name: 'PropertyFilters'))
    RasterDataCollectionQueryOutput.type = Types::RasterDataCollectionQueryOutput
    RasterDataCollectionQueryWithBandFilterInput.add_member(:time_range_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeFilterInput, location_name: 'TimeRangeFilter', traits: {"smithy.api#required" => {}}))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:area_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: 'AreaOfInterest'))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilters, location_name: 'PropertyFilters'))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:band_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'BandFilter'))
    RasterDataCollectionQueryWithBandFilterInput.type = Types::RasterDataCollectionQueryWithBandFilterInput
    ResamplingConfigInput.add_member(:output_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputResolutionResamplingInput, location_name: 'OutputResolution', traits: {"smithy.api#required" => {}}))
    ResamplingConfigInput.add_member(:algorithm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmNameResampling, location_name: 'AlgorithmName'))
    ResamplingConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    ResamplingConfigInput.type = Types::ResamplingConfigInput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ReverseGeocodingConfig.add_member(:y_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'YAttributeName', traits: {"smithy.api#required" => {}}))
    ReverseGeocodingConfig.add_member(:x_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'XAttributeName', traits: {"smithy.api#required" => {}}))
    ReverseGeocodingConfig.type = Types::ReverseGeocodingConfig
    SearchRasterDataCollectionInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    SearchRasterDataCollectionInput.add_member(:raster_data_collection_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RasterDataCollectionQueryWithBandFilterInput, location_name: 'RasterDataCollectionQuery', traits: {"smithy.api#required" => {}}))
    SearchRasterDataCollectionInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    SearchRasterDataCollectionInput.type = Types::SearchRasterDataCollectionInput
    SearchRasterDataCollectionOutput.add_member(:approximate_result_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'ApproximateResultCount', traits: {"smithy.api#required" => {}}))
    SearchRasterDataCollectionOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    SearchRasterDataCollectionOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemSourceList, location_name: 'Items'))
    SearchRasterDataCollectionOutput.type = Types::SearchRasterDataCollectionOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StackConfigInput.add_member(:output_resolution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputResolutionStackInput, location_name: 'OutputResolution'))
    StackConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    StackConfigInput.type = Types::StackConfigInput
    StartEarthObservationJobInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#required" => {}}))
    StartEarthObservationJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 36, "max" => 64}}))
    StartEarthObservationJobInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    StartEarthObservationJobInput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfigInput, location_name: 'InputConfig', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobInput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfigInput, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartEarthObservationJobInput.type = Types::StartEarthObservationJobInput
    StartEarthObservationJobOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartEarthObservationJobOperationOutput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    StartEarthObservationJobOperationOutput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputConfigOutput, location_name: 'InputConfig'))
    StartEarthObservationJobOperationOutput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfigInput, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    StartEarthObservationJobOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartEarthObservationJobOperationOutput.type = Types::StartEarthObservationJobOperationOutput
    StartVectorEnrichmentJobInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#required" => {}}))
    StartVectorEnrichmentJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 36, "max" => 64}}))
    StartVectorEnrichmentJobInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    StartVectorEnrichmentJobInput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, location_name: 'InputConfig', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobInput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartVectorEnrichmentJobInput.type = Types::StartVectorEnrichmentJobInput
    StartVectorEnrichmentJobOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartVectorEnrichmentJobOperationOutput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DurationInSeconds', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    StartVectorEnrichmentJobOperationOutput.add_member(:input_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, location_name: 'InputConfig', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:job_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, location_name: 'JobConfig', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    StartVectorEnrichmentJobOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    StartVectorEnrichmentJobOperationOutput.type = Types::StartVectorEnrichmentJobOperationOutput
    StopEarthObservationJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    StopEarthObservationJobInput.type = Types::StopEarthObservationJobInput
    StopEarthObservationJobOutput.type = Types::StopEarthObservationJobOutput
    StopVectorEnrichmentJobInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    StopVectorEnrichmentJobInput.type = Types::StopVectorEnrichmentJobInput
    StopVectorEnrichmentJobOutput.type = Types::StopVectorEnrichmentJobOutput
    StringListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TemporalStatisticsConfigInput.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupBy, location_name: 'GroupBy'))
    TemporalStatisticsConfigInput.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporalStatisticsListInput, location_name: 'Statistics', traits: {"smithy.api#required" => {}}))
    TemporalStatisticsConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    TemporalStatisticsConfigInput.type = Types::TemporalStatisticsConfigInput
    TemporalStatisticsListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporalStatistics)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ThrottlingException.type = Types::ThrottlingException
    TimeRangeFilterInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    TimeRangeFilterInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    TimeRangeFilterInput.type = Types::TimeRangeFilterInput
    TimeRangeFilterOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TimeRangeFilterOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndTime', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    TimeRangeFilterOutput.type = Types::TimeRangeFilterOutput
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UserDefined.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    UserDefined.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit', traits: {"smithy.api#required" => {}}))
    UserDefined.type = Types::UserDefined
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ValidationException.type = Types::ValidationException
    VectorEnrichmentJobConfig.add_member(:reverse_geocoding_config, Types::VectorEnrichmentJobConfig::ReverseGeocodingConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReverseGeocodingConfig, location_name: 'ReverseGeocodingConfig'))
    VectorEnrichmentJobConfig.add_member(:map_matching_config, Types::VectorEnrichmentJobConfig::MapMatchingConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapMatchingConfig, location_name: 'MapMatchingConfig'))
    VectorEnrichmentJobConfig.add_member(:unknown, Types::VectorEnrichmentJobConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    VectorEnrichmentJobConfig.type = Types::VectorEnrichmentJobConfig
    VectorEnrichmentJobDataSourceConfigInput.add_member(:s3_data, Types::VectorEnrichmentJobDataSourceConfigInput::S3Data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobS3Data, location_name: 'S3Data'))
    VectorEnrichmentJobDataSourceConfigInput.add_member(:unknown, Types::VectorEnrichmentJobDataSourceConfigInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    VectorEnrichmentJobDataSourceConfigInput.type = Types::VectorEnrichmentJobDataSourceConfigInput
    VectorEnrichmentJobErrorDetails.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobErrorType, location_name: 'ErrorType'))
    VectorEnrichmentJobErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage'))
    VectorEnrichmentJobErrorDetails.type = Types::VectorEnrichmentJobErrorDetails
    VectorEnrichmentJobExportErrorDetails.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportErrorType, location_name: 'Type'))
    VectorEnrichmentJobExportErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    VectorEnrichmentJobExportErrorDetails.type = Types::VectorEnrichmentJobExportErrorDetails
    VectorEnrichmentJobInputConfig.add_member(:document_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobDocumentType, location_name: 'DocumentType', traits: {"smithy.api#required" => {}}))
    VectorEnrichmentJobInputConfig.add_member(:data_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorEnrichmentJobDataSourceConfigInput, location_name: 'DataSourceConfig', traits: {"smithy.api#required" => {}}))
    VectorEnrichmentJobInputConfig.type = Types::VectorEnrichmentJobInputConfig
    VectorEnrichmentJobList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobOutputConfig)
    VectorEnrichmentJobS3Data.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#required" => {}}))
    VectorEnrichmentJobS3Data.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKeyId'))
    VectorEnrichmentJobS3Data.type = Types::VectorEnrichmentJobS3Data
    ViewOffNadirInput.add_member(:lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LowerBound', traits: {"smithy.api#required" => {}}))
    ViewOffNadirInput.add_member(:upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'UpperBound', traits: {"smithy.api#required" => {}}))
    ViewOffNadirInput.type = Types::ViewOffNadirInput
    ViewSunAzimuthInput.add_member(:lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LowerBound', traits: {"smithy.api#required" => {}}))
    ViewSunAzimuthInput.add_member(:upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'UpperBound', traits: {"smithy.api#required" => {}}))
    ViewSunAzimuthInput.type = Types::ViewSunAzimuthInput
    ViewSunElevationInput.add_member(:lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'LowerBound', traits: {"smithy.api#required" => {}}))
    ViewSunElevationInput.add_member(:upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'UpperBound', traits: {"smithy.api#required" => {}}))
    ViewSunElevationInput.type = Types::ViewSunElevationInput
    ZonalStatisticsConfigInput.add_member(:zone_s3_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'ZoneS3Path', traits: {"smithy.api#required" => {}}))
    ZonalStatisticsConfigInput.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalStatisticsListInput, location_name: 'Statistics', traits: {"smithy.api#required" => {}}))
    ZonalStatisticsConfigInput.add_member(:target_bands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringListInput, location_name: 'TargetBands'))
    ZonalStatisticsConfigInput.add_member(:zone_s3_path_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'ZoneS3PathKmsKeyId'))
    ZonalStatisticsConfigInput.type = Types::ZonalStatisticsConfigInput
    ZonalStatisticsListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalStatistics)

    SageMakerGeospatial = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakergeospatial#SageMakerGeospatial"
      service.name = "SageMakerGeospatial"
      service.version = "2020-05-27"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker Geospatial", "arnNamespace" => "sagemaker-geospatial", "cloudTrailEventSource" => "sagemaker-geospatial.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "sagemaker-geospatial"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Amazon SageMaker geospatial capabilities"}
      service.add_operation(:delete_earth_observation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#DeleteEarthObservationJob"
        operation.name = "DeleteEarthObservationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEarthObservationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEarthObservationJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/earth-observation-jobs/{Arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vector_enrichment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#DeleteVectorEnrichmentJob"
        operation.name = "DeleteVectorEnrichmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorEnrichmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVectorEnrichmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/vector-enrichment-jobs/{Arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_earth_observation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ExportEarthObservationJob"
        operation.name = "ExportEarthObservationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportEarthObservationJobOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportEarthObservationJobOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/export-earth-observation-job"}}
      end)
      service.add_operation(:export_vector_enrichment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ExportVectorEnrichmentJob"
        operation.name = "ExportVectorEnrichmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/export-vector-enrichment-jobs"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_earth_observation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#GetEarthObservationJob"
        operation.name = "GetEarthObservationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEarthObservationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEarthObservationJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/earth-observation-jobs/{Arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_raster_data_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#GetRasterDataCollection"
        operation.name = "GetRasterDataCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRasterDataCollectionOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRasterDataCollectionOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/raster-data-collection/{Arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_tile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#GetTile"
        operation.name = "GetTile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTileInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTileOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tile/{z}/{x}/{y}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vector_enrichment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#GetVectorEnrichmentJob"
        operation.name = "GetVectorEnrichmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorEnrichmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetVectorEnrichmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/vector-enrichment-jobs/{Arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_earth_observation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ListEarthObservationJobs"
        operation.name = "ListEarthObservationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEarthObservationJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEarthObservationJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-earth-observation-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEarthObservationJobs.new
      end)
      service.add_operation(:list_raster_data_collections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ListRasterDataCollections"
        operation.name = "ListRasterDataCollections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRasterDataCollectionsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRasterDataCollectionsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/raster-data-collections"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRasterDataCollections.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_vector_enrichment_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#ListVectorEnrichmentJobs"
        operation.name = "ListVectorEnrichmentJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/list-vector-enrichment-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVectorEnrichmentJobs.new
      end)
      service.add_operation(:search_raster_data_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#SearchRasterDataCollection"
        operation.name = "SearchRasterDataCollection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRasterDataCollectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRasterDataCollectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/search-raster-data-collection"}}
        operation[:paginator] = Paginators::SearchRasterDataCollection.new
      end)
      service.add_operation(:start_earth_observation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#StartEarthObservationJob"
        operation.name = "StartEarthObservationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartEarthObservationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartEarthObservationJobOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/earth-observation-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_vector_enrichment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#StartVectorEnrichmentJob"
        operation.name = "StartVectorEnrichmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/vector-enrichment-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_earth_observation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#StopEarthObservationJob"
        operation.name = "StopEarthObservationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopEarthObservationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopEarthObservationJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/earth-observation-jobs/stop"}}
      end)
      service.add_operation(:stop_vector_enrichment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#StopVectorEnrichmentJob"
        operation.name = "StopVectorEnrichmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopVectorEnrichmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopVectorEnrichmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/vector-enrichment-jobs/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakergeospatial#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE"}}
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
