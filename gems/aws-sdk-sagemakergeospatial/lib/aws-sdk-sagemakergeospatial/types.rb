# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerGeospatial
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The geographic extent of the Earth Observation job.</p>
    # @!attribute area_of_interest_geometry
    #   <p>A GeoJSON object representing the geographic extent in the coordinate space.</p>
    #   @return [Types::AreaOfInterestGeometry]
    class AreaOfInterest < Struct.new(
      :area_of_interest_geometry,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AreaOfInterestGeometry < AreaOfInterest; end
      class Unknown < AreaOfInterest; end
    end

    # <p>A GeoJSON object representing the geographic extent in the coordinate space.</p>
    # @!attribute polygon_geometry
    #   <p>The structure representing Polygon Geometry.</p>
    #   @return [Types::PolygonGeometryInput]
    # @!attribute multi_polygon_geometry
    #   <p>The structure representing the MultiPolygon Geometry.</p>
    #   @return [Types::MultiPolygonGeometryInput]
    class AreaOfInterestGeometry < Struct.new(
      :polygon_geometry,
      :multi_polygon_geometry,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PolygonGeometry < AreaOfInterestGeometry; end
      class MultiPolygonGeometry < AreaOfInterestGeometry; end
      class Unknown < AreaOfInterestGeometry; end
    end

    # <p>The structure containing the asset properties.</p>
    # @!attribute href
    #   <p>Link to the asset object.</p>
    #   @return [String]
    class AssetValue < Struct.new(
      nil,
      :href,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure for the BandMath operation type. 
    #       Defines Predefined and CustomIndices to be computed using BandMath.</p>
    # @!attribute predefined_indices
    #   <p>One or many of the supported predefined indices to compute. 
    #         Allowed values: <code>NDVI</code>, <code>EVI2</code>, <code>MSAVI</code>, 
    #         <code>NDWI</code>, <code>NDMI</code>, <code>NDSI</code>, and <code>WDRVI</code>.</p>
    #   @return [Array<String>]
    # @!attribute custom_indices
    #   <p>CustomIndices that are computed.</p>
    #   @return [Types::CustomIndicesInput]
    class BandMathConfigInput < Struct.new(
      nil,
      :predefined_indices,
      :custom_indices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure for CloudMasking operation type.</p>
    class CloudMaskingConfigInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure for Cloud Removal Operation type</p>
    # @!attribute algorithm_name
    #   <p>The name of the algorithm used for cloud removal.</p>
    #   @return [String]
    # @!attribute interpolation_value
    #   <p>The interpolation value you provide for cloud removal.</p>
    #   @return [String]
    # @!attribute target_bands
    #   <p>TargetBands to be returned in the output of CloudRemoval operation.</p>
    #   @return [Array<String>]
    class CloudRemovalConfigInput < Struct.new(
      nil,
      :algorithm_name,
      :interpolation_value,
      :target_bands,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input object defining the custom BandMath indices to compute.</p>
    # @!attribute operations
    #   <p>A list of BandMath indices to compute.</p>
    #   @return [Array<Types::Operation>]
    class CustomIndicesInput < Struct.new(
      nil,
      :operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job being deleted.</p>
    #   @return [String]
    class DeleteEarthObservationJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEarthObservationJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job being deleted.</p>
    #   @return [String]
    class DeleteVectorEnrichmentJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVectorEnrichmentJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the errors in an EarthObservationJob.</p>
    # @!attribute type
    #   <p>The type of error in an Earth Observation job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed message describing the error in an Earth Observation job.</p>
    #   @return [String]
    class EarthObservationJobErrorDetails < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the EoCloudCover filter.</p>
    # @!attribute lower_bound
    #   <p>Lower bound for EoCloudCover.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>Upper bound for EoCloudCover.</p>
    #   @return [Float]
    class EoCloudCoverInput < Struct.new(
      nil,
      :lower_bound,
      :upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The input Amazon Resource Name (ARN) of the Earth Observation job being exported.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>An object containing information about the output file.</p>
    #   @return [Types::OutputConfigInput]
    # @!attribute export_source_images
    #   <p>The source images provided to the Earth Observation job being exported.</p>
    #   @return [Boolean]
    class ExportEarthObservationJobOperationInput < Struct.new(
      nil,
      :arn,
      :client_token,
      :execution_role_arn,
      :output_config,
      :export_source_images,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The output Amazon Resource Name (ARN) of the Earth Observation job being exported.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute export_status
    #   <p>The status of the results of the Earth Observation job being exported.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>An object containing information about the output file.</p>
    #   @return [Types::OutputConfigInput]
    # @!attribute export_source_images
    #   <p>The source images provided to the Earth Observation job being exported.</p>
    #   @return [Boolean]
    class ExportEarthObservationJobOperationOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :export_status,
      :execution_role_arn,
      :output_config,
      :export_source_images,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure for returning the export error details in a GetEarthObservationJob.</p>
    # @!attribute export_results
    #   <p>The structure for returning the export error details while exporting results of an Earth Observation job.</p>
    #   @return [Types::ExportErrorDetailsOutput]
    # @!attribute export_source_images
    #   <p>The structure for returning the export error details 
    #         while exporting the source images of an Earth Observation job.</p>
    #   @return [Types::ExportErrorDetailsOutput]
    class ExportErrorDetails < Struct.new(
      nil,
      :export_results,
      :export_source_images,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the errors in an export EarthObservationJob operation.</p>
    # @!attribute type
    #   <p>The type of error in an export EarthObservationJob operation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed message describing the error in an export EarthObservationJob operation.</p>
    #   @return [String]
    class ExportErrorDetailsOutput < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure containing the Amazon S3 path to export the Earth Observation job output.</p>
    # @!attribute s3_uri
    #   <p>The URL to the Amazon S3 data input.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    class ExportS3DataInput < Struct.new(
      nil,
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM rolewith permission to upload to the location in OutputConfig.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Output location information for exporting Vector Enrichment Job results.
    #   </p>
    #   @return [Types::ExportVectorEnrichmentJobOutputConfig]
    class ExportVectorEnrichmentJobInput < Struct.new(
      nil,
      :arn,
      :client_token,
      :execution_role_arn,
      :output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job being exported.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permission to upload to the location in OutputConfig.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the results the Vector Enrichment job being exported.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Output location information for exporting Vector Enrichment Job results.
    #   </p>
    #   @return [Types::ExportVectorEnrichmentJobOutputConfig]
    class ExportVectorEnrichmentJobOutput < Struct.new(
      nil,
      :arn,
      :creation_time,
      :execution_role_arn,
      :export_status,
      :output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about the output file.</p>
    # @!attribute s3_data
    #   <p>The input structure for Amazon S3 data; representing the Amazon S3 location of the input data objects.</p>
    #   @return [Types::VectorEnrichmentJobS3Data]
    class ExportVectorEnrichmentJobOutputConfig < Struct.new(
      nil,
      :s3_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the filters supported by a RasterDataCollection.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the filter being used.</p>
    #   @return [String]
    # @!attribute minimum
    #   <p>The minimum value of the filter.</p>
    #   @return [Float]
    # @!attribute maximum
    #   <p>The maximum value of the filter.</p>
    #   @return [Float]
    class Filter < Struct.new(
      nil,
      :name,
      :type,
      :minimum,
      :maximum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration information for the geomosaic.</p>
    # @!attribute algorithm_name
    #   <p>The name of the algorithm being used for geomosaic.</p>
    #   @return [String]
    # @!attribute target_bands
    #   <p>The target bands for geomosaic.</p>
    #   @return [Array<String>]
    class GeoMosaicConfigInput < Struct.new(
      nil,
      :algorithm_name,
      :target_bands,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing a Geometry in 
    #       terms of Type and Coordinates as per GeoJson spec.</p>
    # @!attribute type
    #   <p>GeoJson Geometry types like Polygon and MultiPolygon.</p>
    #   @return [String]
    # @!attribute coordinates
    #   <p>The coordinates of the GeoJson Geometry.</p>
    #   @return [Array<Array<Array<Float>>>]
    class Geometry < Struct.new(
      nil,
      :type,
      :coordinates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job.</p>
    #   @return [String]
    class GetEarthObservationJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the initiated Earth Observation job.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of Earth Observation job, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of a previously initiated Earth Observation job.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input data for the Earth Observation job.</p>
    #   @return [Types::InputConfigOutput]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::JobConfigInput]
    # @!attribute output_bands
    #   <p>Bands available in the output of an operation.</p>
    #   @return [Array<Types::OutputBand>]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Details about the errors generated during the Earth Observation job.</p>
    #   @return [Types::EarthObservationJobErrorDetails]
    # @!attribute export_status
    #   <p>The status of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute export_error_details
    #   <p>Details about the errors generated during ExportEarthObservationJob.</p>
    #   @return [Types::ExportErrorDetails]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class GetEarthObservationJobOutput < Struct.new(
      nil,
      :arn,
      :name,
      :creation_time,
      :duration_in_seconds,
      :status,
      :kms_key_id,
      :input_config,
      :job_config,
      :output_bands,
      :execution_role_arn,
      :error_details,
      :export_status,
      :export_error_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    #   @return [String]
    class GetRasterDataCollectionOperationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the raster data collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The raster data collection type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the raster data collection.</p>
    #   @return [String]
    # @!attribute description_page_url
    #   <p>The URL of the description page.</p>
    #   @return [String]
    # @!attribute supported_filters
    #   <p>The filters supported by the raster data collection.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute image_source_bands
    #   <p>The list of image source bands in the raster data collection.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class GetRasterDataCollectionOperationOutput < Struct.new(
      nil,
      :name,
      :arn,
      :type,
      :description,
      :description_page_url,
      :supported_filters,
      :image_source_bands,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute x
    #   <p>The x coordinate of the tile input.</p>
    #   @return [Integer]
    # @!attribute y
    #   <p>The y coordinate of the tile input.</p>
    #   @return [Integer]
    # @!attribute z
    #   <p>The z coordinate of the tile input.</p>
    #   @return [Integer]
    # @!attribute image_assets
    #   <p>The particular assets or bands to tile.</p>
    #   @return [Array<String>]
    # @!attribute target
    #   <p>Determines what part of the Earth Observation job to tile. 'INPUT' or 'OUTPUT' are the valid options.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the tile operation.</p>
    #   @return [String]
    # @!attribute image_mask
    #   <p>Determines whether or not to return a valid data mask.</p>
    #   @return [Boolean]
    # @!attribute output_format
    #   <p>The data format of the output tile. The formats include .npy, .png and .jpg.</p>
    #   @return [String]
    # @!attribute time_range_filter
    #   <p>Time range filter applied to imagery to find the images to tile.</p>
    #   @return [String]
    # @!attribute property_filters
    #   <p>Property filters for the imagery to tile.</p>
    #   @return [String]
    # @!attribute output_data_type
    #   <p>The output data type of the tile operation.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specify.</p>
    #   @return [String]
    class GetTileInput < Struct.new(
      nil,
      :x,
      :y,
      :z,
      :image_assets,
      :target,
      :arn,
      :image_mask,
      :output_format,
      :time_range_filter,
      :property_filters,
      :output_data_type,
      :execution_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute binary_file
    #   <p>The output binary file.</p>
    #   @return [String]
    class GetTileOutput < Struct.new(
      nil,
      :binary_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:binary_file] = Base64.strict_decode64('') unless options.key?(:binary_file)
        super
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    #   @return [String]
    class GetVectorEnrichmentJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Vector Enrichment job being initiated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of the Vector Enrichment job, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the initiated Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input configuration information for the Vector Enrichment job.</p>
    #   @return [Types::VectorEnrichmentJobInputConfig]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::VectorEnrichmentJobConfig]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Details about the errors generated during the Vector Enrichment job.</p>
    #   @return [Types::VectorEnrichmentJobErrorDetails]
    # @!attribute export_status
    #   <p>The export status of the Vector Enrichment job being initiated.</p>
    #   @return [String]
    # @!attribute export_error_details
    #   <p>Details about the errors generated during the ExportVectorEnrichmentJob.</p>
    #   @return [Types::VectorEnrichmentJobExportErrorDetails]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class GetVectorEnrichmentJobOutput < Struct.new(
      nil,
      :arn,
      :type,
      :name,
      :creation_time,
      :duration_in_seconds,
      :status,
      :kms_key_id,
      :input_config,
      :job_config,
      :execution_role_arn,
      :error_details,
      :export_status,
      :export_error_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration information.</p>
    # @!attribute previous_earth_observation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the previous Earth Observation job.</p>
    #   @return [String]
    # @!attribute raster_data_collection_query
    #   <p>The structure representing the RasterDataCollection Query consisting of 
    #         the Area of Interest, RasterDataCollectionArn,TimeRange and Property Filters.</p>
    #   @return [Types::RasterDataCollectionQueryInput]
    class InputConfigInput < Struct.new(
      nil,
      :previous_earth_observation_job_arn,
      :raster_data_collection_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The InputConfig for an EarthObservationJob response.</p>
    # @!attribute previous_earth_observation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the previous Earth Observation job.</p>
    #   @return [String]
    # @!attribute raster_data_collection_query
    #   <p>The structure representing the RasterDataCollection Query consisting of the Area of Interest, 
    #         RasterDataCollectionArn, RasterDataCollectionName, TimeRange, and Property Filters.</p>
    #   @return [Types::RasterDataCollectionQueryOutput]
    class InputConfigOutput < Struct.new(
      nil,
      :previous_earth_observation_job_arn,
      :raster_data_collection_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p/>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the items in the response for SearchRasterDataCollection.</p>
    # @!attribute id
    #   <p>A unique Id for the source item.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>The item Geometry in GeoJson format.</p>
    #   @return [Types::Geometry]
    # @!attribute assets
    #   <p>This is a dictionary of Asset Objects data associated with the Item that 
    #         can be downloaded or streamed, each with a unique key.</p>
    #   @return [Hash<String, Types::AssetValue>]
    # @!attribute date_time
    #   <p>The searchable date and time of the item, in UTC.</p>
    #   @return [Time]
    # @!attribute properties
    #   <p>This field contains additional properties of the item.</p>
    #   @return [Types::Properties]
    class ItemSource < Struct.new(
      nil,
      :id,
      :geometry,
      :assets,
      :date_time,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for the JobConfig in an EarthObservationJob.</p>
    # @!attribute band_math_config
    #   <p>An object containing information about the job configuration for BandMath.</p>
    #   @return [Types::BandMathConfigInput]
    # @!attribute resampling_config
    #   <p>An object containing information about the job configuration for resampling.</p>
    #   @return [Types::ResamplingConfigInput]
    # @!attribute temporal_statistics_config
    #   <p>An object containing information about the job configuration for temporal statistics.</p>
    #   @return [Types::TemporalStatisticsConfigInput]
    # @!attribute cloud_removal_config
    #   <p>An object containing information about the job configuration for cloud removal.</p>
    #   @return [Types::CloudRemovalConfigInput]
    # @!attribute zonal_statistics_config
    #   <p>An object containing information about the job configuration for zonal statistics.</p>
    #   @return [Types::ZonalStatisticsConfigInput]
    # @!attribute geo_mosaic_config
    #   <p>An object containing information about the job configuration for geomosaic.</p>
    #   @return [Types::GeoMosaicConfigInput]
    # @!attribute stack_config
    #   <p>An object containing information about the job configuration for a Stacking Earth Observation job.</p>
    #   @return [Types::StackConfigInput]
    # @!attribute cloud_masking_config
    #   <p>An object containing information about the job configuration for cloud masking.</p>
    #   @return [Types::CloudMaskingConfigInput]
    # @!attribute land_cover_segmentation_config
    #   <p>An object containing information about the job configuration for land cover segmentation.</p>
    #   @return [Types::LandCoverSegmentationConfigInput]
    class JobConfigInput < Struct.new(
      :band_math_config,
      :resampling_config,
      :temporal_statistics_config,
      :cloud_removal_config,
      :zonal_statistics_config,
      :geo_mosaic_config,
      :stack_config,
      :cloud_masking_config,
      :land_cover_segmentation_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BandMathConfig < JobConfigInput; end
      class ResamplingConfig < JobConfigInput; end
      class TemporalStatisticsConfig < JobConfigInput; end
      class CloudRemovalConfig < JobConfigInput; end
      class ZonalStatisticsConfig < JobConfigInput; end
      class GeoMosaicConfig < JobConfigInput; end
      class StackConfig < JobConfigInput; end
      class CloudMaskingConfig < JobConfigInput; end
      class LandCoverSegmentationConfig < JobConfigInput; end
      class Unknown < JobConfigInput; end
    end

    # <p>The input structure for Land Cover Operation type.</p>
    class LandCoverSegmentationConfigInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing Land Cloud Cover property for Landsat data collection.</p>
    # @!attribute lower_bound
    #   <p>The minimum value for Land Cloud Cover property filter. This will filter items 
    #         having Land Cloud Cover greater than or equal to this value.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>The maximum value for Land Cloud Cover property filter. 
    #         This will filter items having Land Cloud Cover less than or equal to this value.</p>
    #   @return [Float]
    class LandsatCloudCoverLandInput < Struct.new(
      nil,
      :lower_bound,
      :upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about the output file.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the list of the Earth Observation jobs.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The names of the Earth Observation jobs in the list.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of the session, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the list of the Earth Observation jobs.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The operation type for an Earth Observation job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class ListEarthObservationJobOutputConfig < Struct.new(
      nil,
      :arn,
      :name,
      :creation_time,
      :duration_in_seconds,
      :status,
      :operation_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_equals
    #   <p>A filter that retrieves only jobs with a specific status.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>An optional value that specifies whether you want the results sorted in <code>Ascending</code> or <code>Descending</code> order.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The parameter by which to sort the results.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return.</p>
    #   @return [Integer]
    class ListEarthObservationJobsInput < Struct.new(
      nil,
      :status_equals,
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute earth_observation_job_summaries
    #   <p>Contains summary information about the Earth Observation jobs.</p>
    #   @return [Array<Types::ListEarthObservationJobOutputConfig>]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    class ListEarthObservationJobsOutput < Struct.new(
      nil,
      :earth_observation_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return.</p>
    #   @return [Integer]
    class ListRasterDataCollectionsOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute raster_data_collection_summaries
    #   <p>Contains summary information about the raster data collection.</p>
    #   @return [Array<Types::RasterDataCollectionMetadata>]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    class ListRasterDataCollectionsOperationOutput < Struct.new(
      nil,
      :raster_data_collection_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about the output file.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the list of the Vector Enrichment jobs.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The names of the Vector Enrichment jobs in the list.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the list of Vector Enrichment jobs.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of the session, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the Vector Enrichment jobs list. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class ListVectorEnrichmentJobOutputConfig < Struct.new(
      nil,
      :arn,
      :name,
      :type,
      :creation_time,
      :duration_in_seconds,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_equals
    #   <p>A filter that retrieves only jobs with a specific status.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>An optional value that specifies whether you want the results sorted in <code>Ascending</code> or <code>Descending</code> order.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The parameter by which to sort the results.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class ListVectorEnrichmentJobsInput < Struct.new(
      nil,
      :status_equals,
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vector_enrichment_job_summaries
    #   <p>Contains summary information about the Vector Enrichment jobs.</p>
    #   @return [Array<Types::ListVectorEnrichmentJobOutputConfig>]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    class ListVectorEnrichmentJobsOutput < Struct.new(
      nil,
      :vector_enrichment_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for Map Matching operation type.</p>
    # @!attribute id_attribute_name
    #   <p>The field name for the data that describes the identifier representing a collection of GPS points belonging to an individual trace.</p>
    #   @return [String]
    # @!attribute y_attribute_name
    #   <p>The name of the Y-attribute</p>
    #   @return [String]
    # @!attribute x_attribute_name
    #   <p>The name of the X-attribute</p>
    #   @return [String]
    # @!attribute timestamp_attribute_name
    #   <p>The name of the timestamp attribute.</p>
    #   @return [String]
    class MapMatchingConfig < Struct.new(
      nil,
      :id_attribute_name,
      :y_attribute_name,
      :x_attribute_name,
      :timestamp_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing Polygon Geometry based on the <a href="https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6">GeoJson spec</a>.</p>
    # @!attribute coordinates
    #   <p>The coordinates of the multipolygon geometry.</p>
    #   @return [Array<Array<Array<Array<Float>>>>]
    class MultiPolygonGeometryInput < Struct.new(
      nil,
      :coordinates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an arithmetic operation to compute spectral index.</p>
    # @!attribute name
    #   <p>The name of the operation.</p>
    #   @return [String]
    # @!attribute equation
    #   <p>Textual representation of the math operation; Equation used to compute the spectral index.</p>
    #   @return [String]
    # @!attribute output_type
    #   <p>The type of the operation.</p>
    #   @return [String]
    class Operation < Struct.new(
      nil,
      :name,
      :equation,
      :output_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single EarthObservationJob output band.</p>
    # @!attribute band_name
    #   <p>The name of the band.</p>
    #   @return [String]
    # @!attribute output_data_type
    #   <p>The datatype of the output band.</p>
    #   @return [String]
    class OutputBand < Struct.new(
      nil,
      :band_name,
      :output_data_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response structure for an OutputConfig returned by an ExportEarthObservationJob.</p>
    # @!attribute s3_data
    #   <p>Path to Amazon S3 storage location for the output configuration file.</p>
    #   @return [Types::ExportS3DataInput]
    class OutputConfigInput < Struct.new(
      nil,
      :s3_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OutputResolution Configuration indicating 
    #       the target resolution for the output of Resampling operation.</p>
    # @!attribute user_defined
    #   <p>User Defined Resolution for the output 
    #         of Resampling operation defined by value and unit.</p>
    #   @return [Types::UserDefined]
    class OutputResolutionResamplingInput < Struct.new(
      nil,
      :user_defined,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure representing Output Resolution for Stacking Operation.</p>
    # @!attribute predefined
    #   <p>A string value representing Predefined Output Resolution for a stacking operation. Allowed values are <code>HIGHEST</code>, <code>LOWEST</code>, and <code>AVERAGE</code>.</p>
    #   @return [String]
    # @!attribute user_defined
    #   <p>The structure representing User Output Resolution for a Stacking operation defined as a value and unit.</p>
    #   @return [Types::UserDefined]
    class OutputResolutionStackInput < Struct.new(
      nil,
      :predefined,
      :user_defined,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for specifying Platform. 
    #       Platform refers to the unique name of the specific platform the 
    #       instrument is attached to. For satellites it is the name of the satellite, eg. landsat-8 (Landsat-8), sentinel-2a.</p>
    # @!attribute value
    #   <p>The value of the platform.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The ComparisonOperator to use with PlatformInput.</p>
    #   @return [String]
    class PlatformInput < Struct.new(
      nil,
      :value,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing Polygon Geometry based on the <a href="https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6">GeoJson spec</a>.</p>
    # @!attribute coordinates
    #   <p>Coordinates representing a Polygon based on the <a href="https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6">GeoJson spec</a>.</p>
    #   @return [Array<Array<Array<Float>>>]
    class PolygonGeometryInput < Struct.new(
      nil,
      :coordinates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties associated with the Item.</p>
    # @!attribute eo_cloud_cover
    #   <p>Estimate of cloud cover.</p>
    #   @return [Float]
    # @!attribute view_off_nadir
    #   <p>The angle from the sensor between nadir (straight down) and the scene center. Measured in degrees (0-90).</p>
    #   @return [Float]
    # @!attribute view_sun_azimuth
    #   <p>The sun azimuth angle. From the scene center point on the ground, this is the angle between truth north and the sun. 
    #         Measured clockwise in degrees (0-360).</p>
    #   @return [Float]
    # @!attribute view_sun_elevation
    #   <p>The sun elevation angle. The angle from the tangent of the scene center point to the sun. Measured from the horizon in degrees (-90-90).
    #         Negative values indicate the sun is below the horizon, e.g. sun elevation of -10° means the data was captured during <a href="https://www.timeanddate.com/astronomy/different-types-twilight.html">nautical twilight</a>.</p>
    #   @return [Float]
    # @!attribute platform
    #   <p>Platform property. Platform refers to the unique name 
    #         of the specific platform the instrument is attached to. 
    #         For satellites it is the name of 
    #         the satellite, eg. landsat-8 (Landsat-8), sentinel-2a.</p>
    #   @return [String]
    # @!attribute landsat_cloud_cover_land
    #   <p>Land cloud cover for Landsat Data Collection.</p>
    #   @return [Float]
    class Properties < Struct.new(
      nil,
      :eo_cloud_cover,
      :view_off_nadir,
      :view_sun_azimuth,
      :view_sun_elevation,
      :platform,
      :landsat_cloud_cover_land,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single searchable property to search on.</p>
    # @!attribute eo_cloud_cover
    #   <p>The structure representing EoCloudCover property filter containing a lower bound and upper bound.</p>
    #   @return [Types::EoCloudCoverInput]
    # @!attribute view_off_nadir
    #   <p>The structure representing ViewOffNadir property filter containing a lower bound and upper bound.</p>
    #   @return [Types::ViewOffNadirInput]
    # @!attribute view_sun_azimuth
    #   <p>The structure representing ViewSunAzimuth property filter containing a lower bound and upper bound.</p>
    #   @return [Types::ViewSunAzimuthInput]
    # @!attribute view_sun_elevation
    #   <p>The structure representing ViewSunElevation property filter containing a lower bound and upper bound.</p>
    #   @return [Types::ViewSunElevationInput]
    # @!attribute platform
    #   <p>The structure representing Platform property filter consisting of value and comparison operator.</p>
    #   @return [Types::PlatformInput]
    # @!attribute landsat_cloud_cover_land
    #   <p>The structure representing Land Cloud Cover property filter 
    #         for Landsat collection containing a lower bound and upper bound.</p>
    #   @return [Types::LandsatCloudCoverLandInput]
    class Property < Struct.new(
      :eo_cloud_cover,
      :view_off_nadir,
      :view_sun_azimuth,
      :view_sun_elevation,
      :platform,
      :landsat_cloud_cover_land,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EoCloudCover < Property; end
      class ViewOffNadir < Property; end
      class ViewSunAzimuth < Property; end
      class ViewSunElevation < Property; end
      class Platform < Property; end
      class LandsatCloudCoverLand < Property; end
      class Unknown < Property; end
    end

    # <p>The structure representing a single PropertyFilter.</p>
    # @!attribute property
    #   <p>Represents a single property to match with when searching a raster data collection.</p>
    #   @return [Types::Property]
    class PropertyFilter < Struct.new(
      nil,
      :property,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of PropertyFilter objects.</p>
    # @!attribute properties
    #   <p>A list of Property Filters.</p>
    #   @return [Array<Types::PropertyFilter>]
    # @!attribute logical_operator
    #   <p>The Logical Operator used to combine the Property Filters.</p>
    #   @return [String]
    class PropertyFilters < Struct.new(
      nil,
      :properties,
      :logical_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response object containing details for a specific RasterDataCollection.</p>
    # @!attribute name
    #   <p>The name of the raster data collection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of raster data collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the raster data collection.</p>
    #   @return [String]
    # @!attribute description_page_url
    #   <p>The description URL of the raster data collection.</p>
    #   @return [String]
    # @!attribute supported_filters
    #   <p>The list of filters supported by the raster data collection.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class RasterDataCollectionMetadata < Struct.new(
      nil,
      :name,
      :arn,
      :type,
      :description,
      :description_page_url,
      :supported_filters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for Raster Data Collection Query containing the Area of Interest, TimeRange Filters, and Property Filters.</p>
    # @!attribute raster_data_collection_arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    #   @return [String]
    # @!attribute time_range_filter
    #   <p>The TimeRange Filter used in the RasterDataCollection Query.</p>
    #   @return [Types::TimeRangeFilterInput]
    # @!attribute area_of_interest
    #   <p>The area of interest being queried for the raster data collection.</p>
    #   @return [Types::AreaOfInterest]
    # @!attribute property_filters
    #   <p>The list of Property filters used in the Raster Data Collection Query.</p>
    #   @return [Types::PropertyFilters]
    class RasterDataCollectionQueryInput < Struct.new(
      nil,
      :raster_data_collection_arn,
      :time_range_filter,
      :area_of_interest,
      :property_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output structure contains the Raster Data Collection Query 
    #       input along with some additional metadata.</p>
    # @!attribute raster_data_collection_arn
    #   <p>The ARN of the Raster Data Collection against which the search is done.</p>
    #   @return [String]
    # @!attribute raster_data_collection_name
    #   <p>The name of the raster data collection.</p>
    #   @return [String]
    # @!attribute time_range_filter
    #   <p>The TimeRange filter used in the search.</p>
    #   @return [Types::TimeRangeFilterOutput]
    # @!attribute area_of_interest
    #   <p>The Area of Interest used in the search.</p>
    #   @return [Types::AreaOfInterest]
    # @!attribute property_filters
    #   <p>Property filters used in the search.</p>
    #   @return [Types::PropertyFilters]
    class RasterDataCollectionQueryOutput < Struct.new(
      nil,
      :raster_data_collection_arn,
      :raster_data_collection_name,
      :time_range_filter,
      :area_of_interest,
      :property_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a RasterDataCollectionQueryInput containing AreaOfInterest, Time Range filter and Property filters.</p>
    # @!attribute time_range_filter
    #   <p>The TimeRange Filter used in the search query.</p>
    #   @return [Types::TimeRangeFilterInput]
    # @!attribute area_of_interest
    #   <p>The Area of interest to be used in the search query.</p>
    #   @return [Types::AreaOfInterest]
    # @!attribute property_filters
    #   <p>The Property Filters used in the search query.</p>
    #   @return [Types::PropertyFilters]
    # @!attribute band_filter
    #   <p>The list of Bands to be displayed in the result for each item.</p>
    #   @return [Array<String>]
    class RasterDataCollectionQueryWithBandFilterInput < Struct.new(
      nil,
      :time_range_filter,
      :area_of_interest,
      :property_filters,
      :band_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing input for resampling operation.</p>
    # @!attribute output_resolution
    #   <p>The structure representing output 
    #         resolution (in target georeferenced units) of the result of resampling operation.</p>
    #   @return [Types::OutputResolutionResamplingInput]
    # @!attribute algorithm_name
    #   <p>The name of the algorithm used for resampling.</p>
    #   @return [String]
    # @!attribute target_bands
    #   <p>Bands used in the operation. If no target bands are specified, it uses all bands available in the input.</p>
    #   @return [Array<String>]
    class ResamplingConfigInput < Struct.new(
      nil,
      :output_resolution,
      :algorithm_name,
      :target_bands,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for Reverse Geocoding operation type.</p>
    # @!attribute y_attribute_name
    #   <p>The field name for the data that describes y-axis coordinate, eg. latitude of a point.</p>
    #   @return [String]
    # @!attribute x_attribute_name
    #   <p>The field name for the data that describes x-axis coordinate, eg. longitude of a point.</p>
    #   @return [String]
    class ReverseGeocodingConfig < Struct.new(
      nil,
      :y_attribute_name,
      :x_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the raster data collection.</p>
    #   @return [String]
    # @!attribute raster_data_collection_query
    #   <p>RasterDataCollectionQuery consisting of <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_AreaOfInterest.html">AreaOfInterest(AOI)</a>, <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_PropertyFilter.html">PropertyFilters</a> and 
    #         <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_TimeRangeFilterInput.html">TimeRangeFilterInput</a> used in <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_SearchRasterDataCollection.html">SearchRasterDataCollection</a>.</p>
    #   @return [Types::RasterDataCollectionQueryWithBandFilterInput]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    class SearchRasterDataCollectionInput < Struct.new(
      nil,
      :arn,
      :raster_data_collection_query,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approximate_result_count
    #   <p>Approximate number of results in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the previous response was truncated, you receive this token.
    #            Use it in your next request to receive the next set of results.</p>
    #   @return [String]
    # @!attribute items
    #   <p>List of items matching the Raster DataCollectionQuery.</p>
    #   @return [Array<Types::ItemSource>]
    class SearchRasterDataCollectionOutput < Struct.new(
      nil,
      :approximate_result_count,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for Stacking Operation.</p>
    # @!attribute output_resolution
    #   <p>The structure representing output 
    #         resolution (in target georeferenced units) of the 
    #         result of stacking operation.</p>
    #   @return [Types::OutputResolutionStackInput]
    # @!attribute target_bands
    #   <p>A list of bands to be stacked in the specified order. When the parameter is not provided, all the available bands in the data collection are stacked in the alphabetical order of their asset names.</p>
    #   @return [Array<String>]
    class StackConfigInput < Struct.new(
      nil,
      :output_resolution,
      :target_bands,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input configuration information for the Earth Observation job.</p>
    #   @return [Types::InputConfigInput]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::JobConfigInput]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class StartEarthObservationJobInput < Struct.new(
      nil,
      :name,
      :client_token,
      :kms_key_id,
      :input_config,
      :job_config,
      :execution_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of the session, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the Earth Observation job.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input configuration information for the Earth Observation job.</p>
    #   @return [Types::InputConfigOutput]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::JobConfigInput]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class StartEarthObservationJobOperationOutput < Struct.new(
      nil,
      :name,
      :arn,
      :creation_time,
      :duration_in_seconds,
      :status,
      :kms_key_id,
      :input_config,
      :job_config,
      :execution_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input configuration information for the Vector Enrichment job.</p>
    #   @return [Types::VectorEnrichmentJobInputConfig]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::VectorEnrichmentJobConfig]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class StartVectorEnrichmentJobInput < Struct.new(
      nil,
      :name,
      :client_token,
      :kms_key_id,
      :input_config,
      :job_config,
      :execution_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>The duration of the Vector Enrichment job, in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the Vector Enrichment job being started.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>Input configuration information for starting the Vector Enrichment job.</p>
    #   @return [Types::VectorEnrichmentJobInputConfig]
    # @!attribute job_config
    #   <p>An object containing information about the job configuration.</p>
    #   @return [Types::VectorEnrichmentJobConfig]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that you specified for the job.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class StartVectorEnrichmentJobOperationOutput < Struct.new(
      nil,
      :name,
      :arn,
      :type,
      :creation_time,
      :duration_in_seconds,
      :status,
      :kms_key_id,
      :input_config,
      :job_config,
      :execution_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Earth Observation job being stopped.</p>
    #   @return [String]
    class StopEarthObservationJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopEarthObservationJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Vector Enrichment job.</p>
    #   @return [String]
    class StopVectorEnrichmentJobInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopVectorEnrichmentJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a key and a value.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing the configuration for Temporal Statistics operation.</p>
    # @!attribute group_by
    #   <p>The input for the temporal statistics grouping by time frequency option.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The list of the statistics method options.</p>
    #   @return [Array<String>]
    # @!attribute target_bands
    #   <p>The list of target band names for the temporal statistic to calculate.</p>
    #   @return [Array<String>]
    class TemporalStatisticsConfigInput < Struct.new(
      nil,
      :group_by,
      :statistics,
      :target_bands,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p/>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the time-range filter.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute start_time
    #   <p>The start time for the time-range filter.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the time-range filter.</p>
    #   @return [Time]
    class TimeRangeFilterInput < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output structure of the time range filter.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute start_time
    #   <p>The starting time for the time range filter.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The ending time for the time range filter.</p>
    #   @return [Time]
    class TimeRangeFilterOutput < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of the tags you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output resolution (in target georeferenced units) 
    #       of the result of the operation</p>
    # @!attribute value
    #   <p>The value for output resolution of the result.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>The units for output resolution of the result.</p>
    #   @return [String]
    class UserDefined < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p/>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>It contains configs such as ReverseGeocodingConfig and MapMatchingConfig.</p>
    # @!attribute reverse_geocoding_config
    #   <p>The input structure for Reverse Geocoding operation type.</p>
    #   @return [Types::ReverseGeocodingConfig]
    # @!attribute map_matching_config
    #   <p>The input structure for Map Matching operation type.</p>
    #   @return [Types::MapMatchingConfig]
    class VectorEnrichmentJobConfig < Struct.new(
      :reverse_geocoding_config,
      :map_matching_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ReverseGeocodingConfig < VectorEnrichmentJobConfig; end
      class MapMatchingConfig < VectorEnrichmentJobConfig; end
      class Unknown < VectorEnrichmentJobConfig; end
    end

    # <p>The input structure for the data source that represents the storage type of the input data objects.</p>
    # @!attribute s3_data
    #   <p>The input structure for the Amazon S3 data that represents the Amazon S3 location of the input data objects.</p>
    #   @return [Types::VectorEnrichmentJobS3Data]
    class VectorEnrichmentJobDataSourceConfigInput < Struct.new(
      :s3_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Data < VectorEnrichmentJobDataSourceConfigInput; end
      class Unknown < VectorEnrichmentJobDataSourceConfigInput; end
    end

    # <p>VectorEnrichmentJob error details in response from GetVectorEnrichmentJob.</p>
    # @!attribute error_type
    #   <p>The type of error generated during the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that you define and then is processed and rendered by 
    #            the Vector Enrichment job when the error occurs.</p>
    #   @return [String]
    class VectorEnrichmentJobErrorDetails < Struct.new(
      nil,
      :error_type,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>VectorEnrichmentJob export error details in response from GetVectorEnrichmentJob.</p>
    # @!attribute type
    #   <p>The output error details for an Export operation on a Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message providing details about the errors generated during the Vector Enrichment job.</p>
    #   @return [String]
    class VectorEnrichmentJobExportErrorDetails < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for the InputConfig in a VectorEnrichmentJob.</p>
    # @!attribute document_type
    #   <p>The input structure that defines the data source file type.</p>
    #   @return [String]
    # @!attribute data_source_config
    #   <p>The input structure for the data source that represents the storage type of the input data objects.</p>
    #   @return [Types::VectorEnrichmentJobDataSourceConfigInput]
    class VectorEnrichmentJobInputConfig < Struct.new(
      nil,
      :document_type,
      :data_source_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 data for the Vector Enrichment job.</p>
    # @!attribute s3_uri
    #   <p>The URL to the Amazon S3 data for the Vector Enrichment job.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service key ID for server-side encryption.</p>
    #   @return [String]
    class VectorEnrichmentJobS3Data < Struct.new(
      nil,
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for specifying ViewOffNadir property filter. 
    #       ViewOffNadir refers to the angle from the sensor between 
    #       nadir (straight down) and the scene center. Measured in degrees (0-90).</p>
    # @!attribute lower_bound
    #   <p>The minimum value for ViewOffNadir property filter. 
    #         This filters items having ViewOffNadir greater than or equal to this value. </p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>The maximum value for ViewOffNadir property filter. 
    #         This filters items having ViewOffNadir lesser than or equal to this value.</p>
    #   @return [Float]
    class ViewOffNadirInput < Struct.new(
      nil,
      :lower_bound,
      :upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for specifying ViewSunAzimuth property filter.  
    #       ViewSunAzimuth refers to the Sun azimuth angle. 
    #       From the scene center point on the ground, 
    #       this is the angle between truth north and the sun. 
    #       Measured clockwise in degrees (0-360).</p>
    # @!attribute lower_bound
    #   <p>The minimum value for ViewSunAzimuth property filter. 
    #         This filters items having ViewSunAzimuth greater than or equal to this value.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>The maximum value for ViewSunAzimuth property filter. 
    #         This filters items having ViewSunAzimuth lesser than or equal to this value.</p>
    #   @return [Float]
    class ViewSunAzimuthInput < Struct.new(
      nil,
      :lower_bound,
      :upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input structure for specifying ViewSunElevation angle property filter. </p>
    # @!attribute lower_bound
    #   <p>The lower bound to view the sun elevation.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>The upper bound to view the sun elevation.</p>
    #   @return [Float]
    class ViewSunElevationInput < Struct.new(
      nil,
      :lower_bound,
      :upper_bound,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structure representing input configuration of ZonalStatistics operation.</p>
    # @!attribute zone_s3_path
    #   <p>The Amazon S3 path pointing to the GeoJSON containing the polygonal zones.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>List of zonal statistics to compute.</p>
    #   @return [Array<String>]
    # @!attribute target_bands
    #   <p>Bands used in the operation. 
    #         If no target bands are specified, it uses all bands available input.</p>
    #   @return [Array<String>]
    # @!attribute zone_s3_path_kms_key_id
    #   <p>The Amazon Resource Name (ARN) or an ID of a Amazon Web Services Key Management Service (Amazon Web Services KMS) key that Amazon SageMaker uses to decrypt your output artifacts with Amazon S3 server-side encryption.
    #   The SageMaker execution role must have <code>kms:GenerateDataKey</code> permission.</p>
    #            <p>The <code>KmsKeyId</code> can be any of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>// KMS Key ID</p>
    #                  <p>
    #                     <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>// Amazon Resource Name (ARN) of a KMS Key</p>
    #                  <p>
    #                     <code>"arn:aws:kms:&lt;region&gt;:&lt;account&gt;:key/&lt;key-id-12ab-34cd-56ef-1234567890ab&gt;"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about key identifiers, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id">Key identifiers (KeyID)</a> in the
    #   Amazon Web Services Key Management Service (Amazon Web Services KMS) documentation.</p>
    #   @return [String]
    class ZonalStatisticsConfigInput < Struct.new(
      nil,
      :zone_s3_path,
      :statistics,
      :target_bands,
      :zone_s3_path_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
