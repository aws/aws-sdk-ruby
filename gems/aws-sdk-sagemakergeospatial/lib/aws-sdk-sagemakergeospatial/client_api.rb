# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerGeospatial
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlgorithmNameCloudRemoval = Shapes::StringShape.new(name: 'AlgorithmNameCloudRemoval')
    AlgorithmNameGeoMosaic = Shapes::StringShape.new(name: 'AlgorithmNameGeoMosaic')
    AlgorithmNameResampling = Shapes::StringShape.new(name: 'AlgorithmNameResampling')
    AreaOfInterest = Shapes::UnionShape.new(name: 'AreaOfInterest')
    AreaOfInterestGeometry = Shapes::UnionShape.new(name: 'AreaOfInterestGeometry')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssetValue = Shapes::StructureShape.new(name: 'AssetValue')
    AssetsMap = Shapes::MapShape.new(name: 'AssetsMap')
    BandMathConfigInput = Shapes::StructureShape.new(name: 'BandMathConfigInput')
    BinaryFile = Shapes::BlobShape.new(name: 'BinaryFile', streaming: true)
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CloudMaskingConfigInput = Shapes::StructureShape.new(name: 'CloudMaskingConfigInput')
    CloudRemovalConfigInput = Shapes::StructureShape.new(name: 'CloudRemovalConfigInput')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CustomIndicesInput = Shapes::StructureShape.new(name: 'CustomIndicesInput')
    DataCollectionArn = Shapes::StringShape.new(name: 'DataCollectionArn')
    DataCollectionType = Shapes::StringShape.new(name: 'DataCollectionType')
    DataCollectionsList = Shapes::ListShape.new(name: 'DataCollectionsList')
    DeleteEarthObservationJobInput = Shapes::StructureShape.new(name: 'DeleteEarthObservationJobInput')
    DeleteEarthObservationJobOutput = Shapes::StructureShape.new(name: 'DeleteEarthObservationJobOutput')
    DeleteVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'DeleteVectorEnrichmentJobInput')
    DeleteVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'DeleteVectorEnrichmentJobOutput')
    Double = Shapes::FloatShape.new(name: 'Double')
    EarthObservationJobArn = Shapes::StringShape.new(name: 'EarthObservationJobArn')
    EarthObservationJobErrorDetails = Shapes::StructureShape.new(name: 'EarthObservationJobErrorDetails')
    EarthObservationJobErrorType = Shapes::StringShape.new(name: 'EarthObservationJobErrorType')
    EarthObservationJobExportStatus = Shapes::StringShape.new(name: 'EarthObservationJobExportStatus')
    EarthObservationJobList = Shapes::ListShape.new(name: 'EarthObservationJobList')
    EarthObservationJobOutputBands = Shapes::ListShape.new(name: 'EarthObservationJobOutputBands')
    EarthObservationJobStatus = Shapes::StringShape.new(name: 'EarthObservationJobStatus')
    EoCloudCoverInput = Shapes::StructureShape.new(name: 'EoCloudCoverInput')
    ExecutionRoleArn = Shapes::StringShape.new(name: 'ExecutionRoleArn')
    ExportEarthObservationJobInput = Shapes::StructureShape.new(name: 'ExportEarthObservationJobInput')
    ExportEarthObservationJobInputClientTokenString = Shapes::StringShape.new(name: 'ExportEarthObservationJobInputClientTokenString')
    ExportEarthObservationJobOutput = Shapes::StructureShape.new(name: 'ExportEarthObservationJobOutput')
    ExportErrorDetails = Shapes::StructureShape.new(name: 'ExportErrorDetails')
    ExportErrorDetailsOutput = Shapes::StructureShape.new(name: 'ExportErrorDetailsOutput')
    ExportErrorType = Shapes::StringShape.new(name: 'ExportErrorType')
    ExportS3DataInput = Shapes::StructureShape.new(name: 'ExportS3DataInput')
    ExportVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'ExportVectorEnrichmentJobInput')
    ExportVectorEnrichmentJobInputClientTokenString = Shapes::StringShape.new(name: 'ExportVectorEnrichmentJobInputClientTokenString')
    ExportVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'ExportVectorEnrichmentJobOutput')
    ExportVectorEnrichmentJobOutputConfig = Shapes::StructureShape.new(name: 'ExportVectorEnrichmentJobOutputConfig')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    Float = Shapes::FloatShape.new(name: 'Float')
    GeoMosaicConfigInput = Shapes::StructureShape.new(name: 'GeoMosaicConfigInput')
    Geometry = Shapes::StructureShape.new(name: 'Geometry')
    GetEarthObservationJobInput = Shapes::StructureShape.new(name: 'GetEarthObservationJobInput')
    GetEarthObservationJobOutput = Shapes::StructureShape.new(name: 'GetEarthObservationJobOutput')
    GetRasterDataCollectionInput = Shapes::StructureShape.new(name: 'GetRasterDataCollectionInput')
    GetRasterDataCollectionOutput = Shapes::StructureShape.new(name: 'GetRasterDataCollectionOutput')
    GetTileInput = Shapes::StructureShape.new(name: 'GetTileInput')
    GetTileOutput = Shapes::StructureShape.new(name: 'GetTileOutput')
    GetVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'GetVectorEnrichmentJobInput')
    GetVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'GetVectorEnrichmentJobOutput')
    GroupBy = Shapes::StringShape.new(name: 'GroupBy')
    ImageSourceBandList = Shapes::ListShape.new(name: 'ImageSourceBandList')
    InputConfigInput = Shapes::StructureShape.new(name: 'InputConfigInput')
    InputConfigOutput = Shapes::StructureShape.new(name: 'InputConfigOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ItemSource = Shapes::StructureShape.new(name: 'ItemSource')
    ItemSourceList = Shapes::ListShape.new(name: 'ItemSourceList')
    JobConfigInput = Shapes::UnionShape.new(name: 'JobConfigInput')
    KmsKey = Shapes::StringShape.new(name: 'KmsKey')
    LandCoverSegmentationConfigInput = Shapes::StructureShape.new(name: 'LandCoverSegmentationConfigInput')
    LandsatCloudCoverLandInput = Shapes::StructureShape.new(name: 'LandsatCloudCoverLandInput')
    LinearRing = Shapes::ListShape.new(name: 'LinearRing')
    LinearRings = Shapes::ListShape.new(name: 'LinearRings')
    LinearRingsList = Shapes::ListShape.new(name: 'LinearRingsList')
    ListEarthObservationJobInput = Shapes::StructureShape.new(name: 'ListEarthObservationJobInput')
    ListEarthObservationJobInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEarthObservationJobInputMaxResultsInteger')
    ListEarthObservationJobOutput = Shapes::StructureShape.new(name: 'ListEarthObservationJobOutput')
    ListEarthObservationJobOutputConfig = Shapes::StructureShape.new(name: 'ListEarthObservationJobOutputConfig')
    ListRasterDataCollectionsInput = Shapes::StructureShape.new(name: 'ListRasterDataCollectionsInput')
    ListRasterDataCollectionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRasterDataCollectionsInputMaxResultsInteger')
    ListRasterDataCollectionsOutput = Shapes::StructureShape.new(name: 'ListRasterDataCollectionsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'ListVectorEnrichmentJobInput')
    ListVectorEnrichmentJobInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListVectorEnrichmentJobInputMaxResultsInteger')
    ListVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'ListVectorEnrichmentJobOutput')
    ListVectorEnrichmentJobOutputConfig = Shapes::StructureShape.new(name: 'ListVectorEnrichmentJobOutputConfig')
    LogicalOperator = Shapes::StringShape.new(name: 'LogicalOperator')
    MapMatchingConfig = Shapes::StructureShape.new(name: 'MapMatchingConfig')
    MultiPolygonGeometryInput = Shapes::StructureShape.new(name: 'MultiPolygonGeometryInput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationsListInput = Shapes::ListShape.new(name: 'OperationsListInput')
    OutputBand = Shapes::StructureShape.new(name: 'OutputBand')
    OutputConfigInput = Shapes::StructureShape.new(name: 'OutputConfigInput')
    OutputResolutionResamplingInput = Shapes::StructureShape.new(name: 'OutputResolutionResamplingInput')
    OutputResolutionStackInput = Shapes::StructureShape.new(name: 'OutputResolutionStackInput')
    OutputType = Shapes::StringShape.new(name: 'OutputType')
    PlatformInput = Shapes::StructureShape.new(name: 'PlatformInput')
    PolygonGeometryInput = Shapes::StructureShape.new(name: 'PolygonGeometryInput')
    Position = Shapes::ListShape.new(name: 'Position')
    PredefinedResolution = Shapes::StringShape.new(name: 'PredefinedResolution')
    Properties = Shapes::StructureShape.new(name: 'Properties')
    Property = Shapes::UnionShape.new(name: 'Property')
    PropertyFilter = Shapes::StructureShape.new(name: 'PropertyFilter')
    PropertyFilters = Shapes::StructureShape.new(name: 'PropertyFilters')
    PropertyFiltersList = Shapes::ListShape.new(name: 'PropertyFiltersList')
    RasterDataCollectionMetadata = Shapes::StructureShape.new(name: 'RasterDataCollectionMetadata')
    RasterDataCollectionQueryInput = Shapes::StructureShape.new(name: 'RasterDataCollectionQueryInput')
    RasterDataCollectionQueryOutput = Shapes::StructureShape.new(name: 'RasterDataCollectionQueryOutput')
    RasterDataCollectionQueryWithBandFilterInput = Shapes::StructureShape.new(name: 'RasterDataCollectionQueryWithBandFilterInput')
    ResamplingConfigInput = Shapes::StructureShape.new(name: 'ResamplingConfigInput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ReverseGeocodingConfig = Shapes::StructureShape.new(name: 'ReverseGeocodingConfig')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchRasterDataCollectionInput = Shapes::StructureShape.new(name: 'SearchRasterDataCollectionInput')
    SearchRasterDataCollectionOutput = Shapes::StructureShape.new(name: 'SearchRasterDataCollectionOutput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StackConfigInput = Shapes::StructureShape.new(name: 'StackConfigInput')
    StartEarthObservationJobInput = Shapes::StructureShape.new(name: 'StartEarthObservationJobInput')
    StartEarthObservationJobInputClientTokenString = Shapes::StringShape.new(name: 'StartEarthObservationJobInputClientTokenString')
    StartEarthObservationJobInputNameString = Shapes::StringShape.new(name: 'StartEarthObservationJobInputNameString')
    StartEarthObservationJobOutput = Shapes::StructureShape.new(name: 'StartEarthObservationJobOutput')
    StartVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'StartVectorEnrichmentJobInput')
    StartVectorEnrichmentJobInputClientTokenString = Shapes::StringShape.new(name: 'StartVectorEnrichmentJobInputClientTokenString')
    StartVectorEnrichmentJobInputNameString = Shapes::StringShape.new(name: 'StartVectorEnrichmentJobInputNameString')
    StartVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'StartVectorEnrichmentJobOutput')
    StopEarthObservationJobInput = Shapes::StructureShape.new(name: 'StopEarthObservationJobInput')
    StopEarthObservationJobOutput = Shapes::StructureShape.new(name: 'StopEarthObservationJobOutput')
    StopVectorEnrichmentJobInput = Shapes::StructureShape.new(name: 'StopVectorEnrichmentJobInput')
    StopVectorEnrichmentJobOutput = Shapes::StructureShape.new(name: 'StopVectorEnrichmentJobOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringListInput = Shapes::ListShape.new(name: 'StringListInput')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TargetOptions = Shapes::StringShape.new(name: 'TargetOptions')
    TemporalStatistics = Shapes::StringShape.new(name: 'TemporalStatistics')
    TemporalStatisticsConfigInput = Shapes::StructureShape.new(name: 'TemporalStatisticsConfigInput')
    TemporalStatisticsListInput = Shapes::ListShape.new(name: 'TemporalStatisticsListInput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRangeFilterInput = Shapes::StructureShape.new(name: 'TimeRangeFilterInput')
    TimeRangeFilterOutput = Shapes::StructureShape.new(name: 'TimeRangeFilterOutput')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UserDefined = Shapes::StructureShape.new(name: 'UserDefined')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VectorEnrichmentJobArn = Shapes::StringShape.new(name: 'VectorEnrichmentJobArn')
    VectorEnrichmentJobConfig = Shapes::UnionShape.new(name: 'VectorEnrichmentJobConfig')
    VectorEnrichmentJobDataSourceConfigInput = Shapes::UnionShape.new(name: 'VectorEnrichmentJobDataSourceConfigInput')
    VectorEnrichmentJobDocumentType = Shapes::StringShape.new(name: 'VectorEnrichmentJobDocumentType')
    VectorEnrichmentJobErrorDetails = Shapes::StructureShape.new(name: 'VectorEnrichmentJobErrorDetails')
    VectorEnrichmentJobErrorType = Shapes::StringShape.new(name: 'VectorEnrichmentJobErrorType')
    VectorEnrichmentJobExportErrorDetails = Shapes::StructureShape.new(name: 'VectorEnrichmentJobExportErrorDetails')
    VectorEnrichmentJobExportErrorType = Shapes::StringShape.new(name: 'VectorEnrichmentJobExportErrorType')
    VectorEnrichmentJobExportStatus = Shapes::StringShape.new(name: 'VectorEnrichmentJobExportStatus')
    VectorEnrichmentJobInputConfig = Shapes::StructureShape.new(name: 'VectorEnrichmentJobInputConfig')
    VectorEnrichmentJobList = Shapes::ListShape.new(name: 'VectorEnrichmentJobList')
    VectorEnrichmentJobS3Data = Shapes::StructureShape.new(name: 'VectorEnrichmentJobS3Data')
    VectorEnrichmentJobStatus = Shapes::StringShape.new(name: 'VectorEnrichmentJobStatus')
    VectorEnrichmentJobType = Shapes::StringShape.new(name: 'VectorEnrichmentJobType')
    ViewOffNadirInput = Shapes::StructureShape.new(name: 'ViewOffNadirInput')
    ViewSunAzimuthInput = Shapes::StructureShape.new(name: 'ViewSunAzimuthInput')
    ViewSunElevationInput = Shapes::StructureShape.new(name: 'ViewSunElevationInput')
    ZonalStatistics = Shapes::StringShape.new(name: 'ZonalStatistics')
    ZonalStatisticsConfigInput = Shapes::StructureShape.new(name: 'ZonalStatisticsConfigInput')
    ZonalStatisticsListInput = Shapes::ListShape.new(name: 'ZonalStatisticsListInput')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AreaOfInterest.add_member(:area_of_interest_geometry, Shapes::ShapeRef.new(shape: AreaOfInterestGeometry, location_name: "AreaOfInterestGeometry"))
    AreaOfInterest.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AreaOfInterest.add_member_subclass(:area_of_interest_geometry, Types::AreaOfInterest::AreaOfInterestGeometry)
    AreaOfInterest.add_member_subclass(:unknown, Types::AreaOfInterest::Unknown)
    AreaOfInterest.struct_class = Types::AreaOfInterest

    AreaOfInterestGeometry.add_member(:multi_polygon_geometry, Shapes::ShapeRef.new(shape: MultiPolygonGeometryInput, location_name: "MultiPolygonGeometry"))
    AreaOfInterestGeometry.add_member(:polygon_geometry, Shapes::ShapeRef.new(shape: PolygonGeometryInput, location_name: "PolygonGeometry"))
    AreaOfInterestGeometry.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AreaOfInterestGeometry.add_member_subclass(:multi_polygon_geometry, Types::AreaOfInterestGeometry::MultiPolygonGeometry)
    AreaOfInterestGeometry.add_member_subclass(:polygon_geometry, Types::AreaOfInterestGeometry::PolygonGeometry)
    AreaOfInterestGeometry.add_member_subclass(:unknown, Types::AreaOfInterestGeometry::Unknown)
    AreaOfInterestGeometry.struct_class = Types::AreaOfInterestGeometry

    AssetValue.add_member(:href, Shapes::ShapeRef.new(shape: String, location_name: "Href"))
    AssetValue.struct_class = Types::AssetValue

    AssetsMap.key = Shapes::ShapeRef.new(shape: String)
    AssetsMap.value = Shapes::ShapeRef.new(shape: AssetValue)

    BandMathConfigInput.add_member(:custom_indices, Shapes::ShapeRef.new(shape: CustomIndicesInput, location_name: "CustomIndices"))
    BandMathConfigInput.add_member(:predefined_indices, Shapes::ShapeRef.new(shape: StringListInput, location_name: "PredefinedIndices"))
    BandMathConfigInput.struct_class = Types::BandMathConfigInput

    CloudMaskingConfigInput.struct_class = Types::CloudMaskingConfigInput

    CloudRemovalConfigInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: AlgorithmNameCloudRemoval, location_name: "AlgorithmName"))
    CloudRemovalConfigInput.add_member(:interpolation_value, Shapes::ShapeRef.new(shape: String, location_name: "InterpolationValue"))
    CloudRemovalConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    CloudRemovalConfigInput.struct_class = Types::CloudRemovalConfigInput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.struct_class = Types::ConflictException

    CustomIndicesInput.add_member(:operations, Shapes::ShapeRef.new(shape: OperationsListInput, location_name: "Operations"))
    CustomIndicesInput.struct_class = Types::CustomIndicesInput

    DataCollectionsList.member = Shapes::ShapeRef.new(shape: RasterDataCollectionMetadata)

    DeleteEarthObservationJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location: "uri", location_name: "Arn"))
    DeleteEarthObservationJobInput.struct_class = Types::DeleteEarthObservationJobInput

    DeleteEarthObservationJobOutput.struct_class = Types::DeleteEarthObservationJobOutput

    DeleteVectorEnrichmentJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location: "uri", location_name: "Arn"))
    DeleteVectorEnrichmentJobInput.struct_class = Types::DeleteVectorEnrichmentJobInput

    DeleteVectorEnrichmentJobOutput.struct_class = Types::DeleteVectorEnrichmentJobOutput

    EarthObservationJobErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EarthObservationJobErrorDetails.add_member(:type, Shapes::ShapeRef.new(shape: EarthObservationJobErrorType, location_name: "Type"))
    EarthObservationJobErrorDetails.struct_class = Types::EarthObservationJobErrorDetails

    EarthObservationJobList.member = Shapes::ShapeRef.new(shape: ListEarthObservationJobOutputConfig)

    EarthObservationJobOutputBands.member = Shapes::ShapeRef.new(shape: OutputBand)

    EoCloudCoverInput.add_member(:lower_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "LowerBound"))
    EoCloudCoverInput.add_member(:upper_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "UpperBound"))
    EoCloudCoverInput.struct_class = Types::EoCloudCoverInput

    ExportEarthObservationJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location_name: "Arn"))
    ExportEarthObservationJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ExportEarthObservationJobInputClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    ExportEarthObservationJobInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    ExportEarthObservationJobInput.add_member(:export_source_images, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExportSourceImages"))
    ExportEarthObservationJobInput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfigInput, required: true, location_name: "OutputConfig"))
    ExportEarthObservationJobInput.struct_class = Types::ExportEarthObservationJobInput

    ExportEarthObservationJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location_name: "Arn"))
    ExportEarthObservationJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    ExportEarthObservationJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    ExportEarthObservationJobOutput.add_member(:export_source_images, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExportSourceImages"))
    ExportEarthObservationJobOutput.add_member(:export_status, Shapes::ShapeRef.new(shape: EarthObservationJobExportStatus, required: true, location_name: "ExportStatus"))
    ExportEarthObservationJobOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfigInput, required: true, location_name: "OutputConfig"))
    ExportEarthObservationJobOutput.struct_class = Types::ExportEarthObservationJobOutput

    ExportErrorDetails.add_member(:export_results, Shapes::ShapeRef.new(shape: ExportErrorDetailsOutput, location_name: "ExportResults"))
    ExportErrorDetails.add_member(:export_source_images, Shapes::ShapeRef.new(shape: ExportErrorDetailsOutput, location_name: "ExportSourceImages"))
    ExportErrorDetails.struct_class = Types::ExportErrorDetails

    ExportErrorDetailsOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ExportErrorDetailsOutput.add_member(:type, Shapes::ShapeRef.new(shape: ExportErrorType, location_name: "Type"))
    ExportErrorDetailsOutput.struct_class = Types::ExportErrorDetailsOutput

    ExportS3DataInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    ExportS3DataInput.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    ExportS3DataInput.struct_class = Types::ExportS3DataInput

    ExportVectorEnrichmentJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location_name: "Arn"))
    ExportVectorEnrichmentJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobInputClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    ExportVectorEnrichmentJobInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    ExportVectorEnrichmentJobInput.add_member(:output_config, Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutputConfig, required: true, location_name: "OutputConfig"))
    ExportVectorEnrichmentJobInput.struct_class = Types::ExportVectorEnrichmentJobInput

    ExportVectorEnrichmentJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location_name: "Arn"))
    ExportVectorEnrichmentJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    ExportVectorEnrichmentJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    ExportVectorEnrichmentJobOutput.add_member(:export_status, Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportStatus, required: true, location_name: "ExportStatus"))
    ExportVectorEnrichmentJobOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutputConfig, required: true, location_name: "OutputConfig"))
    ExportVectorEnrichmentJobOutput.struct_class = Types::ExportVectorEnrichmentJobOutput

    ExportVectorEnrichmentJobOutputConfig.add_member(:s3_data, Shapes::ShapeRef.new(shape: VectorEnrichmentJobS3Data, required: true, location_name: "S3Data"))
    ExportVectorEnrichmentJobOutputConfig.struct_class = Types::ExportVectorEnrichmentJobOutputConfig

    Filter.add_member(:maximum, Shapes::ShapeRef.new(shape: Float, location_name: "Maximum"))
    Filter.add_member(:minimum, Shapes::ShapeRef.new(shape: Float, location_name: "Minimum"))
    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GeoMosaicConfigInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: AlgorithmNameGeoMosaic, location_name: "AlgorithmName"))
    GeoMosaicConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    GeoMosaicConfigInput.struct_class = Types::GeoMosaicConfigInput

    Geometry.add_member(:coordinates, Shapes::ShapeRef.new(shape: LinearRings, required: true, location_name: "Coordinates"))
    Geometry.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    Geometry.struct_class = Types::Geometry

    GetEarthObservationJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location: "uri", location_name: "Arn"))
    GetEarthObservationJobInput.struct_class = Types::GetEarthObservationJobInput

    GetEarthObservationJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetEarthObservationJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    GetEarthObservationJobOutput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    GetEarthObservationJobOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: EarthObservationJobErrorDetails, location_name: "ErrorDetails"))
    GetEarthObservationJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    GetEarthObservationJobOutput.add_member(:export_error_details, Shapes::ShapeRef.new(shape: ExportErrorDetails, location_name: "ExportErrorDetails"))
    GetEarthObservationJobOutput.add_member(:export_status, Shapes::ShapeRef.new(shape: EarthObservationJobExportStatus, location_name: "ExportStatus"))
    GetEarthObservationJobOutput.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfigOutput, required: true, location_name: "InputConfig"))
    GetEarthObservationJobOutput.add_member(:job_config, Shapes::ShapeRef.new(shape: JobConfigInput, required: true, location_name: "JobConfig"))
    GetEarthObservationJobOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    GetEarthObservationJobOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetEarthObservationJobOutput.add_member(:output_bands, Shapes::ShapeRef.new(shape: EarthObservationJobOutputBands, location_name: "OutputBands"))
    GetEarthObservationJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: EarthObservationJobStatus, required: true, location_name: "Status"))
    GetEarthObservationJobOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetEarthObservationJobOutput.struct_class = Types::GetEarthObservationJobOutput

    GetRasterDataCollectionInput.add_member(:arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location: "uri", location_name: "Arn"))
    GetRasterDataCollectionInput.struct_class = Types::GetRasterDataCollectionInput

    GetRasterDataCollectionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location_name: "Arn"))
    GetRasterDataCollectionOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    GetRasterDataCollectionOutput.add_member(:description_page_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DescriptionPageUrl"))
    GetRasterDataCollectionOutput.add_member(:image_source_bands, Shapes::ShapeRef.new(shape: ImageSourceBandList, required: true, location_name: "ImageSourceBands"))
    GetRasterDataCollectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetRasterDataCollectionOutput.add_member(:supported_filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "SupportedFilters"))
    GetRasterDataCollectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetRasterDataCollectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: DataCollectionType, required: true, location_name: "Type"))
    GetRasterDataCollectionOutput.struct_class = Types::GetRasterDataCollectionOutput

    GetTileInput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location: "querystring", location_name: "Arn"))
    GetTileInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location: "querystring", location_name: "ExecutionRoleArn"))
    GetTileInput.add_member(:image_assets, Shapes::ShapeRef.new(shape: StringListInput, required: true, location: "querystring", location_name: "ImageAssets"))
    GetTileInput.add_member(:image_mask, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "ImageMask"))
    GetTileInput.add_member(:output_data_type, Shapes::ShapeRef.new(shape: OutputType, location: "querystring", location_name: "OutputDataType"))
    GetTileInput.add_member(:output_format, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "OutputFormat"))
    GetTileInput.add_member(:property_filters, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "PropertyFilters"))
    GetTileInput.add_member(:target, Shapes::ShapeRef.new(shape: TargetOptions, required: true, location: "querystring", location_name: "Target"))
    GetTileInput.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "TimeRangeFilter"))
    GetTileInput.add_member(:x, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "x"))
    GetTileInput.add_member(:y, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "y"))
    GetTileInput.add_member(:z, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "z"))
    GetTileInput.struct_class = Types::GetTileInput

    GetTileOutput.add_member(:binary_file, Shapes::ShapeRef.new(shape: BinaryFile, location_name: "BinaryFile"))
    GetTileOutput.struct_class = Types::GetTileOutput
    GetTileOutput[:payload] = :binary_file
    GetTileOutput[:payload_member] = GetTileOutput.member(:binary_file)

    GetVectorEnrichmentJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location: "uri", location_name: "Arn"))
    GetVectorEnrichmentJobInput.struct_class = Types::GetVectorEnrichmentJobInput

    GetVectorEnrichmentJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    GetVectorEnrichmentJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    GetVectorEnrichmentJobOutput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    GetVectorEnrichmentJobOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: VectorEnrichmentJobErrorDetails, location_name: "ErrorDetails"))
    GetVectorEnrichmentJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    GetVectorEnrichmentJobOutput.add_member(:export_error_details, Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportErrorDetails, location_name: "ExportErrorDetails"))
    GetVectorEnrichmentJobOutput.add_member(:export_status, Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportStatus, location_name: "ExportStatus"))
    GetVectorEnrichmentJobOutput.add_member(:input_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, required: true, location_name: "InputConfig"))
    GetVectorEnrichmentJobOutput.add_member(:job_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, required: true, location_name: "JobConfig"))
    GetVectorEnrichmentJobOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    GetVectorEnrichmentJobOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetVectorEnrichmentJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, required: true, location_name: "Status"))
    GetVectorEnrichmentJobOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetVectorEnrichmentJobOutput.add_member(:type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, required: true, location_name: "Type"))
    GetVectorEnrichmentJobOutput.struct_class = Types::GetVectorEnrichmentJobOutput

    ImageSourceBandList.member = Shapes::ShapeRef.new(shape: String)

    InputConfigInput.add_member(:previous_earth_observation_job_arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: "PreviousEarthObservationJobArn"))
    InputConfigInput.add_member(:raster_data_collection_query, Shapes::ShapeRef.new(shape: RasterDataCollectionQueryInput, location_name: "RasterDataCollectionQuery"))
    InputConfigInput.struct_class = Types::InputConfigInput

    InputConfigOutput.add_member(:previous_earth_observation_job_arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, location_name: "PreviousEarthObservationJobArn"))
    InputConfigOutput.add_member(:raster_data_collection_query, Shapes::ShapeRef.new(shape: RasterDataCollectionQueryOutput, location_name: "RasterDataCollectionQuery"))
    InputConfigOutput.struct_class = Types::InputConfigOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    InternalServerException.struct_class = Types::InternalServerException

    ItemSource.add_member(:assets, Shapes::ShapeRef.new(shape: AssetsMap, location_name: "Assets"))
    ItemSource.add_member(:date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "DateTime"))
    ItemSource.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, required: true, location_name: "Geometry"))
    ItemSource.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ItemSource.add_member(:properties, Shapes::ShapeRef.new(shape: Properties, location_name: "Properties"))
    ItemSource.struct_class = Types::ItemSource

    ItemSourceList.member = Shapes::ShapeRef.new(shape: ItemSource)

    JobConfigInput.add_member(:band_math_config, Shapes::ShapeRef.new(shape: BandMathConfigInput, location_name: "BandMathConfig"))
    JobConfigInput.add_member(:cloud_masking_config, Shapes::ShapeRef.new(shape: CloudMaskingConfigInput, location_name: "CloudMaskingConfig"))
    JobConfigInput.add_member(:cloud_removal_config, Shapes::ShapeRef.new(shape: CloudRemovalConfigInput, location_name: "CloudRemovalConfig"))
    JobConfigInput.add_member(:geo_mosaic_config, Shapes::ShapeRef.new(shape: GeoMosaicConfigInput, location_name: "GeoMosaicConfig"))
    JobConfigInput.add_member(:land_cover_segmentation_config, Shapes::ShapeRef.new(shape: LandCoverSegmentationConfigInput, location_name: "LandCoverSegmentationConfig"))
    JobConfigInput.add_member(:resampling_config, Shapes::ShapeRef.new(shape: ResamplingConfigInput, location_name: "ResamplingConfig"))
    JobConfigInput.add_member(:stack_config, Shapes::ShapeRef.new(shape: StackConfigInput, location_name: "StackConfig"))
    JobConfigInput.add_member(:temporal_statistics_config, Shapes::ShapeRef.new(shape: TemporalStatisticsConfigInput, location_name: "TemporalStatisticsConfig"))
    JobConfigInput.add_member(:zonal_statistics_config, Shapes::ShapeRef.new(shape: ZonalStatisticsConfigInput, location_name: "ZonalStatisticsConfig"))
    JobConfigInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobConfigInput.add_member_subclass(:band_math_config, Types::JobConfigInput::BandMathConfig)
    JobConfigInput.add_member_subclass(:cloud_masking_config, Types::JobConfigInput::CloudMaskingConfig)
    JobConfigInput.add_member_subclass(:cloud_removal_config, Types::JobConfigInput::CloudRemovalConfig)
    JobConfigInput.add_member_subclass(:geo_mosaic_config, Types::JobConfigInput::GeoMosaicConfig)
    JobConfigInput.add_member_subclass(:land_cover_segmentation_config, Types::JobConfigInput::LandCoverSegmentationConfig)
    JobConfigInput.add_member_subclass(:resampling_config, Types::JobConfigInput::ResamplingConfig)
    JobConfigInput.add_member_subclass(:stack_config, Types::JobConfigInput::StackConfig)
    JobConfigInput.add_member_subclass(:temporal_statistics_config, Types::JobConfigInput::TemporalStatisticsConfig)
    JobConfigInput.add_member_subclass(:zonal_statistics_config, Types::JobConfigInput::ZonalStatisticsConfig)
    JobConfigInput.add_member_subclass(:unknown, Types::JobConfigInput::Unknown)
    JobConfigInput.struct_class = Types::JobConfigInput

    LandCoverSegmentationConfigInput.struct_class = Types::LandCoverSegmentationConfigInput

    LandsatCloudCoverLandInput.add_member(:lower_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "LowerBound"))
    LandsatCloudCoverLandInput.add_member(:upper_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "UpperBound"))
    LandsatCloudCoverLandInput.struct_class = Types::LandsatCloudCoverLandInput

    LinearRing.member = Shapes::ShapeRef.new(shape: Position)

    LinearRings.member = Shapes::ShapeRef.new(shape: LinearRing)

    LinearRingsList.member = Shapes::ShapeRef.new(shape: LinearRings)

    ListEarthObservationJobInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEarthObservationJobInputMaxResultsInteger, location_name: "MaxResults"))
    ListEarthObservationJobInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEarthObservationJobInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: String, location_name: "SortBy"))
    ListEarthObservationJobInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListEarthObservationJobInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: EarthObservationJobStatus, location_name: "StatusEquals"))
    ListEarthObservationJobInput.struct_class = Types::ListEarthObservationJobInput

    ListEarthObservationJobOutput.add_member(:earth_observation_job_summaries, Shapes::ShapeRef.new(shape: EarthObservationJobList, required: true, location_name: "EarthObservationJobSummaries"))
    ListEarthObservationJobOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEarthObservationJobOutput.struct_class = Types::ListEarthObservationJobOutput

    ListEarthObservationJobOutputConfig.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    ListEarthObservationJobOutputConfig.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    ListEarthObservationJobOutputConfig.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    ListEarthObservationJobOutputConfig.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ListEarthObservationJobOutputConfig.add_member(:operation_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OperationType"))
    ListEarthObservationJobOutputConfig.add_member(:status, Shapes::ShapeRef.new(shape: EarthObservationJobStatus, required: true, location_name: "Status"))
    ListEarthObservationJobOutputConfig.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListEarthObservationJobOutputConfig.struct_class = Types::ListEarthObservationJobOutputConfig

    ListRasterDataCollectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRasterDataCollectionsInputMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListRasterDataCollectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListRasterDataCollectionsInput.struct_class = Types::ListRasterDataCollectionsInput

    ListRasterDataCollectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRasterDataCollectionsOutput.add_member(:raster_data_collection_summaries, Shapes::ShapeRef.new(shape: DataCollectionsList, required: true, location_name: "RasterDataCollectionSummaries"))
    ListRasterDataCollectionsOutput.struct_class = Types::ListRasterDataCollectionsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVectorEnrichmentJobInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobInputMaxResultsInteger, location_name: "MaxResults"))
    ListVectorEnrichmentJobInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVectorEnrichmentJobInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: String, location_name: "SortBy"))
    ListVectorEnrichmentJobInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListVectorEnrichmentJobInput.add_member(:status_equals, Shapes::ShapeRef.new(shape: String, location_name: "StatusEquals"))
    ListVectorEnrichmentJobInput.struct_class = Types::ListVectorEnrichmentJobInput

    ListVectorEnrichmentJobOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListVectorEnrichmentJobOutput.add_member(:vector_enrichment_job_summaries, Shapes::ShapeRef.new(shape: VectorEnrichmentJobList, required: true, location_name: "VectorEnrichmentJobSummaries"))
    ListVectorEnrichmentJobOutput.struct_class = Types::ListVectorEnrichmentJobOutput

    ListVectorEnrichmentJobOutputConfig.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location_name: "Arn"))
    ListVectorEnrichmentJobOutputConfig.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    ListVectorEnrichmentJobOutputConfig.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    ListVectorEnrichmentJobOutputConfig.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ListVectorEnrichmentJobOutputConfig.add_member(:status, Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, required: true, location_name: "Status"))
    ListVectorEnrichmentJobOutputConfig.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListVectorEnrichmentJobOutputConfig.add_member(:type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, required: true, location_name: "Type"))
    ListVectorEnrichmentJobOutputConfig.struct_class = Types::ListVectorEnrichmentJobOutputConfig

    MapMatchingConfig.add_member(:id_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IdAttributeName"))
    MapMatchingConfig.add_member(:timestamp_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TimestampAttributeName"))
    MapMatchingConfig.add_member(:x_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "XAttributeName"))
    MapMatchingConfig.add_member(:y_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "YAttributeName"))
    MapMatchingConfig.struct_class = Types::MapMatchingConfig

    MultiPolygonGeometryInput.add_member(:coordinates, Shapes::ShapeRef.new(shape: LinearRingsList, required: true, location_name: "Coordinates"))
    MultiPolygonGeometryInput.struct_class = Types::MultiPolygonGeometryInput

    Operation.add_member(:equation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Equation"))
    Operation.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Operation.add_member(:output_type, Shapes::ShapeRef.new(shape: OutputType, location_name: "OutputType"))
    Operation.struct_class = Types::Operation

    OperationsListInput.member = Shapes::ShapeRef.new(shape: Operation)

    OutputBand.add_member(:band_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "BandName"))
    OutputBand.add_member(:output_data_type, Shapes::ShapeRef.new(shape: OutputType, required: true, location_name: "OutputDataType"))
    OutputBand.struct_class = Types::OutputBand

    OutputConfigInput.add_member(:s3_data, Shapes::ShapeRef.new(shape: ExportS3DataInput, required: true, location_name: "S3Data"))
    OutputConfigInput.struct_class = Types::OutputConfigInput

    OutputResolutionResamplingInput.add_member(:user_defined, Shapes::ShapeRef.new(shape: UserDefined, required: true, location_name: "UserDefined"))
    OutputResolutionResamplingInput.struct_class = Types::OutputResolutionResamplingInput

    OutputResolutionStackInput.add_member(:predefined, Shapes::ShapeRef.new(shape: PredefinedResolution, location_name: "Predefined"))
    OutputResolutionStackInput.add_member(:user_defined, Shapes::ShapeRef.new(shape: UserDefined, location_name: "UserDefined"))
    OutputResolutionStackInput.struct_class = Types::OutputResolutionStackInput

    PlatformInput.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    PlatformInput.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    PlatformInput.struct_class = Types::PlatformInput

    PolygonGeometryInput.add_member(:coordinates, Shapes::ShapeRef.new(shape: LinearRings, required: true, location_name: "Coordinates"))
    PolygonGeometryInput.struct_class = Types::PolygonGeometryInput

    Position.member = Shapes::ShapeRef.new(shape: Double)

    Properties.add_member(:eo_cloud_cover, Shapes::ShapeRef.new(shape: Float, location_name: "EoCloudCover"))
    Properties.add_member(:landsat_cloud_cover_land, Shapes::ShapeRef.new(shape: Float, location_name: "LandsatCloudCoverLand"))
    Properties.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "Platform"))
    Properties.add_member(:view_off_nadir, Shapes::ShapeRef.new(shape: Float, location_name: "ViewOffNadir"))
    Properties.add_member(:view_sun_azimuth, Shapes::ShapeRef.new(shape: Float, location_name: "ViewSunAzimuth"))
    Properties.add_member(:view_sun_elevation, Shapes::ShapeRef.new(shape: Float, location_name: "ViewSunElevation"))
    Properties.struct_class = Types::Properties

    Property.add_member(:eo_cloud_cover, Shapes::ShapeRef.new(shape: EoCloudCoverInput, location_name: "EoCloudCover"))
    Property.add_member(:landsat_cloud_cover_land, Shapes::ShapeRef.new(shape: LandsatCloudCoverLandInput, location_name: "LandsatCloudCoverLand"))
    Property.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformInput, location_name: "Platform"))
    Property.add_member(:view_off_nadir, Shapes::ShapeRef.new(shape: ViewOffNadirInput, location_name: "ViewOffNadir"))
    Property.add_member(:view_sun_azimuth, Shapes::ShapeRef.new(shape: ViewSunAzimuthInput, location_name: "ViewSunAzimuth"))
    Property.add_member(:view_sun_elevation, Shapes::ShapeRef.new(shape: ViewSunElevationInput, location_name: "ViewSunElevation"))
    Property.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Property.add_member_subclass(:eo_cloud_cover, Types::Property::EoCloudCover)
    Property.add_member_subclass(:landsat_cloud_cover_land, Types::Property::LandsatCloudCoverLand)
    Property.add_member_subclass(:platform, Types::Property::Platform)
    Property.add_member_subclass(:view_off_nadir, Types::Property::ViewOffNadir)
    Property.add_member_subclass(:view_sun_azimuth, Types::Property::ViewSunAzimuth)
    Property.add_member_subclass(:view_sun_elevation, Types::Property::ViewSunElevation)
    Property.add_member_subclass(:unknown, Types::Property::Unknown)
    Property.struct_class = Types::Property

    PropertyFilter.add_member(:property, Shapes::ShapeRef.new(shape: Property, required: true, location_name: "Property"))
    PropertyFilter.struct_class = Types::PropertyFilter

    PropertyFilters.add_member(:logical_operator, Shapes::ShapeRef.new(shape: LogicalOperator, location_name: "LogicalOperator"))
    PropertyFilters.add_member(:properties, Shapes::ShapeRef.new(shape: PropertyFiltersList, location_name: "Properties"))
    PropertyFilters.struct_class = Types::PropertyFilters

    PropertyFiltersList.member = Shapes::ShapeRef.new(shape: PropertyFilter)

    RasterDataCollectionMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location_name: "Arn"))
    RasterDataCollectionMetadata.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    RasterDataCollectionMetadata.add_member(:description_page_url, Shapes::ShapeRef.new(shape: String, location_name: "DescriptionPageUrl"))
    RasterDataCollectionMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    RasterDataCollectionMetadata.add_member(:supported_filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "SupportedFilters"))
    RasterDataCollectionMetadata.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    RasterDataCollectionMetadata.add_member(:type, Shapes::ShapeRef.new(shape: DataCollectionType, required: true, location_name: "Type"))
    RasterDataCollectionMetadata.struct_class = Types::RasterDataCollectionMetadata

    RasterDataCollectionQueryInput.add_member(:area_of_interest, Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: "AreaOfInterest"))
    RasterDataCollectionQueryInput.add_member(:property_filters, Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "PropertyFilters"))
    RasterDataCollectionQueryInput.add_member(:raster_data_collection_arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location_name: "RasterDataCollectionArn"))
    RasterDataCollectionQueryInput.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: TimeRangeFilterInput, required: true, location_name: "TimeRangeFilter"))
    RasterDataCollectionQueryInput.struct_class = Types::RasterDataCollectionQueryInput

    RasterDataCollectionQueryOutput.add_member(:area_of_interest, Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: "AreaOfInterest"))
    RasterDataCollectionQueryOutput.add_member(:property_filters, Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "PropertyFilters"))
    RasterDataCollectionQueryOutput.add_member(:raster_data_collection_arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location_name: "RasterDataCollectionArn"))
    RasterDataCollectionQueryOutput.add_member(:raster_data_collection_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RasterDataCollectionName"))
    RasterDataCollectionQueryOutput.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: TimeRangeFilterOutput, required: true, location_name: "TimeRangeFilter"))
    RasterDataCollectionQueryOutput.struct_class = Types::RasterDataCollectionQueryOutput

    RasterDataCollectionQueryWithBandFilterInput.add_member(:area_of_interest, Shapes::ShapeRef.new(shape: AreaOfInterest, location_name: "AreaOfInterest"))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:band_filter, Shapes::ShapeRef.new(shape: StringListInput, location_name: "BandFilter"))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:property_filters, Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "PropertyFilters"))
    RasterDataCollectionQueryWithBandFilterInput.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: TimeRangeFilterInput, required: true, location_name: "TimeRangeFilter"))
    RasterDataCollectionQueryWithBandFilterInput.struct_class = Types::RasterDataCollectionQueryWithBandFilterInput

    ResamplingConfigInput.add_member(:algorithm_name, Shapes::ShapeRef.new(shape: AlgorithmNameResampling, location_name: "AlgorithmName"))
    ResamplingConfigInput.add_member(:output_resolution, Shapes::ShapeRef.new(shape: OutputResolutionResamplingInput, required: true, location_name: "OutputResolution"))
    ResamplingConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    ResamplingConfigInput.struct_class = Types::ResamplingConfigInput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ReverseGeocodingConfig.add_member(:x_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "XAttributeName"))
    ReverseGeocodingConfig.add_member(:y_attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "YAttributeName"))
    ReverseGeocodingConfig.struct_class = Types::ReverseGeocodingConfig

    SearchRasterDataCollectionInput.add_member(:arn, Shapes::ShapeRef.new(shape: DataCollectionArn, required: true, location_name: "Arn"))
    SearchRasterDataCollectionInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRasterDataCollectionInput.add_member(:raster_data_collection_query, Shapes::ShapeRef.new(shape: RasterDataCollectionQueryWithBandFilterInput, required: true, location_name: "RasterDataCollectionQuery"))
    SearchRasterDataCollectionInput.struct_class = Types::SearchRasterDataCollectionInput

    SearchRasterDataCollectionOutput.add_member(:approximate_result_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ApproximateResultCount"))
    SearchRasterDataCollectionOutput.add_member(:items, Shapes::ShapeRef.new(shape: ItemSourceList, location_name: "Items"))
    SearchRasterDataCollectionOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchRasterDataCollectionOutput.struct_class = Types::SearchRasterDataCollectionOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StackConfigInput.add_member(:output_resolution, Shapes::ShapeRef.new(shape: OutputResolutionStackInput, location_name: "OutputResolution"))
    StackConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    StackConfigInput.struct_class = Types::StackConfigInput

    StartEarthObservationJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: StartEarthObservationJobInputClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartEarthObservationJobInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    StartEarthObservationJobInput.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfigInput, required: true, location_name: "InputConfig"))
    StartEarthObservationJobInput.add_member(:job_config, Shapes::ShapeRef.new(shape: JobConfigInput, required: true, location_name: "JobConfig"))
    StartEarthObservationJobInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    StartEarthObservationJobInput.add_member(:name, Shapes::ShapeRef.new(shape: StartEarthObservationJobInputNameString, required: true, location_name: "Name"))
    StartEarthObservationJobInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartEarthObservationJobInput.struct_class = Types::StartEarthObservationJobInput

    StartEarthObservationJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Arn"))
    StartEarthObservationJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    StartEarthObservationJobOutput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    StartEarthObservationJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    StartEarthObservationJobOutput.add_member(:input_config, Shapes::ShapeRef.new(shape: InputConfigOutput, location_name: "InputConfig"))
    StartEarthObservationJobOutput.add_member(:job_config, Shapes::ShapeRef.new(shape: JobConfigInput, required: true, location_name: "JobConfig"))
    StartEarthObservationJobOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    StartEarthObservationJobOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartEarthObservationJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: EarthObservationJobStatus, required: true, location_name: "Status"))
    StartEarthObservationJobOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartEarthObservationJobOutput.struct_class = Types::StartEarthObservationJobOutput

    StartVectorEnrichmentJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobInputClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartVectorEnrichmentJobInput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    StartVectorEnrichmentJobInput.add_member(:input_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, required: true, location_name: "InputConfig"))
    StartVectorEnrichmentJobInput.add_member(:job_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, required: true, location_name: "JobConfig"))
    StartVectorEnrichmentJobInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    StartVectorEnrichmentJobInput.add_member(:name, Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobInputNameString, required: true, location_name: "Name"))
    StartVectorEnrichmentJobInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartVectorEnrichmentJobInput.struct_class = Types::StartVectorEnrichmentJobInput

    StartVectorEnrichmentJobOutput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location_name: "Arn"))
    StartVectorEnrichmentJobOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "CreationTime"))
    StartVectorEnrichmentJobOutput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DurationInSeconds"))
    StartVectorEnrichmentJobOutput.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    StartVectorEnrichmentJobOutput.add_member(:input_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobInputConfig, required: true, location_name: "InputConfig"))
    StartVectorEnrichmentJobOutput.add_member(:job_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobConfig, required: true, location_name: "JobConfig"))
    StartVectorEnrichmentJobOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    StartVectorEnrichmentJobOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartVectorEnrichmentJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: VectorEnrichmentJobStatus, required: true, location_name: "Status"))
    StartVectorEnrichmentJobOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    StartVectorEnrichmentJobOutput.add_member(:type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobType, required: true, location_name: "Type"))
    StartVectorEnrichmentJobOutput.struct_class = Types::StartVectorEnrichmentJobOutput

    StopEarthObservationJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: EarthObservationJobArn, required: true, location_name: "Arn"))
    StopEarthObservationJobInput.struct_class = Types::StopEarthObservationJobInput

    StopEarthObservationJobOutput.struct_class = Types::StopEarthObservationJobOutput

    StopVectorEnrichmentJobInput.add_member(:arn, Shapes::ShapeRef.new(shape: VectorEnrichmentJobArn, required: true, location_name: "Arn"))
    StopVectorEnrichmentJobInput.struct_class = Types::StopVectorEnrichmentJobInput

    StopVectorEnrichmentJobOutput.struct_class = Types::StopVectorEnrichmentJobOutput

    StringListInput.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    TemporalStatisticsConfigInput.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupBy, location_name: "GroupBy"))
    TemporalStatisticsConfigInput.add_member(:statistics, Shapes::ShapeRef.new(shape: TemporalStatisticsListInput, required: true, location_name: "Statistics"))
    TemporalStatisticsConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    TemporalStatisticsConfigInput.struct_class = Types::TemporalStatisticsConfigInput

    TemporalStatisticsListInput.member = Shapes::ShapeRef.new(shape: TemporalStatistics)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRangeFilterInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTime"))
    TimeRangeFilterInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTime"))
    TimeRangeFilterInput.struct_class = Types::TimeRangeFilterInput

    TimeRangeFilterOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "EndTime"))
    TimeRangeFilterOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "StartTime"))
    TimeRangeFilterOutput.struct_class = Types::TimeRangeFilterOutput

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UserDefined.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, required: true, location_name: "Unit"))
    UserDefined.add_member(:value, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "Value"))
    UserDefined.struct_class = Types::UserDefined

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ValidationException.struct_class = Types::ValidationException

    VectorEnrichmentJobConfig.add_member(:map_matching_config, Shapes::ShapeRef.new(shape: MapMatchingConfig, location_name: "MapMatchingConfig"))
    VectorEnrichmentJobConfig.add_member(:reverse_geocoding_config, Shapes::ShapeRef.new(shape: ReverseGeocodingConfig, location_name: "ReverseGeocodingConfig"))
    VectorEnrichmentJobConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VectorEnrichmentJobConfig.add_member_subclass(:map_matching_config, Types::VectorEnrichmentJobConfig::MapMatchingConfig)
    VectorEnrichmentJobConfig.add_member_subclass(:reverse_geocoding_config, Types::VectorEnrichmentJobConfig::ReverseGeocodingConfig)
    VectorEnrichmentJobConfig.add_member_subclass(:unknown, Types::VectorEnrichmentJobConfig::Unknown)
    VectorEnrichmentJobConfig.struct_class = Types::VectorEnrichmentJobConfig

    VectorEnrichmentJobDataSourceConfigInput.add_member(:s3_data, Shapes::ShapeRef.new(shape: VectorEnrichmentJobS3Data, location_name: "S3Data"))
    VectorEnrichmentJobDataSourceConfigInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VectorEnrichmentJobDataSourceConfigInput.add_member_subclass(:s3_data, Types::VectorEnrichmentJobDataSourceConfigInput::S3Data)
    VectorEnrichmentJobDataSourceConfigInput.add_member_subclass(:unknown, Types::VectorEnrichmentJobDataSourceConfigInput::Unknown)
    VectorEnrichmentJobDataSourceConfigInput.struct_class = Types::VectorEnrichmentJobDataSourceConfigInput

    VectorEnrichmentJobErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    VectorEnrichmentJobErrorDetails.add_member(:error_type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobErrorType, location_name: "ErrorType"))
    VectorEnrichmentJobErrorDetails.struct_class = Types::VectorEnrichmentJobErrorDetails

    VectorEnrichmentJobExportErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    VectorEnrichmentJobExportErrorDetails.add_member(:type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobExportErrorType, location_name: "Type"))
    VectorEnrichmentJobExportErrorDetails.struct_class = Types::VectorEnrichmentJobExportErrorDetails

    VectorEnrichmentJobInputConfig.add_member(:data_source_config, Shapes::ShapeRef.new(shape: VectorEnrichmentJobDataSourceConfigInput, required: true, location_name: "DataSourceConfig"))
    VectorEnrichmentJobInputConfig.add_member(:document_type, Shapes::ShapeRef.new(shape: VectorEnrichmentJobDocumentType, required: true, location_name: "DocumentType"))
    VectorEnrichmentJobInputConfig.struct_class = Types::VectorEnrichmentJobInputConfig

    VectorEnrichmentJobList.member = Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobOutputConfig)

    VectorEnrichmentJobS3Data.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "KmsKeyId"))
    VectorEnrichmentJobS3Data.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    VectorEnrichmentJobS3Data.struct_class = Types::VectorEnrichmentJobS3Data

    ViewOffNadirInput.add_member(:lower_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "LowerBound"))
    ViewOffNadirInput.add_member(:upper_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "UpperBound"))
    ViewOffNadirInput.struct_class = Types::ViewOffNadirInput

    ViewSunAzimuthInput.add_member(:lower_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "LowerBound"))
    ViewSunAzimuthInput.add_member(:upper_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "UpperBound"))
    ViewSunAzimuthInput.struct_class = Types::ViewSunAzimuthInput

    ViewSunElevationInput.add_member(:lower_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "LowerBound"))
    ViewSunElevationInput.add_member(:upper_bound, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "UpperBound"))
    ViewSunElevationInput.struct_class = Types::ViewSunElevationInput

    ZonalStatisticsConfigInput.add_member(:statistics, Shapes::ShapeRef.new(shape: ZonalStatisticsListInput, required: true, location_name: "Statistics"))
    ZonalStatisticsConfigInput.add_member(:target_bands, Shapes::ShapeRef.new(shape: StringListInput, location_name: "TargetBands"))
    ZonalStatisticsConfigInput.add_member(:zone_s3_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "ZoneS3Path"))
    ZonalStatisticsConfigInput.add_member(:zone_s3_path_kms_key_id, Shapes::ShapeRef.new(shape: KmsKey, location_name: "ZoneS3PathKmsKeyId"))
    ZonalStatisticsConfigInput.struct_class = Types::ZonalStatisticsConfigInput

    ZonalStatisticsListInput.member = Shapes::ShapeRef.new(shape: ZonalStatistics)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-05-27"

      api.metadata = {
        "apiVersion" => "2020-05-27",
        "endpointPrefix" => "sagemaker-geospatial",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon SageMaker geospatial capabilities",
        "serviceId" => "SageMaker Geospatial",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker-geospatial",
        "uid" => "sagemaker-geospatial-2020-05-27",
      }

      api.add_operation(:delete_earth_observation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEarthObservationJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/earth-observation-jobs/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_vector_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVectorEnrichmentJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/vector-enrichment-jobs/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:export_earth_observation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportEarthObservationJob"
        o.http_method = "POST"
        o.http_request_uri = "/export-earth-observation-job"
        o.input = Shapes::ShapeRef.new(shape: ExportEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: ExportEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:export_vector_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportVectorEnrichmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/export-vector-enrichment-jobs"
        o.input = Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: ExportVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_earth_observation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEarthObservationJob"
        o.http_method = "GET"
        o.http_request_uri = "/earth-observation-jobs/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_raster_data_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRasterDataCollection"
        o.http_method = "GET"
        o.http_request_uri = "/raster-data-collection/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetRasterDataCollectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetRasterDataCollectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_tile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTile"
        o.http_method = "GET"
        o.http_request_uri = "/tile/{z}/{x}/{y}"
        o.input = Shapes::ShapeRef.new(shape: GetTileInput)
        o.output = Shapes::ShapeRef.new(shape: GetTileOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_vector_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVectorEnrichmentJob"
        o.http_method = "GET"
        o.http_request_uri = "/vector-enrichment-jobs/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_earth_observation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEarthObservationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/list-earth-observation-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: ListEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_raster_data_collections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRasterDataCollections"
        o.http_method = "GET"
        o.http_request_uri = "/raster-data-collections"
        o.input = Shapes::ShapeRef.new(shape: ListRasterDataCollectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRasterDataCollectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_vector_enrichment_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVectorEnrichmentJobs"
        o.http_method = "POST"
        o.http_request_uri = "/list-vector-enrichment-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: ListVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:search_raster_data_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRasterDataCollection"
        o.http_method = "POST"
        o.http_request_uri = "/search-raster-data-collection"
        o.input = Shapes::ShapeRef.new(shape: SearchRasterDataCollectionInput)
        o.output = Shapes::ShapeRef.new(shape: SearchRasterDataCollectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_earth_observation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEarthObservationJob"
        o.http_method = "POST"
        o.http_request_uri = "/earth-observation-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_vector_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartVectorEnrichmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/vector-enrichment-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_earth_observation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEarthObservationJob"
        o.http_method = "POST"
        o.http_request_uri = "/earth-observation-jobs/stop"
        o.input = Shapes::ShapeRef.new(shape: StopEarthObservationJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopEarthObservationJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_vector_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopVectorEnrichmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/vector-enrichment-jobs/stop"
        o.input = Shapes::ShapeRef.new(shape: StopVectorEnrichmentJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopVectorEnrichmentJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
